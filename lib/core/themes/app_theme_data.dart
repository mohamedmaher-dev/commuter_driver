import 'package:commuter_driver/core/themes/app_theme_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'color_manger.dart';

class AppThemeData {
  AppThemeData._();
  static get floatingActionButtonTheme => FloatingActionButtonThemeData(
        foregroundColor: ColorManger.primary,
      );

  static get segmentedButtonTheme => SegmentedButtonThemeData(
        style: ButtonStyle(
          foregroundColor: WidgetStateProperty.resolveWith<Color>(
            (Set<WidgetState> states) {
              if (states.contains(WidgetState.selected)) {
                return ColorManger.black;
              }
              return Colors.white;
            },
          ),
          shape: WidgetStatePropertyAll(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10.r),
            ),
          ),
          padding: const WidgetStatePropertyAll(
            EdgeInsets.all(0),
          ),
          backgroundColor: WidgetStateProperty.resolveWith<Color>(
            (Set<WidgetState> states) {
              if (states.contains(WidgetState.selected)) {
                return ColorManger.primary;
              }
              return Colors.transparent;
            },
          ),
        ),
      );
  static final iconButtonThemeData = IconButtonThemeData(
    style: ButtonStyle(
      shape: WidgetStatePropertyAll(
        RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10.r),
        ),
      ),
    ),
  );

  static final filledButtonThemeData = FilledButtonThemeData(
    style: ButtonStyle(
      minimumSize: WidgetStatePropertyAll(
        Size(
          double.infinity,
          40.h,
        ),
      ),
      shape: WidgetStatePropertyAll(
        RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10.r),
        ),
      ),
      textStyle: WidgetStatePropertyAll(
        TextStyle(
          fontSize: 12.sp,
          fontWeight: FontWeight.bold,
          fontFamily: AppThemeController.font,
        ),
      ),
    ),
  );

  static final outlinedButtonThemeData = OutlinedButtonThemeData(
    style: ButtonStyle(
      minimumSize: WidgetStatePropertyAll(
        Size(
          double.infinity,
          40.h,
        ),
      ),
      shape: WidgetStatePropertyAll(
        RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10.r),
        ),
      ),
      textStyle: WidgetStatePropertyAll(
        TextStyle(
          fontSize: 15.sp,
          fontWeight: FontWeight.bold,
          fontFamily: AppThemeController.font,
        ),
      ),
    ),
  );

  static final elevatedButtonThemeData = ElevatedButtonThemeData(
    style: ButtonStyle(
      shape: WidgetStatePropertyAll(
        RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10.r),
        ),
      ),
    ),
  );
  static final textButtonThemeData = TextButtonThemeData(
    style: ButtonStyle(
      shape: WidgetStatePropertyAll(
        RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10.r),
        ),
      ),
    ),
  );

  static final inputDecorationTheme = InputDecorationTheme(
    border: OutlineInputBorder(
      borderRadius: BorderRadius.circular(10.r),
    ),
    filled: false,
  );

  static const pageTransitionsTheme = PageTransitionsTheme(
    builders: {
      TargetPlatform.android: CupertinoPageTransitionsBuilder(),
      TargetPlatform.iOS: CupertinoPageTransitionsBuilder(),
    },
  );
}
