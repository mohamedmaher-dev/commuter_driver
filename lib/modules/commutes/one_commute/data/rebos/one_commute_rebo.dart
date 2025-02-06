import 'package:commuter_driver/core/local_storage/local_storage_service.dart';
import 'package:commuter_driver/core/location/location_service.dart';
import 'package:commuter_driver/core/networking/api_error_model.dart';
import 'package:commuter_driver/core/networking/api_service.dart';
import 'package:commuter_driver/core/networking/api_try_catch.dart';
import 'package:commuter_driver/modules/commutes/one_commute/data/models/set_commute_online_request_model.dart';
import 'package:commuter_driver/modules/commutes/one_commute/data/rebos/requests_repo.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

import '../../../../../core/networking/api_result.dart';

class OneCommuteRebo {
  final ApiService _apiService;
  final LocalStorageService _localStorageService;
  final LocationService _locationService;
  final RequestsRepo _requestsRepo;
  OneCommuteRebo(this._locationService, this._apiService,
      this._localStorageService, this._requestsRepo);
  Future<String> getLocationName({required LatLng latLng}) async {
    return await _locationService
        .getLocationName(latLng: latLng)
        .then((value) => value.thoroughfare ?? 'Unknown');
  }

  Future<ApiResult<void>> setCommuteOnline(
      int duration, String commuteId) async {
    final userData = await _localStorageService.getUserSecretData;
    final haveRequestsResult = await haveRequests(commuteId);
    if (haveRequestsResult) {
      return ApiResult.failure(ApiErrorModel.fromUnknown(e: "error"));
    } else {
      return await apiTryCatch(
        apiCall: _apiService.setCommuteOnline(
          userData!.userId,
          commuteId,
          SetCommuteOnlineRequestModel(duration: duration),
        ),
      );
    }
  }

  Future<bool> haveRequests(String commuteId) async {
    final requests = await _requestsRepo.getRequests();
    return requests.when(success: (data) {
      return data.requests.any((element) => element.commuterId == commuteId);
    }, failure: (e) {
      return false;
    });
  }
}
