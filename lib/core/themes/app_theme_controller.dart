import 'package:commuter_driver/core/themes/app_theme_data.dart';
import 'package:flutter/material.dart';
import '../local_storage/local_storage_service.dart';
import '../local_storage/models/app_settings_model.dart';
import 'color_manger.dart';

class AppThemeController {
  static const font = 'Changa';
  final LocalStorageService _localStorageService;
  late ThemeMode themeMode;
  late AppSettingsModel _appSettingsModel;
  AppThemeController(this._localStorageService);
  ThemeData get theme => ThemeData(
        colorScheme: ColorManger.colorScheme,
        fontFamily: font,
        filledButtonTheme: AppThemeData.filledButtonThemeData,
        outlinedButtonTheme: AppThemeData.outlinedButtonThemeData,
        elevatedButtonTheme: AppThemeData.elevatedButtonThemeData,
        textButtonTheme: AppThemeData.textButtonThemeData,
        inputDecorationTheme: AppThemeData.inputDecorationTheme,
        pageTransitionsTheme: AppThemeData.pageTransitionsTheme,
        iconButtonTheme: AppThemeData.iconButtonThemeData,
        segmentedButtonTheme: AppThemeData.segmentedButtonTheme,
        floatingActionButtonTheme: AppThemeData.floatingActionButtonTheme,
      );

  Future<void> init() async {
    _appSettingsModel = await _localStorageService.getAppSettings;

    if (_appSettingsModel.isDark != null) {
      themeMode = _appSettingsModel.isDark! ? ThemeMode.dark : ThemeMode.light;
    }
  }

  Future<void> changeTheme() async {
    if (themeMode == ThemeMode.light) {
      themeMode = ThemeMode.dark;
    } else {
      themeMode = ThemeMode.light;
    }
    _appSettingsModel = await _localStorageService.getAppSettings;
    await _localStorageService.saveAppSettings(
      appSettingsModel: _appSettingsModel.copyWith(
        isDark: themeMode == ThemeMode.dark,
      ),
    );
  }
}
