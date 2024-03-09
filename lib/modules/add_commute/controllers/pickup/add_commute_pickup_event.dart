part of 'add_commute_pickup_bloc.dart';

@freezed
class AddCommutePickupEvent with _$AddCommutePickupEvent {
  const factory AddCommutePickupEvent.started() = _Started;
  const factory AddCommutePickupEvent.setLocation(
      {required LatLng latLng, required Placemark placemark}) = SetLocation;
  const factory AddCommutePickupEvent.changeRange({required Set<int> range}) =
      ChangeRange;
  const factory AddCommutePickupEvent.setStartTime({required DateTime? time}) =
      SetStartTime;
  const factory AddCommutePickupEvent.setEndTime({required DateTime? time}) =
      SetEndTime;
}
