import '../database.dart';

class SlidersTable extends SupabaseTable<SlidersRow> {
  @override
  String get tableName => 'sliders';

  @override
  SlidersRow createRow(Map<String, dynamic> data) => SlidersRow(data);
}

class SlidersRow extends SupabaseDataRow {
  SlidersRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => SlidersTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  String get img => getField<String>('Img')!;
  set img(String value) => setField<String>('Img', value);

  String? get link => getField<String>('Link');
  set link(String? value) => setField<String>('Link', value);

  int? get isProject => getField<int>('IsProject');
  set isProject(int? value) => setField<int>('IsProject', value);
}
