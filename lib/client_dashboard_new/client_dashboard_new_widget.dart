import '../flutter_flow/flutter_flow_charts.dart';
import '../flutter_flow/flutter_flow_choice_chips.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/random_data_util.dart' as random_data;
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ClientDashboardNewWidget extends StatefulWidget {
  const ClientDashboardNewWidget({Key? key}) : super(key: key);

  @override
  _ClientDashboardNewWidgetState createState() =>
      _ClientDashboardNewWidgetState();
}

class _ClientDashboardNewWidgetState extends State<ClientDashboardNewWidget> {
  String? choiceChipsValue1;
  String? choiceChipsValue2;
  String? choiceChipsValue3;
  String? choiceChipsValue4;
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
      body: SafeArea(
        child: GestureDetector(
          onTap: () => FocusScope.of(context).unfocus(),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(15, 30, 15, 0),
                child: Container(
                  width: double.infinity,
                  height: 400,
                  decoration: BoxDecoration(
                    color: Color(0x357CCBFF),
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Container(
                        width: double.infinity,
                        height: 100,
                        decoration: BoxDecoration(),
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Align(
                              alignment: AlignmentDirectional(0, 0.55),
                              child: Text(
                                '\$',
                                style: FlutterFlowTheme.of(context)
                                    .bodyText1
                                    .override(
                                      fontFamily: 'Roboto Mono',
                                      fontSize: 20,
                                      fontWeight: FontWeight.w300,
                                    ),
                              ),
                            ),
                            Align(
                              alignment: AlignmentDirectional(0, 0.7),
                              child: Padding(
                                padding:
                                    EdgeInsetsDirectional.fromSTEB(8, 0, 0, 0),
                                child: Text(
                                  '19,270',
                                  style: FlutterFlowTheme.of(context)
                                      .bodyText1
                                      .override(
                                        fontFamily: 'Panton',
                                        fontSize: 40,
                                        fontWeight: FontWeight.bold,
                                        useGoogleFonts: false,
                                      ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Expanded(
                        child: Align(
                          alignment: AlignmentDirectional(0, -1),
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                '+ 16.4%',
                                textAlign: TextAlign.center,
                                style: FlutterFlowTheme.of(context)
                                    .bodyText1
                                    .override(
                                      fontFamily: 'SF Pro',
                                      color: Color(0xFF37C970),
                                      fontWeight: FontWeight.w300,
                                      useGoogleFonts: false,
                                    ),
                              ),
                              Padding(
                                padding:
                                    EdgeInsetsDirectional.fromSTEB(10, 0, 0, 0),
                                child: Container(
                                  width: 50,
                                  height: 30,
                                  decoration: BoxDecoration(
                                    color: FlutterFlowTheme.of(context)
                                        .primaryColor,
                                    borderRadius: BorderRadius.circular(5),
                                  ),
                                  child: Align(
                                    alignment: AlignmentDirectional(0, 0),
                                    child: Text(
                                      'Week',
                                      style: FlutterFlowTheme.of(context)
                                          .bodyText1
                                          .override(
                                            fontFamily: 'Roboto',
                                            color: FlutterFlowTheme.of(context)
                                                .secondaryBackground,
                                            fontWeight: FontWeight.w300,
                                          ),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(0, 10, 0, 10),
                        child: Container(
                          width: 300,
                          height: 200,
                          child: FlutterFlowLineChart(
                            data: [
                              FFLineChartData(
                                xData: List.generate(
                                    random_data.randomInteger(20, 20),
                                    (index) =>
                                        random_data.randomInteger(0, 1000)),
                                yData: List.generate(
                                    random_data.randomInteger(20, 20),
                                    (index) =>
                                        random_data.randomInteger(1, 1000)),
                                settings: LineChartBarData(
                                  color: Color(0xFF00629E),
                                  barWidth: 1,
                                  isCurved: true,
                                  dotData: FlDotData(show: false),
                                ),
                              )
                            ],
                            backgroundColor: Color(0x002F69A7),
                            axisBounds: AxisBounds(),
                            xAxisLabelInfo: AxisLabelInfo(),
                            yAxisLabelInfo: AxisLabelInfo(),
                          ),
                        ),
                      ),
                      Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(0, 0, 5, 0),
                            child: FlutterFlowChoiceChips(
                              initiallySelected: [
                                if (choiceChipsValue1 != null)
                                  choiceChipsValue1!
                              ],
                              options: [ChipData('1D')],
                              onChanged: (val) => setState(
                                  () => choiceChipsValue1 = val?.first),
                              selectedChipStyle: ChipStyle(
                                backgroundColor: Color(0xFF3696F0),
                                textStyle: FlutterFlowTheme.of(context)
                                    .bodyText1
                                    .override(
                                      fontFamily: 'Poppins',
                                      color: Colors.white,
                                    ),
                                iconColor: Colors.white,
                                iconSize: 18,
                                elevation: 0,
                              ),
                              unselectedChipStyle: ChipStyle(
                                backgroundColor: Colors.white,
                                textStyle: FlutterFlowTheme.of(context)
                                    .bodyText2
                                    .override(
                                      fontFamily: 'Poppins',
                                      color: Color(0xFF323B45),
                                    ),
                                iconColor: Color(0xFFC8CECE),
                                iconSize: 18,
                                elevation: 0,
                              ),
                              chipSpacing: 10,
                              multiselect: false,
                              alignment: WrapAlignment.start,
                            ),
                          ),
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(0, 0, 5, 0),
                            child: FlutterFlowChoiceChips(
                              initiallySelected: [
                                if (choiceChipsValue2 != null)
                                  choiceChipsValue2!
                              ],
                              options: [ChipData('1W')],
                              onChanged: (val) => setState(
                                  () => choiceChipsValue2 = val?.first),
                              selectedChipStyle: ChipStyle(
                                backgroundColor: Color(0xFF3696F0),
                                textStyle: FlutterFlowTheme.of(context)
                                    .bodyText1
                                    .override(
                                      fontFamily: 'Poppins',
                                      color: Colors.white,
                                    ),
                                iconColor: Colors.white,
                                iconSize: 18,
                                elevation: 0,
                              ),
                              unselectedChipStyle: ChipStyle(
                                backgroundColor: Colors.white,
                                textStyle: FlutterFlowTheme.of(context)
                                    .bodyText2
                                    .override(
                                      fontFamily: 'Poppins',
                                      color: Color(0xFF323B45),
                                    ),
                                iconColor: Color(0xFFC8CECE),
                                iconSize: 18,
                                elevation: 0,
                              ),
                              chipSpacing: 10,
                              multiselect: false,
                              alignment: WrapAlignment.start,
                            ),
                          ),
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(0, 0, 5, 0),
                            child: FlutterFlowChoiceChips(
                              initiallySelected: [
                                if (choiceChipsValue3 != null)
                                  choiceChipsValue3!
                              ],
                              options: [ChipData('1M')],
                              onChanged: (val) => setState(
                                  () => choiceChipsValue3 = val?.first),
                              selectedChipStyle: ChipStyle(
                                backgroundColor: Color(0xFF3696F0),
                                textStyle: FlutterFlowTheme.of(context)
                                    .bodyText1
                                    .override(
                                      fontFamily: 'Poppins',
                                      color: Colors.white,
                                    ),
                                iconColor: Colors.white,
                                iconSize: 18,
                                elevation: 0,
                              ),
                              unselectedChipStyle: ChipStyle(
                                backgroundColor: Colors.white,
                                textStyle: FlutterFlowTheme.of(context)
                                    .bodyText2
                                    .override(
                                      fontFamily: 'Poppins',
                                      color: Color(0xFF323B45),
                                    ),
                                iconColor: Color(0xFFC8CECE),
                                iconSize: 18,
                                elevation: 0,
                              ),
                              chipSpacing: 10,
                              multiselect: false,
                              alignment: WrapAlignment.start,
                            ),
                          ),
                          FlutterFlowChoiceChips(
                            initiallySelected: [
                              if (choiceChipsValue4 != null) choiceChipsValue4!
                            ],
                            options: [ChipData('All')],
                            onChanged: (val) =>
                                setState(() => choiceChipsValue4 = val?.first),
                            selectedChipStyle: ChipStyle(
                              backgroundColor: Color(0xFF3696F0),
                              textStyle: FlutterFlowTheme.of(context)
                                  .bodyText1
                                  .override(
                                    fontFamily: 'Poppins',
                                    color: Colors.white,
                                  ),
                              iconColor: Colors.white,
                              iconSize: 18,
                              elevation: 0,
                            ),
                            unselectedChipStyle: ChipStyle(
                              backgroundColor: Colors.white,
                              textStyle: FlutterFlowTheme.of(context)
                                  .bodyText2
                                  .override(
                                    fontFamily: 'Poppins',
                                    color: Color(0xFF323B45),
                                  ),
                              iconColor: Color(0xFFC8CECE),
                              iconSize: 18,
                              elevation: 0,
                            ),
                            chipSpacing: 10,
                            multiselect: false,
                            alignment: WrapAlignment.start,
                          ),
                        ],
                      ),
                    ],
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
