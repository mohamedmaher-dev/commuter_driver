// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'nearby_rides_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$NearbyRidesEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(int index) acceptRide,
    required TResult Function(LatLng location) goTo,
    required TResult Function(GoogleMapController controller) onMapCreated,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(int index)? acceptRide,
    TResult? Function(LatLng location)? goTo,
    TResult? Function(GoogleMapController controller)? onMapCreated,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(int index)? acceptRide,
    TResult Function(LatLng location)? goTo,
    TResult Function(GoogleMapController controller)? onMapCreated,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(AcceptRide value) acceptRide,
    required TResult Function(GoTo value) goTo,
    required TResult Function(OnMapCreated value) onMapCreated,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(AcceptRide value)? acceptRide,
    TResult? Function(GoTo value)? goTo,
    TResult? Function(OnMapCreated value)? onMapCreated,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(AcceptRide value)? acceptRide,
    TResult Function(GoTo value)? goTo,
    TResult Function(OnMapCreated value)? onMapCreated,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NearbyRidesEventCopyWith<$Res> {
  factory $NearbyRidesEventCopyWith(
          NearbyRidesEvent value, $Res Function(NearbyRidesEvent) then) =
      _$NearbyRidesEventCopyWithImpl<$Res, NearbyRidesEvent>;
}

/// @nodoc
class _$NearbyRidesEventCopyWithImpl<$Res, $Val extends NearbyRidesEvent>
    implements $NearbyRidesEventCopyWith<$Res> {
  _$NearbyRidesEventCopyWithImpl(this._value, this._then);

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
    extends _$NearbyRidesEventCopyWithImpl<$Res, _$StartedImpl>
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
    return 'NearbyRidesEvent.started()';
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
    required TResult Function(int index) acceptRide,
    required TResult Function(LatLng location) goTo,
    required TResult Function(GoogleMapController controller) onMapCreated,
  }) {
    return started();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(int index)? acceptRide,
    TResult? Function(LatLng location)? goTo,
    TResult? Function(GoogleMapController controller)? onMapCreated,
  }) {
    return started?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(int index)? acceptRide,
    TResult Function(LatLng location)? goTo,
    TResult Function(GoogleMapController controller)? onMapCreated,
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
    required TResult Function(AcceptRide value) acceptRide,
    required TResult Function(GoTo value) goTo,
    required TResult Function(OnMapCreated value) onMapCreated,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(AcceptRide value)? acceptRide,
    TResult? Function(GoTo value)? goTo,
    TResult? Function(OnMapCreated value)? onMapCreated,
  }) {
    return started?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(AcceptRide value)? acceptRide,
    TResult Function(GoTo value)? goTo,
    TResult Function(OnMapCreated value)? onMapCreated,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class _Started implements NearbyRidesEvent {
  const factory _Started() = _$StartedImpl;
}

/// @nodoc
abstract class _$$AcceptRideImplCopyWith<$Res> {
  factory _$$AcceptRideImplCopyWith(
          _$AcceptRideImpl value, $Res Function(_$AcceptRideImpl) then) =
      __$$AcceptRideImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int index});
}

/// @nodoc
class __$$AcceptRideImplCopyWithImpl<$Res>
    extends _$NearbyRidesEventCopyWithImpl<$Res, _$AcceptRideImpl>
    implements _$$AcceptRideImplCopyWith<$Res> {
  __$$AcceptRideImplCopyWithImpl(
      _$AcceptRideImpl _value, $Res Function(_$AcceptRideImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? index = null,
  }) {
    return _then(_$AcceptRideImpl(
      null == index
          ? _value.index
          : index // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$AcceptRideImpl implements AcceptRide {
  const _$AcceptRideImpl(this.index);

  @override
  final int index;

  @override
  String toString() {
    return 'NearbyRidesEvent.acceptRide(index: $index)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AcceptRideImpl &&
            (identical(other.index, index) || other.index == index));
  }

  @override
  int get hashCode => Object.hash(runtimeType, index);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AcceptRideImplCopyWith<_$AcceptRideImpl> get copyWith =>
      __$$AcceptRideImplCopyWithImpl<_$AcceptRideImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(int index) acceptRide,
    required TResult Function(LatLng location) goTo,
    required TResult Function(GoogleMapController controller) onMapCreated,
  }) {
    return acceptRide(index);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(int index)? acceptRide,
    TResult? Function(LatLng location)? goTo,
    TResult? Function(GoogleMapController controller)? onMapCreated,
  }) {
    return acceptRide?.call(index);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(int index)? acceptRide,
    TResult Function(LatLng location)? goTo,
    TResult Function(GoogleMapController controller)? onMapCreated,
    required TResult orElse(),
  }) {
    if (acceptRide != null) {
      return acceptRide(index);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(AcceptRide value) acceptRide,
    required TResult Function(GoTo value) goTo,
    required TResult Function(OnMapCreated value) onMapCreated,
  }) {
    return acceptRide(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(AcceptRide value)? acceptRide,
    TResult? Function(GoTo value)? goTo,
    TResult? Function(OnMapCreated value)? onMapCreated,
  }) {
    return acceptRide?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(AcceptRide value)? acceptRide,
    TResult Function(GoTo value)? goTo,
    TResult Function(OnMapCreated value)? onMapCreated,
    required TResult orElse(),
  }) {
    if (acceptRide != null) {
      return acceptRide(this);
    }
    return orElse();
  }
}

