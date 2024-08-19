import 'package:bloc/bloc.dart';
import 'package:commuter_driver/core/bloc/main_bloc.dart';
import 'package:commuter_driver/modules/splash/data/rebos/splash_rebo.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../core/local_storage/local_storage_result.dart';
import '../../../../core/local_storage/models/user_secret_data_model.dart';
part 'splash_event.dart';
part 'splash_state.dart';
part 'splash_bloc.freezed.dart';

class SplashBloc extends Bloc<SplashEvent, SplashState> {
  final MainBloc _mainBloc;
  final SplashRebo _splashRebo;
  late bool permissionIsGranted;
  UserSecretDataModel? _userSecretDataModel;
  SplashBloc(this._splashRebo, this._mainBloc) : super(const _Initial()) {
    on<SplashEvent>(
      (event, emit) async {
        await event.when(
          started: () async {
            permissionIsGranted = await _splashRebo.checkLocationPermission();
            if (permissionIsGranted) {
              await _checkIsLoginMethod(emit);
            } else {
              emit(const SplashState.noPermission());
            }
          },
          login: () async {
            await _signInMethod(emit);
          },
        );
      },
    );
  }

  Future<void> _signInMethod(
    Emitter<SplashState> emit,
  ) async {
    final loginResult = await _splashRebo.signIn();
    await loginResult.when(
      success: (data) async {
        final saveUserSecretDataResult = await _splashRebo.saveUserAuthInfo(
          email: data.userData.email,
          password: _userSecretDataModel!.password,
          id: data.userData.id,
          token: data.token,
        );
        saveUserSecretDataResult.when(
          success: (result) {
            _mainBloc.userSecretDataModel = result!;

            emit(const SplashState.loginSuccess());
          },
          failure: (error) {
            emit(SplashState.failure(code: 0, error: error));
          },
        );
      },
      failure: (apiErrorModel) {
        emit(SplashState.failure(
            error: apiErrorModel.msg, code: apiErrorModel.code));
      },
    );
  }

  Future<void> _checkIsLoginMethod(Emitter<SplashState> emit) async {
    final LocalStorageResult<UserSecretDataModel?> isLoginResult =
        await _splashRebo.isLogin();
    isLoginResult.when(
      success: (result) {
        if (result != null) {
          _userSecretDataModel = result;
          emit(const SplashState.isLogin());
        } else {
          emit(const SplashState.notLogin());
        }
      },
      failure: (error) {
        emit(SplashState.failure(error: error, code: 0));
      },
    );
  }
}
