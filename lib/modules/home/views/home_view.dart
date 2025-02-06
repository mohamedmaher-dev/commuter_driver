import 'package:commuter_driver/core/di/di.dart';
import 'package:commuter_driver/modules/home/controllers/home_cubit/home_cubit.dart';
import 'package:commuter_driver/modules/home/controllers/home_slide_panel/home_slide_panel_cubit.dart';
import 'package:commuter_driver/modules/home/controllers/home_slide_tabs/home_slide_tabs_cubit.dart';
import 'package:commuter_driver/modules/home/views/widgets/home_drawer_view.dart';
import 'package:commuter_driver/modules/home/views/widgets/home_slide_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../commutes/my_commutes/controllers/commutes_bloc/commutes_bloc.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) => MultiBlocProvider(
        providers: [
          BlocProvider(
            create: (context) => di<HomeCubit>(),
          ),
          BlocProvider(
            create: (context) => di<HomeSlideTabsCubit>(),
          ),
          BlocProvider(
            create: (context) => di<HomeSlidePanelCubit>(),
          ),
          BlocProvider(
            create: (context) => di<CommutesBloc>()
              ..add(
                const CommutesEvent.started(),
              ),
          ),
        ],
        child: const _HomeViewBody(),
      );
}

class _HomeViewBody extends StatefulWidget {
  const _HomeViewBody();

  @override
  State<_HomeViewBody> createState() => _HomeViewBodyState();
}

class _HomeViewBodyState extends State<_HomeViewBody> {
  @override
  Widget build(BuildContext context) {
    final homeSlideBloc = BlocProvider.of<HomeSlidePanelCubit>(context);
    final homeCubit = BlocProvider.of<HomeCubit>(context);
    return PopScope(
      canPop: false,
      onPopInvoked: (didPop) {
        homeSlideBloc.controller.close();
      },
      child: SafeArea(
        child: Scaffold(
          key: homeCubit.scaffoldKey,
          onDrawerChanged: (isOpened) {},
          drawer: const HomeDrawerView(),
          body: const HomeSlideView(),
        ),
      ),
    );
  }
}
