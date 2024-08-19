import 'package:easy_stepper/easy_stepper.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/themes/color_manger.dart';
import '../../../../core/themes/text_styles.dart';

class ContractsView extends StatelessWidget {
  const ContractsView({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      shrinkWrap: true,
      children: const [
        _ContarctItem(),
      ],
    );
  }
}

class _ContarctItem extends StatelessWidget {
  const _ContarctItem();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(10.w),
      child: Card(
        child: ExpansionTile(
          leading: const Icon(Icons.person),
          title: Text(
            'Ahmed Ali',
            style: TextStyles.tsP12B,
          ),
          subtitle: const Text('Client Name'),
          children: [
            Row(
              children: [
                Expanded(
                  child: ListTile(
                    leading: const Icon(Icons.numbers),
                    title: Text(
                      'C-1245879',
                      style: TextStyles.tsP10B,
                    ),
                    subtitle: const Text('Contract Number'),
                  ),
                ),
                Expanded(
                  child: ListTile(
                    leading: const Icon(Icons.calendar_month),
                    title: Text(
                      '24/04/2024',
                      style: TextStyles.tsP10B,
                    ),
                    subtitle: const Text('Contracts Date'),
                  ),
                )
              ],
            ),
            Row(
              children: [
                Expanded(
                  child: ListTile(
                    leading: const Icon(Icons.route_outlined),
                    title: Text(
                      'Home',
                      style: TextStyles.tsP10B,
                    ),
                    subtitle: const Text('Commute Name'),
                  ),
                ),
                Expanded(
                  child: ListTile(
                    leading: const Icon(Icons.numbers),
                    title: Text(
                      'C-1245879',
                      style: TextStyles.tsP10B,
                    ),
                    subtitle: const Text('Commute ID'),
                  ),
                ),
              ],
            ),
            Row(
              children: [
                Expanded(
                  child: ListTile(
                    leading: const Icon(Icons.location_pin),
                    title: Text(
                      'Cairo, Egypt',
                      style: TextStyles.tsP10B,
                    ),
                    subtitle: const Text('Commute Location'),
                  ),
                ),
                Expanded(
                  child: ListTile(
                    leading: const Icon(Icons.payments),
                    title: Text(
                      '1000 SAR',
                      style: TextStyles.tsP10B,
                    ),
                    subtitle: const Text('Total Price'),
                  ),
                ),
              ],
            ),
            EasyStepper(
              defaultStepBorderType: BorderType.normal,
              finishedStepIconColor: ColorManger.primaryContainer,
              activeStepIconColor: ColorManger.primary,
              unreachedStepIconColor: ColorManger.transparent,
              borderThickness: 3,
              lineStyle: const LineStyle(
                lineType: LineType.normal,
                lineThickness: 2,
              ),
              showLoadingAnimation: false,
              stepBorderRadius: 10.r,
              stepShape: StepShape.rRectangle,
              activeStep: 1,
              steps: const [
                EasyStep(
                  enabled: true,
                  finishIcon: Icon(Icons.done),
                  icon: Icon(Icons.circle_outlined),
                  title: '250 SAR',
                ),
                EasyStep(
                  enabled: false,
                  finishIcon: Icon(Icons.done),
                  icon: Icon(Icons.circle_outlined),
                  title: '250 SAR',
                ),
                EasyStep(
                  enabled: true,
                  finishIcon: Icon(Icons.done),
                  icon: Icon(Icons.circle_outlined),
                  title: '250 SAR',
                ),
                EasyStep(
                  enabled: true,
                  finishIcon: Icon(Icons.done),
                  icon: Icon(Icons.circle_outlined),
                  title: '250 SAR',
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
