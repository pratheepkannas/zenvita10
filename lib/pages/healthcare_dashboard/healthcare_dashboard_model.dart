import '/components/feature_card/feature_card_widget.dart';
import '/components/stat_chip/stat_chip_widget.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import 'dart:ui';
import '/index.dart';
import 'healthcare_dashboard_widget.dart' show HealthcareDashboardWidget;
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:material_palette/material_palette.dart';
import 'package:provider/provider.dart';

class HealthcareDashboardModel
    extends FlutterFlowModel<HealthcareDashboardWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for Dropdown widget.
  String? dropdownValue;
  FormFieldController<String>? dropdownValueController;
  // Model for StatChip.
  late StatChipModel statChipModel1;
  // Model for StatChip.
  late StatChipModel statChipModel2;
  // Model for StatChip.
  late StatChipModel statChipModel3;
  // Model for FeatureCard.
  late FeatureCardModel featureCardModel1;
  // Model for FeatureCard.
  late FeatureCardModel featureCardModel2;
  // Model for FeatureCard.
  late FeatureCardModel featureCardModel3;

  @override
  void initState(BuildContext context) {
    statChipModel1 = createModel(context, () => StatChipModel());
    statChipModel2 = createModel(context, () => StatChipModel());
    statChipModel3 = createModel(context, () => StatChipModel());
    featureCardModel1 = createModel(context, () => FeatureCardModel());
    featureCardModel2 = createModel(context, () => FeatureCardModel());
    featureCardModel3 = createModel(context, () => FeatureCardModel());
  }

  @override
  void dispose() {
    statChipModel1.dispose();
    statChipModel2.dispose();
    statChipModel3.dispose();
    featureCardModel1.dispose();
    featureCardModel2.dispose();
    featureCardModel3.dispose();
  }
}
