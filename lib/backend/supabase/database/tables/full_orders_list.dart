import '../database.dart';

class FullOrdersListTable extends SupabaseTable<FullOrdersListRow> {
  @override
  String get tableName => 'full_orders_list';

  @override
  FullOrdersListRow createRow(Map<String, dynamic> data) =>
      FullOrdersListRow(data);
}

class FullOrdersListRow extends SupabaseDataRow {
  FullOrdersListRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => FullOrdersListTable();

  int? get oid => getField<int>('OID');
  set oid(int? value) => setField<int>('OID', value);

  String? get uid => getField<String>('UID');
  set uid(String? value) => setField<String>('UID', value);

  String? get customerName => getField<String>('customer_name');
  set customerName(String? value) => setField<String>('customer_name', value);

  String? get phone => getField<String>('phone');
  set phone(String? value) => setField<String>('phone', value);

  String? get status => getField<String>('status');
  set status(String? value) => setField<String>('status', value);

  DateTime? get createdAt => getField<DateTime>('created_at');
  set createdAt(DateTime? value) => setField<DateTime>('created_at', value);

  String? get allProducts => getField<String>('all_products');
  set allProducts(String? value) => setField<String>('all_products', value);

  String? get totalPrice => getField<String>('total_price');
  set totalPrice(String? value) => setField<String>('total_price', value);

  String? get deliveryFee => getField<String>('delivery_fee');
  set deliveryFee(String? value) => setField<String>('delivery_fee', value);

  String? get grandTotal => getField<String>('grand_total');
  set grandTotal(String? value) => setField<String>('grand_total', value);
}
