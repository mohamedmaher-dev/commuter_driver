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
  di.registerLazySingleton(
    () => ProfileRebo(
      di<ApiService>(),
      di<MainBloc>().userSecretDataModel,
      di<LocalStorageService>(),
      di<ImagePicker>(),
    ),
  );
  di.registerLazySingleton(
    () => CommutesRebo(
      di<ApiService>(),
      di<LocationService>(),
      di<MainBloc>().userSecretDataModel,
    ),
  );
  di.registerLazySingleton(
    () => PickLocationRebo(
      di<LocationService>(),
    ),
  );
  di.registerLazySingleton(
    () => AddCommuteRebo(
      di<ApiService>(),
      di<MainBloc>().userSecretDataModel,
    ),
  );
}
