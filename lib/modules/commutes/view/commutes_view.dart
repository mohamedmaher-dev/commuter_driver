import 'dart:math';

import 'package:awesome_snackbar_content/awesome_snackbar_content.dart';
import 'package:commuter_driver/core/di/di.dart';
import 'package:commuter_driver/core/location_service/location_service.dart';
import 'package:commuter_driver/core/location_service/models/get_routes_request_model.dart';
import 'package:commuter_driver/core/routes/app_route.dart';
import 'package:commuter_driver/core/widgets/app_snack_bar.dart';
import 'package:commuter_driver/core/widgets/circle_loading.dart';
import 'package:commuter_driver/core/widgets/empty_view.dart';
import 'package:commuter_driver/core/widgets/pop_loading.dart';
import 'package:commuter_driver/core/widgets/segmented_week.dart';
import 'package:commuter_driver/modules/commutes/controllers/commutes_bloc/commutes_bloc.dart';
import 'package:dio/dio.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../core/themes/controller/app_theme_bloc.dart';
import '../../../core/themes/text_styles.dart';
part 'widgets/commute_item.dart';

class CommutesView extends StatelessWidget {
  const CommutesView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => di<CommutesBloc>()
        ..add(
          const CommutesEvent.started(),
        ),
      child: const _CommutesView(),
    );
  }
}

class _CommutesView extends StatelessWidget {
  const _CommutesView();

  @override
  Widget build(BuildContext context) {
    final commutesBloc = BlocProvider.of<CommutesBloc>(context);
    return Scaffold(
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {
          AppRouter.push(context: context, page: Pages.addCommute);
        },
        label: const Text('اضف تنقل'),
        icon: const Icon(Icons.add),
      ),
      body: BlocConsumer<CommutesBloc, CommutesState>(
        listener: (context, state) {
          PopLoading.dismiss();
          state.whenOrNull(
            deleteCommuteLoading: () {
              PopLoading.show();
            },
            deleteFailure: (error) {
              AppSnackBar.show(
                title: 'Failure',
                msg: error,
                type: ContentType.failure,
                context: context,
              );
            },
            deleteSuccess: () {
              AppSnackBar.show(
                title: 'Success',
                msg: 'Delete Commute Success',
                type: ContentType.success,
                context: context,
              );
            },
          );
        },
        builder: (context, state) {
          return state.maybeWhen(
            initial: () => const Center(
              child: CircleLoading(),
            ),
            getCommuteLoading: () => const Center(
              child: CircleLoading(),
            ),
            getCommutsFailure: (error) => Center(
              child: Text(error),
            ),
            empty: () =>
                const EmptyView(msg: 'No commutes found please add one'),
            orElse: () {
              return ListView.builder(
                itemBuilder: (context, index) => GestureDetector(
                  child: _CommuteItem(
                    index: index,
                    title: commutesBloc.commutes[index].commuteName,
                    startLocation: commutesBloc.locations[index].pickup,
                    endLocation: commutesBloc.locations[index].landing,
                    isRoundTrip: commutesBloc.commutes[index].isRoundTrip,
                    days: commutesBloc.commutes[index].days.toSet(),
                  ),
                  onTap: () async {
                    AppRouter.push(context: context, page: Pages.oneCommute);
                  },
                ),
                itemCount: commutesBloc.commutes.length,
              );
            },
          );
        },
      ),
    );
  }
}
