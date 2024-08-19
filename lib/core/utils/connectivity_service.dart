import 'package:commuter_driver/core/bloc/main_bloc.dart';
import 'package:connectivity_plus/connectivity_plus.dart';

class ConnectivityService {
  final MainBloc _mainBloc;
  final Connectivity _connectivity = Connectivity();
  ConnectivityService(this._mainBloc) {
    _connectivity.onConnectivityChanged.listen(
      (event) {
        if (event.first == ConnectivityResult.none) {
          _mainBloc.add(const MainEvent.changeConnectivity(false));
        } else {
          _mainBloc.add(const MainEvent.changeConnectivity(true));
        }
      },
    );
  }
}
