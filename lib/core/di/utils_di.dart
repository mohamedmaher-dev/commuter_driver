part of 'di.dart';

_utilsDiInit() async {
  di.registerLazySingleton<LocalizationController>(
    () => LocalizationController(
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
      baseUrl: ApiConsts.baseUrl,
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
      di<PolylinePoints>(),
    ),
  );
  di.registerLazySingleton(
    () => PolylinePoints(),
  );
  di.registerLazySingleton(() => ApiChatService(di<Dio>()));
}
