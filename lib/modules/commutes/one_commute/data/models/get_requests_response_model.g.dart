// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_requests_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GetRequestsResponseModel _$GetRequestsResponseModelFromJson(
        Map<String, dynamic> json) =>
    GetRequestsResponseModel(
      requests: (json['requests'] as List<dynamic>)
          .map((e) =>
              RequestsResponseModelItem.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

RequestsResponseModelItem _$RequestsResponseModelItemFromJson(
        Map<String, dynamic> json) =>
    RequestsResponseModelItem(
      requestId: json['_id'] as String,
      userId: json['user'] as String,
      commuterId: json['commute'] as String,
      type: $enumDecode(_$RequestTypeEnumMap, json['type']),
    );

const _$RequestTypeEnumMap = {
  RequestType.online: 'online',
  RequestType.upcoming: 'upcoming',
  RequestType.offline: 'offline',
};
