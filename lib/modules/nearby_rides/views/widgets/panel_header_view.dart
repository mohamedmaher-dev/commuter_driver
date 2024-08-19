import 'package:commuter_driver/modules/nearby_rides/controllers/nearby_rides_bloc/nearby_rides_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/themes/text_styles.dart';
import '../../../../core/widgets/circle_loading.dart';
import 'header_icon_view.dart';

class PanelHeaderView extends StatelessWidget {
  const PanelHeaderView({super.key});

  @override
  Widget build(BuildContext context) {
    final NearbyRidesBloc nearbyRidesBloc =
        BlocProvider.of<NearbyRidesBloc>(context);
    return Column(
      children: [
        const IconHeader(isOpen: false),
        BlocBuilder<NearbyRidesBloc, NearbyRidesState>(
          builder: (context, state) {
            return state.maybeWhen(
              orElse: () {
                return Column(
                  children: [
                    Text(
                      nearbyRidesBloc.nearbyRides.length.toString(),
                      style: TextStyles.tsP15B,
                    ),
                    const Text('Nearby Rides Available Now'),
                  ],
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
      ],
    );
  }
}
