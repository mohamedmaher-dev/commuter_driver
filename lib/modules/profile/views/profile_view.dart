import 'dart:io';
import 'package:awesome_snackbar_content/awesome_snackbar_content.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:commuter_driver/core/di/di.dart';
import 'package:commuter_driver/core/localization/generated/l10n.dart';
import 'package:commuter_driver/core/routes/app_route.dart';
import 'package:commuter_driver/core/themes/text_styles.dart';
import 'package:commuter_driver/core/widgets/app_snack_bar.dart';
import 'package:commuter_driver/core/widgets/circle_loading.dart';
import 'package:commuter_driver/core/widgets/pop_loading.dart';
import 'package:commuter_driver/modules/profile/controllers/profile_bloc/profile_bloc.dart';
import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:badges/badges.dart' as badges;
import 'package:image_picker/image_picker.dart';
import '../../../core/themes/color_manger.dart';
part 'widgets/account_body.dart';
part 'widgets/verify_body.dart';
part 'widgets/workspace_body.dart';
part 'widgets/loading_body.dart';
part 'widgets/success_body.dart';
part 'widgets/failure_body.dart';
part 'widgets/pick_image_sheet.dart';

class ProfileView extends StatelessWidget {
  const ProfileView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => di<ProfileBloc>()..add(const ProfileEvent.started()),
      child: const _ProfileView(),
    );
  }
}

class _ProfileView extends StatelessWidget {
  const _ProfileView();

  @override
  Widget build(BuildContext context) {
    final language = Language.of(context);
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: ColorManger.primary),
        forceMaterialTransparency: true,
        title: Text(
          language.Profile,
          style: TextStyles.tsP12B,
        ),
        actions: [
          IconButton.outlined(
            onPressed: () {},
            icon: const Icon(
              Icons.exit_to_app_rounded,
            ),
          ),
          SizedBox(width: 10.w),
        ],
      ),
      body: BlocConsumer<ProfileBloc, ProfileState>(
        listener: (context, state) {
          PopLoading.dismiss();
          state.whenOrNull(
            failure: (msg) {
              AppSnackBar.show(
                title: language.Failure,
                msg: msg,
                type: ContentType.failure,
                context: context,
              );
            },
            deleteMeSuccess: () {
              AppRouter.pushReplacement(context: context, page: Pages.splash);
            },
            loading: () {
              PopLoading.show();
            },
            updateMeSuccess: () {
              AppRouter.pushReplacement(context: context, page: Pages.profile);
            },
          );
        },
        builder: (context, state) {
          return state.maybeWhen(
            getMefailure: (msg) => const _FailureBody(),
            getMeLoading: () => const _LoadingBody(),
            initial: () => const _LoadingBody(),
            orElse: () => const _SuccessBody(),
          );
        },
      ),
    );
  }
}
