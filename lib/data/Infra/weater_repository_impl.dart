import 'dart:developer';
import 'package:dio/dio.dart';
import 'package:fids/configs/di/service_locator.dart';
import 'package:fids/data/database/app_database.dart';
import 'package:fids/data/model/weather_model.dart';
import 'package:fids/data/repository/api_repository.dart';
import 'package:uuid/uuid.dart';

var uuid = const Uuid();

class WeatherRepositoryImpl implements WeatherRepository {
  AppDatabase appDatabase = getIt.get<AppDatabase>();
  @override
  Future<WeatherModel?> getWeather(double latitude, double longitude) async {
    try {
      // appDatabase.weatherDao.saveWeather(weatherModel);
      final response = await _dio.get(
        "",
        queryParameters: {
          "lat": latitude.toString(),
          "lon": longitude.toString(),
          "appid": "a258a24e5e0cfd6e680d7cf6b225b197",
          "units": "metric"
        },
      );
      if (response.statusCode == 200) {
        final weatherModel = WeatherModel.fromJson(response.data);

        final weatherModelwithUid = weatherModel.copyWith(uid: uuid.v4());

        await appDatabase.weatherDao.saveWeather(weatherModelwithUid);

        return weatherModelwithUid;
      }
      return null;
    } catch (e) {
      log("error:::::::::: $e");
    }
    return null;
  }

  final Dio _dio = getIt.get<Dio>();
}
