part of 'app_route.dart';

enum Pages {
  initPage(view: SplashView()),
  navPage(view: NavPage()),
  signIn(view: SignInView()),
  otpForgotPassword(view: OtpForgotPasswordView()),
  changePassword(view: ChangePasswordView()),
  profile(view: ProfileView()),
  addCommute(view: AddCommuteView()),
  addRoundTrip(view: AddRoundTripView()),
  splash(view: SplashView()),
  notifi(view: NotifiView()),
  chats(view: ChatRooms()),
  oneChat(view: OneChatView()),
  shedule(view: SheduleView()),
  addShedule(view: AddSheduleView()),
  requests(view: RequestsView()),
  settings(view: SettingsView()),
  oneCommute(view: OneCommute()),
  commutes(view: CommutesView()),
  nearbyRides(view: NearbyRidesView()),
  oneNearbyRide(view: OneNearbyRideView()),
  noPermission(view: CheckPermissionView()),
  transactions(view: RidesView()),

  signUp(view: SignUpView());

  final Widget view;
  const Pages({required this.view});
}
