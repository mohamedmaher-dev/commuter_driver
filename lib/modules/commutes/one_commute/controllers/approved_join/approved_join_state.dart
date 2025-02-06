part of 'approved_join_cubit.dart';

@freezed
class ApprovedJoinState with _$ApprovedJoinState {
  const factory ApprovedJoinState.loading() = _Loading;

  const factory ApprovedJoinState.success(List<AprovedJoinModel> aprovedJoin) =
      _Success;

  const factory ApprovedJoinState.failure() = _Failure;

  const factory ApprovedJoinState.empty() = _Empty;
}
