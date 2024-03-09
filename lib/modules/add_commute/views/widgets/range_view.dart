import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'segmented_range.dart';

class RangeView extends StatelessWidget {
  const RangeView(
      {super.key,
      required this.selectedRange,
      required this.onSelectionRangeChanged});
  final Set<int> selectedRange;
  final Function(Set<int>) onSelectionRangeChanged;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Expanded(
              child: ListTile(
                leading: IconButton(
                  onPressed: () {},
                  icon: const Icon(CupertinoIcons.info_circle_fill),
                ),
                title: Padding(
                  padding: EdgeInsets.all(5.w),
                  child: const Text(
                    'النطاق',
                  ),
                ),
                subtitle: SegmentedRange(
                  selected: selectedRange,
                  onSelectionChanged: onSelectionRangeChanged,
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
