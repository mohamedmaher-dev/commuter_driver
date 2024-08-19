import 'package:json_annotation/json_annotation.dart';
part 'update_location_request_model.g.dart';

@JsonSerializable(createFactory: false)
class UpdateLocationRequestModel {
  const UpdateLocationRequestModel(
    this.driverId, {
    required this.latitude,
    required this.longitude,
  });
  final String driverId;
  final double latitude;
  final double longitude;
  Map<String, dynamic> toJson() => _$UpdateLocationRequestModelToJson(this);
}
