import 'dart:math';
import 'package:commuter_driver/core/networking/api_result.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import '../../../../core/local_storage/local_storage_service.dart';
import '../../../../core/location/location_service.dart';
import '../../../../core/location/models/routes_model/get_routes_request_model.dart';
import '../../../../core/networking/api_error_model.dart';
import '../../../../core/networking/api_service.dart';
import '../models/accept_ride_request_model.dart';
import '../models/nearby_rides_response_model.dart';
import '../models/update_location_request_model.dart';

class NearbyRidesRebo {
  final ApiService _apiService;
  final LocationService _locationService;
  final LocalStorageService _localStorageService;
  NearbyRidesRebo(
      {required LocalStorageService localStorageService,
      required ApiService apiService,
      required LocationService locationService})
      : _localStorageService = localStorageService,
        _apiService = apiService,
        _locationService = locationService;
  Future<LatLng?> getCurrentPosition() async {
    return await _locationService.getCurrentPosition();
  }

  Future<ApiResult<void>> updateLocation(LatLng currentLocation) async {
    try {
      final userSecretDataModel = await _localStorageService.getUserSecretData;

      final response = await _apiService.updateLoacation(
        UpdateLocationRequestModel(
          userSecretDataModel!.userId,
          latitude: currentLocation.latitude,
          longitude: currentLocation.longitude,
        ),
      );
      return ApiResult.success(response);
    } on DioException catch (e) {
      return ApiResult.failure(ApiErrorModel.fromDioException(dioException: e));
    } catch (e) {
      return ApiResult.failure(ApiErrorModel.fromUnknown(e: e));
    }
  }

  Future<ApiResult<List<NearbyRidesModel>>> getNearbyRides() async {
    try {
      final userSecretDataModel = await _localStorageService.getUserSecretData;

      final response = await _apiService.getNearbyRequests(
        userSecretDataModel!.userId,
      );
      return ApiResult.success(response);
    } on DioException catch (e) {
      return ApiResult.failure(ApiErrorModel.fromDioException(dioException: e));
    } catch (e) {
      return ApiResult.failure(ApiErrorModel.fromUnknown(e: e));
    }
  }

  Future<Set<Polyline>> getRoutes(List<NearbyRidesModel> date) async {
    Set<Polyline> result = {};
    for (var element in date) {
      result.add(
        Polyline(
          polylineId: PolylineId(element.rideId),
          points: await _getPoints(
            element,
          ),
          width: 3,
          color: _getColor(),
        ),
      );
    }
    return result;
  }

  Color _getColor() {
    return Colors.primaries[Random().nextInt(Colors.primaries.length)];
  }

  Future<List<LatLng>> _getPoints(NearbyRidesModel nearbyRidesModel) async {
    return await _locationService.getRoutes(
      getRoutesRequestModel: GetRoutesRequestModel(
        origin: GetRoutesAddPoint(
          location: GetRoutesAddLocation(
            latLng: GetRoutesAddLatLng(
              latitude: nearbyRidesModel.pickupLocation.latitude,
              longitude: nearbyRidesModel.pickupLocation.longitude,
            ),
          ),
        ),
        destination: GetRoutesAddPoint(
          location: GetRoutesAddLocation(
            latLng: GetRoutesAddLatLng(
              latitude: nearbyRidesModel.dropoffLocation.latitude,
              longitude: nearbyRidesModel.dropoffLocation.longitude,
            ),
          ),
        ),
      ),
    );
  }

  Future<Set<Polyline>> getMarkers(List<NearbyRidesModel> data) async {
    return {};
  }

  Future<ApiResult<void>> acceptRide(String rideId) async {
    try {
      final userSecretDataModel = await _localStorageService.getUserSecretData;

      final response = await _apiService.acceptRide(AcceptRideRequestModel(
        rideId: rideId,
        driverId: userSecretDataModel!.userId,
      ));
      return ApiResult.success(response);
    } on DioException catch (e) {
      return ApiResult.failure(ApiErrorModel.fromDioException(dioException: e));
    } catch (e) {
      return ApiResult.failure(ApiErrorModel.fromUnknown(e: e));
    }
  }
}
