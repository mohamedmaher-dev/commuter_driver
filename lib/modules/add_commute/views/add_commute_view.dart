import 'package:commuter_driver/core/routes/app_route.dart';
import 'package:commuter_driver/core/themes/text_styles.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AddCommuteView extends StatelessWidget {
  const AddCommuteView({super.key});

  @override
  Widget build(BuildContext context) {
    Set<int> fromRange = {5};
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'اضف كوميوت',
          style: TextStyles.tsP15B,
        ),
      ),
      body: ListView(
        padding: EdgeInsets.all(10.w),
        children: [
          TextFormField(
            decoration: const InputDecoration(hintText: 'اسم الكوميوت'),
          ),
          SizedBox(height: 10.h),
          Text(
            'استقبال الركاب',
            style: TextStyles.tsP15B,
          ),
          SizedBox(height: 5.h),
          Card(
            child: Padding(
              padding: EdgeInsets.all(10.w),
              child: Column(
                children: [
                  TextFormField(
                    initialValue: 'Cairo',
                    readOnly: true,
                    decoration: InputDecoration(
                      hintText: 'موقع البداية',
                      suffixIcon: IconButton(
                        onPressed: () {},
                        icon: const Icon(
                          Icons.add_location_rounded,
                        ),
                      ),
                    ),
                  ),
                  Divider(height: 20.h),
                  Row(
                    children: [
                      SizedBox(
                        height: 35.h,
                        width: 35.w,
                        child: const Icon(Icons.timeline),
                      ),
                      Expanded(
                        child: Text(
                          'النطاق',
                          style: TextStyles.tsP12B,
                        ),
                      ),
                      Directionality(
                        textDirection: TextDirection.ltr,
                        child: SegmentedButton(
                          multiSelectionEnabled: false,
                          emptySelectionAllowed: false,
                          segments: const [
                            ButtonSegment(
                              value: 1,
                              label: Text('1 KM'),
                            ),
                            ButtonSegment(
                              value: 2,
                              label: Text('2 KM'),
                            ),
                            ButtonSegment(
                              value: 5,
                              label: Text('5 KM'),
                            ),
                            ButtonSegment(
                              value: 10,
                              label: Text('10 KM'),
                            ),
                          ],
                          selected: fromRange,
                          onSelectionChanged: (p0) {},
                        ),
                      ),
                    ],
                  ),
                  Divider(height: 20.h),
                  Row(
                    children: [
                      SizedBox(
                        height: 35.h,
                        width: 35.w,
                        child: const Icon(Icons.access_time),
                      ),
                      Expanded(
                        child: Text(
                          'النافذه الزمنية',
                          style: TextStyles.tsP12B,
                        ),
                      ),
                      TextButton.icon(
                        onPressed: () {},
                        icon: const Icon(CupertinoIcons.time),
                        label: const Text('البداية'),
                      ),
                      const Icon(Icons.arrow_forward_rounded),
                      TextButton.icon(
                        onPressed: () {},
                        icon: const Icon(CupertinoIcons.time),
                        label: const Text('النهاية'),
                      )
                    ],
                  ),
                ],
              ),
            ),
          ),
          Divider(height: 25.h),
          Text(
            'انزال الركاب',
            style: TextStyles.tsP15B,
          ),
          SizedBox(height: 5.h),
          Card(
            child: Padding(
              padding: EdgeInsets.all(10.w),
              child: Column(
                children: [
                  TextFormField(
                    initialValue: 'Alex',
                    readOnly: true,
                    decoration: InputDecoration(
                      hintText: 'موقع النهاية',
                      suffixIcon: IconButton(
                        onPressed: () {},
                        icon: const Icon(
                          Icons.add_location_rounded,
                        ),
                      ),
                    ),
                  ),
                  Divider(height: 20.h),
                  Row(
                    children: [
                      SizedBox(
                        height: 35.h,
                        width: 35.w,
                        child: const Icon(Icons.timeline),
                      ),
                      Expanded(
                        child: Text(
                          'النطاق',
                          style: TextStyles.tsP12B,
                        ),
                      ),
                      Directionality(
                        textDirection: TextDirection.ltr,
                        child: SegmentedButton(
                          multiSelectionEnabled: false,
                          emptySelectionAllowed: false,
                          segments: const [
                            ButtonSegment(
                              value: 1,
                              label: Text('1 KM'),
                            ),
                            ButtonSegment(
                              value: 2,
                              label: Text('2 KM'),
                            ),
                            ButtonSegment(
                              value: 5,
                              label: Text('5 KM'),
                            ),
                            ButtonSegment(
                              value: 10,
                              label: Text('10 KM'),
                            ),
                          ],
                          selected: fromRange,
                          onSelectionChanged: (p0) {},
                        ),
                      ),
                    ],
                  ),
                  Divider(height: 20.h),
                  Row(
                    children: [
                      SizedBox(
                        height: 35.h,
                        width: 35.w,
                        child: const Icon(Icons.access_time),
                      ),
                      Expanded(
                        child: Text(
                          'النافذه الزمنية',
                          style: TextStyles.tsP12B,
                        ),
                      ),
                      TextButton.icon(
                        onPressed: () {},
                        icon: const Icon(CupertinoIcons.time),
                        label: const Text('البداية'),
                      ),
                      const Icon(Icons.arrow_forward_rounded),
                      TextButton.icon(
                        onPressed: () {},
                        icon: const Icon(CupertinoIcons.time),
                        label: const Text('النهاية'),
                      )
                    ],
                  ),
                ],
              ),
            ),
          ),
          SizedBox(height: 10.h),
          OutlinedButton.icon(
            onPressed: () {
              AppRouter.push(context: context, page: Pages.addRoundTrip);
            },
            icon: const Icon(Icons.compare_arrows_rounded),
            label: const Text(
              'تعيين ذهاب و عودة',
            ),
          ),
          SizedBox(height: 10.h),
          FilledButton.icon(
            onPressed: () {},
            icon: const Icon(Icons.add),
            label: const Text(
              'اضف كوميوت',
            ),
          )
        ],
      ),
    );
  }
}
