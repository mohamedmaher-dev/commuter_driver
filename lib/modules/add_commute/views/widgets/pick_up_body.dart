part of '../add_commute_view.dart';

class _PickUpBody extends StatelessWidget {
  const _PickUpBody({super.key});

  @override
  Widget build(BuildContext context) {
    final pickupBloc = BlocProvider.of<AddCommutePickupBloc>(context);

    return BlocBuilder<AddCommutePickupBloc, AddCommutePickupState>(
      builder: (context, state) {
        return _StageView(
          location: pickupBloc.pickUpLocationName,
          onPickLocation: () {
            showDialog(
              context: context,
              builder: (context) => PickLocationView(
                onPickLocation: (latLng, placemark) {
                  pickupBloc.add(
                    AddCommutePickupEvent.setLocation(
                      latLng: latLng,
                      placemark: placemark,
                    ),
                  );
                },
              ),
            );
          },
          selectedRange: pickupBloc.pickUpRange,
          onSelectionRangeChanged: (range) {
            pickupBloc.add(
              AddCommutePickupEvent.changeRange(range: range),
            );
          },
          onStartTimeSet: (dateTime) {
            pickupBloc.add(
              AddCommutePickupEvent.setStartTime(time: dateTime),
            );
          },
          onEndTimeSet: (dateTime) {
            pickupBloc.add(
              AddCommutePickupEvent.setEndTime(time: dateTime),
            );
          },
          startTime: pickupBloc.startTime,
          endTime: pickupBloc.endTime,
        );
      },
    );
  }
}
