import 'package:awesome_snackbar_content/awesome_snackbar_content.dart';
import 'package:commuter_driver/core/localization/generated/l10n.dart';
import 'package:commuter_driver/core/routes/app_route.dart';
import 'package:commuter_driver/core/widgets/pop_loading.dart';
import 'package:commuter_driver/modules/auth/widgets/otp_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../../core/di/di.dart';
import '../../../../core/widgets/app_snack_bar.dart';
import '../controller/otp_forgot_password_bloc/otp_forgot_password_bloc.dart';

class OtpForgotPasswordView extends StatelessWidget {
  const OtpForgotPasswordView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => di<OtpForgotPasswordBloc>()
        ..add(
          const OtpForgotPasswordEvent.started(),
        ),
      child: const _OtpForgotPasswordView(),
    );
  }
}

class _OtpForgotPasswordView extends StatelessWidget {
  const _OtpForgotPasswordView();

  @override
  Widget build(BuildContext context) {
    final OtpForgotPasswordBloc otpForgotPasswordBloc =
        BlocProvider.of<OtpForgotPasswordBloc>(context);
    final Language language = Language.of(context);
    return BlocConsumer<OtpForgotPasswordBloc, OtpForgotPasswordState>(
      listener: (context, state) {
        PopLoading.dismiss();
        state.whenOrNull(
          pLoading: () {
            PopLoading.show();
          },
          outTime: (id) {
            AppSnackBar.show(
              title: language.Warning,
              msg: language.You_Cannot_Verify_The_Code_Because_Timeout,
              type: ContentType.warning,
              context: context,
            );
          },
          successVerifyCode: () {
            AppRouter.pushReplacement(
              context: context,
              page: Pages.changePassword,
            );
          },
          failure: (error) {
            AppSnackBar.show(
              title: language.Failure,
              msg: error,
              type: ContentType.failure,
              context: context,
            );
          },
        );
      },
      builder: (context, state) {
        return Scaffold(
          body: OtpView(
            onCompleted: (code) {
              otpForgotPasswordBloc
                  .add(OtpForgotPasswordEvent.verifyResetCode(code));
            },
            onResendCode: () {
              otpForgotPasswordBloc
                  .add(const OtpForgotPasswordEvent.resendVerifyCode());
            },
            onTimerChange: () {
              otpForgotPasswordBloc
                  .add(const OtpForgotPasswordEvent.timerChange());
            },
            title: language.Verify_Code,
            subTitle: language.Enter_OTP_Code_Here,
            language: language,
            currentTime: otpForgotPasswordBloc.currentTime,
          ),
        );
      },
    );
  }
}
