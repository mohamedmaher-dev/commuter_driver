import 'package:awesome_snackbar_content/awesome_snackbar_content.dart';
import 'package:commuter_driver/core/di/di.dart';
import 'package:commuter_driver/core/routes/app_route.dart';
import 'package:commuter_driver/core/themes/text_styles.dart';
import 'package:commuter_driver/core/widgets/app_snack_bar.dart';
import 'package:commuter_driver/core/widgets/pop_loading.dart';
import 'package:commuter_driver/core/widgets/segmented_week.dart';
import 'package:commuter_driver/modules/add_commute/controllers/add_commute_bloc/add_commute_bloc.dart';
import 'package:commuter_driver/modules/add_commute/controllers/landing/add_commute_landing_bloc.dart';
import 'package:commuter_driver/modules/add_commute/controllers/pickup/add_commute_pickup_bloc.dart';
import 'package:commuter_driver/modules/add_commute/views/widgets/location_view.dart';
import 'package:commuter_driver/modules/add_commute/views/widgets/range_view.dart';
import 'package:commuter_driver/modules/add_commute/views/widgets/time_window_view.dart';
import 'package:commuter_driver/modules/pick_location/views/pick_location_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
part 'widgets/general_view.dart';
part 'widgets/stage_view.dart';
part 'widgets/pick_up_body.dart';
part 'widgets/landing_body.dart';

class AddCommuteView extends StatelessWidget {
  const AddCommuteView({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => di<AddCommuteBloc>(),
        ),
        BlocProvider(
          create: (context) => di<AddCommutePickupBloc>(),
        ),
        BlocProvider(
          create: (context) => di<AddCommuteLandingBloc>(),
        ),
      ],
      child: const _AddCommuteView(),
    );
  }
}

class _AddCommuteView extends StatelessWidget {
  const _AddCommuteView();

  @override
  Widget build(BuildContext context) {
    final addCommuteBloc = BlocProvider.of<AddCommuteBloc>(context);
    final pickUpBloc = BlocProvider.of<AddCommutePickupBloc>(context);
    final landingBloc = BlocProvider.of<AddCommuteLandingBloc>(context);

    return BlocListener<AddCommuteBloc, AddCommuteState>(
      listener: (context, state) {
        PopLoading.dismiss();
        state.whenOrNull(
          loading: () {
            PopLoading.show();
          },
          failure: (error, id) {
            AppSnackBar.show(
              title: 'تحذير',
              msg: error,
              type: ContentType.failure,
              context: context,
            );
          },
          seccess: () {
            AppRouter.pop(context: context);
          },
        );
      },
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            'اضف تنقل',
            style: TextStyles.tsP15B,
          ),
        ),
        body: Column(
          children: [
            Expanded(
              child: ListView(
                padding: EdgeInsets.all(10.w),
                children: [
                  const _GeneralView(),
                  SizedBox(height: 10.h),
                  ExpansionTile(
                    title: Text(
                      'استقبال الركاب',
                      style: TextStyles.tsP15B,
                      textAlign: TextAlign.start,
                    ),
                    children: [
                      const _PickUpBody(),
                      SizedBox(height: 10.h),
                    ],
                  ),
                  ExpansionTile(
                    title: Text(
                      'انزال الركاب',
                      style: TextStyles.tsP15B,
                      textAlign: TextAlign.start,
                    ),
                    children: [
                      const _LandingBody(),
                      SizedBox(height: 10.h),
                    ],
                  ),
                  SizedBox(height: 10.h),
                  CheckboxListTile(
                    title: const Text(
                      'تعيين ذهاب و عودة',
                    ),
                    value: false,
                    onChanged: (value) {
                      AppRouter.push(
                          context: context, page: Pages.addRoundTrip);
                    },
                  ),
                  SizedBox(height: 10.h),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.all(10.w),
              child: FilledButton.icon(
                onPressed: () {
                  addCommuteBloc.add(
                    AddCommuteEvent.addCommute(
                      pickupBloc: pickUpBloc,
                      landingBloc: landingBloc,
                    ),
                  );
                },
                icon: const Icon(Icons.add),
                label: const Text(
                  'اضف تنقل',
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
