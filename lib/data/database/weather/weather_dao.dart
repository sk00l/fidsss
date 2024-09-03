import 'package:drift/drift.dart';
import 'package:fids/data/database/app_database.dart';
import 'package:fids/data/database/weather/weather_table.dart';
import 'package:fids/data/model/weather_model.dart';

part 'weather_dao.g.dart';

// the _TodosDaoMixin will be created by drift. It contains all the necessary
// fields for the tables. The <MyDatabase> type annotation is the database class
// that should use this dao.
@DriftAccessor(tables: [WeatherTable])
class WeatherDao extends DatabaseAccessor<AppDatabase> with _$WeatherDaoMixin {
  // this constructor is required so that the main database can create an instance
  // of this object.
  // ignore: use_super_parameters
  WeatherDao(AppDatabase db) : super(db);

  Future<List<WeatherModel>?> getWeather() async {
    final res = await select(weatherTable).get();

    return res
        .map((element) => WeatherModel(
              uid: element.uid,
              coord: element.coord,
              weather: [element.weatherList!],
              base: element.base,
              main: element.mainTemperature,
              visibility: element.visibility,
              wind: element.windDetails,
              clouds: element.cloudDetails,
              dt: element.dt,
              sys: element.sysDetails,
              timezone: element.timezone,
              id: element.id,
              name: element.name,
              cod: element.cod,
            ))
        .toList();
  }

  Future<WeatherModel> getWeatherById(String uid) async {
    final res = await (select(weatherTable)
          ..where((tbl) => tbl.uid.equals(uid)))
        .getSingleOrNull();
    if (res != null) {
      return WeatherModel(
        uid: res.uid,
        coord: res.coord,
        weather: [res.weatherList!],
        base: res.base,
        main: res.mainTemperature,
        visibility: res.visibility,
        wind: res.windDetails,
        clouds: res.cloudDetails,
        dt: res.dt,
        sys: res.sysDetails,
        timezone: res.timezone,
        id: res.id,
        name: res.name,
        cod: res.cod,
      );
    } else {
      return const WeatherModel();
    }
  }

  Future<int> saveWeather(WeatherModel weatherModel) async {
    return await into(weatherTable)
        .insertOnConflictUpdate(WeatherTableCompanion(
      uid: weatherModel.uid == null
          ? const Value.absent()
          : Value(weatherModel.uid ?? ""),
      coord: Value(weatherModel.coord),
      weatherList: Value(weatherModel.weather![0]),
      base: weatherModel.base == null
          ? const Value.absent()
          : Value(weatherModel.base ?? ""),
      mainTemperature: Value(weatherModel.main),
      visibility: weatherModel.visibility == null
          ? const Value.absent()
          : Value(weatherModel.visibility ?? 0),
      windDetails: Value(weatherModel.wind),
      cloudDetails: Value(weatherModel.clouds),
      dt: weatherModel.dt == null
          ? const Value.absent()
          : Value(weatherModel.dt ?? 0),
      sysDetails: Value(weatherModel.sys),
      timezone: weatherModel.timezone == null
          ? const Value.absent()
          : Value(weatherModel.timezone ?? 0),
      id: weatherModel.id == null
          ? const Value.absent()
          : Value(weatherModel.id ?? 0),
      name: weatherModel.name == null
          ? const Value.absent()
          : Value(weatherModel.name ?? ""),
      cod: weatherModel.cod == null
          ? const Value.absent()
          : Value(weatherModel.cod ?? 0),
    ));
  }

  Future<int> deleteWeather() async {
    return await delete(weatherTable).go();
  }

  Future<int> deleteWeatherById(String uid) async {
    return await (delete(weatherTable)..where((tbl) => tbl.uid.equals(uid)))
        .go();
  }
}
