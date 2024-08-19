import 'package:awesome_snackbar_content/awesome_snackbar_content.dart';
import 'package:commuter_driver/core/bloc/main_bloc.dart';
import 'package:commuter_driver/core/localization/generated/l10n.dart';
import 'package:commuter_driver/core/routes/app_route.dart';
import 'package:commuter_driver/core/widgets/app_snack_bar.dart';
import 'package:commuter_driver/core/widgets/pop_loading.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Commuter extends StatelessWidget {
  const Commuter({super.key});

  @override
  Widget build(BuildContext context) {
    final mainBloc = BlocProvider.of<MainBloc>(context);
    return ScreenUtilInit(
      designSize: const Size(360, 690),
      minTextAdapt: true,
      splitScreenMode: true,
      child: BlocBuilder<MainBloc, MainState>(
        builder: (context, state) {
          return BlocListener<MainBloc, MainState>(
            listener: (context, state) {
              state.whenOrNull(
                newConnection: (isConnected) {
                  if (isConnected) {
                    AppSnackBar.show(
                      title: 'Connection',
                      msg: 'Network Not Available',
                      type: ContentType.failure,
                      context: context,
                    );
                  } else {
                    AppSnackBar.show(
                      title: 'Connection',
                      msg: 'Network Available',
                      type: ContentType.success,
                      context: context,
                    );
                  }
                },
              );
            },
            child: MaterialApp(
              locale: mainBloc.localizationController.locale,
              localizationsDelegates: const [
                Language.delegate,
                GlobalMaterialLocalizations.delegate,
                GlobalWidgetsLocalizations.delegate,
                GlobalCupertinoLocalizations.delegate,
              ],
              supportedLocales: Language.delegate.supportedLocales,
              debugShowCheckedModeBanner: false,
              theme: mainBloc.appThemeController.theme,
              darkTheme: mainBloc.appThemeController.theme,
              themeMode: mainBloc.appThemeController.themeMode,
              builder: PopLoading.init(),
              home: Pages.initPage.view,
            ),
          );
        },
      ),
    );
  }
}
