part of 'di.dart';

_rebosDIInit() {
  di.registerLazySingleton(
      () => SignInRebo(di<ApiService>(), di<LocalStorageService>()));
  di.registerLazySingleton(
      () => SignUpRebo(di<ApiService>(), di<LocalStorageService>()));
  di.registerLazySingleton(() => OtpForgotPasswordRebo(di<ApiService>()));
  di.registerLazySingleton(() => ChangePassRebo(di<ApiService>()));
  di.registerLazySingleton(
      () => SplashRebo(di<LocalStorageService>(), di<ApiService>()));
  di.registerLazySingleton(
      () => MyProfileRebo(di<ApiService>(), di<LocalStorageService>()));
  di.registerLazySingleton(() => CommutesRebo(
      di<ApiService>(), di<LocationService>(), di<LocalStorageService>()));
  di.registerLazySingleton(() => PickLocationRebo(di<LocationService>()));
  di.registerLazySingleton(
      () => AddCommuteRebo(di<ApiService>(), di<LocalStorageService>()));
  di.registerLazySingleton(() => OneNearbyRideRebo(
      apiService: di<ApiService>(), locationService: di<LocationService>()));
  di.registerLazySingleton(() => NearbyRidesRebo(
      localStorageService: di<LocalStorageService>(),
      apiService: di<ApiService>(),
      locationService: di<LocationService>()));
  di.registerLazySingleton(
    () => OneChatRoomRebo(),
  );
  di.registerLazySingleton(
    () => ChatRoomRebo(
      apiChatService: di<ApiChatService>(),
      localStorageService: di<LocalStorageService>(),
    ),
  );
  di.registerLazySingleton(
    () => RequestsRepo(
      apiService: di<ApiService>(),
      localStorageService: di<LocalStorageService>(),
    ),
  );
  di.registerLazySingleton(
    () => AprovedJoinRebo(
      apiService: di<ApiService>(),
      localStorageService: di<LocalStorageService>(),
    ),
  );
  di.registerLazySingleton(
    () => OneCommuteRebo(
      di<LocationService>(),
      di<ApiService>(),
      di<LocalStorageService>(),
      di<RequestsRepo>(),
    ),
  );
  di.registerLazySingleton(
    () => NotifiRebo(
      notifiApiService: di<NotifiApiService>(),
      fcmManger: di<NotifiService>(),
      localStorageService: di<LocalStorageService>(),
    ),
  );
  di.registerLazySingleton(
    () => CheckPermissionRebo(
      locationPermission: di<CheckLocationPermission>(),
      notifiPermission: di<CheckNotifiPermission>(),
    ),
  );

  di.registerLazySingleton(
    () => SettingsRebo(
      di<ApiService>(),
      di<LocalStorageService>(),
    ),
  );

  di.registerLazySingleton(
    () => AddScheduledRebo(
      di<LocalStorageService>(),
    ),
  );
}
