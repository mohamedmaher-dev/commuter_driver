import 'package:commuter_driver/core/themes/text_styles.dart';
import 'package:commuter_driver/core/utils/assets_manger.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class EmptyView extends StatelessWidget {
  const EmptyView({super.key, required this.msg});
  final String msg;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Image.asset(
          AssetsManger.emptyimage,
          height: 150.h,
        ),
        Text(
          'No Item Found',
          style: TextStyles.tsP12B,
          textAlign: TextAlign.center,
        ),
        Text(
          msg,
          textAlign: TextAlign.center,
        ),
      ],
    );
  }
}
