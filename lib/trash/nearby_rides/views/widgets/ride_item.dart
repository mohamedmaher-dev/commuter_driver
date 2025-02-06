import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../core/themes/app_theme_controller.dart';
import '../../controllers/nearby_rides_bloc/nearby_rides_bloc.dart';

class NearbyRideItem extends StatelessWidget {
  const NearbyRideItem({super.key, required this.index});
  final int index;

  @override
  Widget build(BuildContext context) {
    final nearbyRidesBloc = BlocProvider.of<NearbyRidesBloc>(context);
    return ExpansionTile(
      leading: Icon(
        Icons.circle,
        color: nearbyRidesBloc.polylines.elementAt(index).color,
      ),
      title: Text(
        'Ride ${index + 1}',
        style: TextStyles.ts15B,
      ),
      subtitle: Text(
        style: TextStyles.tsP10B,
        '${nearbyRidesBloc.nearbyRides[index].fare} SAR',
      ),
      children: [
        const Divider(),
        Padding(
          padding: EdgeInsets.all(10.w),
          child: Row(
            children: [
              Expanded(
                child: ElevatedButton(
                  onPressed: () {
                    nearbyRidesBloc.add(
                      NearbyRidesEvent.goTo(
                        nearbyRidesBloc.nearbyRides[index].pickupLocation,
                      ),
                    );
                  },
                  child: const Text('Go To Pickup'),
                ),
              ),
              SizedBox(width: 10.w),
              Expanded(
                child: ElevatedButton(
                  onPressed: () {
                    nearbyRidesBloc.add(
                      NearbyRidesEvent.goTo(
                        nearbyRidesBloc.nearbyRides[index].dropoffLocation,
                      ),
                    );
                  },
                  child: const Text('Go To Dropoff'),
                ),
              )
            ],
          ),
        ),
        const Divider(),
        Padding(
          padding: EdgeInsets.all(10.w),
          child: Row(
            children: [
              Expanded(
                child: ElevatedButton.icon(
                  style: ButtonStyle(
                    backgroundColor: const MaterialStatePropertyAll(
                      ColorManger.transparent,
                    ),
                    foregroundColor: MaterialStatePropertyAll(
                      ColorManger.primary,
                    ),
                    side: MaterialStatePropertyAll(
                      BorderSide(
                        width: 2,
                        color: ColorManger.primary,
                      ),
                    ),
                  ),
                  onPressed: () {},
                  label: const Text('Chat'),
                  icon: const Icon(Icons.chat),
                ),
              ),
              SizedBox(width: 10.w),
              Expanded(
                child: ElevatedButton.icon(
                  style: ButtonStyle(
                    backgroundColor: MaterialStatePropertyAll(
                      ColorManger.primary,
                    ),
                    foregroundColor: MaterialStatePropertyAll(
                      ColorManger.primaryContainer,
                    ),
                  ),
                  onPressed: () {
                    nearbyRidesBloc.add(NearbyRidesEvent.acceptRide(index));
                  },
                  label: const Text('Accept'),
                  icon: const Icon(Icons.done),
                ),
              ),
            ],
          ),
        )
      ],
    );
  }
}
