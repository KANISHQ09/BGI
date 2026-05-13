import os
import tempfile
from pathlib import Path
from typing import Any

from fastapi import FastAPI, File, HTTPException, UploadFile
from fastapi.middleware.cors import CORSMiddleware
from inference_sdk import InferenceHTTPClient


ROBOFLOW_API_KEY = os.environ.get("ROBOFLOW_API_KEY")
ROBOFLOW_API_URL = os.environ.get("ROBOFLOW_API_URL", "https://serverless.roboflow.com")
ROBOFLOW_MODEL_ID = os.environ.get("ROBOFLOW_MODEL_ID", "civic-p4arf/2")

app = FastAPI(title="Civic Pulse Complaint Detection")
app.add_middleware(
    CORSMiddleware,
    allow_origins=["*"],
    allow_credentials=False,
    allow_methods=["*"],
    allow_headers=["*"],
)


def _client() -> InferenceHTTPClient:
    if not ROBOFLOW_API_KEY:
        raise HTTPException(
            status_code=500,
            detail="ROBOFLOW_API_KEY is not configured on the backend.",
        )
    return InferenceHTTPClient(api_url=ROBOFLOW_API_URL, api_key=ROBOFLOW_API_KEY)


def _top_prediction(predictions: list[dict[str, Any]]) -> dict[str, Any] | None:
    if not predictions:
        return None
    return max(predictions, key=lambda item: float(item.get("confidence", 0)))


def _severity(confidence: float) -> str:
    if confidence >= 0.85:
        return "High"
    if confidence >= 0.6:
        return "Medium"
    return "Low"


@app.get("/health")
def health() -> dict[str, str]:
    return {"status": "ok", "model_id": ROBOFLOW_MODEL_ID}


@app.post("/api/detect")
async def detect_complaint(image: UploadFile = File(...)) -> dict[str, Any]:
    suffix = Path(image.filename or "complaint.jpg").suffix or ".jpg"
    with tempfile.NamedTemporaryFile(delete=False, suffix=suffix) as tmp:
        tmp.write(await image.read())
        tmp_path = tmp.name

    try:
        result = _client().infer(tmp_path, model_id=ROBOFLOW_MODEL_ID)
    except Exception as exc:
        raise HTTPException(status_code=502, detail=f"Roboflow inference failed: {exc}") from exc
    finally:
        Path(tmp_path).unlink(missing_ok=True)

    predictions = result.get("predictions", []) if isinstance(result, dict) else []
    top = _top_prediction(predictions)
    confidence = float(top.get("confidence", 0)) if top else 0.0

    return {
        "model_id": ROBOFLOW_MODEL_ID,
        "category": top.get("class", "Unknown") if top else "Unknown",
        "confidence": confidence,
        "severity": _severity(confidence),
        "prediction": top,
        "predictions": predictions,
        "raw": result,
    }
