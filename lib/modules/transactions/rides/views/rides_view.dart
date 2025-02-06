import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/themes/app_theme_controller.dart';
import '../../contracts/views/contracts_view.dart';
import '../../wallet/views/wallet_view.dart';

class RidesView extends StatefulWidget {
  const RidesView({super.key});

  @override
  State<RidesView> createState() => _RidesViewState();
}

class _RidesViewState extends State<RidesView> {
  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Transactions')),
      body: ListView(
        children: [
          Padding(
            padding: EdgeInsets.all(10.w),
            child: CupertinoSlidingSegmentedControl(
              thumbColor: ColorManger.primaryContainer,
              groupValue: currentIndex,
              children: const {
                0: Text('Wallet'),
                1: Text('Contracts'),
              },
              onValueChanged: (value) {
                setState(() {
                  currentIndex = value!;
                });
              },
            ),
          ),
          if (currentIndex == 0) const WalletView(),
          if (currentIndex == 1) const ContractsView(),
        ],
      ),
    );
  }
}
