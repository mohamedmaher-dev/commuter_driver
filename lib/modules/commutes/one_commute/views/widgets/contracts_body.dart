import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../../core/themes/app_theme_controller.dart';

class OneCommuteContractsBody extends StatelessWidget {
  const OneCommuteContractsBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView(
        children: [
          Padding(
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
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
