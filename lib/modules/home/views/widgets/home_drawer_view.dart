// ignore_for_file: use_build_context_synchronously

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../core/localization/generated/l10n.dart';
import '../../../../core/routes/app_route.dart';
import '../../../../core/themes/app_theme_controller.dart';
import '../../../commutes/my_commutes/controllers/commutes_bloc/commutes_bloc.dart';

class HomeDrawerView extends StatelessWidget {
  const HomeDrawerView({super.key});

  @override
  Widget build(BuildContext context) {
    final Language language = Language.of(context);

    return Card(
      color: ColorManger.background,
      margin: EdgeInsets.all(10.w),
      child: Padding(
        padding: EdgeInsets.all(10.w),
        child: SizedBox(
          width: MediaQuery.of(context).size.width / 2,
          child: Column(
            children: [
              HomeDrawerItem(
                title: language.home,
                icon: Icons.home,
                isSelected: true,
                page: Pages.home,
              ),
              const Divider(),
              HomeDrawerItem(
                title: language.profile,
                icon: Icons.person,
                page: Pages.profile,
              ),
              // Divider(),
              // HomeDrawerItem(
              //   title: 'Nearby Rides',
              //   icon: Icons.near_me,
              //   page: Pages.nearbyRides,
              // ),
              const Divider(),
              HomeDrawerItem(
                title: language.commutes,
                icon: Icons.route_outlined,
                page: Pages.commutes,
              ),
              const Divider(),
              HomeDrawerItem(
                title: language.scheduled_trips,
                icon: Icons.calendar_month,
                page: Pages.schedules,
              ),
              const Divider(),
              HomeDrawerItem(
                title: language.transactions,
                icon: Icons.wallet,
                page: Pages.transactions,
              ),
              const Spacer(),
              const Divider(),
              HomeDrawerItem(
                title: language.settings,
                icon: Icons.settings,
                page: Pages.settings,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class HomeDrawerItem extends StatelessWidget {
  const HomeDrawerItem({
    super.key,
    required this.title,
    required this.icon,
    this.isSelected = false,
    required this.page,
  });
  final String title;
  final IconData icon;
  final bool isSelected;
  final Pages page;

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 0,
      color: isSelected ? ColorManger.primaryContainer : ColorManger.background,
      child: ListTile(
        style: ListTileStyle.drawer,
        leading: Icon(icon),
        title: Text(title, maxLines: 1),
        onTap: () async {
          await AppRouter.push(context: context, page: page);
          BlocProvider.of<CommutesBloc>(context)
              .add(const CommutesEvent.started());
        },
      ),
    );
  }
}
