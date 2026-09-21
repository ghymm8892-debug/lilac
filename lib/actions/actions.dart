import '/backend/backend.dart';
import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/custom_code/actions/index.dart' as actions;
import 'package:flutter/material.dart';

Future addAndRemoveFavourite(
  BuildContext context, {
  required bool? isAvilable,
  required CourseModelStruct? product,
}) async {
  if (isAvilable!) {
    FFAppState().removeFromFavouriteList(product!);
    FFAppState().update(() {});
    await actions.showCustomToastBottom(
      FFAppState().unfavText,
    );
  } else {
    FFAppState().addToFavouriteList(product!);
    FFAppState().update(() {});
    await actions.showCustomToastBottom(
      FFAppState().favText,
    );
  }
}
