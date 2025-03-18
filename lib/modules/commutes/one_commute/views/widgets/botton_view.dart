import 'package:awesome_snackbar_content/awesome_snackbar_content.dart';
import 'package:commuter_driver/core/routes/app_route.dart';
import 'package:commuter_driver/core/widgets/pop_loading.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../core/localization/generated/l10n.dart';
import '../../../../../core/widgets/app_snack_bar.dart';
import '../../../my_commutes/data/models/get_commutes_response_model.dart';
import '../../controllers/one_commute/one_commute_cubit.dart';
import '../../controllers/set_commute_online/set_commute_online_cubit.dart';

class OneCommuteActionBottonView extends StatelessWidget {
  const OneCommuteActionBottonView({super.key, required this.commuteModel});
  final CommuteModel commuteModel;

  @override
  Widget build(BuildContext context) {
    final Language language = Language.of(context);

    return BlocListener<SetCommuteOnlineCubit, SetCommuteOnlineState>(
      listener: (context, state) {
        PopLoading.dismiss();
        state.whenOrNull(
          loading: () => PopLoading.show(),
          success: () {
            AppSnackBar.show(
              title: language.success,
              msg: language.you_online,
              context: context,
              type: ContentType.success,
            );
            AppRouter.pop(context: context);
          },
          error: () {
            AppSnackBar.show(
              title: language.failure,
              msg: language.you_have_pending_requests,
              context: context,
              type: ContentType.failure,
            );
          },
        );
      },
      child: FilledButton(
        style: commuteModel.isActive
            ? FilledButton.styleFrom(
                backgroundColor: Colors.grey,
              )
            : null,
        onPressed: () {
          if (!commuteModel.isActive) {
            final oneCommuteCubit = BlocProvider.of<OneCommuteCubit>(context);
            BlocProvider.of<SetCommuteOnlineCubit>(context).setCommuteOnline(
              oneCommuteCubit.timeWindow,
              commuteModel.id,
            );
          }
        },
        child: Text(
            commuteModel.isActive ? language.you_online : language.go_online),
      ),
    );
  }
}
