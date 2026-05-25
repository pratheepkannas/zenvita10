import '/components/command_chip/command_chip_widget.dart';
import '/components/wave_bar2/wave_bar2_widget.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:ui';
import 'voice_assistant_widget.dart' show VoiceAssistantWidget;
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class VoiceAssistantModel extends FlutterFlowModel<VoiceAssistantWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for WaveBar2.
  late WaveBar2Model waveBar2Model1;
  // Model for WaveBar2.
  late WaveBar2Model waveBar2Model2;
  // Model for WaveBar2.
  late WaveBar2Model waveBar2Model3;
  // Model for WaveBar2.
  late WaveBar2Model waveBar2Model4;
  // Model for WaveBar2.
  late WaveBar2Model waveBar2Model5;
  // Model for WaveBar2.
  late WaveBar2Model waveBar2Model6;
  // Model for WaveBar2.
  late WaveBar2Model waveBar2Model7;
  // Model for CommandChip.
  late CommandChipModel commandChipModel1;
  // Model for CommandChip.
  late CommandChipModel commandChipModel2;
  // Model for CommandChip.
  late CommandChipModel commandChipModel3;
  // Model for CommandChip.
  late CommandChipModel commandChipModel4;

  @override
  void initState(BuildContext context) {
    waveBar2Model1 = createModel(context, () => WaveBar2Model());
    waveBar2Model2 = createModel(context, () => WaveBar2Model());
    waveBar2Model3 = createModel(context, () => WaveBar2Model());
    waveBar2Model4 = createModel(context, () => WaveBar2Model());
    waveBar2Model5 = createModel(context, () => WaveBar2Model());
    waveBar2Model6 = createModel(context, () => WaveBar2Model());
    waveBar2Model7 = createModel(context, () => WaveBar2Model());
    commandChipModel1 = createModel(context, () => CommandChipModel());
    commandChipModel2 = createModel(context, () => CommandChipModel());
    commandChipModel3 = createModel(context, () => CommandChipModel());
    commandChipModel4 = createModel(context, () => CommandChipModel());
  }

  @override
  void dispose() {
    waveBar2Model1.dispose();
    waveBar2Model2.dispose();
    waveBar2Model3.dispose();
    waveBar2Model4.dispose();
    waveBar2Model5.dispose();
    waveBar2Model6.dispose();
    waveBar2Model7.dispose();
    commandChipModel1.dispose();
    commandChipModel2.dispose();
    commandChipModel3.dispose();
    commandChipModel4.dispose();
  }
}