abstract class AcceptRide implements NearbyRidesEvent {
  const factory AcceptRide(final int index) = _$AcceptRideImpl;

  int get index;
  @JsonKey(ignore: true)
  _$$AcceptRideImplCopyWith<_$AcceptRideImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$GoToImplCopyWith<$Res> {
  factory _$$GoToImplCopyWith(
          _$GoToImpl value, $Res Function(_$GoToImpl) then) =
      __$$GoToImplCopyWithImpl<$Res>;
  @useResult
  $Res call({LatLng location});
}

/// @nodoc
class __$$GoToImplCopyWithImpl<$Res>
    extends _$NearbyRidesEventCopyWithImpl<$Res, _$GoToImpl>
    implements _$$GoToImplCopyWith<$Res> {
  __$$GoToImplCopyWithImpl(_$GoToImpl _value, $Res Function(_$GoToImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? location = null,
  }) {
    return _then(_$GoToImpl(
      null == location
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as LatLng,
    ));
  }
}

/// @nodoc

class _$GoToImpl implements GoTo {
  const _$GoToImpl(this.location);

  @override
  final LatLng location;

  @override
  String toString() {
    return 'NearbyRidesEvent.goTo(location: $location)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GoToImpl &&
            (identical(other.location, location) ||
                other.location == location));
  }

  @override
  int get hashCode => Object.hash(runtimeType, location);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GoToImplCopyWith<_$GoToImpl> get copyWith =>
      __$$GoToImplCopyWithImpl<_$GoToImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(int index) acceptRide,
    required TResult Function(LatLng location) goTo,
    required TResult Function(GoogleMapController controller) onMapCreated,
  }) {
    return goTo(location);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(int index)? acceptRide,
    TResult? Function(LatLng location)? goTo,
    TResult? Function(GoogleMapController controller)? onMapCreated,
  }) {
    return goTo?.call(location);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(int index)? acceptRide,
    TResult Function(LatLng location)? goTo,
    TResult Function(GoogleMapController controller)? onMapCreated,
    required TResult orElse(),
  }) {
    if (goTo != null) {
      return goTo(location);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(AcceptRide value) acceptRide,
    required TResult Function(GoTo value) goTo,
    required TResult Function(OnMapCreated value) onMapCreated,
  }) {
    return goTo(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(AcceptRide value)? acceptRide,
    TResult? Function(GoTo value)? goTo,
    TResult? Function(OnMapCreated value)? onMapCreated,
  }) {
    return goTo?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(AcceptRide value)? acceptRide,
    TResult Function(GoTo value)? goTo,
    TResult Function(OnMapCreated value)? onMapCreated,
    required TResult orElse(),
  }) {
    if (goTo != null) {
      return goTo(this);
    }
    return orElse();
  }
}

abstract class GoTo implements NearbyRidesEvent {
  const factory GoTo(final LatLng location) = _$GoToImpl;

  LatLng get location;
  @JsonKey(ignore: true)
  _$$GoToImplCopyWith<_$GoToImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$OnMapCreatedImplCopyWith<$Res> {
  factory _$$OnMapCreatedImplCopyWith(
          _$OnMapCreatedImpl value, $Res Function(_$OnMapCreatedImpl) then) =
      __$$OnMapCreatedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({GoogleMapController controller});
}

/// @nodoc
class __$$OnMapCreatedImplCopyWithImpl<$Res>
    extends _$NearbyRidesEventCopyWithImpl<$Res, _$OnMapCreatedImpl>
    implements _$$OnMapCreatedImplCopyWith<$Res> {
  __$$OnMapCreatedImplCopyWithImpl(
      _$OnMapCreatedImpl _value, $Res Function(_$OnMapCreatedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? controller = null,
  }) {
    return _then(_$OnMapCreatedImpl(
      null == controller
          ? _value.controller
          : controller // ignore: cast_nullable_to_non_nullable
              as GoogleMapController,
    ));
  }
}

/// @nodoc

class _$OnMapCreatedImpl implements OnMapCreated {
  const _$OnMapCreatedImpl(this.controller);

