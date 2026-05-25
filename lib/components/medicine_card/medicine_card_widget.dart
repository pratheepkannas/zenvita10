import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'medicine_card_model.dart';
export 'medicine_card_model.dart';

class MedicineCardWidget extends StatefulWidget {
  const MedicineCardWidget({
    super.key,
    this.icon,
    String? name,
    String? dosage,
    String? time,
    String? id,
  })  : this.name = name ?? '',
        this.dosage = dosage ?? '',
        this.time = time ?? '',
        this.id = id ?? '';

  final Widget? icon;
  final String name;
  final String dosage;
  final String time;
  final String id;

  @override
  State<MedicineCardWidget> createState() => _MedicineCardWidgetState();
}

class _MedicineCardWidgetState extends State<MedicineCardWidget> {
  late MedicineCardModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => MedicineCardModel());
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<MedicationsRecord>(
      stream: MedicationsRecord.getDocument('medications/${widget!.id}'.ref),
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

        final medicineCardMedicationsRecord = snapshot.data!;

        return Padding(
          padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 16.0),
          child: Container(
            child: Container(
              decoration: BoxDecoration(
                color: FlutterFlowTheme.of(context).secondaryBackground,
                borderRadius: BorderRadius.circular(24.0),
                shape: BoxShape.rectangle,
                border: Border.all(
                  color: FlutterFlowTheme.of(context).alternate,
                  width: 1.0,
                ),
              ),
              child: Padding(
                padding: EdgeInsets.all(16.0),
                child: Container(
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        width: 48.0,
                        height: 48.0,
                        decoration: BoxDecoration(
                          color: FlutterFlowTheme.of(context).primary10,
                          borderRadius: BorderRadius.circular(16.0),
                          shape: BoxShape.rectangle,
                        ),
                        alignment: AlignmentDirectional(0.0, 0.0),
                        child: widget!.icon!,
                      ),
                      Expanded(
                        flex: 1,
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              widget!.name,
                              maxLines: 1,
                              style: FlutterFlowTheme.of(context)
                                  .titleMedium
                                  .override(
                                    font: GoogleFonts.outfit(
                                      fontWeight: FontWeight.bold,
                                      fontStyle: FlutterFlowTheme.of(context)
                                          .titleMedium
                                          .fontStyle,
                                    ),
                                    color: FlutterFlowTheme.of(context)
                                        .primaryText,
                                    letterSpacing: 0.0,
                                    fontWeight: FontWeight.bold,
                                    fontStyle: FlutterFlowTheme.of(context)
                                        .titleMedium
                                        .fontStyle,
                                    lineHeight: 1.4,
                                  ),
                              overflow: TextOverflow.ellipsis,
                            ),
                            Row(
                              mainAxisSize: MainAxisSize.min,
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Text(
                                  widget!.dosage,
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
                                        color: FlutterFlowTheme.of(context)
                                            .secondaryText,
                                        letterSpacing: 0.0,
                                        fontWeight: FlutterFlowTheme.of(context)
                                            .bodySmall
                                            .fontWeight,
                                        fontStyle: FlutterFlowTheme.of(context)
                                            .bodySmall
                                            .fontStyle,
                                        lineHeight: 1.5,
                                      ),
                                ),
                                Container(
                                  width: 4.0,
                                  height: 4.0,
                                  decoration: BoxDecoration(
                                    color:
                                        FlutterFlowTheme.of(context).alternate,
                                    borderRadius: BorderRadius.circular(9999.0),
                                    shape: BoxShape.rectangle,
                                  ),
                                ),
                                Text(
                                  widget!.time,
                                  style: FlutterFlowTheme.of(context)
                                      .bodySmall
                                      .override(
                                        font: GoogleFonts.outfit(
                                          fontWeight: FontWeight.w600,
                                          fontStyle:
                                              FlutterFlowTheme.of(context)
                                                  .bodySmall
                                                  .fontStyle,
                                        ),
                                        color: FlutterFlowTheme.of(context)
                                            .primary,
                                        letterSpacing: 0.0,
                                        fontWeight: FontWeight.w600,
                                        fontStyle: FlutterFlowTheme.of(context)
                                            .bodySmall
                                            .fontStyle,
                                        lineHeight: 1.5,
                                      ),
                                ),
                              ].divide(SizedBox(width: 8.0)),
                            ),
                          ].divide(SizedBox(height: 4.0)),
                        ),
                      ),
                      Row(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          FlutterFlowIconButton(
                            borderRadius: 8.0,
                            buttonSize: 40.0,
                            fillColor: Colors.transparent,
                            icon: Icon(
                              Icons.edit_rounded,
                              color: FlutterFlowTheme.of(context).secondaryText,
                              size: 20.0,
                            ),
                            onPressed: () {
                              print('IconButton pressed ...');
                            },
                          ),
                          FlutterFlowIconButton(
                            borderRadius: 8.0,
                            buttonSize: 40.0,
                            fillColor: Colors.transparent,
                            icon: Icon(
                              Icons.delete_outline_rounded,
                              color: FlutterFlowTheme.of(context).error,
                              size: 20.0,
                            ),
                            onPressed: () async {
                              await medicineCardMedicationsRecord.reference
                                  .delete();
                            },
                          ),
                        ].divide(SizedBox(width: 4.0)),
                      ),
                    ].divide(SizedBox(width: 16.0)),
                  ),
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
