part of 'add_commute_bloc.dart';

@freezed
class AddCommuteState with _$AddCommuteState {
  const factory AddCommuteState.initial() = _Initial;
  const factory AddCommuteState.refresh(int id) = Refresh;
  const factory AddCommuteState.loading() = Loading;
  const factory AddCommuteState.seccess() = Success;
  const factory AddCommuteState.failure(String error, int id) = Failure;
}
