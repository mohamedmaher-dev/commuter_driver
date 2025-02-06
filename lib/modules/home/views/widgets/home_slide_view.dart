import 'package:commuter_driver/modules/app_map/view/app_map_view.dart';
import 'package:commuter_driver/modules/home/controllers/home_slide_panel/home_slide_panel_cubit.dart';
import 'package:commuter_driver/modules/home/views/widgets/home_app_bar_view.dart';
import 'package:commuter_driver/modules/home/views/widgets/home_my_commutes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:sliding_up_panel/sliding_up_panel.dart';
import '../../../../core/themes/app_theme_controller.dart';

class HomeSlideView extends StatefulWidget {
  const HomeSlideView({super.key});

  @override
  State<HomeSlideView> createState() => _HomeSlideViewState();
}

class _HomeSlideViewState extends State<HomeSlideView>
    with TickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    final homeSlidePanelCubit = BlocProvider.of<HomeSlidePanelCubit>(context);
    return BlocBuilder<HomeSlidePanelCubit, HomeSlidePanelState>(
      builder: (context, state) {
        return SlidingUpPanel(
          defaultPanelState: PanelState.CLOSED,
          maxHeight: MediaQuery.of(context).size.height / 2,
          body: Stack(
            children: [
              Transform.translate(
                offset: Offset(
                  0,
                  state.position * -MediaQuery.of(context).size.height / 4,
                ),
                child: const AppMapView(),
              ),
              const HomeAppBarView()
            ],
          ),
          controller: homeSlidePanelCubit.controller,
          isDraggable: false,
          collapsed: Container(
            alignment: Alignment.center,
            width: double.infinity,
            height: 50.w,
            padding: EdgeInsets.all(10.w),
            child: const HomeMyCommutesView(),
          ),
          panelBuilder: (sc) {
            return const SizedBox.shrink();
          },
          onPanelSlide: (newPosition) {
            homeSlidePanelCubit.onPanelSlide(newPosition);
          },
          borderRadius: BorderRadius.vertical(
            top: Radius.circular(20.r),
          ),
          color: ColorManger.background,
        );
      },
    );
  }
}
