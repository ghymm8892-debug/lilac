import '../database.dart';

class AddressTable extends SupabaseTable<AddressRow> {
  @override
  String get tableName => 'Address';

  @override
  AddressRow createRow(Map<String, dynamic> data) => AddressRow(data);
}

class AddressRow extends SupabaseDataRow {
  AddressRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => AddressTable();

  int get aid => getField<int>('aid')!;
  set aid(int value) => setField<int>('aid', value);

  String get name => getField<String>('Name')!;
  set name(String value) => setField<String>('Name', value);

  double? get phone => getField<double>('Phone');
  set phone(double? value) => setField<double>('Phone', value);

  String? get governorate => getField<String>('Governorate');
  set governorate(String? value) => setField<String>('Governorate', value);

  String? get city => getField<String>('City');
  set city(String? value) => setField<String>('City', value);

  String? get landmark => getField<String>('Landmark');
  set landmark(String? value) => setField<String>('Landmark', value);

  String? get uid => getField<String>('UID');
  set uid(String? value) => setField<String>('UID', value);
}
