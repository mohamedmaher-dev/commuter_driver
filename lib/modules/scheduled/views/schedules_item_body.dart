import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:jiffy/jiffy.dart';

import '../../../../core/themes/app_theme_controller.dart';
import '../controllers/add_schedules/add_schedules_bloc.dart';
import '../data/models/local_schedule_model.dart';

class SchedulesItemBody extends StatelessWidget {
  final LocalScheduleModel localScheduleModel;
  const SchedulesItemBody({
    super.key,
    required this.localScheduleModel,
  });

  @override
  Widget build(BuildContext context) {
    final addSchedulesBloc = BlocProvider.of<AddSchedulesBloc>(context);
    return Card(
      child: Center(
        child: ListTile(
          leading: const Icon(Icons.calendar_month),
          trailing: IconButton(
            icon: Icon(
              Icons.delete,
              color: ColorManger.red,
            ),
            onPressed: () {
              addSchedulesBloc.add(
                AddSchedulesEvent.delete(localScheduleModel),
              );
            },
          ),
          title: Text(
            maxLines: 1,
            localScheduleModel.localationName,
            style: TextStyles.tsP15B,
          ),
          subtitle: Text(Jiffy.parse(localScheduleModel.date).yMMMEdjm),
        ),
      ),
    );
  }
}
