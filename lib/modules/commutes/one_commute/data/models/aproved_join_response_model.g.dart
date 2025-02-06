// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'aproved_join_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GetAprovedJoinResponseModel _$GetAprovedJoinResponseModelFromJson(
        Map<String, dynamic> json) =>
    GetAprovedJoinResponseModel(
      aprovedJoin: (json['requests'] as List<dynamic>)
          .map((e) => AprovedJoinModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

AprovedJoinModel _$AprovedJoinModelFromJson(Map<String, dynamic> json) =>
    AprovedJoinModel(
      commute: json['commute'] as String,
      user: json['user'] as String,
    );
