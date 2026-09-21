import '/bottom/home_component/home_component_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'home_main_page_widget.dart' show HomeMainPageWidget;
import 'package:flutter/material.dart';

class HomeMainPageModel extends FlutterFlowModel<HomeMainPageWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for HomeComponent component.
  late HomeComponentModel homeComponentModel1;
  // Model for HomeComponent component.
  late HomeComponentModel homeComponentModel2;
  // Model for HomeComponent component.
  late HomeComponentModel homeComponentModel3;
  // Model for HomeComponent component.
  late HomeComponentModel homeComponentModel4;
  // Model for HomeComponent component.
  late HomeComponentModel homeComponentModel5;

  @override
  void initState(BuildContext context) {
    homeComponentModel1 = createModel(context, () => HomeComponentModel());
    homeComponentModel2 = createModel(context, () => HomeComponentModel());
    homeComponentModel3 = createModel(context, () => HomeComponentModel());
    homeComponentModel4 = createModel(context, () => HomeComponentModel());
    homeComponentModel5 = createModel(context, () => HomeComponentModel());
  }

  @override
  void dispose() {
    homeComponentModel1.dispose();
    homeComponentModel2.dispose();
    homeComponentModel3.dispose();
    homeComponentModel4.dispose();
    homeComponentModel5.dispose();
  }
}
