part of 'app_theme_bloc.dart';

@freezed
class AppThemeEvent with _$AppThemeEvent {
  const factory AppThemeEvent.started() = _Started;
  const factory AppThemeEvent.changeTheme() = _ChangeTheme;
}
