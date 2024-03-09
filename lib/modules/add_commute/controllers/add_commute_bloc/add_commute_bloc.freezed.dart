// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'add_commute_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$AddCommuteEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(Set<String> days) changeDays,
    required TResult Function(
            AddCommutePickupBloc pickupBloc, AddCommuteLandingBloc landingBloc)
        addCommute,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(Set<String> days)? changeDays,
    TResult? Function(
            AddCommutePickupBloc pickupBloc, AddCommuteLandingBloc landingBloc)?
        addCommute,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(Set<String> days)? changeDays,
    TResult Function(
            AddCommutePickupBloc pickupBloc, AddCommuteLandingBloc landingBloc)?
        addCommute,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(ChangeDays value) changeDays,
    required TResult Function(AddCommute value) addCommute,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(ChangeDays value)? changeDays,
    TResult? Function(AddCommute value)? addCommute,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(ChangeDays value)? changeDays,
    TResult Function(AddCommute value)? addCommute,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AddCommuteEventCopyWith<$Res> {
  factory $AddCommuteEventCopyWith(
          AddCommuteEvent value, $Res Function(AddCommuteEvent) then) =
      _$AddCommuteEventCopyWithImpl<$Res, AddCommuteEvent>;
}

/// @nodoc
class _$AddCommuteEventCopyWithImpl<$Res, $Val extends AddCommuteEvent>
    implements $AddCommuteEventCopyWith<$Res> {
  _$AddCommuteEventCopyWithImpl(this._value, this._then);

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
    extends _$AddCommuteEventCopyWithImpl<$Res, _$StartedImpl>
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
    return 'AddCommuteEvent.started()';
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
    required TResult Function(Set<String> days) changeDays,
    required TResult Function(
            AddCommutePickupBloc pickupBloc, AddCommuteLandingBloc landingBloc)
        addCommute,
  }) {
    return started();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(Set<String> days)? changeDays,
    TResult? Function(
            AddCommutePickupBloc pickupBloc, AddCommuteLandingBloc landingBloc)?
        addCommute,
  }) {
    return started?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(Set<String> days)? changeDays,
    TResult Function(
            AddCommutePickupBloc pickupBloc, AddCommuteLandingBloc landingBloc)?
        addCommute,
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
    required TResult Function(ChangeDays value) changeDays,
    required TResult Function(AddCommute value) addCommute,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(ChangeDays value)? changeDays,
    TResult? Function(AddCommute value)? addCommute,
  }) {
    return started?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(ChangeDays value)? changeDays,
    TResult Function(AddCommute value)? addCommute,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class _Started implements AddCommuteEvent {
  const factory _Started() = _$StartedImpl;
}

/// @nodoc
abstract class _$$ChangeDaysImplCopyWith<$Res> {
  factory _$$ChangeDaysImplCopyWith(
          _$ChangeDaysImpl value, $Res Function(_$ChangeDaysImpl) then) =
      __$$ChangeDaysImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Set<String> days});
}

/// @nodoc
class __$$ChangeDaysImplCopyWithImpl<$Res>
    extends _$AddCommuteEventCopyWithImpl<$Res, _$ChangeDaysImpl>
    implements _$$ChangeDaysImplCopyWith<$Res> {
  __$$ChangeDaysImplCopyWithImpl(
      _$ChangeDaysImpl _value, $Res Function(_$ChangeDaysImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? days = null,
  }) {
    return _then(_$ChangeDaysImpl(
      null == days
          ? _value._days
          : days // ignore: cast_nullable_to_non_nullable
              as Set<String>,
    ));
  }
}

/// @nodoc

class _$ChangeDaysImpl implements ChangeDays {
  const _$ChangeDaysImpl(final Set<String> days) : _days = days;

  final Set<String> _days;
  @override
  Set<String> get days {
    if (_days is EqualUnmodifiableSetView) return _days;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableSetView(_days);
  }

  @override
  String toString() {
    return 'AddCommuteEvent.changeDays(days: $days)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChangeDaysImpl &&
            const DeepCollectionEquality().equals(other._days, _days));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_days));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ChangeDaysImplCopyWith<_$ChangeDaysImpl> get copyWith =>
      __$$ChangeDaysImplCopyWithImpl<_$ChangeDaysImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(Set<String> days) changeDays,
    required TResult Function(
            AddCommutePickupBloc pickupBloc, AddCommuteLandingBloc landingBloc)
        addCommute,
  }) {
    return changeDays(days);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(Set<String> days)? changeDays,
    TResult? Function(
            AddCommutePickupBloc pickupBloc, AddCommuteLandingBloc landingBloc)?
        addCommute,
  }) {
    return changeDays?.call(days);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(Set<String> days)? changeDays,
    TResult Function(
            AddCommutePickupBloc pickupBloc, AddCommuteLandingBloc landingBloc)?
        addCommute,
    required TResult orElse(),
  }) {
    if (changeDays != null) {
      return changeDays(days);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(ChangeDays value) changeDays,
    required TResult Function(AddCommute value) addCommute,
  }) {
    return changeDays(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(ChangeDays value)? changeDays,
    TResult? Function(AddCommute value)? addCommute,
  }) {
    return changeDays?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(ChangeDays value)? changeDays,
    TResult Function(AddCommute value)? addCommute,
    required TResult orElse(),
  }) {
    if (changeDays != null) {
      return changeDays(this);
    }
    return orElse();
  }
}

