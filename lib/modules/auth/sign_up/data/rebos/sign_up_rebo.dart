import 'package:commuter_driver/core/local_storage/local_storage_service.dart';
import 'package:commuter_driver/core/networking/api_service.dart';
import 'package:commuter_driver/modules/auth/sign_up/data/models/sign_up_request_model.dart';
import 'package:commuter_driver/modules/auth/sign_up/data/models/sign_up_response_model.dart';
import 'package:dio/dio.dart';

import '../../../../../core/local_storage/local_storage_result.dart';
import '../../../../../core/local_storage/models/user_data_model.dart';
import '../../../../../core/local_storage/models/user_secret_data_model.dart';
import '../../../../../core/networking/api_error_model.dart';
import '../../../../../core/networking/api_result.dart';

class SignUpRebo {
  final ApiService _apiService;
  final LocalStorageService _localStorageService;
  SignUpRebo(this._apiService, this._localStorageService);

  Future<ApiResult<SignUpResponseModel>> signUp({
    required SignUpRequestModel signUpRequestModel,
  }) async {
    try {
      final response = await _apiService.signUp(signUpRequestModel);
      return ApiResult.success(response);
    } on DioException catch (e) {
      return ApiResult.failure(ApiErrorModel.fromDioException(dioException: e));
    } catch (e) {
      return ApiResult.failure(ApiErrorModel.fromUnknown(e: e));
    }
  }

  Future<LocalStorageResult<UserSecretDataModel>> saveUserAuthInfo(
      {required String email,
      required String password,
      required UserDataModel userDataModel}) async {
    try {
      await _localStorageService.saveUserSecretData(
        userEmail: email,
        userPassword: password,
      );
      await _localStorageService.saveUserData(userDataModel: userDataModel);
      return const LocalStorageResult.success();
    } catch (e) {
      return LocalStorageResult.failure(error: e.toString());
    }
  }
}
