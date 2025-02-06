import 'package:json_annotation/json_annotation.dart';

part 'complete_ride_request_model.g.dart';

@JsonSerializable(createFactory: false)
class CompleteRideRequestModel {
  const CompleteRideRequestModel({
    required this.rideId,
  });
  final String rideId;

  Map<String, dynamic> toJson() => _$CompleteRideRequestModelToJson(this);
}
