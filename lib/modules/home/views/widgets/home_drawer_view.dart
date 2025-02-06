import 'package:commuter_driver/modules/home/views/widgets/home_drawer_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../core/localization/generated/l10n.dart';
import '../../../../core/routes/app_route.dart';
import '../../../../core/themes/app_theme_controller.dart';

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
