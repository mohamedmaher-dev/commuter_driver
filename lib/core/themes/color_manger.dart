part of 'controller/app_theme_bloc.dart';

class ColorManger {
  static final AppThemeBloc _appThemeBloc = di<AppThemeBloc>();
  ColorManger._();
  static Color white = Colors.white;
  static Color black = Colors.black;
  static Color get primary => colorScheme.primary;
  static Color get primaryContainer => colorScheme.primaryContainer;
  static Color get secondary => colorScheme.secondary;
  static Color get secondaryContainer => colorScheme.secondaryContainer;
  static Color get red => colorScheme.error;

  static ColorScheme get colorScheme =>
      _appThemeBloc.themeMode == ThemeMode.light
          ? const ColorScheme(
              brightness: Brightness.light,
              primary: Color(0xff00296b),
              onPrimary: Color(0xffffffff),
              primaryContainer: Color(0xffa0c2ed),
              onPrimaryContainer: Color(0xff0e1014),
              secondary: Color(0xff5c5c95),
              onSecondary: Color(0xffffffff),
              secondaryContainer: Color(0xffc8dbf8),
              onSecondaryContainer: Color(0xff111214),
              tertiary: Color(0xffd26900),
              onTertiary: Color(0xffffffff),
              tertiaryContainer: Color(0xffffd270),
              onTertiaryContainer: Color(0xff14120a),
              error: Color(0xffb00020),
              onError: Color(0xffffffff),
              errorContainer: Color(0xfffcd8df),
              onErrorContainer: Color(0xff141213),
              background: Color(0xfff8f9fa),
              onBackground: Color(0xff090909),
              surface: Color(0xfff8f9fa),
              onSurface: Color(0xff090909),
              surfaceVariant: Color(0xffe0e3e6),
              onSurfaceVariant: Color(0xff111112),
              outline: Color(0xff7c7c7c),
              outlineVariant: Color(0xffc8c8c8),
              shadow: Color(0xff000000),
              scrim: Color(0xff000000),
              inverseSurface: Color(0xff101113),
              onInverseSurface: Color(0xfff5f5f5),
              inversePrimary: Color(0xff8dacdd),
              surfaceTint: Color(0xff00296b),
            )
          : const ColorScheme(
              brightness: Brightness.dark,
              primary: Color(0xffb1cff5),
              onPrimary: Color(0xff111414),
              primaryContainer: Color(0xff3873ba),
              onPrimaryContainer: Color(0xffe8f1fc),
              secondary: Color(0xffc9cbfc),
              onSecondary: Color(0xff131314),
              secondaryContainer: Color(0xff535393),
              onSecondaryContainer: Color(0xffececf6),
              tertiary: Color(0xffffd270),
              onTertiary: Color(0xff14140c),
              tertiaryContainer: Color(0xffd26900),
              onTertiaryContainer: Color(0xfffff0df),
              error: Color(0xffcf6679),
              onError: Color(0xff140c0d),
              errorContainer: Color(0xffb1384e),
              onErrorContainer: Color(0xfffbe8ec),
              background: Color(0xff191a1c),
              onBackground: Color(0xffeceded),
              surface: Color(0xff191a1c),
              onSurface: Color(0xffeceded),
              surfaceVariant: Color(0xff3e4245),
              onSurfaceVariant: Color(0xffe0e1e1),
              outline: Color(0xff767d7d),
              outlineVariant: Color(0xff2c2e2e),
              shadow: Color(0xff000000),
              scrim: Color(0xff000000),
              inverseSurface: Color(0xfffbfcfe),
              onInverseSurface: Color(0xff131313),
              inversePrimary: Color(0xff5b6776),
              surfaceTint: Color(0xffb1cff5),
            );
}
