import 'package:commuter_driver/core/local_storage/local_storage_result.dart';
import 'package:commuter_driver/core/local_storage/local_storage_service.dart';
import 'package:commuter_driver/core/local_storage/models/user_secret_data_model.dart';
import 'package:commuter_driver/core/networking/api_service.dart';
import 'package:dio/dio.dart';

import '../../../../core/local_storage/models/user_data_model.dart';
import '../../../../core/networking/api_error_model.dart';
import '../../../../core/networking/api_result.dart';
import '../../../auth/sign_in/data/models/sign_in_request_model.dart';
import '../../../auth/sign_in/data/models/sign_in_response_model.dart';

class SplashRebo {
  final ApiService _apiService;
  final LocalStorageService _localStorageService;
  const SplashRebo(this._localStorageService, this._apiService);

  Future<LocalStorageResult<bool>> isLogin() async {
    try {
      UserDataModel? userDataModel = await _localStorageService.getUserData;
      return LocalStorageResult.success(
        result: userDataModel == null ? false : true,
      );
    } catch (e) {
      return LocalStorageResult.failure(error: e.toString());
    }
  }

  Future<ApiResult<SignInResponseModel>> signIn() async {
    try {
      final UserSecretDataModel userSecretDataModel =
          await _localStorageService.getUserSecretData;
      SignInRequestModel signInRequestModel = SignInRequestModel(
        email: userSecretDataModel.email,
        password: userSecretDataModel.password,
      );
      final response = await _apiService.signIn(signInRequestModel);
      return ApiResult.success(response);
    } on DioException catch (e) {
      return ApiResult.failure(ApiErrorModel.fromDioException(dioException: e));
    } catch (e) {
      return ApiResult.failure(ApiErrorModel.fromUnknown(e: e));
    }
  }

  Future<LocalStorageResult<UserSecretDataModel>> saveUserAuthInfo(
      {required UserDataModel userDataModel}) async {
    try {
      await _localStorageService.saveUserData(userDataModel: userDataModel);
      return const LocalStorageResult.success();
    } catch (e) {
      return LocalStorageResult.failure(error: e.toString());
    }
  }
}
