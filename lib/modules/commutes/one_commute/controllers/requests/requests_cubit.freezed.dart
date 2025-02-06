// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'requests_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$RequestsState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(
            int id,
            List<RequestsResponseModelItem> onlineRequests,
            List<RequestsResponseModelItem> upcomingRequests,
            List<RequestsResponseModelItem> offlineRequests)
        success,
    required TResult Function() failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(
            int id,
            List<RequestsResponseModelItem> onlineRequests,
            List<RequestsResponseModelItem> upcomingRequests,
            List<RequestsResponseModelItem> offlineRequests)?
        success,
    TResult? Function()? failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(
            int id,
            List<RequestsResponseModelItem> onlineRequests,
            List<RequestsResponseModelItem> upcomingRequests,
            List<RequestsResponseModelItem> offlineRequests)?
        success,
    TResult Function()? failure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_RequestsLoading value) loading,
    required TResult Function(_RequestsSuccess value) success,
    required TResult Function(_RequestsFailure value) failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_RequestsLoading value)? loading,
    TResult? Function(_RequestsSuccess value)? success,
    TResult? Function(_RequestsFailure value)? failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_RequestsLoading value)? loading,
    TResult Function(_RequestsSuccess value)? success,
    TResult Function(_RequestsFailure value)? failure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RequestsStateCopyWith<$Res> {
  factory $RequestsStateCopyWith(
          RequestsState value, $Res Function(RequestsState) then) =
      _$RequestsStateCopyWithImpl<$Res, RequestsState>;
}

