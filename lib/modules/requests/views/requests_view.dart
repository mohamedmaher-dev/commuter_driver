import 'package:commuter_driver/core/themes/controller/app_theme_bloc.dart';
import 'package:commuter_driver/core/themes/text_styles.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
part 'widgets/action_btns.dart';
part 'widgets/request_item.dart';

class RequestsView extends StatelessWidget {
  const RequestsView({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: EdgeInsets.all(10.w),
      children: [
        const _ActionBTNS(),
        ListView.builder(
          shrinkWrap: true,
          itemCount: _list.length,
          itemBuilder: (context, index) => _RequestItem(
            msg: _list[index]['msg'],
            name: _list[index]['name'],
          ),
        )
      ],
    );
  }
}

List _list = [
  {
    'msg': 'ارسل طلب انضمام الي تنقل العمل',
    'name': 'محمد ماهر',
  },
  {
    'msg': 'ارسل طلب انضمام الي رحلتي المجدولة القاهرة',
    'name': 'علي ابراهيم',
  },
  {
    'msg': 'ارسل  طلب انشاء رحلة خاصة',
    'name': 'حسام اشرف',
  },
];
