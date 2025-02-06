import 'package:json_annotation/json_annotation.dart';
part 'accept_ride_request_model.g.dart';

@JsonSerializable(createFactory: false)
class AcceptRideRequestModel {
  final String rideId;
  final String driverId;

  AcceptRideRequestModel({required this.rideId, required this.driverId});

  Map<String, dynamic> toJson() => _$AcceptRideRequestModelToJson(this);
}
