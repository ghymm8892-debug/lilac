import '../database.dart';

class ProductsTable extends SupabaseTable<ProductsRow> {
  @override
  String get tableName => 'products';

  @override
  ProductsRow createRow(Map<String, dynamic> data) => ProductsRow(data);
}

class ProductsRow extends SupabaseDataRow {
  ProductsRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => ProductsTable();

  int get pid => getField<int>('Pid')!;
  set pid(int value) => setField<int>('Pid', value);

  DateTime? get createdAt => getField<DateTime>('created_at');
  set createdAt(DateTime? value) => setField<DateTime>('created_at', value);

  String? get name => getField<String>('Name');
  set name(String? value) => setField<String>('Name', value);

  String? get img => getField<String>('Img');
  set img(String? value) => setField<String>('Img', value);

  String? get price => getField<String>('Price');
  set price(String? value) => setField<String>('Price', value);

  String? get bgColor => getField<String>('bgColor');
  set bgColor(String? value) => setField<String>('bgColor', value);

  int? get pd => getField<int>('PD');
  set pd(int? value) => setField<int>('PD', value);

  String? get category => getField<String>('category');
  set category(String? value) => setField<String>('category', value);

  int? get delivery => getField<int>('delivery');
  set delivery(int? value) => setField<int>('delivery', value);

  int? get stock => getField<int>('stock');
  set stock(int? value) => setField<int>('stock', value);
}
