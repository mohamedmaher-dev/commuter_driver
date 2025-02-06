part of 'requests_cubit.dart';

@freezed
class RequestsState with _$RequestsState {
  const factory RequestsState.loading() = _RequestsLoading;
  const factory RequestsState.success(
    int id,
    List<RequestsResponseModelItem> onlineRequests,
    List<RequestsResponseModelItem> upcomingRequests,
    List<RequestsResponseModelItem> offlineRequests,
  ) = _RequestsSuccess;
  const factory RequestsState.failure() = _RequestsFailure;
}
