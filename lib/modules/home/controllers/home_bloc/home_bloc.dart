import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'home_event.dart';
part 'home_state.dart';
part 'home_bloc.freezed.dart';

class HomeBloc extends Bloc<HomeEvent, HomeState> {
  PageController pageController = PageController(initialPage: 0);
  int currentPage = 0;
  HomeBloc() : super(const _Initial()) {
    on<HomeEvent>((event, emit) async {
      await event.when(
        started: () {},
        changePage: (newPage) async {
          currentPage = newPage;
          pageController.jumpToPage(currentPage);
          emit(HomeState.refresh(state.hashCode));
        },
        swipePage: (newPage) async {
          currentPage = newPage;
          await pageController.animateToPage(
            currentPage,
            curve: Curves.linear,
            duration: const Duration(
              milliseconds: 250,
            ),
          );
          emit(HomeState.refresh(state.hashCode));
        },
      );
    });
  }
}
