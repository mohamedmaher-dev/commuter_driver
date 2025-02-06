// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_user_data_resposne_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GetUserDataResponseModel _$GetUserDataResponseModelFromJson(
        Map<String, dynamic> json) =>
    GetUserDataResponseModel(
      userData: GetUserData.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$GetUserDataResponseModelToJson(
        GetUserDataResponseModel instance) =>
    <String, dynamic>{
      'data': instance.userData,
    };

GetUserData _$GetUserDataFromJson(Map<String, dynamic> json) => GetUserData(
      id: json['_id'] as String,
      name: json['name'] as String,
      email: json['email'] as String,
      phone: json['phone'] as String?,
      image: json['image'] as String?,
      ratingsQuantity: json['ratingsQuantity'] as num?,
    );

Map<String, dynamic> _$GetUserDataToJson(GetUserData instance) =>
    <String, dynamic>{
      '_id': instance.id,
      'ratingsQuantity': instance.ratingsQuantity,
      'name': instance.name,
      'email': instance.email,
      'phone': instance.phone,
      'image': instance.image,
    };
