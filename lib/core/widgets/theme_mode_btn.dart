import 'package:commuter_driver/core/bloc/main_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ThemeModeBTN extends StatelessWidget {
  const ThemeModeBTN({super.key});

  @override
  Widget build(BuildContext context) {
    final MainBloc mainBloc = BlocProvider.of(context);
    return BlocBuilder<MainBloc, MainState>(
      builder: (context, state) {
        return Switch(
          value: mainBloc.appThemeController.themeMode == ThemeMode.dark,
          onChanged: (value) {
            mainBloc.add(const MainEvent.changeTheme());
          },
        );
      },
    );
  }
}
