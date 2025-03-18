import 'package:json_annotation/json_annotation.dart';
part 'car_models_reponse_model.g.dart';

@JsonSerializable(createToJson: false)
class CarModelResponseModel {
  @JsonKey(name: 'Results')
  final List<CarModelItem> models;
  CarModelResponseModel({required this.models});
  factory CarModelResponseModel.fromJson(Map<String, dynamic> json) =>
      _$CarModelResponseModelFromJson(json);
}

@JsonSerializable(createToJson: false)
class CarModelItem {
  @JsonKey(name: 'Model_Name')
  final String modelName;
  @JsonKey(name: 'Model_ID')
  final int modelId;
  @JsonKey(name: 'Make_Name')
  final String makeName;

  CarModelItem({
    required this.modelName,
    required this.modelId,
    required this.makeName,
  });

  factory CarModelItem.fromJson(Map<String, dynamic> json) =>
      _$CarModelItemFromJson(json);
}
