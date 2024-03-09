import 'package:cached_network_image/cached_network_image.dart';
import 'package:commuter_driver/core/themes/controller/app_theme_bloc.dart';
import 'package:commuter_driver/core/themes/text_styles.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:badges/badges.dart' as badges;

import '../../../core/routes/app_route.dart';

class ChatsView extends StatelessWidget {
  const ChatsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('المحادثات'),
      ),
      body: Padding(
        padding: EdgeInsets.all(10.0.w),
        child: Column(
          children: [
            TextFormField(
              decoration: const InputDecoration(
                contentPadding: EdgeInsets.symmetric(vertical: 0),
                prefixIcon: Icon(CupertinoIcons.search),
                hintText: 'بحث',
              ),
            ),
            SizedBox(height: 10.h),
            ListView.builder(
              shrinkWrap: true,
              itemCount: _list.length,
              itemBuilder: (context, index) => Card(
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Row(
                    children: [
                      Padding(
                        padding: EdgeInsets.all(5.w),
                        child: badges.Badge(
                          showBadge: _list[index]['isActive'],
                          badgeStyle:
                              const badges.BadgeStyle(badgeColor: Colors.green),
                          position: badges.BadgePosition.topStart(),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(100.r),
                            child: CachedNetworkImage(
                              fit: BoxFit.cover,
                              height: 75,
                              width: 75,
                              imageUrl: _list[index]['pic'],
                            ),
                          ),
                        ),
                      ),
                      VerticalDivider(
                        thickness: 5,
                        color: ColorManger.white,
                      ),
                      Expanded(
                        child: ListTile(
                          onTap: () {
                            AppRouter.push(
                                context: context, page: Pages.oneChat);
                          },
                          title: Text(
                            _list[index]['name'],
                            style: TextStyles.tsP15B,
                          ),
                          subtitle: Text(
                            _list[index]['msg'],
                          ),
                          trailing: badges.Badge(
                            showBadge: _list[index]['noMsg'] != 0,
                            badgeContent: Text(
                              _list[index]['noMsg'].toString(),
                            ),
                          ),
                        ),
                      ),
                      const Icon(
                        Icons.arrow_forward_ios_rounded,
                      ),
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

List _list = [
  {
    'isActive': true,
    'name': 'Mohamed Maher',
    'msg': 'السلام عليكم , اريد الانضمام الي تنقل العمل .....',
    'noMsg': 3,
    "pic":
        'https://images.unsplash.com/photo-1457449940276-e8deed18bfff?q=80&w=2070&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
  },
  {
    'isActive': false,
    'name': 'Ahmed Ali',
    'msg': "منتظر ردك اليوم",
    'noMsg': 1,
    'pic':
        'https://images.unsplash.com/photo-1529665253569-6d01c0eaf7b6?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8NHx8cHJvZmlsZXxlbnwwfHwwfHx8MA%3D%3D',
  },
  {
    'isActive': false,
    'name': 'Osama Mohamed',
    'msg': "تمام اتفقنا",
    'noMsg': 0,
    'pic':
        'https://images.pexels.com/photos/771742/pexels-photo-771742.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500',
  },
];
