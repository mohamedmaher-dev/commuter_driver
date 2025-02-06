part of 'add_commute_bloc.dart';

@freezed
class AddCommuteEvent with _$AddCommuteEvent {
  const factory AddCommuteEvent.started() = _Started;
  const factory AddCommuteEvent.changeDays(Set<String> days) = ChangeDays;
  const factory AddCommuteEvent.addCommute({
    required AddCommutePickupBloc pickupBloc,
    required AddCommuteLandingBloc landingBloc,
    required AddRoundTripCubit roundTripCubit,
  }) = AddCommute;
}
