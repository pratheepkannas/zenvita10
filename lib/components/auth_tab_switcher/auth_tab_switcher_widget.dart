import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'auth_tab_switcher_model.dart';
export 'auth_tab_switcher_model.dart';

class AuthTabSwitcherWidget extends StatefulWidget {
  const AuthTabSwitcherWidget({
    super.key,
    String? activeTab,
  }) : this.activeTab = activeTab ?? '';

  final String activeTab;

  @override
  State<AuthTabSwitcherWidget> createState() => _AuthTabSwitcherWidgetState();
}

class _AuthTabSwitcherWidgetState extends State<AuthTabSwitcherWidget> {
  late AuthTabSwitcherModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => AuthTabSwitcherModel());
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 24.0),
      child: Container(
        child: Container(
          decoration: BoxDecoration(
            color: FlutterFlowTheme.of(context).surface20,
            borderRadius: BorderRadius.circular(24.0),
            shape: BoxShape.rectangle,
          ),
          child: Padding(
            padding: EdgeInsets.all(4.0),
            child: Container(
              child: Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Expanded(
                    flex: 1,
                    child: Container(
                      decoration: BoxDecoration(
                        color: widget!.activeTab == 'login'
                            ? Color(0x00000000)
                            : Colors.transparent,
                        borderRadius: BorderRadius.circular(16.0),
                        shape: BoxShape.rectangle,
                      ),
                      child: Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(
                            0.0, 16.0, 0.0, 16.0),
                        child: Container(
                          child: Align(
                            alignment: AlignmentDirectional(0.0, 0.0),
                            child: Text(
                              'Login',
                              textAlign: TextAlign.center,
                              style: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .override(
                                    font: GoogleFonts.outfit(
                                      fontWeight: FontWeight.bold,
                                      fontStyle: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .fontStyle,
                                    ),
                                    color: widget!.activeTab == 'login'
                                        ? FlutterFlowTheme.of(context).onPrimary
                                        : FlutterFlowTheme.of(context)
                                            .primaryText,
                                    letterSpacing: 0.0,
                                    fontWeight: FontWeight.bold,
                                    fontStyle: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .fontStyle,
                                    lineHeight: 1.5,
                                  ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 1,
                    child: Container(
                      decoration: BoxDecoration(
                        color: widget!.activeTab == 'signup'
                            ? Color(0x00000000)
                            : Colors.transparent,
                        borderRadius: BorderRadius.circular(16.0),
                        shape: BoxShape.rectangle,
                      ),
                      child: Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(
                            0.0, 16.0, 0.0, 16.0),
                        child: Container(
                          child: Align(
                            alignment: AlignmentDirectional(0.0, 0.0),
                            child: Text(
                              'Sign Up',
                              textAlign: TextAlign.center,
                              style: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .override(
                                    font: GoogleFonts.outfit(
                                      fontWeight: FontWeight.bold,
                                      fontStyle: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .fontStyle,
                                    ),
                                    color: widget!.activeTab == 'signup'
                                        ? FlutterFlowTheme.of(context).onPrimary
                                        : FlutterFlowTheme.of(context)
                                            .primaryText,
                                    letterSpacing: 0.0,
                                    fontWeight: FontWeight.bold,
                                    fontStyle: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .fontStyle,
                                    lineHeight: 1.5,
                                  ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ].divide(SizedBox(width: 4.0)),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
