import 'package:commuter_driver/core/themes/text_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AddSheduleView extends StatelessWidget {
  const AddSheduleView({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      shrinkWrap: true,
      padding: EdgeInsets.all(10.w),
      children: [
        ListTile(
          leading: const Icon(Icons.location_pin),
          title: Text(
            "Not Selected",
            style: TextStyles.tsP12B,
          ),
          subtitle: const Text('Location of the trip'),
          trailing: IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.add,
            ),
          ),
        ),
        const Divider(),
        ListTile(
          leading: const Icon(Icons.calendar_month),
          title: Text(
            "Not Selected",
            style: TextStyles.tsP12B,
          ),
          subtitle: const Text('Date of the trip'),
          trailing: IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.add,
            ),
          ),
        ),
        FilledButton.icon(
          onPressed: () {},
          icon: const Icon(Icons.add),
          label: const Text('Add Schedule Trip'),
        )
      ],
    );
  }
}
