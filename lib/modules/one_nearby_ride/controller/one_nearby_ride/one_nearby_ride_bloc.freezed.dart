// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'one_nearby_ride_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$OneNearbyRideEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() startRide,
    required TResult Function() completeRide,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? startRide,
    TResult? Function()? completeRide,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? startRide,
    TResult Function()? completeRide,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(StartRide value) startRide,
    required TResult Function(CompleteRide value) completeRide,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(StartRide value)? startRide,
    TResult? Function(CompleteRide value)? completeRide,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(StartRide value)? startRide,
    TResult Function(CompleteRide value)? completeRide,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OneNearbyRideEventCopyWith<$Res> {
  factory $OneNearbyRideEventCopyWith(
          OneNearbyRideEvent value, $Res Function(OneNearbyRideEvent) then) =
      _$OneNearbyRideEventCopyWithImpl<$Res, OneNearbyRideEvent>;
}

/// @nodoc
class _$OneNearbyRideEventCopyWithImpl<$Res, $Val extends OneNearbyRideEvent>
    implements $OneNearbyRideEventCopyWith<$Res> {
  _$OneNearbyRideEventCopyWithImpl(this._value, this._then);

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
    extends _$OneNearbyRideEventCopyWithImpl<$Res, _$StartedImpl>
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
    return 'OneNearbyRideEvent.started()';
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
    required TResult Function() startRide,
    required TResult Function() completeRide,
  }) {
    return started();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? startRide,
    TResult? Function()? completeRide,
  }) {
    return started?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? startRide,
    TResult Function()? completeRide,
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
    required TResult Function(StartRide value) startRide,
    required TResult Function(CompleteRide value) completeRide,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(StartRide value)? startRide,
    TResult? Function(CompleteRide value)? completeRide,
  }) {
    return started?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(StartRide value)? startRide,
    TResult Function(CompleteRide value)? completeRide,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class _Started implements OneNearbyRideEvent {
  const factory _Started() = _$StartedImpl;
}

/// @nodoc
abstract class _$$StartRideImplCopyWith<$Res> {
  factory _$$StartRideImplCopyWith(
          _$StartRideImpl value, $Res Function(_$StartRideImpl) then) =
      __$$StartRideImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$StartRideImplCopyWithImpl<$Res>
    extends _$OneNearbyRideEventCopyWithImpl<$Res, _$StartRideImpl>
    implements _$$StartRideImplCopyWith<$Res> {
  __$$StartRideImplCopyWithImpl(
      _$StartRideImpl _value, $Res Function(_$StartRideImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$StartRideImpl implements StartRide {
  const _$StartRideImpl();

  @override
  String toString() {
    return 'OneNearbyRideEvent.startRide()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$StartRideImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() startRide,
    required TResult Function() completeRide,
  }) {
    return startRide();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? startRide,
    TResult? Function()? completeRide,
  }) {
    return startRide?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? startRide,
    TResult Function()? completeRide,
    required TResult orElse(),
  }) {
    if (startRide != null) {
      return startRide();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(StartRide value) startRide,
    required TResult Function(CompleteRide value) completeRide,
  }) {
    return startRide(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(StartRide value)? startRide,
    TResult? Function(CompleteRide value)? completeRide,
  }) {
    return startRide?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(StartRide value)? startRide,
    TResult Function(CompleteRide value)? completeRide,
    required TResult orElse(),
  }) {
    if (startRide != null) {
      return startRide(this);
    }
    return orElse();
  }
}

abstract class StartRide implements OneNearbyRideEvent {
  const factory StartRide() = _$StartRideImpl;
}

/// @nodoc
abstract class _$$CompleteRideImplCopyWith<$Res> {
  factory _$$CompleteRideImplCopyWith(
          _$CompleteRideImpl value, $Res Function(_$CompleteRideImpl) then) =
      __$$CompleteRideImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$CompleteRideImplCopyWithImpl<$Res>
    extends _$OneNearbyRideEventCopyWithImpl<$Res, _$CompleteRideImpl>
    implements _$$CompleteRideImplCopyWith<$Res> {
  __$$CompleteRideImplCopyWithImpl(
      _$CompleteRideImpl _value, $Res Function(_$CompleteRideImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$CompleteRideImpl implements CompleteRide {
  const _$CompleteRideImpl();

  @override
  String toString() {
    return 'OneNearbyRideEvent.completeRide()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$CompleteRideImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() startRide,
    required TResult Function() completeRide,
  }) {
    return completeRide();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? startRide,
    TResult? Function()? completeRide,
  }) {
    return completeRide?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? startRide,
    TResult Function()? completeRide,
    required TResult orElse(),
  }) {
    if (completeRide != null) {
      return completeRide();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(StartRide value) startRide,
    required TResult Function(CompleteRide value) completeRide,
  }) {
    return completeRide(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(StartRide value)? startRide,
    TResult? Function(CompleteRide value)? completeRide,
  }) {
    return completeRide?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(StartRide value)? startRide,
    TResult Function(CompleteRide value)? completeRide,
    required TResult orElse(),
  }) {
    if (completeRide != null) {
      return completeRide(this);
    }
    return orElse();
  }
}

abstract class CompleteRide implements OneNearbyRideEvent {
  const factory CompleteRide() = _$CompleteRideImpl;
}

/// @nodoc
mixin _$OneNearbyRideState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() pLoading,
    required TResult Function() success,
    required TResult Function() failure,
    required TResult Function() startSuccess,
    required TResult Function() completeSuccess,
    required TResult Function() startFailure,
    required TResult Function() completeFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? pLoading,
    TResult? Function()? success,
    TResult? Function()? failure,
    TResult? Function()? startSuccess,
    TResult? Function()? completeSuccess,
    TResult? Function()? startFailure,
    TResult? Function()? completeFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? pLoading,
    TResult Function()? success,
    TResult Function()? failure,
    TResult Function()? startSuccess,
    TResult Function()? completeSuccess,
    TResult Function()? startFailure,
    TResult Function()? completeFailure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(Loading value) loading,
    required TResult Function(PLoading value) pLoading,
    required TResult Function(Success value) success,
    required TResult Function(Failure value) failure,
    required TResult Function(StartSuccess value) startSuccess,
    required TResult Function(CompleteSuccess value) completeSuccess,
    required TResult Function(StartFailure value) startFailure,
    required TResult Function(CompleteFailure value) completeFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(Loading value)? loading,
    TResult? Function(PLoading value)? pLoading,
    TResult? Function(Success value)? success,
    TResult? Function(Failure value)? failure,
    TResult? Function(StartSuccess value)? startSuccess,
    TResult? Function(CompleteSuccess value)? completeSuccess,
    TResult? Function(StartFailure value)? startFailure,
    TResult? Function(CompleteFailure value)? completeFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(Loading value)? loading,
    TResult Function(PLoading value)? pLoading,
    TResult Function(Success value)? success,
    TResult Function(Failure value)? failure,
    TResult Function(StartSuccess value)? startSuccess,
    TResult Function(CompleteSuccess value)? completeSuccess,
    TResult Function(StartFailure value)? startFailure,
    TResult Function(CompleteFailure value)? completeFailure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OneNearbyRideStateCopyWith<$Res> {
  factory $OneNearbyRideStateCopyWith(
          OneNearbyRideState value, $Res Function(OneNearbyRideState) then) =
      _$OneNearbyRideStateCopyWithImpl<$Res, OneNearbyRideState>;
}

/// @nodoc
class _$OneNearbyRideStateCopyWithImpl<$Res, $Val extends OneNearbyRideState>
    implements $OneNearbyRideStateCopyWith<$Res> {
  _$OneNearbyRideStateCopyWithImpl(this._value, this._then);

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
    extends _$OneNearbyRideStateCopyWithImpl<$Res, _$InitialImpl>
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
    return 'OneNearbyRideState.initial()';
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
    required TResult Function() loading,
    required TResult Function() pLoading,
    required TResult Function() success,
    required TResult Function() failure,
    required TResult Function() startSuccess,
    required TResult Function() completeSuccess,
    required TResult Function() startFailure,
    required TResult Function() completeFailure,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? pLoading,
    TResult? Function()? success,
    TResult? Function()? failure,
    TResult? Function()? startSuccess,
    TResult? Function()? completeSuccess,
    TResult? Function()? startFailure,
    TResult? Function()? completeFailure,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? pLoading,
    TResult Function()? success,
    TResult Function()? failure,
    TResult Function()? startSuccess,
    TResult Function()? completeSuccess,
    TResult Function()? startFailure,
    TResult Function()? completeFailure,
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
    required TResult Function(Loading value) loading,
    required TResult Function(PLoading value) pLoading,
    required TResult Function(Success value) success,
    required TResult Function(Failure value) failure,
    required TResult Function(StartSuccess value) startSuccess,
    required TResult Function(CompleteSuccess value) completeSuccess,
    required TResult Function(StartFailure value) startFailure,
    required TResult Function(CompleteFailure value) completeFailure,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(Loading value)? loading,
    TResult? Function(PLoading value)? pLoading,
    TResult? Function(Success value)? success,
    TResult? Function(Failure value)? failure,
    TResult? Function(StartSuccess value)? startSuccess,
    TResult? Function(CompleteSuccess value)? completeSuccess,
    TResult? Function(StartFailure value)? startFailure,
    TResult? Function(CompleteFailure value)? completeFailure,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(Loading value)? loading,
    TResult Function(PLoading value)? pLoading,
    TResult Function(Success value)? success,
    TResult Function(Failure value)? failure,
    TResult Function(StartSuccess value)? startSuccess,
    TResult Function(CompleteSuccess value)? completeSuccess,
    TResult Function(StartFailure value)? startFailure,
    TResult Function(CompleteFailure value)? completeFailure,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements OneNearbyRideState {
  const factory _Initial() = _$InitialImpl;
}

/// @nodoc
abstract class _$$LoadingImplCopyWith<$Res> {
  factory _$$LoadingImplCopyWith(
          _$LoadingImpl value, $Res Function(_$LoadingImpl) then) =
      __$$LoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoadingImplCopyWithImpl<$Res>
    extends _$OneNearbyRideStateCopyWithImpl<$Res, _$LoadingImpl>
    implements _$$LoadingImplCopyWith<$Res> {
  __$$LoadingImplCopyWithImpl(
      _$LoadingImpl _value, $Res Function(_$LoadingImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$LoadingImpl implements Loading {
  const _$LoadingImpl();

  @override
  String toString() {
    return 'OneNearbyRideState.loading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LoadingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() pLoading,
    required TResult Function() success,
    required TResult Function() failure,
    required TResult Function() startSuccess,
    required TResult Function() completeSuccess,
    required TResult Function() startFailure,
    required TResult Function() completeFailure,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? pLoading,
    TResult? Function()? success,
    TResult? Function()? failure,
    TResult? Function()? startSuccess,
    TResult? Function()? completeSuccess,
    TResult? Function()? startFailure,
    TResult? Function()? completeFailure,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? pLoading,
    TResult Function()? success,
    TResult Function()? failure,
    TResult Function()? startSuccess,
    TResult Function()? completeSuccess,
    TResult Function()? startFailure,
    TResult Function()? completeFailure,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(Loading value) loading,
    required TResult Function(PLoading value) pLoading,
    required TResult Function(Success value) success,
    required TResult Function(Failure value) failure,
    required TResult Function(StartSuccess value) startSuccess,
    required TResult Function(CompleteSuccess value) completeSuccess,
    required TResult Function(StartFailure value) startFailure,
    required TResult Function(CompleteFailure value) completeFailure,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(Loading value)? loading,
    TResult? Function(PLoading value)? pLoading,
    TResult? Function(Success value)? success,
    TResult? Function(Failure value)? failure,
    TResult? Function(StartSuccess value)? startSuccess,
    TResult? Function(CompleteSuccess value)? completeSuccess,
    TResult? Function(StartFailure value)? startFailure,
    TResult? Function(CompleteFailure value)? completeFailure,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(Loading value)? loading,
    TResult Function(PLoading value)? pLoading,
    TResult Function(Success value)? success,
    TResult Function(Failure value)? failure,
    TResult Function(StartSuccess value)? startSuccess,
    TResult Function(CompleteSuccess value)? completeSuccess,
    TResult Function(StartFailure value)? startFailure,
    TResult Function(CompleteFailure value)? completeFailure,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class Loading implements OneNearbyRideState {
  const factory Loading() = _$LoadingImpl;
}

/// @nodoc
abstract class _$$PLoadingImplCopyWith<$Res> {
  factory _$$PLoadingImplCopyWith(
          _$PLoadingImpl value, $Res Function(_$PLoadingImpl) then) =
      __$$PLoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$PLoadingImplCopyWithImpl<$Res>
    extends _$OneNearbyRideStateCopyWithImpl<$Res, _$PLoadingImpl>
    implements _$$PLoadingImplCopyWith<$Res> {
  __$$PLoadingImplCopyWithImpl(
      _$PLoadingImpl _value, $Res Function(_$PLoadingImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$PLoadingImpl implements PLoading {
  const _$PLoadingImpl();

  @override
  String toString() {
    return 'OneNearbyRideState.pLoading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$PLoadingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() pLoading,
    required TResult Function() success,
    required TResult Function() failure,
    required TResult Function() startSuccess,
    required TResult Function() completeSuccess,
    required TResult Function() startFailure,
    required TResult Function() completeFailure,
  }) {
    return pLoading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? pLoading,
    TResult? Function()? success,
    TResult? Function()? failure,
    TResult? Function()? startSuccess,
    TResult? Function()? completeSuccess,
    TResult? Function()? startFailure,
    TResult? Function()? completeFailure,
  }) {
    return pLoading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? pLoading,
    TResult Function()? success,
    TResult Function()? failure,
    TResult Function()? startSuccess,
    TResult Function()? completeSuccess,
    TResult Function()? startFailure,
    TResult Function()? completeFailure,
    required TResult orElse(),
  }) {
    if (pLoading != null) {
      return pLoading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(Loading value) loading,
    required TResult Function(PLoading value) pLoading,
    required TResult Function(Success value) success,
    required TResult Function(Failure value) failure,
    required TResult Function(StartSuccess value) startSuccess,
    required TResult Function(CompleteSuccess value) completeSuccess,
    required TResult Function(StartFailure value) startFailure,
    required TResult Function(CompleteFailure value) completeFailure,
  }) {
    return pLoading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(Loading value)? loading,
    TResult? Function(PLoading value)? pLoading,
    TResult? Function(Success value)? success,
    TResult? Function(Failure value)? failure,
    TResult? Function(StartSuccess value)? startSuccess,
    TResult? Function(CompleteSuccess value)? completeSuccess,
    TResult? Function(StartFailure value)? startFailure,
    TResult? Function(CompleteFailure value)? completeFailure,
  }) {
    return pLoading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(Loading value)? loading,
    TResult Function(PLoading value)? pLoading,
    TResult Function(Success value)? success,
    TResult Function(Failure value)? failure,
    TResult Function(StartSuccess value)? startSuccess,
    TResult Function(CompleteSuccess value)? completeSuccess,
    TResult Function(StartFailure value)? startFailure,
    TResult Function(CompleteFailure value)? completeFailure,
    required TResult orElse(),
  }) {
    if (pLoading != null) {
      return pLoading(this);
    }
    return orElse();
  }
}

abstract class PLoading implements OneNearbyRideState {
  const factory PLoading() = _$PLoadingImpl;
}

/// @nodoc
abstract class _$$SuccessImplCopyWith<$Res> {
  factory _$$SuccessImplCopyWith(
          _$SuccessImpl value, $Res Function(_$SuccessImpl) then) =
      __$$SuccessImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$SuccessImplCopyWithImpl<$Res>
    extends _$OneNearbyRideStateCopyWithImpl<$Res, _$SuccessImpl>
    implements _$$SuccessImplCopyWith<$Res> {
  __$$SuccessImplCopyWithImpl(
      _$SuccessImpl _value, $Res Function(_$SuccessImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$SuccessImpl implements Success {
  const _$SuccessImpl();

  @override
  String toString() {
    return 'OneNearbyRideState.success()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$SuccessImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() pLoading,
    required TResult Function() success,
    required TResult Function() failure,
    required TResult Function() startSuccess,
    required TResult Function() completeSuccess,
    required TResult Function() startFailure,
    required TResult Function() completeFailure,
  }) {
    return success();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? pLoading,
    TResult? Function()? success,
    TResult? Function()? failure,
    TResult? Function()? startSuccess,
    TResult? Function()? completeSuccess,
    TResult? Function()? startFailure,
    TResult? Function()? completeFailure,
  }) {
    return success?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? pLoading,
    TResult Function()? success,
    TResult Function()? failure,
    TResult Function()? startSuccess,
    TResult Function()? completeSuccess,
    TResult Function()? startFailure,
    TResult Function()? completeFailure,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(Loading value) loading,
    required TResult Function(PLoading value) pLoading,
    required TResult Function(Success value) success,
    required TResult Function(Failure value) failure,
    required TResult Function(StartSuccess value) startSuccess,
    required TResult Function(CompleteSuccess value) completeSuccess,
    required TResult Function(StartFailure value) startFailure,
    required TResult Function(CompleteFailure value) completeFailure,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(Loading value)? loading,
    TResult? Function(PLoading value)? pLoading,
    TResult? Function(Success value)? success,
    TResult? Function(Failure value)? failure,
    TResult? Function(StartSuccess value)? startSuccess,
    TResult? Function(CompleteSuccess value)? completeSuccess,
    TResult? Function(StartFailure value)? startFailure,
    TResult? Function(CompleteFailure value)? completeFailure,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(Loading value)? loading,
    TResult Function(PLoading value)? pLoading,
    TResult Function(Success value)? success,
    TResult Function(Failure value)? failure,
    TResult Function(StartSuccess value)? startSuccess,
    TResult Function(CompleteSuccess value)? completeSuccess,
    TResult Function(StartFailure value)? startFailure,
    TResult Function(CompleteFailure value)? completeFailure,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class Success implements OneNearbyRideState {
  const factory Success() = _$SuccessImpl;
}

/// @nodoc
abstract class _$$FailureImplCopyWith<$Res> {
  factory _$$FailureImplCopyWith(
          _$FailureImpl value, $Res Function(_$FailureImpl) then) =
      __$$FailureImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$FailureImplCopyWithImpl<$Res>
    extends _$OneNearbyRideStateCopyWithImpl<$Res, _$FailureImpl>
    implements _$$FailureImplCopyWith<$Res> {
  __$$FailureImplCopyWithImpl(
      _$FailureImpl _value, $Res Function(_$FailureImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$FailureImpl implements Failure {
  const _$FailureImpl();

  @override
  String toString() {
    return 'OneNearbyRideState.failure()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$FailureImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() pLoading,
    required TResult Function() success,
    required TResult Function() failure,
    required TResult Function() startSuccess,
    required TResult Function() completeSuccess,
    required TResult Function() startFailure,
    required TResult Function() completeFailure,
  }) {
    return failure();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? pLoading,
    TResult? Function()? success,
    TResult? Function()? failure,
    TResult? Function()? startSuccess,
    TResult? Function()? completeSuccess,
    TResult? Function()? startFailure,
    TResult? Function()? completeFailure,
  }) {
    return failure?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? pLoading,
    TResult Function()? success,
    TResult Function()? failure,
    TResult Function()? startSuccess,
    TResult Function()? completeSuccess,
    TResult Function()? startFailure,
    TResult Function()? completeFailure,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(Loading value) loading,
    required TResult Function(PLoading value) pLoading,
    required TResult Function(Success value) success,
    required TResult Function(Failure value) failure,
    required TResult Function(StartSuccess value) startSuccess,
    required TResult Function(CompleteSuccess value) completeSuccess,
    required TResult Function(StartFailure value) startFailure,
    required TResult Function(CompleteFailure value) completeFailure,
  }) {
    return failure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(Loading value)? loading,
    TResult? Function(PLoading value)? pLoading,
    TResult? Function(Success value)? success,
    TResult? Function(Failure value)? failure,
    TResult? Function(StartSuccess value)? startSuccess,
    TResult? Function(CompleteSuccess value)? completeSuccess,
    TResult? Function(StartFailure value)? startFailure,
    TResult? Function(CompleteFailure value)? completeFailure,
  }) {
    return failure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(Loading value)? loading,
    TResult Function(PLoading value)? pLoading,
    TResult Function(Success value)? success,
    TResult Function(Failure value)? failure,
    TResult Function(StartSuccess value)? startSuccess,
    TResult Function(CompleteSuccess value)? completeSuccess,
    TResult Function(StartFailure value)? startFailure,
    TResult Function(CompleteFailure value)? completeFailure,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(this);
    }
    return orElse();
  }
}

abstract class Failure implements OneNearbyRideState {
  const factory Failure() = _$FailureImpl;
}

/// @nodoc
abstract class _$$StartSuccessImplCopyWith<$Res> {
  factory _$$StartSuccessImplCopyWith(
          _$StartSuccessImpl value, $Res Function(_$StartSuccessImpl) then) =
      __$$StartSuccessImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$StartSuccessImplCopyWithImpl<$Res>
    extends _$OneNearbyRideStateCopyWithImpl<$Res, _$StartSuccessImpl>
    implements _$$StartSuccessImplCopyWith<$Res> {
  __$$StartSuccessImplCopyWithImpl(
      _$StartSuccessImpl _value, $Res Function(_$StartSuccessImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$StartSuccessImpl implements StartSuccess {
  const _$StartSuccessImpl();

  @override
  String toString() {
    return 'OneNearbyRideState.startSuccess()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$StartSuccessImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() pLoading,
    required TResult Function() success,
    required TResult Function() failure,
    required TResult Function() startSuccess,
    required TResult Function() completeSuccess,
    required TResult Function() startFailure,
    required TResult Function() completeFailure,
  }) {
    return startSuccess();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? pLoading,
    TResult? Function()? success,
    TResult? Function()? failure,
    TResult? Function()? startSuccess,
    TResult? Function()? completeSuccess,
    TResult? Function()? startFailure,
    TResult? Function()? completeFailure,
  }) {
    return startSuccess?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? pLoading,
    TResult Function()? success,
    TResult Function()? failure,
    TResult Function()? startSuccess,
    TResult Function()? completeSuccess,
    TResult Function()? startFailure,
    TResult Function()? completeFailure,
    required TResult orElse(),
  }) {
    if (startSuccess != null) {
      return startSuccess();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(Loading value) loading,
    required TResult Function(PLoading value) pLoading,
    required TResult Function(Success value) success,
    required TResult Function(Failure value) failure,
    required TResult Function(StartSuccess value) startSuccess,
    required TResult Function(CompleteSuccess value) completeSuccess,
    required TResult Function(StartFailure value) startFailure,
    required TResult Function(CompleteFailure value) completeFailure,
  }) {
    return startSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(Loading value)? loading,
    TResult? Function(PLoading value)? pLoading,
    TResult? Function(Success value)? success,
    TResult? Function(Failure value)? failure,
    TResult? Function(StartSuccess value)? startSuccess,
    TResult? Function(CompleteSuccess value)? completeSuccess,
    TResult? Function(StartFailure value)? startFailure,
    TResult? Function(CompleteFailure value)? completeFailure,
  }) {
    return startSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(Loading value)? loading,
    TResult Function(PLoading value)? pLoading,
    TResult Function(Success value)? success,
    TResult Function(Failure value)? failure,
    TResult Function(StartSuccess value)? startSuccess,
    TResult Function(CompleteSuccess value)? completeSuccess,
    TResult Function(StartFailure value)? startFailure,
    TResult Function(CompleteFailure value)? completeFailure,
    required TResult orElse(),
  }) {
    if (startSuccess != null) {
      return startSuccess(this);
    }
    return orElse();
  }
}

abstract class StartSuccess implements OneNearbyRideState {
  const factory StartSuccess() = _$StartSuccessImpl;
}

/// @nodoc
abstract class _$$CompleteSuccessImplCopyWith<$Res> {
  factory _$$CompleteSuccessImplCopyWith(_$CompleteSuccessImpl value,
          $Res Function(_$CompleteSuccessImpl) then) =
      __$$CompleteSuccessImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$CompleteSuccessImplCopyWithImpl<$Res>
    extends _$OneNearbyRideStateCopyWithImpl<$Res, _$CompleteSuccessImpl>
    implements _$$CompleteSuccessImplCopyWith<$Res> {
  __$$CompleteSuccessImplCopyWithImpl(
      _$CompleteSuccessImpl _value, $Res Function(_$CompleteSuccessImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$CompleteSuccessImpl implements CompleteSuccess {
  const _$CompleteSuccessImpl();

  @override
  String toString() {
    return 'OneNearbyRideState.completeSuccess()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$CompleteSuccessImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() pLoading,
    required TResult Function() success,
    required TResult Function() failure,
    required TResult Function() startSuccess,
    required TResult Function() completeSuccess,
    required TResult Function() startFailure,
    required TResult Function() completeFailure,
  }) {
    return completeSuccess();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? pLoading,
    TResult? Function()? success,
    TResult? Function()? failure,
    TResult? Function()? startSuccess,
    TResult? Function()? completeSuccess,
    TResult? Function()? startFailure,
    TResult? Function()? completeFailure,
  }) {
    return completeSuccess?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? pLoading,
    TResult Function()? success,
    TResult Function()? failure,
    TResult Function()? startSuccess,
    TResult Function()? completeSuccess,
    TResult Function()? startFailure,
    TResult Function()? completeFailure,
    required TResult orElse(),
  }) {
    if (completeSuccess != null) {
      return completeSuccess();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(Loading value) loading,
    required TResult Function(PLoading value) pLoading,
    required TResult Function(Success value) success,
    required TResult Function(Failure value) failure,
    required TResult Function(StartSuccess value) startSuccess,
    required TResult Function(CompleteSuccess value) completeSuccess,
    required TResult Function(StartFailure value) startFailure,
    required TResult Function(CompleteFailure value) completeFailure,
  }) {
    return completeSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(Loading value)? loading,
    TResult? Function(PLoading value)? pLoading,
    TResult? Function(Success value)? success,
    TResult? Function(Failure value)? failure,
    TResult? Function(StartSuccess value)? startSuccess,
    TResult? Function(CompleteSuccess value)? completeSuccess,
    TResult? Function(StartFailure value)? startFailure,
    TResult? Function(CompleteFailure value)? completeFailure,
  }) {
    return completeSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(Loading value)? loading,
    TResult Function(PLoading value)? pLoading,
    TResult Function(Success value)? success,
    TResult Function(Failure value)? failure,
    TResult Function(StartSuccess value)? startSuccess,
    TResult Function(CompleteSuccess value)? completeSuccess,
    TResult Function(StartFailure value)? startFailure,
    TResult Function(CompleteFailure value)? completeFailure,
    required TResult orElse(),
  }) {
    if (completeSuccess != null) {
      return completeSuccess(this);
    }
    return orElse();
  }
}

abstract class CompleteSuccess implements OneNearbyRideState {
  const factory CompleteSuccess() = _$CompleteSuccessImpl;
}

/// @nodoc
abstract class _$$StartFailureImplCopyWith<$Res> {
  factory _$$StartFailureImplCopyWith(
          _$StartFailureImpl value, $Res Function(_$StartFailureImpl) then) =
      __$$StartFailureImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$StartFailureImplCopyWithImpl<$Res>
    extends _$OneNearbyRideStateCopyWithImpl<$Res, _$StartFailureImpl>
    implements _$$StartFailureImplCopyWith<$Res> {
  __$$StartFailureImplCopyWithImpl(
      _$StartFailureImpl _value, $Res Function(_$StartFailureImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$StartFailureImpl implements StartFailure {
  const _$StartFailureImpl();

  @override
  String toString() {
    return 'OneNearbyRideState.startFailure()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$StartFailureImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() pLoading,
    required TResult Function() success,
    required TResult Function() failure,
    required TResult Function() startSuccess,
    required TResult Function() completeSuccess,
    required TResult Function() startFailure,
    required TResult Function() completeFailure,
  }) {
    return startFailure();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? pLoading,
    TResult? Function()? success,
    TResult? Function()? failure,
    TResult? Function()? startSuccess,
    TResult? Function()? completeSuccess,
    TResult? Function()? startFailure,
    TResult? Function()? completeFailure,
  }) {
    return startFailure?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? pLoading,
    TResult Function()? success,
    TResult Function()? failure,
    TResult Function()? startSuccess,
    TResult Function()? completeSuccess,
    TResult Function()? startFailure,
    TResult Function()? completeFailure,
    required TResult orElse(),
  }) {
    if (startFailure != null) {
      return startFailure();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(Loading value) loading,
    required TResult Function(PLoading value) pLoading,
    required TResult Function(Success value) success,
    required TResult Function(Failure value) failure,
    required TResult Function(StartSuccess value) startSuccess,
    required TResult Function(CompleteSuccess value) completeSuccess,
    required TResult Function(StartFailure value) startFailure,
    required TResult Function(CompleteFailure value) completeFailure,
  }) {
    return startFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(Loading value)? loading,
    TResult? Function(PLoading value)? pLoading,
    TResult? Function(Success value)? success,
    TResult? Function(Failure value)? failure,
    TResult? Function(StartSuccess value)? startSuccess,
    TResult? Function(CompleteSuccess value)? completeSuccess,
    TResult? Function(StartFailure value)? startFailure,
    TResult? Function(CompleteFailure value)? completeFailure,
  }) {
    return startFailure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(Loading value)? loading,
    TResult Function(PLoading value)? pLoading,
    TResult Function(Success value)? success,
    TResult Function(Failure value)? failure,
    TResult Function(StartSuccess value)? startSuccess,
    TResult Function(CompleteSuccess value)? completeSuccess,
    TResult Function(StartFailure value)? startFailure,
    TResult Function(CompleteFailure value)? completeFailure,
    required TResult orElse(),
  }) {
    if (startFailure != null) {
      return startFailure(this);
    }
    return orElse();
  }
}

abstract class StartFailure implements OneNearbyRideState {
  const factory StartFailure() = _$StartFailureImpl;
}

/// @nodoc
abstract class _$$CompleteFailureImplCopyWith<$Res> {
  factory _$$CompleteFailureImplCopyWith(_$CompleteFailureImpl value,
          $Res Function(_$CompleteFailureImpl) then) =
      __$$CompleteFailureImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$CompleteFailureImplCopyWithImpl<$Res>
    extends _$OneNearbyRideStateCopyWithImpl<$Res, _$CompleteFailureImpl>
    implements _$$CompleteFailureImplCopyWith<$Res> {
  __$$CompleteFailureImplCopyWithImpl(
      _$CompleteFailureImpl _value, $Res Function(_$CompleteFailureImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$CompleteFailureImpl implements CompleteFailure {
  const _$CompleteFailureImpl();

  @override
  String toString() {
    return 'OneNearbyRideState.completeFailure()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$CompleteFailureImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() pLoading,
    required TResult Function() success,
    required TResult Function() failure,
    required TResult Function() startSuccess,
    required TResult Function() completeSuccess,
    required TResult Function() startFailure,
    required TResult Function() completeFailure,
  }) {
    return completeFailure();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? pLoading,
    TResult? Function()? success,
    TResult? Function()? failure,
    TResult? Function()? startSuccess,
    TResult? Function()? completeSuccess,
    TResult? Function()? startFailure,
    TResult? Function()? completeFailure,
  }) {
    return completeFailure?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? pLoading,
    TResult Function()? success,
    TResult Function()? failure,
    TResult Function()? startSuccess,
    TResult Function()? completeSuccess,
    TResult Function()? startFailure,
    TResult Function()? completeFailure,
    required TResult orElse(),
  }) {
    if (completeFailure != null) {
      return completeFailure();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(Loading value) loading,
    required TResult Function(PLoading value) pLoading,
    required TResult Function(Success value) success,
    required TResult Function(Failure value) failure,
    required TResult Function(StartSuccess value) startSuccess,
    required TResult Function(CompleteSuccess value) completeSuccess,
    required TResult Function(StartFailure value) startFailure,
    required TResult Function(CompleteFailure value) completeFailure,
  }) {
    return completeFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(Loading value)? loading,
    TResult? Function(PLoading value)? pLoading,
    TResult? Function(Success value)? success,
    TResult? Function(Failure value)? failure,
    TResult? Function(StartSuccess value)? startSuccess,
    TResult? Function(CompleteSuccess value)? completeSuccess,
    TResult? Function(StartFailure value)? startFailure,
    TResult? Function(CompleteFailure value)? completeFailure,
  }) {
    return completeFailure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(Loading value)? loading,
    TResult Function(PLoading value)? pLoading,
    TResult Function(Success value)? success,
    TResult Function(Failure value)? failure,
    TResult Function(StartSuccess value)? startSuccess,
    TResult Function(CompleteSuccess value)? completeSuccess,
    TResult Function(StartFailure value)? startFailure,
    TResult Function(CompleteFailure value)? completeFailure,
    required TResult orElse(),
  }) {
    if (completeFailure != null) {
      return completeFailure(this);
    }
    return orElse();
  }
}

abstract class CompleteFailure implements OneNearbyRideState {
  const factory CompleteFailure() = _$CompleteFailureImpl;
}
