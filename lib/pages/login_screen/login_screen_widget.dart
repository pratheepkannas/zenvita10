import '/components/button/button_widget.dart';
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
import 'login_screen_model.dart';
export 'login_screen_model.dart';

class LoginScreenWidget extends StatefulWidget {
  const LoginScreenWidget({super.key});

  static String routeName = 'LoginScreen';
  static String routePath = '/loginScreen';

  @override
  State<LoginScreenWidget> createState() => _LoginScreenWidgetState();
}

class _LoginScreenWidgetState extends State<LoginScreenWidget> {
  late LoginScreenModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => LoginScreenModel());
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
            SingleChildScrollView(
              primary: false,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Padding(
                    padding: EdgeInsets.all(32.0),
                    child: Container(
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: [
                          Container(
                            height: 60.0,
                          ),
                          Column(
                            mainAxisSize: MainAxisSize.min,
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              ClipRRect(
                                borderRadius: BorderRadius.circular(30.0),
                                child: BackdropFilter(
                                  filter: ImageFilter.blur(
                                    sigmaX: 10.0,
                                    sigmaY: 10.0,
                                  ),
                                  child: Container(
                                    width: 100.0,
                                    height: 100.0,
                                    decoration: BoxDecoration(
                                      color: FlutterFlowTheme.of(context)
                                          .surface20,
                                      boxShadow: [
                                        BoxShadow(
                                          blurRadius: 20.0,
                                          color: FlutterFlowTheme.of(context)
                                              .primary20,
                                          offset: Offset(
                                            0.0,
                                            0.0,
                                          ),
                                          spreadRadius: 0.0,
                                        )
                                      ],
                                      borderRadius: BorderRadius.circular(30.0),
                                      shape: BoxShape.rectangle,
                                      border: Border.all(
                                        color: FlutterFlowTheme.of(context)
                                            .primary30,
                                        width: 1.0,
                                      ),
                                    ),
                                    alignment: AlignmentDirectional(0.0, 0.0),
                                    child: Icon(
                                      Icons.medical_services_rounded,
                                      color:
                                          FlutterFlowTheme.of(context).tertiary,
                                      size: 48.0,
                                    ),
                                  ),
                                ),
                              ),
                              Column(
                                mainAxisSize: MainAxisSize.min,
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Text(
                                    'ZenVita',
                                    textAlign: TextAlign.center,
                                    style: FlutterFlowTheme.of(context)
                                        .headlineLarge
                                        .override(
                                          font: GoogleFonts.plusJakartaSans(
                                            fontWeight: FontWeight.w800,
                                            fontStyle:
                                                FlutterFlowTheme.of(context)
                                                    .headlineLarge
                                                    .fontStyle,
                                          ),
                                          color: FlutterFlowTheme.of(context)
                                              .primaryText,
                                          letterSpacing: 0.0,
                                          fontWeight: FontWeight.w800,
                                          fontStyle:
                                              FlutterFlowTheme.of(context)
                                                  .headlineLarge
                                                  .fontStyle,
                                          lineHeight: 1.25,
                                        ),
                                  ),
                                  Text(
                                    'Login to your health portal',
                                    textAlign: TextAlign.center,
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
                                          fontWeight:
                                              FlutterFlowTheme.of(context)
                                                  .bodyMedium
                                                  .fontWeight,
                                          fontStyle:
                                              FlutterFlowTheme.of(context)
                                                  .bodyMedium
                                                  .fontStyle,
                                          lineHeight: 1.5,
                                        ),
                                  ),
                                ].divide(SizedBox(height: 4.0)),
                              ),
                            ].divide(SizedBox(height: 24.0)),
                          ),
                          Container(
                            height: 48.0,
                          ),
                          Column(
                            mainAxisSize: MainAxisSize.min,
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Column(
                                mainAxisSize: MainAxisSize.min,
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Email ID',
                                    style: FlutterFlowTheme.of(context)
                                        .labelLarge
                                        .override(
                                          font: GoogleFonts.spaceGrotesk(
                                            fontWeight:
                                                FlutterFlowTheme.of(context)
                                                    .labelLarge
                                                    .fontWeight,
                                            fontStyle:
                                                FlutterFlowTheme.of(context)
                                                    .labelLarge
                                                    .fontStyle,
                                          ),
                                          color: FlutterFlowTheme.of(context)
                                              .primaryText80,
                                          letterSpacing: 0.0,
                                          fontWeight:
                                              FlutterFlowTheme.of(context)
                                                  .labelLarge
                                                  .fontWeight,
                                          fontStyle:
                                              FlutterFlowTheme.of(context)
                                                  .labelLarge
                                                  .fontStyle,
                                          lineHeight: 1.3,
                                        ),
                                  ),
                                  wrapWithModel(
                                    model: _model.textFieldModel1,
                                    updateCallback: () => safeSetState(() {}),
                                    child: TextFieldWidget(
                                      label: 'Email',
                                      labelPresent: true,
                                      helper: '',
                                      helperPresent: false,
                                      hint: 'Enter your email',
                                      value: _model.email,
                                      onChange: '',
                                      onSubmit: '',
                                      leadingIcon: Icon(
                                        Icons.email_rounded,
                                        color: FlutterFlowTheme.of(context)
                                            .primaryText,
                                        size: 16.0,
                                      ),
                                      leadingIconPresent: true,
                                      trailingIconPresent: false,
                                      variant: 'filled',
                                      error: false,
                                    ),
                                  ),
                                ].divide(SizedBox(height: 8.0)),
                              ),
                              Column(
                                mainAxisSize: MainAxisSize.min,
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Password',
                                    style: FlutterFlowTheme.of(context)
                                        .labelLarge
                                        .override(
                                          font: GoogleFonts.spaceGrotesk(
                                            fontWeight:
                                                FlutterFlowTheme.of(context)
                                                    .labelLarge
                                                    .fontWeight,
                                            fontStyle:
                                                FlutterFlowTheme.of(context)
                                                    .labelLarge
                                                    .fontStyle,
                                          ),
                                          color: FlutterFlowTheme.of(context)
                                              .primaryText80,
                                          letterSpacing: 0.0,
                                          fontWeight:
                                              FlutterFlowTheme.of(context)
                                                  .labelLarge
                                                  .fontWeight,
                                          fontStyle:
                                              FlutterFlowTheme.of(context)
                                                  .labelLarge
                                                  .fontStyle,
                                          lineHeight: 1.3,
                                        ),
                                  ),
                                  wrapWithModel(
                                    model: _model.textFieldModel2,
                                    updateCallback: () => safeSetState(() {}),
                                    child: TextFieldWidget(
                                      label: 'Password',
                                      labelPresent: true,
                                      helper: '',
                                      helperPresent: false,
                                      hint: 'Enter your password',
                                      value: _model.password,
                                      onChange: '',
                                      onSubmit: '',
                                      leadingIcon: Icon(
                                        Icons.lock_rounded,
                                        color: FlutterFlowTheme.of(context)
                                            .primaryText,
                                        size: 16.0,
                                      ),
                                      leadingIconPresent: true,
                                      trailingIcon: Icon(
                                        Icons.visibility_rounded,
                                        color: FlutterFlowTheme.of(context)
                                            .primaryText,
                                        size: 16.0,
                                      ),
                                      trailingIconPresent: true,
                                      variant: 'filled',
                                      error: false,
                                    ),
                                  ),
                                ].divide(SizedBox(height: 8.0)),
                              ),
                              Align(
                                alignment: AlignmentDirectional(1.0, -1.0),
                                child: Container(
                                  child: wrapWithModel(
                                    model: _model.buttonModel1,
                                    updateCallback: () => safeSetState(() {}),
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
                                ),
                              ),
                            ].divide(SizedBox(height: 32.0)),
                          ),
                          Container(
                            height: 32.0,
                          ),
                          if (_model.error != null && _model.error != '')
                            Text(
                              _model.error!,
                              textAlign: TextAlign.center,
                              style: FlutterFlowTheme.of(context)
                                  .labelMedium
                                  .override(
                                    font: GoogleFonts.spaceGrotesk(
                                      fontWeight: FlutterFlowTheme.of(context)
                                          .labelMedium
                                          .fontWeight,
                                      fontStyle: FlutterFlowTheme.of(context)
                                          .labelMedium
                                          .fontStyle,
                                    ),
                                    color: FlutterFlowTheme.of(context).error,
                                    letterSpacing: 0.0,
                                    fontWeight: FlutterFlowTheme.of(context)
                                        .labelMedium
                                        .fontWeight,
                                    fontStyle: FlutterFlowTheme.of(context)
                                        .labelMedium
                                        .fontStyle,
                                    lineHeight: 1.3,
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
                                      blurRadius: 15.0,
                                      color:
                                          FlutterFlowTheme.of(context).accent40,
                                      offset: Offset(
                                        0.0,
                                        4.0,
                                      ),
                                      spreadRadius: 0.0,
                                    )
                                  ],
                                  borderRadius: BorderRadius.circular(24.0),
                                  shape: BoxShape.rectangle,
                                ),
                                child: InkWell(
                                  splashColor: Colors.transparent,
                                  focusColor: Colors.transparent,
                                  hoverColor: Colors.transparent,
                                  highlightColor: Colors.transparent,
                                  onTap: () async {
                                    if ((_model.email == null ||
                                            _model.email == '') ||
                                        (_model.password == null ||
                                            _model.password == '')) {
                                      _model.error =
                                          '\"Email and password are required\"';
                                      safeSetState(() {});
                                      return;
                                    }
                                    _model.error = '\"\"';
                                    safeSetState(() {});

                                    context.goNamed(
                                        HealthcareDashboardWidget.routeName);
                                  },
                                  child: wrapWithModel(
                                    model: _model.buttonModel2,
                                    updateCallback: () => safeSetState(() {}),
                                    child: ButtonWidget(
                                      content: 'Login',
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
                                  model: _model.buttonModel3,
                                  updateCallback: () => safeSetState(() {}),
                                  child: ButtonWidget(
                                    content: 'Back',
                                    icon: Icon(
                                      Icons.arrow_back_rounded,
                                      color: FlutterFlowTheme.of(context)
                                          .primaryText,
                                      size: 16.0,
                                    ),
                                    iconPresent: true,
                                    iconEndPresent: false,
                                    variant: 'outline',
                                    size: 'medium',
                                    fullWidth: true,
                                    loading: false,
                                    disabled: false,
                                  ),
                                ),
                              ),
                            ].divide(SizedBox(height: 24.0)),
                          ),
                          Container(
                            height: 40.0,
                          ),
                          Row(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Text(
                                'Don\'t have an account?',
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
                                  context.goNamed(SignUpScreenWidget.routeName);
                                },
                                child: wrapWithModel(
                                  model: _model.buttonModel4,
                                  updateCallback: () => safeSetState(() {}),
                                  child: ButtonWidget(
                                    content: 'Sign Up',
                                    iconPresent: false,
                                    iconEndPresent: false,
                                    variant: 'ghost',
                                    size: 'medium',
                                    fullWidth: false,
                                    loading: false,
                                    disabled: false,
                                  ),
                                ),
                              ),
                            ].divide(SizedBox(width: 4.0)),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Align(
              alignment: AlignmentDirectional(0.0, -1.0),
              child: Container(
                height: 44.0,
                decoration: BoxDecoration(
                  color: FlutterFlowTheme.of(context).background30,
                  shape: BoxShape.rectangle,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
