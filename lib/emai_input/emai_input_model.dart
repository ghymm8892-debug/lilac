import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'emai_input_widget.dart' show EmaiInputWidget;
import 'package:flutter/material.dart';

class EmaiInputModel extends FlutterFlowModel<EmaiInputWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for emailAddress widget.
  FocusNode? emailAddressFocusNode;
  TextEditingController? emailAddressTextController;
  String? Function(BuildContext, String?)? emailAddressTextControllerValidator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    emailAddressFocusNode?.dispose();
    emailAddressTextController?.dispose();
  }
}
