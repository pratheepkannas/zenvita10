import '/components/command_chip/command_chip_widget.dart';
import '/components/wave_bar2/wave_bar2_widget.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'voice_assistant_model.dart';
export 'voice_assistant_model.dart';

class VoiceAssistantWidget extends StatefulWidget {
  const VoiceAssistantWidget({super.key});

  static String routeName = 'VoiceAssistant';
  static String routePath = '/voiceAssistant';

  @override
  State<VoiceAssistantWidget> createState() => _VoiceAssistantWidgetState();
}

class _VoiceAssistantWidgetState extends State<VoiceAssistantWidget> {
  late VoiceAssistantModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => VoiceAssistantModel());
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
        FocusManager.instance.primaryFocus?.unfocus();
      },
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
        body: SingleChildScrollView(
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
                              color: FlutterFlowTheme.of(context).primaryText,
                              size: 24.0,
                            ),
                            onPressed: () async {
                              context.pop();
                            },
                          ),
                          Text(
                            'Voice Assistant',
                            style: FlutterFlowTheme.of(context)
                                .titleLarge
                                .override(
                                  font: GoogleFonts.plusJakartaSans(
                                    fontWeight: FontWeight.bold,
                                    fontStyle: FlutterFlowTheme.of(context)
                                        .titleLarge
                                        .fontStyle,
                                  ),
                                  color:
                                      FlutterFlowTheme.of(context).primaryText,
                                  letterSpacing: 0.0,
                                  fontWeight: FontWeight.bold,
                                  fontStyle: FlutterFlowTheme.of(context)
                                      .titleLarge
                                      .fontStyle,
                                  lineHeight: 1.4,
                                ),
                          ),
                          FlutterFlowIconButton(
                            borderRadius: 8.0,
                            buttonSize: 40.0,
                            fillColor: Colors.transparent,
                            icon: Icon(
                              Icons.settings_rounded,
                              color: FlutterFlowTheme.of(context).primaryText,
                              size: 24.0,
                            ),
                            onPressed: () {
                              print('IconButton pressed ...');
                            },
                          ),
                        ],
                      ),
                      Container(
                        constraints: BoxConstraints(
                          minHeight: 180.0,
                        ),
                        decoration: BoxDecoration(
                          color:
                              FlutterFlowTheme.of(context).secondaryBackground,
                          borderRadius: BorderRadius.circular(32.0),
                          shape: BoxShape.rectangle,
                          border: Border.all(
                            color: FlutterFlowTheme.of(context).primary20,
                            width: 1.0,
                          ),
                        ),
                        child: Padding(
                          padding: EdgeInsets.all(32.0),
                          child: Container(
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Container(
                                      width: 8.0,
                                      height: 8.0,
                                      decoration: BoxDecoration(
                                        color: FlutterFlowTheme.of(context)
                                            .success,
                                        borderRadius:
                                            BorderRadius.circular(9999.0),
                                        shape: BoxShape.rectangle,
                                      ),
                                    ),
                                    Text(
                                      'ZEN AI ACTIVE',
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
                                            color: FlutterFlowTheme.of(context)
                                                .success,
                                            letterSpacing: 0.0,
                                            fontWeight: FontWeight.bold,
                                            fontStyle:
                                                FlutterFlowTheme.of(context)
                                                    .labelSmall
                                                    .fontStyle,
                                            lineHeight: 1.3,
                                          ),
                                    ),
                                  ].divide(SizedBox(width: 8.0)),
                                ),
                                Text(
                                  'Hello! I\'m ZenVita. How can I help you with your health today?',
                                  style: FlutterFlowTheme.of(context)
                                      .headlineSmall
                                      .override(
                                        font: GoogleFonts.plusJakartaSans(
                                          fontWeight:
                                              FlutterFlowTheme.of(context)
                                                  .headlineSmall
                                                  .fontWeight,
                                          fontStyle:
                                              FlutterFlowTheme.of(context)
                                                  .headlineSmall
                                                  .fontStyle,
                                        ),
                                        color: FlutterFlowTheme.of(context)
                                            .primaryText,
                                        letterSpacing: 0.0,
                                        fontWeight: FlutterFlowTheme.of(context)
                                            .headlineSmall
                                            .fontWeight,
                                        fontStyle: FlutterFlowTheme.of(context)
                                            .headlineSmall
                                            .fontStyle,
                                        lineHeight: 1.4,
                                      ),
                                ),
                              ].divide(SizedBox(height: 16.0)),
                            ),
                          ),
                        ),
                      ),
                      Container(
                        height: 120.0,
                        alignment: AlignmentDirectional(0.0, 0.0),
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                              height: 40.0,
                              child: wrapWithModel(
                                model: _model.waveBar2Model1,
                                updateCallback: () => safeSetState(() {}),
                                child: WaveBar2Widget(
                                  height: 40.0,
                                  color: FlutterFlowTheme.of(context).primary40,
                                ),
                              ),
                            ),
                            Container(
                              height: 60.0,
                              child: wrapWithModel(
                                model: _model.waveBar2Model2,
                                updateCallback: () => safeSetState(() {}),
                                child: WaveBar2Widget(
                                  height: 60.0,
                                  color: FlutterFlowTheme.of(context).primary60,
                                ),
                              ),
                            ),
                            Container(
                              height: 90.0,
                              child: wrapWithModel(
                                model: _model.waveBar2Model3,
                                updateCallback: () => safeSetState(() {}),
                                child: WaveBar2Widget(
                                  height: 90.0,
                                  color: FlutterFlowTheme.of(context).tertiary,
                                ),
                              ),
                            ),
                            Container(
                              height: 50.0,
                              child: wrapWithModel(
                                model: _model.waveBar2Model4,
                                updateCallback: () => safeSetState(() {}),
                                child: WaveBar2Widget(
                                  height: 50.0,
                                  color: FlutterFlowTheme.of(context).primary80,
                                ),
                              ),
                            ),
                            Container(
                              height: 100.0,
                              child: wrapWithModel(
                                model: _model.waveBar2Model5,
                                updateCallback: () => safeSetState(() {}),
                                child: WaveBar2Widget(
                                  height: 100.0,
                                  color: FlutterFlowTheme.of(context).tertiary,
                                ),
                              ),
                            ),
                            Container(
                              height: 70.0,
                              child: wrapWithModel(
                                model: _model.waveBar2Model6,
                                updateCallback: () => safeSetState(() {}),
                                child: WaveBar2Widget(
                                  height: 70.0,
                                  color: FlutterFlowTheme.of(context).primary60,
                                ),
                              ),
                            ),
                            Container(
                              height: 30.0,
                              child: wrapWithModel(
                                model: _model.waveBar2Model7,
                                updateCallback: () => safeSetState(() {}),
                                child: WaveBar2Widget(
                                  height: 30.0,
                                  color: FlutterFlowTheme.of(context).primary40,
                                ),
                              ),
                            ),
                          ].divide(SizedBox(width: 4.0)),
                        ),
                      ),
                      InkWell(
                        splashColor: Colors.transparent,
                        focusColor: Colors.transparent,
                        hoverColor: Colors.transparent,
                        highlightColor: Colors.transparent,
                        onTap: () async {
                          FFAppState().isListening =
                              !(FFAppState().isListening ?? true);
                          FFAppState().update(() {});
                        },
                        child: Container(
                          alignment: AlignmentDirectional(0.0, 0.0),
                          child: Container(
                            width: 180.0,
                            height: 180.0,
                            child: Stack(
                              alignment: AlignmentDirectional(0.0, 0.0),
                              children: [
                                if (FFAppState().isListening)
                                  Container(
                                    width: 180.0,
                                    height: 180.0,
                                    decoration: BoxDecoration(
                                      color: FlutterFlowTheme.of(context)
                                          .primary10,
                                      borderRadius:
                                          BorderRadius.circular(9999.0),
                                      shape: BoxShape.rectangle,
                                      border: Border.all(
                                        color: FlutterFlowTheme.of(context)
                                            .primary20,
                                        width: 2.0,
                                      ),
                                    ),
                                  ),
                                if (FFAppState().isListening)
                                  Container(
                                    width: 140.0,
                                    height: 140.0,
                                    decoration: BoxDecoration(
                                      color: FlutterFlowTheme.of(context)
                                          .primary20,
                                      boxShadow: [
                                        BoxShadow(
                                          blurRadius: 30.0,
                                          color: FlutterFlowTheme.of(context)
                                              .primary,
                                          offset: Offset(
                                            0.0,
                                            0.0,
                                          ),
                                          spreadRadius: 5.0,
                                        )
                                      ],
                                      borderRadius:
                                          BorderRadius.circular(9999.0),
                                      shape: BoxShape.rectangle,
                                    ),
                                  ),
                                Container(
                                  width: 100.0,
                                  height: 100.0,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(9999.0),
                                    shape: BoxShape.rectangle,
                                  ),
                                  child: Icon(
                                    Icons.help,
                                    color:
                                        FlutterFlowTheme.of(context).onPrimary,
                                    size: 48.0,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      if (FFAppState().isListening)
                        Column(
                          mainAxisSize: MainAxisSize.min,
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text(
                              'Listening...',
                              style: FlutterFlowTheme.of(context)
                                  .titleMedium
                                  .override(
                                    font: GoogleFonts.outfit(
                                      fontWeight: FontWeight.bold,
                                      fontStyle: FlutterFlowTheme.of(context)
                                          .titleMedium
                                          .fontStyle,
                                    ),
                                    color:
                                        FlutterFlowTheme.of(context).tertiary,
                                    letterSpacing: 0.0,
                                    fontWeight: FontWeight.bold,
                                    fontStyle: FlutterFlowTheme.of(context)
                                        .titleMedium
                                        .fontStyle,
                                    lineHeight: 1.4,
                                  ),
                            ),
                            Text(
                              'Tap to pause',
                              style: FlutterFlowTheme.of(context)
                                  .bodySmall
                                  .override(
                                    font: GoogleFonts.outfit(
                                      fontWeight: FlutterFlowTheme.of(context)
                                          .bodySmall
                                          .fontWeight,
                                      fontStyle: FlutterFlowTheme.of(context)
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
                          ].divide(SizedBox(height: 4.0)),
                        ),
                      Column(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Try saying',
                            style: FlutterFlowTheme.of(context)
                                .labelLarge
                                .override(
                                  font: GoogleFonts.spaceGrotesk(
                                    fontWeight: FlutterFlowTheme.of(context)
                                        .labelLarge
                                        .fontWeight,
                                    fontStyle: FlutterFlowTheme.of(context)
                                        .labelLarge
                                        .fontStyle,
                                  ),
                                  color: FlutterFlowTheme.of(context)
                                      .secondaryText,
                                  letterSpacing: 0.0,
                                  fontWeight: FlutterFlowTheme.of(context)
                                      .labelLarge
                                      .fontWeight,
                                  fontStyle: FlutterFlowTheme.of(context)
                                      .labelLarge
                                      .fontStyle,
                                  lineHeight: 1.3,
                                ),
                          ),
                          Wrap(
                            spacing: 16.0,
                            runSpacing: 16.0,
                            alignment: WrapAlignment.start,
                            crossAxisAlignment: WrapCrossAlignment.start,
                            direction: Axis.horizontal,
                            runAlignment: WrapAlignment.start,
                            verticalDirection: VerticalDirection.down,
                            clipBehavior: Clip.none,
                            children: [
                              wrapWithModel(
                                model: _model.commandChipModel1,
                                updateCallback: () => safeSetState(() {}),
                                child: CommandChipWidget(
                                  icon: Icon(
                                    Icons.schedule_rounded,
                                    color:
                                        FlutterFlowTheme.of(context).tertiary,
                                    size: 18.0,
                                  ),
                                  label: 'Read my reminders',
                                ),
                              ),
                              wrapWithModel(
                                model: _model.commandChipModel2,
                                updateCallback: () => safeSetState(() {}),
                                child: CommandChipWidget(
                                  icon: Icon(
                                    Icons.emergency_rounded,
                                    color:
                                        FlutterFlowTheme.of(context).tertiary,
                                    size: 18.0,
                                  ),
                                  label: 'Call emergency',
                                ),
                              ),
                              wrapWithModel(
                                model: _model.commandChipModel3,
                                updateCallback: () => safeSetState(() {}),
                                child: CommandChipWidget(
                                  icon: Icon(
                                    Icons.health_and_safety_rounded,
                                    color:
                                        FlutterFlowTheme.of(context).tertiary,
                                    size: 18.0,
                                  ),
                                  label: 'Check my vitals',
                                ),
                              ),
                              wrapWithModel(
                                model: _model.commandChipModel4,
                                updateCallback: () => safeSetState(() {}),
                                child: CommandChipWidget(
                                  icon: Icon(
                                    Icons.help_outline_rounded,
                                    color:
                                        FlutterFlowTheme.of(context).tertiary,
                                    size: 18.0,
                                  ),
                                  label: 'Help me',
                                ),
                              ),
                            ],
                          ),
                        ].divide(SizedBox(height: 16.0)),
                      ),
                      Container(
                        decoration: BoxDecoration(
                          color: FlutterFlowTheme.of(context).surfaceVariant30,
                          borderRadius: BorderRadius.circular(24.0),
                          shape: BoxShape.rectangle,
                          border: Border.all(
                            color: FlutterFlowTheme.of(context).alternate,
                            width: 1.0,
                          ),
                        ),
                        child: Padding(
                          padding: EdgeInsets.all(24.0),
                          child: Container(
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Icon(
                                  Icons.person_rounded,
                                  color: FlutterFlowTheme.of(context)
                                      .secondaryText,
                                  size: 20.0,
                                ),
                                Expanded(
                                  flex: 1,
                                  child: Text(
                                    'What time is my next heart medication?',
                                    style: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .override(
                                          font: GoogleFonts.outfit(
                                            fontWeight:
                                                FlutterFlowTheme.of(context)
                                                    .bodyMedium
                                                    .fontWeight,
                                            fontStyle: FontStyle.italic,
                                          ),
                                          color: FlutterFlowTheme.of(context)
                                              .secondaryText,
                                          letterSpacing: 0.0,
                                          fontWeight:
                                              FlutterFlowTheme.of(context)
                                                  .bodyMedium
                                                  .fontWeight,
                                          fontStyle: FontStyle.italic,
                                          lineHeight: 1.5,
                                        ),
                                  ),
                                ),
                              ].divide(SizedBox(width: 16.0)),
                            ),
                          ),
                        ),
                      ),
                    ].divide(SizedBox(height: 32.0)),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
