// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'splash_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$SplashEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() login,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? login,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? login,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(Login value) login,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(Login value)? login,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(Login value)? login,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SplashEventCopyWith<$Res> {
  factory $SplashEventCopyWith(
          SplashEvent value, $Res Function(SplashEvent) then) =
      _$SplashEventCopyWithImpl<$Res, SplashEvent>;
}

/// @nodoc
class _$SplashEventCopyWithImpl<$Res, $Val extends SplashEvent>
    implements $SplashEventCopyWith<$Res> {
  _$SplashEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$StartedImplCopyWith<$Res> {
  factory _$$StartedImplCopyWith(
          _$StartedImpl value, $Res Function(_$StartedImpl) then) =
      __$$StartedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$StartedImplCopyWithImpl<$Res>
    extends _$SplashEventCopyWithImpl<$Res, _$StartedImpl>
    implements _$$StartedImplCopyWith<$Res> {
  __$$StartedImplCopyWithImpl(
      _$StartedImpl _value, $Res Function(_$StartedImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$StartedImpl implements _Started {
  const _$StartedImpl();

  @override
  String toString() {
    return 'SplashEvent.started()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$StartedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() login,
  }) {
    return started();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? login,
  }) {
    return started?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? login,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(Login value) login,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(Login value)? login,
  }) {
    return started?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(Login value)? login,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class _Started implements SplashEvent {
  const factory _Started() = _$StartedImpl;
}

/// @nodoc
abstract class _$$LoginImplCopyWith<$Res> {
  factory _$$LoginImplCopyWith(
          _$LoginImpl value, $Res Function(_$LoginImpl) then) =
      __$$LoginImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoginImplCopyWithImpl<$Res>
    extends _$SplashEventCopyWithImpl<$Res, _$LoginImpl>
    implements _$$LoginImplCopyWith<$Res> {
  __$$LoginImplCopyWithImpl(
      _$LoginImpl _value, $Res Function(_$LoginImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$LoginImpl implements Login {
  const _$LoginImpl();

  @override
  String toString() {
    return 'SplashEvent.login()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LoginImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() login,
  }) {
    return login();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? login,
  }) {
    return login?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? login,
    required TResult orElse(),
  }) {
    if (login != null) {
      return login();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(Login value) login,
  }) {
    return login(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(Login value)? login,
  }) {
    return login?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(Login value)? login,
    required TResult orElse(),
  }) {
    if (login != null) {
      return login(this);
    }
    return orElse();
  }
}

abstract class Login implements SplashEvent {
  const factory Login() = _$LoginImpl;
}

/// @nodoc
mixin _$SplashState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() isLogin,
    required TResult Function() notLogin,
    required TResult Function() loginSuccess,
    required TResult Function() noPermission,
    required TResult Function(String error, int code) failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? isLogin,
    TResult? Function()? notLogin,
    TResult? Function()? loginSuccess,
    TResult? Function()? noPermission,
    TResult? Function(String error, int code)? failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? isLogin,
    TResult Function()? notLogin,
    TResult Function()? loginSuccess,
    TResult Function()? noPermission,
    TResult Function(String error, int code)? failure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(IsLogin value) isLogin,
    required TResult Function(NotLogin value) notLogin,
    required TResult Function(LoginSuccess value) loginSuccess,
    required TResult Function(NoPermission value) noPermission,
    required TResult Function(Failure value) failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(IsLogin value)? isLogin,
    TResult? Function(NotLogin value)? notLogin,
    TResult? Function(LoginSuccess value)? loginSuccess,
    TResult? Function(NoPermission value)? noPermission,
    TResult? Function(Failure value)? failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(IsLogin value)? isLogin,
    TResult Function(NotLogin value)? notLogin,
    TResult Function(LoginSuccess value)? loginSuccess,
    TResult Function(NoPermission value)? noPermission,
    TResult Function(Failure value)? failure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SplashStateCopyWith<$Res> {
  factory $SplashStateCopyWith(
          SplashState value, $Res Function(SplashState) then) =
      _$SplashStateCopyWithImpl<$Res, SplashState>;
}

/// @nodoc
class _$SplashStateCopyWithImpl<$Res, $Val extends SplashState>
    implements $SplashStateCopyWith<$Res> {
  _$SplashStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$InitialImplCopyWith<$Res> {
  factory _$$InitialImplCopyWith(
          _$InitialImpl value, $Res Function(_$InitialImpl) then) =
      __$$InitialImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$InitialImplCopyWithImpl<$Res>
    extends _$SplashStateCopyWithImpl<$Res, _$InitialImpl>
    implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(
      _$InitialImpl _value, $Res Function(_$InitialImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$InitialImpl implements _Initial {
  const _$InitialImpl();

  @override
  String toString() {
    return 'SplashState.initial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$InitialImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() isLogin,
    required TResult Function() notLogin,
    required TResult Function() loginSuccess,
    required TResult Function() noPermission,
    required TResult Function(String error, int code) failure,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? isLogin,
    TResult? Function()? notLogin,
    TResult? Function()? loginSuccess,
    TResult? Function()? noPermission,
    TResult? Function(String error, int code)? failure,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? isLogin,
    TResult Function()? notLogin,
    TResult Function()? loginSuccess,
    TResult Function()? noPermission,
    TResult Function(String error, int code)? failure,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(IsLogin value) isLogin,
    required TResult Function(NotLogin value) notLogin,
    required TResult Function(LoginSuccess value) loginSuccess,
    required TResult Function(NoPermission value) noPermission,
    required TResult Function(Failure value) failure,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(IsLogin value)? isLogin,
    TResult? Function(NotLogin value)? notLogin,
    TResult? Function(LoginSuccess value)? loginSuccess,
    TResult? Function(NoPermission value)? noPermission,
    TResult? Function(Failure value)? failure,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(IsLogin value)? isLogin,
    TResult Function(NotLogin value)? notLogin,
    TResult Function(LoginSuccess value)? loginSuccess,
    TResult Function(NoPermission value)? noPermission,
    TResult Function(Failure value)? failure,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements SplashState {
  const factory _Initial() = _$InitialImpl;
}

/// @nodoc
abstract class _$$IsLoginImplCopyWith<$Res> {
  factory _$$IsLoginImplCopyWith(
          _$IsLoginImpl value, $Res Function(_$IsLoginImpl) then) =
      __$$IsLoginImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$IsLoginImplCopyWithImpl<$Res>
    extends _$SplashStateCopyWithImpl<$Res, _$IsLoginImpl>
    implements _$$IsLoginImplCopyWith<$Res> {
  __$$IsLoginImplCopyWithImpl(
      _$IsLoginImpl _value, $Res Function(_$IsLoginImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$IsLoginImpl implements IsLogin {
  const _$IsLoginImpl();

  @override
  String toString() {
    return 'SplashState.isLogin()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$IsLoginImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() isLogin,
    required TResult Function() notLogin,
    required TResult Function() loginSuccess,
    required TResult Function() noPermission,
    required TResult Function(String error, int code) failure,
  }) {
    return isLogin();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? isLogin,
    TResult? Function()? notLogin,
    TResult? Function()? loginSuccess,
    TResult? Function()? noPermission,
    TResult? Function(String error, int code)? failure,
  }) {
    return isLogin?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? isLogin,
    TResult Function()? notLogin,
    TResult Function()? loginSuccess,
    TResult Function()? noPermission,
    TResult Function(String error, int code)? failure,
    required TResult orElse(),
  }) {
    if (isLogin != null) {
      return isLogin();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(IsLogin value) isLogin,
    required TResult Function(NotLogin value) notLogin,
    required TResult Function(LoginSuccess value) loginSuccess,
    required TResult Function(NoPermission value) noPermission,
    required TResult Function(Failure value) failure,
  }) {
    return isLogin(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(IsLogin value)? isLogin,
    TResult? Function(NotLogin value)? notLogin,
    TResult? Function(LoginSuccess value)? loginSuccess,
    TResult? Function(NoPermission value)? noPermission,
    TResult? Function(Failure value)? failure,
  }) {
    return isLogin?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(IsLogin value)? isLogin,
    TResult Function(NotLogin value)? notLogin,
    TResult Function(LoginSuccess value)? loginSuccess,
    TResult Function(NoPermission value)? noPermission,
    TResult Function(Failure value)? failure,
    required TResult orElse(),
  }) {
    if (isLogin != null) {
      return isLogin(this);
    }
    return orElse();
  }
}

abstract class IsLogin implements SplashState {
  const factory IsLogin() = _$IsLoginImpl;
}

/// @nodoc
abstract class _$$NotLoginImplCopyWith<$Res> {
  factory _$$NotLoginImplCopyWith(
          _$NotLoginImpl value, $Res Function(_$NotLoginImpl) then) =
      __$$NotLoginImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$NotLoginImplCopyWithImpl<$Res>
    extends _$SplashStateCopyWithImpl<$Res, _$NotLoginImpl>
    implements _$$NotLoginImplCopyWith<$Res> {
  __$$NotLoginImplCopyWithImpl(
      _$NotLoginImpl _value, $Res Function(_$NotLoginImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$NotLoginImpl implements NotLogin {
  const _$NotLoginImpl();

  @override
  String toString() {
    return 'SplashState.notLogin()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$NotLoginImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() isLogin,
    required TResult Function() notLogin,
    required TResult Function() loginSuccess,
    required TResult Function() noPermission,
    required TResult Function(String error, int code) failure,
  }) {
    return notLogin();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? isLogin,
    TResult? Function()? notLogin,
    TResult? Function()? loginSuccess,
    TResult? Function()? noPermission,
    TResult? Function(String error, int code)? failure,
  }) {
    return notLogin?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? isLogin,
    TResult Function()? notLogin,
    TResult Function()? loginSuccess,
    TResult Function()? noPermission,
    TResult Function(String error, int code)? failure,
    required TResult orElse(),
  }) {
    if (notLogin != null) {
      return notLogin();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(IsLogin value) isLogin,
    required TResult Function(NotLogin value) notLogin,
    required TResult Function(LoginSuccess value) loginSuccess,
    required TResult Function(NoPermission value) noPermission,
    required TResult Function(Failure value) failure,
  }) {
    return notLogin(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(IsLogin value)? isLogin,
    TResult? Function(NotLogin value)? notLogin,
    TResult? Function(LoginSuccess value)? loginSuccess,
    TResult? Function(NoPermission value)? noPermission,
    TResult? Function(Failure value)? failure,
  }) {
    return notLogin?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(IsLogin value)? isLogin,
    TResult Function(NotLogin value)? notLogin,
    TResult Function(LoginSuccess value)? loginSuccess,
    TResult Function(NoPermission value)? noPermission,
    TResult Function(Failure value)? failure,
    required TResult orElse(),
  }) {
    if (notLogin != null) {
      return notLogin(this);
    }
    return orElse();
  }
}

abstract class NotLogin implements SplashState {
  const factory NotLogin() = _$NotLoginImpl;
}

/// @nodoc
abstract class _$$LoginSuccessImplCopyWith<$Res> {
  factory _$$LoginSuccessImplCopyWith(
          _$LoginSuccessImpl value, $Res Function(_$LoginSuccessImpl) then) =
      __$$LoginSuccessImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoginSuccessImplCopyWithImpl<$Res>
    extends _$SplashStateCopyWithImpl<$Res, _$LoginSuccessImpl>
    implements _$$LoginSuccessImplCopyWith<$Res> {
  __$$LoginSuccessImplCopyWithImpl(
      _$LoginSuccessImpl _value, $Res Function(_$LoginSuccessImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$LoginSuccessImpl implements LoginSuccess {
  const _$LoginSuccessImpl();

  @override
  String toString() {
    return 'SplashState.loginSuccess()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LoginSuccessImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() isLogin,
    required TResult Function() notLogin,
    required TResult Function() loginSuccess,
    required TResult Function() noPermission,
    required TResult Function(String error, int code) failure,
  }) {
    return loginSuccess();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? isLogin,
    TResult? Function()? notLogin,
    TResult? Function()? loginSuccess,
    TResult? Function()? noPermission,
    TResult? Function(String error, int code)? failure,
  }) {
    return loginSuccess?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? isLogin,
    TResult Function()? notLogin,
    TResult Function()? loginSuccess,
    TResult Function()? noPermission,
    TResult Function(String error, int code)? failure,
    required TResult orElse(),
  }) {
    if (loginSuccess != null) {
      return loginSuccess();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(IsLogin value) isLogin,
    required TResult Function(NotLogin value) notLogin,
    required TResult Function(LoginSuccess value) loginSuccess,
    required TResult Function(NoPermission value) noPermission,
    required TResult Function(Failure value) failure,
  }) {
    return loginSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(IsLogin value)? isLogin,
    TResult? Function(NotLogin value)? notLogin,
    TResult? Function(LoginSuccess value)? loginSuccess,
    TResult? Function(NoPermission value)? noPermission,
    TResult? Function(Failure value)? failure,
  }) {
    return loginSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(IsLogin value)? isLogin,
    TResult Function(NotLogin value)? notLogin,
    TResult Function(LoginSuccess value)? loginSuccess,
    TResult Function(NoPermission value)? noPermission,
    TResult Function(Failure value)? failure,
    required TResult orElse(),
  }) {
    if (loginSuccess != null) {
      return loginSuccess(this);
    }
    return orElse();
  }
}

abstract class LoginSuccess implements SplashState {
  const factory LoginSuccess() = _$LoginSuccessImpl;
}

/// @nodoc
abstract class _$$NoPermissionImplCopyWith<$Res> {
  factory _$$NoPermissionImplCopyWith(
          _$NoPermissionImpl value, $Res Function(_$NoPermissionImpl) then) =
      __$$NoPermissionImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$NoPermissionImplCopyWithImpl<$Res>
    extends _$SplashStateCopyWithImpl<$Res, _$NoPermissionImpl>
    implements _$$NoPermissionImplCopyWith<$Res> {
  __$$NoPermissionImplCopyWithImpl(
      _$NoPermissionImpl _value, $Res Function(_$NoPermissionImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$NoPermissionImpl implements NoPermission {
  const _$NoPermissionImpl();

  @override
  String toString() {
    return 'SplashState.noPermission()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$NoPermissionImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() isLogin,
    required TResult Function() notLogin,
    required TResult Function() loginSuccess,
    required TResult Function() noPermission,
    required TResult Function(String error, int code) failure,
  }) {
    return noPermission();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? isLogin,
    TResult? Function()? notLogin,
    TResult? Function()? loginSuccess,
    TResult? Function()? noPermission,
    TResult? Function(String error, int code)? failure,
  }) {
    return noPermission?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? isLogin,
    TResult Function()? notLogin,
    TResult Function()? loginSuccess,
    TResult Function()? noPermission,
    TResult Function(String error, int code)? failure,
    required TResult orElse(),
  }) {
    if (noPermission != null) {
      return noPermission();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(IsLogin value) isLogin,
    required TResult Function(NotLogin value) notLogin,
    required TResult Function(LoginSuccess value) loginSuccess,
    required TResult Function(NoPermission value) noPermission,
    required TResult Function(Failure value) failure,
  }) {
    return noPermission(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(IsLogin value)? isLogin,
    TResult? Function(NotLogin value)? notLogin,
    TResult? Function(LoginSuccess value)? loginSuccess,
    TResult? Function(NoPermission value)? noPermission,
    TResult? Function(Failure value)? failure,
  }) {
    return noPermission?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(IsLogin value)? isLogin,
    TResult Function(NotLogin value)? notLogin,
    TResult Function(LoginSuccess value)? loginSuccess,
    TResult Function(NoPermission value)? noPermission,
    TResult Function(Failure value)? failure,
    required TResult orElse(),
  }) {
    if (noPermission != null) {
      return noPermission(this);
    }
    return orElse();
  }
}

abstract class NoPermission implements SplashState {
  const factory NoPermission() = _$NoPermissionImpl;
}

/// @nodoc
abstract class _$$FailureImplCopyWith<$Res> {
  factory _$$FailureImplCopyWith(
          _$FailureImpl value, $Res Function(_$FailureImpl) then) =
      __$$FailureImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String error, int code});
}

/// @nodoc
class __$$FailureImplCopyWithImpl<$Res>
    extends _$SplashStateCopyWithImpl<$Res, _$FailureImpl>
    implements _$$FailureImplCopyWith<$Res> {
  __$$FailureImplCopyWithImpl(
      _$FailureImpl _value, $Res Function(_$FailureImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = null,
    Object? code = null,
  }) {
    return _then(_$FailureImpl(
      error: null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String,
      code: null == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$FailureImpl implements Failure {
  const _$FailureImpl({required this.error, required this.code});

  @override
  final String error;
  @override
  final int code;

  @override
  String toString() {
    return 'SplashState.failure(error: $error, code: $code)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FailureImpl &&
            (identical(other.error, error) || other.error == error) &&
            (identical(other.code, code) || other.code == code));
  }

  @override
  int get hashCode => Object.hash(runtimeType, error, code);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FailureImplCopyWith<_$FailureImpl> get copyWith =>
      __$$FailureImplCopyWithImpl<_$FailureImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() isLogin,
    required TResult Function() notLogin,
    required TResult Function() loginSuccess,
    required TResult Function() noPermission,
    required TResult Function(String error, int code) failure,
  }) {
    return failure(error, code);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? isLogin,
    TResult? Function()? notLogin,
    TResult? Function()? loginSuccess,
    TResult? Function()? noPermission,
    TResult? Function(String error, int code)? failure,
  }) {
    return failure?.call(error, code);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? isLogin,
    TResult Function()? notLogin,
    TResult Function()? loginSuccess,
    TResult Function()? noPermission,
    TResult Function(String error, int code)? failure,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(error, code);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(IsLogin value) isLogin,
    required TResult Function(NotLogin value) notLogin,
    required TResult Function(LoginSuccess value) loginSuccess,
    required TResult Function(NoPermission value) noPermission,
    required TResult Function(Failure value) failure,
  }) {
    return failure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(IsLogin value)? isLogin,
    TResult? Function(NotLogin value)? notLogin,
    TResult? Function(LoginSuccess value)? loginSuccess,
    TResult? Function(NoPermission value)? noPermission,
    TResult? Function(Failure value)? failure,
  }) {
    return failure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(IsLogin value)? isLogin,
    TResult Function(NotLogin value)? notLogin,
    TResult Function(LoginSuccess value)? loginSuccess,
    TResult Function(NoPermission value)? noPermission,
    TResult Function(Failure value)? failure,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(this);
    }
    return orElse();
  }
}

abstract class Failure implements SplashState {
  const factory Failure(
      {required final String error, required final int code}) = _$FailureImpl;

  String get error;
  int get code;
  @JsonKey(ignore: true)
  _$$FailureImplCopyWith<_$FailureImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
