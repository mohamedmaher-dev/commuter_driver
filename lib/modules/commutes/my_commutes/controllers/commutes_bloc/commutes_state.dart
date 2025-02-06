part of 'commutes_bloc.dart';

@freezed
class CommutesState with _$CommutesState {
  const factory CommutesState.initial() = _Initial;
  const factory CommutesState.deleteCommuteLoading() = DeleteCommuteLoading;
  const factory CommutesState.deleteFailure({required String error}) =
      DeleteFailure;
  const factory CommutesState.deleteSuccess() = DeleteSuccess;
  const factory CommutesState.getCommuteLoading() = GetCommuteLoading;

  const factory CommutesState.getCommutsFailure({required String error}) =
      GetCommutsFailure;
  const factory CommutesState.getCommutsSuccess() = GetCommutsSuccess;
  const factory CommutesState.empty() = Empty;
}
