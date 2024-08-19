import 'package:commuter_driver/modules/add_commute/views/add_commute_view.dart';
import 'package:commuter_driver/modules/add_round_trip/views/add_round_trip_view.dart';
import 'package:commuter_driver/modules/add_shedule/views/add_shedule_view.dart';
import 'package:commuter_driver/modules/chat/chat_rooms/views/chat_rooms.dart';
import 'package:commuter_driver/modules/check_permission/views/check_permission_view.dart';
import 'package:commuter_driver/modules/commutes/view/commutes_view.dart';
import 'package:commuter_driver/modules/nav_page/views/nav_page_view.dart';
import 'package:commuter_driver/modules/one_nearby_ride/views/one_nearby_ride_view.dart';
import 'package:commuter_driver/modules/requests/views/requests_view.dart';
import 'package:commuter_driver/modules/settings/views/settings_view.dart';
import 'package:commuter_driver/modules/shedule/views/shedule_view.dart';
import 'package:commuter_driver/modules/auth/change_password/views/change_password_view.dart';
import 'package:commuter_driver/modules/auth/otp_forgot_password/views/otp_forgot_password_view.dart';
import 'package:commuter_driver/modules/notifications/views/notifi_view.dart';
import 'package:commuter_driver/modules/profile/views/profile_view.dart';
import 'package:commuter_driver/modules/splash/views/splash_view.dart';
import 'package:commuter_driver/modules/transactions/rides/views/rides_view.dart';
import 'package:flutter/material.dart';

import '../../modules/auth/sign_in/views/sign_in_view.dart';
import '../../modules/auth/sign_up/views/sign_up_view.dart';
import '../../modules/chat/one_chat/views/one_chat_view.dart';
import '../../modules/nearby_rides/views/nearby_rides_view.dart';
import '../../modules/one_commute/views/one_commute.dart';
part 'app_pages.dart';

class AppRouter {
  const AppRouter._();
  static _getRoute(Pages page, Object? arguments) => MaterialPageRoute(
        builder: (context) => page.view,
        settings: RouteSettings(arguments: arguments),
      );

  static push(
          {required BuildContext context,
          required Pages page,
          Object? arguments}) =>
      Navigator.of(context).push(
        _getRoute(page, arguments),
      );
  static pushReplacement(
          {required BuildContext context,
          required Pages page,
          Object? arguments}) =>
      Navigator.of(context).pushReplacement(
        _getRoute(page, arguments),
      );
  static pop({required BuildContext context}) => Navigator.of(context).pop();
}
