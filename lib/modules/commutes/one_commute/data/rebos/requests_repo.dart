import 'package:commuter_driver/core/local_storage/local_storage_service.dart';
import 'package:commuter_driver/core/networking/api_result.dart';
import 'package:commuter_driver/core/networking/api_service.dart';
import 'package:commuter_driver/core/networking/api_try_catch.dart';
import 'package:commuter_driver/modules/commutes/one_commute/data/models/get_requests_response_model.dart';
import 'package:commuter_driver/core/models/get_user_data_resposne_model.dart';

class RequestsRepo {
  final ApiService _apiService;
  final LocalStorageService _localStorageService;
  RequestsRepo({
    required ApiService apiService,
    required LocalStorageService localStorageService,
  })  : _apiService = apiService,
        _localStorageService = localStorageService;

  Future<ApiResult<GetRequestsResponseModel>> getRequests() async {
    final userSecretDataModel = await _localStorageService.getUserSecretData;
    return apiTryCatch(
      apiCall: _apiService.getRequests(
        userSecretDataModel!.userId,
      ),
    );
  }

  Future<ApiResult<void>> acceptRequest(String requestId) async {
    return apiTryCatch(
      apiCall: _apiService.acceptRequest(
        requestId,
      ),
    );
  }

  Future<ApiResult<void>> rejectRequest(String requestId) async {
    return apiTryCatch(
      apiCall: _apiService.rejectRequest(
        requestId,
      ),
    );
  }

  Future<ApiResult<GetUserDataResponseModel>> getMe(String userId) async {
    return apiTryCatch(
      apiCall: _apiService.getUser(
        userId,
      ),
    );
  }
}
