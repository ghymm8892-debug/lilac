import '../database.dart';

class OrdersWithAddressTable extends SupabaseTable<OrdersWithAddressRow> {
  @override
  String get tableName => 'orders_with_address';

  @override
  OrdersWithAddressRow createRow(Map<String, dynamic> data) =>
      OrdersWithAddressRow(data);
}

class OrdersWithAddressRow extends SupabaseDataRow {
  OrdersWithAddressRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => OrdersWithAddressTable();

  int? get oid => getField<int>('OID');
  set oid(int? value) => setField<int>('OID', value);

  DateTime? get createdAt => getField<DateTime>('created_at');
  set createdAt(DateTime? value) => setField<DateTime>('created_at', value);

  String? get status => getField<String>('status');
  set status(String? value) => setField<String>('status', value);

  int? get quantity => getField<int>('quantity');
  set quantity(int? value) => setField<int>('quantity', value);

  String? get varinet => getField<String>('varinet');
  set varinet(String? value) => setField<String>('varinet', value);

  int? get pd => getField<int>('PD');
  set pd(int? value) => setField<int>('PD', value);

  String? get uid => getField<String>('UID');
  set uid(String? value) => setField<String>('UID', value);

  int? get aid => getField<int>('aid');
  set aid(int? value) => setField<int>('aid', value);

  String? get customerName => getField<String>('customer_name');
  set customerName(String? value) => setField<String>('customer_name', value);

  double? get customerPhone => getField<double>('customer_phone');
  set customerPhone(double? value) => setField<double>('customer_phone', value);

  String? get customerGovernorate => getField<String>('customer_governorate');
  set customerGovernorate(String? value) =>
      setField<String>('customer_governorate', value);

  String? get customerCity => getField<String>('customer_city');
  set customerCity(String? value) => setField<String>('customer_city', value);

  String? get customerLandmark => getField<String>('customer_landmark');
  set customerLandmark(String? value) =>
      setField<String>('customer_landmark', value);
}
