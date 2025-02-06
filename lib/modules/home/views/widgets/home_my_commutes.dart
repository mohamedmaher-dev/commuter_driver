import 'package:commuter_driver/core/routes/app_route.dart';
import 'package:commuter_driver/core/widgets/loading_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../core/themes/app_theme_controller.dart';
import '../../../commutes/my_commutes/controllers/commutes_bloc/commutes_bloc.dart';
import '../../../commutes/my_commutes/data/models/get_commutes_response_model.dart';

class HomeMyCommutesView extends StatelessWidget {
  const HomeMyCommutesView({super.key});

  @override
  Widget build(BuildContext context) {
    return const _HomeMyCommutesBody();
  }
}

class _HomeMyCommutesBody extends StatelessWidget {
  const _HomeMyCommutesBody();

  @override
  Widget build(BuildContext context) {
    final bloc = BlocProvider.of<CommutesBloc>(context);
    return BlocBuilder<CommutesBloc, CommutesState>(
      builder: (context, state) {
        return state.maybeWhen(
          getCommuteLoading: () => const LoadingView(),
          initial: () => const LoadingView(),
          orElse: () => ListView.builder(
            shrinkWrap: true,
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) => MyCommuteChip(
              commuteModel: bloc.commutes[index],
            ),
            itemCount: bloc.commutes.length,
          ),
        );
      },
    );
  }
}

class MyCommuteChip extends StatelessWidget {
  const MyCommuteChip({super.key, required this.commuteModel, this.color});
  final CommuteModel commuteModel;
  final Color? color;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 5.w),
      child: ActionChip(
        onPressed: () async {
          await AppRouter.push(
            context: context,
            page: Pages.oneCommute,
            arguments: commuteModel,
          );
          // ignore: use_build_context_synchronously
          BlocProvider.of<CommutesBloc>(context)
              .add(const CommutesEvent.started());
        },
        color: const MaterialStatePropertyAll(ColorManger.myGold),
        side: const BorderSide(color: ColorManger.myBlue),
        avatar: const Icon(Icons.route_outlined, color: ColorManger.myBlue),
        labelStyle: const TextStyle(
          color: ColorManger.myBlue,
          fontWeight: FontWeight.bold,
        ),
        label: Text(commuteModel.commuteName),
      ),
    );
  }
}
