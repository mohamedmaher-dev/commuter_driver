import 'package:commuter_driver/core/local_storage/local_storage_service.dart';
import 'package:commuter_driver/core/local_storage/models/app_settings_model.dart';
import 'package:flutter/material.dart';

class LocalizationController {
  final LocalStorageService _localStorageService;
  late AppSettingsModel _appSettingsModel;
  late Locale locale;
  LocalizationController(this._localStorageService);
  Future<void> init() async {
    _appSettingsModel = await _localStorageService.getAppSettings;
    if (_appSettingsModel.locale != null) {
      // locale = Locale(_appSettingsModel.locale!);
      locale = const Locale('en');
    }
  }

  Future<void> changeLanguage() async {
    if (locale.languageCode == 'ar') {
      locale = const Locale('en');
    } else {
      locale = const Locale('ar');
    }
    _appSettingsModel = await _localStorageService.getAppSettings;
    await _localStorageService.saveAppSettings(
      appSettingsModel: _appSettingsModel.copyWith(
        locale: locale.languageCode,
      ),
    );
  }
}