abstract class ChangeDays implements AddCommuteEvent {
  const factory ChangeDays(final Set<String> days) = _$ChangeDaysImpl;

  Set<String> get days;
  @JsonKey(ignore: true)
  _$$ChangeDaysImplCopyWith<_$ChangeDaysImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$AddCommuteImplCopyWith<$Res> {
  factory _$$AddCommuteImplCopyWith(
          _$AddCommuteImpl value, $Res Function(_$AddCommuteImpl) then) =
      __$$AddCommuteImplCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {AddCommutePickupBloc pickupBloc, AddCommuteLandingBloc landingBloc});
}

/// @nodoc
class __$$AddCommuteImplCopyWithImpl<$Res>
    extends _$AddCommuteEventCopyWithImpl<$Res, _$AddCommuteImpl>
    implements _$$AddCommuteImplCopyWith<$Res> {
  __$$AddCommuteImplCopyWithImpl(
      _$AddCommuteImpl _value, $Res Function(_$AddCommuteImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? pickupBloc = null,
    Object? landingBloc = null,
  }) {
    return _then(_$AddCommuteImpl(
      pickupBloc: null == pickupBloc
          ? _value.pickupBloc
          : pickupBloc // ignore: cast_nullable_to_non_nullable
              as AddCommutePickupBloc,
      landingBloc: null == landingBloc
          ? _value.landingBloc
          : landingBloc // ignore: cast_nullable_to_non_nullable
              as AddCommuteLandingBloc,
    ));
  }
}

/// @nodoc

class _$AddCommuteImpl implements AddCommute {
  const _$AddCommuteImpl({required this.pickupBloc, required this.landingBloc});

  @override
  final AddCommutePickupBloc pickupBloc;
  @override
  final AddCommuteLandingBloc landingBloc;

  @override
  String toString() {
    return 'AddCommuteEvent.addCommute(pickupBloc: $pickupBloc, landingBloc: $landingBloc)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AddCommuteImpl &&
            (identical(other.pickupBloc, pickupBloc) ||
                other.pickupBloc == pickupBloc) &&
            (identical(other.landingBloc, landingBloc) ||
                other.landingBloc == landingBloc));
  }

  @override
  int get hashCode => Object.hash(runtimeType, pickupBloc, landingBloc);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AddCommuteImplCopyWith<_$AddCommuteImpl> get copyWith =>
      __$$AddCommuteImplCopyWithImpl<_$AddCommuteImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(Set<String> days) changeDays,
    required TResult Function(
            AddCommutePickupBloc pickupBloc, AddCommuteLandingBloc landingBloc)
        addCommute,
  }) {
    return addCommute(pickupBloc, landingBloc);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(Set<String> days)? changeDays,
    TResult? Function(
            AddCommutePickupBloc pickupBloc, AddCommuteLandingBloc landingBloc)?
        addCommute,
  }) {
    return addCommute?.call(pickupBloc, landingBloc);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(Set<String> days)? changeDays,
    TResult Function(
            AddCommutePickupBloc pickupBloc, AddCommuteLandingBloc landingBloc)?
        addCommute,
    required TResult orElse(),
  }) {
    if (addCommute != null) {
      return addCommute(pickupBloc, landingBloc);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(ChangeDays value) changeDays,
    required TResult Function(AddCommute value) addCommute,
  }) {
    return addCommute(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(ChangeDays value)? changeDays,
    TResult? Function(AddCommute value)? addCommute,
  }) {
    return addCommute?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(ChangeDays value)? changeDays,
    TResult Function(AddCommute value)? addCommute,
    required TResult orElse(),
  }) {
    if (addCommute != null) {
      return addCommute(this);
    }
    return orElse();
  }
}

abstract class AddCommute implements AddCommuteEvent {
  const factory AddCommute(
      {required final AddCommutePickupBloc pickupBloc,
      required final AddCommuteLandingBloc landingBloc}) = _$AddCommuteImpl;

