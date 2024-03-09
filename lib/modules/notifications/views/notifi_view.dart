import 'package:commuter_driver/core/themes/controller/app_theme_bloc.dart';
import 'package:commuter_driver/core/themes/text_styles.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:jiffy/jiffy.dart';

class NotifiView extends StatelessWidget {
  const NotifiView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('الاشعارات'),
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
                  'حذف الكل',
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
    'title': 'طلب للأنضمام الي تنقل',
    'msg': 'ارسل احمد علي طلب انضمام الي تنقل العمل',
    'dateTime': DateTime.now().add(const Duration(minutes: 3))
  },
  {
    'title': 'طلب للأنضمام الي رحلة محدولة',
    'msg': 'ارسل محمد ماهر طلب انضمام الي رحلتك المجدولة القاهرة',
    'dateTime': DateTime.now().add(const Duration(hours: 5))
  },
  {
    'title': 'ملفي الشخصي',
    'msg': 'قام حسام ابراهيم بتقييمك 4 نجوم',
    'dateTime': DateTime.now().add(const Duration(days: 2))
  },
];
