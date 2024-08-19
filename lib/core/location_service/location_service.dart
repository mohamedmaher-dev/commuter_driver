import 'package:commuter_driver/core/location_service/models/get_routes_request_model.dart';
import 'package:commuter_driver/core/location_service/models/get_routes_response_model.dart';
import 'package:dio/dio.dart';
import 'package:geocoding/geocoding.dart';
import 'package:geolocator/geolocator.dart';
import 'package:google_maps_flutter_platform_interface/google_maps_flutter_platform_interface.dart';
import 'location_permission.dart';
import 'package:flutter_polyline_points/flutter_polyline_points.dart';

class LocationService {
  final Dio _dio;
  final PolylinePoints _polylinePoints;
  LocationService(this._dio, this._polylinePoints);
  LatLng get defaultLatLong => const LatLng(24.774265, 46.738586);
  String apiRouteKey = 'AIzaSyDb5e73IeH3l1BoLSbPqavbgtSXtiqLGgs';
  Future<void> locationServiceInit() async {
    checkPermission();
  }

  Future<Placemark> getLocationName({required LatLng latLng}) {
    return placemarkFromCoordinates(latLng.latitude, latLng.longitude)
        .then((value) => value[0]);
  }

  Future<LatLng> getCurrentPosition() async {
    final isPermission = await checkPermission();
    if (isPermission) {
      return await Geolocator.getCurrentPosition().then((value) {
        return LatLng(value.latitude, value.longitude);
      });
    } else {
      checkPermission();
      return defaultLatLong;
    }
  }

  Future<List<LatLng>> getRoutes({
    required GetRoutesRequestModel getRoutesRequestModel,
  }) async {
    Dio newDio = _dio;
    newDio.options.headers = {
      'Content-Type': 'application/json',
      'X-Goog-Api-Key': apiRouteKey,
      'X-Goog-FieldMask':
          'routes.duration,routes.distanceMeters,routes.polyline.encodedPolyline'
    };
    final result = await newDio.post(
        data: getRoutesRequestModel.toJson(),
        'https://routes.googleapis.com/directions/v2:computeRoutes');
    final getRoutesResponseModel = GetRoutesResponseModel.fromJson(result.data);
    return _polylinePoints
        .decodePolyline(
            getRoutesResponseModel.routes.first.polyline.encodedPolyline)
        .map((e) {
      return LatLng(e.latitude, e.longitude);
    }).toList();
  }

  Future<GetRoutesResponseModel> getRouteInfo({
    required GetRoutesRequestModel getRoutesRequestModel,
  }) async {
    Dio newDio = _dio;
    newDio.options.headers = {
      'Content-Type': 'application/json',
      'X-Goog-Api-Key': apiRouteKey,
      'X-Goog-FieldMask':
          'routes.duration,routes.distanceMeters,routes.polyline.encodedPolyline'
    };
    final result = await newDio.post(
      data: getRoutesRequestModel.toJson(),
      'https://routes.googleapis.com/directions/v2:computeRoutes',
    );
    return GetRoutesResponseModel.fromJson(result.data);
  }
}
