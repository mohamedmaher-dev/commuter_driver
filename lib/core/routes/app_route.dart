import 'package:commuter_driver/modules/commutes/add_commute/views/add_commute_view.dart';
import 'package:commuter_driver/modules/my_profile/views/profile_view.dart';
import 'package:commuter_driver/modules/scheduled/views/schedules_view.dart';
import 'package:commuter_driver/modules/chat/chat_rooms/views/chat_rooms.dart';
import 'package:commuter_driver/modules/check_permission/views/check_permission_view.dart';
import 'package:commuter_driver/modules/home/views/home_view.dart';
import 'package:commuter_driver/trash/one_nearby_ride/views/one_nearby_ride_view.dart';
import 'package:commuter_driver/modules/settings/views/settings_view.dart';
import 'package:commuter_driver/modules/auth/change_password/views/change_password_view.dart';
import 'package:commuter_driver/modules/auth/otp_forgot_password/views/otp_forgot_password_view.dart';
import 'package:commuter_driver/modules/notifications/views/notifi_view.dart';
import 'package:commuter_driver/modules/splash/views/splash_view.dart';
import 'package:commuter_driver/modules/transactions/rides/views/rides_view.dart';
import 'package:flutter/material.dart';
import '../../modules/auth/sign_in/views/sign_in_view.dart';
import '../../modules/auth/sign_up/views/sign_up_view.dart';
import '../../modules/chat/one_chat/views/one_chat_view.dart';
import '../../modules/commutes/my_commutes/views/commutes_view.dart';
import '../../modules/verify_account/views/verify_account_view.dart';
import '../../trash/nearby_rides/views/nearby_rides_view.dart';
import '../../modules/onBoarding/views/onBoarding_view.dart';
import '../../modules/commutes/one_commute/views/one_commute.dart';
part 'app_pages.dart';

class AppRouter {
  const AppRouter._();
  static _getRoute(Pages page, Object? arguments) => MaterialPageRoute(
        builder: (context) => page.view,
        settings: RouteSettings(arguments: arguments),
      );

  static Future<void> push({
    required BuildContext context,
    required Pages page,
    Object? arguments,
  }) async {
    await Navigator.of(context).push(
      _getRoute(page, arguments),
    );
  }

  static pushReplacement({
    required BuildContext context,
    required Pages page,
    Object? arguments,
  }) =>
      Navigator.of(context).pushReplacement(
        _getRoute(page, arguments),
      );
  static pop({required BuildContext context}) => Navigator.of(context).pop();

  static pushAndRemoveUntil({
    required BuildContext context,
    required Pages page,
    Object? arguments,
  }) =>
      Navigator.of(context).pushAndRemoveUntil(
        _getRoute(page, arguments),
        (route) => false,
      );
}
