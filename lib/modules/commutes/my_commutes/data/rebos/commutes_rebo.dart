import 'package:commuter_driver/core/local_storage/local_storage_service.dart';
import 'package:commuter_driver/core/networking/api_service.dart';
import 'package:dio/dio.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

import '../../../../../../core/location/location_service.dart';
import '../../../../../../core/networking/api_error_model.dart';
import '../../../../../../core/networking/api_result.dart';
import '../models/get_commutes_response_model.dart';

class CommutesRebo {
  final ApiService _apiService;
  final LocationService _locationService;
  final LocalStorageService _localStorageService;
  CommutesRebo(
    this._apiService,
    this._locationService,
    this._localStorageService,
  );

  Future<ApiResult<GetCommutesResponseModel>> getCommutes() async {
    try {
      final userSecretDataModel = await _localStorageService.getUserSecretData;

      final response = await _apiService.getCommutes(
        userSecretDataModel!.userId,
      );
      return ApiResult.success(response);
    } on DioException catch (e) {
      return ApiResult.failure(ApiErrorModel.fromDioException(dioException: e));
    } catch (e) {
      return ApiResult.failure(ApiErrorModel.fromUnknown(e: e));
    }
  }

  Future<ApiResult<void>> deleteCommute({required String commuteId}) async {
    try {
      final userSecretDataModel = await _localStorageService.getUserSecretData;

      final response = await _apiService.deleteCommute(
        userSecretDataModel!.userId,
        commuteId,
      );
      return ApiResult.success(response);
    } on DioException catch (e) {
      return ApiResult.failure(ApiErrorModel.fromDioException(dioException: e));
    } catch (e) {
      return ApiResult.failure(ApiErrorModel.fromUnknown(e: e));
    }
  }

  Future<List<({String pickup, String landing})>> decodeLocation(
      List<CommuteModel> commutes) async {
    List<({String pickup, String landing})> list = [];
    for (int i = 0; i < commutes.length; i++) {
      String pickup = await _locationService
          .getLocationName(
            latLng: LatLng(
              commutes[i].pickup.location.lat,
              commutes[i].pickup.location.long,
            ),
          )
          .then(
            (value) => value.street ?? 'Unknown',
          );
      String landing = await _locationService
          .getLocationName(
            latLng: LatLng(
              commutes[i].landing.location.lat,
              commutes[i].landing.location.long,
            ),
          )
          .then(
            (value) => value.street ?? 'Unknown',
          );
      list.add((pickup: pickup, landing: landing));
    }
    return list;
  }
}
