import 'package:commuter_driver/core/local_storage/local_storage_result.dart';
import 'package:commuter_driver/core/local_storage/models/user_secret_data_model.dart';
import 'package:commuter_driver/core/networking/api_error_model.dart';
import 'package:commuter_driver/core/networking/api_result.dart';
import 'package:commuter_driver/core/networking/api_service.dart';
import 'package:commuter_driver/modules/auth/sign_in/data/models/sign_in_request_model.dart';
import 'package:commuter_driver/modules/auth/sign_in/data/models/sign_in_response_model.dart';
import 'package:dio/dio.dart';

import '../../../../../core/local_storage/local_storage_service.dart';
import '../../../otp_forgot_password/data/models/forgot_pass_request_model.dart';
import '../../../otp_forgot_password/data/models/forgot_pass_response_model.dart';

class SignInRebo {
  final ApiService _apiService;
  final LocalStorageService _localStorageService;
  const SignInRebo(this._apiService, this._localStorageService);

  Future<ApiResult<SignInResponseModel>> signIn({
    required SignInRequestModel signInRequestModel,
  }) async {
    try {
      final response = await _apiService.signIn(signInRequestModel);
      return ApiResult.success(response);
    } on DioException catch (e) {
      return ApiResult.failure(ApiErrorModel.fromDioException(dioException: e));
    } catch (e) {
      return ApiResult.failure(ApiErrorModel.fromUnknown(e: e));
    }
  }

  Future<ApiResult<ForgotPassResponseModel>> sendResetCode({
    required ForgotPassRequestModel forgotPassRequestModel,
  }) async {
    try {
      final response = await _apiService.sendResetCode(forgotPassRequestModel);
      return ApiResult.success(response);
    } on DioException catch (e) {
      return ApiResult.failure(ApiErrorModel.fromDioException(dioException: e));
    } catch (e) {
      return ApiResult.failure(ApiErrorModel.fromUnknown(e: e));
    }
  }

  Future<LocalStorageResult<UserSecretDataModel>> saveUserAuthInfo({
    required String email,
    required String password,
    required String id,
    required String token,
  }) async {
    try {
      final userSecretDataModel = await _localStorageService.saveUserSecretData(
        userEmail: email,
        userPassword: password,
        userId: id,
        userToken: token,
      );
      return LocalStorageResult.success(result: userSecretDataModel);
    } catch (e) {
      return LocalStorageResult.failure(error: e.toString());
    }
  }
}
