part of '../add_commute_view.dart';

class _StageView extends StatelessWidget {
  const _StageView({
    required this.location,
    required this.onPickLocation,
    required this.selectedRange,
    required this.onSelectionRangeChanged,
    required this.onStartTimeSet,
    required this.onEndTimeSet,
    required this.startTime,
    required this.endTime,
  });
  final String? location;
  final Function() onPickLocation;
  final Set<int> selectedRange;
  final Function(Set<int>) onSelectionRangeChanged;
  final Function(DateTime) onStartTimeSet;
  final Function(DateTime) onEndTimeSet;
  final DateTime? startTime;
  final DateTime? endTime;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Card(
          child: Padding(
            padding: EdgeInsets.all(10.w),
            child: Column(
              children: [
                LocationView(
                  location: location,
                  onPickLocation: onPickLocation,
                ),
                Divider(height: 10.h),
                RangeView(
                  selectedRange: selectedRange,
                  onSelectionRangeChanged: onSelectionRangeChanged,
                ),
                Divider(height: 10.h),
                TimeWindowView(
                  onStartTimeSet: onStartTimeSet,
                  onEndTimeSet: onEndTimeSet,
                  startTime: startTime,
                  endTime: endTime,
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
