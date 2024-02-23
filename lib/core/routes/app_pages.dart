part of 'app_route.dart';

enum Pages {
  initPage(view: SplashView()),
  home(view: HomeView()),
  signIn(view: SignInView()),
  otpForgotPassword(view: OtpForgotPasswordView()),
  changePassword(view: ChangePasswordView()),
  profile(view: ProfileView()),
  addCommute(view: AddCommuteView()),
  addRoundTrip(view: AddRoundTripView()),
  splash(view: SplashView()),
  signUp(view: SignUpView());

  final Widget view;
  const Pages({required this.view});
}
