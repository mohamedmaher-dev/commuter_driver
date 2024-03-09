import 'package:bloc/bloc.dart';
import 'package:commuter_driver/core/local_storage/local_storage_service.dart';
import 'package:commuter_driver/core/local_storage/models/app_settings_model.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'localization_event.dart';
part 'localization_state.dart';
part 'localization_bloc.freezed.dart';

class LocalizationBloc extends Bloc<LocalizationEvent, LocalizationState> {
  final LocalStorageService _localStorageService;
  late AppSettingsModel _appSettingsModel;
  Locale locale = const Locale('ar');
  LocalizationBloc(this._localStorageService) : super(const _Initial()) {
    on<LocalizationEvent>(
      (event, emit) async {
        await event.when(
          started: () async {
            _appSettingsModel = await _localStorageService.getAppSettings;
            if (_appSettingsModel.locale != null) {
              locale = Locale(_appSettingsModel.locale!);
            }
            emit(LocalizationState.refresh(locale: locale));
          },
          changeLanguage: () async {
            if (locale.languageCode == 'ar') {
              locale = const Locale('en');
            } else {
              locale = const Locale('ar');
            }
            await _localStorageService.saveAppLocale(
              locale: locale.languageCode,
            );
            emit(LocalizationState.refresh(locale: locale));
          },
        );
      },
    );
  }
}
