import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:image_picker/image_picker.dart';

class ComplaintDetectionResult {
  const ComplaintDetectionResult({
    required this.category,
    required this.confidence,
    required this.severity,
  });

  final String category;
  final double confidence;
  final String severity;

  String get confidenceLabel => '${(confidence * 100).round()}% Confidence';

  factory ComplaintDetectionResult.fromJson(Map<String, dynamic> json) {
    return ComplaintDetectionResult(
      category: json['category'] as String? ?? 'Unknown',
      confidence: (json['confidence'] as num?)?.toDouble() ?? 0,
      severity: json['severity'] as String? ?? 'Low',
    );
  }
}

class ComplaintDetectionService {
  ComplaintDetectionService({
    String? baseUrl,
    http.Client? client,
  })  : baseUrl = baseUrl ??
            const String.fromEnvironment(
              'ROBOFLOW_PROXY_URL',
              defaultValue: 'http://127.0.0.1:8000',
            ),
        _client = client ?? http.Client();

  final String baseUrl;
  final http.Client _client;

  Future<ComplaintDetectionResult> detect(XFile image) async {
    final bytes = await image.readAsBytes();
    final request = http.MultipartRequest(
      'POST',
      Uri.parse('$baseUrl/api/detect'),
    );

    request.files.add(
      http.MultipartFile.fromBytes(
        'image',
        bytes,
        filename: image.name,
      ),
    );

    final response = await _client.send(request);
    final body = await response.stream.bytesToString();

    if (response.statusCode < 200 || response.statusCode >= 300) {
      throw ComplaintDetectionException(
        'Detection failed (${response.statusCode}): $body',
      );
    }

    return ComplaintDetectionResult.fromJson(
      jsonDecode(body) as Map<String, dynamic>,
    );
  }
}

class ComplaintDetectionException implements Exception {
  const ComplaintDetectionException(this.message);

  final String message;

  @override
  String toString() => message;
}
