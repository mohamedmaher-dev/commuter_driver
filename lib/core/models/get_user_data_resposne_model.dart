import 'package:json_annotation/json_annotation.dart';

part 'get_user_data_resposne_model.g.dart';

@JsonSerializable()
class GetUserDataResponseModel {
  @JsonKey(name: 'data')
  final GetUserData userData;

  GetUserDataResponseModel({required this.userData});

  factory GetUserDataResponseModel.fromJson(Map<String, dynamic> json) =>
      _$GetUserDataResponseModelFromJson(json);
}

@JsonSerializable()
class GetUserData {
  @JsonKey(name: '_id')
  final String id;
  final num? ratingsQuantity;
  final String name;
  final String email;
  final String? phone;
  final String? image;

  GetUserData({
    required this.id,
    required this.name,
    required this.email,
    required this.phone,
    required this.image,
    required this.ratingsQuantity,
  });

  factory GetUserData.fromJson(Map<String, dynamic> json) =>
      _$GetUserDataFromJson(json);
}
