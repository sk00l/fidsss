import 'package:fids/configs/di/service_locator.dart';
import 'package:fids/data/repository/geolocator_repository.dart';
import 'package:geolocator/geolocator.dart';
import 'dart:developer';
import 'package:shared_preferences/shared_preferences.dart';

class GeoLocatorRepositoryImpl implements GeolocatorRepository {
  SharedPreferences pref = getIt.get<SharedPreferences>();

  @override
  Future<Position?> getCurrentLocationPosition() async {
    try {
      // await Geolocator.isLocationServiceEnabled();
      LocationPermission permission = await Geolocator.checkPermission();
      if (permission == LocationPermission.denied ||
          permission == LocationPermission.deniedForever) {
        log("Location Denied");
        permission = await Geolocator.requestPermission();
        if (permission == LocationPermission.denied ||
            permission == LocationPermission.deniedForever) {
          return null;
        }
      }

      if (permission == LocationPermission.whileInUse ||
          permission == LocationPermission.always) {
        Position currentPosition = await Geolocator.getCurrentPosition(
            desiredAccuracy: LocationAccuracy.high);
        log("lat: ${currentPosition.latitude}");
        log("lon: ${currentPosition.longitude}");
        await pref.setString('lat', currentPosition.latitude.toString());
        await pref.setString('lon', currentPosition.longitude.toString());
        return currentPosition;
      }
    } catch (e) {
      log(e.toString());
    }
    return null;
  }
}
