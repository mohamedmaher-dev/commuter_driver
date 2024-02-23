import 'package:bloc/bloc.dart';
import 'package:commuter_driver/core/bloc/main_bloc.dart';
import 'package:commuter_driver/core/local_storage/models/user_data_model.dart';
import 'package:commuter_driver/modules/splash/data/rebos/splash_rebo.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'splash_event.dart';
part 'splash_state.dart';
part 'splash_bloc.freezed.dart';

class SplashBloc extends Bloc<SplashEvent, SplashState> {
  final MainBloc _mainBloc;
  final SplashRebo _splashRebo;
  late UserDataModel _userDataModel;
  SplashBloc(this._splashRebo, this._mainBloc) : super(const _Initial()) {
    on<SplashEvent>(
      (event, emit) async {
        await event.when(
          started: () async {
            final isLoginResult = await _splashRebo.isLogin();
            isLoginResult.when(
              success: (result) {
                if (result == true) {
                  emit(const SplashState.isLogin());
                } else {
                  emit(const SplashState.notLogin());
                }
              },
              failure: (error) {
                emit(SplashState.failure(error: error, code: 0));
              },
            );
          },
          login: () async {
            final loginResult = await _splashRebo.signIn();
            loginResult.when(
              success: (data) {
                _userDataModel = UserDataModel(
                  isLogin: true,
                  userID: data.userData.id,
                  name: data.userData.name,
                  email: data.userData.email,
                  token: data.token,
                );
                _mainBloc.userDataModel = _userDataModel;
                _splashRebo.saveUserAuthInfo(userDataModel: _userDataModel);
                emit(const SplashState.loginSuccess());
              },
              failure: (apiErrorModel) {
                emit(SplashState.failure(
                    error: apiErrorModel.msg, code: apiErrorModel.code));
              },
            );
          },
        );
      },
    );
  }
}
