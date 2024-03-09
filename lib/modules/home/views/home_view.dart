import 'package:commuter_driver/core/di/di.dart';
import 'package:commuter_driver/core/localization/generated/l10n.dart';
import 'package:badges/badges.dart' as badges;
import 'package:commuter_driver/core/routes/app_route.dart';
import 'package:commuter_driver/core/themes/controller/app_theme_bloc.dart';
import 'package:commuter_driver/modules/commutes/view/commutes_view.dart';
import 'package:commuter_driver/modules/home/controllers/home_bloc/home_bloc.dart';
import 'package:commuter_driver/modules/requests/views/requests_view.dart';
import 'package:commuter_driver/modules/shedule/views/shedule_view.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
part 'widgets/home_app_bar.dart';
part 'widgets/home_tap_bar.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => di<HomeBloc>(),
      child: const _HomeView(),
    );
  }
}

class _HomeView extends StatelessWidget {
  const _HomeView();

  @override
  Widget build(BuildContext context) {
    final language = Language.of(context);
    final homeBloc = BlocProvider.of<HomeBloc>(context);
    return BlocBuilder<HomeBloc, HomeState>(
      builder: (context, state) {
        return SafeArea(
          child: Scaffold(
            appBar: const _HomeAppBar(),
            body: Padding(
              padding: EdgeInsets.all(10.w),
              child: Column(
                children: [
                  TextFormField(
                    decoration: InputDecoration(
                      contentPadding: const EdgeInsets.symmetric(vertical: 0),
                      prefixIcon: const Icon(CupertinoIcons.search),
                      hintText: language.Search,
                    ),
                  ),
                  SizedBox(height: 10.h),
                  Padding(
                    padding: EdgeInsets.all(10.w),
                    child: const _HomeTabBar(),
                  ),
                  SizedBox(height: 10.h),
                  Expanded(
                    child: PageView(
                      controller: homeBloc.pageController,
                      onPageChanged: (value) {
                        homeBloc.add(
                          HomeEvent.swipePage(
                            newPage: value,
                          ),
                        );
                      },
                      children: const [
                        CommutesView(),
                        SheduleView(),
                        RequestsView(),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
