import '/components/glass_action_button/glass_action_button_widget.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:ui';
import '/index.dart';
import 'authentication_selection_widget.dart'
    show AuthenticationSelectionWidget;
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lottie/lottie.dart';
import 'package:material_palette/material_palette.dart';
import 'package:provider/provider.dart';

class AuthenticationSelectionModel
    extends FlutterFlowModel<AuthenticationSelectionWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for GlassActionButton.
  late GlassActionButtonModel glassActionButtonModel1;
  // Model for GlassActionButton.
  late GlassActionButtonModel glassActionButtonModel2;

  @override
  void initState(BuildContext context) {
    glassActionButtonModel1 =
        createModel(context, () => GlassActionButtonModel());
    glassActionButtonModel2 =
        createModel(context, () => GlassActionButtonModel());
  }

  @override
  void dispose() {
    glassActionButtonModel1.dispose();
    glassActionButtonModel2.dispose();
  }
}
