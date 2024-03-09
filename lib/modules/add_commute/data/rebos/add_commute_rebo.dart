import 'package:commuter_driver/core/local_storage/models/user_secret_data_model.dart';
import 'package:commuter_driver/core/networking/api_service.dart';
import 'package:commuter_driver/modules/add_commute/data/models/add_commute_request_model.dart';
import 'package:dio/dio.dart';

import '../../../../core/networking/api_error_model.dart';
import '../../../../core/networking/api_result.dart';

class AddCommuteRebo {
  final ApiService _apiService;
  final UserSecretDataModel _secretDataModel;
  AddCommuteRebo(this._apiService, this._secretDataModel);

  Future<ApiResult<void>> addCommute({
    required AddCommuteRequestModel addCommuteRequestModel,
  }) async {
    try {
      final response = await _apiService.addCommute(
        "Bearer ${_secretDataModel.userToken}",
        _secretDataModel.userId,
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
