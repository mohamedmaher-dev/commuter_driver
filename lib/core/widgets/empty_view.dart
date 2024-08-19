import 'package:commuter_driver/core/themes/text_styles.dart';
import 'package:commuter_driver/core/utils/assets_manger.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class EmptyView extends StatelessWidget {
  const EmptyView({super.key, this.text, this.showIcon = true});
  final String? text;
  final bool showIcon;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        if (showIcon)
          SvgPicture.asset(
            AssetsManger.emptyIcon,
            height: 100.h,
            width: 100.w,
          ),
        Text(
          text ?? 'No data found',
          style: TextStyles.tsP12B,
        ),
      ],
    );
  }
}
