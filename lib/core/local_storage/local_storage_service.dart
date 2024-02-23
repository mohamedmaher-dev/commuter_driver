import 'package:commuter_driver/core/local_storage/local_storage_consts.dart';
import 'package:commuter_driver/core/local_storage/models/user_data_model.dart';
import 'package:commuter_driver/core/local_storage/models/user_secret_data_model.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:hive_flutter/hive_flutter.dart';

class LocalStorageService {
  final FlutterSecureStorage _flutterSecureStorage;
  Box<UserDataModel>? _userDataBox;
  LocalStorageService(this._flutterSecureStorage) {
    Hive.registerAdapter(UserDataModelAdapter());
  }
  Future<UserSecretDataModel> get getUserSecretData async {
    return UserSecretDataModel.fromJson(await _flutterSecureStorage.readAll());
  }

  Future<void> saveUserSecretData(
      {required String userEmail, required String userPassword}) async {
    await _flutterSecureStorage.write(
      key: LocalStorageConsts.userEmailKey,
      value: userEmail,
    );
    await _flutterSecureStorage.write(
      key: LocalStorageConsts.userPasswordKey,
      value: userPassword,
    );
  }

  Future<UserDataModel?> get getUserData async {
    _userDataBox ??= await Hive.openBox(LocalStorageConsts.userBox);
    return _userDataBox!.get(0);
  }

  Future<void> saveUserData({required UserDataModel userDataModel}) async {
    _userDataBox ??= await Hive.openBox(LocalStorageConsts.userBox);
    await _userDataBox!.put(0, userDataModel);
  }

  Future<void> deleteUserData() async {
    _userDataBox ??= await Hive.openBox(LocalStorageConsts.userBox);
    await _userDataBox!.delete(0);
  }
}
