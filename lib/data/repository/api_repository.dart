import 'package:fids/data/model/weather_model.dart';

abstract class WeatherRepository {
  Future<WeatherModel?> getWeather(double latitude, double longitude);
}
