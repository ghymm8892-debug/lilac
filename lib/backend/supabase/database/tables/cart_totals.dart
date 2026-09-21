import '../database.dart';

class CartTotalsTable extends SupabaseTable<CartTotalsRow> {
  @override
  String get tableName => 'cart_totals';

  @override
  CartTotalsRow createRow(Map<String, dynamic> data) => CartTotalsRow(data);
}

class CartTotalsRow extends SupabaseDataRow {
  CartTotalsRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => CartTotalsTable();

  String? get userId => getField<String>('user_id');
  set userId(String? value) => setField<String>('user_id', value);

  String? get totalPrice => getField<String>('total_price');
  set totalPrice(String? value) => setField<String>('total_price', value);

  String? get deliveryFee => getField<String>('delivery_fee');
  set deliveryFee(String? value) => setField<String>('delivery_fee', value);

  String? get grandTotal => getField<String>('grand_total');
  set grandTotal(String? value) => setField<String>('grand_total', value);
}
