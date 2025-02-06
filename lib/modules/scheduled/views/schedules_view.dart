import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../core/di/di.dart';
import '../../../core/localization/generated/l10n.dart';
import '../../../core/widgets/empty_view.dart';
import '../../../core/widgets/error_view.dart';
import '../../../core/widgets/loading_view.dart';
import '../controllers/add_schedules/add_schedules_bloc.dart';
import 'add_schedules_bottom_sheet_body.dart';
import 'schedules_item_body.dart';

class SchedulesView extends StatelessWidget {
  const SchedulesView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) =>
          di<AddSchedulesBloc>()..add(const AddSchedulesEvent.started()),
      child: const _MyCommutesViewBody(),
    );
  }
}

class _MyCommutesViewBody extends StatelessWidget {
  const _MyCommutesViewBody();

  @override
  Widget build(BuildContext context) {
    final addSchedulesBloc = BlocProvider.of<AddSchedulesBloc>(context);
    final language = Language.of(context);

    return Scaffold(
      appBar: AppBar(
        title: Text(language.my_commutes),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showModalBottomSheet(
            showDragHandle: true,
            context: context,
            builder: (context) =>
                AddSchedulesBottomSheetBody(bloc: addSchedulesBloc),
          );
        },
        child: const Icon(Icons.add),
      ),
      body: Center(
        child: Column(
          children: [
            Expanded(
              child: BlocBuilder<AddSchedulesBloc, AddSchedulesState>(
                builder: (context, state) {
                  return state.maybeWhen(
                    orElse: () => const LoadingView(),
                    failure: () => const ErrorView(),
                    empty: () => EmptyView(
                      icon: Icons.calendar_month,
                      text: language.no_schedules_trips_found_please_add_one,
                    ),
                    success: (commutes) => ListView.builder(
                      padding: EdgeInsets.all(10.w),
                      itemCount: commutes.length,
                      itemBuilder: (context, index) {
                        return SchedulesItemBody(
                          localScheduleModel: commutes[index],
                        );
                      },
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
