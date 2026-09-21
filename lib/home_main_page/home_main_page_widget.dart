import '/bottom/home_component/home_component_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:provider/provider.dart';
import 'home_main_page_model.dart';
export 'home_main_page_model.dart';

class HomeMainPageWidget extends StatefulWidget {
  const HomeMainPageWidget({super.key});

  static String routeName = 'HomeMainPage';
  static String routePath = '/homeMainPage';

  @override
  State<HomeMainPageWidget> createState() => _HomeMainPageWidgetState();
}

class _HomeMainPageWidgetState extends State<HomeMainPageWidget> {
  late HomeMainPageModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => HomeMainPageModel());
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
        body: SafeArea(
          top: true,
          child: Column(
            mainAxisSize: MainAxisSize.max,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                child: Builder(
                  builder: (context) {
                    if (FFAppState().homePageIndex == 0) {
                      return wrapWithModel(
                        model: _model.homeComponentModel1,
                        updateCallback: () => safeSetState(() {}),
                        child: HomeComponentWidget(),
                      );
                    } else if (FFAppState().homePageIndex == 1) {
                      return wrapWithModel(
                        model: _model.homeComponentModel2,
                        updateCallback: () => safeSetState(() {}),
                        child: HomeComponentWidget(),
                      );
                    } else if (FFAppState().homePageIndex == 2) {
                      return wrapWithModel(
                        model: _model.homeComponentModel3,
                        updateCallback: () => safeSetState(() {}),
                        child: HomeComponentWidget(),
                      );
                    } else if (FFAppState().homePageIndex == 3) {
                      return wrapWithModel(
                        model: _model.homeComponentModel4,
                        updateCallback: () => safeSetState(() {}),
                        child: HomeComponentWidget(),
                      );
                    } else {
                      return wrapWithModel(
                        model: _model.homeComponentModel5,
                        updateCallback: () => safeSetState(() {}),
                        child: HomeComponentWidget(),
                      );
                    }
                  },
                ),
              ),
              Container(
                width: double.infinity,
                height: 100.0,
                decoration: BoxDecoration(
                  color: FlutterFlowTheme.of(context).primaryBackground,
                ),
                child: Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0.0, 20.0, 0.0, 19.0),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Expanded(
                        child: InkWell(
                          splashColor: Colors.transparent,
                          focusColor: Colors.transparent,
                          hoverColor: Colors.transparent,
                          highlightColor: Colors.transparent,
                          onTap: () async {
                            FFAppState().homePageIndex = 0;
                            FFAppState().update(() {});
                          },
                          child: Column(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Container(
                                width: 59.0,
                                height: 32.0,
                                decoration: BoxDecoration(
                                  color: FFAppState().homePageIndex == 0
                                      ? FlutterFlowTheme.of(context).secondary
                                      : Color(0x00000000),
                                  borderRadius: BorderRadius.circular(170.0),
                                ),
                                alignment: AlignmentDirectional(0.0, 0.0),
                                child: Builder(
                                  builder: (context) {
                                    if (FFAppState().homePageIndex == 0) {
                                      return ClipRRect(
                                        borderRadius:
                                            BorderRadius.circular(0.0),
                                        child: Image.asset(
                                          'assets/images/home_(1).png',
                                          width: 24.0,
                                          height: 24.0,
                                          fit: BoxFit.contain,
                                        ),
                                      );
                                    } else {
                                      return ClipRRect(
                                        borderRadius:
                                            BorderRadius.circular(0.0),
                                        child: SvgPicture.asset(
                                          'assets/images/home.svg',
                                          width: 24.0,
                                          height: 24.0,
                                          fit: BoxFit.contain,
                                        ),
                                      );
                                    }
                                  },
                                ),
                              ),
                              Text(
                                'الرئيسية',
                                textAlign: TextAlign.center,
                                maxLines: 1,
                                style: FlutterFlowTheme.of(context)
                                    .bodyMedium
                                    .override(
                                      fontFamily: 'SF Pro Display',
                                      color: FFAppState().homePageIndex == 0
                                          ? FlutterFlowTheme.of(context).primary
                                          : FlutterFlowTheme.of(context)
                                              .secondaryText,
                                      fontSize: 13.0,
                                      letterSpacing: 0.0,
                                      fontWeight: FontWeight.normal,
                                      lineHeight: 1.5,
                                    ),
                              ),
                            ].divide(SizedBox(height: 5.0)),
                          ),
                        ),
                      ),
                      Expanded(
                        child: InkWell(
                          splashColor: Colors.transparent,
                          focusColor: Colors.transparent,
                          hoverColor: Colors.transparent,
                          highlightColor: Colors.transparent,
                          onTap: () async {
                            FFAppState().homePageIndex = 1;
                            FFAppState().update(() {});

                            context.pushNamed(FavouritWidget.routeName);
                          },
                          child: Column(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Container(
                                width: 59.0,
                                height: 32.0,
                                decoration: BoxDecoration(
                                  color: FFAppState().homePageIndex == 1
                                      ? FlutterFlowTheme.of(context).secondary
                                      : Color(0x00000000),
                                  borderRadius: BorderRadius.circular(170.0),
                                ),
                                alignment: AlignmentDirectional(0.0, 0.0),
                                child: Builder(
                                  builder: (context) {
                                    if (FFAppState().homePageIndex == 1) {
                                      return ClipRRect(
                                        borderRadius:
                                            BorderRadius.circular(0.0),
                                        child: Image.asset(
                                          'assets/images/love.png',
                                          width: 24.0,
                                          height: 24.0,
                                          fit: BoxFit.contain,
                                        ),
                                      );
                                    } else {
                                      return ClipRRect(
                                        borderRadius:
                                            BorderRadius.circular(0.0),
                                        child: Image.asset(
                                          'assets/images/frav-grey.png',
                                          width: 24.0,
                                          height: 24.0,
                                          fit: BoxFit.contain,
                                        ),
                                      );
                                    }
                                  },
                                ),
                              ),
                              Text(
                                'المفضلة',
                                textAlign: TextAlign.center,
                                maxLines: 1,
                                style: FlutterFlowTheme.of(context)
                                    .bodyMedium
                                    .override(
                                      fontFamily: 'SF Pro Display',
                                      color: FFAppState().homePageIndex == 1
                                          ? FlutterFlowTheme.of(context).primary
                                          : FlutterFlowTheme.of(context)
                                              .secondaryText,
                                      fontSize: 13.0,
                                      letterSpacing: 0.0,
                                      fontWeight: FontWeight.normal,
                                      lineHeight: 1.5,
                                    ),
                              ),
                            ].divide(SizedBox(height: 5.0)),
                          ),
                        ),
                      ),
                      Expanded(
                        child: InkWell(
                          splashColor: Colors.transparent,
                          focusColor: Colors.transparent,
                          hoverColor: Colors.transparent,
                          highlightColor: Colors.transparent,
                          onTap: () async {
                            context.pushNamed(CateWidget.routeName);

                            FFAppState().homePageIndex = 2;
                            FFAppState().update(() {});
                          },
                          child: Column(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Container(
                                width: 59.0,
                                height: 32.0,
                                decoration: BoxDecoration(
                                  color: FFAppState().homePageIndex == 2
                                      ? FlutterFlowTheme.of(context).secondary
                                      : Color(0x00000000),
                                  borderRadius: BorderRadius.circular(170.0),
                                ),
                                alignment: AlignmentDirectional(0.0, 0.0),
                                child: Builder(
                                  builder: (context) {
                                    if (FFAppState().homePageIndex == 2) {
                                      return ClipRRect(
                                        borderRadius:
                                            BorderRadius.circular(0.0),
                                        child: SvgPicture.asset(
                                          'assets/images/cate-black-1.svg',
                                          width: 24.0,
                                          height: 24.0,
                                          fit: BoxFit.contain,
                                        ),
                                      );
                                    } else {
                                      return ClipRRect(
                                        borderRadius:
                                            BorderRadius.circular(0.0),
                                        child: SvgPicture.asset(
                                          'assets/images/inbox.svg',
                                          width: 24.0,
                                          height: 24.0,
                                          fit: BoxFit.contain,
                                        ),
                                      );
                                    }
                                  },
                                ),
                              ),
                              Text(
                                'الفئات',
                                textAlign: TextAlign.center,
                                maxLines: 1,
                                style: FlutterFlowTheme.of(context)
                                    .bodyMedium
                                    .override(
                                      fontFamily: 'SF Pro Display',
                                      color: FFAppState().homePageIndex == 2
                                          ? FlutterFlowTheme.of(context).primary
                                          : FlutterFlowTheme.of(context)
                                              .secondaryText,
                                      fontSize: 13.0,
                                      letterSpacing: 0.0,
                                      fontWeight: FontWeight.normal,
                                      lineHeight: 1.5,
                                    ),
                              ),
                            ].divide(SizedBox(height: 5.0)),
                          ),
                        ),
                      ),
                      Expanded(
                        child: InkWell(
                          splashColor: Colors.transparent,
                          focusColor: Colors.transparent,
                          hoverColor: Colors.transparent,
                          highlightColor: Colors.transparent,
                          onTap: () async {
                            context.pushNamed(ProfileWidget.routeName);

                            FFAppState().homePageIndex = 3;
                            FFAppState().update(() {});
                          },
                          child: Column(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Container(
                                width: 59.0,
                                height: 32.0,
                                decoration: BoxDecoration(
                                  color: FFAppState().homePageIndex == 3
                                      ? FlutterFlowTheme.of(context).secondary
                                      : Color(0x00000000),
                                  borderRadius: BorderRadius.circular(170.0),
                                ),
                                alignment: AlignmentDirectional(0.0, 0.0),
                                child: Builder(
                                  builder: (context) {
                                    if (FFAppState().homePageIndex == 3) {
                                      return ClipRRect(
                                        borderRadius:
                                            BorderRadius.circular(0.0),
                                        child: Image.asset(
                                          'assets/images/user.png',
                                          width: 24.0,
                                          height: 24.0,
                                          fit: BoxFit.contain,
                                        ),
                                      );
                                    } else {
                                      return ClipRRect(
                                        borderRadius:
                                            BorderRadius.circular(0.0),
                                        child: SvgPicture.asset(
                                          'assets/images/profile.svg',
                                          width: 24.0,
                                          height: 24.0,
                                          fit: BoxFit.contain,
                                        ),
                                      );
                                    }
                                  },
                                ),
                              ),
                              Text(
                                'الحساب',
                                textAlign: TextAlign.center,
                                maxLines: 1,
                                style: FlutterFlowTheme.of(context)
                                    .bodyMedium
                                    .override(
                                      fontFamily: 'SF Pro Display',
                                      color: FFAppState().homePageIndex == 3
                                          ? FlutterFlowTheme.of(context).primary
                                          : FlutterFlowTheme.of(context)
                                              .secondaryText,
                                      fontSize: 13.0,
                                      letterSpacing: 0.0,
                                      fontWeight: FontWeight.normal,
                                      lineHeight: 1.5,
                                    ),
                              ),
                            ].divide(SizedBox(height: 5.0)),
                          ),
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
