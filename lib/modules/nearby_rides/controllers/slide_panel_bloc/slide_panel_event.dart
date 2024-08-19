part of 'slide_panel_bloc.dart';

@freezed
class SlidePanelEvent with _$SlidePanelEvent {
  const factory SlidePanelEvent.started() = _Started;
  const factory SlidePanelEvent.iconHeaderClick(bool isOpen) = IconHeaderClick;
  const factory SlidePanelEvent.onPanelSlide(double position) = OnPanelSlide;
}
