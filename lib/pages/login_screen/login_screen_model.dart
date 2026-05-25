import '/components/button/button_widget.dart';
import '/components/text_field/text_field_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:ui';
import '/index.dart';
import 'login_screen_widget.dart' show LoginScreenWidget;
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:material_palette/material_palette.dart';
import 'package:provider/provider.dart';

class LoginScreenModel extends FlutterFlowModel<LoginScreenWidget> {
  ///  Local state fields for this page.

  String? email;

  String? password;

  String? error;

  ///  State fields for stateful widgets in this page.

  // Model for TextField.
  late TextFieldModel textFieldModel1;
  // Model for TextField.
  late TextFieldModel textFieldModel2;
  // Model for Button.
  late ButtonModel buttonModel1;
  // Model for Button.
  late ButtonModel buttonModel2;
  // Model for Button.
  late ButtonModel buttonModel3;
  // Model for Button.
  late ButtonModel buttonModel4;

  @override
  void initState(BuildContext context) {
    textFieldModel1 = createModel(context, () => TextFieldModel());
    textFieldModel2 = createModel(context, () => TextFieldModel());
    buttonModel1 = createModel(context, () => ButtonModel());
    buttonModel2 = createModel(context, () => ButtonModel());
    buttonModel3 = createModel(context, () => ButtonModel());
    buttonModel4 = createModel(context, () => ButtonModel());
  }

  @override
  void dispose() {
    textFieldModel1.dispose();
    textFieldModel2.dispose();
    buttonModel1.dispose();
    buttonModel2.dispose();
    buttonModel3.dispose();
    buttonModel4.dispose();
  }
}
