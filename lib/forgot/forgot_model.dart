import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'forgot_widget.dart' show ForgotWidget;
import 'package:flutter/material.dart';

class ForgotModel extends FlutterFlowModel<ForgotWidget> {
  ///  State fields for stateful widgets in this page.

  final formKey2 = GlobalKey<FormState>();
  final formKey1 = GlobalKey<FormState>();
  // State field(s) for emailAddress1 widget.
  FocusNode? emailAddress1FocusNode;
  TextEditingController? emailAddress1TextController;
  late bool emailAddress1Visibility;
  String? Function(BuildContext, String?)? emailAddress1TextControllerValidator;
  String? _emailAddress1TextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'يرجى إدخال كلمة المرور';
    }

    if (val.length < 6) {
      return 'يجب ان تتكون كلمة المرور من - 6 أحرف';
    }

    return null;
  }

  // State field(s) for emailAddress2 widget.
  FocusNode? emailAddress2FocusNode;
  TextEditingController? emailAddress2TextController;
  late bool emailAddress2Visibility;
  String? Function(BuildContext, String?)? emailAddress2TextControllerValidator;
  String? _emailAddress2TextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'يرجى تأكيد كلمة المرور';
    }

    if (val.length < 6) {
      return 'تأكيد كلمة المرور يجب أن يكون 6 أحرف';
    }

    return null;
  }

  @override
  void initState(BuildContext context) {
    emailAddress1Visibility = false;
    emailAddress1TextControllerValidator =
        _emailAddress1TextControllerValidator;
    emailAddress2Visibility = false;
    emailAddress2TextControllerValidator =
        _emailAddress2TextControllerValidator;
  }

  @override
  void dispose() {
    emailAddress1FocusNode?.dispose();
    emailAddress1TextController?.dispose();

    emailAddress2FocusNode?.dispose();
    emailAddress2TextController?.dispose();
  }
}
