part of 'weather_bloc.dart';

abstract class WeatherState extends Equatable {
  const WeatherState();
  @override
  List<Object?> get props => [];
}

class WeatherInitial extends WeatherState {}

class WeatherLoading extends WeatherState {}

class WeatherLoadingSuccess extends WeatherState {
  final WeatherModel? weatherModel;
  final String weatherLoadingSuccessMessage;

  const WeatherLoadingSuccess({required this.weatherLoadingSuccessMessage, required this.weatherModel});

  @override
  List<Object?> get props => [weatherLoadingSuccessMessage];
}

class WeatherLoadingFailed extends WeatherState {
  final String weatherLoadingFailedMessage;

  const WeatherLoadingFailed({required this.weatherLoadingFailedMessage});

  @override
  List<Object?> get props => [weatherLoadingFailedMessage];
}
