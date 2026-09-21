import '../database.dart';

class CartTable extends SupabaseTable<CartRow> {
  @override
  String get tableName => 'Cart';

  @override
  CartRow createRow(Map<String, dynamic> data) => CartRow(data);
}

class CartRow extends SupabaseDataRow {
  CartRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => CartTable();

  int get cid => getField<int>('cid')!;
  set cid(int value) => setField<int>('cid', value);

  DateTime? get createdAt => getField<DateTime>('created_at');
  set createdAt(DateTime? value) => setField<DateTime>('created_at', value);

  String? get name => getField<String>('Name');
  set name(String? value) => setField<String>('Name', value);

  int? get pid => getField<int>('PID');
  set pid(int? value) => setField<int>('PID', value);

  String? get price => getField<String>('Price');
  set price(String? value) => setField<String>('Price', value);

  String? get bgColor => getField<String>('bgColor');
  set bgColor(String? value) => setField<String>('bgColor', value);

  String? get img => getField<String>('Img');
  set img(String? value) => setField<String>('Img', value);

  String? get uid => getField<String>('UID');
  set uid(String? value) => setField<String>('UID', value);

  int? get quantity => getField<int>('Quantity');
  set quantity(int? value) => setField<int>('Quantity', value);

  String? get color => getField<String>('Color');
  set color(String? value) => setField<String>('Color', value);
}
