import 'package:bloc/bloc.dart';
import 'package:commuter_driver/modules/commutes/one_commute/data/rebos/one_commute_rebo.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'set_commute_online_state.dart';
part 'set_commute_online_cubit.freezed.dart';

class SetCommuteOnlineCubit extends Cubit<SetCommuteOnlineState> {
  final OneCommuteRebo _rebo;
  SetCommuteOnlineCubit(this._rebo)
      : super(const SetCommuteOnlineState.initial());

  setCommuteOnline(int duration, String commuteId) async {
    emit(const SetCommuteOnlineState.loading());
    final result = await _rebo.setCommuteOnline(duration, commuteId);
    result.when(
      success: (data) => emit(const SetCommuteOnlineState.success()),
      failure: (e) => emit(const SetCommuteOnlineState.error()),
    );
  }
}
