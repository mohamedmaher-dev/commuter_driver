import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'home_slide_tabs_state.dart';
part 'home_slide_tabs_cubit.freezed.dart';

class HomeSlideTabsCubit extends Cubit<HomeSlideTabsState> {
  HomeSlideTabsCubit()
      : super(HomeSlideTabsState.changeTab(HomeSlideTabs.approvedJoin));
  void changeTab(HomeSlideTabs tab) {
    emit(HomeSlideTabsState.changeTab(tab));
  }
}

enum HomeSlideTabs { approvedJoin, contracts, requests }
