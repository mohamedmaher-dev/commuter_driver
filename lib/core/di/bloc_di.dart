part of 'di.dart';

_blocDiInit() {
  di.registerLazySingleton<MainBloc>(() =>
      MainBloc(di<AppLocalizationController>(), di<AppThemeController>()));
  di.registerFactory<SignInBloc>(() => SignInBloc(di<SignInRebo>()));
  di.registerFactory<OtpForgotPasswordBloc>(() => OtpForgotPasswordBloc(
      di<OtpForgotPasswordRebo>(), di<MainBloc>().signInBloc));
  di.registerFactory<ChangePasswordBloc>(() =>
      ChangePasswordBloc(di<MainBloc>().signInBloc, di<ChangePassRebo>()));
  di.registerFactory<SignUpBloc>(() => SignUpBloc(di<SignUpRebo>()));
  di.registerFactory<SplashBloc>(
      () => SplashBloc(di<SplashRebo>(), di<CheckPermissionRebo>()));
  di.registerFactory<MyProfileBloc>(() => MyProfileBloc(di<MyProfileRebo>()));
  di.registerFactory<CommutesBloc>(() => CommutesBloc(di<CommutesRebo>()));
  di.registerFactory<AddCommuteBloc>(
      () => AddCommuteBloc(di<AddCommuteRebo>()));
  di.registerFactory<AddCommutePickupBloc>(() => AddCommutePickupBloc());
  di.registerFactory<AddCommuteLandingBloc>(() => AddCommuteLandingBloc());
  di.registerFactory<PickLocationBloc>(
      () => PickLocationBloc(di<PickLocationRebo>()));
  di.registerFactory<NearbyRidesBloc>(
      () => NearbyRidesBloc(di<NearbyRidesRebo>()));
  di.registerFactory<OneNearbyRideBloc>(() => OneNearbyRideBloc(
      di<MainBloc>().nearbyRidesBloc.currentRide, di<OneNearbyRideRebo>()));
  di.registerFactory<OneChatRoomBloc>(
    () => OneChatRoomBloc(
      di<OneChatRoomRebo>(),
      di<LocalStorageService>(),
    ),
  );
  di.registerFactory<ChatRoomsBloc>(
    () => ChatRoomsBloc(
      chatRoomRebo: di<ChatRoomRebo>(),
    ),
  );
  di.registerFactory<AppMapBloc>(
    () => AppMapBloc(
      locationService: di<LocationService>(),
    ),
  );
  di.registerFactory<RequestsCubit>(
    () => RequestsCubit(
      di<RequestsRepo>(),
    ),
  );
  di.registerFactory<ActionRequestsCubit>(
    () => ActionRequestsCubit(
      di<RequestsRepo>(),
    ),
  );
  di.registerFactory<HomeCubit>(() => HomeCubit());
  di.registerFactory<HomeSlideTabsCubit>(() => HomeSlideTabsCubit());
  di.registerFactory<HomeSlidePanelCubit>(() => HomeSlidePanelCubit());
  di.registerFactory<ApprovedJoinCubit>(
    () => ApprovedJoinCubit(
      di<AprovedJoinRebo>(),
    ),
  );
  di.registerFactory<OneCommuteCubit>(() => OneCommuteCubit(
        di<OneCommuteRebo>(),
      ));
  di.registerFactory<OneCommuteTabCubit>(() => OneCommuteTabCubit());
  di.registerFactory<SetCommuteOnlineCubit>(() => SetCommuteOnlineCubit(
        di<OneCommuteRebo>(),
      ));
  di.registerFactory<NotifiBloc>(
    () => NotifiBloc(
      di<NotifiRebo>(),
    ),
  );
  di.registerFactory<SettingsDeleteProfileCubit>(
    () => SettingsDeleteProfileCubit(
      di<SettingsRebo>(),
    ),
  );

  di.registerFactory<AddSchedulesBloc>(
    () => AddSchedulesBloc(
      di<AddScheduledRebo>(),
    ),
  );

  di.registerFactory<AddRoundTripCubit>(() => AddRoundTripCubit());
  di.registerFactory<MyProfilePicCubit>(() => MyProfilePicCubit());
}
