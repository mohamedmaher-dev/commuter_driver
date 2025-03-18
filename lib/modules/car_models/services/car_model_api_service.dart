import 'package:commuter_driver/modules/car_models/data/models/manufacturer_response_model.dart';
import 'package:commuter_driver/modules/car_models/services/car_model_api_consts.dart';
import 'package:dio/dio.dart';
import 'package:retrofit/http.dart';

import '../data/models/car_models_reponse_model.dart';

part 'car_model_api_service.g.dart';

@RestApi()
abstract class CarModelApiService {
  factory CarModelApiService(Dio dio, {required String baseUrl}) =
      _CarModelApiService;
  @GET(CarModelApiConsts.getMakesForVehicleType)
  Future<MakesResponseModel> getMakes();

  @GET(CarModelApiConsts.getModelsForMake)
  Future<CarModelResponseModel> getModels(
    @Path() String makeId,
  );
}
