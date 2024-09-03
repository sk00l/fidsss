import 'package:equatable/equatable.dart';
import 'package:fids/configs/di/service_locator.dart';
import 'package:fids/data/model/weather_model.dart';
import 'package:fids/data/repository/api_repository.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'weather_event.dart';
part 'weather_state.dart';

class WeatherBloc extends Bloc<WeatherEvent, WeatherState> {
  WeatherBloc() : super(WeatherInitial()) {
    on<WeatherGetRequest>((event, emit) async {
      try {
        emit(WeatherLoading());
        final response = await _weatherRepository.getWeather(event.latitude, event.longitude);
        emit(WeatherLoadingSuccess(
            weatherLoadingSuccessMessage: "SUCCESS", weatherModel: response));
      } catch (e) {
        emit(const WeatherLoadingFailed(weatherLoadingFailedMessage: 'ERROR'));
      }
    });
  }

  final WeatherRepository _weatherRepository = getIt.get<WeatherRepository>();
}
