import 'package:bloc/bloc.dart';
import 'package:commuter_driver/modules/commutes/one_commute/data/rebos/requests_repo.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import '../../data/models/get_requests_response_model.dart';
part 'requests_state.dart';
part 'requests_cubit.freezed.dart';

class RequestsCubit extends Cubit<RequestsState> {
  final RequestsRepo _repo;
  late List<RequestsResponseModelItem> requests;
  RequestsCubit(this._repo) : super(const RequestsState.loading());
  Future<void> getRequests(String commuteId) async {
    emit(const RequestsState.loading());
    final result = await _repo.getRequests();
    await result.when(
      success: (data) async {
        requests = data.requests
            .where((element) => element.commuterId == commuteId)
            .toList();
        if (requests.isEmpty) {
          emit(const RequestsState.failure());
        } else {
          await _getUsersData(requests);
          emitData();
        }
      },
      failure: (error) {
        emit(const RequestsState.failure());
      },
    );
  }

  Future<void> _getUsersData(
      Iterable<RequestsResponseModelItem> allRequests) async {
    for (var element in allRequests) {
      final getUserDataResult = await _repo.getMe(element.userId);
      getUserDataResult.when(
        success: (result) => element.userData = result.userData,
        failure: (error) => emit(const RequestsState.failure()),
      );
    }
  }

  void emitData() {
    emit(
      RequestsState.success(
        state.hashCode,
        requests
            .where((element) => element.type == RequestType.online)
            .toList(),
        requests
            .where((element) => element.type == RequestType.upcoming)
            .toList(),
        requests
            .where((element) => element.type == RequestType.offline)
            .toList(),
      ),
    );
  }
}
