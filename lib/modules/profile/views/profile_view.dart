import 'package:commuter_driver/core/themes/controller/app_theme_bloc.dart';
import 'package:commuter_driver/core/themes/text_styles.dart';
import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:badges/badges.dart' as badges;

class ProfileView extends StatelessWidget {
  const ProfileView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        forceMaterialTransparency: true,
        title: const Text('الملف الشخصي'),
        actions: [
          IconButton.outlined(
            onPressed: () {},
            icon: const Icon(
              Icons.exit_to_app_rounded,
            ),
          ),
          SizedBox(width: 10.w),
        ],
      ),
      body: ListView(
        padding: EdgeInsets.all(10.w),
        children: [
          Card(
            child: Padding(
              padding: EdgeInsets.all(10.w),
              child: Column(
                children: [
                  badges.Badge(
                    badgeAnimation: const badges.BadgeAnimation.scale(),
                    badgeStyle: badges.BadgeStyle(
                      badgeColor: ColorManger.transparent,
                    ),
                    badgeContent: IconButton.filledTonal(
                      icon: const Icon(Icons.edit),
                      onPressed: () {},
                    ),
                    position: badges.BadgePosition.bottomStart(),
                    child: CircleAvatar(
                      maxRadius: MediaQuery.of(context).size.width / 6,
                      minRadius: MediaQuery.of(context).size.width / 6,
                      child: Hero(
                        tag: 'TAG-1',
                        child: Icon(
                          CupertinoIcons.profile_circled,
                          size: MediaQuery.of(context).size.width / 6,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 10.h),
                  RatingBar(
                    textDirection: TextDirection.ltr,
                    initialRating: 3.5,
                    minRating: 1,
                    direction: Axis.horizontal,
                    allowHalfRating: true,
                    itemCount: 5,
                    itemPadding: const EdgeInsets.symmetric(horizontal: 4.0),
                    ratingWidget: RatingWidget(
                      full: const Icon(
                        Icons.star,
                        color: Colors.amber,
                      ),
                      half: const Directionality(
                        textDirection: TextDirection.ltr,
                        child: Icon(
                          Icons.star_half,
                          color: Colors.amber,
                        ),
                      ),
                      empty: const Icon(
                        Icons.star_border,
                        color: Colors.amber,
                      ),
                    ),
                    onRatingUpdate: (double value) {},
                  ),
                  SizedBox(height: 10.h),
                  TextFormField(
                    initialValue: 'Mohamed Maher',
                    textAlign: TextAlign.center,
                    readOnly: true,
                    style: TextStyles.tsP12B,
                    decoration: InputDecoration(
                      suffixIcon: IconButton(
                        onPressed: () {},
                        icon: const Icon(
                          Icons.edit,
                        ),
                      ),
                    ),
                  ),
                  ListTile(
                    title: const Text('الوضع الليلي'),
                    leading: const Icon(Icons.female_rounded),
                    trailing: Switch(
                      value: true,
                      onChanged: (newValue) {},
                    ),
                  ),
                  ListTile(
                    title: const Text('اللغة'),
                    leading: const Icon(Icons.language),
                    trailing: TextButton(
                      onPressed: () {},
                      child: const Text('العربية'),
                    ),
                  ),
                  ElevatedButton.icon(
                    style: ButtonStyle(
                      elevation: const MaterialStatePropertyAll(0),
                      foregroundColor: MaterialStatePropertyAll(
                        ColorManger.red,
                      ),
                    ),
                    onPressed: () {},
                    icon: const Icon(Icons.delete),
                    label: const Text('حذف الحساب'),
                  )
                ],
              ),
            ),
          ),
          Card(
            child: Padding(
              padding: EdgeInsets.all(10.w),
              child: Column(
                children: [
                  ListTile(
                    title: const Text('نوع السيارة'),
                    leading: const Icon(CupertinoIcons.car_detailed),
                    trailing: IconButton.outlined(
                      style: ButtonStyle(
                        shape: MaterialStatePropertyAll(
                          RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10.r),
                          ),
                        ),
                      ),
                      onPressed: () {},
                      icon: const Icon(
                        Icons.arrow_drop_down_rounded,
                      ),
                    ),
                  ),
                  ListTile(
                    title: const Text('لون السيارة'),
                    leading: const Icon(Icons.color_lens),
                    trailing: CircleAvatar(
                      backgroundColor: ColorManger.white,
                    ),
                  ),
                  ListTile(
                    title: const Text('نساء فقط'),
                    leading: const Icon(Icons.female_rounded),
                    trailing: Switch(
                      value: false,
                      onChanged: (newValue) {},
                    ),
                  ),
                  ListTile(
                    title: const Text('مشاركة السيارة'),
                    leading: const Icon(Icons.group),
                    trailing: Switch(
                      value: false,
                      onChanged: (newValue) {},
                    ),
                  ),
                  ListTile(
                    title: const Text('عدد اماكن السيارة'),
                    leading: const Icon(Icons.chair_alt_rounded),
                    trailing: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        IconButton(
                          onPressed: () {},
                          icon: const Icon(
                            CupertinoIcons.plus,
                          ),
                        ),
                        Text(
                          '5',
                          style: TextStyles.tsP20B,
                        ),
                        IconButton(
                          onPressed: () {},
                          icon: const Icon(
                            CupertinoIcons.minus,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          Card(
            child: Padding(
                padding: EdgeInsetsDirectional.all(10.w),
                child: TextButton(
                  onPressed: () {},
                  child: DottedBorder(
                    borderType: BorderType.RRect,
                    radius: Radius.circular(10.r),
                    dashPattern: const [10, 10],
                    color: Colors.grey,
                    strokeWidth: 2,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        Padding(
                          padding: EdgeInsets.all(10.w),
                          child: Icon(
                            size: 50.r,
                            Icons.document_scanner_rounded,
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.all(10.w),
                          child: Text(
                            'تأكيد الهوية',
                            textAlign: TextAlign.center,
                            style: TextStyles.tsP15B,
                          ),
                        )
                      ],
                    ),
                  ),
                )),
          ),
          SizedBox(height: 10.h),
          FilledButton(
            onPressed: () {},
            child: const Text('تحديث الملف الشخصي'),
          )
        ],
      ),
    );
  }
}
