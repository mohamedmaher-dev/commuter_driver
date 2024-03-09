import 'package:bloc/bloc.dart';
import 'package:commuter_driver/core/local_storage/models/user_secret_data_model.dart';
import 'package:commuter_driver/modules/add_commute/controllers/landing/add_commute_landing_bloc.dart';
import 'package:commuter_driver/modules/add_commute/controllers/pickup/add_commute_pickup_bloc.dart';
import 'package:commuter_driver/modules/auth/sign_in/controllers/sign_in_bloc/sign_in_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'main_event.dart';
part 'main_state.dart';
part 'main_bloc.freezed.dart';

class MainBloc extends Bloc<MainEvent, MainState> {
  late SignInBloc signInBloc;
  late AddCommutePickupBloc pickupBloc;
  late AddCommuteLandingBloc landingBloc;
  late UserSecretDataModel userSecretDataModel;
  MainBloc() : super(const _Initial()) {
    on<MainEvent>(
      (event, emit) {
        event.when(
          started: () {},
        );
      },
    );
  }
}
