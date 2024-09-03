import 'package:fids/bloc/location_bloc/location_bloc.dart';
import 'package:fids/bloc/weather_bloc/weather_bloc.dart';
import 'package:fids/configs/di/service_locator.dart';
import 'package:fids/configs/services/router/app_router.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await setup();
  runApp(
    SizedBox(
      child: Image.asset(
        'assets/images/mobile-loading.png',
        fit: BoxFit.cover,
      ),
    ),
  );
  await Future.delayed(const Duration(seconds: 2));

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          lazy: false,
          create: (context) => LocationBloc()..add(GetLocationEvent()),
        ),
        BlocProvider(
          create: (context) => WeatherBloc(),
        ),
      ],
      child: MaterialApp.router(
        routerConfig: AppRouter.router,
      ),
    );
  }
}
