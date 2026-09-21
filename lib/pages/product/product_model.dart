import '/comopoents/main_appbar/main_appbar_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'product_widget.dart' show ProductWidget;
import 'package:flutter/material.dart';

class ProductModel extends FlutterFlowModel<ProductWidget> {
  ///  Local state fields for this page.

  int? select = 0;

  ///  State fields for stateful widgets in this page.

  // Model for MainAppbar component.
  late MainAppbarModel mainAppbarModel;
  // State field(s) for CountController widget.
  int? countControllerValue;

  @override
  void initState(BuildContext context) {
    mainAppbarModel = createModel(context, () => MainAppbarModel());
  }

  @override
  void dispose() {
    mainAppbarModel.dispose();
  }
}
