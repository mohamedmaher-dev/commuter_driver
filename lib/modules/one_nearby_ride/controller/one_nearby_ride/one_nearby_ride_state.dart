part of 'one_nearby_ride_bloc.dart';

@freezed
class OneNearbyRideState with _$OneNearbyRideState {
  const factory OneNearbyRideState.initial() = _Initial;
  const factory OneNearbyRideState.loading() = Loading;
  const factory OneNearbyRideState.pLoading() = PLoading;
  const factory OneNearbyRideState.success() = Success;
  const factory OneNearbyRideState.failure() = Failure;
  const factory OneNearbyRideState.startSuccess() = StartSuccess;
  const factory OneNearbyRideState.completeSuccess() = CompleteSuccess;
  const factory OneNearbyRideState.startFailure() = StartFailure;
  const factory OneNearbyRideState.completeFailure() = CompleteFailure;
}
