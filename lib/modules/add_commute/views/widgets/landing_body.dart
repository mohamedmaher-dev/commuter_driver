part of '../add_commute_view.dart';

class _LandingBody extends StatelessWidget {
  const _LandingBody();

  @override
  Widget build(BuildContext context) {
    final landingBloc = BlocProvider.of<AddCommuteLandingBloc>(context);
    return BlocBuilder<AddCommuteLandingBloc, AddCommuteLandingState>(
      builder: (context, state) {
        return _StageView(
          location: landingBloc.landingLocationName ?? "لم يتم التحديد",
          onPickLocation: () {
            showDialog(
              context: context,
              builder: (context) => PickLocationView(
                onPickLocation: (latLng, placemark) {
                  landingBloc.add(
                    AddCommuteLandingEvent.setLocation(
                      latLng: latLng,
                      placemark: placemark,
                    ),
                  );
                },
              ),
            );
          },
          selectedRange: landingBloc.landingRange,
          onSelectionRangeChanged: (range) {
            landingBloc.add(
              AddCommuteLandingEvent.changeRange(range: range),
            );
          },
          onStartTimeSet: (dateTime) {
            landingBloc.add(
              AddCommuteLandingEvent.setStartTime(time: dateTime),
            );
          },
          onEndTimeSet: (dateTime) {
            landingBloc.add(
              AddCommuteLandingEvent.setEndTime(time: dateTime),
            );
          },
          startTime: landingBloc.startTime,
          endTime: landingBloc.endTime,
        );
      },
    );
  }
}
