import 'package:commuter_driver/core/di/di.dart';
import 'package:commuter_driver/core/localization/generated/l10n.dart';
import 'package:commuter_driver/core/routes/app_route.dart';
import 'package:commuter_driver/modules/splash/controllers/splash_bloc/splash_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../core/themes/color_manger.dart';
import '../../../core/utils/assets_manger.dart';

class SplashView extends StatelessWidget {
  const SplashView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => di<SplashBloc>()..add(const SplashEvent.started()),
      child: const _SplashView(),
    );
  }
}

class _SplashView extends StatelessWidget {
  const _SplashView();

  @override
  Widget build(BuildContext context) {
    final language = Language.of(context);
    final splashBloc = BlocProvider.of<SplashBloc>(context);
    return BlocListener<SplashBloc, SplashState>(
      listener: (context, state) {
        state.whenOrNull(
          noPermission: () {
            AppRouter.pushReplacement(
                context: context, page: Pages.noPermission);
          },
          isLogin: () {
            splashBloc.add(const SplashEvent.login());
          },
          loginSuccess: () {
            AppRouter.pushReplacement(context: context, page: Pages.navPage);
          },
          notLogin: () {
            AppRouter.pushReplacement(context: context, page: Pages.signIn);
          },
          failure: (error, code) {
            showDialog(
              context: context,
              builder: (contextDialog) => AlertDialog(
                title: Text(language.Failure),
                content: Text(error),
                actions: [
                  code == 0
                      ? ElevatedButton(
                          onPressed: () {
                            AppRouter.pop(context: contextDialog);

                            AppRouter.pushReplacement(
                                context: context, page: Pages.splash);
                          },
                          child: const Text('محاولة مجددا'),
                        )
                      : ElevatedButton(
                          onPressed: () {
                            AppRouter.pop(context: contextDialog);
                            AppRouter.pushReplacement(
                                context: context, page: Pages.signIn);
                          },
                          child: const Text('تسجيل خروج'),
                        ),
                ],
              ),
            );
          },
        );
      },
      child: Scaffold(
        backgroundColor: ColorManger.primaryContainer,
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const Spacer(),
            Image.asset(
              AssetsManger.appIcon,
              fit: BoxFit.fitHeight,
              width: MediaQuery.of(context).size.width / 3,
              height: MediaQuery.of(context).size.width / 3,
            ),
            const Spacer(),
          ],
        ),
      ),
    );
  }
}
