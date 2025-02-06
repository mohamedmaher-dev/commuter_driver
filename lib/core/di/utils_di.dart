part of 'di.dart';

_utilsDiInit() async {
  di.registerLazySingleton<AppLocalizationController>(
    () => AppLocalizationController(
      di<LocalStorageService>(),
    ),
  );
  di.registerLazySingleton<AppThemeController>(
    () => AppThemeController(
      di<LocalStorageService>(),
    ),
  );

  di.registerLazySingleton<Dio>(() => DioFactory.getDio());
  di.registerLazySingleton(
    () => ApiService(
      di<Dio>(),
      baseUrl: Env.apiBaseUrl,
    ),
  );
  di.registerLazySingleton(() => const FlutterSecureStorage());
  di.registerLazySingleton(
    () => LocalStorageService(
      di<FlutterSecureStorage>(),
    ),
  );
  di.registerLazySingleton(
    () => ImagePicker(),
  );
  di.registerLazySingleton(
    () => LocationService(
      di<Dio>(),
      di<Location>(),
      di<CheckLocationPermission>(),
    ),
  );
  di.registerLazySingleton(
    () => PolylinePoints(),
  );
  di.registerLazySingleton(
      () => ApiChatService(di<Dio>(), baseUrl: Env.apiChatBaseUrl));

  di.registerLazySingleton<Location>(() => Location());
  di.registerLazySingleton<CheckLocationPermission>(
      () => CheckLocationPermission(di<Location>()));
  di.registerLazySingleton<NotifiApiService>(
      () => NotifiApiService(di<Dio>(), baseUrl: Env.apiNotifiBaseUrl));
  di.registerLazySingleton<NotifiService>(
    () => NotifiService(
      di<FirebaseMessaging>(),
      di<CheckNotifiPermission>(),
    ),
  );
  di.registerLazySingleton<FirebaseMessaging>(() => FirebaseMessaging.instance);
  di.registerLazySingleton<CheckNotifiPermission>(() => CheckNotifiPermission(
        di<FirebaseMessaging>(),
      ));
  di.registerLazySingleton<MyBlocObserver>(
    () => MyBlocObserver(
      mainBloc: di<MainBloc>(),
    ),
  );
}