  @override
  final GoogleMapController controller;

  @override
  String toString() {
    return 'NearbyRidesEvent.onMapCreated(controller: $controller)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OnMapCreatedImpl &&
            (identical(other.controller, controller) ||
                other.controller == controller));
  }

  @override
  int get hashCode => Object.hash(runtimeType, controller);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$OnMapCreatedImplCopyWith<_$OnMapCreatedImpl> get copyWith =>
      __$$OnMapCreatedImplCopyWithImpl<_$OnMapCreatedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(int index) acceptRide,
    required TResult Function(LatLng location) goTo,
    required TResult Function(GoogleMapController controller) onMapCreated,
  }) {
    return onMapCreated(controller);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(int index)? acceptRide,
    TResult? Function(LatLng location)? goTo,
    TResult? Function(GoogleMapController controller)? onMapCreated,
  }) {
    return onMapCreated?.call(controller);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(int index)? acceptRide,
    TResult Function(LatLng location)? goTo,
    TResult Function(GoogleMapController controller)? onMapCreated,
    required TResult orElse(),
  }) {
    if (onMapCreated != null) {
      return onMapCreated(controller);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(AcceptRide value) acceptRide,
    required TResult Function(GoTo value) goTo,
    required TResult Function(OnMapCreated value) onMapCreated,
  }) {
    return onMapCreated(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(AcceptRide value)? acceptRide,
    TResult? Function(GoTo value)? goTo,
    TResult? Function(OnMapCreated value)? onMapCreated,
  }) {
    return onMapCreated?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(AcceptRide value)? acceptRide,
    TResult Function(GoTo value)? goTo,
    TResult Function(OnMapCreated value)? onMapCreated,
    required TResult orElse(),
  }) {
    if (onMapCreated != null) {
      return onMapCreated(this);
    }
    return orElse();
  }
}

abstract class OnMapCreated implements NearbyRidesEvent {
  const factory OnMapCreated(final GoogleMapController controller) =
      _$OnMapCreatedImpl;

