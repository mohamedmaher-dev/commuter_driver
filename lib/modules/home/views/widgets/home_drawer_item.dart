import 'package:commuter_driver/core/routes/app_route.dart';
import 'package:commuter_driver/core/themes/app_theme_controller.dart';
import 'package:flutter/material.dart';

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
        title: Text(title),
        onTap: () async {
          AppRouter.push(context: context, page: page);
        },
      ),
    );
  }
}
