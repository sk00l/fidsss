// ignore_for_file: public_member_api_docs, sort_constructors_first
part of 'weather_bloc.dart';

abstract class WeatherEvent {}

class WeatherGetRequest extends WeatherEvent {
  final double latitude;
  final double longitude;
  WeatherGetRequest({
    required this.latitude,
    required this.longitude,
  });

}
