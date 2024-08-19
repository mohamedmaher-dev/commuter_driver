part of 'nearby_rides_bloc.dart';

@freezed
class NearbyRidesState with _$NearbyRidesState {
  const factory NearbyRidesState.initial() = _Initial;

  const factory NearbyRidesState.getRidesLoading() = GetRidesLoading;
  const factory NearbyRidesState.getRidesSuccess() = GetRidesSuccess;
  const factory NearbyRidesState.getRidesFailure() = GetRidesFailure;

  const factory NearbyRidesState.acceptLoading() = AcceptLoading;
  const factory NearbyRidesState.acceptSuccess() = AcceptSuccess;
  const factory NearbyRidesState.acceptFailure() = AcceptFailure;
}