  AddCommutePickupBloc get pickupBloc;
  AddCommuteLandingBloc get landingBloc;
  @JsonKey(ignore: true)
  _$$AddCommuteImplCopyWith<_$AddCommuteImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$AddCommuteState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(int id) refresh,
    required TResult Function() loading,
    required TResult Function() seccess,
    required TResult Function(String error, int id) failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(int id)? refresh,
    TResult? Function()? loading,
    TResult? Function()? seccess,
    TResult? Function(String error, int id)? failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(int id)? refresh,
    TResult Function()? loading,
    TResult Function()? seccess,
    TResult Function(String error, int id)? failure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(Refresh value) refresh,
    required TResult Function(Loading value) loading,
    required TResult Function(Success value) seccess,
    required TResult Function(Failure value) failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(Refresh value)? refresh,
    TResult? Function(Loading value)? loading,
    TResult? Function(Success value)? seccess,
    TResult? Function(Failure value)? failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(Refresh value)? refresh,
    TResult Function(Loading value)? loading,
    TResult Function(Success value)? seccess,
    TResult Function(Failure value)? failure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AddCommuteStateCopyWith<$Res> {
  factory $AddCommuteStateCopyWith(
          AddCommuteState value, $Res Function(AddCommuteState) then) =
      _$AddCommuteStateCopyWithImpl<$Res, AddCommuteState>;
}

/// @nodoc
class _$AddCommuteStateCopyWithImpl<$Res, $Val extends AddCommuteState>
    implements $AddCommuteStateCopyWith<$Res> {
  _$AddCommuteStateCopyWithImpl(this._value, this._then);

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
    extends _$AddCommuteStateCopyWithImpl<$Res, _$InitialImpl>
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
    return 'AddCommuteState.initial()';
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
    required TResult Function() loading,
    required TResult Function() seccess,
    required TResult Function(String error, int id) failure,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(int id)? refresh,
    TResult? Function()? loading,
    TResult? Function()? seccess,
    TResult? Function(String error, int id)? failure,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(int id)? refresh,
    TResult Function()? loading,
    TResult Function()? seccess,
    TResult Function(String error, int id)? failure,
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
    required TResult Function(Loading value) loading,
    required TResult Function(Success value) seccess,
    required TResult Function(Failure value) failure,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(Refresh value)? refresh,
    TResult? Function(Loading value)? loading,
    TResult? Function(Success value)? seccess,
    TResult? Function(Failure value)? failure,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(Refresh value)? refresh,
    TResult Function(Loading value)? loading,
    TResult Function(Success value)? seccess,
    TResult Function(Failure value)? failure,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements AddCommuteState {
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
    extends _$AddCommuteStateCopyWithImpl<$Res, _$RefreshImpl>
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
    return 'AddCommuteState.refresh(id: $id)';
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
    required TResult Function() loading,
    required TResult Function() seccess,
    required TResult Function(String error, int id) failure,
  }) {
    return refresh(id);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(int id)? refresh,
    TResult? Function()? loading,
    TResult? Function()? seccess,
    TResult? Function(String error, int id)? failure,
  }) {
    return refresh?.call(id);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(int id)? refresh,
    TResult Function()? loading,
    TResult Function()? seccess,
    TResult Function(String error, int id)? failure,
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
    required TResult Function(Loading value) loading,
    required TResult Function(Success value) seccess,
    required TResult Function(Failure value) failure,
  }) {
    return refresh(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(Refresh value)? refresh,
    TResult? Function(Loading value)? loading,
    TResult? Function(Success value)? seccess,
    TResult? Function(Failure value)? failure,
  }) {
    return refresh?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(Refresh value)? refresh,
    TResult Function(Loading value)? loading,
    TResult Function(Success value)? seccess,
    TResult Function(Failure value)? failure,
    required TResult orElse(),
  }) {
    if (refresh != null) {
      return refresh(this);
    }
    return orElse();
  }
}

abstract class Refresh implements AddCommuteState {
  const factory Refresh(final int id) = _$RefreshImpl;

