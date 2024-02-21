import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../modules/auth/change_password/views/change_password_view.dart';
import '../../modules/auth/otp_forgot_password/views/otp_forgot_password_view.dart';
import '../../modules/auth/sign_in/views/sign_in_view.dart';
import '../../modules/auth/sign_up/views/sign_up_view.dart';
import '../../modules/home/views/home_view.dart';

class AppRouter {
  AppRouter._();
  static final router = GoRouter(
    routes: [
      GoRoute(
        path: '/',
        builder: (context, state) => const SignInView(),
      ),
      GoRoute(
        path: '/signUp/:data',
        builder: (context, state) => SignUpView(
          data: jsonDecode(state.pathParameters["data"]!)!,
        ),
      ),
      GoRoute(
        path: '/otpForgotPassword/:data',
        builder: (context, state) => const OtpForgotPasswordView(),
      ),
      GoRoute(
        path: '/changePassword/:data',
        builder: (context, state) => const ChangePasswordView(),
      ),
      GoRoute(
        path: '/home:data',
        builder: (context, state) => const HomeView(),
      ),
    ],
  );
  static void pushReplacement({
    required BuildContext context,
    required Pages page,
    Map<String, dynamic>? data,
  }) {
    GoRouter.of(context).pushReplacement('/signUp/${jsonEncode(data)}');
  }

  static void pop({
    required BuildContext context,
  }) {
    GoRouter.of(context).pop();
  }
}

enum Pages {
  signIn(path: 'signIn'),
  signUp(path: 'signUp'),
  otpForgotPassword(path: 'otpForgotPassword'),
  changePassword(path: 'changePassword'),
  home(path: 'Home');

  const Pages({required this.path});
  final String path;
}
