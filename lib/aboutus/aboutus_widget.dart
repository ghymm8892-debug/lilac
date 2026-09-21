import '/comopoents/main_appbar/main_appbar_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'aboutus_model.dart';
export 'aboutus_model.dart';

class AboutusWidget extends StatefulWidget {
  const AboutusWidget({super.key});

  static String routeName = 'aboutus';
  static String routePath = '/aboutus';

  @override
  State<AboutusWidget> createState() => _AboutusWidgetState();
}

class _AboutusWidgetState extends State<AboutusWidget> {
  late AboutusModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => AboutusModel());
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
        body: SafeArea(
          top: true,
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              wrapWithModel(
                model: _model.mainAppbarModel,
                updateCallback: () => safeSetState(() {}),
                child: MainAppbarWidget(
                  title: 'من نحن',
                  isBack: false,
                  isEdit: false,
                  backAction: () async {},
                  editAction: () async {},
                ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(22.0, 0.0, 22.0, 0.0),
                child: Text(
                  '\"أهلاً بك في ليلك\nالوجهة الأولى لكل ما يجعلك تبتسمين وتتألقين نحن نؤمن أن الجمال يبدأ من اهتمامك بنفسك، لذا جمعنا لك في ليلك كل ما تحتاجينه في مكان واحد عالم العناية والمكياج اختيار دقيق من منتجات العناية بالبشرة والمكياج التي تبرز جمالك الطبيعي وتمنح بشرتك الدلال الذي تستحقه.\nعالم الأناقة كفرات هواتف فريدة وإكسسوارات صممت بعناية لتكون لمسة إضافية لجمالك، وتناسب ذوقك الخاص.\nكل قطعة في ليلك ليست مجرد منتج، بل هي تجربة أهديناها لكِ لتشعري بالثقة والتميز في كل يوم.\nشكراً لأنك جزء من رحلتنا استمتعي بالتسوق في عالمك الخاص\"',
                  style: FlutterFlowTheme.of(context).titleSmall.override(
                        fontFamily: 'SF UI Text',
                        letterSpacing: 0.0,
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
