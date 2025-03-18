import 'package:commuter_driver/core/di/di.dart';
import 'package:commuter_driver/core/themes/app_theme_controller.dart';
import 'package:commuter_driver/modules/commutes/one_commute/controllers/approved_join/approved_join_cubit.dart';
import 'package:commuter_driver/modules/commutes/one_commute/controllers/one_commute/one_commute_cubit.dart';
import 'package:commuter_driver/modules/commutes/one_commute/controllers/tabs/one_commute_tab_cubit.dart';
import 'package:commuter_driver/modules/commutes/one_commute/controllers/set_commute_online/set_commute_online_cubit.dart';
import 'package:commuter_driver/modules/commutes/one_commute/views/widgets/botton_view.dart';
import 'package:commuter_driver/modules/commutes/one_commute/controllers/action_requests/action_requests_cubit.dart';
import 'package:commuter_driver/modules/commutes/one_commute/controllers/requests/requests_cubit.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import '../../../../core/localization/generated/l10n.dart';
import '../../../app_map/view/app_map_view.dart';
import '../../my_commutes/data/models/get_commutes_response_model.dart';
import 'widgets/aproved_join_body.dart';
import 'widgets/commute_body.dart';
import 'widgets/contracts_body.dart';
import 'widgets/requests_body.dart';

class OneCommuteView extends StatelessWidget {
  const OneCommuteView({super.key});

  @override
  Widget build(BuildContext context) {
    final commuteModel =
        ModalRoute.of(context)!.settings.arguments as CommuteModel;
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => di<ApprovedJoinCubit>(),
        ),
        BlocProvider(
          create: (context) => di<RequestsCubit>(),
        ),
        BlocProvider(
          create: (context) => di<OneCommuteTabCubit>(),
        ),
        BlocProvider(
          create: (context) => di<SetCommuteOnlineCubit>(),
        ),
        BlocProvider(
          create: (context) => di<ActionRequestsCubit>(),
        ),
        BlocProvider(
          create: (context) =>
              di<RequestsCubit>()..getRequests(commuteModel.id),
        ),
        BlocProvider(
          create: (context) => di<OneCommuteCubit>()..start(commuteModel),
        ),
      ],
      child: _OneCommuteViewBody(commuteModel: commuteModel),
    );
  }
}

class _OneCommuteViewBody extends StatelessWidget {
  const _OneCommuteViewBody({required this.commuteModel});
  final CommuteModel commuteModel;

  @override
  Widget build(BuildContext context) {
    final tabsCubit = BlocProvider.of<OneCommuteTabCubit>(context);
    return Scaffold(
      body: Stack(
        children: [
          Transform.translate(
            offset: Offset(0, -MediaQuery.of(context).size.height / 4),
            child: AppMapView(
              autoMove: true,
              circles: {
                Circle(
                  circleId: const CircleId('pickup'),
                  center: commuteModel.pickup.location.toLatLng(),
                  radius: commuteModel.pickup.range.toDouble() * 1000,
                  fillColor: ColorManger.primary.withOpacity(0.2),
                  strokeWidth: 1,
                  strokeColor: ColorManger.primary,
                ),
                Circle(
                  circleId: const CircleId('dropoff'),
                  center: commuteModel.landing.location.toLatLng(),
                  radius: commuteModel.landing.range.toDouble() * 1000,
                  fillColor: ColorManger.green.withOpacity(0.2),
                  strokeWidth: 1,
                  strokeColor: ColorManger.green,
                ),
              },
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              padding: EdgeInsets.all(10.w),
              decoration: BoxDecoration(
                color: ColorManger.background,
                borderRadius: BorderRadius.vertical(
                  top: Radius.circular(20.r),
                ),
              ),
              height: MediaQuery.of(context).size.height / 2,
              width: MediaQuery.of(context).size.width,
              child: BlocBuilder<OneCommuteTabCubit, OneCommuteTabState>(
                builder: (context, state) {
                  return Column(
                    children: [
                      const OneCommuteTabsView(),
                      if (tabsCubit.currentGeneralTab ==
                          OneCommuteGeneralTabs.commute)
                        OneCommuteBody(commuteModel: commuteModel),
                      if (tabsCubit.currentGeneralTab ==
                          OneCommuteGeneralTabs.aprovedJoin)
                        OneCommuteAprovedJoinBody(commuteModel: commuteModel),
                      if (tabsCubit.currentGeneralTab ==
                          OneCommuteGeneralTabs.requests)
                        OneCommuteRequetsBody(commuteModel: commuteModel),
                      if (tabsCubit.currentGeneralTab ==
                          OneCommuteGeneralTabs.contracts)
                        const OneCommuteContractsBody(),
                      OneCommuteActionBottonView(commuteModel: commuteModel),
                    ],
                  );
                },
              ),
            ),
          )
        ],
      ),
    );
  }
}

class OneCommuteTabsView extends StatelessWidget {
  const OneCommuteTabsView({super.key});

  @override
  Widget build(BuildContext context) {
    final cubit = BlocProvider.of<OneCommuteTabCubit>(context);
    final Language language = Language.of(context);

    return Padding(
      padding: EdgeInsets.only(top: 5.0.w),
      child: BlocBuilder<OneCommuteTabCubit, OneCommuteTabState>(
        builder: (context, state) {
          return CupertinoSlidingSegmentedControl(
            thumbColor: ColorManger.primaryContainer,
            children: {
              OneCommuteGeneralTabs.commute: Text(
                language.commute,
                maxLines: 1,
              ),
              OneCommuteGeneralTabs.aprovedJoin: Text(
                language.approved_join,
                textAlign: TextAlign.center,
                maxLines: 1,
              ),
              OneCommuteGeneralTabs.requests: Text(
                language.requests,
                maxLines: 1,
              ),
              OneCommuteGeneralTabs.contracts: Text(
                language.contracts,
                maxLines: 1,
              ),
            },
            groupValue: cubit.currentGeneralTab,
            onValueChanged: (value) {
              cubit.changeGeneralTab(value as OneCommuteGeneralTabs);
            },
          );
        },
      ),
    );
  }
}
