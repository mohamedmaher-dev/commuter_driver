import 'package:commuter_driver/core/routes/app_route.dart';
import 'package:commuter_driver/core/themes/app_theme_controller.dart';
import 'package:commuter_driver/core/widgets/loading_view.dart';
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
    return const _OneCommuteBodyWidget();
  }
}

class _OneCommuteBodyWidget extends StatefulWidget {
  const _OneCommuteBodyWidget();

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
              padding: EdgeInsets.all(10.w),
              child: Column(
                children: [
                  Card(
                    child: Column(
                      children: [
                        ListTile(
                          title: Text(language.pickup),
                          subtitle:
                              Text(style: TextStyles.tsP10N, cubit.pickup),
                        ),
                        const Divider(),
                        ListTile(
                          title: Text(language.dropoff),
                          subtitle:
                              Text(style: TextStyles.tsP10N, cubit.dropoff),
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
                            ),
                            title: Text(language.time_window, maxLines: 1),
                            trailing: IconButton.outlined(
                              onPressed: () {
                                TextEditingController controller =
                                    TextEditingController();
                                showDialog(
                                  context: context,
                                  builder: (context) => AlertDialog(
                                    content: TextField(
                                      controller: controller,
                                      decoration: InputDecoration(
                                        hintText: language.change_time_window,
                                      ),
                                    ),
                                    actions: [
                                      TextButton(
                                        onPressed: () {
                                          AppRouter.pop(context: context);
                                          cubit.timeWindow =
                                              int.parse(controller.text);
                                          setState(() {});
                                        },
                                        child: Text(language.save),
                                      ),
                                    ],
                                  ),
                                );
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
                              '${cubit.range} KM',
                              style: TextStyles.tsP10B,
                            ),
                            title: Text(language.range, maxLines: 1),
                            trailing: IconButton.outlined(
                              onPressed: () {
                                TextEditingController controller =
                                    TextEditingController();
                                showDialog(
                                  context: context,
                                  builder: (context) => AlertDialog(
                                    content: TextField(
                                      controller: controller,
                                      decoration: InputDecoration(
                                        hintText: language.change_range,
                                      ),
                                    ),
                                    actions: [
                                      TextButton(
                                        onPressed: () {
                                          AppRouter.pop(context: context);
                                          cubit.range =
                                              int.parse(controller.text);
                                          setState(() {});
                                        },
                                        child: Text(language.save),
                                      ),
                                    ],
                                  ),
                                );
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
