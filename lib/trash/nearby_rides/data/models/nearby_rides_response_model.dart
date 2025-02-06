import 'package:google_maps_flutter/google_maps_flutter.dart';

class NearbyRidesModel {
  final LatLng pickupLocation;
  final LatLng dropoffLocation;
  final String rideId;
  final int fare;

  NearbyRidesModel({
    required this.pickupLocation,
    required this.dropoffLocation,
    required this.rideId,
    required this.fare,
  });

  factory NearbyRidesModel.fromJson(Map<String, dynamic> json) {
    return NearbyRidesModel(
      pickupLocation: LatLng(
        json['pickupLocation']['coordinates'][1],
        json['pickupLocation']['coordinates'][0],
      ),
      dropoffLocation: LatLng(
        json['dropoffLocation']['coordinates'][1],
        json['dropoffLocation']['coordinates'][0],
      ),
      rideId: json['_id'],
      fare: json['fare'],
    );
  }
}
