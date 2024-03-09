import 'package:commuter_driver/core/di/di.dart';
import 'package:commuter_driver/core/location_service/location_service.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hive_flutter/adapters.dart';
import 'commuter.dart';
import 'core/bloc/bloc_observer.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await diInit();
  await LocationService.locationServiceInit();
  await Hive.initFlutter();
  Bloc.observer = di<MyBlocObserver>();
  await ScreenUtil.ensureScreenSize();
  runApp(
    const Commuter(),
  );
}