  GoogleMapController get controller;
  @JsonKey(ignore: true)
  _$$OnMapCreatedImplCopyWith<_$OnMapCreatedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$NearbyRidesState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() getRidesLoading,
    required TResult Function() getRidesSuccess,
    required TResult Function() getRidesFailure,
    required TResult Function() acceptLoading,
    required TResult Function() acceptSuccess,
    required TResult Function() acceptFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? getRidesLoading,
    TResult? Function()? getRidesSuccess,
    TResult? Function()? getRidesFailure,
    TResult? Function()? acceptLoading,
    TResult? Function()? acceptSuccess,
    TResult? Function()? acceptFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? getRidesLoading,
    TResult Function()? getRidesSuccess,
    TResult Function()? getRidesFailure,
    TResult Function()? acceptLoading,
    TResult Function()? acceptSuccess,
    TResult Function()? acceptFailure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(GetRidesLoading value) getRidesLoading,
    required TResult Function(GetRidesSuccess value) getRidesSuccess,
    required TResult Function(GetRidesFailure value) getRidesFailure,
    required TResult Function(AcceptLoading value) acceptLoading,
    required TResult Function(AcceptSuccess value) acceptSuccess,
    required TResult Function(AcceptFailure value) acceptFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(GetRidesLoading value)? getRidesLoading,
    TResult? Function(GetRidesSuccess value)? getRidesSuccess,
    TResult? Function(GetRidesFailure value)? getRidesFailure,
    TResult? Function(AcceptLoading value)? acceptLoading,
    TResult? Function(AcceptSuccess value)? acceptSuccess,
    TResult? Function(AcceptFailure value)? acceptFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(GetRidesLoading value)? getRidesLoading,
    TResult Function(GetRidesSuccess value)? getRidesSuccess,
    TResult Function(GetRidesFailure value)? getRidesFailure,
    TResult Function(AcceptLoading value)? acceptLoading,
    TResult Function(AcceptSuccess value)? acceptSuccess,
    TResult Function(AcceptFailure value)? acceptFailure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NearbyRidesStateCopyWith<$Res> {
  factory $NearbyRidesStateCopyWith(
          NearbyRidesState value, $Res Function(NearbyRidesState) then) =
      _$NearbyRidesStateCopyWithImpl<$Res, NearbyRidesState>;
}

/// @nodoc
class _$NearbyRidesStateCopyWithImpl<$Res, $Val extends NearbyRidesState>
    implements $NearbyRidesStateCopyWith<$Res> {
  _$NearbyRidesStateCopyWithImpl(this._value, this._then);

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
    extends _$NearbyRidesStateCopyWithImpl<$Res, _$InitialImpl>
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
    return 'NearbyRidesState.initial()';
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
    required TResult Function() getRidesLoading,
    required TResult Function() getRidesSuccess,
    required TResult Function() getRidesFailure,
    required TResult Function() acceptLoading,
    required TResult Function() acceptSuccess,
    required TResult Function() acceptFailure,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? getRidesLoading,
    TResult? Function()? getRidesSuccess,
    TResult? Function()? getRidesFailure,
    TResult? Function()? acceptLoading,
    TResult? Function()? acceptSuccess,
    TResult? Function()? acceptFailure,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? getRidesLoading,
    TResult Function()? getRidesSuccess,
    TResult Function()? getRidesFailure,
    TResult Function()? acceptLoading,
    TResult Function()? acceptSuccess,
    TResult Function()? acceptFailure,
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
    required TResult Function(GetRidesLoading value) getRidesLoading,
    required TResult Function(GetRidesSuccess value) getRidesSuccess,
    required TResult Function(GetRidesFailure value) getRidesFailure,
    required TResult Function(AcceptLoading value) acceptLoading,
    required TResult Function(AcceptSuccess value) acceptSuccess,
    required TResult Function(AcceptFailure value) acceptFailure,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(GetRidesLoading value)? getRidesLoading,
    TResult? Function(GetRidesSuccess value)? getRidesSuccess,
    TResult? Function(GetRidesFailure value)? getRidesFailure,
    TResult? Function(AcceptLoading value)? acceptLoading,
    TResult? Function(AcceptSuccess value)? acceptSuccess,
    TResult? Function(AcceptFailure value)? acceptFailure,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(GetRidesLoading value)? getRidesLoading,
    TResult Function(GetRidesSuccess value)? getRidesSuccess,
    TResult Function(GetRidesFailure value)? getRidesFailure,
    TResult Function(AcceptLoading value)? acceptLoading,
    TResult Function(AcceptSuccess value)? acceptSuccess,
    TResult Function(AcceptFailure value)? acceptFailure,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements NearbyRidesState {
  const factory _Initial() = _$InitialImpl;
}

/// @nodoc
abstract class _$$GetRidesLoadingImplCopyWith<$Res> {
  factory _$$GetRidesLoadingImplCopyWith(_$GetRidesLoadingImpl value,
          $Res Function(_$GetRidesLoadingImpl) then) =
      __$$GetRidesLoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$GetRidesLoadingImplCopyWithImpl<$Res>
    extends _$NearbyRidesStateCopyWithImpl<$Res, _$GetRidesLoadingImpl>
    implements _$$GetRidesLoadingImplCopyWith<$Res> {
  __$$GetRidesLoadingImplCopyWithImpl(
      _$GetRidesLoadingImpl _value, $Res Function(_$GetRidesLoadingImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$GetRidesLoadingImpl implements GetRidesLoading {
  const _$GetRidesLoadingImpl();

  @override
  String toString() {
    return 'NearbyRidesState.getRidesLoading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$GetRidesLoadingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() getRidesLoading,
    required TResult Function() getRidesSuccess,
    required TResult Function() getRidesFailure,
    required TResult Function() acceptLoading,
    required TResult Function() acceptSuccess,
    required TResult Function() acceptFailure,
  }) {
    return getRidesLoading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? getRidesLoading,
    TResult? Function()? getRidesSuccess,
    TResult? Function()? getRidesFailure,
    TResult? Function()? acceptLoading,
    TResult? Function()? acceptSuccess,
    TResult? Function()? acceptFailure,
  }) {
    return getRidesLoading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? getRidesLoading,
    TResult Function()? getRidesSuccess,
    TResult Function()? getRidesFailure,
    TResult Function()? acceptLoading,
    TResult Function()? acceptSuccess,
    TResult Function()? acceptFailure,
    required TResult orElse(),
  }) {
    if (getRidesLoading != null) {
      return getRidesLoading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(GetRidesLoading value) getRidesLoading,
    required TResult Function(GetRidesSuccess value) getRidesSuccess,
    required TResult Function(GetRidesFailure value) getRidesFailure,
    required TResult Function(AcceptLoading value) acceptLoading,
    required TResult Function(AcceptSuccess value) acceptSuccess,
    required TResult Function(AcceptFailure value) acceptFailure,
  }) {
    return getRidesLoading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(GetRidesLoading value)? getRidesLoading,
    TResult? Function(GetRidesSuccess value)? getRidesSuccess,
    TResult? Function(GetRidesFailure value)? getRidesFailure,
    TResult? Function(AcceptLoading value)? acceptLoading,
    TResult? Function(AcceptSuccess value)? acceptSuccess,
    TResult? Function(AcceptFailure value)? acceptFailure,
  }) {
    return getRidesLoading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(GetRidesLoading value)? getRidesLoading,
    TResult Function(GetRidesSuccess value)? getRidesSuccess,
    TResult Function(GetRidesFailure value)? getRidesFailure,
    TResult Function(AcceptLoading value)? acceptLoading,
    TResult Function(AcceptSuccess value)? acceptSuccess,
    TResult Function(AcceptFailure value)? acceptFailure,
    required TResult orElse(),
  }) {
    if (getRidesLoading != null) {
      return getRidesLoading(this);
    }
    return orElse();
  }
}

abstract class GetRidesLoading implements NearbyRidesState {
  const factory GetRidesLoading() = _$GetRidesLoadingImpl;
}

/// @nodoc
abstract class _$$GetRidesSuccessImplCopyWith<$Res> {
  factory _$$GetRidesSuccessImplCopyWith(_$GetRidesSuccessImpl value,
          $Res Function(_$GetRidesSuccessImpl) then) =
      __$$GetRidesSuccessImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$GetRidesSuccessImplCopyWithImpl<$Res>
    extends _$NearbyRidesStateCopyWithImpl<$Res, _$GetRidesSuccessImpl>
    implements _$$GetRidesSuccessImplCopyWith<$Res> {
  __$$GetRidesSuccessImplCopyWithImpl(
      _$GetRidesSuccessImpl _value, $Res Function(_$GetRidesSuccessImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$GetRidesSuccessImpl implements GetRidesSuccess {
  const _$GetRidesSuccessImpl();

  @override
  String toString() {
    return 'NearbyRidesState.getRidesSuccess()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$GetRidesSuccessImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() getRidesLoading,
    required TResult Function() getRidesSuccess,
    required TResult Function() getRidesFailure,
    required TResult Function() acceptLoading,
    required TResult Function() acceptSuccess,
    required TResult Function() acceptFailure,
  }) {
    return getRidesSuccess();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? getRidesLoading,
    TResult? Function()? getRidesSuccess,
    TResult? Function()? getRidesFailure,
    TResult? Function()? acceptLoading,
    TResult? Function()? acceptSuccess,
    TResult? Function()? acceptFailure,
  }) {
    return getRidesSuccess?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? getRidesLoading,
    TResult Function()? getRidesSuccess,
    TResult Function()? getRidesFailure,
    TResult Function()? acceptLoading,
    TResult Function()? acceptSuccess,
    TResult Function()? acceptFailure,
    required TResult orElse(),
  }) {
    if (getRidesSuccess != null) {
      return getRidesSuccess();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(GetRidesLoading value) getRidesLoading,
    required TResult Function(GetRidesSuccess value) getRidesSuccess,
    required TResult Function(GetRidesFailure value) getRidesFailure,
    required TResult Function(AcceptLoading value) acceptLoading,
    required TResult Function(AcceptSuccess value) acceptSuccess,
    required TResult Function(AcceptFailure value) acceptFailure,
  }) {
    return getRidesSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(GetRidesLoading value)? getRidesLoading,
    TResult? Function(GetRidesSuccess value)? getRidesSuccess,
    TResult? Function(GetRidesFailure value)? getRidesFailure,
    TResult? Function(AcceptLoading value)? acceptLoading,
    TResult? Function(AcceptSuccess value)? acceptSuccess,
    TResult? Function(AcceptFailure value)? acceptFailure,
  }) {
    return getRidesSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(GetRidesLoading value)? getRidesLoading,
    TResult Function(GetRidesSuccess value)? getRidesSuccess,
    TResult Function(GetRidesFailure value)? getRidesFailure,
    TResult Function(AcceptLoading value)? acceptLoading,
    TResult Function(AcceptSuccess value)? acceptSuccess,
    TResult Function(AcceptFailure value)? acceptFailure,
    required TResult orElse(),
  }) {
    if (getRidesSuccess != null) {
      return getRidesSuccess(this);
    }
    return orElse();
  }
}

