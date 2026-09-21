import '../database.dart';

class Order2Table extends SupabaseTable<Order2Row> {
  @override
  String get tableName => 'order2';

  @override
  Order2Row createRow(Map<String, dynamic> data) => Order2Row(data);
}

class Order2Row extends SupabaseDataRow {
  Order2Row(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => Order2Table();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  DateTime? get createdAt => getField<DateTime>('created_at');
  set createdAt(DateTime? value) => setField<DateTime>('created_at', value);

  String get uid => getField<String>('uid')!;
  set uid(String value) => setField<String>('uid', value);

  String? get customerName => getField<String>('customer_name');
  set customerName(String? value) => setField<String>('customer_name', value);

  String? get phone => getField<String>('phone');
  set phone(String? value) => setField<String>('phone', value);

  String? get governorate => getField<String>('governorate');
  set governorate(String? value) => setField<String>('governorate', value);

  String? get city => getField<String>('city');
  set city(String? value) => setField<String>('city', value);

  String? get landmark => getField<String>('landmark');
  set landmark(String? value) => setField<String>('landmark', value);

  String? get fullAddress => getField<String>('full_address');
  set fullAddress(String? value) => setField<String>('full_address', value);

  int? get productId => getField<int>('product_id');
  set productId(int? value) => setField<int>('product_id', value);

  String? get productName => getField<String>('product_name');
  set productName(String? value) => setField<String>('product_name', value);

  String? get price => getField<String>('price');
  set price(String? value) => setField<String>('price', value);

  int? get quantity => getField<int>('quantity');
  set quantity(int? value) => setField<int>('quantity', value);

  String? get img => getField<String>('img');
  set img(String? value) => setField<String>('img', value);

  String? get bgColor => getField<String>('bg_color');
  set bgColor(String? value) => setField<String>('bg_color', value);

  String? get status => getField<String>('status');
  set status(String? value) => setField<String>('status', value);

  int? get pid => getField<int>('pid');
  set pid(int? value) => setField<int>('pid', value);

  dynamic get orderItems => getField<dynamic>('order_items');
  set orderItems(dynamic value) => setField<dynamic>('order_items', value);

  String? get orderId => getField<String>('order_id');
  set orderId(String? value) => setField<String>('order_id', value);
}
