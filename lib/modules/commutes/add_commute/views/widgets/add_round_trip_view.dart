import 'package:awesome_snackbar_content/awesome_snackbar_content.dart';
import 'package:commuter_driver/core/widgets/app_snack_bar.dart';
import 'package:commuter_driver/modules/commutes/add_commute/controllers/round_trip/add_round_trip_cubit.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:jiffy/jiffy.dart';
import '../../../../../core/localization/generated/l10n.dart';
import '../../../../../core/themes/app_theme_controller.dart';

class AddRoundTripView extends StatefulWidget {
  const AddRoundTripView({super.key, required this.cubit});
  final AddRoundTripCubit cubit;

  @override
  State<AddRoundTripView> createState() => _AddRoundTripViewState();
}

class _AddRoundTripViewState extends State<AddRoundTripView> {
  @override
  Widget build(BuildContext context) {
    final Language language = Language.of(context);
    return Padding(
      padding: EdgeInsets.all(10.w),
      child: Column(
        children: [
          Row(
            children: [
              SizedBox(
                height: 35.h,
                width: 35.w,
                child: const Icon(Icons.access_time),
              ),
              Expanded(
                child: Text(
                  language.pickup,
                  style: TextStyles.tsP12B,
                ),
              ),
              TextButton.icon(
                onPressed: () async {
                  await showModalBottomSheet(
                    context: context,
                    builder: (context) => Padding(
                      padding: EdgeInsets.all(10.w),
                      child: Column(
                        children: [
                          Expanded(
                            child: CupertinoDatePicker(
                              mode: CupertinoDatePickerMode.time,
                              initialDateTime: DateTime.now(),
                              onDateTimeChanged: (DateTime dateTime) {
                                widget.cubit.pickupStartTime = dateTime;
                              },
                            ),
                          ),
                          FilledButton(
                            onPressed: () {
                              Navigator.of(context).pop();
                              widget.cubit.pickupStartTime ??= DateTime.now();
                            },
                            child: Text(
                              language.confirm,
                            ),
                          )
                        ],
                      ),
                    ),
                  );
                  setState(() {});
                },
                icon: const Icon(CupertinoIcons.time),
                label: Text(
                  widget.cubit.pickupStartTime == null
                      ? language.start_time
                      : Jiffy.parseFromDateTime(widget.cubit.pickupStartTime!)
                          .jm,
                ),
              ),
              const Icon(Icons.arrow_forward_rounded),
              TextButton.icon(
                onPressed: () async {
                  await showModalBottomSheet(
                    context: context,
                    builder: (context) => Padding(
                      padding: EdgeInsets.all(10.w),
                      child: Column(
                        children: [
                          Expanded(
                            child: CupertinoDatePicker(
                              mode: CupertinoDatePickerMode.time,
                              initialDateTime: DateTime.now(),
                              onDateTimeChanged: (DateTime dateTime) {
                                widget.cubit.pickupEndTime = dateTime;
                              },
                            ),
                          ),
                          FilledButton(
                            onPressed: () {
                              widget.cubit.pickupEndTime ??= DateTime.now();
                              Navigator.of(context).pop();
                            },
                            child: Text(
                              language.confirm,
                            ),
                          )
                        ],
                      ),
                    ),
                  );
                  setState(() {});
                },
                icon: const Icon(CupertinoIcons.time),
                label: Text(
                  widget.cubit.pickupEndTime == null
                      ? language.end_time
                      : Jiffy.parseFromDateTime(widget.cubit.pickupEndTime!).jm,
                ),
              )
            ],
          ),
          const Divider(),
          Row(
            children: [
              SizedBox(
                height: 35.h,
                width: 35.w,
                child: const Icon(Icons.access_time),
              ),
              Expanded(
                child: Text(
                  language.dropoff,
                  style: TextStyles.tsP12B,
                ),
              ),
              TextButton.icon(
                onPressed: () async {
                  await showModalBottomSheet(
                    context: context,
                    builder: (context) => Padding(
                      padding: EdgeInsets.all(10.w),
                      child: Column(
                        children: [
                          Expanded(
                            child: CupertinoDatePicker(
                              mode: CupertinoDatePickerMode.time,
                              initialDateTime: DateTime.now(),
                              onDateTimeChanged: (DateTime dateTime) {
                                widget.cubit.dropOffStartTime = dateTime;
                              },
                            ),
                          ),
                          FilledButton(
                            onPressed: () {
                              Navigator.of(context).pop();
                              widget.cubit.dropOffStartTime ??= DateTime.now();
                            },
                            child: Text(
                              language.confirm,
                            ),
                          )
                        ],
                      ),
                    ),
                  );
                  setState(() {});
                },
                icon: const Icon(CupertinoIcons.time),
                label: Text(
                  widget.cubit.dropOffStartTime == null
                      ? language.start_time
                      : Jiffy.parseFromDateTime(widget.cubit.dropOffStartTime!)
                          .jm,
                ),
              ),
              const Icon(Icons.arrow_forward_rounded),
              TextButton.icon(
                onPressed: () async {
                  await showModalBottomSheet(
                    context: context,
                    builder: (context) => Padding(
                      padding: EdgeInsets.all(10.w),
                      child: Column(
                        children: [
                          Expanded(
                            child: CupertinoDatePicker(
                              mode: CupertinoDatePickerMode.time,
                              initialDateTime: DateTime.now(),
                              onDateTimeChanged: (DateTime dateTime) {
                                widget.cubit.dropOffStartTime = dateTime;
                              },
                            ),
                          ),
                          FilledButton(
                            onPressed: () {
                              Navigator.of(context).pop();
                              widget.cubit.dropOffEndTime ??= DateTime.now();
                            },
                            child: Text(
                              language.confirm,
                            ),
                          )
                        ],
                      ),
                    ),
                  );
                  setState(() {});
                },
                icon: const Icon(CupertinoIcons.time),
                label: Text(
                  widget.cubit.dropOffEndTime == null
                      ? language.end_time
                      : Jiffy.parseFromDateTime(widget.cubit.dropOffEndTime!)
                          .jm,
                ),
              )
            ],
          ),
          const Spacer(),
          Row(
            children: [
              Expanded(
                child: FilledButton(
                  onPressed: () {
                    if (widget.cubit.pickupStartTime != null &&
                        widget.cubit.pickupEndTime != null &&
                        widget.cubit.dropOffStartTime != null &&
                        widget.cubit.dropOffEndTime != null) {
                      widget.cubit.isRoundTrip = true;
                      Navigator.of(context).pop();
                    } else {
                      widget.cubit.isRoundTrip = false;
                      AppSnackBar.show(
                        title: language.failure,
                        msg: language.please_fill_all_fields,
                        type: ContentType.failure,
                        context: context,
                      );
                      Navigator.of(context).pop();
                    }
                  },
                  child: Text(language.confirm),
                ),
              ),
              SizedBox(width: 10.w),
              Expanded(
                child: FilledButton.tonal(
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(ColorManger.red),
                  ),
                  onPressed: () {
                    widget.cubit.isRoundTrip = false;
                    Navigator.of(context).pop();
                  },
                  child: Text(language.cancel),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
