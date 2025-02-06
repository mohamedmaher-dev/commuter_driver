import 'package:awesome_snackbar_content/awesome_snackbar_content.dart';
import 'package:commuter_driver/core/routes/app_route.dart';
import 'package:commuter_driver/core/widgets/app_snack_bar.dart';
import 'package:commuter_driver/core/widgets/pop_loading.dart';
import 'package:commuter_driver/trash/nearby_rides/controllers/slide_panel_bloc/slide_panel_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:sliding_up_panel/sliding_up_panel.dart';
import '../../../core/di/di.dart';
import '../../../core/themes/app_theme_controller.dart';
import '../../../modules/app_map/view/app_map_view.dart';
import '../controllers/nearby_rides_bloc/nearby_rides_bloc.dart';
import 'widgets/panel_body_view.dart';
import 'widgets/panel_header_view.dart';

class NearbyRidesView extends StatelessWidget {
  const NearbyRidesView({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => di<NearbyRidesBloc>()
            ..add(
              const NearbyRidesEvent.started(),
            ),
          lazy: false,
        ),
        BlocProvider(
          create: (context) => SlidePanelBloc(),
        ),
      ],
      child: const _NearbyRidesView(),
    );
  }
}

class _NearbyRidesView extends StatelessWidget {
  const _NearbyRidesView();

  @override
  Widget build(BuildContext context) {
    final slidePanelBloc = BlocProvider.of<SlidePanelBloc>(context);
    final NearbyRidesBloc nearbyRidesBloc =
        BlocProvider.of<NearbyRidesBloc>(context);
    return BlocListener<NearbyRidesBloc, NearbyRidesState>(
      listener: (context, state) {
        PopLoading.dismiss();
        state.whenOrNull(
          acceptLoading: () {
            PopLoading.show();
          },
          acceptFailure: () {
            AppSnackBar.show(
              title: 'Failure',
              msg: 'Failure to accept ride',
              type: ContentType.failure,
              context: context,
            );
          },
          acceptSuccess: () {
            AppRouter.pushReplacement(
                context: context, page: Pages.oneNearbyRide);
          },
        );
      },
      child: Scaffold(
        body: SlidingUpPanel(
          controller: slidePanelBloc.panelController,
          margin: const EdgeInsets.all(0),
          padding: const EdgeInsets.all(0),
          parallaxOffset: 0,
          color: ColorManger.background,
          borderRadius: BorderRadius.vertical(
            top: Radius.circular(25.r),
          ),
          minHeight: 75.h,
          backdropEnabled: true,
          backdropOpacity: 0,
          panel: BlocBuilder<SlidePanelBloc, SlidePanelState>(
            builder: (context, state) {
              return AnimatedSwitcher(
                duration: const Duration(milliseconds: 250),
                child: slidePanelBloc.panelController.isPanelOpen
                    ? const PanelBodyView()
                    : const PanelHeaderView(),
                transitionBuilder: (child, animation) => FadeTransition(
                  opacity: animation,
                  child: child,
                ),
              );
            },
          ),
          onPanelSlide: (newPosition) {
            slidePanelBloc.add(SlidePanelEvent.onPanelSlide(newPosition));
          },
          body: BlocBuilder<NearbyRidesBloc, NearbyRidesState>(
            builder: (context, state) {
              return AppMapView(
                onMapCreated: (controller) {
                  nearbyRidesBloc.add(
                    NearbyRidesEvent.onMapCreated(controller),
                  );
                },
                markers: nearbyRidesBloc.markers,
                // target: const LatLng(0, 0),
                // polylines: nearbyRidesBloc.polylines,
              );
            },
          ),
        ),
      ),
    );
  }
}
