part of 'set_commute_online_cubit.dart';

@freezed
class SetCommuteOnlineState with _$SetCommuteOnlineState {
  const factory SetCommuteOnlineState.initial() = _Initial;
  const factory SetCommuteOnlineState.loading() = _Loading;
  const factory SetCommuteOnlineState.success() = _Success;
  const factory SetCommuteOnlineState.error() = _Error;
}
