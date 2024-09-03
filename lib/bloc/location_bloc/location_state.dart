part of 'location_bloc.dart';

abstract class LocationState extends Equatable {
  const LocationState();

  @override
  List<Object?> get props => [];
}

final class LocationInitial extends LocationState {}

final class LocationLoading extends LocationState {}

final class LocationLoadingSuccess extends LocationState {
  final String locationLoadingSuccessMessage;
  final double latitude;
  final double longitude;

  const LocationLoadingSuccess({
    required this.latitude,
    required this.longitude,
    required this.locationLoadingSuccessMessage,
  });

  @override
  List<Object?> get props =>
      [locationLoadingSuccessMessage, longitude, latitude];
}

final class LocationLoadingFailed extends LocationState {
  final String locationLoadingFailureMessage;

  const LocationLoadingFailed({required this.locationLoadingFailureMessage});

  @override
  List<Object?> get props => [locationLoadingFailureMessage];
}
