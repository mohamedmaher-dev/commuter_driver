import 'package:commuter_driver/core/localization/generated/l10n.dart';
import 'package:badges/badges.dart' as badges;
import 'package:commuter_driver/core/routes/app_route.dart';
import 'package:commuter_driver/core/themes/controller/app_theme_bloc.dart';
import 'package:commuter_driver/core/themes/text_styles.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    final language = Language.of(context);
    Set<int> weeks = {0, 1, 4};

    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          forceMaterialTransparency: true,
          leading: const Icon(CupertinoIcons.home),
          title: Text(language.Home),
          actions: [
            badges.Badge(
              position: badges.BadgePosition.topStart(),
              badgeAnimation: const badges.BadgeAnimation.scale(),
              badgeContent: const Text('2'),
              child: IconButton.outlined(
                onPressed: () {},
                icon: const Icon(CupertinoIcons.chat_bubble_text_fill),
              ),
            ),
            badges.Badge(
              position: badges.BadgePosition.topStart(),
              badgeAnimation: const badges.BadgeAnimation.scale(),
              badgeContent: const Text('5'),
              child: IconButton.outlined(
                onPressed: () {},
                icon: const Icon(CupertinoIcons.bell_solid),
              ),
            ),
            IconButton.outlined(
              onPressed: () {
                AppRouter.push(context: context, page: Pages.profile);
              },
              icon: const Hero(
                tag: 'TAG-1',
                child: Icon(CupertinoIcons.profile_circled),
              ),
            ),
            SizedBox(width: 10.w),
          ],
        ),
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
              Row(
                children: [
                  TextButton.icon(
                    onPressed: () {
                      AppRouter.push(context: context, page: Pages.addCommute);
                    },
                    label: const Text('اضف كوميوت'),
                    icon: const Icon(
                      Icons.add,
                    ),
                  ),
                  const Spacer(),
                  IconButton.filled(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.tune_rounded,
                    ),
                  ),
                  IconButton.filled(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.sort_rounded,
                    ),
                  )
                ],
              ),
              SizedBox(height: 10.h),
              Expanded(
                child: ListView.builder(
                  itemBuilder: (context, index) => Card(
                    child: Container(
                      padding: EdgeInsets.all(10.w),
                      child: Column(
                        children: [
                          Row(
                            children: [
                              IconButton.filled(
                                onPressed: null,
                                icon: Text((index + 1).toString()),
                              ),
                              SizedBox(width: 10.w),
                              Expanded(
                                child: Text(
                                  'العمل',
                                  style: TextStyles.tsP15B,
                                ),
                              ),
                              IconButton(
                                onPressed: () {},
                                icon: const Icon(
                                  Icons.arrow_forward_ios_rounded,
                                ),
                              )
                            ],
                          ),
                          Divider(height: 25.h),
                          Row(
                            children: [
                              Expanded(
                                child: Container(
                                  alignment: Alignment.center,
                                  padding: EdgeInsets.all(5.w),
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10.r),
                                    color: ColorManger.primaryContainer,
                                  ),
                                  child: Text(
                                    'Cairo',
                                    style: TextStyles.tsW10B,
                                  ),
                                ),
                              ),
                              SizedBox(
                                width: 35.w,
                                child: const Icon(
                                  Icons.swap_horiz_rounded,
                                ),
                              ),
                              Expanded(
                                child: Container(
                                  alignment: Alignment.center,
                                  padding: EdgeInsets.all(5.w),
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10.r),
                                    color: ColorManger.primaryContainer,
                                  ),
                                  child: Text(
                                    'Alex',
                                    style: TextStyles.tsW10B,
                                  ),
                                ),
                              )
                            ],
                          ),
                          SizedBox(height: 10.h),
                          Directionality(
                            textDirection: TextDirection.ltr,
                            child: SegmentedButton(
                              segments: const [
                                ButtonSegment(
                                  value: 0,
                                  label: Text('Sat'),
                                ),
                                ButtonSegment(
                                  value: 1,
                                  label: Text('Sun'),
                                ),
                                ButtonSegment(
                                  value: 2,
                                  label: Text('Mon'),
                                ),
                                ButtonSegment(
                                  value: 3,
                                  label: Text('Tue'),
                                ),
                                ButtonSegment(
                                  value: 4,
                                  label: Text('Wed'),
                                ),
                                ButtonSegment(
                                  value: 5,
                                  label: Text('Thu'),
                                ),
                                ButtonSegment(
                                  value: 6,
                                  label: Text('Fri'),
                                ),
                              ],
                              showSelectedIcon: false,
                              emptySelectionAllowed: false,
                              multiSelectionEnabled: true,
                              onSelectionChanged: (p0) {},
                              selected: weeks,
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                  itemCount: 3,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