/// @nodoc
class _$RequestsStateCopyWithImpl<$Res, $Val extends RequestsState>
    implements $RequestsStateCopyWith<$Res> {
  _$RequestsStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$RequestsLoadingImplCopyWith<$Res> {
  factory _$$RequestsLoadingImplCopyWith(_$RequestsLoadingImpl value,
          $Res Function(_$RequestsLoadingImpl) then) =
      __$$RequestsLoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$RequestsLoadingImplCopyWithImpl<$Res>
    extends _$RequestsStateCopyWithImpl<$Res, _$RequestsLoadingImpl>
    implements _$$RequestsLoadingImplCopyWith<$Res> {
  __$$RequestsLoadingImplCopyWithImpl(
      _$RequestsLoadingImpl _value, $Res Function(_$RequestsLoadingImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$RequestsLoadingImpl implements _RequestsLoading {
  const _$RequestsLoadingImpl();

  @override
  String toString() {
    return 'RequestsState.loading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$RequestsLoadingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(
            int id,
            List<RequestsResponseModelItem> onlineRequests,
            List<RequestsResponseModelItem> upcomingRequests,
            List<RequestsResponseModelItem> offlineRequests)
        success,
    required TResult Function() failure,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(
            int id,
            List<RequestsResponseModelItem> onlineRequests,
            List<RequestsResponseModelItem> upcomingRequests,
            List<RequestsResponseModelItem> offlineRequests)?
        success,
    TResult? Function()? failure,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(
            int id,
            List<RequestsResponseModelItem> onlineRequests,
            List<RequestsResponseModelItem> upcomingRequests,
            List<RequestsResponseModelItem> offlineRequests)?
        success,
    TResult Function()? failure,
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
    required TResult Function(_RequestsLoading value) loading,
    required TResult Function(_RequestsSuccess value) success,
    required TResult Function(_RequestsFailure value) failure,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_RequestsLoading value)? loading,
    TResult? Function(_RequestsSuccess value)? success,
    TResult? Function(_RequestsFailure value)? failure,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_RequestsLoading value)? loading,
    TResult Function(_RequestsSuccess value)? success,
    TResult Function(_RequestsFailure value)? failure,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _RequestsLoading implements RequestsState {
  const factory _RequestsLoading() = _$RequestsLoadingImpl;
}

/// @nodoc
abstract class _$$RequestsSuccessImplCopyWith<$Res> {
  factory _$$RequestsSuccessImplCopyWith(_$RequestsSuccessImpl value,
          $Res Function(_$RequestsSuccessImpl) then) =
      __$$RequestsSuccessImplCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {int id,
      List<RequestsResponseModelItem> onlineRequests,
      List<RequestsResponseModelItem> upcomingRequests,
      List<RequestsResponseModelItem> offlineRequests});
}

/// @nodoc
class __$$RequestsSuccessImplCopyWithImpl<$Res>
    extends _$RequestsStateCopyWithImpl<$Res, _$RequestsSuccessImpl>
    implements _$$RequestsSuccessImplCopyWith<$Res> {
  __$$RequestsSuccessImplCopyWithImpl(
      _$RequestsSuccessImpl _value, $Res Function(_$RequestsSuccessImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? onlineRequests = null,
    Object? upcomingRequests = null,
    Object? offlineRequests = null,
  }) {
    return _then(_$RequestsSuccessImpl(
      null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      null == onlineRequests
          ? _value._onlineRequests
          : onlineRequests // ignore: cast_nullable_to_non_nullable
              as List<RequestsResponseModelItem>,
      null == upcomingRequests
          ? _value._upcomingRequests
          : upcomingRequests // ignore: cast_nullable_to_non_nullable
              as List<RequestsResponseModelItem>,
      null == offlineRequests
          ? _value._offlineRequests
          : offlineRequests // ignore: cast_nullable_to_non_nullable
              as List<RequestsResponseModelItem>,
    ));
  }
}

/// @nodoc

class _$RequestsSuccessImpl implements _RequestsSuccess {
  const _$RequestsSuccessImpl(
      this.id,
      final List<RequestsResponseModelItem> onlineRequests,
      final List<RequestsResponseModelItem> upcomingRequests,
      final List<RequestsResponseModelItem> offlineRequests)
      : _onlineRequests = onlineRequests,
        _upcomingRequests = upcomingRequests,
        _offlineRequests = offlineRequests;

  @override
  final int id;
  final List<RequestsResponseModelItem> _onlineRequests;
  @override
  List<RequestsResponseModelItem> get onlineRequests {
    if (_onlineRequests is EqualUnmodifiableListView) return _onlineRequests;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_onlineRequests);
  }

  final List<RequestsResponseModelItem> _upcomingRequests;
  @override
  List<RequestsResponseModelItem> get upcomingRequests {
    if (_upcomingRequests is EqualUnmodifiableListView)
      return _upcomingRequests;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_upcomingRequests);
  }

  final List<RequestsResponseModelItem> _offlineRequests;
  @override
  List<RequestsResponseModelItem> get offlineRequests {
    if (_offlineRequests is EqualUnmodifiableListView) return _offlineRequests;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_offlineRequests);
  }

  @override
  String toString() {
    return 'RequestsState.success(id: $id, onlineRequests: $onlineRequests, upcomingRequests: $upcomingRequests, offlineRequests: $offlineRequests)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RequestsSuccessImpl &&
            (identical(other.id, id) || other.id == id) &&
            const DeepCollectionEquality()
                .equals(other._onlineRequests, _onlineRequests) &&
            const DeepCollectionEquality()
                .equals(other._upcomingRequests, _upcomingRequests) &&
            const DeepCollectionEquality()
                .equals(other._offlineRequests, _offlineRequests));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      const DeepCollectionEquality().hash(_onlineRequests),
      const DeepCollectionEquality().hash(_upcomingRequests),
      const DeepCollectionEquality().hash(_offlineRequests));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$RequestsSuccessImplCopyWith<_$RequestsSuccessImpl> get copyWith =>
      __$$RequestsSuccessImplCopyWithImpl<_$RequestsSuccessImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(
            int id,
            List<RequestsResponseModelItem> onlineRequests,
            List<RequestsResponseModelItem> upcomingRequests,
            List<RequestsResponseModelItem> offlineRequests)
        success,
    required TResult Function() failure,
  }) {
    return success(id, onlineRequests, upcomingRequests, offlineRequests);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(
            int id,
            List<RequestsResponseModelItem> onlineRequests,
            List<RequestsResponseModelItem> upcomingRequests,
            List<RequestsResponseModelItem> offlineRequests)?
        success,
    TResult? Function()? failure,
  }) {
    return success?.call(id, onlineRequests, upcomingRequests, offlineRequests);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(
            int id,
            List<RequestsResponseModelItem> onlineRequests,
            List<RequestsResponseModelItem> upcomingRequests,
            List<RequestsResponseModelItem> offlineRequests)?
        success,
    TResult Function()? failure,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(id, onlineRequests, upcomingRequests, offlineRequests);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_RequestsLoading value) loading,
    required TResult Function(_RequestsSuccess value) success,
    required TResult Function(_RequestsFailure value) failure,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_RequestsLoading value)? loading,
    TResult? Function(_RequestsSuccess value)? success,
    TResult? Function(_RequestsFailure value)? failure,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_RequestsLoading value)? loading,
    TResult Function(_RequestsSuccess value)? success,
    TResult Function(_RequestsFailure value)? failure,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class _RequestsSuccess implements RequestsState {
  const factory _RequestsSuccess(
          final int id,
          final List<RequestsResponseModelItem> onlineRequests,
          final List<RequestsResponseModelItem> upcomingRequests,
          final List<RequestsResponseModelItem> offlineRequests) =
      _$RequestsSuccessImpl;

  int get id;
  List<RequestsResponseModelItem> get onlineRequests;
  List<RequestsResponseModelItem> get upcomingRequests;
  List<RequestsResponseModelItem> get offlineRequests;
  @JsonKey(ignore: true)
  _$$RequestsSuccessImplCopyWith<_$RequestsSuccessImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$RequestsFailureImplCopyWith<$Res> {
  factory _$$RequestsFailureImplCopyWith(_$RequestsFailureImpl value,
          $Res Function(_$RequestsFailureImpl) then) =
      __$$RequestsFailureImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$RequestsFailureImplCopyWithImpl<$Res>
    extends _$RequestsStateCopyWithImpl<$Res, _$RequestsFailureImpl>
    implements _$$RequestsFailureImplCopyWith<$Res> {
  __$$RequestsFailureImplCopyWithImpl(
      _$RequestsFailureImpl _value, $Res Function(_$RequestsFailureImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$RequestsFailureImpl implements _RequestsFailure {
  const _$RequestsFailureImpl();

  @override
  String toString() {
    return 'RequestsState.failure()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$RequestsFailureImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(
            int id,
            List<RequestsResponseModelItem> onlineRequests,
            List<RequestsResponseModelItem> upcomingRequests,
            List<RequestsResponseModelItem> offlineRequests)
        success,
    required TResult Function() failure,
  }) {
    return failure();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(
            int id,
            List<RequestsResponseModelItem> onlineRequests,
            List<RequestsResponseModelItem> upcomingRequests,
            List<RequestsResponseModelItem> offlineRequests)?
        success,
    TResult? Function()? failure,
  }) {
    return failure?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(
            int id,
            List<RequestsResponseModelItem> onlineRequests,
            List<RequestsResponseModelItem> upcomingRequests,
            List<RequestsResponseModelItem> offlineRequests)?
        success,
    TResult Function()? failure,
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
    required TResult Function(_RequestsLoading value) loading,
    required TResult Function(_RequestsSuccess value) success,
    required TResult Function(_RequestsFailure value) failure,
  }) {
    return failure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_RequestsLoading value)? loading,
    TResult? Function(_RequestsSuccess value)? success,
    TResult? Function(_RequestsFailure value)? failure,
  }) {
    return failure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_RequestsLoading value)? loading,
    TResult Function(_RequestsSuccess value)? success,
    TResult Function(_RequestsFailure value)? failure,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(this);
    }
    return orElse();
  }
}

abstract class _RequestsFailure implements RequestsState {
  const factory _RequestsFailure() = _$RequestsFailureImpl;
}
