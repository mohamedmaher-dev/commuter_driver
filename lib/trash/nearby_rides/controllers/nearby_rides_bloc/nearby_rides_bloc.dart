import 'package:bloc/bloc.dart';
import 'dart:async';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import '../../data/models/nearby_rides_response_model.dart';
import '../../data/rebos/nearby_rides_rebo.dart';
part 'nearby_rides_event.dart';
part 'nearby_rides_state.dart';
part 'nearby_rides_bloc.freezed.dart';

class NearbyRidesBloc extends Bloc<NearbyRidesEvent, NearbyRidesState> {
  final NearbyRidesRebo _nearbyRidesRebo;
  late LatLng? currentLocation;
  late List<NearbyRidesModel> nearbyRides;
  late GoogleMapController googleMapController;
  late NearbyRidesModel currentRide;
  Set<Polyline> polylines = {};
  Set<Marker> markers = {};
  NearbyRidesBloc(this._nearbyRidesRebo) : super(const _Initial()) {
    on<NearbyRidesEvent>(
      (event, emit) async {
        await event.when(
          started: () async {
            emit(const NearbyRidesState.getRidesLoading());
            currentLocation = await _nearbyRidesRebo.getCurrentPosition();
            if (currentLocation != null) {
              final updateLocationResult =
                  await _nearbyRidesRebo.updateLocation(currentLocation!);
              await updateLocationResult.when(
                success: (data) async {
                  final getRidesResult =
                      await _nearbyRidesRebo.getNearbyRides();
                  await getRidesResult.when(
                    success: (data) async {
                      nearbyRides = data;
                      polylines = await _nearbyRidesRebo.getRoutes(data);
                      markers = await setMarkers(data);
                      emit(const NearbyRidesState.getRidesSuccess());
                    },
                    failure: (apiErrorModel) {
                      emit(const NearbyRidesState.getRidesFailure());
                    },
                  );
                },
                failure: (apiErrorModel) {
                  emit(const NearbyRidesState.getRidesFailure());
                },
              );
            } else {
              emit(const NearbyRidesState.getRidesFailure());
            }
          },
          acceptRide: (index) async {
            emit(const NearbyRidesState.acceptLoading());
            final acceptRideResult =
                await _nearbyRidesRebo.acceptRide(nearbyRides[index].rideId);
            acceptRideResult.when(
              success: (data) {
                currentRide = nearbyRides[index];
                emit(const NearbyRidesState.acceptSuccess());
              },
              failure: (apiErrorModel) {
                emit(const NearbyRidesState.acceptFailure());
              },
            );
          },
          goTo: (location) {
            googleMapController.animateCamera(
              CameraUpdate.newCameraPosition(
                CameraPosition(
                  target: location,
                  zoom: 17,
                ),
              ),
            );
          },
          onMapCreated: (controller) async {
            googleMapController = controller;
            currentLocation = await _nearbyRidesRebo.getCurrentPosition();
            googleMapController.moveCamera(
              CameraUpdate.newCameraPosition(
                CameraPosition(
                  target: currentLocation!,
                  zoom: 17,
                ),
              ),
            );
          },
        );
      },
    );
  }
  // Future<Uint8List> generateIcon(bool isPickedUp, Color color) async {
  //   ScreenshotController screenshotController = ScreenshotController();
  //   return await screenshotController.captureFromWidget(
  //     Icon(
  //       isPickedUp ? CupertinoIcons.circle_fill : CupertinoIcons.square_fill,
  //       color: color,
  //       size: 25.r,
  //     ),
  //   );
  // }

  Future<Set<Marker>> setMarkers(List<NearbyRidesModel> data) async {
    Set<Marker> markers = {};
    for (int i = 0; i < data.length; i++) {
      // markers.add(
      //   Marker(
      //     markerId: MarkerId("${data[i].rideId}-pickup"),
      //     position: data[i].pickupLocation,
      //     icon: BitmapDescriptor.fromBytes(
      //       await generateIcon(true, polylines.elementAt(i).color),
      //     ),
      //   ),
      // );
      // markers.add(
      //   Marker(
      //     markerId: MarkerId("${data[i].rideId}-dropoff"),
      //     position: data[i].dropoffLocation,
      //     icon: BitmapDescriptor.fromBytes(
      //       await generateIcon(false, polylines.elementAt(i).color),
      //     ),
      //   ),
      // );
    }
    return markers;
  }
}
