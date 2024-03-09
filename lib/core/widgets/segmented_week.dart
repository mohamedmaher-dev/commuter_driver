import 'package:flutter/material.dart';

class SegmentedWeek extends StatelessWidget {
  const SegmentedWeek(
      {super.key, required this.days, required this.onSelectionChanged});
  final Set<String> days;
  final Function(Set<String>)? onSelectionChanged;
  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.ltr,
      child: SegmentedButton(
        segments: const [
          ButtonSegment(
            value: 'Saturday',
            label: Text('Sat'),
          ),
          ButtonSegment(
            value: 'Sunday',
            label: Text('Sun'),
          ),
          ButtonSegment(
            value: 'Monday',
            label: Text('Mon'),
          ),
          ButtonSegment(
            value: 'Tuesday',
            label: Text('Tue'),
          ),
          ButtonSegment(
            value: 'Wednesday',
            label: Text('Wed'),
          ),
          ButtonSegment(
            value: 'Thursday',
            label: Text('Thu'),
          ),
          ButtonSegment(
            value: 'Friday',
            label: Text('Fri'),
          ),
        ],
        showSelectedIcon: false,
        emptySelectionAllowed: false,
        multiSelectionEnabled: true,
        onSelectionChanged: onSelectionChanged,
        selected: days,
      ),
    );
  }
}
