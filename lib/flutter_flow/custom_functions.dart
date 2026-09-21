import 'dart:convert';
import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:timeago/timeago.dart' as timeago;
import 'lat_lng.dart';
import 'place.dart';
import 'uploaded_file.dart';
import '/backend/backend.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import '/backend/schema/structs/index.dart';
import '/backend/supabase/supabase.dart';
import '/auth/firebase_auth/auth_util.dart';

double calculateCartTotal(List<CartRow> cartItems) {
  if (cartItems == null || cartItems.isEmpty) {
    return 0.0;
  }

  double total = 0.0;

  for (var item in cartItems) {
    double price = double.tryParse(item.price?.toString() ?? '0') ?? 0.0;
    int quantity = item.quantity ?? 1;

    total += (price * quantity);
  }

  return total;
}

int? incrementValue(int? value) {
  return (value ?? 0) + 1;
}

int? decrementValue(int? value) {
  return (value ?? 1) > 1 ? (value! - 1) : 1;
}

String? calculateItemTotali(
  String? price,
  int? quantity,
) {
  int p = int.tryParse(price ?? '') ?? 0;
  int q = quantity ?? 1;
  return '${p * q} د.ع';
}

String? calcOrderTotal(
  String? priceStr,
  int? qty,
) {
  if (priceStr == null || qty == null) return '0';
  String cleanPrice = priceStr.replaceAll(RegExp(r'[^0-9]'), '');
  int price = int.tryParse(cleanPrice) ?? 0;
  int total = price * qty;
  final formatter = NumberFormat('#,###');
  return formatter.format(total);
}

String? calcGrandTotal(
  String? priceStr,
  int? qty,
  String? deliveryStr,
) {
  if (priceStr == null || qty == null) return '0';

  // 1. حساب مجموع المنتجات
  String cleanPrice = priceStr.replaceAll(RegExp(r'[^0-9]'), '');
  int price = int.tryParse(cleanPrice) ?? 0;
  int itemsTotal = price * qty;

  // 2. إضافة التوصيل الثابت (5000)
  int grandTotal = itemsTotal + 5000;

  // 3. التنسيق بالفواصل
  final formatter = NumberFormat('#,###');
  return formatter.format(grandTotal);
}
