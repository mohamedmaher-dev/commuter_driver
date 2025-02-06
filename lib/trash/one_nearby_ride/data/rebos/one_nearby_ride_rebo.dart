import 'package:commuter_driver/core/networking/api_service.dart';
import 'package:commuter_driver/trash/one_nearby_ride/data/models/complete_ride_request_model.dart';
import 'package:dio/dio.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import '../../../../core/location/location_service.dart';
import '../../../../core/location/models/routes_model/get_routes_request_model.dart';
import '../../../../core/location/models/routes_model/get_routes_response_model.dart';
import '../../../../core/networking/api_error_model.dart';
import '../../../../core/networking/api_result.dart';
import '../../../../core/themes/app_theme_controller.dart';

class OneNearbyRideRebo {
  final ApiService _apiService;
  final LocationService _locationService;
  OneNearbyRideRebo({
    required ApiService apiService,
    required LocationService locationService,
  })  : _apiService = apiService,
        _locationService = locationService;

  Future<Polyline> getPolyline(LatLng toLocation) async {
    final currentLocation = await _locationService.getCurrentPosition();
    final points = await _locationService.getRoutes(
      getRoutesRequestModel: GetRoutesRequestModel(
        origin: GetRoutesAddPoint(
          location: GetRoutesAddLocation(
            latLng: GetRoutesAddLatLng(
              latitude: currentLocation!.latitude,
              longitude: currentLocation.longitude,
            ),
          ),
        ),
        destination: GetRoutesAddPoint(
          location: GetRoutesAddLocation(
            latLng: GetRoutesAddLatLng(
              latitude: toLocation.latitude,
              longitude: toLocation.longitude,
            ),
          ),
        ),
      ),
    );
    return Polyline(
      polylineId: const PolylineId('1'),
      color: ColorManger.primaryContainer,
      width: 3,
      points: points,
    );
  }

  Future<ApiResult<void>> startRide(String rideId) async {
    try {
      final response = await _apiService.startRide(
        rideId,
      );
      return ApiResult.success(response);
    } on DioException catch (e) {
      return ApiResult.failure(ApiErrorModel.fromDioException(dioException: e));
    } catch (e) {
      return ApiResult.failure(ApiErrorModel.fromUnknown(e: e));
    }
  }

  Future<ApiResult<void>> completeRide(String rideId) async {
    try {
      final response = await _apiService.completeRide(
        CompleteRideRequestModel(rideId: rideId),
      );
      return ApiResult.success(response);
    } on DioException catch (e) {
      return ApiResult.failure(ApiErrorModel.fromDioException(dioException: e));
    } catch (e) {
      return ApiResult.failure(ApiErrorModel.fromUnknown(e: e));
    }
  }

  Future<String> getLoactionName({required LatLng latLng}) async {
    return await _locationService.getLocationName(latLng: latLng).then(
          (value) => value.street!,
        );
  }

  Future<GetRoutesResponseModel?> getRouteInfo(LatLng toLocation) async {
    final currentLocation = await _locationService.getCurrentPosition();
    return null;
    // return await _locationService.g(
    //   getRoutesRequestModel: GetRoutesRequestModel(
    //     origin: GetRoutesAddPoint(
    //       location: GetRoutesAddLocation(
    //         latLng: GetRoutesAddLatLng(
    //           latitude: currentLocation!.latitude,
    //           longitude: currentLocation.longitude,
    //         ),
    //       ),
    //     ),
    //     destination: GetRoutesAddPoint(
    //       location: GetRoutesAddLocation(
    //         latLng: GetRoutesAddLatLng(
    //           latitude: toLocation.latitude,
    //           longitude: toLocation.longitude,
    //         ),
    //       ),
    //     ),
    //   ),
    // );
  }

  Future<LatLng?> getCurrentLocation() async {
    return await _locationService.getCurrentPosition();
  }
}
