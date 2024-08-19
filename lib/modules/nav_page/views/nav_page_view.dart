import 'package:commuter_driver/core/di/di.dart';
import 'package:commuter_driver/modules/nav_page/controllers/nav_bar_controller/nav_bar_bloc.dart';
import 'package:commuter_driver/modules/nav_page/views/widgets/app_bar_view.dart';
import 'package:commuter_driver/modules/nav_page/views/widgets/drawer_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class NavPage extends StatelessWidget {
  const NavPage({super.key});
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => di<NavBarBloc>(),
      child: const _NavBarPage(),
    );
  }
}

class _NavBarPage extends StatelessWidget {
  const _NavBarPage();

  @override
  Widget build(BuildContext context) {
    final navBarBloc = BlocProvider.of<NavBarBloc>(context);
    return SafeArea(
      child: Scaffold(
        key: navBarBloc.scaffoldKey,
        drawer: const DrawerView(),
        appBar: const AppBarView(),
        body: BlocBuilder<NavBarBloc, NavBarState>(
          builder: (context, state) {
            return navBarBloc.currentPage.view;
          },
        ),
      ),
    );
  }
}
