import 'package:commuter_driver/core/themes/controller/app_theme_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ThemeModeBTN extends StatelessWidget {
  const ThemeModeBTN({super.key});

  @override
  Widget build(BuildContext context) {
    final AppThemeBloc appThemeBloc = BlocProvider.of(context);
    return BlocBuilder<AppThemeBloc, AppThemeState>(
      builder: (context, state) {
        return Switch(
          value: appThemeBloc.themeMode == ThemeMode.dark,
          onChanged: (value) {
            appThemeBloc.add(const AppThemeEvent.changeTheme());
          },
        );
      },
    );
  }
}
