import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../themes/color_manger.dart';
import '../themes/text_styles.dart';

class ErrorView extends StatelessWidget {
  const ErrorView({super.key, this.onPressed, this.showBtn = true});
  final void Function()? onPressed;
  final bool showBtn;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          size: 25.w,
          CupertinoIcons.xmark_circle,
          color: ColorManger.red,
        ),
        SizedBox(height: 5.h),
        Text(
          'Something went wrong, please try again',
          style: TextStyles.tsP10N,
        ),
        if (showBtn)
          ElevatedButton.icon(
            style: const ButtonStyle(elevation: WidgetStatePropertyAll(0)),
            onPressed: onPressed,
            label: const Text('Try Again'),
            icon: const Icon(Icons.refresh),
          ),
      ],
    );
  }
}
