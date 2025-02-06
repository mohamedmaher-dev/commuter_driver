import 'package:json_annotation/json_annotation.dart';

import '../../../../../core/models/get_user_data_resposne_model.dart';
part 'aproved_join_response_model.g.dart';

@JsonSerializable(createToJson: false)
class GetAprovedJoinResponseModel {
  @JsonKey(name: "requests")
  final List<AprovedJoinModel> aprovedJoin;

  GetAprovedJoinResponseModel({required this.aprovedJoin});

  factory GetAprovedJoinResponseModel.fromJson(Map<String, dynamic> json) =>
      _$GetAprovedJoinResponseModelFromJson(json);
}

@JsonSerializable(createToJson: false)
class AprovedJoinModel {
  final String commute;
  final String user;
  @JsonKey(includeFromJson: false)
  late GetUserData userData;
  AprovedJoinModel({required this.commute, required this.user});

  factory AprovedJoinModel.fromJson(Map<String, dynamic> json) =>
      _$AprovedJoinModelFromJson(json);
}
