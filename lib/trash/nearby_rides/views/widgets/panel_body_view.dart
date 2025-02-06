import 'package:commuter_driver/core/widgets/circle_loading.dart';
import 'package:commuter_driver/trash/nearby_rides/views/widgets/ride_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../controllers/nearby_rides_bloc/nearby_rides_bloc.dart';
import 'header_icon_view.dart';

class PanelBodyView extends StatelessWidget {
  const PanelBodyView({super.key});

  @override
  Widget build(BuildContext context) {
    final nearbyRidesBloc = BlocProvider.of<NearbyRidesBloc>(context);
    return BlocBuilder<NearbyRidesBloc, NearbyRidesState>(
      builder: (context, state) {
        return Column(
          children: [
            const IconHeader(isOpen: true),
            Expanded(
              child: BlocBuilder<NearbyRidesBloc, NearbyRidesState>(
                builder: (context, state) {
                  return state.maybeWhen(
                    orElse: () {
                      return ListView.builder(
                        itemCount: nearbyRidesBloc.nearbyRides.length,
                        itemBuilder: (item, index) =>
                            NearbyRideItem(index: index),
                      );
                    },
                    getRidesFailure: () {
                      return const Center(
                        child: Text('No Nearby Rides Found'),
                      );
                    },
                    getRidesLoading: () {
                      return const Center(
                        child: CircleLoading(),
                      );
                    },
                    initial: () {
                      return const Center(
                        child: CircleLoading(),
                      );
                    },
                  );
                },
              ),
            )
          ],
        );
      },
    );
  }
}
