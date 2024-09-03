import 'package:dio/dio.dart';
import 'package:fids/bloc/weather_bloc/weather_bloc.dart';
import 'package:fids/configs/constants/api_endpoints.dart';
import 'package:fids/configs/services/api/dio_helper.dart';
import 'package:fids/data/Infra/geo_locator_repo_impl.dart';
import 'package:fids/data/Infra/weater_repository_impl.dart';
import 'package:fids/data/database/app_database.dart';
import 'package:fids/data/repository/api_repository.dart';
import 'package:fids/data/repository/geolocator_repository.dart';
import 'package:get_it/get_it.dart';
import 'package:shared_preferences/shared_preferences.dart';

final getIt = GetIt.instance;

Future<void> setup() async {
  final sharedPreferences = await SharedPreferences.getInstance();
  getIt.registerSingleton<SharedPreferences>(sharedPreferences);

  getIt.registerSingleton<Dio>(
    Dio(
      BaseOptions(
          baseUrl: ApiEndpoints.baseURl,
          connectTimeout: const Duration(seconds: 5000),
          receiveTimeout: const Duration(seconds: 5000),
          headers: {
            'Content-Type': "application/json",
          }),
    ),
  );

  GetIt.I.registerSingleton<GeolocatorRepository>(GeoLocatorRepositoryImpl());

  getIt.registerSingleton<DioHelper>(DioHelper());

  getIt.registerSingleton<AppDatabase>(AppDatabase());
  GetIt.I.registerSingleton<WeatherRepository>(WeatherRepositoryImpl());

  getIt.registerSingleton<WeatherBloc>(WeatherBloc());
}
