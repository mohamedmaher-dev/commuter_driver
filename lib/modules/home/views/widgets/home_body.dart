import 'package:commuter_driver/modules/app_map/view/app_map_view.dart';
import 'package:commuter_driver/modules/home/views/widgets/home_app_bar_view.dart';
import 'package:commuter_driver/modules/home/views/widgets/home_my_commutes.dart';
import 'package:flutter/material.dart';

class HomeBody extends StatefulWidget {
  const HomeBody({super.key});

  @override
  State<HomeBody> createState() => _HomeBodyState();
}

class _HomeBodyState extends State<HomeBody> {
  @override
  Widget build(BuildContext context) {
    return const Stack(
      children: [
        AppMapView(isTrafficEnabled: false),
        Column(
          children: [
            HomeAppBarView(),
            Spacer(),
            HomeMyCommutesView(),
          ],
        ),
      ],
    );
  }
}
