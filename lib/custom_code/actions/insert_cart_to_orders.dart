// Automatic FlutterFlow imports
import '/backend/backend.dart';
import '/backend/schema/structs/index.dart';
import '/backend/supabase/supabase.dart';
import '/actions/actions.dart' as action_blocks;
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import '/flutter_flow/custom_functions.dart'; // Imports custom functions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

Future insertCartToOrders(
  List<CartRow>? cartItems,
  int? addressId,
  String? userId,
) async {
  if (cartItems == null || cartItems.isEmpty) return;

  final rowsToInsert = cartItems.map((item) {
    return {
      'PD': item
          .pid, // تأكدي أن المفتاح المكتوب بين التنصيص هو PD تماماً كما في جدول orders
      'quantity': item.quantity,
      'aid': addressId,
      'UID': userId,
      'status': 'pending',
    };
  }).toList();

  await SupaFlow.client.from('orders').insert(rowsToInsert);
}
