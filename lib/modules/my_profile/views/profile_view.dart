import 'package:awesome_snackbar_content/awesome_snackbar_content.dart';
import 'package:commuter_driver/core/di/di.dart';
import 'package:commuter_driver/core/localization/generated/l10n.dart';
import 'package:commuter_driver/core/routes/app_route.dart';
import 'package:commuter_driver/core/widgets/app_snack_bar.dart';
import 'package:commuter_driver/core/widgets/error_view.dart';
import 'package:commuter_driver/core/widgets/loading_view.dart';
import 'package:commuter_driver/core/widgets/pop_loading.dart';
import 'package:commuter_driver/core/widgets/profile_avatar.dart';
import 'package:commuter_driver/core/widgets/profile_rating_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:badges/badges.dart' as badges;
import 'package:image_picker/image_picker.dart';

import '../../../../core/themes/app_theme_controller.dart';
import '../../../core/widgets/profile_image.dart';
import '../controllers/my_profile_bloc/my_profile_bloc.dart';
import '../controllers/my_profile_pic_cubit/my_profile_pic_cubit.dart';
import '../data/models/get_me_response_model.dart';

part 'widgets/account_body.dart';
part 'widgets/loading_body.dart';
part 'widgets/success_body.dart';
part 'widgets/failure_body.dart';
part 'widgets/pick_image_sheet.dart';

class MyProfileView extends StatelessWidget {
  const MyProfileView({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) =>
              di<MyProfileBloc>()..add(const MyProfileEvent.started()),
        ),
        BlocProvider(
          create: (context) => di<MyProfilePicCubit>(),
        ),
      ],
      child: const _ProfileView(),
    );
  }
}

class _ProfileView extends StatelessWidget {
  const _ProfileView();

  @override
  Widget build(BuildContext context) {
    final Language language = Language.of(context);
    return Scaffold(
      appBar: AppBar(
        title: Text(language.profile),
      ),
      body: BlocConsumer<MyProfileBloc, MyProfileState>(
        listener: (context, state) {
          PopLoading.dismiss();
          state.whenOrNull(
            failure: (error) {
              AppSnackBar.show(
                title: language.failure,
                msg: error,
                type: ContentType.failure,
                context: context,
              );
            },
          );
        },
        builder: (context, state) {
          return state.maybeWhen(
            success: (userData) => _SuccessBody(userData),
            orElse: () => const _LoadingBody(),
            failure: (error) => const _FailureBody(),
          );
        },
      ),
    );
  }
}
