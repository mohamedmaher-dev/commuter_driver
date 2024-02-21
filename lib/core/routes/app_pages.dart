part of 'app_route.dart';

enum Pages {
  initPage(view: HomeView()),
  home(view: HomeView()),
  signIn(view: SignInView()),
  otpForgotPassword(view: OtpForgotPasswordView()),
  changePassword(view: ChangePasswordView()),
  signUp(view: SignUpView());

  final Widget view;
  const Pages({required this.view});
}
