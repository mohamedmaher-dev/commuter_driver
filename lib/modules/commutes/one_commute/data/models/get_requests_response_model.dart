import 'package:commuter_driver/core/models/get_user_data_resposne_model.dart';
import 'package:json_annotation/json_annotation.dart';

part 'get_requests_response_model.g.dart';

@JsonSerializable(createToJson: false)
class GetRequestsResponseModel {
  final List<RequestsResponseModelItem> requests;
  GetRequestsResponseModel({required this.requests});
  factory GetRequestsResponseModel.fromJson(Map<String, dynamic> json) =>
      _$GetRequestsResponseModelFromJson(json);
}

@JsonSerializable(createToJson: false)
class RequestsResponseModelItem {
  @JsonKey(includeFromJson: false)
  late GetUserData userData;
  @JsonKey(name: "_id")
  final String requestId;
  @JsonKey(name: "user")
  final String userId;
  @JsonKey(name: "commute")
  final String commuterId;
  final RequestType type;
  RequestsResponseModelItem({
    required this.requestId,
    required this.userId,
    required this.commuterId,
    required this.type,
  });
  factory RequestsResponseModelItem.fromJson(Map<String, dynamic> json) =>
      _$RequestsResponseModelItemFromJson(json);
}

enum RequestType {
  @JsonValue('online')
  online,
  @JsonValue('upcoming')
  upcoming,
  @JsonValue('offline')
  offline,
}
