import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:sliding_up_panel/sliding_up_panel.dart';

part 'slide_panel_event.dart';
part 'slide_panel_state.dart';
part 'slide_panel_bloc.freezed.dart';

class SlidePanelBloc extends Bloc<SlidePanelEvent, SlidePanelState> {
  PanelController panelController = PanelController();
  SlidePanelBloc() : super(const _Initial()) {
    on<SlidePanelEvent>(
      (event, emit) {
        event.when(
          started: () {},
          iconHeaderClick: (isOpen) {
            if (isOpen) {
              panelController.close();
            } else {
              panelController.open();
            }
            emit(SlidePanelState.refresh(state.hashCode));
          },
          onPanelSlide: (newPosition) {
            emit(SlidePanelState.refresh(state.hashCode));
          },
        );
      },
    );
  }
}
