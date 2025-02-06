import 'package:json_annotation/json_annotation.dart';
part 'update_commute_request_model.g.dart';

@JsonSerializable(explicitToJson: true, createFactory: false)
class UpdateCommuteRequestModel {
  final CommuteItem pickup;
  final CommuteItem landing;
  final RoundTrip roundTrip;
  final String name;
  final bool isActive;
  final bool isRoundTrip;
  final List<String> days;

  UpdateCommuteRequestModel({
    required this.pickup,
    required this.landing,
    required this.roundTrip,
    required this.name,
    required this.isActive,
    required this.isRoundTrip,
    required this.days,
  });

  Map<String, dynamic> toJson() => _$UpdateCommuteRequestModelToJson(this);
}

@JsonSerializable(explicitToJson: true, createFactory: false)
class CommuteItem {
  final CommuteLocation location;
  final CommuteTimeWindow timeWindow;
  final int range;

  CommuteItem(
      {required this.location, required this.timeWindow, required this.range});
  Map<String, dynamic> toJson() => _$CommuteItemToJson(this);
}

@JsonSerializable(explicitToJson: true, createFactory: false)
class RoundTrip {
  final CommuteTimeWindow timeWindowPickup;
  final CommuteTimeWindow timeWindowLanding;

  RoundTrip({required this.timeWindowPickup, required this.timeWindowLanding});
  Map<String, dynamic> toJson() => _$RoundTripToJson(this);
}

@JsonSerializable(createFactory: false)
class CommuteLocation {
  final double lat;
  final double long;

  CommuteLocation({required this.lat, required this.long});

  Map<String, dynamic> toJson() => _$CommuteLocationToJson(this);
}

@JsonSerializable(createFactory: false)
class CommuteTimeWindow {
  final DateTime start;
  final DateTime end;

  CommuteTimeWindow({required this.start, required this.end});
  Map<String, dynamic> toJson() => _$CommuteTimeWindowToJson(this);
}
