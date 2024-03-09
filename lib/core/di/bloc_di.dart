part of 'di.dart';

_blocDiInit() {
  di.registerLazySingleton(
    () => LocalizationBloc(
      di<LocalStorageService>(),
    ),
  );
  di.registerLazySingleton(
    () => AppThemeBloc(
      di<LocalStorageService>(),
    ),
  );
  di.registerLazySingleton<MainBloc>(() => MainBloc());
  di.registerFactory<SignInBloc>(
    () => SignInBloc(
      di<SignInRebo>(),
    ),
  );
  di.registerFactory<OtpForgotPasswordBloc>(
    () => OtpForgotPasswordBloc(
      di<OtpForgotPasswordRebo>(),
      di<MainBloc>().signInBloc,
    ),
  );
  di.registerFactory<ChangePasswordBloc>(
    () => ChangePasswordBloc(
      di<MainBloc>().signInBloc,
      di<ChangePassRebo>(),
    ),
  );
  di.registerFactory<SignUpBloc>(
    () => SignUpBloc(
      di<SignUpRebo>(),
    ),
  );
  di.registerFactory<SplashBloc>(
    () => SplashBloc(
      di<SplashRebo>(),
      di<MainBloc>(),
    ),
  );
  di.registerFactory<ProfileBloc>(
    () => ProfileBloc(
      di<ProfileRebo>(),
    ),
  );
  di.registerFactory<HomeBloc>(
    () => HomeBloc(),
  );
  di.registerFactory<CommutesBloc>(
    () => CommutesBloc(
      di<CommutesRebo>(),
    ),
  );
  di.registerFactory<AddCommuteBloc>(
    () => AddCommuteBloc(
      di<AddCommuteRebo>(),
    ),
  );
  di.registerFactory<AddCommutePickupBloc>(
    () => AddCommutePickupBloc(),
  );
  di.registerFactory<AddCommuteLandingBloc>(
    () => AddCommuteLandingBloc(),
  );
  di.registerFactory<PickLocationBloc>(
    () => PickLocationBloc(
      di<PickLocationRebo>(),
    ),
  );
}
