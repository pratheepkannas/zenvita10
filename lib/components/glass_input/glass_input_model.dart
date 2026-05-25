import '/components/text_field/text_field_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:ui';
import 'glass_input_widget.dart' show GlassInputWidget;
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class GlassInputModel extends FlutterFlowModel<GlassInputWidget> {
  ///  State fields for stateful widgets in this component.

  // Model for TextField.
  late TextFieldModel textFieldModel;

  @override
  void initState(BuildContext context) {
    textFieldModel = createModel(context, () => TextFieldModel());
  }

  @override
  void dispose() {
    textFieldModel.dispose();
  }
}
