import 'package:hive/hive.dart';

part 'user_data_model.g.dart';

@HiveType(typeId: 1)
class UserDataModel {
  @HiveField(0)
  final bool isLogin;
  @HiveField(1)
  final String userID;
  @HiveField(2)
  final String name;
  @HiveField(3)
  final String email;
  @HiveField(4)
  final String token;
  UserDataModel({
    required this.isLogin,
    required this.name,
    required this.email,
    required this.token,
    required this.userID,
  });
}
