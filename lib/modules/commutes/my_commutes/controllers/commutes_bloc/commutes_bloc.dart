import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../data/models/get_commutes_response_model.dart';
import '../../data/rebos/commutes_rebo.dart';

part 'commutes_event.dart';
part 'commutes_state.dart';
part 'commutes_bloc.freezed.dart';

class CommutesBloc extends Bloc<CommutesEvent, CommutesState> {
  final CommutesRebo _commutesRebo;
  late List<({String pickup, String landing})> locations;
  List<CommuteModel> commutes = [];
  CommutesBloc(this._commutesRebo) : super(const _Initial()) {
    on<CommutesEvent>(
      (event, emit) async {
        await event.when(
          started: () async {
            await _getCommutesMethod(emit);
          },
          deleteCommute: (commuteId) async {
            await deleteCommuteMethod(emit, commuteId);
          },
        );
      },
    );
  }

  Future<void> deleteCommuteMethod(
      Emitter<CommutesState> emit, String commuteId) async {
    emit(const CommutesState.deleteCommuteLoading());
    final getCommutesResult =
        await _commutesRebo.deleteCommute(commuteId: commuteId);
    await getCommutesResult.when(
      success: (data) async {
        await _getCommutesMethod(emit);
      },
      failure: (apiErrorModel) {
        emit(CommutesState.deleteFailure(error: apiErrorModel.msg));
      },
    );
  }

  Future<void> _getCommutesMethod(Emitter<CommutesState> emit) async {
    emit(const CommutesState.getCommuteLoading());
    final getCommutesResult = await _commutesRebo.getCommutes();
    await getCommutesResult.when(
      success: (data) async {
        commutes = data.data.commutes;
        if (data.data.commutes.isEmpty) {
          emit(const CommutesState.empty());
        } else {
          locations = await _commutesRebo.decodeLocation(commutes);
          emit(const CommutesState.getCommutsSuccess());
        }
      },
      failure: (apiErrorModel) {
        emit(CommutesState.getCommutsFailure(error: apiErrorModel.msg));
      },
    );
  }
}
