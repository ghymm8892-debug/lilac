import '../database.dart';

class Order2ViewTable extends SupabaseTable<Order2ViewRow> {
  @override
  String get tableName => 'order2_view';

  @override
  Order2ViewRow createRow(Map<String, dynamic> data) => Order2ViewRow(data);
}

class Order2ViewRow extends SupabaseDataRow {
  Order2ViewRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => Order2ViewTable();

  String? get uid => getField<String>('uid');
  set uid(String? value) => setField<String>('uid', value);

  DateTime? get orderTime => getField<DateTime>('order_time');
  set orderTime(DateTime? value) => setField<DateTime>('order_time', value);

  String? get customerName => getField<String>('customer_name');
  set customerName(String? value) => setField<String>('customer_name', value);

  String? get phone => getField<String>('phone');
  set phone(String? value) => setField<String>('phone', value);

  String? get landmark => getField<String>('landmark');
  set landmark(String? value) => setField<String>('landmark', value);

  String? get status => getField<String>('status');
  set status(String? value) => setField<String>('status', value);

  String? get allProducts => getField<String>('all_products');
  set allProducts(String? value) => setField<String>('all_products', value);

  String? get allQuantities => getField<String>('all_quantities');
  set allQuantities(String? value) => setField<String>('all_quantities', value);

  String? get allPrices => getField<String>('all_prices');
  set allPrices(String? value) => setField<String>('all_prices', value);

  double? get totalOrderPrice => getField<double>('total_order_price');
  set totalOrderPrice(double? value) =>
      setField<double>('total_order_price', value);
}
