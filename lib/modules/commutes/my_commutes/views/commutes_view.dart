import 'package:awesome_snackbar_content/awesome_snackbar_content.dart';
import 'package:commuter_driver/core/di/di.dart';
import 'package:commuter_driver/core/routes/app_route.dart';
import 'package:commuter_driver/core/widgets/app_snack_bar.dart';
import 'package:commuter_driver/core/widgets/circle_loading.dart';
import 'package:commuter_driver/core/widgets/empty_view.dart';
import 'package:commuter_driver/core/widgets/pop_loading.dart';
import 'package:commuter_driver/core/widgets/segmented_week.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../../core/themes/app_theme_controller.dart';
import '../../../../core/localization/generated/l10n.dart';
import '../controllers/commutes_bloc/commutes_bloc.dart';
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
    final Language language = Language.of(context);

    final commutesBloc = BlocProvider.of<CommutesBloc>(context);
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(title: Text(language.my_commutes)),
        floatingActionButton: FloatingActionButton.extended(
          onPressed: () async {
            await AppRouter.push(context: context, page: Pages.addCommute);
            commutesBloc.add(const CommutesEvent.started());
          },
          label: Text(language.add_commute),
          icon: const Icon(Icons.add),
        ),
        body: RefreshIndicator(
          onRefresh: () async {
            commutesBloc.add(const CommutesEvent.started());
          },
          child: BlocConsumer<CommutesBloc, CommutesState>(
            listener: (context, state) {
              PopLoading.dismiss();
              state.whenOrNull(
                deleteCommuteLoading: () {
                  PopLoading.show();
                },
                deleteFailure: (error) {
                  AppSnackBar.show(
                    title: language.failure,
                    msg: error,
                    type: ContentType.failure,
                    context: context,
                  );
                },
                deleteSuccess: () {
                  AppSnackBar.show(
                    title: language.success,
                    msg: language.commute_deleted_successfully,
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
                empty: () => EmptyView(
                  text: language.no_commutes_found,
                  icon: Icons.route_outlined,
                ),
                orElse: () {
                  return ListView.builder(
                    padding: EdgeInsets.all(10.w),
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
                        AppRouter.push(
                          context: context,
                          page: Pages.oneCommute,
                          arguments: commutesBloc.commutes[index],
                        );
                      },
                    ),
                    itemCount: commutesBloc.commutes.length,
                  );
                },
              );
            },
          ),
        ),
      ),
    );
  }
}
