import '/components/button/button_widget.dart';
import '/components/checkbox/checkbox_widget.dart';
import '/components/text_field/text_field_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:ui';
import '/index.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:material_palette/material_palette.dart';
import 'package:provider/provider.dart';
import 'sign_up_screen_model.dart';
export 'sign_up_screen_model.dart';

class SignUpScreenWidget extends StatefulWidget {
  const SignUpScreenWidget({super.key});

  static String routeName = 'SignUpScreen';
  static String routePath = '/signUpScreen';

  @override
  State<SignUpScreenWidget> createState() => _SignUpScreenWidgetState();
}

class _SignUpScreenWidgetState extends State<SignUpScreenWidget> {
  late SignUpScreenModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => SignUpScreenModel());
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
        body: SingleChildScrollView(
          primary: false,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Container(
                height: 240.0,
                child: Stack(
                  alignment: AlignmentDirectional(-1.0, -1.0),
                  children: [
                    LayoutBuilder(
                      builder: (context, constraints) {
                        return RadialGrittyGradientShaderFill(
                          width: constraints.maxWidth.isFinite
                              ? constraints.maxWidth
                              : 200.0,
                          height: constraints.maxHeight.isFinite
                              ? constraints.maxHeight
                              : 200.0,
                          params: ShaderParams(values: {
                            'gradientCenterX': 0.17,
                            'gradientCenterY': 0.03,
                            'gradientScale': 1.29,
                            'gradientOffset': -0.32,
                            'stippleStrength': 0.56,
                            'ditherStrength': 0.0,
                            'ditherScale': 0.95,
                            'animSpeed': 0.0,
                            'colorCount': 3.0,
                            'softness': 1.0,
                            'exposure': 1.0,
                            'contrast': 1.0,
                            'noiseDensity': 100.0,
                            'noiseIntensity': 0.0
                          }, colors: {
                            'color0': Color(0xFFFFE6B4),
                            'color1': Color(0xFFE68C78),
                            'color2': Color(0xFF64508C),
                            'color3': Color(0x00808080),
                            'color4': Color(0x00808080),
                            'color5': Color(0x00808080),
                            'color6': Color(0x00808080),
                            'color7': Color(0x00808080),
                            'color8': Color(0x00808080),
                            'color9': Color(0x00808080)
                          }),
                          animationMode: ShaderAnimationMode.continuous,
                          cache: false,
                        );
                      },
                    ),
                    Align(
                      alignment: AlignmentDirectional(0.0, 0.0),
                      child: Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(
                            24.0, 40.0, 24.0, 24.0),
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                              width: 80.0,
                              height: 80.0,
                              decoration: BoxDecoration(
                                color: FlutterFlowTheme.of(context).onPrimary27,
                                boxShadow: [
                                  BoxShadow(
                                    blurRadius: 20.0,
                                    color: Color(0x3300FFFF),
                                    offset: Offset(
                                      0.0,
                                      0.0,
                                    ),
                                    spreadRadius: 0.0,
                                  )
                                ],
                                borderRadius: BorderRadius.circular(9999.0),
                                shape: BoxShape.rectangle,
                                border: Border.all(
                                  color: Color(0xFF00FFFF),
                                  width: 2.0,
                                ),
                              ),
                              alignment: AlignmentDirectional(0.0, 0.0),
                              child: Icon(
                                Icons.medical_services_rounded,
                                color: Color(0xFF00FFFF),
                                size: 40.0,
                              ),
                            ),
                            Column(
                              mainAxisSize: MainAxisSize.min,
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Text(
                                  'Create Your Account',
                                  style: FlutterFlowTheme.of(context)
                                      .headlineMedium
                                      .override(
                                        font: GoogleFonts.plusJakartaSans(
                                          fontWeight: FontWeight.bold,
                                          fontStyle:
                                              FlutterFlowTheme.of(context)
                                                  .headlineMedium
                                                  .fontStyle,
                                        ),
                                        color: FlutterFlowTheme.of(context)
                                            .onSecondary,
                                        letterSpacing: 0.0,
                                        fontWeight: FontWeight.bold,
                                        fontStyle: FlutterFlowTheme.of(context)
                                            .headlineMedium
                                            .fontStyle,
                                        lineHeight: 1.3,
                                      ),
                                ),
                                Text(
                                  'Join the ZenVita healthcare circle',
                                  style: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .override(
                                        font: GoogleFonts.outfit(
                                          fontWeight:
                                              FlutterFlowTheme.of(context)
                                                  .bodyMedium
                                                  .fontWeight,
                                          fontStyle:
                                              FlutterFlowTheme.of(context)
                                                  .bodyMedium
                                                  .fontStyle,
                                        ),
                                        color: Color(0xFF00FFFF),
                                        letterSpacing: 0.0,
                                        fontWeight: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .fontWeight,
                                        fontStyle: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .fontStyle,
                                        lineHeight: 1.5,
                                      ),
                                ),
                              ].divide(SizedBox(height: 4.0)),
                            ),
                          ].divide(SizedBox(height: 16.0)),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                child: Container(
                  decoration: BoxDecoration(
                    color: FlutterFlowTheme.of(context).primaryBackground,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(32.0),
                      topRight: Radius.circular(32.0),
                    ),
                    shape: BoxShape.rectangle,
                  ),
                  child: Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(24.0, 32.0, 24.0, 32.0),
                    child: Container(
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: [
                          if (_model.error != null && _model.error != '')
                            Text(
                              _model.error!,
                              textAlign: TextAlign.center,
                              style: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .override(
                                    font: GoogleFonts.outfit(
                                      fontWeight: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .fontWeight,
                                      fontStyle: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .fontStyle,
                                    ),
                                    color: FlutterFlowTheme.of(context).error,
                                    letterSpacing: 0.0,
                                    fontWeight: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .fontWeight,
                                    fontStyle: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .fontStyle,
                                    lineHeight: 1.5,
                                  ),
                            ),
                          Column(
                            mainAxisSize: MainAxisSize.min,
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              wrapWithModel(
                                model: _model.textFieldModel1,
                                updateCallback: () => safeSetState(() {}),
                                child: TextFieldWidget(
                                  label: 'Full Name',
                                  labelPresent: true,
                                  helper: '',
                                  helperPresent: false,
                                  hint: 'John Doe',
                                  value: _model.fullName,
                                  onChange: '',
                                  onSubmit: '',
                                  leadingIcon: Icon(
                                    Icons.person_outline_rounded,
                                  ),
                                  leadingIconPresent: true,
                                  trailingIconPresent: false,
                                  variant: 'outlined',
                                  error: false,
                                ),
                              ),
                              wrapWithModel(
                                model: _model.textFieldModel2,
                                updateCallback: () => safeSetState(() {}),
                                child: TextFieldWidget(
                                  label: 'Nickname',
                                  labelPresent: true,
                                  helper: '',
                                  helperPresent: false,
                                  hint: 'Johnny',
                                  value: _model.nickname,
                                  onChange: '',
                                  onSubmit: '',
                                  leadingIcon: Icon(
                                    Icons.face_rounded,
                                  ),
                                  leadingIconPresent: true,
                                  trailingIconPresent: false,
                                  variant: 'outlined',
                                  error: false,
                                ),
                              ),
                              wrapWithModel(
                                model: _model.textFieldModel3,
                                updateCallback: () => safeSetState(() {}),
                                child: TextFieldWidget(
                                  label: 'Email ID',
                                  labelPresent: true,
                                  helper: '',
                                  helperPresent: false,
                                  hint: 'Example@gmail.com',
                                  value: _model.email,
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
                              wrapWithModel(
                                model: _model.textFieldModel4,
                                updateCallback: () => safeSetState(() {}),
                                child: TextFieldWidget(
                                  label: 'Phone Number',
                                  labelPresent: true,
                                  helper: '',
                                  helperPresent: false,
                                  hint: '+1 234 567 890',
                                  value: _model.phone,
                                  onChange: '',
                                  onSubmit: '',
                                  leadingIcon: Icon(
                                    Icons.phone_android_rounded,
                                  ),
                                  leadingIconPresent: true,
                                  trailingIconPresent: false,
                                  variant: 'outlined',
                                  error: false,
                                ),
                              ),
                              wrapWithModel(
                                model: _model.textFieldModel5,
                                updateCallback: () => safeSetState(() {}),
                                child: TextFieldWidget(
                                  label: 'Password',
                                  labelPresent: true,
                                  helper: '',
                                  helperPresent: false,
                                  hint: '••••••••',
                                  value: _model.password,
                                  onChange: '',
                                  onSubmit: '',
                                  leadingIcon: Icon(
                                    Icons.lock_outline_rounded,
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
                              wrapWithModel(
                                model: _model.textFieldModel6,
                                updateCallback: () => safeSetState(() {}),
                                child: TextFieldWidget(
                                  label: 'Confirm Password',
                                  labelPresent: true,
                                  helper: '',
                                  helperPresent: false,
                                  hint: '••••••••',
                                  value: _model.confirmPassword,
                                  onChange: '',
                                  onSubmit: '',
                                  leadingIcon: Icon(
                                    Icons.lock_rounded,
                                  ),
                                  leadingIconPresent: true,
                                  trailingIconPresent: false,
                                  variant: 'outlined',
                                  error: false,
                                ),
                              ),
                            ].divide(SizedBox(height: 16.0)),
                          ),
                          wrapWithModel(
                            model: _model.checkboxModel,
                            updateCallback: () => safeSetState(() {}),
                            child: CheckboxWidget(
                              label: 'I agree to the ZenVita Privacy Policy',
                              subtitle: 'Required for account security',
                              color: FlutterFlowTheme.of(context).primary,
                              isChecked: true,
                              hasSubtitle: true,
                              disabled: false,
                            ),
                          ),
                          Column(
                            mainAxisSize: MainAxisSize.min,
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Container(
                                decoration: BoxDecoration(
                                  boxShadow: [
                                    BoxShadow(
                                      blurRadius: 20.0,
                                      color: Color(0x4400FFFF),
                                      offset: Offset(
                                        0.0,
                                        8.0,
                                      ),
                                      spreadRadius: 0.0,
                                    )
                                  ],
                                  shape: BoxShape.rectangle,
                                ),
                                child: InkWell(
                                  splashColor: Colors.transparent,
                                  focusColor: Colors.transparent,
                                  hoverColor: Colors.transparent,
                                  highlightColor: Colors.transparent,
                                  onTap: () async {
                                    if (((_model.fullName == null ||
                                                _model.fullName == '') ||
                                            (_model.email == null ||
                                                _model.email == '')) ||
                                        (_model.password == null ||
                                            _model.password == '')) {
                                      _model.error =
                                          '\"Please fill in all required fields\"';
                                      safeSetState(() {});
                                      return;
                                    }
                                    if (_model.password !=
                                        _model.confirmPassword) {
                                      _model.error =
                                          '\"Passwords do not match\"';
                                      safeSetState(() {});
                                      return;
                                    }
                                    _model.error = '\"\"';
                                    safeSetState(() {});

                                    context.goNamed(
                                        HealthcareDashboardWidget.routeName);
                                  },
                                  child: wrapWithModel(
                                    model: _model.buttonModel1,
                                    updateCallback: () => safeSetState(() {}),
                                    child: ButtonWidget(
                                      content: 'Create Account',
                                      iconPresent: false,
                                      iconEndPresent: false,
                                      variant: 'primary',
                                      size: 'large',
                                      fullWidth: true,
                                      loading: false,
                                      disabled: false,
                                    ),
                                  ),
                                ),
                              ),
                              InkWell(
                                splashColor: Colors.transparent,
                                focusColor: Colors.transparent,
                                hoverColor: Colors.transparent,
                                highlightColor: Colors.transparent,
                                onTap: () async {
                                  context.pushNamed(
                                      AuthenticationSelectionWidget.routeName);
                                },
                                child: wrapWithModel(
                                  model: _model.buttonModel2,
                                  updateCallback: () => safeSetState(() {}),
                                  child: ButtonWidget(
                                    content: 'Go Back',
                                    icon: Icon(
                                      Icons.arrow_back_rounded,
                                      color:
                                          FlutterFlowTheme.of(context).primary,
                                      size: 16.0,
                                    ),
                                    iconPresent: true,
                                    iconEndPresent: false,
                                    variant: 'ghost',
                                    size: 'medium',
                                    fullWidth: false,
                                    loading: false,
                                    disabled: false,
                                  ),
                                ),
                              ),
                            ].divide(SizedBox(height: 16.0)),
                          ),
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                0.0, 16.0, 0.0, 16.0),
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Text(
                                  'Already have an account?',
                                  style: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .override(
                                        font: GoogleFonts.outfit(
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
                                        fontWeight: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .fontWeight,
                                        fontStyle: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .fontStyle,
                                        lineHeight: 1.5,
                                      ),
                                ),
                                InkWell(
                                  splashColor: Colors.transparent,
                                  focusColor: Colors.transparent,
                                  hoverColor: Colors.transparent,
                                  highlightColor: Colors.transparent,
                                  onTap: () async {
                                    context
                                        .goNamed(LoginScreenWidget.routeName);
                                  },
                                  child: wrapWithModel(
                                    model: _model.buttonModel3,
                                    updateCallback: () => safeSetState(() {}),
                                    child: ButtonWidget(
                                      content: 'Login',
                                      iconPresent: false,
                                      iconEndPresent: false,
                                      variant: 'ghost',
                                      size: 'small',
                                      fullWidth: false,
                                      loading: false,
                                      disabled: false,
                                    ),
                                  ),
                                ),
                              ].divide(SizedBox(width: 4.0)),
                            ),
                          ),
                        ].divide(SizedBox(height: 24.0)),
                      ),
                    ),
                  ),
                ),
              ),
              Container(
                height: 40.0,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
