// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'commutes_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$CommutesEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(String commuteId) deleteCommute,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(String commuteId)? deleteCommute,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String commuteId)? deleteCommute,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(DeleteCommute value) deleteCommute,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(DeleteCommute value)? deleteCommute,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(DeleteCommute value)? deleteCommute,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CommutesEventCopyWith<$Res> {
  factory $CommutesEventCopyWith(
          CommutesEvent value, $Res Function(CommutesEvent) then) =
      _$CommutesEventCopyWithImpl<$Res, CommutesEvent>;
}

/// @nodoc
class _$CommutesEventCopyWithImpl<$Res, $Val extends CommutesEvent>
    implements $CommutesEventCopyWith<$Res> {
  _$CommutesEventCopyWithImpl(this._value, this._then);

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
    extends _$CommutesEventCopyWithImpl<$Res, _$StartedImpl>
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
    return 'CommutesEvent.started()';
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
    required TResult Function(String commuteId) deleteCommute,
  }) {
    return started();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(String commuteId)? deleteCommute,
  }) {
    return started?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String commuteId)? deleteCommute,
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
    required TResult Function(DeleteCommute value) deleteCommute,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(DeleteCommute value)? deleteCommute,
  }) {
    return started?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(DeleteCommute value)? deleteCommute,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class _Started implements CommutesEvent {
  const factory _Started() = _$StartedImpl;
}

/// @nodoc
abstract class _$$DeleteCommuteImplCopyWith<$Res> {
  factory _$$DeleteCommuteImplCopyWith(
          _$DeleteCommuteImpl value, $Res Function(_$DeleteCommuteImpl) then) =
      __$$DeleteCommuteImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String commuteId});
}

