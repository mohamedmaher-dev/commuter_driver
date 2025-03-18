import 'package:bloc/bloc.dart';
import 'package:commuter_driver/modules/commutes/one_commute/data/rebos/one_commute_rebo.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../my_commutes/data/models/get_commutes_response_model.dart';

part 'one_commute_state.dart';
part 'one_commute_cubit.freezed.dart';

class OneCommuteCubit extends Cubit<OneCommuteState> {
  final OneCommuteRebo _rebo;
  late int timeWindow;
  late int range;
  late String pickup;
  late String dropoff;
  OneCommuteCubit(this._rebo) : super(OneCommuteState.initial(0));
  Future<void> start(CommuteModel commuteModel) async {
    emit(OneCommuteState.loading());
    timeWindow = commuteModel.pickup.timeWindow.toMinutes();
    range = commuteModel.pickup.range;
    pickup = await _rebo.getLocationName(
        latLng: commuteModel.pickup.location.toLatLng());
    print("================= ${commuteModel.pickup.location.toLatLng()}");
    dropoff = await _rebo.getLocationName(
        latLng: commuteModel.landing.location.toLatLng());
    emit(OneCommuteState.success());
  }
}
