import 'package:bloc/bloc.dart';
import 'package:commuter_driver/modules/one_nearby_ride/data/rebos/one_nearby_ride_rebo.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

import '../../../../core/location_service/models/get_routes_response_model.dart';
import '../../../nearby_rides/data/models/nearby_rides_response_model.dart';

part 'one_nearby_ride_event.dart';
part 'one_nearby_ride_state.dart';
part 'one_nearby_ride_bloc.freezed.dart';

class OneNearbyRideBloc extends Bloc<OneNearbyRideEvent, OneNearbyRideState> {
  bool isStarted = false;
  String clientName = 'Mohamed Maher';
  late String pickupAddress;
  late String dropOffAddress;
  late LatLng currentLocation;
  late GetRoutesResponseModel routeInfo;
  late Polyline polyline;
  final NearbyRidesModel nearbyRidesModel;
  final OneNearbyRideRebo _nearbyRideRebo;
  OneNearbyRideBloc(
    this.nearbyRidesModel,
    this._nearbyRideRebo,
  ) : super(const _Initial()) {
    on<OneNearbyRideEvent>(
      (event, emit) async {
        await event.when(
          started: () async {
            emit(const OneNearbyRideState.loading());
            await getInfoMethod();
            emit(const OneNearbyRideState.success());
          },
          startRide: () async {
            emit(const OneNearbyRideState.pLoading());

            final startRideResult =
                await _nearbyRideRebo.startRide(nearbyRidesModel.rideId);
            await startRideResult.when(success: (data) async {
              isStarted = true;
              await getInfoMethod();
              emit(const OneNearbyRideState.startSuccess());
            }, failure: (apiErrorModel) {
              emit(const OneNearbyRideState.startFailure());
            });
          },
          completeRide: () async {
            emit(const OneNearbyRideState.pLoading());
            final completeRideResult =
                await _nearbyRideRebo.startRide(nearbyRidesModel.rideId);
            completeRideResult.when(success: (data) {
              emit(const OneNearbyRideState.completeSuccess());
            }, failure: (apiErrorModel) {
              emit(const OneNearbyRideState.completeFailure());
            });
          },
        );
      },
    );
  }

  Future<void> getInfoMethod() async {
    currentLocation = await _nearbyRideRebo.getCurrentLocation();
    pickupAddress = await _nearbyRideRebo.getLoactionName(
      latLng: nearbyRidesModel.pickupLocation,
    );
    dropOffAddress = await _nearbyRideRebo.getLoactionName(
      latLng: nearbyRidesModel.dropoffLocation,
    );
    routeInfo = await _nearbyRideRebo.getRouteInfo(
      isStarted
          ? nearbyRidesModel.dropoffLocation
          : nearbyRidesModel.pickupLocation,
    );
    polyline = await _nearbyRideRebo.getPolyline(
      isStarted
          ? nearbyRidesModel.dropoffLocation
          : nearbyRidesModel.pickupLocation,
    );
  }
}
