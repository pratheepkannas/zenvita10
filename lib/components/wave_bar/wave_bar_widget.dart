import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'wave_bar_model.dart';
export 'wave_bar_model.dart';

class WaveBarWidget extends StatefulWidget {
  const WaveBarWidget({
    super.key,
    double? height,
    double? opacity,
  })  : this.height = height ?? 20.0,
        this.opacity = opacity ?? 0.4;

  final double height;
  final double opacity;

  @override
  State<WaveBarWidget> createState() => _WaveBarWidgetState();
}

class _WaveBarWidgetState extends State<WaveBarWidget> {
  late WaveBarModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => WaveBarModel());
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Opacity(
      opacity: valueOrDefault<double>(
        widget!.opacity,
        0.4,
      ),
      child: Container(
        width: 4.0,
        height: valueOrDefault<double>(
          widget!.height,
          20.0,
        ),
        decoration: BoxDecoration(
          color: FlutterFlowTheme.of(context).primary,
          borderRadius: BorderRadius.circular(9999.0),
          shape: BoxShape.rectangle,
        ),
      ),
    );
  }
}
