import '/components/row_componant_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'home_component_widget.dart' show HomeComponentWidget;
import 'package:flutter/material.dart';

class HomeComponentModel extends FlutterFlowModel<HomeComponentWidget> {
  ///  Local state fields for this component.

  int? select = 0;

  ///  State fields for stateful widgets in this component.

  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textController;
  String? Function(BuildContext, String?)? textControllerValidator;
  // Model for RowComponant component.
  late RowComponantModel rowComponantModel;

  @override
  void initState(BuildContext context) {
    rowComponantModel = createModel(context, () => RowComponantModel());
  }

  @override
  void dispose() {
    textFieldFocusNode?.dispose();
    textController?.dispose();

    rowComponantModel.dispose();
  }
}
