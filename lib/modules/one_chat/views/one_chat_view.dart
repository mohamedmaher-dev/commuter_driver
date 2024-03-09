import 'package:cached_network_image/cached_network_image.dart';
import 'package:commuter_driver/core/themes/controller/app_theme_bloc.dart';
import 'package:commuter_driver/core/themes/text_styles.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class OneChatView extends StatelessWidget {
  const OneChatView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: ListTile(
          leading: ClipRRect(
            borderRadius: BorderRadius.circular(100.r),
            child: CachedNetworkImage(
              fit: BoxFit.cover,
              width: 35.w,
              height: 35.w,
              imageUrl:
                  'https://images.pexels.com/photos/771742/pexels-photo-771742.jpeg?auto=compress&cs=tinysrgb&w=400',
            ),
          ),
          title: Text(
            'محمد ماهر',
            style: TextStyles.tsP15B,
          ),
          subtitle: const Text('اخر ظهور مند يوم'),
          trailing: IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.more_vert_rounded,
            ),
          ),
        ),
      ),
      body: Padding(
        padding: EdgeInsets.all(10.0.w),
        child: Column(
          children: [
            Expanded(
              child: ListView.builder(
                itemCount: 3,
                itemBuilder: (context, index) {
                  if (data[index]['me']) {
                    return Column(
                      children: [
                        Align(
                          alignment: Alignment.centerRight,
                          child: Container(
                            margin: EdgeInsets.all(10.w),
                            padding: EdgeInsets.all(10.w),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadiusDirectional.only(
                                bottomEnd: Radius.circular(100.r),
                                topEnd: Radius.circular(100.r),
                                topStart: Radius.circular(100.r),
                              ),
                              color: ColorManger.primaryContainer,
                            ),
                            child: Text(data[index]['msg']),
                          ),
                        ),
                        Align(
                          alignment: AlignmentDirectional.centerStart,
                          child: Text(
                            data[index]['time'],
                          ),
                        )
                      ],
                    );
                  } else {
                    return Column(
                      children: [
                        Align(
                          alignment: AlignmentDirectional.centerEnd,
                          child: Container(
                            margin: EdgeInsets.all(10.w),
                            padding: EdgeInsets.all(10.w),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadiusDirectional.only(
                                bottomStart: Radius.circular(100.r),
                                topEnd: Radius.circular(100.r),
                                topStart: Radius.circular(100.r),
                              ),
                              color: ColorManger.secondaryContainer,
                            ),
                            child: Text(data[index]['msg']),
                          ),
                        ),
                        Align(
                          alignment: AlignmentDirectional.centerEnd,
                          child: Text(
                            data[index]['time'],
                          ),
                        ),
                      ],
                    );
                  }
                },
              ),
            ),
            Row(
              children: [
                Expanded(
                  child: TextFormField(
                    decoration: const InputDecoration(
                      hintText: 'اكتب رسالتك ....',
                      contentPadding: EdgeInsets.symmetric(horizontal: 10),
                    ),
                  ),
                ),
                SizedBox(width: 10.w),
                SizedBox(
                  width: 50,
                  height: 50,
                  child: IconButton.filled(
                    onPressed: () {},
                    icon: const Directionality(
                      textDirection: TextDirection.ltr,
                      child: Icon(
                        Icons.send,
                      ),
                    ),
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}

List<Map> data = [
  {
    "msg": "السلام عليكم",
    "time": '16:41 PM',
    "me": false,
  },
  {
    "msg": "اريد الانضمام الي كوميوت العمل",
    "time": '16:41 PM',
    "me": false,
  },
  {
    "msg": "و عليكم السلام , تمام مفيش مشكلة",
    "time": '16:49 PM',
    "me": true,
  },
];
