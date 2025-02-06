part of 'action_requests_cubit.dart';

@freezed
class ActionRequestsState with _$ActionRequestsState {
  const factory ActionRequestsState.initial() = _Initial;
  const factory ActionRequestsState.loading() = _Loading;
  const factory ActionRequestsState.success() = _Success;
  const factory ActionRequestsState.failure() = _Failure;
}
