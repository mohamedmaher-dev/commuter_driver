import 'package:commuter_driver/core/widgets/pick_time.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:jiffy/jiffy.dart';

import '../../../../../core/localization/generated/l10n.dart';

class TimeWindowView extends StatelessWidget {
  const TimeWindowView(
      {super.key,
      required this.onStartTimeSet,
      required this.onEndTimeSet,
      required this.startTime,
      required this.endTime});
  final Function(DateTime) onStartTimeSet;
  final Function(DateTime) onEndTimeSet;
  final DateTime? startTime;
  final DateTime? endTime;

  @override
  Widget build(BuildContext context) {
    final Language language = Language.of(context);

    return Row(
      children: [
        Expanded(
          child: ListTile(
            leading: IconButton(
              onPressed: () {},
              icon: const Icon(CupertinoIcons.info_circle_fill),
            ),
            title: Text(
              language.start_time,
            ),
            subtitle: Row(
              children: [
                Expanded(
                  child: TextButton.icon(
                    onPressed: () {
                      showModalBottomSheet(
                        context: context,
                        builder: (context) => PickTime(
                          onPressed: onStartTimeSet,
                        ),
                      );
                    },
                    icon: const Icon(CupertinoIcons.time),
                    label: Text(
                      startTime != null
                          ? Jiffy.parseFromDateTime(startTime!).Hm
                          : language.start_time,
                    ),
                  ),
                ),
                const Icon(Icons.arrow_forward_rounded),
                Expanded(
                  child: TextButton.icon(
                    onPressed: () {
                      showModalBottomSheet(
                        context: context,
                        builder: (context) => PickTime(
                          onPressed: onEndTimeSet,
                        ),
                      );
                    },
                    icon: const Icon(CupertinoIcons.time),
                    label: Text(
                      endTime != null
                          ? Jiffy.parseFromDateTime(endTime!).Hm
                          : language.end_time,
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ],
    );
  }
}