/// @nodoc
class __$$DeleteCommuteImplCopyWithImpl<$Res>
    extends _$CommutesEventCopyWithImpl<$Res, _$DeleteCommuteImpl>
    implements _$$DeleteCommuteImplCopyWith<$Res> {
  __$$DeleteCommuteImplCopyWithImpl(
      _$DeleteCommuteImpl _value, $Res Function(_$DeleteCommuteImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? commuteId = null,
  }) {
    return _then(_$DeleteCommuteImpl(
      commuteId: null == commuteId
          ? _value.commuteId
          : commuteId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$DeleteCommuteImpl implements DeleteCommute {
  const _$DeleteCommuteImpl({required this.commuteId});

  @override
  final String commuteId;

  @override
  String toString() {
    return 'CommutesEvent.deleteCommute(commuteId: $commuteId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DeleteCommuteImpl &&
            (identical(other.commuteId, commuteId) ||
                other.commuteId == commuteId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, commuteId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DeleteCommuteImplCopyWith<_$DeleteCommuteImpl> get copyWith =>
      __$$DeleteCommuteImplCopyWithImpl<_$DeleteCommuteImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(String commuteId) deleteCommute,
  }) {
    return deleteCommute(commuteId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(String commuteId)? deleteCommute,
  }) {
    return deleteCommute?.call(commuteId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String commuteId)? deleteCommute,
    required TResult orElse(),
  }) {
    if (deleteCommute != null) {
      return deleteCommute(commuteId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(DeleteCommute value) deleteCommute,
  }) {
    return deleteCommute(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(DeleteCommute value)? deleteCommute,
  }) {
    return deleteCommute?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(DeleteCommute value)? deleteCommute,
    required TResult orElse(),
  }) {
    if (deleteCommute != null) {
      return deleteCommute(this);
    }
    return orElse();
  }
}

abstract class DeleteCommute implements CommutesEvent {
  const factory DeleteCommute({required final String commuteId}) =
      _$DeleteCommuteImpl;

  String get commuteId;
  @JsonKey(ignore: true)
  _$$DeleteCommuteImplCopyWith<_$DeleteCommuteImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$CommutesState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() deleteCommuteLoading,
    required TResult Function(String error) deleteFailure,
    required TResult Function() deleteSuccess,
    required TResult Function() getCommuteLoading,
    required TResult Function(String error) getCommutsFailure,
    required TResult Function() getCommutsSuccess,
    required TResult Function() empty,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? deleteCommuteLoading,
    TResult? Function(String error)? deleteFailure,
    TResult? Function()? deleteSuccess,
    TResult? Function()? getCommuteLoading,
    TResult? Function(String error)? getCommutsFailure,
    TResult? Function()? getCommutsSuccess,
    TResult? Function()? empty,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? deleteCommuteLoading,
    TResult Function(String error)? deleteFailure,
    TResult Function()? deleteSuccess,
    TResult Function()? getCommuteLoading,
    TResult Function(String error)? getCommutsFailure,
    TResult Function()? getCommutsSuccess,
    TResult Function()? empty,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(DeleteCommuteLoading value) deleteCommuteLoading,
    required TResult Function(DeleteFailure value) deleteFailure,
    required TResult Function(DeleteSuccess value) deleteSuccess,
    required TResult Function(GetCommuteLoading value) getCommuteLoading,
    required TResult Function(GetCommutsFailure value) getCommutsFailure,
    required TResult Function(GetCommutsSuccess value) getCommutsSuccess,
    required TResult Function(Empty value) empty,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(DeleteCommuteLoading value)? deleteCommuteLoading,
    TResult? Function(DeleteFailure value)? deleteFailure,
    TResult? Function(DeleteSuccess value)? deleteSuccess,
    TResult? Function(GetCommuteLoading value)? getCommuteLoading,
    TResult? Function(GetCommutsFailure value)? getCommutsFailure,
    TResult? Function(GetCommutsSuccess value)? getCommutsSuccess,
    TResult? Function(Empty value)? empty,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(DeleteCommuteLoading value)? deleteCommuteLoading,
    TResult Function(DeleteFailure value)? deleteFailure,
    TResult Function(DeleteSuccess value)? deleteSuccess,
    TResult Function(GetCommuteLoading value)? getCommuteLoading,
    TResult Function(GetCommutsFailure value)? getCommutsFailure,
    TResult Function(GetCommutsSuccess value)? getCommutsSuccess,
    TResult Function(Empty value)? empty,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CommutesStateCopyWith<$Res> {
  factory $CommutesStateCopyWith(
          CommutesState value, $Res Function(CommutesState) then) =
      _$CommutesStateCopyWithImpl<$Res, CommutesState>;
}

/// @nodoc
class _$CommutesStateCopyWithImpl<$Res, $Val extends CommutesState>
    implements $CommutesStateCopyWith<$Res> {
  _$CommutesStateCopyWithImpl(this._value, this._then);

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
    extends _$CommutesStateCopyWithImpl<$Res, _$InitialImpl>
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
    return 'CommutesState.initial()';
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
    required TResult Function() deleteCommuteLoading,
    required TResult Function(String error) deleteFailure,
    required TResult Function() deleteSuccess,
    required TResult Function() getCommuteLoading,
    required TResult Function(String error) getCommutsFailure,
    required TResult Function() getCommutsSuccess,
    required TResult Function() empty,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? deleteCommuteLoading,
    TResult? Function(String error)? deleteFailure,
    TResult? Function()? deleteSuccess,
    TResult? Function()? getCommuteLoading,
    TResult? Function(String error)? getCommutsFailure,
    TResult? Function()? getCommutsSuccess,
    TResult? Function()? empty,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? deleteCommuteLoading,
    TResult Function(String error)? deleteFailure,
    TResult Function()? deleteSuccess,
    TResult Function()? getCommuteLoading,
    TResult Function(String error)? getCommutsFailure,
    TResult Function()? getCommutsSuccess,
    TResult Function()? empty,
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
    required TResult Function(DeleteCommuteLoading value) deleteCommuteLoading,
    required TResult Function(DeleteFailure value) deleteFailure,
    required TResult Function(DeleteSuccess value) deleteSuccess,
    required TResult Function(GetCommuteLoading value) getCommuteLoading,
    required TResult Function(GetCommutsFailure value) getCommutsFailure,
    required TResult Function(GetCommutsSuccess value) getCommutsSuccess,
    required TResult Function(Empty value) empty,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(DeleteCommuteLoading value)? deleteCommuteLoading,
    TResult? Function(DeleteFailure value)? deleteFailure,
    TResult? Function(DeleteSuccess value)? deleteSuccess,
    TResult? Function(GetCommuteLoading value)? getCommuteLoading,
    TResult? Function(GetCommutsFailure value)? getCommutsFailure,
    TResult? Function(GetCommutsSuccess value)? getCommutsSuccess,
    TResult? Function(Empty value)? empty,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(DeleteCommuteLoading value)? deleteCommuteLoading,
    TResult Function(DeleteFailure value)? deleteFailure,
    TResult Function(DeleteSuccess value)? deleteSuccess,
    TResult Function(GetCommuteLoading value)? getCommuteLoading,
    TResult Function(GetCommutsFailure value)? getCommutsFailure,
    TResult Function(GetCommutsSuccess value)? getCommutsSuccess,
    TResult Function(Empty value)? empty,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements CommutesState {
  const factory _Initial() = _$InitialImpl;
}

/// @nodoc
abstract class _$$DeleteCommuteLoadingImplCopyWith<$Res> {
  factory _$$DeleteCommuteLoadingImplCopyWith(_$DeleteCommuteLoadingImpl value,
          $Res Function(_$DeleteCommuteLoadingImpl) then) =
      __$$DeleteCommuteLoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$DeleteCommuteLoadingImplCopyWithImpl<$Res>
    extends _$CommutesStateCopyWithImpl<$Res, _$DeleteCommuteLoadingImpl>
    implements _$$DeleteCommuteLoadingImplCopyWith<$Res> {
  __$$DeleteCommuteLoadingImplCopyWithImpl(_$DeleteCommuteLoadingImpl _value,
      $Res Function(_$DeleteCommuteLoadingImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$DeleteCommuteLoadingImpl implements DeleteCommuteLoading {
  const _$DeleteCommuteLoadingImpl();

  @override
  String toString() {
    return 'CommutesState.deleteCommuteLoading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DeleteCommuteLoadingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() deleteCommuteLoading,
    required TResult Function(String error) deleteFailure,
    required TResult Function() deleteSuccess,
    required TResult Function() getCommuteLoading,
    required TResult Function(String error) getCommutsFailure,
    required TResult Function() getCommutsSuccess,
    required TResult Function() empty,
  }) {
    return deleteCommuteLoading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? deleteCommuteLoading,
    TResult? Function(String error)? deleteFailure,
    TResult? Function()? deleteSuccess,
    TResult? Function()? getCommuteLoading,
    TResult? Function(String error)? getCommutsFailure,
    TResult? Function()? getCommutsSuccess,
    TResult? Function()? empty,
  }) {
    return deleteCommuteLoading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? deleteCommuteLoading,
    TResult Function(String error)? deleteFailure,
    TResult Function()? deleteSuccess,
    TResult Function()? getCommuteLoading,
    TResult Function(String error)? getCommutsFailure,
    TResult Function()? getCommutsSuccess,
    TResult Function()? empty,
    required TResult orElse(),
  }) {
    if (deleteCommuteLoading != null) {
      return deleteCommuteLoading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(DeleteCommuteLoading value) deleteCommuteLoading,
    required TResult Function(DeleteFailure value) deleteFailure,
    required TResult Function(DeleteSuccess value) deleteSuccess,
    required TResult Function(GetCommuteLoading value) getCommuteLoading,
    required TResult Function(GetCommutsFailure value) getCommutsFailure,
    required TResult Function(GetCommutsSuccess value) getCommutsSuccess,
    required TResult Function(Empty value) empty,
  }) {
    return deleteCommuteLoading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(DeleteCommuteLoading value)? deleteCommuteLoading,
    TResult? Function(DeleteFailure value)? deleteFailure,
    TResult? Function(DeleteSuccess value)? deleteSuccess,
    TResult? Function(GetCommuteLoading value)? getCommuteLoading,
    TResult? Function(GetCommutsFailure value)? getCommutsFailure,
    TResult? Function(GetCommutsSuccess value)? getCommutsSuccess,
    TResult? Function(Empty value)? empty,
  }) {
    return deleteCommuteLoading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(DeleteCommuteLoading value)? deleteCommuteLoading,
    TResult Function(DeleteFailure value)? deleteFailure,
    TResult Function(DeleteSuccess value)? deleteSuccess,
    TResult Function(GetCommuteLoading value)? getCommuteLoading,
    TResult Function(GetCommutsFailure value)? getCommutsFailure,
    TResult Function(GetCommutsSuccess value)? getCommutsSuccess,
    TResult Function(Empty value)? empty,
    required TResult orElse(),
  }) {
    if (deleteCommuteLoading != null) {
      return deleteCommuteLoading(this);
    }
    return orElse();
  }
}

abstract class DeleteCommuteLoading implements CommutesState {
  const factory DeleteCommuteLoading() = _$DeleteCommuteLoadingImpl;
}

/// @nodoc
abstract class _$$DeleteFailureImplCopyWith<$Res> {
  factory _$$DeleteFailureImplCopyWith(
          _$DeleteFailureImpl value, $Res Function(_$DeleteFailureImpl) then) =
      __$$DeleteFailureImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String error});
}

/// @nodoc
class __$$DeleteFailureImplCopyWithImpl<$Res>
    extends _$CommutesStateCopyWithImpl<$Res, _$DeleteFailureImpl>
    implements _$$DeleteFailureImplCopyWith<$Res> {
  __$$DeleteFailureImplCopyWithImpl(
      _$DeleteFailureImpl _value, $Res Function(_$DeleteFailureImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = null,
  }) {
    return _then(_$DeleteFailureImpl(
      error: null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$DeleteFailureImpl implements DeleteFailure {
  const _$DeleteFailureImpl({required this.error});

  @override
  final String error;

  @override
  String toString() {
    return 'CommutesState.deleteFailure(error: $error)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DeleteFailureImpl &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(runtimeType, error);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DeleteFailureImplCopyWith<_$DeleteFailureImpl> get copyWith =>
      __$$DeleteFailureImplCopyWithImpl<_$DeleteFailureImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() deleteCommuteLoading,
    required TResult Function(String error) deleteFailure,
    required TResult Function() deleteSuccess,
    required TResult Function() getCommuteLoading,
    required TResult Function(String error) getCommutsFailure,
    required TResult Function() getCommutsSuccess,
    required TResult Function() empty,
  }) {
    return deleteFailure(error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? deleteCommuteLoading,
    TResult? Function(String error)? deleteFailure,
    TResult? Function()? deleteSuccess,
    TResult? Function()? getCommuteLoading,
    TResult? Function(String error)? getCommutsFailure,
    TResult? Function()? getCommutsSuccess,
    TResult? Function()? empty,
  }) {
    return deleteFailure?.call(error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? deleteCommuteLoading,
    TResult Function(String error)? deleteFailure,
    TResult Function()? deleteSuccess,
    TResult Function()? getCommuteLoading,
    TResult Function(String error)? getCommutsFailure,
    TResult Function()? getCommutsSuccess,
    TResult Function()? empty,
    required TResult orElse(),
  }) {
    if (deleteFailure != null) {
      return deleteFailure(error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(DeleteCommuteLoading value) deleteCommuteLoading,
    required TResult Function(DeleteFailure value) deleteFailure,
    required TResult Function(DeleteSuccess value) deleteSuccess,
    required TResult Function(GetCommuteLoading value) getCommuteLoading,
    required TResult Function(GetCommutsFailure value) getCommutsFailure,
    required TResult Function(GetCommutsSuccess value) getCommutsSuccess,
    required TResult Function(Empty value) empty,
  }) {
    return deleteFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(DeleteCommuteLoading value)? deleteCommuteLoading,
    TResult? Function(DeleteFailure value)? deleteFailure,
    TResult? Function(DeleteSuccess value)? deleteSuccess,
    TResult? Function(GetCommuteLoading value)? getCommuteLoading,
    TResult? Function(GetCommutsFailure value)? getCommutsFailure,
    TResult? Function(GetCommutsSuccess value)? getCommutsSuccess,
    TResult? Function(Empty value)? empty,
  }) {
    return deleteFailure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(DeleteCommuteLoading value)? deleteCommuteLoading,
    TResult Function(DeleteFailure value)? deleteFailure,
    TResult Function(DeleteSuccess value)? deleteSuccess,
    TResult Function(GetCommuteLoading value)? getCommuteLoading,
    TResult Function(GetCommutsFailure value)? getCommutsFailure,
    TResult Function(GetCommutsSuccess value)? getCommutsSuccess,
    TResult Function(Empty value)? empty,
    required TResult orElse(),
  }) {
    if (deleteFailure != null) {
      return deleteFailure(this);
    }
    return orElse();
  }
}

abstract class DeleteFailure implements CommutesState {
  const factory DeleteFailure({required final String error}) =
      _$DeleteFailureImpl;

  String get error;
  @JsonKey(ignore: true)
  _$$DeleteFailureImplCopyWith<_$DeleteFailureImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$DeleteSuccessImplCopyWith<$Res> {
  factory _$$DeleteSuccessImplCopyWith(
          _$DeleteSuccessImpl value, $Res Function(_$DeleteSuccessImpl) then) =
      __$$DeleteSuccessImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$DeleteSuccessImplCopyWithImpl<$Res>
    extends _$CommutesStateCopyWithImpl<$Res, _$DeleteSuccessImpl>
    implements _$$DeleteSuccessImplCopyWith<$Res> {
  __$$DeleteSuccessImplCopyWithImpl(
      _$DeleteSuccessImpl _value, $Res Function(_$DeleteSuccessImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$DeleteSuccessImpl implements DeleteSuccess {
  const _$DeleteSuccessImpl();

  @override
  String toString() {
    return 'CommutesState.deleteSuccess()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$DeleteSuccessImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() deleteCommuteLoading,
    required TResult Function(String error) deleteFailure,
    required TResult Function() deleteSuccess,
    required TResult Function() getCommuteLoading,
    required TResult Function(String error) getCommutsFailure,
    required TResult Function() getCommutsSuccess,
    required TResult Function() empty,
  }) {
    return deleteSuccess();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? deleteCommuteLoading,
    TResult? Function(String error)? deleteFailure,
    TResult? Function()? deleteSuccess,
    TResult? Function()? getCommuteLoading,
    TResult? Function(String error)? getCommutsFailure,
    TResult? Function()? getCommutsSuccess,
    TResult? Function()? empty,
  }) {
    return deleteSuccess?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? deleteCommuteLoading,
    TResult Function(String error)? deleteFailure,
    TResult Function()? deleteSuccess,
    TResult Function()? getCommuteLoading,
    TResult Function(String error)? getCommutsFailure,
    TResult Function()? getCommutsSuccess,
    TResult Function()? empty,
    required TResult orElse(),
  }) {
    if (deleteSuccess != null) {
      return deleteSuccess();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(DeleteCommuteLoading value) deleteCommuteLoading,
    required TResult Function(DeleteFailure value) deleteFailure,
    required TResult Function(DeleteSuccess value) deleteSuccess,
    required TResult Function(GetCommuteLoading value) getCommuteLoading,
    required TResult Function(GetCommutsFailure value) getCommutsFailure,
    required TResult Function(GetCommutsSuccess value) getCommutsSuccess,
    required TResult Function(Empty value) empty,
  }) {
    return deleteSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(DeleteCommuteLoading value)? deleteCommuteLoading,
    TResult? Function(DeleteFailure value)? deleteFailure,
    TResult? Function(DeleteSuccess value)? deleteSuccess,
    TResult? Function(GetCommuteLoading value)? getCommuteLoading,
    TResult? Function(GetCommutsFailure value)? getCommutsFailure,
    TResult? Function(GetCommutsSuccess value)? getCommutsSuccess,
    TResult? Function(Empty value)? empty,
  }) {
    return deleteSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(DeleteCommuteLoading value)? deleteCommuteLoading,
    TResult Function(DeleteFailure value)? deleteFailure,
    TResult Function(DeleteSuccess value)? deleteSuccess,
    TResult Function(GetCommuteLoading value)? getCommuteLoading,
    TResult Function(GetCommutsFailure value)? getCommutsFailure,
    TResult Function(GetCommutsSuccess value)? getCommutsSuccess,
    TResult Function(Empty value)? empty,
    required TResult orElse(),
  }) {
    if (deleteSuccess != null) {
      return deleteSuccess(this);
    }
    return orElse();
  }
}

abstract class DeleteSuccess implements CommutesState {
  const factory DeleteSuccess() = _$DeleteSuccessImpl;
}

/// @nodoc
abstract class _$$GetCommuteLoadingImplCopyWith<$Res> {
  factory _$$GetCommuteLoadingImplCopyWith(_$GetCommuteLoadingImpl value,
          $Res Function(_$GetCommuteLoadingImpl) then) =
      __$$GetCommuteLoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$GetCommuteLoadingImplCopyWithImpl<$Res>
    extends _$CommutesStateCopyWithImpl<$Res, _$GetCommuteLoadingImpl>
    implements _$$GetCommuteLoadingImplCopyWith<$Res> {
  __$$GetCommuteLoadingImplCopyWithImpl(_$GetCommuteLoadingImpl _value,
      $Res Function(_$GetCommuteLoadingImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$GetCommuteLoadingImpl implements GetCommuteLoading {
  const _$GetCommuteLoadingImpl();

  @override
  String toString() {
    return 'CommutesState.getCommuteLoading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$GetCommuteLoadingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() deleteCommuteLoading,
    required TResult Function(String error) deleteFailure,
    required TResult Function() deleteSuccess,
    required TResult Function() getCommuteLoading,
    required TResult Function(String error) getCommutsFailure,
    required TResult Function() getCommutsSuccess,
    required TResult Function() empty,
  }) {
    return getCommuteLoading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? deleteCommuteLoading,
    TResult? Function(String error)? deleteFailure,
    TResult? Function()? deleteSuccess,
    TResult? Function()? getCommuteLoading,
    TResult? Function(String error)? getCommutsFailure,
    TResult? Function()? getCommutsSuccess,
    TResult? Function()? empty,
  }) {
    return getCommuteLoading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? deleteCommuteLoading,
    TResult Function(String error)? deleteFailure,
    TResult Function()? deleteSuccess,
    TResult Function()? getCommuteLoading,
    TResult Function(String error)? getCommutsFailure,
    TResult Function()? getCommutsSuccess,
    TResult Function()? empty,
    required TResult orElse(),
  }) {
    if (getCommuteLoading != null) {
      return getCommuteLoading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(DeleteCommuteLoading value) deleteCommuteLoading,
    required TResult Function(DeleteFailure value) deleteFailure,
    required TResult Function(DeleteSuccess value) deleteSuccess,
    required TResult Function(GetCommuteLoading value) getCommuteLoading,
    required TResult Function(GetCommutsFailure value) getCommutsFailure,
    required TResult Function(GetCommutsSuccess value) getCommutsSuccess,
    required TResult Function(Empty value) empty,
  }) {
    return getCommuteLoading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(DeleteCommuteLoading value)? deleteCommuteLoading,
    TResult? Function(DeleteFailure value)? deleteFailure,
    TResult? Function(DeleteSuccess value)? deleteSuccess,
    TResult? Function(GetCommuteLoading value)? getCommuteLoading,
    TResult? Function(GetCommutsFailure value)? getCommutsFailure,
    TResult? Function(GetCommutsSuccess value)? getCommutsSuccess,
    TResult? Function(Empty value)? empty,
  }) {
    return getCommuteLoading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(DeleteCommuteLoading value)? deleteCommuteLoading,
    TResult Function(DeleteFailure value)? deleteFailure,
    TResult Function(DeleteSuccess value)? deleteSuccess,
    TResult Function(GetCommuteLoading value)? getCommuteLoading,
    TResult Function(GetCommutsFailure value)? getCommutsFailure,
    TResult Function(GetCommutsSuccess value)? getCommutsSuccess,
    TResult Function(Empty value)? empty,
    required TResult orElse(),
  }) {
    if (getCommuteLoading != null) {
      return getCommuteLoading(this);
    }
    return orElse();
  }
}

abstract class GetCommuteLoading implements CommutesState {
  const factory GetCommuteLoading() = _$GetCommuteLoadingImpl;
}

/// @nodoc
abstract class _$$GetCommutsFailureImplCopyWith<$Res> {
  factory _$$GetCommutsFailureImplCopyWith(_$GetCommutsFailureImpl value,
          $Res Function(_$GetCommutsFailureImpl) then) =
      __$$GetCommutsFailureImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String error});
}

/// @nodoc
class __$$GetCommutsFailureImplCopyWithImpl<$Res>
    extends _$CommutesStateCopyWithImpl<$Res, _$GetCommutsFailureImpl>
    implements _$$GetCommutsFailureImplCopyWith<$Res> {
  __$$GetCommutsFailureImplCopyWithImpl(_$GetCommutsFailureImpl _value,
      $Res Function(_$GetCommutsFailureImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = null,
  }) {
    return _then(_$GetCommutsFailureImpl(
      error: null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$GetCommutsFailureImpl implements GetCommutsFailure {
  const _$GetCommutsFailureImpl({required this.error});

  @override
  final String error;

  @override
  String toString() {
    return 'CommutesState.getCommutsFailure(error: $error)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetCommutsFailureImpl &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(runtimeType, error);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetCommutsFailureImplCopyWith<_$GetCommutsFailureImpl> get copyWith =>
      __$$GetCommutsFailureImplCopyWithImpl<_$GetCommutsFailureImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() deleteCommuteLoading,
    required TResult Function(String error) deleteFailure,
    required TResult Function() deleteSuccess,
    required TResult Function() getCommuteLoading,
    required TResult Function(String error) getCommutsFailure,
    required TResult Function() getCommutsSuccess,
    required TResult Function() empty,
  }) {
    return getCommutsFailure(error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? deleteCommuteLoading,
    TResult? Function(String error)? deleteFailure,
    TResult? Function()? deleteSuccess,
    TResult? Function()? getCommuteLoading,
    TResult? Function(String error)? getCommutsFailure,
    TResult? Function()? getCommutsSuccess,
    TResult? Function()? empty,
  }) {
    return getCommutsFailure?.call(error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? deleteCommuteLoading,
    TResult Function(String error)? deleteFailure,
    TResult Function()? deleteSuccess,
    TResult Function()? getCommuteLoading,
    TResult Function(String error)? getCommutsFailure,
    TResult Function()? getCommutsSuccess,
    TResult Function()? empty,
    required TResult orElse(),
  }) {
    if (getCommutsFailure != null) {
      return getCommutsFailure(error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(DeleteCommuteLoading value) deleteCommuteLoading,
    required TResult Function(DeleteFailure value) deleteFailure,
    required TResult Function(DeleteSuccess value) deleteSuccess,
    required TResult Function(GetCommuteLoading value) getCommuteLoading,
    required TResult Function(GetCommutsFailure value) getCommutsFailure,
    required TResult Function(GetCommutsSuccess value) getCommutsSuccess,
    required TResult Function(Empty value) empty,
  }) {
    return getCommutsFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(DeleteCommuteLoading value)? deleteCommuteLoading,
    TResult? Function(DeleteFailure value)? deleteFailure,
    TResult? Function(DeleteSuccess value)? deleteSuccess,
    TResult? Function(GetCommuteLoading value)? getCommuteLoading,
    TResult? Function(GetCommutsFailure value)? getCommutsFailure,
    TResult? Function(GetCommutsSuccess value)? getCommutsSuccess,
    TResult? Function(Empty value)? empty,
  }) {
    return getCommutsFailure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(DeleteCommuteLoading value)? deleteCommuteLoading,
    TResult Function(DeleteFailure value)? deleteFailure,
    TResult Function(DeleteSuccess value)? deleteSuccess,
    TResult Function(GetCommuteLoading value)? getCommuteLoading,
    TResult Function(GetCommutsFailure value)? getCommutsFailure,
    TResult Function(GetCommutsSuccess value)? getCommutsSuccess,
    TResult Function(Empty value)? empty,
    required TResult orElse(),
  }) {
    if (getCommutsFailure != null) {
      return getCommutsFailure(this);
    }
    return orElse();
  }
}

abstract class GetCommutsFailure implements CommutesState {
  const factory GetCommutsFailure({required final String error}) =
      _$GetCommutsFailureImpl;

  String get error;
  @JsonKey(ignore: true)
  _$$GetCommutsFailureImplCopyWith<_$GetCommutsFailureImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$GetCommutsSuccessImplCopyWith<$Res> {
  factory _$$GetCommutsSuccessImplCopyWith(_$GetCommutsSuccessImpl value,
          $Res Function(_$GetCommutsSuccessImpl) then) =
      __$$GetCommutsSuccessImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$GetCommutsSuccessImplCopyWithImpl<$Res>
    extends _$CommutesStateCopyWithImpl<$Res, _$GetCommutsSuccessImpl>
    implements _$$GetCommutsSuccessImplCopyWith<$Res> {
  __$$GetCommutsSuccessImplCopyWithImpl(_$GetCommutsSuccessImpl _value,
      $Res Function(_$GetCommutsSuccessImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$GetCommutsSuccessImpl implements GetCommutsSuccess {
  const _$GetCommutsSuccessImpl();

  @override
  String toString() {
    return 'CommutesState.getCommutsSuccess()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$GetCommutsSuccessImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() deleteCommuteLoading,
    required TResult Function(String error) deleteFailure,
    required TResult Function() deleteSuccess,
    required TResult Function() getCommuteLoading,
    required TResult Function(String error) getCommutsFailure,
    required TResult Function() getCommutsSuccess,
    required TResult Function() empty,
  }) {
    return getCommutsSuccess();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? deleteCommuteLoading,
    TResult? Function(String error)? deleteFailure,
    TResult? Function()? deleteSuccess,
    TResult? Function()? getCommuteLoading,
    TResult? Function(String error)? getCommutsFailure,
    TResult? Function()? getCommutsSuccess,
    TResult? Function()? empty,
  }) {
    return getCommutsSuccess?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? deleteCommuteLoading,
    TResult Function(String error)? deleteFailure,
    TResult Function()? deleteSuccess,
    TResult Function()? getCommuteLoading,
    TResult Function(String error)? getCommutsFailure,
    TResult Function()? getCommutsSuccess,
    TResult Function()? empty,
    required TResult orElse(),
  }) {
    if (getCommutsSuccess != null) {
      return getCommutsSuccess();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(DeleteCommuteLoading value) deleteCommuteLoading,
    required TResult Function(DeleteFailure value) deleteFailure,
    required TResult Function(DeleteSuccess value) deleteSuccess,
    required TResult Function(GetCommuteLoading value) getCommuteLoading,
    required TResult Function(GetCommutsFailure value) getCommutsFailure,
    required TResult Function(GetCommutsSuccess value) getCommutsSuccess,
    required TResult Function(Empty value) empty,
  }) {
    return getCommutsSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(DeleteCommuteLoading value)? deleteCommuteLoading,
    TResult? Function(DeleteFailure value)? deleteFailure,
    TResult? Function(DeleteSuccess value)? deleteSuccess,
    TResult? Function(GetCommuteLoading value)? getCommuteLoading,
    TResult? Function(GetCommutsFailure value)? getCommutsFailure,
    TResult? Function(GetCommutsSuccess value)? getCommutsSuccess,
    TResult? Function(Empty value)? empty,
  }) {
    return getCommutsSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(DeleteCommuteLoading value)? deleteCommuteLoading,
    TResult Function(DeleteFailure value)? deleteFailure,
    TResult Function(DeleteSuccess value)? deleteSuccess,
    TResult Function(GetCommuteLoading value)? getCommuteLoading,
    TResult Function(GetCommutsFailure value)? getCommutsFailure,
    TResult Function(GetCommutsSuccess value)? getCommutsSuccess,
    TResult Function(Empty value)? empty,
    required TResult orElse(),
  }) {
    if (getCommutsSuccess != null) {
      return getCommutsSuccess(this);
    }
    return orElse();
  }
}

abstract class GetCommutsSuccess implements CommutesState {
  const factory GetCommutsSuccess() = _$GetCommutsSuccessImpl;
}

/// @nodoc
abstract class _$$EmptyImplCopyWith<$Res> {
  factory _$$EmptyImplCopyWith(
          _$EmptyImpl value, $Res Function(_$EmptyImpl) then) =
      __$$EmptyImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$EmptyImplCopyWithImpl<$Res>
    extends _$CommutesStateCopyWithImpl<$Res, _$EmptyImpl>
    implements _$$EmptyImplCopyWith<$Res> {
  __$$EmptyImplCopyWithImpl(
      _$EmptyImpl _value, $Res Function(_$EmptyImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$EmptyImpl implements Empty {
  const _$EmptyImpl();

  @override
  String toString() {
    return 'CommutesState.empty()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$EmptyImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() deleteCommuteLoading,
    required TResult Function(String error) deleteFailure,
    required TResult Function() deleteSuccess,
    required TResult Function() getCommuteLoading,
    required TResult Function(String error) getCommutsFailure,
    required TResult Function() getCommutsSuccess,
    required TResult Function() empty,
  }) {
    return empty();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? deleteCommuteLoading,
    TResult? Function(String error)? deleteFailure,
    TResult? Function()? deleteSuccess,
    TResult? Function()? getCommuteLoading,
    TResult? Function(String error)? getCommutsFailure,
    TResult? Function()? getCommutsSuccess,
    TResult? Function()? empty,
  }) {
    return empty?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? deleteCommuteLoading,
    TResult Function(String error)? deleteFailure,
    TResult Function()? deleteSuccess,
    TResult Function()? getCommuteLoading,
    TResult Function(String error)? getCommutsFailure,
    TResult Function()? getCommutsSuccess,
    TResult Function()? empty,
    required TResult orElse(),
  }) {
    if (empty != null) {
      return empty();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(DeleteCommuteLoading value) deleteCommuteLoading,
    required TResult Function(DeleteFailure value) deleteFailure,
    required TResult Function(DeleteSuccess value) deleteSuccess,
    required TResult Function(GetCommuteLoading value) getCommuteLoading,
    required TResult Function(GetCommutsFailure value) getCommutsFailure,
    required TResult Function(GetCommutsSuccess value) getCommutsSuccess,
    required TResult Function(Empty value) empty,
  }) {
    return empty(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(DeleteCommuteLoading value)? deleteCommuteLoading,
    TResult? Function(DeleteFailure value)? deleteFailure,
    TResult? Function(DeleteSuccess value)? deleteSuccess,
    TResult? Function(GetCommuteLoading value)? getCommuteLoading,
    TResult? Function(GetCommutsFailure value)? getCommutsFailure,
    TResult? Function(GetCommutsSuccess value)? getCommutsSuccess,
    TResult? Function(Empty value)? empty,
  }) {
    return empty?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(DeleteCommuteLoading value)? deleteCommuteLoading,
    TResult Function(DeleteFailure value)? deleteFailure,
    TResult Function(DeleteSuccess value)? deleteSuccess,
    TResult Function(GetCommuteLoading value)? getCommuteLoading,
    TResult Function(GetCommutsFailure value)? getCommutsFailure,
    TResult Function(GetCommutsSuccess value)? getCommutsSuccess,
    TResult Function(Empty value)? empty,
    required TResult orElse(),
  }) {
    if (empty != null) {
      return empty(this);
    }
    return orElse();
  }
}

abstract class Empty implements CommutesState {
  const factory Empty() = _$EmptyImpl;
}
