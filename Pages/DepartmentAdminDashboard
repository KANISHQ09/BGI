import '/components/button/button_widget.dart';
import '/components/complaint_ticket/complaint_ticket_widget.dart';
import '/components/stat_card_mini/stat_card_mini_widget.dart';
import '/components/text_field/text_field_widget.dart';
import '/flutter_flow/flutter_flow_charts.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:ui';
import '/index.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

import 'department_admin_dashboard_model.dart';
export 'department_admin_dashboard_model.dart';

class DepartmentAdminDashboardWidget extends StatefulWidget {
  const DepartmentAdminDashboardWidget({super.key});

  static String routeName = 'DepartmentAdminDashboard';
  static String routePath = '/departmentAdminDashboard';

  @override
  State<DepartmentAdminDashboardWidget> createState() =>
      _DepartmentAdminDashboardWidgetState();
}

class _DepartmentAdminDashboardWidgetState
    extends State<DepartmentAdminDashboardWidget> {
  late DepartmentAdminDashboardModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => DepartmentAdminDashboardModel());
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
        FocusManager.instance.primaryFocus?.unfocus();
      },
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
        body: Column(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Container(
              decoration: BoxDecoration(
                color: FlutterFlowTheme.of(context).secondary,
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(24),
                  bottomRight: Radius.circular(24),
                ),
                shape: BoxShape.rectangle,
              ),
              child: Padding(
                padding: EdgeInsetsDirectional.fromSTEB(24, 24, 24, 16),
                child: Container(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Column(
                            mainAxisSize: MainAxisSize.min,
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Public Works Dept',
                                style: FlutterFlowTheme.of(context)
                                    .labelMedium
                                    .override(
                                      font: GoogleFonts.inter(
                                        fontWeight: FlutterFlowTheme.of(context)
                                            .labelMedium
                                            .fontWeight,
                                        fontStyle: FlutterFlowTheme.of(context)
                                            .labelMedium
                                            .fontStyle,
                                      ),
                                      color: FlutterFlowTheme.of(context)
                                          .onSecondary70,
                                      letterSpacing: 0.0,
                                      fontWeight: FlutterFlowTheme.of(context)
                                          .labelMedium
                                          .fontWeight,
                                      fontStyle: FlutterFlowTheme.of(context)
                                          .labelMedium
                                          .fontStyle,
                                      lineHeight: 1.2,
                                    ),
                              ),
                              Text(
                                'Officer Dashboard',
                                style: FlutterFlowTheme.of(context)
                                    .headlineSmall
                                    .override(
                                      font: GoogleFonts.poppins(
                                        fontWeight: FontWeight.bold,
                                        fontStyle: FlutterFlowTheme.of(context)
                                            .headlineSmall
                                            .fontStyle,
                                      ),
                                      color: FlutterFlowTheme.of(context)
                                          .onSecondary,
                                      letterSpacing: 0.0,
                                      fontWeight: FontWeight.bold,
                                      fontStyle: FlutterFlowTheme.of(context)
                                          .headlineSmall
                                          .fontStyle,
                                      lineHeight: 1.35,
                                    ),
                              ),
                            ].divide(SizedBox(height: 4)),
                          ),
                          FlutterFlowIconButton(
                            borderRadius: 8,
                            buttonSize: 40,
                            fillColor: Colors.transparent,
                            icon: Icon(
                              Icons.settings_outlined,
                              color: FlutterFlowTheme.of(context).onSecondary,
                              size: 24,
                            ),
                            onPressed: () {
                              print('IconButton pressed ...');
                            },
                          ),
                        ],
                      ),
                      wrapWithModel(
                        model: _model.textFieldModel,
                        updateCallback: () => safeSetState(() {}),
                        child: TextFieldWidget(
                          label: '',
                          labelPresent: false,
                          helper: '',
                          helperPresent: false,
                          hint: 'Search ticket ID, area, or officer',
                          value: '',
                          onChange: '',
                          onSubmit: '',
                          leadingIcon: Icon(
                            Icons.search,
                            color: FlutterFlowTheme.of(context).primaryText,
                            size: 16,
                          ),
                          leadingIconPresent: true,
                          trailingIconPresent: false,
                          variant: 'filled',
                          error: false,
                        ),
                      ),
                    ].divide(SizedBox(height: 16)),
                  ),
                ),
              ),
            ),
            Expanded(
              flex: 1,
              child: SingleChildScrollView(
                primary: false,
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Padding(
                      padding: EdgeInsets.all(24),
                      child: Container(
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.stretch,
                          children: [
                            Column(
                              mainAxisSize: MainAxisSize.min,
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Row(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Expanded(
                                      flex: 1,
                                      child: wrapWithModel(
                                        model: _model.statCardMiniModel1,
                                        updateCallback: () =>
                                            safeSetState(() {}),
                                        child: StatCardMiniWidget(
                                          bgSoft: FlutterFlowTheme.of(context)
                                              .primary10,
                                          color: FlutterFlowTheme.of(context)
                                              .primary,
                                          delta: '+12%',
                                          icon: Icon(
                                            Icons.auto_awesome_rounded,
                                            color: FlutterFlowTheme.of(context)
                                                .primary,
                                            size: 18,
                                          ),
                                          label: 'New Today',
                                          value: '24',
                                          up: true,
                                        ),
                                      ),
                                    ),
                                    Expanded(
                                      flex: 1,
                                      child: wrapWithModel(
                                        model: _model.statCardMiniModel2,
                                        updateCallback: () =>
                                            safeSetState(() {}),
                                        child: StatCardMiniWidget(
                                          bgSoft: FlutterFlowTheme.of(context)
                                              .error10,
                                          color: FlutterFlowTheme.of(context)
                                              .error,
                                          delta: '+2',
                                          icon: Icon(
                                            Icons.alarm_on_rounded,
                                            color: FlutterFlowTheme.of(context)
                                                .primary,
                                            size: 18,
                                          ),
                                          label: 'SLA Risks',
                                          value: '08',
                                          up: false,
                                        ),
                                      ),
                                    ),
                                  ].divide(SizedBox(width: 16)),
                                ),
                                Row(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Expanded(
                                      flex: 1,
                                      child: wrapWithModel(
                                        model: _model.statCardMiniModel3,
                                        updateCallback: () =>
                                            safeSetState(() {}),
                                        child: StatCardMiniWidget(
                                          bgSoft: FlutterFlowTheme.of(context)
                                              .warning10,
                                          color: FlutterFlowTheme.of(context)
                                              .warning,
                                          delta: '5.2%',
                                          icon: Icon(
                                            Icons.pending_actions_rounded,
                                            color: FlutterFlowTheme.of(context)
                                                .primary,
                                            size: 18,
                                          ),
                                          label: 'In Progress',
                                          value: '142',
                                          up: true,
                                        ),
                                      ),
                                    ),
                                    Expanded(
                                      flex: 1,
                                      child: wrapWithModel(
                                        model: _model.statCardMiniModel4,
                                        updateCallback: () =>
                                            safeSetState(() {}),
                                        child: StatCardMiniWidget(
                                          bgSoft: FlutterFlowTheme.of(context)
                                              .success10,
                                          color: FlutterFlowTheme.of(context)
                                              .success,
                                          delta: '+18%',
                                          icon: Icon(
                                            Icons.check_circle_rounded,
                                            color: FlutterFlowTheme.of(context)
                                                .primary,
                                            size: 18,
                                          ),
                                          label: 'Resolved',
                                          value: '892',
                                          up: true,
                                        ),
                                      ),
                                    ),
                                  ].divide(SizedBox(width: 16)),
                                ),
                              ].divide(SizedBox(height: 16)),
                            ),
                            Container(
                              decoration: BoxDecoration(
                                color: FlutterFlowTheme.of(context)
                                    .secondaryBackground,
                                borderRadius: BorderRadius.circular(16),
                                shape: BoxShape.rectangle,
                                border: Border.all(
                                  color: FlutterFlowTheme.of(context).alternate,
                                  width: 1,
                                ),
                              ),
                              child: Padding(
                                padding: EdgeInsets.all(24),
                                child: Container(
                                  child: Column(
                                    mainAxisSize: MainAxisSize.min,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.stretch,
                                    children: [
                                      Row(
                                        mainAxisSize: MainAxisSize.max,
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        children: [
                                          Text(
                                            'Resolution Efficiency',
                                            style: FlutterFlowTheme.of(context)
                                                .titleMedium
                                                .override(
                                                  font: GoogleFonts.inter(
                                                    fontWeight: FontWeight.bold,
                                                    fontStyle:
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .titleMedium
                                                            .fontStyle,
                                                  ),
                                                  letterSpacing: 0.0,
                                                  fontWeight: FontWeight.bold,
                                                  fontStyle:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .titleMedium
                                                          .fontStyle,
                                                  lineHeight: 1.4,
                                                ),
                                          ),
                                          Icon(
                                            Icons.insights_rounded,
                                            color: FlutterFlowTheme.of(context)
                                                .secondaryText,
                                            size: 20,
                                          ),
                                        ],
                                      ),
                                      Container(
                                        height: 160,
                                        child: Container(
                                          height: 160,
                                          child: FlutterFlowBarChart(
                                            barData: [
                                              FFBarChartData(
                                                yData: ([
                                                  45.0,
                                                  62.0,
                                                  85.0,
                                                  55.0,
                                                  90.0,
                                                  75.0,
                                                  80.0
                                                ])!,
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .primary,
                                              )
                                            ],
                                            xLabels: ([
                                              'M',
                                              'T',
                                              'W',
                                              'T',
                                              'F',
                                              'S',
                                              'S'
                                            ])!,
                                            barWidth: 20,
                                            barBorderRadius:
                                                BorderRadius.circular(4),
                                            groupSpace: 12,
                                            alignment:
                                                BarChartAlignment.spaceEvenly,
                                            chartStylingInfo: ChartStylingInfo(
                                              backgroundColor:
                                                  Colors.transparent,
                                              showBorder: false,
                                            ),
                                            axisBounds: AxisBounds(
                                              minY: 0,
                                              maxX: 6,
                                              maxY: 108,
                                            ),
                                            xAxisLabelInfo: AxisLabelInfo(
                                              showLabels: true,
                                              labelTextStyle:
                                                  FlutterFlowTheme.of(context)
                                                      .bodySmall
                                                      .override(
                                                        font: GoogleFonts.inter(
                                                          fontWeight:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .bodySmall
                                                                  .fontWeight,
                                                          fontStyle:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .bodySmall
                                                                  .fontStyle,
                                                        ),
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .secondaryText,
                                                        fontSize: 10,
                                                        letterSpacing: 0.0,
                                                        fontWeight:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodySmall
                                                                .fontWeight,
                                                        fontStyle:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodySmall
                                                                .fontStyle,
                                                        lineHeight: 1,
                                                      ),
                                              reservedSize: 20,
                                            ),
                                            yAxisLabelInfo: AxisLabelInfo(
                                              reservedSize: 0,
                                            ),
                                          ),
                                        ),
                                      ),
                                      Row(
                                        mainAxisSize: MainAxisSize.max,
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        children: [
                                          Row(
                                            mainAxisSize: MainAxisSize.max,
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.center,
                                            children: [
                                              Container(
                                                width: 8,
                                                height: 8,
                                                decoration: BoxDecoration(
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .primary,
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          9999),
                                                  shape: BoxShape.rectangle,
                                                ),
                                              ),
                                              Text(
                                                'Avg Speed (hrs)',
                                                style: FlutterFlowTheme.of(
                                                        context)
                                                    .labelSmall
                                                    .override(
                                                      font: GoogleFonts.inter(
                                                        fontWeight:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .labelSmall
                                                                .fontWeight,
                                                        fontStyle:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .labelSmall
                                                                .fontStyle,
                                                      ),
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .secondaryText,
                                                      letterSpacing: 0.0,
                                                      fontWeight:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .labelSmall
                                                              .fontWeight,
                                                      fontStyle:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .labelSmall
                                                              .fontStyle,
                                                      lineHeight: 1.2,
                                                    ),
                                              ),
                                            ].divide(SizedBox(width: 4)),
                                          ),
                                        ].divide(SizedBox(width: 16)),
                                      ),
                                    ].divide(SizedBox(height: 16)),
                                  ),
                                ),
                              ),
                            ),
                            Column(
                              mainAxisSize: MainAxisSize.min,
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.stretch,
                              children: [
                                Row(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Text(
                                      'Active Complaint Queue',
                                      style: FlutterFlowTheme.of(context)
                                          .titleMedium
                                          .override(
                                            font: GoogleFonts.inter(
                                              fontWeight: FontWeight.bold,
                                              fontStyle:
                                                  FlutterFlowTheme.of(context)
                                                      .titleMedium
                                                      .fontStyle,
                                            ),
                                            letterSpacing: 0.0,
                                            fontWeight: FontWeight.bold,
                                            fontStyle:
                                                FlutterFlowTheme.of(context)
                                                    .titleMedium
                                                    .fontStyle,
                                            lineHeight: 1.4,
                                          ),
                                    ),
                                    wrapWithModel(
                                      model: _model.buttonModel1,
                                      updateCallback: () => safeSetState(() {}),
                                      child: ButtonWidget(
                                        content: 'Filter',
                                        icon: Icon(
                                          Icons.filter_list_rounded,
                                          color: FlutterFlowTheme.of(context)
                                              .primary,
                                          size: 16,
                                        ),
                                        iconPresent: true,
                                        iconEndPresent: false,
                                        variant: 'ghost',
                                        size: 'small',
                                        fullWidth: false,
                                        loading: false,
                                        disabled: false,
                                      ),
                                    ),
                                  ],
                                ),
                                wrapWithModel(
                                  model: _model.complaintTicketModel1,
                                  updateCallback: () => safeSetState(() {}),
                                  child: ComplaintTicketWidget(
                                    imgDesc:
                                        'https://dimg.dreamflow.cloud/v1/image/asphalt%20pothole',
                                    location: 'Sector 4, MP Nagar',
                                    priBg: FlutterFlowTheme.of(context).error10,
                                    priText: FlutterFlowTheme.of(context).error,
                                    priority: 'CRITICAL',
                                    time: '12m ago',
                                    title: 'Major Pothole - Link Road',
                                  ),
                                ),
                                wrapWithModel(
                                  model: _model.complaintTicketModel2,
                                  updateCallback: () => safeSetState(() {}),
                                  child: ComplaintTicketWidget(
                                    imgDesc:
                                        'https://dimg.dreamflow.cloud/v1/image/water%20leak',
                                    location: 'Railway Colony',
                                    priBg:
                                        FlutterFlowTheme.of(context).warning10,
                                    priText:
                                        FlutterFlowTheme.of(context).warning,
                                    priority: 'HIGH',
                                    time: '45m ago',
                                    title: 'Water Main Burst',
                                  ),
                                ),
                                wrapWithModel(
                                  model: _model.complaintTicketModel3,
                                  updateCallback: () => safeSetState(() {}),
                                  child: ComplaintTicketWidget(
                                    imgDesc:
                                        'https://dimg.dreamflow.cloud/v1/image/street%20lamp',
                                    location: 'Indrapuri Block B',
                                    priBg:
                                        FlutterFlowTheme.of(context).primary10,
                                    priText:
                                        FlutterFlowTheme.of(context).primary,
                                    priority: 'MEDIUM',
                                    time: '2h ago',
                                    title: 'Flickering Street Lights',
                                  ),
                                ),
                                wrapWithModel(
                                  model: _model.complaintTicketModel4,
                                  updateCallback: () => safeSetState(() {}),
                                  child: ComplaintTicketWidget(
                                    imgDesc:
                                        'https://dimg.dreamflow.cloud/v1/image/trash%20pile',
                                    location: 'Arera Colony',
                                    priBg:
                                        FlutterFlowTheme.of(context).success10,
                                    priText:
                                        FlutterFlowTheme.of(context).success,
                                    priority: 'LOW',
                                    time: '3h ago',
                                    title: 'Waste Disposal Delay',
                                  ),
                                ),
                              ].divide(SizedBox(height: 16)),
                            ),
                            wrapWithModel(
                              model: _model.buttonModel2,
                              updateCallback: () => safeSetState(() {}),
                              child: ButtonWidget(
                                content: 'View All 156 Tickets',
                                iconPresent: false,
                                iconEndPresent: false,
                                variant: 'outline',
                                size: 'medium',
                                fullWidth: true,
                                loading: false,
                                disabled: false,
                              ),
                            ),
                          ].divide(SizedBox(height: 24)),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            ClipRRect(
              borderRadius: BorderRadius.only(),
              child: BackdropFilter(
                filter: ImageFilter.blur(
                  sigmaX: 10,
                  sigmaY: 10,
                ),
                child: Container(
                  decoration: BoxDecoration(
                    color: FlutterFlowTheme.of(context).background80,
                    shape: BoxShape.rectangle,
                  ),
                  child: Padding(
                    padding: EdgeInsets.all(24),
                    child: Container(
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Expanded(
                            flex: 1,
                            child: wrapWithModel(
                              model: _model.buttonModel3,
                              updateCallback: () => safeSetState(() {}),
                              child: ButtonWidget(
                                content: 'Assign Officers',
                                icon: Icon(
                                  Icons.group_add_rounded,
                                  color:
                                      FlutterFlowTheme.of(context).onSecondary,
                                  size: 16,
                                ),
                                iconPresent: true,
                                iconEndPresent: false,
                                variant: 'secondary',
                                size: 'large',
                                fullWidth: false,
                                loading: false,
                                disabled: false,
                              ),
                            ),
                          ),
                          InkWell(
                            splashColor: Colors.transparent,
                            focusColor: Colors.transparent,
                            hoverColor: Colors.transparent,
                            highlightColor: Colors.transparent,
                            onTap: () async {
                              context.goNamed(ReportComplaintWidget.routeName);
                            },
                            child: Container(
                              width: 56,
                              height: 56,
                              decoration: BoxDecoration(
                                color: FlutterFlowTheme.of(context).primary,
                                borderRadius: BorderRadius.circular(24),
                                shape: BoxShape.rectangle,
                              ),
                              alignment: AlignmentDirectional(0, 0),
                              child: Icon(
                                Icons.add_task_rounded,
                                color: FlutterFlowTheme.of(context).onPrimary,
                                size: 28,
                              ),
                            ),
                          ),
                        ].divide(SizedBox(width: 16)),
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
