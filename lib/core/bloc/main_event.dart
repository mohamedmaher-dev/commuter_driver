part of 'main_bloc.dart';

@freezed
class MainEvent with _$MainEvent {
  const factory MainEvent.started() = _Started;
  const factory MainEvent.changeLanguage() = ChangeLanguage;
  const factory MainEvent.changeTheme() = ChangeTheme;
  const factory MainEvent.changeConnectivity(bool isConnected) =
      ChangeConnectivity;
}
