import 'package:commuter_driver/core/networking/api_service.dart';
import 'package:commuter_driver/modules/commutes/add_commute/data/models/add_commute_request_model.dart';
import 'package:dio/dio.dart';

import '../../../../../core/local_storage/local_storage_service.dart';
import '../../../../../core/networking/api_error_model.dart';
import '../../../../../core/networking/api_result.dart';

class AddCommuteRebo {
  final ApiService _apiService;
  final LocalStorageService _localStorageService;
  AddCommuteRebo(this._apiService, this._localStorageService);

  Future<ApiResult<void>> addCommute({
    required AddCommuteRequestModel addCommuteRequestModel,
  }) async {
    try {
      final userSecretDataModel = await _localStorageService.getUserSecretData;

      final response = await _apiService.addCommute(
        userSecretDataModel!.userId,
        addCommuteRequestModel,
      );
      return ApiResult.success(response);
    } on DioException catch (e) {
      return ApiResult.failure(ApiErrorModel.fromDioException(dioException: e));
    } catch (e) {
      return ApiResult.failure(ApiErrorModel.fromUnknown(e: e));
    }
  }
}
