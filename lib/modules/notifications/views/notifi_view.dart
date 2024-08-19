import 'package:commuter_driver/core/themes/text_styles.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:jiffy/jiffy.dart';

import '../../../core/themes/color_manger.dart';

class NotifiView extends StatelessWidget {
  const NotifiView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Notifications'),
      ),
      body: Padding(
        padding: EdgeInsets.all(10.0.w),
        child: Column(
          children: [
            Align(
              alignment: AlignmentDirectional.centerStart,
              child: ElevatedButton.icon(
                style: ButtonStyle(
                  foregroundColor: MaterialStatePropertyAll(
                    ColorManger.red,
                  ),
                ),
                onPressed: () {},
                icon: const Icon(Icons.delete),
                label: const Text(
                  'Delete All',
                ),
              ),
            ),
            ListView.builder(
              shrinkWrap: true,
              itemBuilder: (context, index) => Card(
                child: ListTile(
                  leading: const Icon(CupertinoIcons.bell_circle_fill),
                  title: Text(
                    _list[index]['title'],
                    style: TextStyles.tsP12B,
                  ),
                  subtitle: Text(
                    _list[index]['msg'],
                  ),
                  trailing: Text(
                    Jiffy.parseFromDateTime(
                      _list[index]['dateTime'],
                    ).toNow(),
                  ),
                ),
              ),
              itemCount: _list.length,
            ),
          ],
        ),
      ),
    );
  }
}

List _list = [
  {
    'title': 'Request To Join Your Work Commute',
    'msg': 'Ahmed Mohamed has requested to join your work commute',
    'dateTime': DateTime.now().add(const Duration(minutes: 3))
  },
  {
    'title': 'Request To Join Your Trip',
    'msg': 'Mohamed Maher has requested to join your trip',
    'dateTime': DateTime.now().add(const Duration(hours: 5))
  },
  {
    'title': 'My Profile',
    'msg': 'Hossam Ibrahim rated you 4.5 stars',
    'dateTime': DateTime.now().add(const Duration(days: 2))
  },
];
