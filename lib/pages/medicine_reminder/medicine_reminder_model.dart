import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/components/button/button_widget.dart';
import '/components/medicine_card/medicine_card_widget.dart';
import '/components/text_field/text_field_widget.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:ui';
import 'medicine_reminder_widget.dart' show MedicineReminderWidget;
import 'package:cached_network_image/cached_network_image.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:material_palette/material_palette.dart';
import 'package:provider/provider.dart';

class MedicineReminderModel extends FlutterFlowModel<MedicineReminderWidget> {
  ///  Local state fields for this page.

  String? medName;

  String? dosage;

  String? time = '08:00 AM';

  ///  State fields for stateful widgets in this page.

  // Model for TextField.
  late TextFieldModel textFieldModel1;
  // Model for TextField.
  late TextFieldModel textFieldModel2;
  // Model for Button.
  late ButtonModel buttonModel;

  @override
  void initState(BuildContext context) {
    textFieldModel1 = createModel(context, () => TextFieldModel());
    textFieldModel2 = createModel(context, () => TextFieldModel());
    buttonModel = createModel(context, () => ButtonModel());
  }

  @override
  void dispose() {
    textFieldModel1.dispose();
    textFieldModel2.dispose();
    buttonModel.dispose();
  }
}
