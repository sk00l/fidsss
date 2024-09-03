import 'dart:convert';

import 'package:drift/drift.dart';
import 'package:fids/data/model/weather_model.dart';

class CoordConverter extends TypeConverter<Coordinates, String> {
  @override
  Coordinates fromSql(String fromDb) {
    return Coordinates.fromJson(jsonDecode(fromDb));
  }

  @override
  String toSql(Coordinates value) {
    return jsonEncode(value.toJson());
  }
}

class WeatherListConverter extends TypeConverter<WeatherList, String> {
  @override
  WeatherList fromSql(String fromDb) {
    return WeatherList.fromJson(jsonDecode(fromDb));
  }

  @override
  String toSql(WeatherList value) {
    return jsonEncode(value.toJson());
  }
}

class MainTemperatureConverter extends TypeConverter<MainTemperature, String> {
  @override
  MainTemperature fromSql(String fromDb) {
    return MainTemperature.fromJson(jsonDecode(fromDb));
  }

  @override
  String toSql(MainTemperature value) {
    return jsonEncode(value.toJson());
  }
}


class WindDetailsConverter extends TypeConverter<WindDetails, String> {
  @override
  WindDetails fromSql(String fromDb) {
    return WindDetails.fromJson(jsonDecode(fromDb));
  }

  @override
  String toSql(WindDetails value) {
    return jsonEncode(value.toJson());
  }
}

class CloudDetailsConverter extends TypeConverter<CloudDetail, String> {
  @override
  CloudDetail fromSql(String fromDb) {
    return CloudDetail.fromJson(jsonDecode(fromDb));
  }

  @override
  String toSql(CloudDetail value) {
    return jsonEncode(value.toJson());
  }
}


class SysDetailsConverter extends TypeConverter<SysDetails, String> {
  @override
  SysDetails fromSql(String fromDb) {
    return SysDetails.fromJson(jsonDecode(fromDb));
  }

  @override
  String toSql(SysDetails value) {
    return jsonEncode(value.toJson());
  }
}
