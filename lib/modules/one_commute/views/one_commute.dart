import 'package:commuter_driver/core/di/di.dart';
import 'package:commuter_driver/core/location_service/location_service.dart';
import 'package:commuter_driver/core/themes/controller/app_theme_bloc.dart';
import 'package:commuter_driver/core/themes/text_styles.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:badges/badges.dart' as badges;

import '../../../core/location_service/models/get_routes_request_model.dart';

class OneCommute extends StatefulWidget {
  const OneCommute({super.key});

  @override
  State<OneCommute> createState() => _OneCommuteState();
}

class _OneCommuteState extends State<OneCommute> {
  Set<Polyline> polylines = {};
  LocationService locationService = di<LocationService>();
  @override
  void initState() {
    locationService
        .getRoutes(
      getRoutesRequestModel: GetRoutesRequestModel(
        origin: GetRoutesAddPoint(
          location: GetRoutesAddLocation(
            latLng: GetRoutesAddLatLng(
              latitude: 30.707027889837548,
              longitude: 31.264275333461583,
            ),
          ),
        ),
        destination: GetRoutesAddPoint(
          location: GetRoutesAddLocation(
            latLng: GetRoutesAddLatLng(
              latitude: 30.71315561336298,
              longitude: 31.261008744848578,
            ),
          ),
        ),
      ),
    )
        .then(
      (value) {
        setState(
          () {
            polylines.clear();
            polylines.add(
              Polyline(
                polylineId: PolylineId(
                  value.hashCode.toString(),
                ),
                color: Colors.blue,
                width: 5,
                points: value,
              ),
            );
          },
        );
      },
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: GoogleMap(
              polylines: polylines,
              initialCameraPosition: const CameraPosition(
                target: LatLng(
                  30.707178831450133,
                  31.263731044174325,
                ),
                zoom: 17,
              ),
              myLocationButtonEnabled: false,
              myLocationEnabled: true,
              zoomControlsEnabled: false,
              circles: {
                Circle(
                  circleId: const CircleId('1'),
                  center: const LatLng(30.707178831450133, 31.263731044174325),
                  radius: 1 * 100,
                  fillColor: ColorManger.primaryContainer.withAlpha(100),
                  strokeWidth: 0,
                ),
                Circle(
                  circleId: const CircleId('2'),
                  center: const LatLng(30.71315561336298, 31.261008744848578),
                  radius: 1 * 100,
                  fillColor: ColorManger.primaryContainer.withAlpha(100),
                  strokeWidth: 0,
                ),
              },
            ),
          ),
          Expanded(
            child: Padding(
              padding: EdgeInsets.all(10.w),
              child: Column(
                children: [
                  Row(
                    children: [
                      Expanded(
                        child: Align(
                          child: badges.Badge(
                            badgeContent: const Text('2'),
                            child: IconButton.outlined(
                              onPressed: () {},
                              icon: Icon(
                                CupertinoIcons.chat_bubble_2_fill,
                                color: ColorManger.primary,
                              ),
                            ),
                          ),
                        ),
                      ),
                      Expanded(
                        child: Align(
                          child: badges.Badge(
                            badgeContent: const Text('5'),
                            child: IconButton.outlined(
                              onPressed: () {},
                              icon: Icon(
                                CupertinoIcons.bell_fill,
                                color: ColorManger.primary,
                              ),
                            ),
                          ),
                        ),
                      ),
                      Expanded(
                        child: FilledButton(
                          onPressed: () {},
                          child: const Text(
                            'Start',
                          ),
                        ),
                      ),
                      Expanded(
                        child: Align(
                          child: IconButton.outlined(
                            onPressed: () {},
                            icon: Icon(
                              CupertinoIcons.list_bullet,
                              color: ColorManger.primary,
                            ),
                          ),
                        ),
                      ),
                      Expanded(
                        child: Align(
                          child: IconButton.outlined(
                            onPressed: () {},
                            icon: Icon(
                              CupertinoIcons.person_fill,
                              color: ColorManger.primary,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  const Divider(),
                  ListView(
                    shrinkWrap: true,
                    children: [
                      Card(
                        child: ListTile(
                          leading: const Icon(Icons.route),
                          title: Text(
                            'العمل',
                            style: TextStyles.tsP15B,
                          ),
                          subtitle: const Text(
                            'اسم التنقل',
                          ),
                        ),
                      ),
                      Card(
                        child: Column(
                          children: [
                            ListTile(
                              title: Text(
                                'شارع الحرية, Madinet Mit Ghamr (Include Daqados), Mit Ghamr, Dakahlia Governorate',
                                style: TextStyles.tsP15B,
                                maxLines: 1,
                              ),
                              subtitle: const Text(
                                'موقع البداية',
                              ),
                            ),
                            const Divider(),
                            ListTile(
                              title: Text(
                                'P764+F4G, Al Hreh, Madinet Mit Ghamr (Include Daqados), Mit Ghamr, Dakahlia Governorate 7511001',
                                style: TextStyles.tsP15B,
                                maxLines: 1,
                              ),
                              subtitle: const Text(
                                'موقع النهاية',
                              ),
                            ),
                          ],
                        ),
                      ),
                      Card(
                        child: ListTile(
                          leading: const Icon(Icons.circle_outlined),
                          title: Text(
                            '1 KM',
                            style: TextStyles.tsP15B,
                          ),
                          subtitle: const Text(
                            'النطاق',
                          ),
                          trailing: IconButton(
                            onPressed: () {},
                            icon: Icon(
                              Icons.edit,
                              color: ColorManger.primary,
                            ),
                          ),
                        ),
                      ),
                      Card(
                        child: ListTile(
                          leading: const Icon(Icons.access_time),
                          title: Text(
                            '30 Min',
                            style: TextStyles.tsP15B,
                          ),
                          subtitle: const Text(
                            'النافذه الزمنية',
                          ),
                          trailing: IconButton(
                            onPressed: () {},
                            icon: Icon(
                              Icons.edit,
                              color: ColorManger.primary,
                            ),
                          ),
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
