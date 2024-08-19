part of 'nav_bar_bloc.dart';

@freezed
class NavBarState with _$NavBarState {
  const factory NavBarState.initial() = _Initial;
  const factory NavBarState.refresh(int id) = Refresh;
}