abstract class GetRidesSuccess implements NearbyRidesState {
  const factory GetRidesSuccess() = _$GetRidesSuccessImpl;
}

/// @nodoc
abstract class _$$GetRidesFailureImplCopyWith<$Res> {
  factory _$$GetRidesFailureImplCopyWith(_$GetRidesFailureImpl value,
          $Res Function(_$GetRidesFailureImpl) then) =
      __$$GetRidesFailureImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$GetRidesFailureImplCopyWithImpl<$Res>
    extends _$NearbyRidesStateCopyWithImpl<$Res, _$GetRidesFailureImpl>
    implements _$$GetRidesFailureImplCopyWith<$Res> {
  __$$GetRidesFailureImplCopyWithImpl(
      _$GetRidesFailureImpl _value, $Res Function(_$GetRidesFailureImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$GetRidesFailureImpl implements GetRidesFailure {
  const _$GetRidesFailureImpl();

  @override
  String toString() {
    return 'NearbyRidesState.getRidesFailure()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$GetRidesFailureImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() getRidesLoading,
    required TResult Function() getRidesSuccess,
    required TResult Function() getRidesFailure,
    required TResult Function() acceptLoading,
    required TResult Function() acceptSuccess,
    required TResult Function() acceptFailure,
  }) {
    return getRidesFailure();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? getRidesLoading,
    TResult? Function()? getRidesSuccess,
    TResult? Function()? getRidesFailure,
    TResult? Function()? acceptLoading,
    TResult? Function()? acceptSuccess,
    TResult? Function()? acceptFailure,
  }) {
    return getRidesFailure?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? getRidesLoading,
    TResult Function()? getRidesSuccess,
    TResult Function()? getRidesFailure,
    TResult Function()? acceptLoading,
    TResult Function()? acceptSuccess,
    TResult Function()? acceptFailure,
    required TResult orElse(),
  }) {
    if (getRidesFailure != null) {
      return getRidesFailure();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(GetRidesLoading value) getRidesLoading,
    required TResult Function(GetRidesSuccess value) getRidesSuccess,
    required TResult Function(GetRidesFailure value) getRidesFailure,
    required TResult Function(AcceptLoading value) acceptLoading,
    required TResult Function(AcceptSuccess value) acceptSuccess,
    required TResult Function(AcceptFailure value) acceptFailure,
  }) {
    return getRidesFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(GetRidesLoading value)? getRidesLoading,
    TResult? Function(GetRidesSuccess value)? getRidesSuccess,
    TResult? Function(GetRidesFailure value)? getRidesFailure,
    TResult? Function(AcceptLoading value)? acceptLoading,
    TResult? Function(AcceptSuccess value)? acceptSuccess,
    TResult? Function(AcceptFailure value)? acceptFailure,
  }) {
    return getRidesFailure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(GetRidesLoading value)? getRidesLoading,
    TResult Function(GetRidesSuccess value)? getRidesSuccess,
    TResult Function(GetRidesFailure value)? getRidesFailure,
    TResult Function(AcceptLoading value)? acceptLoading,
    TResult Function(AcceptSuccess value)? acceptSuccess,
    TResult Function(AcceptFailure value)? acceptFailure,
    required TResult orElse(),
  }) {
    if (getRidesFailure != null) {
      return getRidesFailure(this);
    }
    return orElse();
  }
}

