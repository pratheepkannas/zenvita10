import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'voice_command_chip_model.dart';
export 'voice_command_chip_model.dart';

class VoiceCommandChipWidget extends StatefulWidget {
  const VoiceCommandChipWidget({
    super.key,
    this.icon,
    String? label,
  }) : this.label = label ?? 'Read my reminders';

  final Widget? icon;
  final String label;

  @override
  State<VoiceCommandChipWidget> createState() => _VoiceCommandChipWidgetState();
}

class _VoiceCommandChipWidgetState extends State<VoiceCommandChipWidget> {
  late VoiceCommandChipModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => VoiceCommandChipModel());
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 8.0, 8.0),
      child: Container(
        child: Container(
          decoration: BoxDecoration(
            color: FlutterFlowTheme.of(context).surface40,
            borderRadius: BorderRadius.circular(9999.0),
            shape: BoxShape.rectangle,
            border: Border.all(
              color: FlutterFlowTheme.of(context).primary30,
              width: 1.0,
            ),
          ),
          child: Padding(
            padding: EdgeInsetsDirectional.fromSTEB(24.0, 16.0, 24.0, 16.0),
            child: Container(
              child: Row(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  widget!.icon!,
                  Text(
                    valueOrDefault<String>(
                      widget!.label,
                      'Read my reminders',
                    ),
                    style: FlutterFlowTheme.of(context).labelLarge.override(
                          font: GoogleFonts.spaceGrotesk(
                            fontWeight: FlutterFlowTheme.of(context)
                                .labelLarge
                                .fontWeight,
                            fontStyle: FlutterFlowTheme.of(context)
                                .labelLarge
                                .fontStyle,
                          ),
                          color: FlutterFlowTheme.of(context).primaryText,
                          letterSpacing: 0.0,
                          fontWeight: FlutterFlowTheme.of(context)
                              .labelLarge
                              .fontWeight,
                          fontStyle:
                              FlutterFlowTheme.of(context).labelLarge.fontStyle,
                          lineHeight: 1.3,
                        ),
                  ),
                ].divide(SizedBox(width: 8.0)),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
