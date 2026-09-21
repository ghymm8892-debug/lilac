import '/backend/supabase/supabase.dart';
import '/comopoents/main_appbar/main_appbar_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'cart_copy_widget.dart' show CartCopyWidget;
import 'package:flutter/material.dart';

class CartCopyModel extends FlutterFlowModel<CartCopyWidget> {
  ///  Local state fields for this page.

  int? count1 = 1;

  int? count2 = 1;

  int? count3 = 1;

  int? cartTotal;

  ///  State fields for stateful widgets in this page.

  // Stores action output result for [Backend Call - Query Rows] action in CartCopy widget.
  List<CartRow>? userCartItems;
  // Model for MainAppbar component.
  late MainAppbarModel mainAppbarModel;
  // Stores action output result for [Backend Call - Query Rows] action in Button widget.
  List<CartRow>? cartItems;

  @override
  void initState(BuildContext context) {
    mainAppbarModel = createModel(context, () => MainAppbarModel());
  }

  @override
  void dispose() {
    mainAppbarModel.dispose();
  }
}
