// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'main_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$MainEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(Locale locale) changeLanguage,
    required TResult Function() changeTheme,
    required TResult Function(bool isConnected) changeConnectivity,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(Locale locale)? changeLanguage,
    TResult? Function()? changeTheme,
    TResult? Function(bool isConnected)? changeConnectivity,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(Locale locale)? changeLanguage,
    TResult Function()? changeTheme,
    TResult Function(bool isConnected)? changeConnectivity,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(ChangeLanguage value) changeLanguage,
    required TResult Function(ChangeTheme value) changeTheme,
    required TResult Function(ChangeConnectivity value) changeConnectivity,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(ChangeLanguage value)? changeLanguage,
    TResult? Function(ChangeTheme value)? changeTheme,
    TResult? Function(ChangeConnectivity value)? changeConnectivity,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(ChangeLanguage value)? changeLanguage,
    TResult Function(ChangeTheme value)? changeTheme,
    TResult Function(ChangeConnectivity value)? changeConnectivity,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MainEventCopyWith<$Res> {
  factory $MainEventCopyWith(MainEvent value, $Res Function(MainEvent) then) =
      _$MainEventCopyWithImpl<$Res, MainEvent>;
}

/// @nodoc
class _$MainEventCopyWithImpl<$Res, $Val extends MainEvent>
    implements $MainEventCopyWith<$Res> {
  _$MainEventCopyWithImpl(this._value, this._then);

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
    extends _$MainEventCopyWithImpl<$Res, _$StartedImpl>
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
    return 'MainEvent.started()';
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
    required TResult Function(Locale locale) changeLanguage,
    required TResult Function() changeTheme,
    required TResult Function(bool isConnected) changeConnectivity,
  }) {
    return started();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(Locale locale)? changeLanguage,
    TResult? Function()? changeTheme,
    TResult? Function(bool isConnected)? changeConnectivity,
  }) {
    return started?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(Locale locale)? changeLanguage,
    TResult Function()? changeTheme,
    TResult Function(bool isConnected)? changeConnectivity,
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
    required TResult Function(ChangeLanguage value) changeLanguage,
    required TResult Function(ChangeTheme value) changeTheme,
    required TResult Function(ChangeConnectivity value) changeConnectivity,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(ChangeLanguage value)? changeLanguage,
    TResult? Function(ChangeTheme value)? changeTheme,
    TResult? Function(ChangeConnectivity value)? changeConnectivity,
  }) {
    return started?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(ChangeLanguage value)? changeLanguage,
    TResult Function(ChangeTheme value)? changeTheme,
    TResult Function(ChangeConnectivity value)? changeConnectivity,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class _Started implements MainEvent {
  const factory _Started() = _$StartedImpl;
}

/// @nodoc
abstract class _$$ChangeLanguageImplCopyWith<$Res> {
  factory _$$ChangeLanguageImplCopyWith(_$ChangeLanguageImpl value,
          $Res Function(_$ChangeLanguageImpl) then) =
      __$$ChangeLanguageImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Locale locale});
}

/// @nodoc
class __$$ChangeLanguageImplCopyWithImpl<$Res>
    extends _$MainEventCopyWithImpl<$Res, _$ChangeLanguageImpl>
    implements _$$ChangeLanguageImplCopyWith<$Res> {
  __$$ChangeLanguageImplCopyWithImpl(
      _$ChangeLanguageImpl _value, $Res Function(_$ChangeLanguageImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? locale = null,
  }) {
    return _then(_$ChangeLanguageImpl(
      null == locale
          ? _value.locale
          : locale // ignore: cast_nullable_to_non_nullable
              as Locale,
    ));
  }
}

/// @nodoc

class _$ChangeLanguageImpl implements ChangeLanguage {
  const _$ChangeLanguageImpl(this.locale);

  @override
  final Locale locale;

