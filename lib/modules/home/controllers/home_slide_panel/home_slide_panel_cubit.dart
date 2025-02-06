import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:sliding_up_panel/sliding_up_panel.dart';
import '../../../commutes/my_commutes/data/models/get_commutes_response_model.dart';
part 'home_slide_panel_state.dart';
part 'home_slide_panel_cubit.freezed.dart';

class HomeSlidePanelCubit extends Cubit<HomeSlidePanelState> {
  HomeSlidePanelCubit() : super(HomeSlidePanelState.initial(0.0));
  PanelController controller = PanelController();
  late CommuteModel commuteModel;
  void onChoseTabCommute(CommuteModel commuteModel) {
    this.commuteModel = commuteModel;
    if (controller.isPanelOpen) {
      controller.close();
    } else {
      controller.open();
    }
  }

  void onPanelSlide(double position) {
    emit(HomeSlidePanelState.initial(position));
  }
}
