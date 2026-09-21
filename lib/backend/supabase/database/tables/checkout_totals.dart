import '../database.dart';

class CheckoutTotalsTable extends SupabaseTable<CheckoutTotalsRow> {
  @override
  String get tableName => 'checkout_totals';

  @override
  CheckoutTotalsRow createRow(Map<String, dynamic> data) =>
      CheckoutTotalsRow(data);
}

class CheckoutTotalsRow extends SupabaseDataRow {
  CheckoutTotalsRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => CheckoutTotalsTable();

  String? get userId => getField<String>('user_id');
  set userId(String? value) => setField<String>('user_id', value);

  String? get totalPrice => getField<String>('total_price');
  set totalPrice(String? value) => setField<String>('total_price', value);

  String? get deliveryFee => getField<String>('delivery_fee');
  set deliveryFee(String? value) => setField<String>('delivery_fee', value);

  String? get grandTotal => getField<String>('grand_total');
  set grandTotal(String? value) => setField<String>('grand_total', value);
}
