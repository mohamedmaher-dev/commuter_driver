import 'package:commuter_driver/core/themes/text_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../core/localization/generated/l10n.dart';
import '../../../core/routes/app_route.dart';
import '../../../core/themes/controller/app_theme_bloc.dart';
import '../../../core/widgets/language_btn.dart';
import '../../../core/widgets/theme_mode_btn.dart';

class SettingsView extends StatelessWidget {
  const SettingsView({super.key});

  @override
  Widget build(BuildContext context) {
    final language = Language.of(context);

    return Scaffold(
      appBar: AppBar(
        title: const Text('الاعدادات'),
        leading: IconButton(
          onPressed: () {
            AppRouter.pushReplacement(context: context, page: Pages.home);
          },
          icon: const Icon(
            Icons.arrow_back,
          ),
        ),
      ),
      body: ListView(
        padding: EdgeInsets.all(10.w),
        children: [
          ListTile(
            title: Text(
              'اساسي',
              style: TextStyles.tsP15B,
            ),
          ),
          Card(
            child: Padding(
              padding: EdgeInsets.all(10.w),
              child: Column(
                children: [
                  ListTile(
                    title: Text(language.Night_Mode),
                    leading: const Icon(Icons.dark_mode),
                    trailing: const ThemeModeBTN(),
                  ),
                  ListTile(
                    title: Text(language.Current_Language),
                    leading: const Icon(Icons.language),
                    trailing: const LanguageBTN(),
                  ),
                ],
              ),
            ),
          ),
          ListTile(
            title: Text(
              'الحساب الشخصي',
              style: TextStyles.tsP15B,
            ),
          ),
          Card(
            child: Padding(
              padding: EdgeInsets.all(10.w),
              child: Column(
                children: [
                  ListTile(
                    title: const Text('حذف الحساب الشخصي'),
                    leading: const Icon(Icons.delete),
                    trailing: ElevatedButton.icon(
                      style: ButtonStyle(
                        elevation: const MaterialStatePropertyAll(0),
                        foregroundColor: MaterialStatePropertyAll(
                          ColorManger.red,
                        ),
                      ),
                      onPressed: () {
                        showDialog(
                          context: context,
                          builder: (contextDialog) => AlertDialog(
                            title: Text(language.Delete_Account),
                            content: const Text(
                              'Are you sure you want to delete the account?',
                            ),
                            actions: [
                              ElevatedButton.icon(
                                style: ButtonStyle(
                                  elevation: const MaterialStatePropertyAll(0),
                                  foregroundColor: MaterialStatePropertyAll(
                                    ColorManger.red,
                                  ),
                                ),
                                onPressed: () {
                                  AppRouter.pop(context: contextDialog);
                                },
                                icon: const Icon(Icons.delete),
                                label: Text(
                                  language.Confirm,
                                ),
                              ),
                            ],
                          ),
                        );
                      },
                      icon: const Icon(Icons.delete),
                      label: Text(language.Delete_Account),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
