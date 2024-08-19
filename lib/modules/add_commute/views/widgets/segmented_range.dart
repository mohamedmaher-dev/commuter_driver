import 'package:flutter/material.dart';

class SegmentedRange extends StatelessWidget {
  const SegmentedRange(
      {super.key, required this.selected, required this.onSelectionChanged});
  final Set<int> selected;
  final Function(Set<int>) onSelectionChanged;

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.ltr,
      child: SegmentedButton(
        multiSelectionEnabled: false,
        emptySelectionAllowed: false,
        showSelectedIcon: false,
        segments: const [
          ButtonSegment(
            value: 1,
            label: Text('1 KM'),
          ),
          ButtonSegment(
            value: 2,
            label: Text('2 KM'),
          ),
          ButtonSegment(
            value: 4,
            label: Text('4 KM'),
          ),
          ButtonSegment(
            value: 5,
            label: Text('5 KM'),
          ),
        ],
        selected: selected,
        onSelectionChanged: onSelectionChanged,
      ),
    );
  }
}
