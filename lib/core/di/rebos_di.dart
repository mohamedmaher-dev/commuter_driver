part of 'di.dart';

_rebosDIInit() {
  di.registerLazySingleton(
    () => SignInRebo(
      di<ApiService>(),
      di<LocalStorageService>(),
    ),
  );
  di.registerLazySingleton(
    () => SignUpRebo(
      di<ApiService>(),
      di<LocalStorageService>(),
    ),
  );
  di.registerLazySingleton(
    () => OtpForgotPasswordRebo(
      di<ApiService>(),
    ),
  );
  di.registerLazySingleton(
    () => ChangePassRebo(
      di<ApiService>(),
    ),
  );
  di.registerLazySingleton(
    () => SplashRebo(
      di<LocalStorageService>(),
      di<ApiService>(),
    ),
  );
}