  @override
  String toString() {
    return 'MainEvent.changeLanguage(locale: $locale)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChangeLanguageImpl &&
            (identical(other.locale, locale) || other.locale == locale));
  }

  @override
  int get hashCode => Object.hash(runtimeType, locale);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ChangeLanguageImplCopyWith<_$ChangeLanguageImpl> get copyWith =>
      __$$ChangeLanguageImplCopyWithImpl<_$ChangeLanguageImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(Locale locale) changeLanguage,
    required TResult Function() changeTheme,
    required TResult Function(bool isConnected) changeConnectivity,
  }) {
    return changeLanguage(locale);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(Locale locale)? changeLanguage,
    TResult? Function()? changeTheme,
    TResult? Function(bool isConnected)? changeConnectivity,
  }) {
    return changeLanguage?.call(locale);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(Locale locale)? changeLanguage,
    TResult Function()? changeTheme,
    TResult Function(bool isConnected)? changeConnectivity,
    required TResult orElse(),
  }) {
    if (changeLanguage != null) {
      return changeLanguage(locale);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(ChangeLanguage value) changeLanguage,
    required TResult Function(ChangeTheme value) changeTheme,
    required TResult Function(ChangeConnectivity value) changeConnectivity,
  }) {
    return changeLanguage(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(ChangeLanguage value)? changeLanguage,
    TResult? Function(ChangeTheme value)? changeTheme,
    TResult? Function(ChangeConnectivity value)? changeConnectivity,
  }) {
    return changeLanguage?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(ChangeLanguage value)? changeLanguage,
    TResult Function(ChangeTheme value)? changeTheme,
    TResult Function(ChangeConnectivity value)? changeConnectivity,
    required TResult orElse(),
  }) {
    if (changeLanguage != null) {
      return changeLanguage(this);
    }
    return orElse();
  }
}

abstract class ChangeLanguage implements MainEvent {
  const factory ChangeLanguage(final Locale locale) = _$ChangeLanguageImpl;

  Locale get locale;
  @JsonKey(ignore: true)
  _$$ChangeLanguageImplCopyWith<_$ChangeLanguageImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ChangeThemeImplCopyWith<$Res> {
  factory _$$ChangeThemeImplCopyWith(
          _$ChangeThemeImpl value, $Res Function(_$ChangeThemeImpl) then) =
      __$$ChangeThemeImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ChangeThemeImplCopyWithImpl<$Res>
    extends _$MainEventCopyWithImpl<$Res, _$ChangeThemeImpl>
    implements _$$ChangeThemeImplCopyWith<$Res> {
  __$$ChangeThemeImplCopyWithImpl(
      _$ChangeThemeImpl _value, $Res Function(_$ChangeThemeImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$ChangeThemeImpl implements ChangeTheme {
  const _$ChangeThemeImpl();

  @override
  String toString() {
    return 'MainEvent.changeTheme()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ChangeThemeImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(Locale locale) changeLanguage,
    required TResult Function() changeTheme,
    required TResult Function(bool isConnected) changeConnectivity,
  }) {
    return changeTheme();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(Locale locale)? changeLanguage,
    TResult? Function()? changeTheme,
    TResult? Function(bool isConnected)? changeConnectivity,
  }) {
    return changeTheme?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(Locale locale)? changeLanguage,
    TResult Function()? changeTheme,
    TResult Function(bool isConnected)? changeConnectivity,
    required TResult orElse(),
  }) {
    if (changeTheme != null) {
      return changeTheme();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(ChangeLanguage value) changeLanguage,
    required TResult Function(ChangeTheme value) changeTheme,
    required TResult Function(ChangeConnectivity value) changeConnectivity,
  }) {
    return changeTheme(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(ChangeLanguage value)? changeLanguage,
    TResult? Function(ChangeTheme value)? changeTheme,
    TResult? Function(ChangeConnectivity value)? changeConnectivity,
  }) {
    return changeTheme?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(ChangeLanguage value)? changeLanguage,
    TResult Function(ChangeTheme value)? changeTheme,
    TResult Function(ChangeConnectivity value)? changeConnectivity,
    required TResult orElse(),
  }) {
    if (changeTheme != null) {
      return changeTheme(this);
    }
    return orElse();
  }
}

abstract class ChangeTheme implements MainEvent {
  const factory ChangeTheme() = _$ChangeThemeImpl;
}

/// @nodoc
abstract class _$$ChangeConnectivityImplCopyWith<$Res> {
  factory _$$ChangeConnectivityImplCopyWith(_$ChangeConnectivityImpl value,
          $Res Function(_$ChangeConnectivityImpl) then) =
      __$$ChangeConnectivityImplCopyWithImpl<$Res>;
  @useResult
  $Res call({bool isConnected});
}

/// @nodoc
class __$$ChangeConnectivityImplCopyWithImpl<$Res>
    extends _$MainEventCopyWithImpl<$Res, _$ChangeConnectivityImpl>
    implements _$$ChangeConnectivityImplCopyWith<$Res> {
  __$$ChangeConnectivityImplCopyWithImpl(_$ChangeConnectivityImpl _value,
      $Res Function(_$ChangeConnectivityImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isConnected = null,
  }) {
    return _then(_$ChangeConnectivityImpl(
      null == isConnected
          ? _value.isConnected
          : isConnected // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$ChangeConnectivityImpl implements ChangeConnectivity {
  const _$ChangeConnectivityImpl(this.isConnected);

  @override
  final bool isConnected;

  @override
  String toString() {
    return 'MainEvent.changeConnectivity(isConnected: $isConnected)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChangeConnectivityImpl &&
            (identical(other.isConnected, isConnected) ||
                other.isConnected == isConnected));
  }

  @override
  int get hashCode => Object.hash(runtimeType, isConnected);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ChangeConnectivityImplCopyWith<_$ChangeConnectivityImpl> get copyWith =>
      __$$ChangeConnectivityImplCopyWithImpl<_$ChangeConnectivityImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(Locale locale) changeLanguage,
    required TResult Function() changeTheme,
    required TResult Function(bool isConnected) changeConnectivity,
  }) {
    return changeConnectivity(isConnected);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(Locale locale)? changeLanguage,
    TResult? Function()? changeTheme,
    TResult? Function(bool isConnected)? changeConnectivity,
  }) {
    return changeConnectivity?.call(isConnected);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(Locale locale)? changeLanguage,
    TResult Function()? changeTheme,
    TResult Function(bool isConnected)? changeConnectivity,
    required TResult orElse(),
  }) {
    if (changeConnectivity != null) {
      return changeConnectivity(isConnected);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(ChangeLanguage value) changeLanguage,
    required TResult Function(ChangeTheme value) changeTheme,
    required TResult Function(ChangeConnectivity value) changeConnectivity,
  }) {
    return changeConnectivity(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(ChangeLanguage value)? changeLanguage,
    TResult? Function(ChangeTheme value)? changeTheme,
    TResult? Function(ChangeConnectivity value)? changeConnectivity,
  }) {
    return changeConnectivity?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(ChangeLanguage value)? changeLanguage,
    TResult Function(ChangeTheme value)? changeTheme,
    TResult Function(ChangeConnectivity value)? changeConnectivity,
    required TResult orElse(),
  }) {
    if (changeConnectivity != null) {
      return changeConnectivity(this);
    }
    return orElse();
  }
}

