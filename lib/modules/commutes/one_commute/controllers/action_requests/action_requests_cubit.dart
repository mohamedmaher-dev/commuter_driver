import 'package:bloc/bloc.dart';
import 'package:commuter_driver/modules/commutes/one_commute/data/rebos/requests_repo.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'action_requests_state.dart';
part 'action_requests_cubit.freezed.dart';

class ActionRequestsCubit extends Cubit<ActionRequestsState> {
  final RequestsRepo _requestsRepo;
  ActionRequestsCubit(this._requestsRepo)
      : super(const ActionRequestsState.initial());
  Future<void> acceptRequest(String requestId) async {
    emit(const ActionRequestsState.loading());
    final result = await _requestsRepo.acceptRequest(requestId);
    result.when(
      success: (data) => emit(const ActionRequestsState.success()),
      failure: (error) => emit(const ActionRequestsState.failure()),
    );
  }

  Future<void> rejectRequest(String requestId) async {
    emit(const ActionRequestsState.loading());
    final result = await _requestsRepo.rejectRequest(requestId);
    result.when(
      success: (data) => emit(const ActionRequestsState.success()),
      failure: (error) => emit(const ActionRequestsState.failure()),
    );
  }
}
