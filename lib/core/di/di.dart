import 'package:commuter_driver/core/bloc/bloc_observer.dart';
import 'package:commuter_driver/core/local_storage/local_storage_service.dart';
import 'package:commuter_driver/core/localization/controller/localization_bloc.dart';
import 'package:commuter_driver/core/location_service/location_service.dart';
import 'package:commuter_driver/core/networking/api_consts.dart';
import 'package:commuter_driver/core/networking/api_service.dart';
import 'package:commuter_driver/core/networking/dio_factory.dart';
import 'package:commuter_driver/core/themes/controller/app_theme_bloc.dart';
import 'package:commuter_driver/modules/add_commute/controllers/add_commute_bloc/add_commute_bloc.dart';
import 'package:commuter_driver/modules/add_commute/controllers/pickup/add_commute_pickup_bloc.dart';
import 'package:commuter_driver/modules/add_commute/data/rebos/add_commute_rebo.dart';
import 'package:commuter_driver/modules/auth/change_password/controllers/change_password_bloc/change_password_bloc.dart';
import 'package:commuter_driver/modules/auth/change_password/data/rebos/change_pass_rebo.dart';
import 'package:commuter_driver/modules/auth/otp_forgot_password/data/rebos/otp_forgot_password_rebo.dart';
import 'package:commuter_driver/modules/auth/sign_in/data/rebos/sign_in_rebo.dart';
import 'package:commuter_driver/modules/auth/sign_up/controllers/sign_up_bloc/sign_up_bloc.dart';
import 'package:commuter_driver/modules/auth/sign_up/data/rebos/sign_up_rebo.dart';
import 'package:commuter_driver/modules/commutes/controllers/commutes_bloc/commutes_bloc.dart';
import 'package:commuter_driver/modules/commutes/data/rebos/commutes_rebo.dart';
import 'package:commuter_driver/modules/home/controllers/home_bloc/home_bloc.dart';
import 'package:commuter_driver/modules/pick_location/controllers/pick_location_bloc/pick_location_bloc.dart';
import 'package:commuter_driver/modules/pick_location/data/rebos/pick_location_rebo.dart';
import 'package:commuter_driver/modules/profile/controllers/profile_bloc/profile_bloc.dart';
import 'package:commuter_driver/modules/profile/data/rebos/profile_rebo.dart';
import 'package:commuter_driver/modules/splash/controllers/splash_bloc/splash_bloc.dart';
import 'package:commuter_driver/modules/splash/data/rebos/splash_rebo.dart';
import 'package:debug_print_flutter/debug_print_flutter.dart';
import 'package:dio/dio.dart';
import 'package:flutter_polyline_points/flutter_polyline_points.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:get_it/get_it.dart';
import 'package:image_picker/image_picker.dart';
import '../../modules/add_commute/controllers/landing/add_commute_landing_bloc.dart';
import '../../modules/auth/otp_forgot_password/controller/otp_forgot_password_bloc/otp_forgot_password_bloc.dart';
import '../../modules/auth/sign_in/controllers/sign_in_bloc/sign_in_bloc.dart';
import '../bloc/main_bloc.dart';
part 'utils_di.dart';
part 'bloc_di.dart';
part 'rebos_di.dart';

GetIt di = GetIt.instance;

Future<void> diInit() async {
  await _blocDiInit();
  await _utilsDiInit();
  await _rebosDIInit();
}
