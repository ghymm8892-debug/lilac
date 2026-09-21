import '/comopoents/main_appbar/main_appbar_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'product_copy_widget.dart' show ProductCopyWidget;
import 'package:flutter/material.dart';

class ProductCopyModel extends FlutterFlowModel<ProductCopyWidget> {
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
