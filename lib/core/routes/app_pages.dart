part of 'app_route.dart';

enum Pages {
  initPage(view: SplashView()),
  signIn(view: SignInView()),
  otpForgotPassword(view: OtpForgotPasswordView()),
  changePassword(view: ChangePasswordView()),
  profile(view: MyProfileView()),
  addCommute(view: AddCommuteView()),
  splash(view: SplashView()),
  notifi(view: NotifiView()),
  chats(view: ChatRooms()),
  oneChat(view: OneChatView()),
  schedules(view: SchedulesView()),
  settings(view: SettingsView()),
  oneCommute(view: OneCommuteView()),
  commutes(view: CommutesView()),
  nearbyRides(view: NearbyRidesView()),
  oneNearbyRide(view: OneNearbyRideView()),
  noPermission(view: CheckPermissionView()),
  transactions(view: RidesView()),
  home(view: HomeView()),
  signUp(view: SignUpView()),
  onBoarding(view: OnBoardingPage()),
  ;

  final Widget view;
  const Pages({required this.view});
}
