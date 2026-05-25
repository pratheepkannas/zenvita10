import '/components/text_field/text_field_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'glass_input_model.dart';
export 'glass_input_model.dart';

class GlassInputWidget extends StatefulWidget {
  const GlassInputWidget({
    super.key,
    String? label,
    this.icon,
    String? hint,
    String? value,
    String? onChange,
  })  : this.label = label ?? 'Email Address',
        this.hint = hint ?? 'Enter your email',
        this.value = value ?? '',
        this.onChange = onChange ?? '';

  final String label;
  final Widget? icon;
  final String hint;
  final String value;
  final String onChange;

  @override
  State<GlassInputWidget> createState() => _GlassInputWidgetState();
}

class _GlassInputWidgetState extends State<GlassInputWidget> {
  late GlassInputModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => GlassInputModel());
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsetsDirectional.fromSTEB(4.0, 0.0, 0.0, 0.0),
          child: Container(
            child: Text(
              valueOrDefault<String>(
                widget!.label,
                'Email Address',
              ),
              style: FlutterFlowTheme.of(context).labelSmall.override(
                    font: GoogleFonts.spaceGrotesk(
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
                    lineHeight: 1.3,
                  ),
            ),
          ),
        ),
        Container(
          decoration: BoxDecoration(
            color: FlutterFlowTheme.of(context).surface30,
            borderRadius: BorderRadius.circular(24.0),
            shape: BoxShape.rectangle,
            border: Border.all(
              color: FlutterFlowTheme.of(context).divider10,
              width: 1.0,
            ),
          ),
          child: Padding(
            padding: EdgeInsets.all(16.0),
            child: Container(
              child: Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  widget!.icon!,
                  Expanded(
                    flex: 1,
                    child: wrapWithModel(
                      model: _model.textFieldModel,
                      updateCallback: () => safeSetState(() {}),
                      child: TextFieldWidget(
                        label: '',
                        labelPresent: false,
                        helper: '',
                        helperPresent: false,
                        hint: valueOrDefault<String>(
                          widget!.hint,
                          'Enter your email',
                        ),
                        value: widget!.value,
                        onChange: widget!.onChange,
                        onSubmit: '',
                        leadingIconPresent: false,
                        trailingIconPresent: false,
                        variant: 'ghost',
                        error: false,
                      ),
                    ),
                  ),
                ].divide(SizedBox(width: 16.0)),
              ),
            ),
          ),
        ),
      ].divide(SizedBox(height: 4.0)),
    );
  }
}
