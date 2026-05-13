# Civic Pulse Roboflow Backend

This backend keeps the Roboflow API key out of the Flutter app.

## Run locally

```powershell
cd backend
python -m venv .venv
.\.venv\Scripts\Activate.ps1
pip install -r requirements.txt
$env:ROBOFLOW_API_KEY="your-key-here"
$env:ROBOFLOW_MODEL_ID="civic-p4arf/2"
uvicorn main:app --reload --host 127.0.0.1 --port 8000
```

The Flutter app calls `http://127.0.0.1:8000/api/detect` by default for web.
