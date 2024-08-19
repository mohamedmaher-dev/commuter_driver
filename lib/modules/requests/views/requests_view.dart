import 'package:commuter_driver/core/themes/text_styles.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../core/themes/color_manger.dart';
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
    'msg': 'Send You Requst To Join Work Commute',
    'name': 'Mohamed Maher',
  },
  {
    'msg': 'Send You Request To Join Your Cairo Trip',
    'name': 'Ali Ibrahim',
  },
  {
    'msg': 'Send You Request To Create Private Trip',
    'name': 'Hossam Ashraf',
  },
];
