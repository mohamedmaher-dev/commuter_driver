// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'car_models_reponse_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CarModelResponseModel _$CarModelResponseModelFromJson(
        Map<String, dynamic> json) =>
    CarModelResponseModel(
      models: (json['Results'] as List<dynamic>)
          .map((e) => CarModelItem.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

CarModelItem _$CarModelItemFromJson(Map<String, dynamic> json) => CarModelItem(
      modelName: json['Model_Name'] as String,
      modelId: (json['Model_ID'] as num).toInt(),
      makeName: json['Make_Name'] as String,
    );
