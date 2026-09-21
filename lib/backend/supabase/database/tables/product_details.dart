import '../database.dart';

class ProductDetailsTable extends SupabaseTable<ProductDetailsRow> {
  @override
  String get tableName => 'product_details';

  @override
  ProductDetailsRow createRow(Map<String, dynamic> data) =>
      ProductDetailsRow(data);
}

class ProductDetailsRow extends SupabaseDataRow {
  ProductDetailsRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => ProductDetailsTable();

  String? get about => getField<String>('About');
  set about(String? value) => setField<String>('About', value);

  dynamic get colorVerients => getField<dynamic>('colorVerients');
  set colorVerients(dynamic value) =>
      setField<dynamic>('colorVerients', value);

  String? get imgList => getField<String>('ImgList');
  set imgList(String? value) => setField<String>('ImgList', value);

  int get pd => getField<int>('PD')!;
  set pd(int value) => setField<int>('PD', value);

  double? get rate => getField<double>('Rate');
  set rate(double? value) => setField<double>('Rate', value);

  int? get comments => getField<int>('Comments');
  set comments(int? value) => setField<int>('Comments', value);

  dynamic get sizeVeriients => getField<dynamic>('SizeVeriients');
  set sizeVeriients(dynamic value) =>
      setField<dynamic>('SizeVeriients', value);
}
