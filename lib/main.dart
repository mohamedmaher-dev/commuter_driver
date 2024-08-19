import 'dart:io';
import 'package:commuter_driver/core/bloc/main_bloc.dart';
import 'package:commuter_driver/core/di/di.dart';
import 'package:commuter_driver/core/localization/controller/localization_controller.dart';
import 'package:commuter_driver/core/themes/app_theme_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hive_flutter/adapters.dart';
import 'commuter.dart';
import 'core/location_service/location_service.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await diInit();
  await Hive.initFlutter();
  await di<LocalizationController>().init();
  await di<AppThemeController>().init();
  await di<LocationService>().locationServiceInit();
  await ScreenUtil.ensureScreenSize();
  runApp(
    BlocProvider(
      create: (context) => di<MainBloc>()..add(const MainEvent.started()),
      child: const Commuter(),
    ),
  );
}

class MyHttpOverrides extends HttpOverrides {
  @override
  HttpClient createHttpClient(SecurityContext? context) {
    return super.createHttpClient(context)
      ..badCertificateCallback =
          (X509Certificate cert, String host, int port) => true;
  }
}
