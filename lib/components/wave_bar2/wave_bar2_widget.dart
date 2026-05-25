import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'wave_bar2_model.dart';
export 'wave_bar2_model.dart';

class WaveBar2Widget extends StatefulWidget {
  const WaveBar2Widget({
    super.key,
    double? height,
    Color? color,
  })  : this.height = height ?? 40.0,
        this.color = color ?? const Color(0x00000000);

  final double height;
  final Color color;

  @override
  State<WaveBar2Widget> createState() => _WaveBar2WidgetState();
}

class _WaveBar2WidgetState extends State<WaveBar2Widget> {
  late WaveBar2Model _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => WaveBar2Model());
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 4.0,
      height: valueOrDefault<double>(
        widget!.height,
        40.0,
      ),
      decoration: BoxDecoration(
        color: valueOrDefault<Color>(
          widget!.color,
          FlutterFlowTheme.of(context).primary40,
        ),
        borderRadius: BorderRadius.circular(2.0),
        shape: BoxShape.rectangle,
      ),
    );
  }
}
