import 'package:commuter_driver/core/location_service/location_service.dart';
import 'package:geocoding/geocoding.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:google_maps_flutter_platform_interface/google_maps_flutter_platform_interface.dart';

class PickLocationRebo {
  final LocationService _locationService;
  const PickLocationRebo(this._locationService);

  Future<LatLng> getCurrentPosition() {
    return _locationService.getCurrentPosition();
  }

  Future<Placemark> getLocationName({required LatLng latLng}) {
    return _locationService.getLocationName(latLng: latLng);
  }
}
