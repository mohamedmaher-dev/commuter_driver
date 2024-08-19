import 'package:bloc/bloc.dart';
import 'package:commuter_driver/core/local_storage/models/user_secret_data_model.dart';
import 'package:commuter_driver/core/localization/controller/localization_controller.dart';
import 'package:commuter_driver/core/themes/app_theme_controller.dart';
import 'package:commuter_driver/modules/add_commute/controllers/landing/add_commute_landing_bloc.dart';
import 'package:commuter_driver/modules/add_commute/controllers/pickup/add_commute_pickup_bloc.dart';
import 'package:commuter_driver/modules/auth/sign_in/controllers/sign_in_bloc/sign_in_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import '../../modules/nearby_rides/controllers/nearby_rides_bloc/nearby_rides_bloc.dart';
import 'bloc_observer.dart';
part 'main_event.dart';
part 'main_state.dart';
part 'main_bloc.freezed.dart';

class MainBloc extends Bloc<MainEvent, MainState> {
  final LocalizationController localizationController;
  final AppThemeController appThemeController;
  late SignInBloc signInBloc;
  late AddCommutePickupBloc pickupBloc;
  late AddCommuteLandingBloc landingBloc;
  late NearbyRidesBloc nearbyRidesBloc;
  late UserSecretDataModel userSecretDataModel;
  MainBloc(this.localizationController, this.appThemeController)
      : super(const _Initial()) {
    on<MainEvent>(
      (event, emit) async {
        await event.when(
          started: () async {
            Bloc.observer = MyBlocObserver(mainBloc: this);
          },
          changeLanguage: () {
            localizationController.changeLanguage();
            emit(MainState.refresh(state.hashCode));
          },
          changeTheme: () {
            appThemeController.changeTheme();
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
