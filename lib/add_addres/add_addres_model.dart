import '/flutter_flow/flutter_flow_util.dart';
import 'add_addres_widget.dart' show AddAddresWidget;
import 'package:flutter/material.dart';

class AddAddresModel extends FlutterFlowModel<AddAddresWidget> {
  ///  State fields for stateful widgets in this page.

  final formKey = GlobalKey<FormState>();
  // State field(s) for Name widget.
  FocusNode? nameFocusNode;
  TextEditingController? nameTextController;
  String? Function(BuildContext, String?)? nameTextControllerValidator;
  String? _nameTextControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'الاسم*';
    }

    return null;
  }

  // State field(s) for Phone widget.
  FocusNode? phoneFocusNode;
  TextEditingController? phoneTextController;
  String? Function(BuildContext, String?)? phoneTextControllerValidator;
  String? _phoneTextControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'رقم الهاتف* ';
    }

    return null;
  }

  // State field(s) for con widget.
  FocusNode? conFocusNode;
  TextEditingController? conTextController;
  String? Function(BuildContext, String?)? conTextControllerValidator;
  String? _conTextControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'المحافظة*';
    }

    return null;
  }

  // State field(s) for city widget.
  FocusNode? cityFocusNode;
  TextEditingController? cityTextController;
  String? Function(BuildContext, String?)? cityTextControllerValidator;
  String? _cityTextControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'المنطقة* ';
    }

    return null;
  }

  // State field(s) for description widget.
  FocusNode? descriptionFocusNode;
  TextEditingController? descriptionTextController;
  String? Function(BuildContext, String?)? descriptionTextControllerValidator;

  @override
  void initState(BuildContext context) {
    nameTextControllerValidator = _nameTextControllerValidator;
    phoneTextControllerValidator = _phoneTextControllerValidator;
    conTextControllerValidator = _conTextControllerValidator;
    cityTextControllerValidator = _cityTextControllerValidator;
  }

  @override
  void dispose() {
    nameFocusNode?.dispose();
    nameTextController?.dispose();

    phoneFocusNode?.dispose();
    phoneTextController?.dispose();

    conFocusNode?.dispose();
    conTextController?.dispose();

    cityFocusNode?.dispose();
    cityTextController?.dispose();

    descriptionFocusNode?.dispose();
    descriptionTextController?.dispose();
  }
}
