import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'one_commute_tab_state.dart';
part 'one_commute_tab_cubit.freezed.dart';

class OneCommuteTabCubit extends Cubit<OneCommuteTabState> {
  OneCommuteGeneralTabs currentGeneralTab = OneCommuteGeneralTabs.commute;
  RequestTabs currentRequestTab = RequestTabs.online;
  OneCommuteTabCubit() : super(const OneCommuteTabState.initial(0));
  changeGeneralTab(OneCommuteGeneralTabs tab) {
    currentGeneralTab = tab;
    emit(OneCommuteTabState.initial(state.hashCode));
  }

  changeRequestTab(RequestTabs tab) {
    currentRequestTab = tab;
    emit(OneCommuteTabState.initial(state.hashCode));
  }
}

enum OneCommuteGeneralTabs {
  commute,
  aprovedJoin,
  requests,
  contracts,
}

enum RequestTabs {
  online,
  upcoming,
  offline,
}
