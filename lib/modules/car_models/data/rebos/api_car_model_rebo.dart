import 'package:commuter_driver/core/networking/api_try_catch.dart';
import 'package:commuter_driver/modules/car_models/services/car_model_api_consts.dart';
import 'package:commuter_driver/modules/car_models/services/car_model_api_service.dart';
import 'package:dio/dio.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';

import '../../../../core/networking/api_result.dart';
import '../models/car_models_reponse_model.dart';
import '../models/manufacturer_response_model.dart';

class ApiCarModelRebo {
  final CarModelApiService apiService = CarModelApiService(
    Dio()
      ..interceptors.add(
        PrettyDioLogger(
          request: true,
          requestBody: true,
          responseBody: true,
          requestHeader: true,
        ),
      ),
    baseUrl: CarModelApiConsts.baseUrl,
  );

  Future<ApiResult<MakesResponseModel>> getMakes() =>
      apiTryCatch(apiCall: apiService.getMakes());

  Future<ApiResult<CarModelResponseModel>> getModels(String makeId) =>
      apiTryCatch(
        apiCall: apiService.getModels(makeId),
      );
}
