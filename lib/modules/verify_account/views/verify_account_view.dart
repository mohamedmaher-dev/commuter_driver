import 'package:commuter_driver/core/themes/app_theme_controller.dart';
import 'package:commuter_driver/modules/car_models/views/car_brands_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class VerifyAccountView extends StatelessWidget {
  const VerifyAccountView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Verify Account'),
      ),
      body: ListView(
        padding: EdgeInsets.all(5.w),
        children: [
          ListTile(
            leading: const Icon(Icons.assignment_ind_rounded),
            title: Text(
              'Personal Information',
              style: TextStyles.tsP12B,
            ),
          ),
          Card(
            child: Column(
              children: [
                ListTile(
                  leading: const Icon(Icons.camera_front_rounded),
                  title: Text(
                    'Selfie Photo',
                    style: TextStyles.tsP10B,
                  ),
                  subtitle: const Text('Please take a selfie photo'),
                  trailing: TextButton(
                    onPressed: () {},
                    child: const Text('Select'),
                  ),
                ),
                const Divider(),
                ListTile(
                  leading: const Icon(Icons.perm_contact_cal_rounded),
                  title: Text(
                    'Driving license - Front Side',
                    style: TextStyles.tsP10B,
                  ),
                  subtitle: const Text(
                      'Please take a photo of the front side of the personal identity card'),
                  trailing: TextButton(
                    onPressed: () {},
                    child: const Text('Select'),
                  ),
                ),
                const Divider(),
                ListTile(
                  leading: const Icon(Icons.chrome_reader_mode),
                  title: Text(
                    'Driving license - Back Side',
                    style: TextStyles.tsP10B,
                  ),
                  subtitle: const Text(
                      'Please take a photo of the back side of the personal identity card'),
                  trailing: TextButton(
                    onPressed: () {},
                    child: const Text('Select'),
                  ),
                ),
              ],
            ),
          ),
          const Divider(),
          ListTile(
            leading: const Icon(Icons.directions_car_rounded),
            title: Text(
              'Car Information',
              style: TextStyles.tsP12B,
            ),
          ),
          Card(
            child: Column(
              children: [
                ListTile(
                  leading: const Icon(Icons.no_crash_sharp),
                  title: Text(
                    'Car Model',
                    style: TextStyles.tsP10B,
                  ),
                  subtitle: const Text(
                      'Please choose the model of your car from the list'),
                  trailing: TextButton(
                    onPressed: () {
                      showModalBottomSheet(
                        context: context,
                        builder: (context) => const CarBrandsView(),
                      );
                    },
                    child: const Text('Select'),
                  ),
                ),
                const Divider(),
                ListTile(
                  leading: const Icon(Icons.arrow_upward_rounded),
                  title: Text(
                    'Front Side',
                    style: TextStyles.tsP10B,
                  ),
                  subtitle: const Text(
                      'Please take a photo of the front side of the vehicle with license plate'),
                  trailing: TextButton(
                    onPressed: () {},
                    child: const Text('Select'),
                  ),
                ),
                const Divider(),
                ListTile(
                  leading: const Icon(Icons.arrow_downward_rounded),
                  title: Text(
                    'Back Side',
                    style: TextStyles.tsP10B,
                  ),
                  subtitle: const Text(
                      'Please take a photo of the back side of the vehicle with license plate'),
                  trailing: TextButton(
                    onPressed: () {},
                    child: const Text('Select'),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
