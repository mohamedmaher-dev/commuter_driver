import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:geocoding/geocoding.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:google_maps_flutter_platform_interface/google_maps_flutter_platform_interface.dart';

part 'add_commute_pickup_event.dart';
part 'add_commute_pickup_state.dart';
part 'add_commute_pickup_bloc.freezed.dart';

class AddCommutePickupBloc
    extends Bloc<AddCommutePickupEvent, AddCommutePickupState> {
  String? pickUpLocationName;
  LatLng? latLng;
  Set<int> pickUpRange = {5};
  DateTime? startTime;
  DateTime? endTime;

  AddCommutePickupBloc() : super(const _Initial()) {
    on<AddCommutePickupEvent>(
      (event, emit) {
        event.when(
          started: () {},
          setLocation: (latLng, placemark) {
            this.latLng = latLng;
            pickUpLocationName = placemark.street;
            emit(AddCommutePickupState.refresh(state.hashCode));
          },
          changeRange: (range) {
            pickUpRange = range;
            emit(AddCommutePickupState.refresh(state.hashCode));
          },
          setStartTime: (time) {
            startTime = time;
            emit(AddCommutePickupState.refresh(state.hashCode));
          },
          setEndTime: (time) {
            endTime = time;
            emit(AddCommutePickupState.refresh(state.hashCode));
          },
        );
      },
    );
  }
}
