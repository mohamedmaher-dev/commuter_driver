part of 'controller/app_theme_bloc.dart';

class _AppTheme {
  static const String _fontFamily = 'Changa';
  ThemeData get theme => ThemeData(
        colorScheme: ColorManger.colorScheme,
        fontFamily: _fontFamily,
        filledButtonTheme: _filledButtonThemeData,
        outlinedButtonTheme: _outlinedButtonThemeData,
        elevatedButtonTheme: _elevatedButtonThemeData,
        textButtonTheme: _textButtonThemeData,
        inputDecorationTheme: _inputDecorationTheme,
        pageTransitionsTheme: _pageTransitionsTheme,
        iconButtonTheme: _iconButtonThemeData,
        segmentedButtonTheme: _segmentedButtonTheme,
        appBarTheme: _appBarTheme,
        floatingActionButtonTheme: _floatingActionButtonTheme,
      );

  final _appBarTheme = const AppBarTheme();
  final _floatingActionButtonTheme = FloatingActionButtonThemeData(
    foregroundColor: ColorManger.primary,
  );

  final _segmentedButtonTheme = SegmentedButtonThemeData(
    style: ButtonStyle(
      foregroundColor: MaterialStateProperty.resolveWith<Color>(
        (Set<MaterialState> states) {
          if (states.contains(MaterialState.selected)) {
            return ColorManger.black;
          }
          return Colors.white;
        },
      ),
      shape: MaterialStatePropertyAll(
        RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10.r),
        ),
      ),
      padding: const MaterialStatePropertyAll(
        EdgeInsets.all(0),
      ),
      backgroundColor: MaterialStateProperty.resolveWith<Color>(
        (Set<MaterialState> states) {
          if (states.contains(MaterialState.selected)) {
            return ColorManger.primary;
          }
          return Colors.transparent;
        },
      ),
    ),
  );
  final _iconButtonThemeData = IconButtonThemeData(
    style: ButtonStyle(
      shape: MaterialStatePropertyAll(
        RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10.r),
        ),
      ),
    ),
  );

  final _filledButtonThemeData = FilledButtonThemeData(
    style: ButtonStyle(
      minimumSize: MaterialStatePropertyAll(
        Size(
          double.infinity,
          40.h,
        ),
      ),
      shape: MaterialStatePropertyAll(
        RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10.r),
        ),
      ),
      textStyle: MaterialStatePropertyAll(
        TextStyle(
          fontSize: 15.sp,
          fontWeight: FontWeight.bold,
          fontFamily: _fontFamily,
        ),
      ),
    ),
  );

  final _outlinedButtonThemeData = OutlinedButtonThemeData(
    style: ButtonStyle(
      minimumSize: MaterialStatePropertyAll(
        Size(
          double.infinity,
          40.h,
        ),
      ),
      shape: MaterialStatePropertyAll(
        RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10.r),
        ),
      ),
      textStyle: MaterialStatePropertyAll(
        TextStyle(
          fontSize: 15.sp,
          fontWeight: FontWeight.bold,
          fontFamily: _fontFamily,
        ),
      ),
    ),
  );

  final _elevatedButtonThemeData = ElevatedButtonThemeData(
    style: ButtonStyle(
      shape: MaterialStatePropertyAll(
        RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10.r),
        ),
      ),
    ),
  );
  final _textButtonThemeData = TextButtonThemeData(
    style: ButtonStyle(
      shape: MaterialStatePropertyAll(
        RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10.r),
        ),
      ),
    ),
  );

  final _inputDecorationTheme = InputDecorationTheme(
    border: OutlineInputBorder(
      borderRadius: BorderRadius.circular(10.r),
    ),
    filled: false,
  );

  final _pageTransitionsTheme = const PageTransitionsTheme(
    builders: {
      TargetPlatform.android: CupertinoPageTransitionsBuilder(),
    },
  );
}
