import 'package:bloc/bloc.dart';
import 'package:commuter_driver/modules/commutes/one_commute/data/models/aproved_join_response_model.dart';
import 'package:commuter_driver/modules/commutes/one_commute/data/rebos/aproved_join_rebo.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'approved_join_state.dart';
part 'approved_join_cubit.freezed.dart';

class ApprovedJoinCubit extends Cubit<ApprovedJoinState> {
  final AprovedJoinRebo _aprovedJoinRebo;
  ApprovedJoinCubit(this._aprovedJoinRebo)
      : super(const ApprovedJoinState.loading());
  void getApprovedJoin(String commuteId) async {
    emit(const ApprovedJoinState.loading());
    final getAprovedJoinResult = await _aprovedJoinRebo.getAprovedJoin();
    getAprovedJoinResult.when(
      success: (data) async {
        if (data.aprovedJoin.isNotEmpty) {
          for (var element in data.aprovedJoin) {
            final getUserDataResult =
                await _aprovedJoinRebo.getMe(element.user);
            getUserDataResult.when(
              success: (result) => element.userData = result.userData,
              failure: (error) => emit(const ApprovedJoinState.failure()),
            );
          }
        } else {
          emit(const ApprovedJoinState.empty());
        }
        emitData(data, commuteId);
      },
      failure: (apiErrorModel) {
        emit(const ApprovedJoinState.empty());
      },
    );
  }

  void emitData(GetAprovedJoinResponseModel data, String commuteId) {
    final list = data.aprovedJoin
        .where((element) => element.commute == commuteId)
        .toList();
    if (list.isEmpty) {
      emit(const ApprovedJoinState.empty());
    } else {
      emit(ApprovedJoinState.success(list));
    }
  }
}
