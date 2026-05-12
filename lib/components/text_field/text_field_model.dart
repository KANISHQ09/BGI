import '/flutter_flow/flutter_flow_util.dart';

import 'package:flutter/material.dart';

class TextFieldModel extends FlutterFlowModel {
  TextEditingController? inputTextController;
  FocusNode? inputFocusNode;
  String? Function(BuildContext, String?)? inputTextControllerValidator;

  @override
  void dispose() {
    inputTextController?.dispose();
    inputFocusNode?.dispose();
  }
}
