import '../flutter_flow/flutter_flow_icon_button.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AllocationWidget extends StatefulWidget {
  const AllocationWidget({Key? key}) : super(key: key);

  @override
  _AllocationWidgetState createState() => _AllocationWidgetState();
}

class _AllocationWidgetState extends State<AllocationWidget> {
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      appBar: AppBar(
        backgroundColor: Color(0xFF004383),
        automaticallyImplyLeading: false,
        leading: FlutterFlowIconButton(
          borderColor: Colors.transparent,
          borderRadius: 30,
          borderWidth: 1,
          buttonSize: 60,
          icon: Icon(
            Icons.arrow_back_rounded,
            color: Colors.white,
            size: 30,
          ),
          onPressed: () async {
            Navigator.pop(context);
          },
        ),
        title: Text(
          'Portfolio',
          style: FlutterFlowTheme.of(context).title2.override(
                fontFamily: 'Panton',
                color: Colors.white,
                fontSize: 22,
                useGoogleFonts: false,
              ),
        ),
        actions: [],
        centerTitle: true,
        elevation: 2,
      ),
      backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
      body: SafeArea(
        child: GestureDetector(
          onTap: () => FocusScope.of(context).unfocus(),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Row(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Image.network(
                    'https://i.ibb.co/cxXRbxm/fake-Pie-Chart.png',
                    width: MediaQuery.of(context).size.width,
                    height: MediaQuery.of(context).size.height * 0.45,
                    fit: BoxFit.cover,
                  ),
                ],
              ),
              Expanded(
                child: DefaultTabController(
                  length: 3,
                  initialIndex: 0,
                  child: Column(
                    children: [
                      TabBar(
                        labelColor: Color(0xFF00968A),
                        labelStyle:
                            FlutterFlowTheme.of(context).bodyText1.override(
                                  fontFamily: 'Poppins',
                                  fontSize: 13,
                                ),
                        indicatorColor:
                            FlutterFlowTheme.of(context).secondaryColor,
                        tabs: [
                          Tab(
                            text: 'Stocks',
                          ),
                          Tab(
                            text: 'Bonds',
                          ),
                          Tab(
                            text: 'Commodities',
                          ),
                        ],
                      ),
                      Expanded(
                        child: TabBarView(
                          children: [
                            Padding(
                              padding:
                                  EdgeInsetsDirectional.fromSTEB(15, 0, 15, 0),
                              child: SingleChildScrollView(
                                child: Column(
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          10, 30, 0, 20),
                                      child: Row(
                                        mainAxisSize: MainAxisSize.max,
                                        children: [
                                          Image.network(
                                            'https://logo.stocklight.com/NASDAQ/AMZN_icon.png',
                                            width: 50,
                                            height: 50,
                                            fit: BoxFit.cover,
                                          ),
                                          Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    20, 0, 0, 0),
                                            child: Text(
                                              'AMZN 23.7%',
                                              style:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyText1
                                                      .override(
                                                        fontFamily: 'Poppins',
                                                        fontSize: 20,
                                                      ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          10, 0, 0, 20),
                                      child: Row(
                                        mainAxisSize: MainAxisSize.max,
                                        children: [
                                          Image.network(
                                            'https://logo.stocklight.com/NASDAQ/MSFT_icon.png',
                                            width: 50,
                                            height: 50,
                                            fit: BoxFit.cover,
                                          ),
                                          Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    20, 0, 0, 0),
                                            child: Text(
                                              'MSFT 21.2%',
                                              style:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyText1
                                                      .override(
                                                        fontFamily: 'Poppins',
                                                        fontSize: 20,
                                                      ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          10, 0, 0, 20),
                                      child: Row(
                                        mainAxisSize: MainAxisSize.max,
                                        children: [
                                          Image.network(
                                            'https://logo.stocklight.com/NASDAQ/META_icon.png',
                                            width: 50,
                                            height: 50,
                                            fit: BoxFit.cover,
                                          ),
                                          Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    20, 0, 0, 0),
                                            child: Text(
                                              'META 15.1%',
                                              style:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyText1
                                                      .override(
                                                        fontFamily: 'Poppins',
                                                        fontSize: 20,
                                                      ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          10, 0, 0, 20),
                                      child: Row(
                                        mainAxisSize: MainAxisSize.max,
                                        children: [
                                          Image.network(
                                            'https://logo.stocklight.com/NYSE/ACN_icon.png',
                                            width: 50,
                                            height: 50,
                                            fit: BoxFit.cover,
                                          ),
                                          Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    20, 0, 0, 0),
                                            child: Text(
                                              'ACN 14.2%',
                                              style:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyText1
                                                      .override(
                                                        fontFamily: 'Poppins',
                                                        fontSize: 20,
                                                      ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          10, 0, 0, 20),
                                      child: Row(
                                        mainAxisSize: MainAxisSize.max,
                                        children: [
                                          Image.network(
                                            'https://logo.stocklight.com/NASDAQ/TSLA_icon.png',
                                            width: 50,
                                            height: 50,
                                            fit: BoxFit.cover,
                                          ),
                                          Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    20, 0, 0, 0),
                                            child: Text(
                                              'TSLA 9.1%',
                                              style:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyText1
                                                      .override(
                                                        fontFamily: 'Poppins',
                                                        fontSize: 20,
                                                      ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          10, 0, 0, 20),
                                      child: Row(
                                        mainAxisSize: MainAxisSize.max,
                                        children: [
                                          Image.network(
                                            'https://logo.stocklight.com/NASDAQ/AAPL_icon.png',
                                            width: 50,
                                            height: 50,
                                            fit: BoxFit.cover,
                                          ),
                                          Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    20, 0, 0, 0),
                                            child: Text(
                                              'AAPL 5.2%',
                                              style:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyText1
                                                      .override(
                                                        fontFamily: 'Poppins',
                                                        fontSize: 20,
                                                      ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          10, 0, 0, 20),
                                      child: Row(
                                        mainAxisSize: MainAxisSize.max,
                                        children: [
                                          Image.network(
                                            'https://logo.stocklight.com/NYSE/SNAP_icon.png',
                                            width: 50,
                                            height: 50,
                                            fit: BoxFit.cover,
                                          ),
                                          Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    20, 0, 0, 0),
                                            child: Text(
                                              'SNAP 4.1%',
                                              style:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyText1
                                                      .override(
                                                        fontFamily: 'Poppins',
                                                        fontSize: 20,
                                                      ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          10, 0, 0, 0),
                                      child: Row(
                                        mainAxisSize: MainAxisSize.max,
                                        children: [
                                          Image.network(
                                            'https://www.nasdaq.com/sites/acquia.prod/files/styles/246x246/public/2020/03/16/stocks-iamchamp-adobe.jpg?h=6acbff97&itok=uGqF4FIW',
                                            width: 50,
                                            height: 50,
                                            fit: BoxFit.cover,
                                          ),
                                          Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    20, 0, 0, 0),
                                            child: Text(
                                              'Others 7.4%',
                                              style:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyText1
                                                      .override(
                                                        fontFamily: 'Poppins',
                                                        fontSize: 20,
                                                      ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            SingleChildScrollView(
                              child: Column(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        10, 30, 0, 20),
                                    child: Row(
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        Image.network(
                                          'https://logo.stocklight.com/NASDAQ/TLT_icon.png',
                                          width: 50,
                                          height: 50,
                                          fit: BoxFit.cover,
                                        ),
                                        Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  20, 0, 0, 0),
                                          child: Text(
                                            'TLT 39.1%',
                                            style: FlutterFlowTheme.of(context)
                                                .bodyText1
                                                .override(
                                                  fontFamily: 'Poppins',
                                                  fontSize: 20,
                                                ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        10, 0, 0, 20),
                                    child: Row(
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        Image.network(
                                          'https://logo.stocklight.com/NASDAQ/IEF_icon.png',
                                          width: 50,
                                          height: 50,
                                          fit: BoxFit.cover,
                                        ),
                                        Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  20, 0, 0, 0),
                                          child: Text(
                                            'IEF 33.2%',
                                            style: FlutterFlowTheme.of(context)
                                                .bodyText1
                                                .override(
                                                  fontFamily: 'Poppins',
                                                  fontSize: 20,
                                                ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        10, 0, 0, 20),
                                    child: Row(
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        Image.network(
                                          'https://logo.stocklight.com/NASDAQ/SSB_icon.png',
                                          width: 50,
                                          height: 50,
                                          fit: BoxFit.cover,
                                        ),
                                        Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  20, 0, 0, 0),
                                          child: Text(
                                            'SSB 22.1%',
                                            style: FlutterFlowTheme.of(context)
                                                .bodyText1
                                                .override(
                                                  fontFamily: 'Poppins',
                                                  fontSize: 20,
                                                ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        10, 0, 0, 0),
                                    child: Row(
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        Image.network(
                                          'https://www.nasdaq.com/sites/acquia.prod/files/styles/246x246/public/2020/03/16/stocks-iamchamp-adobe.jpg?h=6acbff97&itok=uGqF4FIW',
                                          width: 50,
                                          height: 50,
                                          fit: BoxFit.cover,
                                        ),
                                        Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  20, 0, 0, 0),
                                          child: Text(
                                            'Others 5.6%',
                                            style: FlutterFlowTheme.of(context)
                                                .bodyText1
                                                .override(
                                                  fontFamily: 'Poppins',
                                                  fontSize: 20,
                                                ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            SingleChildScrollView(
                              child: Column(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        10, 30, 0, 20),
                                    child: Row(
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        Image.network(
                                          'https://cdn-icons-png.flaticon.com/512/362/362944.png',
                                          width: 50,
                                          height: 50,
                                          fit: BoxFit.cover,
                                        ),
                                        Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  20, 0, 0, 0),
                                          child: Text(
                                            'GOLD 37.9%',
                                            style: FlutterFlowTheme.of(context)
                                                .bodyText1
                                                .override(
                                                  fontFamily: 'Poppins',
                                                  fontSize: 20,
                                                ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        10, 0, 0, 20),
                                    child: Row(
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        Image.network(
                                          'https://cdn-icons.flaticon.com/png/512/2051/premium/2051289.png?token=exp=1660183310~hmac=982ee625783531a859845b8ec711efaf',
                                          width: 50,
                                          height: 50,
                                          fit: BoxFit.cover,
                                        ),
                                        Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  20, 0, 0, 0),
                                          child: Text(
                                            'OIL 35.5%',
                                            style: FlutterFlowTheme.of(context)
                                                .bodyText1
                                                .override(
                                                  fontFamily: 'Poppins',
                                                  fontSize: 20,
                                                ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        10, 0, 0, 20),
                                    child: Row(
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        Image.network(
                                          'https://cdn-icons.flaticon.com/png/512/3521/premium/3521355.png?token=exp=1660183445~hmac=fc6b6a1509d5b3fef434fb8447ed75ab',
                                          width: 50,
                                          height: 50,
                                          fit: BoxFit.cover,
                                        ),
                                        Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  20, 0, 0, 0),
                                          child: Text(
                                            'SILVER 23.3%',
                                            style: FlutterFlowTheme.of(context)
                                                .bodyText1
                                                .override(
                                                  fontFamily: 'Poppins',
                                                  fontSize: 20,
                                                ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        10, 0, 0, 0),
                                    child: Row(
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        Image.network(
                                          'https://www.nasdaq.com/sites/acquia.prod/files/styles/246x246/public/2020/03/16/stocks-iamchamp-adobe.jpg?h=6acbff97&itok=uGqF4FIW',
                                          width: 50,
                                          height: 50,
                                          fit: BoxFit.cover,
                                        ),
                                        Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  20, 0, 0, 0),
                                          child: Text(
                                            'Others 3.3%',
                                            style: FlutterFlowTheme.of(context)
                                                .bodyText1
                                                .override(
                                                  fontFamily: 'Poppins',
                                                  fontSize: 20,
                                                ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
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
