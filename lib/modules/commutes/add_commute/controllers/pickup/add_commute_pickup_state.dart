part of 'add_commute_pickup_bloc.dart';

@freezed
class AddCommutePickupState with _$AddCommutePickupState {
  const factory AddCommutePickupState.initial() = _Initial;
  const factory AddCommutePickupState.refresh(int id) = Refresh;
}
