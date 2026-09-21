import '/comopoents/main_appbar/main_appbar_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'cate_widget.dart' show CateWidget;
import 'package:flutter/material.dart';

class CateModel extends FlutterFlowModel<CateWidget> {
  ///  Local state fields for this page.

  int selectt = 0;

  ///  State fields for stateful widgets in this page.

  // Model for MainAppbar component.
  late MainAppbarModel mainAppbarModel;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textController;
  String? Function(BuildContext, String?)? textControllerValidator;

  @override
  void initState(BuildContext context) {
    mainAppbarModel = createModel(context, () => MainAppbarModel());
  }

  @override
  void dispose() {
    mainAppbarModel.dispose();
    textFieldFocusNode?.dispose();
    textController?.dispose();
  }
}
