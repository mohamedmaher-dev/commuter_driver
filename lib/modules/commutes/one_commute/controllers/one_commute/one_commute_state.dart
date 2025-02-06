part of 'one_commute_cubit.dart';

@freezed
class OneCommuteState with _$OneCommuteState {
  factory OneCommuteState.initial(int id) = _Initial;
  factory OneCommuteState.loading() = _Loading;
  factory OneCommuteState.success() = _Success;
  factory OneCommuteState.failure() = _Failure;
}
