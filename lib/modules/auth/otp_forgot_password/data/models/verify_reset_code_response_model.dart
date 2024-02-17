import 'package:json_annotation/json_annotation.dart';
part 'verify_reset_code_response_model.g.dart';

@JsonSerializable()
class VerifyResetCodeResponseModel {
  final String status;
  VerifyResetCodeResponseModel({required this.status});
  factory VerifyResetCodeResponseModel.fromJson(Map<String, dynamic> json) =>
      _$VerifyResetCodeResponseModelFromJson(json);
}
