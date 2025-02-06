part of 'one_nearby_ride_bloc.dart';

@freezed
class OneNearbyRideEvent with _$OneNearbyRideEvent {
  const factory OneNearbyRideEvent.started() = _Started;
  const factory OneNearbyRideEvent.startRide() = StartRide;
  const factory OneNearbyRideEvent.completeRide() = CompleteRide;
}
