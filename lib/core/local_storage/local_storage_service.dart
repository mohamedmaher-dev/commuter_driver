import 'package:commuter_driver/core/local_storage/local_storage_consts.dart';
import 'package:commuter_driver/core/local_storage/models/app_settings_model.dart';
import 'package:commuter_driver/core/local_storage/models/user_secret_data_model.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:hive/hive.dart';

class LocalStorageService {
  final FlutterSecureStorage _flutterSecureStorage;
  late Box<AppSettingsModel> _appSettingsBox;
  LocalStorageService(this._flutterSecureStorage) {
    Hive.registerAdapter(AppSettingsModelAdapter());
  }

  Future<UserSecretDataModel?> get getUserSecretData async {
    Map<String, String> userSecretData = await _flutterSecureStorage.readAll();
    if (userSecretData.isEmpty) {
      return null;
    } else {
      return UserSecretDataModel.fromJson(userSecretData);
    }
  }

  Future<UserSecretDataModel> saveUserSecretData({
    required String userEmail,
    required String userPassword,
    required String userId,
    required String userToken,
  }) async {
    await _flutterSecureStorage.write(
      key: LocalStorageConsts.userEmailKey,
      value: userEmail,
    );
    await _flutterSecureStorage.write(
      key: LocalStorageConsts.userPasswordKey,
      value: userPassword,
    );
    await _flutterSecureStorage.write(
      key: LocalStorageConsts.userIdKey,
      value: userId,
    );
    await _flutterSecureStorage.write(
      key: LocalStorageConsts.userTokenKey,
      value: userToken,
    );
    return UserSecretDataModel(
      userId: userId,
      userToken: userToken,
      email: userEmail,
      password: userPassword,
    );
  }

  Future<void> deleteUserSecretData() async {
    await _flutterSecureStorage.deleteAll();
  }

  Future<AppSettingsModel> get getAppSettings async {
    _appSettingsBox =
        await Hive.openBox<AppSettingsModel>(LocalStorageConsts.appSettingsBox);
    if (_appSettingsBox.get(0) == null) {
      await _appSettingsBox.put(0, AppSettingsModel.init());
    }
    return _appSettingsBox.get(0)!;
  }

  Future<void> saveAppLocale({
    required String locale,
  }) async {
    _appSettingsBox =
        await Hive.openBox<AppSettingsModel>(LocalStorageConsts.appSettingsBox);
    if (_appSettingsBox.get(0) == null) {
      await _appSettingsBox.put(0, AppSettingsModel.init());
    }
    _appSettingsBox.put(0, _appSettingsBox.get(0)!.copyWith(locale: locale));
  }

  Future<void> saveAppThemeMode({
    required bool isDark,
  }) async {
    _appSettingsBox =
        await Hive.openBox<AppSettingsModel>(LocalStorageConsts.appSettingsBox);
    if (_appSettingsBox.get(0) == null) {
      await _appSettingsBox.put(0, AppSettingsModel.init());
    }
    _appSettingsBox.put(0, _appSettingsBox.get(0)!.copyWith(isDark: isDark));
  }
}