abstract class GetRidesFailure implements NearbyRidesState {
  const factory GetRidesFailure() = _$GetRidesFailureImpl;
}

/// @nodoc
abstract class _$$AcceptLoadingImplCopyWith<$Res> {
  factory _$$AcceptLoadingImplCopyWith(
          _$AcceptLoadingImpl value, $Res Function(_$AcceptLoadingImpl) then) =
      __$$AcceptLoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$AcceptLoadingImplCopyWithImpl<$Res>
    extends _$NearbyRidesStateCopyWithImpl<$Res, _$AcceptLoadingImpl>
    implements _$$AcceptLoadingImplCopyWith<$Res> {
  __$$AcceptLoadingImplCopyWithImpl(
      _$AcceptLoadingImpl _value, $Res Function(_$AcceptLoadingImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$AcceptLoadingImpl implements AcceptLoading {
  const _$AcceptLoadingImpl();

  @override
  String toString() {
    return 'NearbyRidesState.acceptLoading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$AcceptLoadingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() getRidesLoading,
    required TResult Function() getRidesSuccess,
    required TResult Function() getRidesFailure,
    required TResult Function() acceptLoading,
    required TResult Function() acceptSuccess,
    required TResult Function() acceptFailure,
  }) {
    return acceptLoading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? getRidesLoading,
    TResult? Function()? getRidesSuccess,
    TResult? Function()? getRidesFailure,
    TResult? Function()? acceptLoading,
    TResult? Function()? acceptSuccess,
    TResult? Function()? acceptFailure,
  }) {
    return acceptLoading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? getRidesLoading,
    TResult Function()? getRidesSuccess,
    TResult Function()? getRidesFailure,
    TResult Function()? acceptLoading,
    TResult Function()? acceptSuccess,
    TResult Function()? acceptFailure,
    required TResult orElse(),
  }) {
    if (acceptLoading != null) {
      return acceptLoading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(GetRidesLoading value) getRidesLoading,
    required TResult Function(GetRidesSuccess value) getRidesSuccess,
    required TResult Function(GetRidesFailure value) getRidesFailure,
    required TResult Function(AcceptLoading value) acceptLoading,
    required TResult Function(AcceptSuccess value) acceptSuccess,
    required TResult Function(AcceptFailure value) acceptFailure,
  }) {
    return acceptLoading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(GetRidesLoading value)? getRidesLoading,
    TResult? Function(GetRidesSuccess value)? getRidesSuccess,
    TResult? Function(GetRidesFailure value)? getRidesFailure,
    TResult? Function(AcceptLoading value)? acceptLoading,
    TResult? Function(AcceptSuccess value)? acceptSuccess,
    TResult? Function(AcceptFailure value)? acceptFailure,
  }) {
    return acceptLoading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(GetRidesLoading value)? getRidesLoading,
    TResult Function(GetRidesSuccess value)? getRidesSuccess,
    TResult Function(GetRidesFailure value)? getRidesFailure,
    TResult Function(AcceptLoading value)? acceptLoading,
    TResult Function(AcceptSuccess value)? acceptSuccess,
    TResult Function(AcceptFailure value)? acceptFailure,
    required TResult orElse(),
  }) {
    if (acceptLoading != null) {
      return acceptLoading(this);
    }
    return orElse();
  }
}

