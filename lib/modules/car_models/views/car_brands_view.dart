import 'package:cached_network_image/cached_network_image.dart';
import 'package:commuter_driver/modules/car_models/controllers/car_brands/car_brands_cubit.dart';
import 'package:commuter_driver/modules/car_models/views/car_models_view.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../core/localization/generated/l10n.dart';
import '../../../core/themes/app_theme_controller.dart';
import '../../../core/widgets/empty_view.dart';
import '../../../core/widgets/error_view.dart';
import '../../../core/widgets/loading_view.dart';

class CarBrandsView extends StatelessWidget {
  const CarBrandsView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => CarBrandsCubit()..getMakes(),
      child: const _CarBrandsBody(),
    );
  }
}

class _CarBrandsBody extends StatelessWidget {
  const _CarBrandsBody();

  @override
  Widget build(BuildContext context) {
    final Language language = Language.of(context);
    return BlocBuilder<CarBrandsCubit, CarBrandsState>(
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
                  itemBuilder: (context, index) => ListTile(
                    leading: Container(
                      width: 50.w,
                      height: 50.w,
                      padding: EdgeInsets.all(5.w),
                      decoration: const BoxDecoration(
                        color: ColorManger.white,
                        shape: BoxShape.circle,
                      ),
                      child: CachedNetworkImage(
                        errorWidget: (context, url, error) => const Icon(
                          CupertinoIcons.car_detailed,
                          color: ColorManger.black,
                        ),
                        imageUrl:
                            'https://www.carlogos.org/car-logos/${data[index].makeName.toLowerCase()}-logo.png',
                      ),
                    ),
                    title: Text(
                      data[index].makeName,
                      style: TextStyles.tsP10B,
                    ),
                    subtitle: Text("Brand ID : ${data[index].makeId}"),
                    trailing: const Icon(Icons.arrow_forward_ios),
                    onTap: () {
                      showModalBottomSheet(
                        context: context,
                        builder: (context) =>
                            CarModelsView(makeId: data[index].makeId),
                      );
                    },
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
