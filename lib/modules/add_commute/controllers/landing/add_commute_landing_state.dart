part of 'add_commute_landing_bloc.dart';

@freezed
class AddCommuteLandingState with _$AddCommuteLandingState {
  const factory AddCommuteLandingState.initial() = _Initial;
  const factory AddCommuteLandingState.refresh(int id) = Refresh;
}
