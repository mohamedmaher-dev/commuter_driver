part of 'splash_bloc.dart';

@freezed
class SplashState with _$SplashState {
  const factory SplashState.initial() = _Initial;
  const factory SplashState.isLogin() = IsLogin;
  const factory SplashState.notLogin() = NotLogin;
  const factory SplashState.loginSuccess() = LoginSuccess;
  const factory SplashState.noPermission() = NoPermission;
  const factory SplashState.failure(
      {required String error, required int code}) = Failure;
}
