import 'package:json_annotation/json_annotation.dart';
part 'set_commute_online_request_model.g.dart';

@JsonSerializable(createFactory: false)
class SetCommuteOnlineRequestModel {
  final int duration;
  SetCommuteOnlineRequestModel({required this.duration});
  Map<String, dynamic> toJson() => _$SetCommuteOnlineRequestModelToJson(this);
}
