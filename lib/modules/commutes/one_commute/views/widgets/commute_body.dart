import 'package:commuter_driver/core/themes/app_theme_controller.dart';
import 'package:commuter_driver/core/widgets/loading_view.dart';
import 'package:commuter_driver/core/widgets/popup_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../../core/localization/generated/l10n.dart';
import '../../../../../core/widgets/error_view.dart';
import '../../../my_commutes/data/models/get_commutes_response_model.dart';
import '../../controllers/one_commute/one_commute_cubit.dart';

class OneCommuteBody extends StatelessWidget {
  const OneCommuteBody({super.key, required this.commuteModel});
  final CommuteModel commuteModel;

  @override
  Widget build(BuildContext context) {
    return _OneCommuteBodyWidget(commuteModel: commuteModel);
  }
}

class _OneCommuteBodyWidget extends StatefulWidget {
  const _OneCommuteBodyWidget({required this.commuteModel});
  final CommuteModel commuteModel;

  @override
  State<_OneCommuteBodyWidget> createState() => _OneCommuteBodyWidgetState();
}

class _OneCommuteBodyWidgetState extends State<_OneCommuteBodyWidget> {
  @override
  Widget build(BuildContext context) {
    final cubit = BlocProvider.of<OneCommuteCubit>(context);
    final Language language = Language.of(context);

    return Expanded(
      child: BlocBuilder<OneCommuteCubit, OneCommuteState>(
        builder: (context, state) {
          return state.maybeWhen(
            orElse: () => const LoadingView(),
            success: () => Padding(
              padding: EdgeInsets.all(5.w),
              child: Column(
                children: [
                  Card(
                    child: Column(
                      children: [
                        ListTile(
                          title: Text(language.pickup),
                          subtitle: Text(
                            style: TextStyles.tsP10N,
                            cubit.pickup,
                            maxLines: 1,
                          ),
                        ),
                        const Divider(),
                        ListTile(
                          title: Text(language.dropoff),
                          subtitle: Text(
                            style: TextStyles.tsP10N,
                            cubit.dropoff,
                            maxLines: 1,
                          ),
                        ),
                      ],
                    ),
                  ),
                  const Divider(),
                  Row(
                    children: [
                      Expanded(
                        child: Card(
                          child: ListTile(
                            leading: const Icon(Icons.timelapse),
                            subtitle: Text(
                              '${cubit.timeWindow} ${language.min}',
                              style: TextStyles.tsP10B,
                              maxLines: 1,
                            ),
                            title: Text(language.time_window, maxLines: 1),
                            trailing: IconButton.outlined(
                              onPressed: () async {
                                await showChangerPopUpSlider(
                                  context: context,
                                  title: language.change_time_window,
                                  subtitle:
                                      language.please_choose_the_time_window,
                                  label: cubit.timeWindow.toString(),
                                  unit: language.min,
                                  divisions: 60,
                                  max: 60,
                                  value: cubit.timeWindow,
                                  defaultValue: widget
                                      .commuteModel.pickup.timeWindow
                                      .toMinutes(),
                                  onChanged: (value) {
                                    cubit.timeWindow = value.toInt();
                                  },
                                );
                                setState(() {});
                              },
                              icon: const Icon(
                                Icons.edit,
                              ),
                            ),
                          ),
                        ),
                      ),
                      Expanded(
                        child: Card(
                          child: ListTile(
                            leading: const Icon(Icons.circle_outlined),
                            subtitle: Text(
                              '${cubit.range} ${language.km}',
                              style: TextStyles.tsP10B,
                              maxLines: 1,
                            ),
                            title: Text(language.range, maxLines: 1),
                            trailing: IconButton.outlined(
                              onPressed: () async {
                                await showChangerPopUpSlider(
                                  context: context,
                                  title: language.change_range,
                                  subtitle: language.please_choose_the_range,
                                  label: cubit.range.toString(),
                                  unit: language.km,
                                  divisions: 5,
                                  max: 5,
                                  value: cubit.range,
                                  defaultValue:
                                      widget.commuteModel.pickup.range,
                                  onChanged: (value) {
                                    cubit.range = value.toInt();
                                  },
                                );
                                setState(() {});
                              },
                              icon: const Icon(
                                Icons.edit,
                              ),
                            ),
                          ),
                        ),
                      )
                    ],
                  )
                ],
              ),
            ),
            failure: () => const ErrorView(),
          );
        },
      ),
    );
  }
}
