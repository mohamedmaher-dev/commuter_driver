import 'package:bloc/bloc.dart';
import 'package:commuter_driver/core/routes/app_route.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'nav_bar_event.dart';
part 'nav_bar_state.dart';
part 'nav_bar_bloc.freezed.dart';

class NavBarBloc extends Bloc<NavBarEvent, NavBarState> {
  Pages currentPage = Pages.commutes;
  GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();
  NavBarBloc() : super(const _Initial()) {
    on<NavBarEvent>((event, emit) {
      event.when(
        started: () {},
        changePage: (Pages newPage) {
          currentPage = newPage;
          emit(Refresh(state.hashCode));
        },
      );
    });
  }
}