  int get id;
  @JsonKey(ignore: true)
  _$$RefreshImplCopyWith<_$RefreshImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$LoadingImplCopyWith<$Res> {
  factory _$$LoadingImplCopyWith(
          _$LoadingImpl value, $Res Function(_$LoadingImpl) then) =
      __$$LoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoadingImplCopyWithImpl<$Res>
    extends _$AddCommuteStateCopyWithImpl<$Res, _$LoadingImpl>
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
    return 'AddCommuteState.loading()';
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
    required TResult Function(int id) refresh,
    required TResult Function() loading,
    required TResult Function() seccess,
    required TResult Function(String error, int id) failure,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(int id)? refresh,
    TResult? Function()? loading,
    TResult? Function()? seccess,
    TResult? Function(String error, int id)? failure,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(int id)? refresh,
    TResult Function()? loading,
    TResult Function()? seccess,
    TResult Function(String error, int id)? failure,
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
    required TResult Function(Refresh value) refresh,
    required TResult Function(Loading value) loading,
    required TResult Function(Success value) seccess,
    required TResult Function(Failure value) failure,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(Refresh value)? refresh,
    TResult? Function(Loading value)? loading,
    TResult? Function(Success value)? seccess,
    TResult? Function(Failure value)? failure,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(Refresh value)? refresh,
    TResult Function(Loading value)? loading,
    TResult Function(Success value)? seccess,
    TResult Function(Failure value)? failure,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class Loading implements AddCommuteState {
  const factory Loading() = _$LoadingImpl;
}

/// @nodoc
abstract class _$$SuccessImplCopyWith<$Res> {
  factory _$$SuccessImplCopyWith(
          _$SuccessImpl value, $Res Function(_$SuccessImpl) then) =
      __$$SuccessImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$SuccessImplCopyWithImpl<$Res>
    extends _$AddCommuteStateCopyWithImpl<$Res, _$SuccessImpl>
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
    return 'AddCommuteState.seccess()';
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
    required TResult Function(int id) refresh,
    required TResult Function() loading,
    required TResult Function() seccess,
    required TResult Function(String error, int id) failure,
  }) {
    return seccess();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(int id)? refresh,
    TResult? Function()? loading,
    TResult? Function()? seccess,
    TResult? Function(String error, int id)? failure,
  }) {
    return seccess?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(int id)? refresh,
    TResult Function()? loading,
    TResult Function()? seccess,
    TResult Function(String error, int id)? failure,
    required TResult orElse(),
  }) {
    if (seccess != null) {
      return seccess();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(Refresh value) refresh,
    required TResult Function(Loading value) loading,
    required TResult Function(Success value) seccess,
    required TResult Function(Failure value) failure,
  }) {
    return seccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(Refresh value)? refresh,
    TResult? Function(Loading value)? loading,
    TResult? Function(Success value)? seccess,
    TResult? Function(Failure value)? failure,
  }) {
    return seccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(Refresh value)? refresh,
    TResult Function(Loading value)? loading,
    TResult Function(Success value)? seccess,
    TResult Function(Failure value)? failure,
    required TResult orElse(),
  }) {
    if (seccess != null) {
      return seccess(this);
    }
    return orElse();
  }
}

abstract class Success implements AddCommuteState {
  const factory Success() = _$SuccessImpl;
}

/// @nodoc
abstract class _$$FailureImplCopyWith<$Res> {
  factory _$$FailureImplCopyWith(
          _$FailureImpl value, $Res Function(_$FailureImpl) then) =
      __$$FailureImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String error, int id});
}

/// @nodoc
class __$$FailureImplCopyWithImpl<$Res>
    extends _$AddCommuteStateCopyWithImpl<$Res, _$FailureImpl>
    implements _$$FailureImplCopyWith<$Res> {
  __$$FailureImplCopyWithImpl(
      _$FailureImpl _value, $Res Function(_$FailureImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = null,
    Object? id = null,
  }) {
    return _then(_$FailureImpl(
      null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String,
      null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$FailureImpl implements Failure {
  const _$FailureImpl(this.error, this.id);

  @override
  final String error;
  @override
  final int id;

  @override
  String toString() {
    return 'AddCommuteState.failure(error: $error, id: $id)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FailureImpl &&
            (identical(other.error, error) || other.error == error) &&
            (identical(other.id, id) || other.id == id));
  }

  @override
  int get hashCode => Object.hash(runtimeType, error, id);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FailureImplCopyWith<_$FailureImpl> get copyWith =>
      __$$FailureImplCopyWithImpl<_$FailureImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(int id) refresh,
    required TResult Function() loading,
    required TResult Function() seccess,
    required TResult Function(String error, int id) failure,
  }) {
    return failure(error, id);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(int id)? refresh,
    TResult? Function()? loading,
    TResult? Function()? seccess,
    TResult? Function(String error, int id)? failure,
  }) {
    return failure?.call(error, id);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(int id)? refresh,
    TResult Function()? loading,
    TResult Function()? seccess,
    TResult Function(String error, int id)? failure,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(error, id);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(Refresh value) refresh,
    required TResult Function(Loading value) loading,
    required TResult Function(Success value) seccess,
    required TResult Function(Failure value) failure,
  }) {
    return failure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(Refresh value)? refresh,
    TResult? Function(Loading value)? loading,
    TResult? Function(Success value)? seccess,
    TResult? Function(Failure value)? failure,
  }) {
    return failure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(Refresh value)? refresh,
    TResult Function(Loading value)? loading,
    TResult Function(Success value)? seccess,
    TResult Function(Failure value)? failure,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(this);
    }
    return orElse();
  }
}

abstract class Failure implements AddCommuteState {
  const factory Failure(final String error, final int id) = _$FailureImpl;

  String get error;
  int get id;
  @JsonKey(ignore: true)
  _$$FailureImplCopyWith<_$FailureImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
