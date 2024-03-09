// ignore_for_file: library_private_types_in_public_api

import 'package:bloc/bloc.dart';
import 'package:commuter_driver/core/local_storage/local_storage_service.dart';
import 'package:commuter_driver/core/local_storage/models/app_settings_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import '../../di/di.dart';
part '../color_manger.dart';
part '../app_theme.dart';
part 'app_theme_event.dart';
part 'app_theme_state.dart';
part 'app_theme_bloc.freezed.dart';

class AppThemeBloc extends Bloc<AppThemeEvent, AppThemeState> {
  final LocalStorageService _localStorageService;
  late AppSettingsModel _appSettingsModel;
  _AppTheme get appTheme => _AppTheme();
  ThemeMode themeMode = ThemeMode.dark;
  AppThemeBloc(this._localStorageService) : super(const _Initial()) {
    on<AppThemeEvent>(
      (event, emit) async {
        await event.when(
          started: () async {
            _appSettingsModel = await _localStorageService.getAppSettings;

            if (_appSettingsModel.isDark != null) {
              themeMode =
                  _appSettingsModel.isDark! ? ThemeMode.dark : ThemeMode.light;
            }
            emit(AppThemeState.refresh(themeMode: themeMode));
          },
          changeTheme: () async {
            if (themeMode == ThemeMode.light) {
              themeMode = ThemeMode.dark;
            } else {
              themeMode = ThemeMode.light;
            }
            await _localStorageService.saveAppThemeMode(
              isDark: themeMode == ThemeMode.dark,
            );
            emit(AppThemeState.refresh(themeMode: themeMode));
          },
        );
      },
    );
  }
}
