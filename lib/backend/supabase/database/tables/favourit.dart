import '../database.dart';

class FavouritTable extends SupabaseTable<FavouritRow> {
  @override
  String get tableName => 'favourit';

  @override
  FavouritRow createRow(Map<String, dynamic> data) => FavouritRow(data);
}

class FavouritRow extends SupabaseDataRow {
  FavouritRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => FavouritTable();

  int get fid => getField<int>('fid')!;
  set fid(int value) => setField<int>('fid', value);

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
}
