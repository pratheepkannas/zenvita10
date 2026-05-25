import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/components/button/button_widget.dart';
import '/components/profile_info_field/profile_info_field_widget.dart';
import '/components/profile_stat/profile_stat_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:ui';
import '/index.dart';
import 'user_profile_widget.dart' show UserProfileWidget;
import 'package:cached_network_image/cached_network_image.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:material_palette/material_palette.dart';
import 'package:provider/provider.dart';

class UserProfileModel extends FlutterFlowModel<UserProfileWidget> {
  ///  Local state fields for this page.

  String? fullName;

  String? nickname;

  String? email;

  String? phone;

  String? emergencyContactName;

  String? emergencyPhone;

  ///  State fields for stateful widgets in this page.

  // Model for ProfileStat.
  late ProfileStatModel profileStatModel1;
  // Model for ProfileStat.
  late ProfileStatModel profileStatModel2;
  // Model for ProfileStat.
  late ProfileStatModel profileStatModel3;
  // Model for ProfileInfoField.
  late ProfileInfoFieldModel profileInfoFieldModel1;
  // Model for ProfileInfoField.
  late ProfileInfoFieldModel profileInfoFieldModel2;
  // Model for ProfileInfoField.
  late ProfileInfoFieldModel profileInfoFieldModel3;
  // Model for ProfileInfoField.
  late ProfileInfoFieldModel profileInfoFieldModel4;
  // Model for ProfileInfoField.
  late ProfileInfoFieldModel profileInfoFieldModel5;
  // Model for Button.
  late ButtonModel buttonModel1;
  // Stores action output result for [Firestore Query - Query a collection] action in Button widget.
  List<UsersRecord>? userI13;
  // Model for Button.
  late ButtonModel buttonModel2;

  @override
  void initState(BuildContext context) {
    profileStatModel1 = createModel(context, () => ProfileStatModel());
    profileStatModel2 = createModel(context, () => ProfileStatModel());
    profileStatModel3 = createModel(context, () => ProfileStatModel());
    profileInfoFieldModel1 =
        createModel(context, () => ProfileInfoFieldModel());
    profileInfoFieldModel2 =
        createModel(context, () => ProfileInfoFieldModel());
    profileInfoFieldModel3 =
        createModel(context, () => ProfileInfoFieldModel());
    profileInfoFieldModel4 =
        createModel(context, () => ProfileInfoFieldModel());
    profileInfoFieldModel5 =
        createModel(context, () => ProfileInfoFieldModel());
    buttonModel1 = createModel(context, () => ButtonModel());
    buttonModel2 = createModel(context, () => ButtonModel());
  }

  @override
  void dispose() {
    profileStatModel1.dispose();
    profileStatModel2.dispose();
    profileStatModel3.dispose();
    profileInfoFieldModel1.dispose();
    profileInfoFieldModel2.dispose();
    profileInfoFieldModel3.dispose();
    profileInfoFieldModel4.dispose();
    profileInfoFieldModel5.dispose();
    buttonModel1.dispose();
    buttonModel2.dispose();
  }
}
