import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

import 'status_node_model.dart';
export 'status_node_model.dart';

class StatusNodeWidget extends StatefulWidget {
  const StatusNodeWidget({
    super.key,
    Color? color,
    String? time,
    String? title,
    bool? active,
    bool? last,
  })  : this.color = color ?? const Color(0x00000000),
        this.time = time ?? 'Today, 10:30 AM',
        this.title = title ?? 'Work in Progress',
        this.active = active ?? true,
        this.last = last ?? false;

  final Color color;
  final String time;
  final String title;
  final bool active;
  final bool last;

  @override
  State<StatusNodeWidget> createState() => _StatusNodeWidgetState();
}

class _StatusNodeWidgetState extends State<StatusNodeWidget> {
  late StatusNodeModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => StatusNodeModel());
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.max,
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              width: 24,
              height: 24,
              decoration: BoxDecoration(
                color: widget!.active
                    ? Color(0x00000000)
                    : FlutterFlowTheme.of(context).surfaceVariant,
                borderRadius: BorderRadius.circular(9999),
                shape: BoxShape.rectangle,
                border: Border.all(
                  color: widget!.active
                      ? Color(0x00000000)
                      : FlutterFlowTheme.of(context).alternate,
                  width: 2,
                ),
              ),
              alignment: AlignmentDirectional(0, 0),
              child: Container(
                width: 14,
                height: 14,
                child: Stack(
                  alignment: AlignmentDirectional(0, 0),
                  children: [
                    if (widget!.active ? true : false)
                      Icon(
                        Icons.check_rounded,
                        color: widget!.active
                            ? FlutterFlowTheme.of(context).onPrimary
                            : FlutterFlowTheme.of(context).secondaryText,
                        size: 14,
                      ),
                    if (widget!.active ? false : true)
                      Icon(
                        Icons.circle_rounded,
                        color: widget!.active
                            ? FlutterFlowTheme.of(context).onPrimary
                            : FlutterFlowTheme.of(context).secondaryText,
                        size: 14,
                      ),
                  ],
                ),
              ),
            ),
            if (widget!.last ? false : true)
              Container(
                width: 2,
                height: 40,
                decoration: BoxDecoration(
                  color: widget!.last
                      ? Colors.transparent
                      : FlutterFlowTheme.of(context).alternate,
                  shape: BoxShape.rectangle,
                ),
              ),
          ],
        ),
        Padding(
          padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 24),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                valueOrDefault<String>(
                  widget!.title,
                  'Work in Progress',
                ),
                style: FlutterFlowTheme.of(context).titleSmall.override(
                      font: GoogleFonts.inter(
                        fontWeight:
                            FlutterFlowTheme.of(context).titleSmall.fontWeight,
                        fontStyle:
                            FlutterFlowTheme.of(context).titleSmall.fontStyle,
                      ),
                      color: widget!.active
                          ? FlutterFlowTheme.of(context).primaryText
                          : FlutterFlowTheme.of(context).secondaryText,
                      letterSpacing: 0.0,
                      fontWeight:
                          FlutterFlowTheme.of(context).titleSmall.fontWeight,
                      fontStyle:
                          FlutterFlowTheme.of(context).titleSmall.fontStyle,
                      lineHeight: 1.4,
                    ),
              ),
              Text(
                valueOrDefault<String>(
                  widget!.time,
                  'Today, 10:30 AM',
                ),
                style: FlutterFlowTheme.of(context).labelSmall.override(
                      font: GoogleFonts.inter(
                        fontWeight:
                            FlutterFlowTheme.of(context).labelSmall.fontWeight,
                        fontStyle:
                            FlutterFlowTheme.of(context).labelSmall.fontStyle,
                      ),
                      color: FlutterFlowTheme.of(context).secondaryText,
                      letterSpacing: 0.0,
                      fontWeight:
                          FlutterFlowTheme.of(context).labelSmall.fontWeight,
                      fontStyle:
                          FlutterFlowTheme.of(context).labelSmall.fontStyle,
                      lineHeight: 1.2,
                    ),
              ),
            ].divide(SizedBox(height: 4)),
          ),
        ),
      ].divide(SizedBox(width: 16)),
    );
  }
}
