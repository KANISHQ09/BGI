import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

export 'package:go_router/go_router.dart';

typedef ValidatorCallback = String? Function(BuildContext context, String? value);

abstract class FlutterFlowModel {
  void initState(BuildContext context) {}
  void onUpdate() {}
  void dispose() {}
  void maybeDispose() => dispose();
}

T createModel<T extends FlutterFlowModel>(
  BuildContext context,
  T Function() defaultBuilder,
) {
  final model = defaultBuilder();
  model.initState(context);
  return model;
}

Widget wrapWithModel({
  required dynamic model,
  required VoidCallback updateCallback,
  required Widget child,
}) {
  return child;
}

void safeSetState(VoidCallback callback) {
  callback();
}

T valueOrDefault<T>(T? value, T defaultValue) => value ?? defaultValue;

extension FlutterFlowListExtensions<T extends Widget> on List<T> {
  List<Widget> divide(Widget divider) {
    if (isEmpty) {
      return <Widget>[];
    }
    final items = <Widget>[];
    for (var i = 0; i < length; i++) {
      if (i > 0) {
        items.add(divider);
      }
      items.add(this[i]);
    }
    return items;
  }
}

extension FlutterFlowValidatorExtension on ValidatorCallback? {
  FormFieldValidator<String>? asValidator(BuildContext context) {
    final validator = this;
    if (validator == null) {
      return null;
    }
    return (value) => validator(context, value);
  }
}
