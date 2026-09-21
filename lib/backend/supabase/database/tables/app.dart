import '../database.dart';

class AppTable extends SupabaseTable<AppRow> {
  @override
  String get tableName => 'app';

  @override
  AppRow createRow(Map<String, dynamic> data) => AppRow(data);
}

class AppRow extends SupabaseDataRow {
  AppRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => AppTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  DateTime? get createdAt => getField<DateTime>('created_at');
  set createdAt(DateTime? value) => setField<DateTime>('created_at', value);

  String? get ins => getField<String>('ins');
  set ins(String? value) => setField<String>('ins', value);

  String? get tiktok => getField<String>('tiktok');
  set tiktok(String? value) => setField<String>('tiktok', value);

  String? get yout => getField<String>('yout');
  set yout(String? value) => setField<String>('yout', value);
}
