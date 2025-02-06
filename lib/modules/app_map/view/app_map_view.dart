import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import '../../../core/di/di.dart';
import '../../../core/themes/app_theme_controller.dart';
import '../../../core/widgets/error_view.dart';
import '../../../core/widgets/loading_view.dart';
import '../controllers/app_map/app_map_bloc.dart';

class AppMapView extends StatelessWidget {
  const AppMapView({
    super.key,
    this.autoMove = false,
    this.onMapCreated,
    this.onCameraMove,
    this.onTap,
    this.markers = const {},
    this.circles = const {},
  });
  final bool autoMove;
  final Function(GoogleMapController)? onMapCreated;
  final Function(CameraPosition)? onCameraMove;
  final Function(LatLng)? onTap;
  final Set<Marker> markers;
  final Set<Circle> circles;
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => di<AppMapBloc>()
        ..add(
          AppMapEvent.started(
            autoMove: autoMove,
          ),
        ),
      child: _AppMapViewBody(
        autoMove: autoMove,
        onMapCreated: onMapCreated,
        onCameraMove: onCameraMove,
        onTap: onTap,
        markers: markers,
        circles: circles,
      ),
    );
  }
}

class _AppMapViewBody extends StatelessWidget {
  const _AppMapViewBody({
    required this.autoMove,
    required this.onMapCreated,
    required this.onCameraMove,
    required this.onTap,
    required this.markers,
    required this.circles,
  });
  final bool autoMove;
  final Function(GoogleMapController)? onMapCreated;
  final Function(CameraPosition)? onCameraMove;
  final Function(LatLng)? onTap;
  final Set<Marker> markers;
  final Set<Circle> circles;
  @override
  Widget build(BuildContext context) {
    final bloc = BlocProvider.of<AppMapBloc>(context);
    return BlocBuilder<AppMapBloc, AppMapState>(
      builder: (context, state) {
        return state.maybeWhen(
          orElse: () => const LoadingView(),
          success: () => GoogleMap(
            markers: markers,
            circles: circles,
            initialCameraPosition: bloc.initialCameraPosition,
            buildingsEnabled: false,
            compassEnabled: false,
            indoorViewEnabled: false,
            trafficEnabled: true,
            myLocationEnabled: true,
            myLocationButtonEnabled: false,
            zoomControlsEnabled: false,
            padding: EdgeInsets.all(MediaQuery.of(context).size.height * 2),
            style: AppTheme.mapStyle,
            onMapCreated: (controller) {
              bloc.add(AppMapEvent.onMapCreated(controller));
              if (onMapCreated != null) onMapCreated!(controller);
            },
            onCameraMove: (position) {
              bloc.add(AppMapEvent.onMapMove(position));
              if (onCameraMove != null) onCameraMove!(position);
            },
            onTap: onTap,
          ),
          failure: () => ErrorView(
            onPressed: () {
              bloc.add(AppMapEvent.started(autoMove: autoMove));
            },
          ),
        );
      },
    );
  }
}