abstract class AcceptLoading implements NearbyRidesState {
  const factory AcceptLoading() = _$AcceptLoadingImpl;
}

/// @nodoc
abstract class _$$AcceptSuccessImplCopyWith<$Res> {
  factory _$$AcceptSuccessImplCopyWith(
          _$AcceptSuccessImpl value, $Res Function(_$AcceptSuccessImpl) then) =
      __$$AcceptSuccessImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$AcceptSuccessImplCopyWithImpl<$Res>
    extends _$NearbyRidesStateCopyWithImpl<$Res, _$AcceptSuccessImpl>
    implements _$$AcceptSuccessImplCopyWith<$Res> {
  __$$AcceptSuccessImplCopyWithImpl(
      _$AcceptSuccessImpl _value, $Res Function(_$AcceptSuccessImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$AcceptSuccessImpl implements AcceptSuccess {
  const _$AcceptSuccessImpl();

  @override
  String toString() {
    return 'NearbyRidesState.acceptSuccess()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$AcceptSuccessImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() getRidesLoading,
    required TResult Function() getRidesSuccess,
    required TResult Function() getRidesFailure,
    required TResult Function() acceptLoading,
    required TResult Function() acceptSuccess,
    required TResult Function() acceptFailure,
  }) {
    return acceptSuccess();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? getRidesLoading,
    TResult? Function()? getRidesSuccess,
    TResult? Function()? getRidesFailure,
    TResult? Function()? acceptLoading,
    TResult? Function()? acceptSuccess,
    TResult? Function()? acceptFailure,
  }) {
    return acceptSuccess?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? getRidesLoading,
    TResult Function()? getRidesSuccess,
    TResult Function()? getRidesFailure,
    TResult Function()? acceptLoading,
    TResult Function()? acceptSuccess,
    TResult Function()? acceptFailure,
    required TResult orElse(),
  }) {
    if (acceptSuccess != null) {
      return acceptSuccess();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(GetRidesLoading value) getRidesLoading,
    required TResult Function(GetRidesSuccess value) getRidesSuccess,
    required TResult Function(GetRidesFailure value) getRidesFailure,
    required TResult Function(AcceptLoading value) acceptLoading,
    required TResult Function(AcceptSuccess value) acceptSuccess,
    required TResult Function(AcceptFailure value) acceptFailure,
  }) {
    return acceptSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(GetRidesLoading value)? getRidesLoading,
    TResult? Function(GetRidesSuccess value)? getRidesSuccess,
    TResult? Function(GetRidesFailure value)? getRidesFailure,
    TResult? Function(AcceptLoading value)? acceptLoading,
    TResult? Function(AcceptSuccess value)? acceptSuccess,
    TResult? Function(AcceptFailure value)? acceptFailure,
  }) {
    return acceptSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(GetRidesLoading value)? getRidesLoading,
    TResult Function(GetRidesSuccess value)? getRidesSuccess,
    TResult Function(GetRidesFailure value)? getRidesFailure,
    TResult Function(AcceptLoading value)? acceptLoading,
    TResult Function(AcceptSuccess value)? acceptSuccess,
    TResult Function(AcceptFailure value)? acceptFailure,
    required TResult orElse(),
  }) {
    if (acceptSuccess != null) {
      return acceptSuccess(this);
    }
    return orElse();
  }
}

