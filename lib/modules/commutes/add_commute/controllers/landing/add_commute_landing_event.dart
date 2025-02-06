part of 'add_commute_landing_bloc.dart';

@freezed
class AddCommuteLandingEvent with _$AddCommuteLandingEvent {
  const factory AddCommuteLandingEvent.started() = _Started;
  const factory AddCommuteLandingEvent.setLocation(
      {required LatLng latLng, required Placemark placemark}) = SetLocation;
  const factory AddCommuteLandingEvent.changeRange({required Set<int> range}) =
      ChangeRange;
  const factory AddCommuteLandingEvent.setStartTime({required DateTime? time}) =
      SetStartTime;
  const factory AddCommuteLandingEvent.setEndTime({required DateTime? time}) =
      SetEndTime;
}
