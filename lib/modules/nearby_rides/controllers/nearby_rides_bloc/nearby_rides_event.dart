part of 'nearby_rides_bloc.dart';

@freezed
class NearbyRidesEvent with _$NearbyRidesEvent {
  const factory NearbyRidesEvent.started() = _Started;
  const factory NearbyRidesEvent.acceptRide(int index) = AcceptRide;
  const factory NearbyRidesEvent.goTo(LatLng location) = GoTo;
  const factory NearbyRidesEvent.onMapCreated(GoogleMapController controller) =
      OnMapCreated;
}
