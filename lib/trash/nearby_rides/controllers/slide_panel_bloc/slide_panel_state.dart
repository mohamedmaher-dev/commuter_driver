part of 'slide_panel_bloc.dart';

@freezed
class SlidePanelState with _$SlidePanelState {
  const factory SlidePanelState.initial() = _Initial;
  const factory SlidePanelState.refresh(int id) = Refresh;
}