abstract class AcceptSuccess implements NearbyRidesState {
  const factory AcceptSuccess() = _$AcceptSuccessImpl;
}

/// @nodoc
abstract class _$$AcceptFailureImplCopyWith<$Res> {
  factory _$$AcceptFailureImplCopyWith(
          _$AcceptFailureImpl value, $Res Function(_$AcceptFailureImpl) then) =
      __$$AcceptFailureImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$AcceptFailureImplCopyWithImpl<$Res>
    extends _$NearbyRidesStateCopyWithImpl<$Res, _$AcceptFailureImpl>
    implements _$$AcceptFailureImplCopyWith<$Res> {
  __$$AcceptFailureImplCopyWithImpl(
      _$AcceptFailureImpl _value, $Res Function(_$AcceptFailureImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$AcceptFailureImpl implements AcceptFailure {
  const _$AcceptFailureImpl();

  @override
  String toString() {
    return 'NearbyRidesState.acceptFailure()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$AcceptFailureImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() getRidesLoading,
    required TResult Function() getRidesSuccess,
    required TResult Function() getRidesFailure,
    required TResult Function() acceptLoading,
    required TResult Function() acceptSuccess,
    required TResult Function() acceptFailure,
  }) {
    return acceptFailure();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? getRidesLoading,
    TResult? Function()? getRidesSuccess,
    TResult? Function()? getRidesFailure,
    TResult? Function()? acceptLoading,
    TResult? Function()? acceptSuccess,
    TResult? Function()? acceptFailure,
  }) {
    return acceptFailure?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? getRidesLoading,
    TResult Function()? getRidesSuccess,
    TResult Function()? getRidesFailure,
    TResult Function()? acceptLoading,
    TResult Function()? acceptSuccess,
    TResult Function()? acceptFailure,
    required TResult orElse(),
  }) {
    if (acceptFailure != null) {
      return acceptFailure();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(GetRidesLoading value) getRidesLoading,
    required TResult Function(GetRidesSuccess value) getRidesSuccess,
    required TResult Function(GetRidesFailure value) getRidesFailure,
    required TResult Function(AcceptLoading value) acceptLoading,
    required TResult Function(AcceptSuccess value) acceptSuccess,
    required TResult Function(AcceptFailure value) acceptFailure,
  }) {
    return acceptFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(GetRidesLoading value)? getRidesLoading,
    TResult? Function(GetRidesSuccess value)? getRidesSuccess,
    TResult? Function(GetRidesFailure value)? getRidesFailure,
    TResult? Function(AcceptLoading value)? acceptLoading,
    TResult? Function(AcceptSuccess value)? acceptSuccess,
    TResult? Function(AcceptFailure value)? acceptFailure,
  }) {
    return acceptFailure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(GetRidesLoading value)? getRidesLoading,
    TResult Function(GetRidesSuccess value)? getRidesSuccess,
    TResult Function(GetRidesFailure value)? getRidesFailure,
    TResult Function(AcceptLoading value)? acceptLoading,
    TResult Function(AcceptSuccess value)? acceptSuccess,
    TResult Function(AcceptFailure value)? acceptFailure,
    required TResult orElse(),
  }) {
    if (acceptFailure != null) {
      return acceptFailure(this);
    }
    return orElse();
  }
}

abstract class AcceptFailure implements NearbyRidesState {
  const factory AcceptFailure() = _$AcceptFailureImpl;
}
