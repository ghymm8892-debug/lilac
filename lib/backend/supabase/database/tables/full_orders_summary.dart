import '../database.dart';

class FullOrdersSummaryTable extends SupabaseTable<FullOrdersSummaryRow> {
  @override
  String get tableName => 'full_orders_summary';

  @override
  FullOrdersSummaryRow createRow(Map<String, dynamic> data) =>
      FullOrdersSummaryRow(data);
}

class FullOrdersSummaryRow extends SupabaseDataRow {
  FullOrdersSummaryRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => FullOrdersSummaryTable();

  int? get oid => getField<int>('OID');
  set oid(int? value) => setField<int>('OID', value);

  DateTime? get createdAt => getField<DateTime>('created_at');
  set createdAt(DateTime? value) => setField<DateTime>('created_at', value);

  String? get customerName => getField<String>('customer_name');
  set customerName(String? value) => setField<String>('customer_name', value);

  String? get phone => getField<String>('phone');
  set phone(String? value) => setField<String>('phone', value);

  String? get fullAddress => getField<String>('full_address');
  set fullAddress(String? value) => setField<String>('full_address', value);

  String? get productName => getField<String>('product_name');
  set productName(String? value) => setField<String>('product_name', value);

  int? get quantity => getField<int>('quantity');
  set quantity(int? value) => setField<int>('quantity', value);

  String? get totalPrice => getField<String>('total_price');
  set totalPrice(String? value) => setField<String>('total_price', value);

  String? get grandTotal => getField<String>('grand_total');
  set grandTotal(String? value) => setField<String>('grand_total', value);

  String? get status => getField<String>('status');
  set status(String? value) => setField<String>('status', value);
}
