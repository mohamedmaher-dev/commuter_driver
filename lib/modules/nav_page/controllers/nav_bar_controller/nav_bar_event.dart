part of 'nav_bar_bloc.dart';

@freezed
class NavBarEvent with _$NavBarEvent {
  const factory NavBarEvent.started() = _Started;
  const factory NavBarEvent.changePage({required Pages newPage}) = ChangePage;
}
