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
import 'package:cached_network_image/cached_network_image.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:material_palette/material_palette.dart';
import 'package:provider/provider.dart';
import 'medicine_reminder_model.dart';
export 'medicine_reminder_model.dart';

class MedicineReminderWidget extends StatefulWidget {
  const MedicineReminderWidget({super.key});

  static String routeName = 'MedicineReminder';
  static String routePath = '/medicineReminder';

  @override
  State<MedicineReminderWidget> createState() => _MedicineReminderWidgetState();
}

class _MedicineReminderWidgetState extends State<MedicineReminderWidget> {
  late MedicineReminderModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => MedicineReminderModel());
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
        FocusManager.instance.primaryFocus?.unfocus();
      },
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
        body: Stack(
          alignment: AlignmentDirectional(-1.0, -1.0),
          children: [
            LayoutBuilder(
              builder: (context, constraints) {
                return RadialGrittyGradientShaderFill(
                  width: constraints.maxWidth.isFinite
                      ? constraints.maxWidth
                      : 200.0,
                  height: constraints.maxHeight.isFinite
                      ? constraints.maxHeight
                      : 200.0,
                  params: ShaderParams(values: {
                    'gradientCenterX': 0.17,
                    'gradientCenterY': 0.03,
                    'gradientScale': 1.29,
                    'gradientOffset': -0.32,
                    'stippleStrength': 0.56,
                    'ditherStrength': 0.0,
                    'ditherScale': 0.95,
                    'animSpeed': 0.0,
                    'colorCount': 3.0,
                    'softness': 1.0,
                    'exposure': 1.0,
                    'contrast': 1.0,
                    'noiseDensity': 100.0,
                    'noiseIntensity': 0.0
                  }, colors: {
                    'color0': Color(0xFFFFE6B4),
                    'color1': Color(0xFFE68C78),
                    'color2': Color(0xFF64508C),
                    'color3': Color(0x00808080),
                    'color4': Color(0x00808080),
                    'color5': Color(0x00808080),
                    'color6': Color(0x00808080),
                    'color7': Color(0x00808080),
                    'color8': Color(0x00808080),
                    'color9': Color(0x00808080)
                  }),
                  animationMode: ShaderAnimationMode.continuous,
                  cache: false,
                );
              },
            ),
            SingleChildScrollView(
              primary: false,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Padding(
                    padding: EdgeInsets.all(24.0),
                    child: Container(
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: [
                          Row(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              FlutterFlowIconButton(
                                borderRadius: 8.0,
                                buttonSize: 40.0,
                                fillColor: Colors.transparent,
                                icon: Icon(
                                  Icons.arrow_back_ios_new_rounded,
                                  color:
                                      FlutterFlowTheme.of(context).primaryText,
                                  size: 20.0,
                                ),
                                onPressed: () async {
                                  context.pop();
                                },
                              ),
                              Text(
                                'Reminders',
                                style: FlutterFlowTheme.of(context)
                                    .titleLarge
                                    .override(
                                      font: GoogleFonts.plusJakartaSans(
                                        fontWeight: FontWeight.bold,
                                        fontStyle: FlutterFlowTheme.of(context)
                                            .titleLarge
                                            .fontStyle,
                                      ),
                                      color: FlutterFlowTheme.of(context)
                                          .primaryText,
                                      letterSpacing: 0.0,
                                      fontWeight: FontWeight.bold,
                                      fontStyle: FlutterFlowTheme.of(context)
                                          .titleLarge
                                          .fontStyle,
                                      lineHeight: 1.4,
                                    ),
                              ),
                              ClipRRect(
                                borderRadius: BorderRadius.circular(9999.0),
                                child: Container(
                                  width: 40.0,
                                  height: 40.0,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(9999.0),
                                    shape: BoxShape.rectangle,
                                    border: Border.all(
                                      color:
                                          FlutterFlowTheme.of(context).primary,
                                      width: 2.0,
                                    ),
                                  ),
                                  child: CachedNetworkImage(
                                    fadeInDuration: Duration(milliseconds: 0),
                                    fadeOutDuration: Duration(milliseconds: 0),
                                    imageUrl:
                                        'https://dimg.dreamflow.cloud/v1/image/elderly%20person%20profile',
                                    fit: BoxFit.cover,
                                    alignment: Alignment(0.0, 0.0),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          ClipRRect(
                            borderRadius: BorderRadius.circular(32.0),
                            child: BackdropFilter(
                              filter: ImageFilter.blur(
                                sigmaX: 10.0,
                                sigmaY: 10.0,
                              ),
                              child: Container(
                                decoration: BoxDecoration(
                                  color: FlutterFlowTheme.of(context).surface80,
                                  borderRadius: BorderRadius.circular(32.0),
                                  shape: BoxShape.rectangle,
                                  border: Border.all(
                                    color:
                                        FlutterFlowTheme.of(context).primary30,
                                    width: 1.0,
                                  ),
                                ),
                                child: Padding(
                                  padding: EdgeInsets.all(24.0),
                                  child: Container(
                                    child: Column(
                                      mainAxisSize: MainAxisSize.min,
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.stretch,
                                      children: [
                                        Row(
                                          mainAxisSize: MainAxisSize.max,
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.center,
                                          children: [
                                            Icon(
                                              Icons.add_circle_outline_rounded,
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .primary,
                                              size: 22.0,
                                            ),
                                            Text(
                                              'Add New Medicine',
                                              style: FlutterFlowTheme.of(
                                                      context)
                                                  .titleMedium
                                                  .override(
                                                    font: GoogleFonts.outfit(
                                                      fontWeight:
                                                          FontWeight.w600,
                                                      fontStyle:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .titleMedium
                                                              .fontStyle,
                                                    ),
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .primaryText,
                                                    letterSpacing: 0.0,
                                                    fontWeight: FontWeight.w600,
                                                    fontStyle:
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .titleMedium
                                                            .fontStyle,
                                                    lineHeight: 1.4,
                                                  ),
                                            ),
                                          ].divide(SizedBox(width: 8.0)),
                                        ),
                                        wrapWithModel(
                                          model: _model.textFieldModel1,
                                          updateCallback: () =>
                                              safeSetState(() {}),
                                          child: TextFieldWidget(
                                            label: 'Medicine Name',
                                            labelPresent: true,
                                            helper: '',
                                            helperPresent: false,
                                            hint: 'e.g., Atorvastatin',
                                            value: _model.medName,
                                            onChange: '',
                                            onSubmit: '',
                                            leadingIcon: Icon(
                                              Icons.medical_services_rounded,
                                            ),
                                            leadingIconPresent: true,
                                            trailingIconPresent: false,
                                            variant: 'outlined',
                                            error: false,
                                          ),
                                        ),
                                        Row(
                                          mainAxisSize: MainAxisSize.max,
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.center,
                                          children: [
                                            Expanded(
                                              flex: 1,
                                              child: wrapWithModel(
                                                model: _model.textFieldModel2,
                                                updateCallback: () =>
                                                    safeSetState(() {}),
                                                child: TextFieldWidget(
                                                  label: 'Dosage',
                                                  labelPresent: true,
                                                  helper: '',
                                                  helperPresent: false,
                                                  hint: 'e.g., 20mg',
                                                  value: _model.dosage,
                                                  onChange: '',
                                                  onSubmit: '',
                                                  leadingIcon: Icon(
                                                    Icons.medication_rounded,
                                                  ),
                                                  leadingIconPresent: true,
                                                  trailingIconPresent: false,
                                                  variant: 'outlined',
                                                  error: false,
                                                ),
                                              ),
                                            ),
                                            Expanded(
                                              flex: 1,
                                              child: Container(
                                                height: 56.0,
                                                decoration: BoxDecoration(
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .primaryBackground,
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          16.0),
                                                  shape: BoxShape.rectangle,
                                                  border: Border.all(
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .alternate,
                                                    width: 1.0,
                                                  ),
                                                ),
                                                child: Padding(
                                                  padding: EdgeInsets.all(16.0),
                                                  child: Container(
                                                    child: Container(
                                                      height: 24.0,
                                                      alignment:
                                                          AlignmentDirectional(
                                                              0.0, 0.0),
                                                      child: Row(
                                                        mainAxisSize:
                                                            MainAxisSize.max,
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .spaceBetween,
                                                        crossAxisAlignment:
                                                            CrossAxisAlignment
                                                                .center,
                                                        children: [
                                                          Text(
                                                            _model.time!,
                                                            style: FlutterFlowTheme
                                                                    .of(context)
                                                                .bodyMedium
                                                                .override(
                                                                  font: GoogleFonts
                                                                      .outfit(
                                                                    fontWeight: FlutterFlowTheme.of(
                                                                            context)
                                                                        .bodyMedium
                                                                        .fontWeight,
                                                                    fontStyle: FlutterFlowTheme.of(
                                                                            context)
                                                                        .bodyMedium
                                                                        .fontStyle,
                                                                  ),
                                                                  color: FlutterFlowTheme.of(
                                                                          context)
                                                                      .primaryText,
                                                                  letterSpacing:
                                                                      0.0,
                                                                  fontWeight: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyMedium
                                                                      .fontWeight,
                                                                  fontStyle: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyMedium
                                                                      .fontStyle,
                                                                  lineHeight:
                                                                      1.5,
                                                                ),
                                                          ),
                                                          Icon(
                                                            Icons
                                                                .schedule_rounded,
                                                            color: FlutterFlowTheme
                                                                    .of(context)
                                                                .primary,
                                                            size: 20.0,
                                                          ),
                                                        ],
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ].divide(SizedBox(width: 16.0)),
                                        ),
                                        InkWell(
                                          splashColor: Colors.transparent,
                                          focusColor: Colors.transparent,
                                          hoverColor: Colors.transparent,
                                          highlightColor: Colors.transparent,
                                          onTap: () async {
                                            if (_model.medName == null ||
                                                _model.medName == '') {
                                              return;
                                            }

                                            await MedicationsRecord.collection
                                                .doc()
                                                .set(
                                                    createMedicationsRecordData(
                                                  name: _model.medName,
                                                  dosage: _model.dosage,
                                                  reminderTime: _model.time,
                                                  iconName: 'pill_rounded',
                                                ));
                                            _model.medName = '\"\"';
                                            safeSetState(() {});
                                            _model.dosage = '\"\"';
                                            safeSetState(() {});
                                            _model.time = '\"08:00 AM\"';
                                            safeSetState(() {});
                                          },
                                          child: wrapWithModel(
                                            model: _model.buttonModel,
                                            updateCallback: () =>
                                                safeSetState(() {}),
                                            child: ButtonWidget(
                                              content: 'Save Reminder',
                                              icon: Icon(
                                                Icons.alarm_add_rounded,
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .onPrimary,
                                                size: 16.0,
                                              ),
                                              iconPresent: true,
                                              iconEndPresent: false,
                                              variant: 'primary',
                                              size: 'large',
                                              fullWidth: true,
                                              loading: false,
                                              disabled: false,
                                            ),
                                          ),
                                        ),
                                      ].divide(SizedBox(height: 16.0)),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Column(
                            mainAxisSize: MainAxisSize.min,
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.stretch,
                            children: [
                              Row(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Text(
                                    'Active Schedule',
                                    style: FlutterFlowTheme.of(context)
                                        .titleMedium
                                        .override(
                                          font: GoogleFonts.outfit(
                                            fontWeight: FontWeight.w600,
                                            fontStyle:
                                                FlutterFlowTheme.of(context)
                                                    .titleMedium
                                                    .fontStyle,
                                          ),
                                          color: FlutterFlowTheme.of(context)
                                              .primaryText,
                                          letterSpacing: 0.0,
                                          fontWeight: FontWeight.w600,
                                          fontStyle:
                                              FlutterFlowTheme.of(context)
                                                  .titleMedium
                                                  .fontStyle,
                                          lineHeight: 1.4,
                                        ),
                                  ),
                                  Container(
                                    height: 34.0,
                                    decoration: BoxDecoration(
                                      color: FlutterFlowTheme.of(context)
                                          .primaryContainer,
                                      borderRadius:
                                          BorderRadius.circular(9999.0),
                                      border: Border.all(
                                        color: FlutterFlowTheme.of(context)
                                            .alternate,
                                        width: 1.0,
                                      ),
                                    ),
                                    alignment: AlignmentDirectional(0.0, 0.0),
                                    child: Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          12.0, 0.0, 12.0, 0.0),
                                      child: Row(
                                        mainAxisSize: MainAxisSize.min,
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        children: [
                                          Text(
                                            '3 Today',
                                            style: FlutterFlowTheme.of(context)
                                                .labelMedium
                                                .override(
                                                  font:
                                                      GoogleFonts.spaceGrotesk(
                                                    fontWeight:
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .labelMedium
                                                            .fontWeight,
                                                    fontStyle:
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .labelMedium
                                                            .fontStyle,
                                                  ),
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .onPrimaryContainer,
                                                  fontSize: 14.0,
                                                  letterSpacing: 0.0,
                                                  fontWeight:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .labelMedium
                                                          .fontWeight,
                                                  fontStyle:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .labelMedium
                                                          .fontStyle,
                                                  lineHeight: 1.3,
                                                ),
                                          ),
                                        ].divide(SizedBox(width: 6.0)),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              Column(
                                mainAxisSize: MainAxisSize.min,
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  // ff_lite_listview_data:${filtered_medications}
                                  StreamBuilder<List<MedicationsRecord>>(
                                    stream: queryMedicationsRecord(),
                                    builder: (context, snapshot) {
                                      // Customize what your widget looks like when it's loading.
                                      if (!snapshot.hasData) {
                                        return Center(
                                          child: SizedBox(
                                            width: 50,
                                            height: 50,
                                            child: CircularProgressIndicator(),
                                          ),
                                        );
                                      }
                                      List<MedicationsRecord>
                                          listViewMedicationsRecordList =
                                          snapshot.data!;

                                      return Builder(
                                        builder: (context) {
                                          final item =
                                              listViewMedicationsRecordList
                                                  .toList();

                                          return ListView.builder(
                                            padding: EdgeInsets.zero,
                                            primary: false,
                                            shrinkWrap: true,
                                            scrollDirection: Axis.vertical,
                                            itemCount: item.length,
                                            itemBuilder: (context, itemIndex) {
                                              final itemItem = item[itemIndex];
                                              return MedicineCardWidget(
                                                key: Key(
                                                    'Key578_${itemIndex}_of_${item.length}'),
                                                icon: Icon(
                                                  Icons.help,
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .primary,
                                                  size: 24.0,
                                                ),
                                                name: itemItem.name,
                                                dosage: itemItem.dosage,
                                                time: itemItem.reminderTime,
                                                id: '',
                                              );
                                            },
                                          );
                                        },
                                      );
                                    },
                                  ),
                                ].divide(SizedBox(height: 0.0)),
                              ),
                            ].divide(SizedBox(height: 16.0)),
                          ),
                          Container(
                            decoration: BoxDecoration(
                              color: FlutterFlowTheme.of(context).info10,
                              borderRadius: BorderRadius.circular(24.0),
                              shape: BoxShape.rectangle,
                              border: Border.all(
                                color: FlutterFlowTheme.of(context).info30,
                                width: 1.0,
                              ),
                            ),
                            child: Padding(
                              padding: EdgeInsets.all(16.0),
                              child: Container(
                                child: Row(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Icon(
                                      Icons.info_rounded,
                                      color: FlutterFlowTheme.of(context).info,
                                      size: 20.0,
                                    ),
                                    Expanded(
                                      flex: 1,
                                      child: Text(
                                        'Please consult your doctor before changing dosages or skipping scheduled medications.',
                                        maxLines: 2,
                                        style: FlutterFlowTheme.of(context)
                                            .bodySmall
                                            .override(
                                              font: GoogleFonts.outfit(
                                                fontWeight:
                                                    FlutterFlowTheme.of(context)
                                                        .bodySmall
                                                        .fontWeight,
                                                fontStyle:
                                                    FlutterFlowTheme.of(context)
                                                        .bodySmall
                                                        .fontStyle,
                                              ),
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .info,
                                              letterSpacing: 0.0,
                                              fontWeight:
                                                  FlutterFlowTheme.of(context)
                                                      .bodySmall
                                                      .fontWeight,
                                              fontStyle:
                                                  FlutterFlowTheme.of(context)
                                                      .bodySmall
                                                      .fontStyle,
                                              lineHeight: 1.5,
                                            ),
                                      ),
                                    ),
                                  ].divide(SizedBox(width: 16.0)),
                                ),
                              ),
                            ),
                          ),
                          Container(
                            height: 80.0,
                          ),
                        ].divide(SizedBox(height: 24.0)),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Align(
              alignment: AlignmentDirectional(0.0, 1.0),
              child: Container(
                height: 90.0,
                child: Padding(
                  padding:
                      EdgeInsetsDirectional.fromSTEB(24.0, 0.0, 24.0, 20.0),
                  child: Container(
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(9999.0),
                      child: BackdropFilter(
                        filter: ImageFilter.blur(
                          sigmaX: 15.0,
                          sigmaY: 15.0,
                        ),
                        child: Container(
                          decoration: BoxDecoration(
                            color: FlutterFlowTheme.of(context).surface90,
                            borderRadius: BorderRadius.circular(9999.0),
                            shape: BoxShape.rectangle,
                            border: Border.all(
                              color: FlutterFlowTheme.of(context).alternate,
                              width: 1.0,
                            ),
                          ),
                          child: Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                24.0, 8.0, 24.0, 8.0),
                            child: Container(
                              child: Row(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Column(
                                    mainAxisSize: MainAxisSize.min,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      Icon(
                                        Icons.home_rounded,
                                        color: FlutterFlowTheme.of(context)
                                            .secondaryText,
                                        size: 24.0,
                                      ),
                                      Text(
                                        'Home',
                                        style: FlutterFlowTheme.of(context)
                                            .labelSmall
                                            .override(
                                              font: GoogleFonts.spaceGrotesk(
                                                fontWeight:
                                                    FlutterFlowTheme.of(context)
                                                        .labelSmall
                                                        .fontWeight,
                                                fontStyle:
                                                    FlutterFlowTheme.of(context)
                                                        .labelSmall
                                                        .fontStyle,
                                              ),
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .secondaryText,
                                              letterSpacing: 0.0,
                                              fontWeight:
                                                  FlutterFlowTheme.of(context)
                                                      .labelSmall
                                                      .fontWeight,
                                              fontStyle:
                                                  FlutterFlowTheme.of(context)
                                                      .labelSmall
                                                      .fontStyle,
                                              lineHeight: 1.3,
                                            ),
                                      ),
                                    ].divide(SizedBox(height: 4.0)),
                                  ),
                                  Column(
                                    mainAxisSize: MainAxisSize.min,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      Icon(
                                        Icons.alarm_rounded,
                                        color: FlutterFlowTheme.of(context)
                                            .primary,
                                        size: 24.0,
                                      ),
                                      Text(
                                        'Reminders',
                                        style: FlutterFlowTheme.of(context)
                                            .labelSmall
                                            .override(
                                              font: GoogleFonts.spaceGrotesk(
                                                fontWeight: FontWeight.bold,
                                                fontStyle:
                                                    FlutterFlowTheme.of(context)
                                                        .labelSmall
                                                        .fontStyle,
                                              ),
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .primary,
                                              letterSpacing: 0.0,
                                              fontWeight: FontWeight.bold,
                                              fontStyle:
                                                  FlutterFlowTheme.of(context)
                                                      .labelSmall
                                                      .fontStyle,
                                              lineHeight: 1.3,
                                            ),
                                      ),
                                    ].divide(SizedBox(height: 4.0)),
                                  ),
                                  Column(
                                    mainAxisSize: MainAxisSize.min,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      Icon(
                                        Icons.person_rounded,
                                        color: FlutterFlowTheme.of(context)
                                            .secondaryText,
                                        size: 24.0,
                                      ),
                                      Text(
                                        'Profile',
                                        style: FlutterFlowTheme.of(context)
                                            .labelSmall
                                            .override(
                                              font: GoogleFonts.spaceGrotesk(
                                                fontWeight:
                                                    FlutterFlowTheme.of(context)
                                                        .labelSmall
                                                        .fontWeight,
                                                fontStyle:
                                                    FlutterFlowTheme.of(context)
                                                        .labelSmall
                                                        .fontStyle,
                                              ),
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .secondaryText,
                                              letterSpacing: 0.0,
                                              fontWeight:
                                                  FlutterFlowTheme.of(context)
                                                      .labelSmall
                                                      .fontWeight,
                                              fontStyle:
                                                  FlutterFlowTheme.of(context)
                                                      .labelSmall
                                                      .fontStyle,
                                              lineHeight: 1.3,
                                            ),
                                      ),
                                    ].divide(SizedBox(height: 4.0)),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
