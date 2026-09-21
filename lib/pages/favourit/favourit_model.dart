import '/comopoents/main_appbar/main_appbar_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'favourit_widget.dart' show FavouritWidget;
import 'package:flutter/material.dart';

class FavouritModel extends FlutterFlowModel<FavouritWidget> {
  ///  Local state fields for this page.

  int? count1 = 1;

  int? count2 = 1;

  int? count3 = 1;

  ///  State fields for stateful widgets in this page.

  // Model for MainAppbar component.
  late MainAppbarModel mainAppbarModel;

  @override
  void initState(BuildContext context) {
    mainAppbarModel = createModel(context, () => MainAppbarModel());
  }

  @override
  void dispose() {
    mainAppbarModel.dispose();
  }
}
