import 'package:commuter_driver/core/routes/app_route.dart';
import 'package:commuter_driver/core/utils/assets_manger.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/themes/color_manger.dart';
import '../../controllers/nav_bar_controller/nav_bar_bloc.dart';

class DrawerView extends StatelessWidget {
  const DrawerView({super.key});

  @override
  Widget build(BuildContext context) {
    final navBarBloc = BlocProvider.of<NavBarBloc>(context);
    return Drawer(
      child: Column(
        children: [
          DrawerHeader(
            duration: const Duration(seconds: 5),
            child: Center(child: Image.asset(AssetsManger.logo)),
          ),
          _DrawerItem(
            title: 'Commuter Profile',
            icon: Icons.route_outlined,
            visible: navBarBloc.currentPage == Pages.commutes,
            onTap: () {
              AppRouter.pop(context: context);
              navBarBloc
                  .add(const NavBarEvent.changePage(newPage: Pages.commutes));
            },
          ),
          _DrawerItem(
            title: 'My Shedules',
            icon: Icons.calendar_month,
            visible: navBarBloc.currentPage == Pages.shedule,
            onTap: () {
              AppRouter.pop(context: context);
              navBarBloc
                  .add(const NavBarEvent.changePage(newPage: Pages.shedule));
            },
          ),
          _DrawerItem(
            title: 'My Requests',
            icon: Icons.swap_vert,
            visible: navBarBloc.currentPage == Pages.requests,
            onTap: () {
              AppRouter.pop(context: context);
              navBarBloc
                  .add(const NavBarEvent.changePage(newPage: Pages.requests));
            },
          ),
          _DrawerItem(
            title: 'Nearby Requests',
            icon: Icons.near_me,
            visible: navBarBloc.currentPage == Pages.nearbyRides,
            onTap: () {
              AppRouter.pop(context: context);
              navBarBloc.add(
                  const NavBarEvent.changePage(newPage: Pages.nearbyRides));
            },
          ),
          _DrawerItem(
            title: 'Transactions',
            icon: Icons.wallet,
            visible: navBarBloc.currentPage == Pages.transactions,
            onTap: () {
              AppRouter.pop(context: context);
              navBarBloc.add(
                  const NavBarEvent.changePage(newPage: Pages.transactions));
            },
          ),
          const Spacer(),
          const Divider(),
          FilledButton(
            style: ButtonStyle(
              backgroundColor: WidgetStatePropertyAll(
                ColorManger.transparent,
              ),
              foregroundColor: WidgetStatePropertyAll(
                ColorManger.primary,
              ),
            ),
            onPressed: () {
              AppRouter.push(context: context, page: Pages.settings);
            },
            child: const Icon(CupertinoIcons.settings),
          )
        ],
      ),
    );
  }
}

class _SelectedDvider extends StatelessWidget {
  const _SelectedDvider();

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 2.w,
      height: 20.h,
      decoration: BoxDecoration(
        color: ColorManger.primary,
        borderRadius: BorderRadius.circular(
          100.r,
        ),
      ),
    );
  }
}

class _DrawerItem extends StatelessWidget {
  const _DrawerItem({
    required this.visible,
    required this.icon,
    required this.onTap,
    required this.title,
  });
  final String title;
  final IconData icon;
  final bool visible;
  final void Function() onTap;
  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 0,
      child: ListTile(
        onTap: onTap,
        leading: Icon(icon),
        title: Text(title),
        trailing: Visibility(
          visible: visible,
          child: const _SelectedDvider(),
        ),
      ),
    );
  }
}
