import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:geocoding/geocoding.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

part 'add_commute_landing_event.dart';
part 'add_commute_landing_state.dart';
part 'add_commute_landing_bloc.freezed.dart';

class AddCommuteLandingBloc
    extends Bloc<AddCommuteLandingEvent, AddCommuteLandingState> {
  String? landingLocationName;
  LatLng? latLng;
  Set<int> landingRange = {5};
  DateTime? startTime;
  DateTime? endTime;

  AddCommuteLandingBloc() : super(const _Initial()) {
    on<AddCommuteLandingEvent>((event, emit) {
      event.when(
        started: () {},
        setLocation: (latLng, placemark) {
          this.latLng = latLng;
          landingLocationName = placemark.street;
          emit(AddCommuteLandingState.refresh(state.hashCode));
        },
        changeRange: (range) {
          landingRange = range;
          emit(AddCommuteLandingState.refresh(state.hashCode));
        },
        setStartTime: (time) {
          startTime = time;
          emit(AddCommuteLandingState.refresh(state.hashCode));
        },
        setEndTime: (time) {
          endTime = time;
          emit(AddCommuteLandingState.refresh(state.hashCode));
        },
      );
    });
  }
}
