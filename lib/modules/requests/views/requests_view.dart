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
            msg: _list[index],
          ),
        )
      ],
    );
  }
}

List _list = [
  'ارسل محمد ماهر طلب انضمام الي تنقل العمل',
  'ارسل علي ابراهيم طلب انضمام الي رحلتي المجدولة القاهرة',
  'ارسل حسام اشرف طلب انشاء رحلة خاصة',
];
