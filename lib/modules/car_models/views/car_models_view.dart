import 'package:commuter_driver/core/widgets/empty_view.dart';
import 'package:commuter_driver/core/widgets/error_view.dart';
import 'package:commuter_driver/core/widgets/loading_view.dart';
import 'package:commuter_driver/modules/car_models/controllers/car_models/car_models_cubit.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../core/localization/generated/l10n.dart';
import '../../../core/themes/app_theme_controller.dart';

class CarModelsView extends StatelessWidget {
  const CarModelsView({super.key, required this.makeId});
  final int makeId;

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => CarModelsCubit()..getModels(makeId),
      child: const _CarModelsBody(),
    );
  }
}

class _CarModelsBody extends StatelessWidget {
  const _CarModelsBody();

  @override
  Widget build(BuildContext context) {
    final Language language = Language.of(context);
    return BlocBuilder<CarModelsCubit, CarModelsState>(
      builder: (context, state) {
        return state.when(
          loading: () => const Center(child: LoadingView()),
          success: (data) => Column(
            children: [
              Padding(
                padding: EdgeInsets.all(5.w),
                child: TextFormField(
                  decoration: InputDecoration(
                    contentPadding: const EdgeInsets.symmetric(vertical: 0),
                    prefixIcon: const Icon(CupertinoIcons.search),
                    hintText: language.search,
                    filled: true,
                    fillColor: ColorManger.textFormbBackground,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(10.r)),
                      borderSide: BorderSide.none,
                    ),
                  ),
                ),
              ),
              Expanded(
                child: ListView.separated(
                  separatorBuilder: (context, index) => const Divider(),
                  itemCount: data.length,
                  itemBuilder: (context, index) => RadioListTile(
                    value: data[index].modelId,
                    groupValue: '',
                    title: Text(
                      data[index].modelName,
                      style: TextStyles.tsP10B,
                    ),
                    subtitle: Text(
                      '${data[index].makeName} - Car ID : ${data[index].modelId}',
                    ),
                    onChanged: (value) {},
                  ),
                ),
              ),
            ],
          ),
          failure: () => const Center(child: ErrorView()),
          empty: () => const Center(
            child: EmptyView(
              icon: Icons.car_crash,
              text: 'No car models found',
            ),
          ),
        );
      },
    );
  }
}
