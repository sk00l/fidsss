import 'package:equatable/equatable.dart';
import 'package:fids/configs/di/service_locator.dart';
import 'package:fids/data/repository/geolocator_repository.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'location_event.dart';
part 'location_state.dart';

class LocationBloc extends Bloc<LocationEvent, LocationState> {
  LocationBloc() : super(LocationInitial()) {
    on<GetLocationEvent>((event, emit) async {
      emit(LocationLoading());
      try {
        final position =
            await geoLocatorRepository.getCurrentLocationPosition();
        if (position != null) {
          emit(LocationLoadingSuccess(
              locationLoadingSuccessMessage: 'SUCCESS',
              latitude: position.latitude,
              longitude: position.longitude));
        } else {
          emit(const LocationLoadingFailed(
              locationLoadingFailureMessage: 'PERMISSION DENIED'));
        }
      } catch (e) {
        emit(const LocationLoadingFailed(
            locationLoadingFailureMessage: 'FAILURE'));
      }
    });
  }

  final GeolocatorRepository geoLocatorRepository =
      getIt.get<GeolocatorRepository>();
}
