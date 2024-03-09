import 'package:bloc/bloc.dart';
import 'package:commuter_driver/modules/add_commute/controllers/landing/add_commute_landing_bloc.dart';
import 'package:commuter_driver/modules/add_commute/controllers/pickup/add_commute_pickup_bloc.dart';
import 'package:commuter_driver/modules/add_commute/data/models/add_commute_request_model.dart';
import 'package:commuter_driver/modules/add_commute/data/rebos/add_commute_rebo.dart';
import 'package:commuter_driver/modules/add_commute/data/validation/add_commute_validation.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'add_commute_event.dart';
part 'add_commute_state.dart';
part 'add_commute_bloc.freezed.dart';

class AddCommuteBloc extends Bloc<AddCommuteEvent, AddCommuteState> {
  Set<String> days = {'Saturday'};
  bool isRoundTrip = false;
  TextEditingController commuteName = TextEditingController();
  final AddCommuteRebo _commuteRebo;

  AddCommuteBloc(this._commuteRebo) : super(const _Initial()) {
    on<AddCommuteEvent>(
      (event, emit) async {
        await event.when(
          started: () {},
          changeDays: (days) {
            this.days = days;
            emit(AddCommuteState.refresh(state.hashCode));
          },
          addCommute: (pickupBloc, landingBloc) async {
            await _checkAddCommuteValid(pickupBloc, landingBloc, emit);
          },
        );
      },
    );
  }

  Future<void> _checkAddCommuteValid(AddCommutePickupBloc pickupBloc,
      AddCommuteLandingBloc landingBloc, Emitter<AddCommuteState> emit) async {
    if (addBlocIsValid(bloc: this)) {
      (pickupBloc, landingBloc, emit);
      await _checkPickUpBlocValid(pickupBloc, landingBloc, emit);
    } else {
      emit(
        AddCommuteState.failure(
          'برجاء اكمال البيانات الاساسية',
          state.hashCode,
        ),
      );
    }
  }

  Future<void> _checkPickUpBlocValid(AddCommutePickupBloc pickupBloc,
      AddCommuteLandingBloc landingBloc, Emitter<AddCommuteState> emit) async {
    if (pickupIsValid(bloc: pickupBloc)) {
      await _checkLandingBlocValid(pickupBloc, landingBloc, emit);
    } else {
      emit(
        AddCommuteState.failure(
          'برجاء اكمال بيانات استقبال الركاب',
          state.hashCode,
        ),
      );
    }
  }

  Future<void> _checkLandingBlocValid(AddCommutePickupBloc pickupBloc,
      AddCommuteLandingBloc landingBloc, Emitter<AddCommuteState> emit) async {
    if (landingIsValid(bloc: landingBloc)) {
      emit(const AddCommuteState.loading());
      AddCommuteRequestModel commute =
          _createCommuteModel(pickupBloc, landingBloc);
      final addCommuteResult = await _commuteRebo.addCommute(
        addCommuteRequestModel: commute,
      );

      addCommuteResult.when(
        success: (data) {
          emit(const AddCommuteState.seccess());
        },
        failure: (apiErrorModel) {
          emit(AddCommuteState.failure(apiErrorModel.msg, state.hashCode));
        },
      );
    } else {
      emit(
        AddCommuteState.failure(
          'برجاء اكمال بيانات انزال الركاب',
          state.hashCode,
        ),
      );
    }
  }

  AddCommuteRequestModel _createCommuteModel(
      AddCommutePickupBloc pickupBloc, AddCommuteLandingBloc landingBloc) {
    final commute = AddCommuteRequestModel(
      pickup: AddStage(
        location: AddCommuteLocation(
          lat: pickupBloc.latLng!.latitude,
          long: pickupBloc.latLng!.longitude,
        ),
        timeWindow: AddCommuteTimeWindow(
          start: pickupBloc.startTime!.toString(),
          end: pickupBloc.endTime!.toString(),
        ),
        range: pickupBloc.pickUpRange.first,
      ),
      landing: AddStage(
        location: AddCommuteLocation(
          lat: landingBloc.latLng!.latitude,
          long: landingBloc.latLng!.longitude,
        ),
        timeWindow: AddCommuteTimeWindow(
          start: landingBloc.startTime!.toString(),
          end: landingBloc.endTime!.toString(),
        ),
        range: landingBloc.landingRange.first,
      ),
      roundTrip: AddRoundTripModel(
        pickup: AddRoundTripStageModel(
          timeWindow: AddCommuteTimeWindow(
            start: pickupBloc.startTime!.toString(),
            end: pickupBloc.endTime!.toString(),
          ),
        ),
        landing: AddRoundTripStageModel(
          timeWindow: AddCommuteTimeWindow(
            start: landingBloc.startTime!.toString(),
            end: landingBloc.endTime!.toString(),
          ),
        ),
      ),
      commuteName: commuteName.text,
      isActive: true,
      isRoundTrip: isRoundTrip,
      days: days.toList(),
    );
    return commute;
  }
}
