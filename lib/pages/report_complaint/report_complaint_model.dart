import '/flutter_flow/flutter_flow_util.dart';
import '/services/complaint_detection_service.dart';
import 'dart:typed_data';
import 'package:image_picker/image_picker.dart';

class ReportComplaintModel extends FlutterFlowModel {
  final Object dart = Object();
  final Object aiLabelModel = Object();
  final Object detectionItemModel1 = Object();
  final Object detectionItemModel2 = Object();
  final Object buttonModel1 = Object();
  final Object textFieldModel = Object();
  final Object buttonModel2 = Object();
  final ImagePicker imagePicker = ImagePicker();
  final ComplaintDetectionService detectionService = ComplaintDetectionService();
  XFile? selectedComplaintImage;
  Uint8List? selectedComplaintImageBytes;
  ComplaintDetectionResult? detectionResult;
  bool isDetecting = false;
  String? detectionError;
  dynamic mapGoogleMapsController;
  dynamic mapGoogleMapsCenter;
}
