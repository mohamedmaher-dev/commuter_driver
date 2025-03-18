// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'manufacturer_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

MakesResponseModel _$MakesResponseModelFromJson(Map<String, dynamic> json) =>
    MakesResponseModel(
      makes: (json['Results'] as List<dynamic>)
          .map((e) => MakesItem.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

MakesItem _$MakesItemFromJson(Map<String, dynamic> json) => MakesItem(
      makeId: (json['MakeId'] as num).toInt(),
      makeName: json['MakeName'] as String,
      vehicleTypeId: (json['VehicleTypeId'] as num).toInt(),
    );