abstract class ChangeConnectivity implements MainEvent {
  const factory ChangeConnectivity(final bool isConnected) =
      _$ChangeConnectivityImpl;

  bool get isConnected;
  @JsonKey(ignore: true)
  _$$ChangeConnectivityImplCopyWith<_$ChangeConnectivityImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$MainState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(int id) refresh,
    required TResult Function(bool isConnected) newConnection,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(int id)? refresh,
    TResult? Function(bool isConnected)? newConnection,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(int id)? refresh,
    TResult Function(bool isConnected)? newConnection,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(Refresh value) refresh,
    required TResult Function(NewConnection value) newConnection,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(Refresh value)? refresh,
    TResult? Function(NewConnection value)? newConnection,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(Refresh value)? refresh,
    TResult Function(NewConnection value)? newConnection,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MainStateCopyWith<$Res> {
  factory $MainStateCopyWith(MainState value, $Res Function(MainState) then) =
      _$MainStateCopyWithImpl<$Res, MainState>;
}

/// @nodoc
class _$MainStateCopyWithImpl<$Res, $Val extends MainState>
    implements $MainStateCopyWith<$Res> {
  _$MainStateCopyWithImpl(this._value, this._then);

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
    extends _$MainStateCopyWithImpl<$Res, _$InitialImpl>
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
    return 'MainState.initial()';
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
    required TResult Function(int id) refresh,
    required TResult Function(bool isConnected) newConnection,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(int id)? refresh,
    TResult? Function(bool isConnected)? newConnection,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(int id)? refresh,
    TResult Function(bool isConnected)? newConnection,
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
    required TResult Function(Refresh value) refresh,
    required TResult Function(NewConnection value) newConnection,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(Refresh value)? refresh,
    TResult? Function(NewConnection value)? newConnection,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(Refresh value)? refresh,
    TResult Function(NewConnection value)? newConnection,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements MainState {
  const factory _Initial() = _$InitialImpl;
}

/// @nodoc
abstract class _$$RefreshImplCopyWith<$Res> {
  factory _$$RefreshImplCopyWith(
          _$RefreshImpl value, $Res Function(_$RefreshImpl) then) =
      __$$RefreshImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int id});
}

