
import 'package:drift/drift.dart';
import 'package:fids/data/database/converters/weather_converter.dart';

class WeatherTable extends Table {
  TextColumn get uid => text()();
  TextColumn get coord => text().nullable().map(CoordConverter())();
  TextColumn get weatherList => text().nullable().map(WeatherListConverter())();
  TextColumn get base => text().nullable()();
  TextColumn get mainTemperature =>
      text().nullable().map(MainTemperatureConverter())();
  IntColumn get visibility => integer().nullable()();
  TextColumn get windDetails => text().nullable().map(WindDetailsConverter())();
  TextColumn get cloudDetails =>
      text().nullable().map(CloudDetailsConverter())();
  IntColumn get dt => integer().nullable()();
  TextColumn get sysDetails => text().nullable().map(SysDetailsConverter())();
  IntColumn get timezone => integer().nullable()();
  IntColumn get id => integer().nullable()();
  TextColumn get name => text().nullable()();
  IntColumn get cod => integer().nullable()();

  @override
  Set<Column>? get primaryKey => {uid};
}
