import 'package:commuter_driver/core/localization/generated/l10n.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../themes/app_theme_controller.dart';

class _PopUpSlider extends StatelessWidget {
  const _PopUpSlider({
    required this.title,
    required this.subtitle,
    required this.label,
    required this.unit,
    required this.divisions,
    required this.max,
    required this.value,
    required this.defaultValue,
    required this.onChanged,
  });
  final String title;
  final String subtitle;
  final String label;
  final String unit;
  final int divisions;
  final int max;
  final int value;
  final int defaultValue;

  final Function(int) onChanged;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10.w),
      child: Card(
        child: Column(
          mainAxisSize: MainAxisSize.min, // Prevent excessive space usage
          children: [
            ListTile(
              title: Text(
                title,
                style: TextStyles.tsP15B,
              ),
              subtitle: Text(
                subtitle,
              ),
            ),
            Slider(
              divisions: divisions,
              label: label,
              max: max.toDouble(),
              min: 0,
              value: value.toDouble(),
              onChanged: (value) => onChanged(value.toInt()),
            ),
          ],
        ),
      ),
    );
  }
}

Future<void> showChangerPopUpSlider({
  required BuildContext context,
  required String title,
  required String subtitle,
  required String label,
  required String unit,
  required int divisions,
  required int max,
  required int value,
  required int defaultValue,
  required ValueChanged<int> onChanged,
}) async {
  await showCupertinoModalPopup(
    context: context,
    builder: (context) => StatefulBuilder(
      builder: (context, setState) {
        final language = Language.of(context);
        return _PopUpSlider(
          title: title,
          subtitle: subtitle,
          label: value == 0 ? language.default_text : "$label $unit",
          unit: unit,
          divisions: divisions,
          max: max,
          value: value,
          defaultValue: defaultValue,
          onChanged: (newValue) {
            setState(
              () {
                value = newValue;
                if (value > 0) {
                  label = newValue.toString();
                  onChanged(newValue);
                } else {
                  label = defaultValue.toString();
                  onChanged(defaultValue);
                }
              },
            );
          },
        );
      },
    ),
  );
}
