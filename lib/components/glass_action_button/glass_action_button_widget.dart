import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'glass_action_button_model.dart';
export 'glass_action_button_model.dart';

class GlassActionButtonWidget extends StatefulWidget {
  const GlassActionButtonWidget({
    super.key,
    this.icon,
    String? title,
    String? subtitle,
  })  : this.title = title ?? 'Login',
        this.subtitle = subtitle ?? 'Access your health records';

  final Widget? icon;
  final String title;
  final String subtitle;

  @override
  State<GlassActionButtonWidget> createState() =>
      _GlassActionButtonWidgetState();
}

class _GlassActionButtonWidgetState extends State<GlassActionButtonWidget> {
  late GlassActionButtonModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => GlassActionButtonModel());
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(32.0),
      child: BackdropFilter(
        filter: ImageFilter.blur(
          sigmaX: 10.0,
          sigmaY: 10.0,
        ),
        child: Container(
          decoration: BoxDecoration(
            color: FlutterFlowTheme.of(context).surface10,
            borderRadius: BorderRadius.circular(32.0),
            shape: BoxShape.rectangle,
            border: Border.all(
              color: Colors.transparent,
              width: 1.0,
            ),
          ),
          child: Padding(
            padding: EdgeInsets.all(24.0),
            child: Container(
              child: Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    width: 48.0,
                    height: 48.0,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(24.0),
                      shape: BoxShape.rectangle,
                    ),
                    alignment: AlignmentDirectional(0.0, 0.0),
                    child: widget!.icon!,
                  ),
                  Expanded(
                    flex: 1,
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          valueOrDefault<String>(
                            widget!.title,
                            'Login',
                          ),
                          style: FlutterFlowTheme.of(context)
                              .titleMedium
                              .override(
                                font: GoogleFonts.outfit(
                                  fontWeight: FontWeight.bold,
                                  fontStyle: FlutterFlowTheme.of(context)
                                      .titleMedium
                                      .fontStyle,
                                ),
                                color: FlutterFlowTheme.of(context).onSurface,
                                letterSpacing: 0.0,
                                fontWeight: FontWeight.bold,
                                fontStyle: FlutterFlowTheme.of(context)
                                    .titleMedium
                                    .fontStyle,
                                lineHeight: 1.4,
                              ),
                        ),
                        Text(
                          valueOrDefault<String>(
                            widget!.subtitle,
                            'Access your health records',
                          ),
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
                                color:
                                    FlutterFlowTheme.of(context).secondaryText,
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
                      ].divide(SizedBox(height: 4.0)),
                    ),
                  ),
                  Icon(
                    Icons.arrow_forward_ios_rounded,
                    size: 16.0,
                  ),
                ].divide(SizedBox(width: 16.0)),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
