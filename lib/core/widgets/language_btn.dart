import 'package:commuter_driver/core/bloc/main_bloc.dart';
import 'package:commuter_driver/core/localization/generated/l10n.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class LanguageBTN extends StatelessWidget {
  const LanguageBTN({super.key});

  @override
  Widget build(BuildContext context) {
    final mainBloc = BlocProvider.of<MainBloc>(context);
    final Language language = Language.of(context);
    return TextButton(
      onPressed: () {
        mainBloc.add(const MainEvent.changeLanguage());
      },
      child: Text(
        language.Language_Name,
      ),
    );
  }
}
