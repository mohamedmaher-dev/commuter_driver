import 'package:bloc/bloc.dart';
import 'package:commuter_driver/core/localization/app_localization_controller.dart';
import 'package:commuter_driver/core/themes/app_theme_controller.dart';
import 'package:commuter_driver/modules/commutes/add_commute/controllers/landing/add_commute_landing_bloc.dart';
import 'package:commuter_driver/modules/commutes/add_commute/controllers/pickup/add_commute_pickup_bloc.dart';
import 'package:commuter_driver/modules/auth/sign_in/controllers/sign_in_bloc/sign_in_bloc.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import '../../trash/nearby_rides/controllers/nearby_rides_bloc/nearby_rides_bloc.dart';
import 'bloc_observer.dart';
part 'main_event.dart';
part 'main_state.dart';
part 'main_bloc.freezed.dart';

class MainBloc extends Bloc<MainEvent, MainState> {
  final AppLocalizationController localizationController;
  final AppThemeController appThemeController;
  late SignInBloc signInBloc;
  late AddCommutePickupBloc pickupBloc;
  late AddCommuteLandingBloc landingBloc;
  late NearbyRidesBloc nearbyRidesBloc;
  MainBloc(this.localizationController, this.appThemeController)
      : super(const _Initial()) {
    on<MainEvent>(
      (event, emit) async {
        await event.when(
          started: () async {
            Bloc.observer = MyBlocObserver(mainBloc: this);
          },
          changeLanguage: (local) {
            localizationController.changeLanguage(local);
            emit(MainState.refresh(state.hashCode));
          },
          changeTheme: () {
            appThemeController.changeThemeMode();
            emit(MainState.refresh(state.hashCode));
          },
          changeConnectivity: (result) {
            emit(MainState.newConnection(result));
          },
        );
      },
    );
  }
}
