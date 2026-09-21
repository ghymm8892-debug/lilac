import '/components/address_card_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'clean_and_modern_page_widget.dart' show CleanAndModernPageWidget;
import 'package:flutter/material.dart';

class CleanAndModernPageModel
    extends FlutterFlowModel<CleanAndModernPageWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for AddressCard.
  late AddressCardModel addressCardModel;

  @override
  void initState(BuildContext context) {
    addressCardModel = createModel(context, () => AddressCardModel());
  }

  @override
  void dispose() {
    addressCardModel.dispose();
  }
}
