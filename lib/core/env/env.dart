import 'package:envied/envied.dart';
part 'env.g.dart';

@Envied(useConstantCase: true)
abstract class Env {
  @EnviedField()
  static const String apiBaseUrl = _Env.apiBaseUrl;
  @EnviedField()
  static const String socketIoBaseUrl = _Env.socketIoBaseUrl;
  @EnviedField()
  static const String apiChatBaseUrl = _Env.apiChatBaseUrl;
  @EnviedField()
  static const String apiNotifiBaseUrl = _Env.apiNotifiBaseUrl;
  @EnviedField()
  static const String routesApiKey = _Env.routesApiKey;
  @EnviedField()
  static const String placesApiKey = _Env.placesApiKey;
}
