import 'package:fids/bloc/location_bloc/location_bloc.dart';
import 'package:fids/bloc/weather_bloc/weather_bloc.dart';
import 'package:fids/configs/constants/app_color.dart';
import 'package:fids/ui/screen/home/widgets/gradient_body.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:material_symbols_icons/symbols.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return BlocListener<LocationBloc, LocationState>(
        listener: (context, state) {
          if (state is LocationLoadingSuccess) {
            context.read<WeatherBloc>().add(WeatherGetRequest(
                latitude: state.latitude, longitude: state.longitude));
          }
        },
        child: Scaffold(
          backgroundColor: const Color(0xff094690),
          body: Stack(
            children: [
              const Positioned(
                child: GradientBody(),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 8.0, top: 8),
                child: Container(
                  width: 240,
                  height: 100,
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage('assets/images/logo1.png'),
                        fit: BoxFit.contain),
                  ),
                ),
              ),
              Positioned(
                top: 380.4,
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  height: 130,
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage('assets/images/himalayan.png'),
                        fit: BoxFit.fill),
                  ),
                ),
              ),
              Positioned(
                top: 510.4,
                child: Container(
                  color: Colors.white,
                  height: 355.9,
                  width: MediaQuery.of(context).size.width,
                ),
              ),
              BlocBuilder<WeatherBloc, WeatherState>(
                builder: (context, state) {
                  if (state is WeatherLoading) {
                    return const Center(
                      child: CircularProgressIndicator(),
                    );
                  } else if (state is WeatherLoadingSuccess) {
                    final weather = state.weatherModel!;
                    return Positioned(
                      top: 220,
                      left: 20,
                      child: SizedBox(
                        height: 132,
                        width: MediaQuery.of(context).size.width - 40,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "${weather.name}",
                                  style: const TextStyle(
                                    fontSize: 28,
                                    fontWeight: FontWeight.w600,
                                    color: AppColor.white,
                                  ),
                                ),
                                RichText(
                                  text: TextSpan(
                                    children: [
                                      const WidgetSpan(
                                        child: FaIcon(
                                          FontAwesomeIcons.temperatureFull,
                                          color: AppColor.white,
                                          size: 40,
                                        ),
                                      ),
                                      TextSpan(
                                        text: " ${weather.main!.temp} \u00B0C",
                                        style: const TextStyle(
                                            fontSize: 40,
                                            fontWeight: FontWeight.bold,
                                            color: AppColor.white),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                RichText(
                                  text: TextSpan(
                                    children: [
                                      const WidgetSpan(
                                        child: Icon(
                                            Symbols.humidity_percentage_rounded,
                                            fill: 1,
                                            size: 28,
                                            color: AppColor.white),
                                      ),
                                      TextSpan(
                                          text: "  ${weather.main!.humidity} %",
                                          style: const TextStyle(
                                              color: Colors.white,
                                              fontWeight: FontWeight.w600,
                                              fontSize: 20)),
                                    ],
                                  ),
                                ),
                                const SizedBox(
                                  height: 12,
                                ),
                                RichText(
                                  text: TextSpan(
                                    children: [
                                      const WidgetSpan(
                                        child: FaIcon(
                                          FontAwesomeIcons.wind,
                                          color: Colors.white,
                                        ),
                                      ),
                                      TextSpan(
                                        text:
                                            "   ${weather.wind!.speed.toString()} m/s",
                                        style: const TextStyle(
                                            color: AppColor.white,
                                            fontSize: 20,
                                            fontWeight: FontWeight.w600),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    );
                  } else if (state is WeatherLoadingFailed) {
                    return Center(
                      child: Text(state.weatherLoadingFailedMessage),
                    );
                  } else {
                    return const Center(
                      child: Text("Something went wrong"),
                    );
                  }
                },
              ),
            ],
          ),
        ));
  }
}
