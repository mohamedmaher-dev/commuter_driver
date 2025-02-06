// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'update_commute_request_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Map<String, dynamic> _$UpdateCommuteRequestModelToJson(
        UpdateCommuteRequestModel instance) =>
    <String, dynamic>{
      'pickup': instance.pickup.toJson(),
      'landing': instance.landing.toJson(),
      'roundTrip': instance.roundTrip.toJson(),
      'name': instance.name,
      'isActive': instance.isActive,
      'isRoundTrip': instance.isRoundTrip,
      'days': instance.days,
    };

Map<String, dynamic> _$CommuteItemToJson(CommuteItem instance) =>
    <String, dynamic>{
      'location': instance.location.toJson(),
      'timeWindow': instance.timeWindow.toJson(),
      'range': instance.range,
    };

Map<String, dynamic> _$RoundTripToJson(RoundTrip instance) => <String, dynamic>{
      'timeWindowPickup': instance.timeWindowPickup.toJson(),
      'timeWindowLanding': instance.timeWindowLanding.toJson(),
    };

Map<String, dynamic> _$CommuteLocationToJson(CommuteLocation instance) =>
    <String, dynamic>{
      'lat': instance.lat,
      'long': instance.long,
    };

Map<String, dynamic> _$CommuteTimeWindowToJson(CommuteTimeWindow instance) =>
    <String, dynamic>{
      'start': instance.start.toIso8601String(),
      'end': instance.end.toIso8601String(),
    };
