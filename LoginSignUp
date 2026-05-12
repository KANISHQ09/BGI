import '/components/button/button_widget.dart';
import '/components/social_button/social_button_widget.dart';
import '/components/text_field/text_field_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

import 'login_signup_model.dart';
export 'login_signup_model.dart';

class LoginSignupWidget extends StatefulWidget {
  const LoginSignupWidget({super.key});

  static String routeName = 'LoginSignup';
  static String routePath = '/loginSignup';

  @override
  State<LoginSignupWidget> createState() => _LoginSignupWidgetState();
}

class _LoginSignupWidgetState extends State<LoginSignupWidget> {
  late LoginSignupModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => LoginSignupModel());
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
        body: Stack(
          alignment: AlignmentDirectional(-1, -1),
          children: [
            Align(
              alignment: AlignmentDirectional(-1.2, -0.8),
              child: ClipRect(
                child: ImageFiltered(
                  imageFilter: ImageFilter.blur(
                    sigmaX: 80,
                    sigmaY: 80,
                  ),
                  child: Container(
                    width: 300,
                    height: 300,
                    decoration: BoxDecoration(
                      color: FlutterFlowTheme.of(context).primary10,
                      borderRadius: BorderRadius.circular(9999),
                      shape: BoxShape.rectangle,
                    ),
                  ),
                ),
              ),
            ),
            Align(
              alignment: AlignmentDirectional(1.3, 0.9),
              child: ClipRect(
                child: ImageFiltered(
                  imageFilter: ImageFilter.blur(
                    sigmaX: 60,
                    sigmaY: 60,
                  ),
                  child: Container(
                    width: 250,
                    height: 250,
                    decoration: BoxDecoration(
                      color: FlutterFlowTheme.of(context).accent10,
                      borderRadius: BorderRadius.circular(9999),
                      shape: BoxShape.rectangle,
                    ),
                  ),
                ),
              ),
            ),
            SingleChildScrollView(
              primary: false,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Container(
                    height: 320,
                    child: Padding(
                      padding: EdgeInsets.all(32),
                      child: Container(
                        child: Container(
                          alignment: AlignmentDirectional(0, 0),
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Container(
                                width: 80,
                                height: 80,
                                decoration: BoxDecoration(
                                  color: FlutterFlowTheme.of(context).primary,
                                  boxShadow: [
                                    BoxShadow(
                                      blurRadius: 20,
                                      color: FlutterFlowTheme.of(context)
                                          .primary20,
                                      offset: Offset(
                                        0,
                                        10,
                                      ),
                                      spreadRadius: 0,
                                    )
                                  ],
                                  borderRadius: BorderRadius.circular(24),
                                  shape: BoxShape.rectangle,
                                ),
                                alignment: AlignmentDirectional(0, 0),
                                child: Icon(
                                  Icons.account_balance_rounded,
                                  color: FlutterFlowTheme.of(context).onPrimary,
                                  size: 40,
                                ),
                              ),
                              Column(
                                mainAxisSize: MainAxisSize.min,
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Text(
                                    'CivicPulse',
                                    style: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .override(
                                          font: GoogleFonts.inter(
                                            fontWeight: FontWeight.w800,
                                            fontStyle:
                                                FlutterFlowTheme.of(context)
                                                    .bodyMedium
                                                    .fontStyle,
                                          ),
                                          color: FlutterFlowTheme.of(context)
                                              .primaryText,
                                          fontSize: 32,
                                          letterSpacing: 0.0,
                                          fontWeight: FontWeight.w800,
                                          fontStyle:
                                              FlutterFlowTheme.of(context)
                                                  .bodyMedium
                                                  .fontStyle,
                                          lineHeight: 1.6,
                                        ),
                                  ),
                                  Text(
                                    'Your Voice for a Smarter City',
                                    textAlign: TextAlign.center,
                                    style: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .override(
                                          font: GoogleFonts.inter(
                                            fontWeight:
                                                FlutterFlowTheme.of(context)
                                                    .bodyMedium
                                                    .fontWeight,
                                            fontStyle:
                                                FlutterFlowTheme.of(context)
                                                    .bodyMedium
                                                    .fontStyle,
                                          ),
                                          color: FlutterFlowTheme.of(context)
                                              .secondaryText,
                                          letterSpacing: 0.0,
                                          fontWeight:
                                              FlutterFlowTheme.of(context)
                                                  .bodyMedium
                                                  .fontWeight,
                                          fontStyle:
                                              FlutterFlowTheme.of(context)
                                                  .bodyMedium
                                                  .fontStyle,
                                          lineHeight: 1.6,
                                        ),
                                  ),
                                ].divide(SizedBox(height: 4)),
                              ),
                            ].divide(SizedBox(height: 24)),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(24),
                    child: Container(
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(32),
                        child: BackdropFilter(
                          filter: ImageFilter.blur(
                            sigmaX: 20,
                            sigmaY: 20,
                          ),
                          child: Container(
                            decoration: BoxDecoration(
                              color: FlutterFlowTheme.of(context).surface80,
                              borderRadius: BorderRadius.circular(32),
                              shape: BoxShape.rectangle,
                              border: Border.all(
                                color:
                                    FlutterFlowTheme.of(context).surfaceVariant,
                                width: 1,
                              ),
                            ),
                            child: Padding(
                              padding: EdgeInsets.all(32),
                              child: Container(
                                child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment:
                                      CrossAxisAlignment.stretch,
                                  children: [
                                    Column(
                                      mainAxisSize: MainAxisSize.min,
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      children: [
                                        Text(
                                          'Welcome Back',
                                          style: FlutterFlowTheme.of(context)
                                              .titleLarge
                                              .override(
                                                font: GoogleFonts.inter(
                                                  fontWeight: FontWeight.bold,
                                                  fontStyle:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .titleLarge
                                                          .fontStyle,
                                                ),
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .primaryText,
                                                letterSpacing: 0.0,
                                                fontWeight: FontWeight.bold,
                                                fontStyle:
                                                    FlutterFlowTheme.of(context)
                                                        .titleLarge
                                                        .fontStyle,
                                                lineHeight: 1.4,
                                              ),
                                        ),
                                        Text(
                                          'Sign in to report and track issues',
                                          style: FlutterFlowTheme.of(context)
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
                                                    FlutterFlowTheme.of(context)
                                                        .secondaryText,
                                                letterSpacing: 0.0,
                                                fontWeight:
                                                    FlutterFlowTheme.of(context)
                                                        .bodySmall
                                                        .fontWeight,
                                                fontStyle:
                                                    FlutterFlowTheme.of(context)
                                                        .bodySmall
                                                        .fontStyle,
                                                lineHeight: 1.5,
                                              ),
                                        ),
                                      ].divide(SizedBox(height: 4)),
                                    ),
                                    Column(
                                      mainAxisSize: MainAxisSize.min,
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      children: [
                                        wrapWithModel(
                                          model: _model.textFieldModel1,
                                          updateCallback: () =>
                                              safeSetState(() {}),
                                          child: TextFieldWidget(
                                            label: 'Email Address',
                                            labelPresent: true,
                                            helper: '',
                                            helperPresent: false,
                                            hint: 'alex@example.com',
                                            value: '',
                                            onChange: '',
                                            onSubmit: '',
                                            leadingIcon: Icon(
                                              Icons.mail_outline_rounded,
                                            ),
                                            leadingIconPresent: true,
                                            trailingIconPresent: false,
                                            variant: 'outlined',
                                            error: false,
                                          ),
                                        ),
                                        Column(
                                          mainAxisSize: MainAxisSize.min,
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.center,
                                          children: [
                                            wrapWithModel(
                                              model: _model.textFieldModel2,
                                              updateCallback: () =>
                                                  safeSetState(() {}),
                                              child: TextFieldWidget(
                                                label: 'Password',
                                                labelPresent: true,
                                                helper: '',
                                                helperPresent: false,
                                                hint: '••••••••',
                                                value: '',
                                                onChange: '',
                                                onSubmit: '',
                                                leadingIcon: Icon(
                                                  Icons.lock_open_rounded,
                                                ),
                                                leadingIconPresent: true,
                                                trailingIcon: Icon(
                                                  Icons.visibility_off_rounded,
                                                ),
                                                trailingIconPresent: true,
                                                variant: 'outlined',
                                                error: false,
                                              ),
                                            ),
                                            Row(
                                              mainAxisSize: MainAxisSize.max,
                                              mainAxisAlignment:
                                                  MainAxisAlignment.end,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.center,
                                              children: [
                                                wrapWithModel(
                                                  model: _model.buttonModel1,
                                                  updateCallback: () =>
                                                      safeSetState(() {}),
                                                  child: ButtonWidget(
                                                    content: 'Forgot Password?',
                                                    iconPresent: false,
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
                                          ].divide(SizedBox(height: 4)),
                                        ),
                                      ].divide(SizedBox(height: 16)),
                                    ),
                                    wrapWithModel(
                                      model: _model.buttonModel2,
                                      updateCallback: () => safeSetState(() {}),
                                      child: ButtonWidget(
                                        content: 'Login to Dashboard',
                                        iconPresent: false,
                                        iconEndPresent: false,
                                        variant: 'primary',
                                        size: 'large',
                                        fullWidth: true,
                                        loading: false,
                                        disabled: false,
                                      ),
                                    ),
                                    Row(
                                      mainAxisSize: MainAxisSize.max,
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      children: [
                                        Expanded(
                                          flex: 1,
                                          child: Divider(
                                            height: 16,
                                            thickness: 1,
                                            indent: 0,
                                            endIndent: 0,
                                            color: FlutterFlowTheme.of(context)
                                                .alternate,
                                          ),
                                        ),
                                        Text(
                                          'OR',
                                          style: FlutterFlowTheme.of(context)
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
                                                    FlutterFlowTheme.of(context)
                                                        .secondaryText,
                                                letterSpacing: 0.0,
                                                fontWeight:
                                                    FlutterFlowTheme.of(context)
                                                        .labelSmall
                                                        .fontWeight,
                                                fontStyle:
                                                    FlutterFlowTheme.of(context)
                                                        .labelSmall
                                                        .fontStyle,
                                                lineHeight: 1.2,
                                              ),
                                        ),
                                        Expanded(
                                          flex: 1,
                                          child: Divider(
                                            height: 16,
                                            thickness: 1,
                                            indent: 0,
                                            endIndent: 0,
                                            color: FlutterFlowTheme.of(context)
                                                .alternate,
                                          ),
                                        ),
                                      ].divide(SizedBox(width: 16)),
                                    ),
                                    Row(
                                      mainAxisSize: MainAxisSize.max,
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      children: [
                                        Expanded(
                                          flex: 1,
                                          child: wrapWithModel(
                                            model: _model.socialButtonModel1,
                                            updateCallback: () =>
                                                safeSetState(() {}),
                                            child: SocialButtonWidget(
                                              icon:
                                                  'https://cdn.simpleicons.org/google/0f172a.svg',
                                              label: 'Google',
                                            ),
                                          ),
                                        ),
                                        Expanded(
                                          flex: 1,
                                          child: wrapWithModel(
                                            model: _model.socialButtonModel2,
                                            updateCallback: () =>
                                                safeSetState(() {}),
                                            child: SocialButtonWidget(
                                              icon:
                                                  'https://cdn.simpleicons.org/apple/0f172a.svg',
                                              label: 'Apple',
                                            ),
                                          ),
                                        ),
                                      ].divide(SizedBox(width: 16)),
                                    ),
                                  ].divide(SizedBox(height: 24)),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Container(
                    child: Padding(
                      padding: EdgeInsets.all(32),
                      child: Container(
                        child: Container(
                          alignment: AlignmentDirectional(0, 0),
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Text(
                                'Don\'t have an account?',
                                style: FlutterFlowTheme.of(context)
                                    .bodyMedium
                                    .override(
                                      font: GoogleFonts.inter(
                                        fontWeight: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .fontWeight,
                                        fontStyle: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .fontStyle,
                                      ),
                                      color: FlutterFlowTheme.of(context)
                                          .secondaryText,
                                      letterSpacing: 0.0,
                                      fontWeight: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .fontWeight,
                                      fontStyle: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .fontStyle,
                                      lineHeight: 1.6,
                                    ),
                              ),
                              wrapWithModel(
                                model: _model.buttonModel3,
                                updateCallback: () => safeSetState(() {}),
                                child: ButtonWidget(
                                  content: 'Create Account',
                                  iconPresent: false,
                                  iconEndPresent: false,
                                  variant: 'ghost',
                                  size: 'medium',
                                  fullWidth: false,
                                  loading: false,
                                  disabled: false,
                                ),
                              ),
                            ].divide(SizedBox(width: 4)),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
