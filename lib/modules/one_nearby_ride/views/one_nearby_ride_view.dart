import 'package:awesome_snackbar_content/awesome_snackbar_content.dart';
import 'package:commuter_driver/core/di/di.dart';
import 'package:commuter_driver/core/routes/app_route.dart';
import 'package:commuter_driver/core/widgets/app_map_view.dart';
import 'package:commuter_driver/core/widgets/app_snack_bar.dart';
import 'package:commuter_driver/core/widgets/circle_loading.dart';
import 'package:commuter_driver/core/widgets/pop_loading.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:badges/badges.dart' as badges;
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../core/themes/color_manger.dart';
import '../../../core/themes/text_styles.dart';
import '../controller/one_nearby_ride/one_nearby_ride_bloc.dart';

class OneNearbyRideView extends StatelessWidget {
  const OneNearbyRideView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) =>
          di<OneNearbyRideBloc>()..add(const OneNearbyRideEvent.started()),
      child: const _OneNearbyRideView(),
    );
  }
}

class _OneNearbyRideView extends StatelessWidget {
  const _OneNearbyRideView();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocConsumer<OneNearbyRideBloc, OneNearbyRideState>(
        listener: (context, state) {
          PopLoading.dismiss();
          state.whenOrNull(
            pLoading: () {
              PopLoading.show();
            },
            completeSuccess: () {
              AppRouter.pushReplacement(context: context, page: Pages.navPage);
            },
            completeFailure: () {
              AppSnackBar.show(
                title: 'Failure',
                msg: 'Failure to complete ride',
                type: ContentType.failure,
                context: context,
              );
            },
            startFailure: () {
              AppSnackBar.show(
                title: 'Failure',
                msg: 'Failure to start ride',
                type: ContentType.failure,
                context: context,
              );
            },
          );
        },
        builder: (context, state) {
          return state.maybeWhen(
            orElse: () {
              return Column(
                children: [
                  const Expanded(
                    child: _GMap(),
                  ),
                  Expanded(
                    child: Padding(
                      padding: EdgeInsets.all(10.w),
                      child: ListView(
                        children: const [
                          _TopBar(),
                          Divider(),
                          _InfoBody(),
                        ],
                      ),
                    ),
                  ),
                ],
              );
            },
            initial: () => const Center(child: CircleLoading()),
            loading: () => const Center(child: CircleLoading()),
            failure: () => const Center(child: Icon(Icons.error)),
          );
        },
      ),
    );
  }
}

class _TopBar extends StatelessWidget {
  const _TopBar();

  @override
  Widget build(BuildContext context) {
    final oneNearbyRideBloc = BlocProvider.of<OneNearbyRideBloc>(context);

    return Row(
      children: [
        Expanded(
          child: Align(
            child: badges.Badge(
              badgeContent: const Text('2'),
              child: IconButton.outlined(
                onPressed: () {},
                icon: Icon(
                  CupertinoIcons.chat_bubble_2_fill,
                  color: ColorManger.primary,
                ),
              ),
            ),
          ),
        ),
        Expanded(
          child: Align(
            child: badges.Badge(
              badgeContent: const Text('5'),
              child: IconButton.outlined(
                onPressed: () {},
                icon: Icon(
                  CupertinoIcons.bell_fill,
                  color: ColorManger.primary,
                ),
              ),
            ),
          ),
        ),
        Expanded(
          flex: 2,
          child: FilledButton(
            onPressed: () {
              if (oneNearbyRideBloc.isStarted) {
                oneNearbyRideBloc.add(const OneNearbyRideEvent.completeRide());
              } else {
                oneNearbyRideBloc.add(const OneNearbyRideEvent.startRide());
              }
            },
            child: BlocBuilder<OneNearbyRideBloc, OneNearbyRideState>(
              builder: (context, state) {
                return Text(
                  oneNearbyRideBloc.isStarted ? 'Complete' : 'Start',
                );
              },
            ),
          ),
        ),
        Expanded(
          child: Align(
            child: IconButton.outlined(
              onPressed: () {},
              icon: Icon(
                CupertinoIcons.list_bullet,
                color: ColorManger.primary,
              ),
            ),
          ),
        ),
        Expanded(
          child: Align(
            child: IconButton.outlined(
              onPressed: () {},
              icon: Icon(
                CupertinoIcons.person_fill,
                color: ColorManger.primary,
              ),
            ),
          ),
        ),
      ],
    );
  }
}

class _InfoBody extends StatelessWidget {
  const _InfoBody();

  @override
  Widget build(BuildContext context) {
    final oneNearbyRideBloc = BlocProvider.of<OneNearbyRideBloc>(context);

    return BlocBuilder<OneNearbyRideBloc, OneNearbyRideState>(
      builder: (context, state) {
        return ListView(
          physics: const NeverScrollableScrollPhysics(),
          shrinkWrap: true,
          children: [
            Row(
              children: [
                Expanded(
                  child: Card(
                    child: ListTile(
                      leading: const Icon(Icons.person),
                      title: Text(
                        maxLines: 1,
                        oneNearbyRideBloc.clientName,
                        style: TextStyles.tsP12B,
                      ),
                      subtitle: const Text(
                        'Client Name',
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: Card(
                    child: ListTile(
                      leading: const Icon(Icons.attach_money),
                      title: Text(
                        maxLines: 1,
                        '${oneNearbyRideBloc.nearbyRidesModel.fare} SAR',
                        style: TextStyles.tsP12B,
                      ),
                      subtitle: const Text(
                        'Price',
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Row(
              children: [
                Expanded(
                  child: Card(
                    child: ListTile(
                      leading: const Icon(Icons.drive_eta),
                      title: Text(
                        '${oneNearbyRideBloc.routeInfo.routes.first.distanceMeters} Meters',
                        style: TextStyles.tsP12B,
                      ),
                      subtitle: const Text(
                        'Distance',
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: Card(
                    child: ListTile(
                      leading: const Icon(Icons.access_time),
                      title: Text(
                        oneNearbyRideBloc.routeInfo.routes.first.duration,
                        style: TextStyles.tsP12B,
                      ),
                      subtitle: const Text(
                        'Duration',
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Card(
              child: Column(
                children: [
                  ListTile(
                    title: Text(
                      oneNearbyRideBloc.pickupAddress,
                      style: TextStyles.tsP12B,
                      maxLines: 1,
                    ),
                    subtitle: const Text(
                      'Start Location',
                    ),
                  ),
                  const Divider(),
                  ListTile(
                    title: Text(
                      oneNearbyRideBloc.dropOffAddress,
                      style: TextStyles.tsP12B,
                      maxLines: 1,
                    ),
                    subtitle: const Text(
                      'End Location',
                    ),
                  ),
                ],
              ),
            ),
          ],
        );
      },
    );
  }
}

class _GMap extends StatelessWidget {
  const _GMap();

  @override
  Widget build(BuildContext context) {
    final oneNearbyRideBloc = BlocProvider.of<OneNearbyRideBloc>(context);
    return BlocBuilder<OneNearbyRideBloc, OneNearbyRideState>(
      builder: (context, state) {
        return AppMapView(
          target: oneNearbyRideBloc.currentLocation,
          polylines: {oneNearbyRideBloc.polyline},
        );
      },
    );
  }
}
