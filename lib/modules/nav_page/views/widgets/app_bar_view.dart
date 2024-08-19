import 'package:commuter_driver/modules/nav_page/controllers/nav_bar_controller/nav_bar_bloc.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:badges/badges.dart' as badges;
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/routes/app_route.dart';
import '../../../../core/themes/color_manger.dart';
import '../../../../core/themes/text_styles.dart';

class AppBarView extends StatelessWidget implements PreferredSize {
  const AppBarView({super.key});

  @override
  Widget build(BuildContext context) {
    return const _AppBarView();
  }

  @override
  Widget get child => throw UnimplementedError();

  @override
  Size get preferredSize => Size(double.maxFinite, 35.h);
}

class _AppBarView extends StatelessWidget {
  const _AppBarView();

  @override
  Widget build(BuildContext context) {
    final navBarBloc = BlocProvider.of<NavBarBloc>(context);
    return BlocBuilder<NavBarBloc, NavBarState>(
      builder: (context, state) {
        return AppBar(
          forceMaterialTransparency: true,
          leading: Icon(
            color: ColorManger.primary,
            _getIcon(navBarBloc.currentPage),
          ),
          title: Text(
            style: TextStyles.tsP12B,
            _getTitle(navBarBloc.currentPage),
          ),
          actions: [
            badges.Badge(
              position: badges.BadgePosition.topStart(),
              badgeAnimation: const badges.BadgeAnimation.scale(),
              badgeContent: const Text('2'),
              child: IconButton.outlined(
                onPressed: () {
                  AppRouter.push(context: context, page: Pages.chats);
                },
                icon: Icon(
                  CupertinoIcons.chat_bubble_text_fill,
                  color: ColorManger.primary,
                ),
              ),
            ),
            badges.Badge(
              position: badges.BadgePosition.topStart(),
              badgeAnimation: const badges.BadgeAnimation.scale(),
              badgeContent: const Text('5'),
              child: IconButton.outlined(
                onPressed: () {
                  AppRouter.push(context: context, page: Pages.notifi);
                },
                icon: Icon(
                  CupertinoIcons.bell_solid,
                  color: ColorManger.primary,
                ),
              ),
            ),
            IconButton.outlined(
              onPressed: () {
                AppRouter.push(context: context, page: Pages.profile);
              },
              icon: Hero(
                tag: 'TAG-1',
                child: Icon(
                  CupertinoIcons.profile_circled,
                  color: ColorManger.primary,
                ),
              ),
            ),
            IconButton.outlined(
              onPressed: () {
                navBarBloc.scaffoldKey.currentState!.openDrawer();
              },
              icon: Icon(
                Icons.menu,
                color: ColorManger.primary,
              ),
            ),
            SizedBox(width: 10.w),
          ],
        );
      },
    );
  }
}

String _getTitle(Pages page) {
  switch (page) {
    case Pages.commutes:
      return 'Commuter Profile';
    case Pages.shedule:
      return 'My Scheduled Trips';
    case Pages.requests:
      return 'My Requests';
    case Pages.nearbyRides:
      return 'Nearby Requests';
    case Pages.transactions:
      return 'Transactions';
    default:
      return 'Unknown';
  }
}

IconData _getIcon(Pages page) {
  switch (page) {
    case Pages.commutes:
      return Icons.route_rounded;
    case Pages.shedule:
      return Icons.calendar_month_rounded;
    case Pages.requests:
      return Icons.swap_vert;
    case Pages.nearbyRides:
      return Icons.near_me;
    case Pages.transactions:
      return Icons.wallet;
    default:
      return Icons.close;
  }
}
