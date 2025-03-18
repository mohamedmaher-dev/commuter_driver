import 'package:json_annotation/json_annotation.dart';
part 'manufacturer_response_model.g.dart';

@JsonSerializable(createToJson: false)
class MakesResponseModel {
  @JsonKey(name: 'Results')
  final List<MakesItem> makes;
  MakesResponseModel({required this.makes});
  factory MakesResponseModel.fromJson(Map<String, dynamic> json) =>
      _$MakesResponseModelFromJson(json);
}

@JsonSerializable(createToJson: false)
class MakesItem {
  @JsonKey(name: 'MakeId')
  final int makeId;
  @JsonKey(name: 'VehicleTypeId')
  final int vehicleTypeId;
  @JsonKey(name: 'MakeName')
  final String makeName;

  MakesItem({
    required this.makeId,
    required this.makeName,
    required this.vehicleTypeId,
  });

  factory MakesItem.fromJson(Map<String, dynamic> json) =>
      _$MakesItemFromJson(json);
}
