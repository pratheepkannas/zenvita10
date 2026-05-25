import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/components/button/button_widget.dart';
import '/components/profile_info_field/profile_info_field_widget.dart';
import '/components/profile_stat/profile_stat_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:ui';
import '/index.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:material_palette/material_palette.dart';
import 'package:provider/provider.dart';
import 'user_profile_model.dart';
export 'user_profile_model.dart';

class UserProfileWidget extends StatefulWidget {
  const UserProfileWidget({super.key});

  static String routeName = 'UserProfile';
  static String routePath = '/userProfile';

  @override
  State<UserProfileWidget> createState() => _UserProfileWidgetState();
}

class _UserProfileWidgetState extends State<UserProfileWidget> {
  late UserProfileModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => UserProfileModel());
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
        appBar: AppBar(
          backgroundColor: FlutterFlowTheme.of(context).secondaryBackground,
          automaticallyImplyLeading: false,
          title: Text(
            'Profile',
            style: FlutterFlowTheme.of(context).titleLarge.override(
                  font: GoogleFonts.plusJakartaSans(
                    fontWeight:
                        FlutterFlowTheme.of(context).titleLarge.fontWeight,
                    fontStyle:
                        FlutterFlowTheme.of(context).titleLarge.fontStyle,
                  ),
                  letterSpacing: 0.0,
                  fontWeight:
                      FlutterFlowTheme.of(context).titleLarge.fontWeight,
                  fontStyle: FlutterFlowTheme.of(context).titleLarge.fontStyle,
                  lineHeight: 1.4,
                ),
          ),
          actions: [],
          centerTitle: true,
          elevation: 0.0,
        ),
        body: SingleChildScrollView(
          primary: false,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Container(
                height: 260.0,
                child: Stack(
                  alignment: AlignmentDirectional(-1.0, -1.0),
                  children: [
                    LayoutBuilder(
                      builder: (context, constraints) {
                        return RadialGrittyGradientShaderFill(
                          width: constraints.maxWidth.isFinite
                              ? constraints.maxWidth
                              : 200.0,
                          height: 200.0,
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
                      alignment: AlignmentDirectional(0.0, 1.0),
                      child: Container(
                        child: Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              0.0, 0.0, 0.0, 20.0),
                          child: Container(
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Stack(
                                  alignment: AlignmentDirectional(0.0, 0.0),
                                  children: [
                                    Container(
                                      width: 110.0,
                                      height: 110.0,
                                      decoration: BoxDecoration(
                                        color: FlutterFlowTheme.of(context)
                                            .primary20,
                                        borderRadius:
                                            BorderRadius.circular(9999.0),
                                        shape: BoxShape.rectangle,
                                      ),
                                      child: Padding(
                                        padding: EdgeInsets.all(4.0),
                                        child: Container(
                                          child: ClipRRect(
                                            borderRadius:
                                                BorderRadius.circular(9999.0),
                                            child: Container(
                                              width: 100.0,
                                              height: 100.0,
                                              decoration: BoxDecoration(
                                                borderRadius:
                                                    BorderRadius.circular(
                                                        9999.0),
                                                shape: BoxShape.rectangle,
                                                border: Border.all(
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .primary,
                                                  width: 2.0,
                                                ),
                                              ),
                                              child: CachedNetworkImage(
                                                fadeInDuration:
                                                    Duration(milliseconds: 0),
                                                fadeOutDuration:
                                                    Duration(milliseconds: 0),
                                                imageUrl:
                                                    'https://dimg.dreamflow.cloud/v1/image/elderly%20friendly%20person%20smiling',
                                                fit: BoxFit.cover,
                                                alignment: Alignment(0.0, 0.0),
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                    Align(
                                      alignment: AlignmentDirectional(1.0, 1.0),
                                      child: Container(
                                        width: 32.0,
                                        height: 32.0,
                                        decoration: BoxDecoration(
                                          color: FlutterFlowTheme.of(context)
                                              .primary,
                                          borderRadius:
                                              BorderRadius.circular(9999.0),
                                          shape: BoxShape.rectangle,
                                          border: Border.all(
                                            color: FlutterFlowTheme.of(context)
                                                .primaryBackground,
                                            width: 3.0,
                                          ),
                                        ),
                                        alignment:
                                            AlignmentDirectional(0.0, 0.0),
                                        child: Icon(
                                          Icons.photo_camera_rounded,
                                          color: FlutterFlowTheme.of(context)
                                              .onPrimary,
                                          size: 16.0,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                                Column(
                                  mainAxisSize: MainAxisSize.min,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Text(
                                      _model.fullName!,
                                      style: FlutterFlowTheme.of(context)
                                          .titleLarge
                                          .override(
                                            font: GoogleFonts.plusJakartaSans(
                                              fontWeight: FontWeight.bold,
                                              fontStyle:
                                                  FlutterFlowTheme.of(context)
                                                      .titleLarge
                                                      .fontStyle,
                                            ),
                                            color: FlutterFlowTheme.of(context)
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
                                      '@${_model.nickname}',
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
                              ].divide(SizedBox(height: 16.0)),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(24.0, 0.0, 24.0, 24.0),
                child: Container(
                  child: Container(
                    decoration: BoxDecoration(
                      color: FlutterFlowTheme.of(context).secondaryBackground,
                      borderRadius: BorderRadius.circular(32.0),
                      shape: BoxShape.rectangle,
                    ),
                    child: Padding(
                      padding: EdgeInsets.all(24.0),
                      child: Container(
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Expanded(
                              flex: 1,
                              child: wrapWithModel(
                                model: _model.profileStatModel1,
                                updateCallback: () => safeSetState(() {}),
                                child: ProfileStatWidget(
                                  value: '98%',
                                  label: 'Adherence',
                                ),
                              ),
                            ),
                            Container(
                              width: 1.0,
                              height: 30.0,
                              decoration: BoxDecoration(
                                color: FlutterFlowTheme.of(context).alternate,
                                shape: BoxShape.rectangle,
                              ),
                            ),
                            Expanded(
                              flex: 1,
                              child: wrapWithModel(
                                model: _model.profileStatModel2,
                                updateCallback: () => safeSetState(() {}),
                                child: ProfileStatWidget(
                                  value: '2d ago',
                                  label: 'Last Checkup',
                                ),
                              ),
                            ),
                            Container(
                              width: 1.0,
                              height: 30.0,
                              decoration: BoxDecoration(
                                color: FlutterFlowTheme.of(context).alternate,
                                shape: BoxShape.rectangle,
                              ),
                            ),
                            Expanded(
                              flex: 1,
                              child: wrapWithModel(
                                model: _model.profileStatModel3,
                                updateCallback: () => safeSetState(() {}),
                                child: ProfileStatWidget(
                                  value: 'Good',
                                  label: 'Vitality',
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(24.0, 0.0, 24.0, 0.0),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 16.0),
                      child: Container(
                        child: Text(
                          'Personal Information',
                          style:
                              FlutterFlowTheme.of(context).labelLarge.override(
                                    font: GoogleFonts.spaceGrotesk(
                                      fontWeight: FontWeight.bold,
                                      fontStyle: FlutterFlowTheme.of(context)
                                          .labelLarge
                                          .fontStyle,
                                    ),
                                    color: FlutterFlowTheme.of(context).primary,
                                    letterSpacing: 0.0,
                                    fontWeight: FontWeight.bold,
                                    fontStyle: FlutterFlowTheme.of(context)
                                        .labelLarge
                                        .fontStyle,
                                    lineHeight: 1.3,
                                  ),
                        ),
                      ),
                    ),
                    wrapWithModel(
                      model: _model.profileInfoFieldModel1,
                      updateCallback: () => safeSetState(() {}),
                      child: ProfileInfoFieldWidget(
                        icon: Icon(
                          Icons.person_outline_rounded,
                          color: FlutterFlowTheme.of(context).primary,
                          size: 20.0,
                        ),
                        label: 'Full Name',
                        value: _model.fullName,
                      ),
                    ),
                    wrapWithModel(
                      model: _model.profileInfoFieldModel2,
                      updateCallback: () => safeSetState(() {}),
                      child: ProfileInfoFieldWidget(
                        icon: Icon(
                          Icons.alternate_email_rounded,
                          color: FlutterFlowTheme.of(context).primary,
                          size: 20.0,
                        ),
                        label: 'Email Address',
                        value: _model.email,
                      ),
                    ),
                    wrapWithModel(
                      model: _model.profileInfoFieldModel3,
                      updateCallback: () => safeSetState(() {}),
                      child: ProfileInfoFieldWidget(
                        icon: Icon(
                          Icons.phone_iphone_rounded,
                          color: FlutterFlowTheme.of(context).primary,
                          size: 20.0,
                        ),
                        label: 'Phone Number',
                        value: _model.phone,
                      ),
                    ),
                    Container(
                      height: 24.0,
                    ),
                    Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 16.0),
                      child: Container(
                        child: Text(
                          'Emergency Contact',
                          style:
                              FlutterFlowTheme.of(context).labelLarge.override(
                                    font: GoogleFonts.spaceGrotesk(
                                      fontWeight: FontWeight.bold,
                                      fontStyle: FlutterFlowTheme.of(context)
                                          .labelLarge
                                          .fontStyle,
                                    ),
                                    color: FlutterFlowTheme.of(context).error,
                                    letterSpacing: 0.0,
                                    fontWeight: FontWeight.bold,
                                    fontStyle: FlutterFlowTheme.of(context)
                                        .labelLarge
                                        .fontStyle,
                                    lineHeight: 1.3,
                                  ),
                        ),
                      ),
                    ),
                    Container(
                      decoration: BoxDecoration(
                        color: FlutterFlowTheme.of(context).error5,
                        borderRadius: BorderRadius.circular(24.0),
                        shape: BoxShape.rectangle,
                        border: Border.all(
                          color: FlutterFlowTheme.of(context).error20,
                          width: 1.0,
                        ),
                      ),
                      child: Padding(
                        padding: EdgeInsets.all(16.0),
                        child: Container(
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              wrapWithModel(
                                model: _model.profileInfoFieldModel4,
                                updateCallback: () => safeSetState(() {}),
                                child: ProfileInfoFieldWidget(
                                  icon: Icon(
                                    Icons.contact_emergency_rounded,
                                    color: FlutterFlowTheme.of(context).primary,
                                    size: 20.0,
                                  ),
                                  label: 'Emergency Contact Name',
                                  value: _model.emergencyContactName,
                                ),
                              ),
                              wrapWithModel(
                                model: _model.profileInfoFieldModel5,
                                updateCallback: () => safeSetState(() {}),
                                child: ProfileInfoFieldWidget(
                                  icon: Icon(
                                    Icons.call_rounded,
                                    color: FlutterFlowTheme.of(context).primary,
                                    size: 20.0,
                                  ),
                                  label: 'Emergency Phone',
                                  value: _model.emergencyPhone,
                                ),
                              ),
                            ].divide(SizedBox(height: 16.0)),
                          ),
                        ),
                      ),
                    ),
                    Container(
                      height: 32.0,
                    ),
                    InkWell(
                      splashColor: Colors.transparent,
                      focusColor: Colors.transparent,
                      hoverColor: Colors.transparent,
                      highlightColor: Colors.transparent,
                      onTap: () async {
                        _model.userI13 = await queryUsersRecordOnce();
                        if (_model.userI13?.length != 0) {
                          await _model.userI13!.firstOrNull!.reference
                              .update(createUsersRecordData(
                            fullName: _model.fullName,
                            nickname: _model.nickname,
                            email: _model.email,
                            phone: _model.phone,
                            emergencyContactName: _model.emergencyContactName,
                            emergencyPhone: _model.emergencyPhone,
                          ));
                        }
                        context.pop();

                        safeSetState(() {});
                      },
                      child: wrapWithModel(
                        model: _model.buttonModel1,
                        updateCallback: () => safeSetState(() {}),
                        child: ButtonWidget(
                          content: 'Save Changes',
                          icon: Icon(
                            Icons.check_rounded,
                            color: FlutterFlowTheme.of(context).onPrimary,
                            size: 16.0,
                          ),
                          iconPresent: true,
                          iconEndPresent: false,
                          variant: 'primary',
                          size: 'large',
                          fullWidth: true,
                          loading: false,
                          disabled: false,
                        ),
                      ),
                    ),
                    Container(
                      height: 16.0,
                    ),
                    InkWell(
                      splashColor: Colors.transparent,
                      focusColor: Colors.transparent,
                      hoverColor: Colors.transparent,
                      highlightColor: Colors.transparent,
                      onTap: () async {
                        if (Navigator.of(context).canPop()) {
                          context.pop();
                        }
                        context
                            .pushNamed(AuthenticationSelectionWidget.routeName);
                      },
                      child: wrapWithModel(
                        model: _model.buttonModel2,
                        updateCallback: () => safeSetState(() {}),
                        child: ButtonWidget(
                          content: 'Sign Out',
                          icon: Icon(
                            Icons.logout_rounded,
                            color: FlutterFlowTheme.of(context).primaryText,
                            size: 16.0,
                          ),
                          iconPresent: true,
                          iconEndPresent: false,
                          variant: 'outline',
                          size: 'large',
                          fullWidth: true,
                          loading: false,
                          disabled: false,
                        ),
                      ),
                    ),
                    Container(
                      height: 32.0,
                    ),
                    Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 24.0),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(
                            'ZenVita v2.4.0',
                            style: FlutterFlowTheme.of(context)
                                .labelSmall
                                .override(
                                  font: GoogleFonts.spaceGrotesk(
                                    fontWeight: FlutterFlowTheme.of(context)
                                        .labelSmall
                                        .fontWeight,
                                    fontStyle: FlutterFlowTheme.of(context)
                                        .labelSmall
                                        .fontStyle,
                                  ),
                                  color: FlutterFlowTheme.of(context).accent3,
                                  letterSpacing: 0.0,
                                  fontWeight: FlutterFlowTheme.of(context)
                                      .labelSmall
                                      .fontWeight,
                                  fontStyle: FlutterFlowTheme.of(context)
                                      .labelSmall
                                      .fontStyle,
                                  lineHeight: 1.3,
                                ),
                          ),
                          Text(
                            'Securely encrypted by ZenGuard AI',
                            style: FlutterFlowTheme.of(context)
                                .labelSmall
                                .override(
                                  font: GoogleFonts.spaceGrotesk(
                                    fontWeight: FlutterFlowTheme.of(context)
                                        .labelSmall
                                        .fontWeight,
                                    fontStyle: FlutterFlowTheme.of(context)
                                        .labelSmall
                                        .fontStyle,
                                  ),
                                  color: FlutterFlowTheme.of(context).accent3,
                                  letterSpacing: 0.0,
                                  fontWeight: FlutterFlowTheme.of(context)
                                      .labelSmall
                                      .fontWeight,
                                  fontStyle: FlutterFlowTheme.of(context)
                                      .labelSmall
                                      .fontStyle,
                                  lineHeight: 1.3,
                                ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
