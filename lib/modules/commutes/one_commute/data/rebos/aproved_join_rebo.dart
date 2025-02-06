import 'package:commuter_driver/core/networking/api_service.dart';
import 'package:commuter_driver/modules/commutes/one_commute/data/models/aproved_join_response_model.dart';

import '../../../../../core/local_storage/local_storage_service.dart';
import '../../../../../core/models/get_user_data_resposne_model.dart';
import '../../../../../core/networking/api_result.dart';
import '../../../../../core/networking/api_try_catch.dart';

class AprovedJoinRebo {
  final ApiService _apiService;
  final LocalStorageService _localStorageService;
  AprovedJoinRebo({
    required ApiService apiService,
    required LocalStorageService localStorageService,
  })  : _apiService = apiService,
        _localStorageService = localStorageService;

  Future<ApiResult<GetAprovedJoinResponseModel>> getAprovedJoin() async {
    final userSecretDataModel = await _localStorageService.getUserSecretData;
    return apiTryCatch(
      apiCall: _apiService.getAprovedJoin(
        userSecretDataModel!.userId,
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
