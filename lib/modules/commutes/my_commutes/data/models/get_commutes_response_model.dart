// ignore_for_file: library_private_types_in_public_api

import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:json_annotation/json_annotation.dart';
part 'get_commutes_response_model.g.dart';

@JsonSerializable(createToJson: false)
class GetCommutesResponseModel {
  final _Data data;
  GetCommutesResponseModel({required this.data});
  factory GetCommutesResponseModel.fromJson(Map<String, dynamic> json) =>
      _$GetCommutesResponseModelFromJson(json);
}

@JsonSerializable(createToJson: false)
class _Data {
  final List<CommuteModel> commutes;
  _Data({required this.commutes});

  factory _Data.fromJson(Map<String, dynamic> json) => _$DataFromJson(json);
}

@JsonSerializable(createToJson: false)
class CommuteModel {
  final _Stage pickup;
  final _Stage landing;
  final _RoundTripModel? roundTrip;
  final String commuteName;
  @JsonKey(name: '_id')
  final String id;
  final bool isActive;
  final bool isRoundTrip;
  final List<String> days;

  CommuteModel({
    required this.pickup,
    required this.landing,
    required this.roundTrip,
    required this.commuteName,
    required this.id,
    required this.isActive,
    required this.isRoundTrip,
    required this.days,
  });

  factory CommuteModel.fromJson(Map<String, dynamic> json) =>
      _$CommuteModelFromJson(json);
}

@JsonSerializable(createToJson: false)
class _Stage {
  final _Location location;
  @JsonKey(name: 'time_window')
  final _TimeWindow timeWindow;
  final int range;

  _Stage(
      {required this.location, required this.timeWindow, required this.range});

  factory _Stage.fromJson(Map<String, dynamic> json) => _$StageFromJson(json);
}

@JsonSerializable(createToJson: false)
class _RoundTripModel {
  final _RoundTripStageModel pickup;
  final _RoundTripStageModel landing;

  _RoundTripModel({required this.pickup, required this.landing});

  factory _RoundTripModel.fromJson(Map<String, dynamic> json) =>
      _$RoundTripModelFromJson(json);
}

@JsonSerializable(createToJson: false)
class _RoundTripStageModel {
  @JsonKey(name: 'time_window')
  final _TimeWindow timeWindow;

  _RoundTripStageModel({required this.timeWindow});

  factory _RoundTripStageModel.fromJson(Map<String, dynamic> json) =>
      _$RoundTripStageModelFromJson(json);
}

@JsonSerializable(createToJson: false)
class _Location {
  @JsonKey(name: 'latitude')
  final double lat;
  @JsonKey(name: 'longitude')
  final double long;

  _Location({required this.lat, required this.long});

  factory _Location.fromJson(Map<String, dynamic> json) =>
      _$LocationFromJson(json);

  LatLng toLatLng() => LatLng(lat, long);
}

@JsonSerializable(createToJson: false)
class _TimeWindow {
  final String start;
  final String end;

  _TimeWindow({required this.start, required this.end});

  factory _TimeWindow.fromJson(Map<String, dynamic> json) =>
      _$TimeWindowFromJson(json);

  int toMinutes() {
    final start = DateTime.parse(this.start);
    final end = DateTime.parse(this.end);
    return end.difference(start).inMinutes;
  }
}