/// @nodoc
class __$$RefreshImplCopyWithImpl<$Res>
    extends _$MainStateCopyWithImpl<$Res, _$RefreshImpl>
    implements _$$RefreshImplCopyWith<$Res> {
  __$$RefreshImplCopyWithImpl(
      _$RefreshImpl _value, $Res Function(_$RefreshImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
  }) {
    return _then(_$RefreshImpl(
      null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$RefreshImpl implements Refresh {
  const _$RefreshImpl(this.id);

  @override
  final int id;

  @override
  String toString() {
    return 'MainState.refresh(id: $id)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RefreshImpl &&
            (identical(other.id, id) || other.id == id));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$RefreshImplCopyWith<_$RefreshImpl> get copyWith =>
      __$$RefreshImplCopyWithImpl<_$RefreshImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(int id) refresh,
    required TResult Function(bool isConnected) newConnection,
  }) {
    return refresh(id);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(int id)? refresh,
    TResult? Function(bool isConnected)? newConnection,
  }) {
    return refresh?.call(id);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(int id)? refresh,
    TResult Function(bool isConnected)? newConnection,
    required TResult orElse(),
  }) {
    if (refresh != null) {
      return refresh(id);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(Refresh value) refresh,
    required TResult Function(NewConnection value) newConnection,
  }) {
    return refresh(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(Refresh value)? refresh,
    TResult? Function(NewConnection value)? newConnection,
  }) {
    return refresh?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(Refresh value)? refresh,
    TResult Function(NewConnection value)? newConnection,
    required TResult orElse(),
  }) {
    if (refresh != null) {
      return refresh(this);
    }
    return orElse();
  }
}

abstract class Refresh implements MainState {
  const factory Refresh(final int id) = _$RefreshImpl;

  int get id;
  @JsonKey(ignore: true)
  _$$RefreshImplCopyWith<_$RefreshImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$NewConnectionImplCopyWith<$Res> {
  factory _$$NewConnectionImplCopyWith(
          _$NewConnectionImpl value, $Res Function(_$NewConnectionImpl) then) =
      __$$NewConnectionImplCopyWithImpl<$Res>;
  @useResult
  $Res call({bool isConnected});
}

/// @nodoc
class __$$NewConnectionImplCopyWithImpl<$Res>
    extends _$MainStateCopyWithImpl<$Res, _$NewConnectionImpl>
    implements _$$NewConnectionImplCopyWith<$Res> {
  __$$NewConnectionImplCopyWithImpl(
      _$NewConnectionImpl _value, $Res Function(_$NewConnectionImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isConnected = null,
  }) {
    return _then(_$NewConnectionImpl(
      null == isConnected
          ? _value.isConnected
          : isConnected // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$NewConnectionImpl implements NewConnection {
  const _$NewConnectionImpl(this.isConnected);

  @override
  final bool isConnected;

  @override
  String toString() {
    return 'MainState.newConnection(isConnected: $isConnected)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NewConnectionImpl &&
            (identical(other.isConnected, isConnected) ||
                other.isConnected == isConnected));
  }

  @override
  int get hashCode => Object.hash(runtimeType, isConnected);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$NewConnectionImplCopyWith<_$NewConnectionImpl> get copyWith =>
      __$$NewConnectionImplCopyWithImpl<_$NewConnectionImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(int id) refresh,
    required TResult Function(bool isConnected) newConnection,
  }) {
    return newConnection(isConnected);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(int id)? refresh,
    TResult? Function(bool isConnected)? newConnection,
  }) {
    return newConnection?.call(isConnected);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(int id)? refresh,
    TResult Function(bool isConnected)? newConnection,
    required TResult orElse(),
  }) {
    if (newConnection != null) {
      return newConnection(isConnected);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(Refresh value) refresh,
    required TResult Function(NewConnection value) newConnection,
  }) {
    return newConnection(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(Refresh value)? refresh,
    TResult? Function(NewConnection value)? newConnection,
  }) {
    return newConnection?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(Refresh value)? refresh,
    TResult Function(NewConnection value)? newConnection,
    required TResult orElse(),
  }) {
    if (newConnection != null) {
      return newConnection(this);
    }
    return orElse();
  }
}

abstract class NewConnection implements MainState {
  const factory NewConnection(final bool isConnected) = _$NewConnectionImpl;

  bool get isConnected;
  @JsonKey(ignore: true)
  _$$NewConnectionImplCopyWith<_$NewConnectionImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
