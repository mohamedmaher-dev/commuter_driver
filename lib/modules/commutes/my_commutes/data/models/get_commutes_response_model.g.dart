// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_commutes_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GetCommutesResponseModel _$GetCommutesResponseModelFromJson(
        Map<String, dynamic> json) =>
    GetCommutesResponseModel(
      data: _Data.fromJson(json['data'] as Map<String, dynamic>),
    );

_Data _$DataFromJson(Map<String, dynamic> json) => _Data(
      commutes: (json['commutes'] as List<dynamic>)
          .map((e) => CommuteModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

CommuteModel _$CommuteModelFromJson(Map<String, dynamic> json) => CommuteModel(
      pickup: _Stage.fromJson(json['pickup'] as Map<String, dynamic>),
      landing: _Stage.fromJson(json['landing'] as Map<String, dynamic>),
      roundTrip: json['roundTrip'] == null
          ? null
          : _RoundTripModel.fromJson(json['roundTrip'] as Map<String, dynamic>),
      commuteName: json['commuteName'] as String,
      id: json['_id'] as String,
      isActive: json['isActive'] as bool,
      isRoundTrip: json['isRoundTrip'] as bool,
      days: (json['days'] as List<dynamic>).map((e) => e as String).toList(),
    );

_Stage _$StageFromJson(Map<String, dynamic> json) => _Stage(
      location: _Location.fromJson(json['location'] as Map<String, dynamic>),
      timeWindow:
          _TimeWindow.fromJson(json['time_window'] as Map<String, dynamic>),
      range: (json['range'] as num).toInt(),
    );

_RoundTripModel _$RoundTripModelFromJson(Map<String, dynamic> json) =>
    _RoundTripModel(
      pickup:
          _RoundTripStageModel.fromJson(json['pickup'] as Map<String, dynamic>),
      landing: _RoundTripStageModel.fromJson(
          json['landing'] as Map<String, dynamic>),
    );

_RoundTripStageModel _$RoundTripStageModelFromJson(Map<String, dynamic> json) =>
    _RoundTripStageModel(
      timeWindow:
          _TimeWindow.fromJson(json['time_window'] as Map<String, dynamic>),
    );

_Location _$LocationFromJson(Map<String, dynamic> json) => _Location(
      lat: (json['latitude'] as num).toDouble(),
      long: (json['longitude'] as num).toDouble(),
    );

_TimeWindow _$TimeWindowFromJson(Map<String, dynamic> json) => _TimeWindow(
      start: json['start'] as String,
      end: json['end'] as String,
    );
