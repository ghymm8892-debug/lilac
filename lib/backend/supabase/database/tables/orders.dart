import '../database.dart';

class OrdersTable extends SupabaseTable<OrdersRow> {
  @override
  String get tableName => 'orders';

  @override
  OrdersRow createRow(Map<String, dynamic> data) => OrdersRow(data);
}

class OrdersRow extends SupabaseDataRow {
  OrdersRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => OrdersTable();

  int get oid => getField<int>('OID')!;
  set oid(int value) => setField<int>('OID', value);

  DateTime? get createdAt => getField<DateTime>('created_at');
  set createdAt(DateTime? value) => setField<DateTime>('created_at', value);

  int? get pd => getField<int>('PD');
  set pd(int? value) => setField<int>('PD', value);

  String? get uid => getField<String>('UID');
  set uid(String? value) => setField<String>('UID', value);

  int? get aid => getField<int>('aid');
  set aid(int? value) => setField<int>('aid', value);

  String? get status => getField<String>('status');
  set status(String? value) => setField<String>('status', value);

  String? get varinet => getField<String>('varinet');
  set varinet(String? value) => setField<String>('varinet', value);

  int? get quantity => getField<int>('quantity');
  set quantity(int? value) => setField<int>('quantity', value);

  String? get customerName => getField<String>('customer_name');
  set customerName(String? value) => setField<String>('customer_name', value);

  String? get phone => getField<String>('phone');
  set phone(String? value) => setField<String>('phone', value);

  String? get fullAddress => getField<String>('full_address');
  set fullAddress(String? value) => setField<String>('full_address', value);

  String? get productName => getField<String>('product_name');
  set productName(String? value) => setField<String>('product_name', value);

  String? get totalPrice => getField<String>('total_price');
  set totalPrice(String? value) => setField<String>('total_price', value);

  String? get grandTotal => getField<String>('grand_total');
  set grandTotal(String? value) => setField<String>('grand_total', value);

  String? get varient => getField<String>('varient');
  set varient(String? value) => setField<String>('varient', value);
}
