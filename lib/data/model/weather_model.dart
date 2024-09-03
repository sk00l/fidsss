// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

part 'weather_model.freezed.dart';
part 'weather_model.g.dart';

@freezed
class WeatherModel with _$WeatherModel {
  const factory WeatherModel({
    String? uid,
    Coordinates? coord,
    List<WeatherList>? weather,
    String? base,
    MainTemperature? main,
    int? visibility,
    WindDetails? wind,
    CloudDetail? clouds,
    int? dt,
    SysDetails? sys,
    int? timezone,
    int? id,
    String? name,
    int? cod,
  }) = _WeatherModel;

  factory WeatherModel.fromJson(Map<String, dynamic> json) =>
      _$WeatherModelFromJson(json);
} // End of WeatherModel class

@freezed
class Coordinates with _$Coordinates {
  const factory Coordinates({
    double? lon,
    double? lat,
  }) = _Coordinates;

  factory Coordinates.fromJson(Map<String, dynamic> json) =>
      _$CoordinatesFromJson(json);
} // End of Coordinates class

@freezed
class WeatherList with _$WeatherList {
  const factory WeatherList({
    int? id,
    String? main,
    String? description,
    String? icon,
  }) = _WeatherList;

  factory WeatherList.fromJson(Map<String, dynamic> json) =>
      _$WeatherListFromJson(json);
} // End of WeatherList class

@freezed
class MainTemperature with _$MainTemperature {
  const factory MainTemperature({
    double? temp,
    @JsonKey(name: "feels_like") double? feelsLike,
    @JsonKey(name: "temp_min") double? tempMin,
    @JsonKey(name: "temp_max") double? tempMax,
    int? pressure,
    int? humidity,
  }) = _MainTemperature;

  factory MainTemperature.fromJson(Map<String, dynamic> json) =>
      _$MainTemperatureFromJson(json);
} // End of MainTemperature class

@freezed
class WindDetails with _$WindDetails {
  const factory WindDetails({
    double? speed,
    int? deg,
  }) = _WindDetails;

  factory WindDetails.fromJson(Map<String, dynamic> json) =>
      _$WindDetailsFromJson(json);
} // End of WindDetails class

@freezed
class CloudDetail with _$CloudDetail {
  const factory CloudDetail({
    int? all,
  }) = _CloudDetail;

  factory CloudDetail.fromJson(Map<String, dynamic> json) =>
      _$CloudDetailFromJson(json);
} // End of CloudDetail class

@freezed
class SysDetails with _$SysDetails {
  const factory SysDetails({
    int? type,
    int? id,
    String? country,
    int? sunrise,
    int? sunset,
  }) = _SysDetails;

  factory SysDetails.fromJson(Map<String, dynamic> json) =>
      _$SysDetailsFromJson(json);
} // End of SysDetails class
