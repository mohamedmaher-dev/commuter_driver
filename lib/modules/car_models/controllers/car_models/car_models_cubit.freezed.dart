// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'car_models_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$CarModelsState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(List<CarModelItem> data) success,
    required TResult Function() failure,
    required TResult Function() empty,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(List<CarModelItem> data)? success,
    TResult? Function()? failure,
    TResult? Function()? empty,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(List<CarModelItem> data)? success,
    TResult Function()? failure,
    TResult Function()? empty,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_CarModelsLoading value) loading,
    required TResult Function(_CarModelsSuccess value) success,
    required TResult Function(_CarModelsFailure value) failure,
    required TResult Function(_CarModelsEmpty value) empty,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_CarModelsLoading value)? loading,
    TResult? Function(_CarModelsSuccess value)? success,
    TResult? Function(_CarModelsFailure value)? failure,
    TResult? Function(_CarModelsEmpty value)? empty,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CarModelsLoading value)? loading,
    TResult Function(_CarModelsSuccess value)? success,
    TResult Function(_CarModelsFailure value)? failure,
    TResult Function(_CarModelsEmpty value)? empty,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CarModelsStateCopyWith<$Res> {
  factory $CarModelsStateCopyWith(
          CarModelsState value, $Res Function(CarModelsState) then) =
      _$CarModelsStateCopyWithImpl<$Res, CarModelsState>;
}

/// @nodoc
class _$CarModelsStateCopyWithImpl<$Res, $Val extends CarModelsState>
    implements $CarModelsStateCopyWith<$Res> {
  _$CarModelsStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$CarModelsLoadingImplCopyWith<$Res> {
  factory _$$CarModelsLoadingImplCopyWith(_$CarModelsLoadingImpl value,
          $Res Function(_$CarModelsLoadingImpl) then) =
      __$$CarModelsLoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$CarModelsLoadingImplCopyWithImpl<$Res>
    extends _$CarModelsStateCopyWithImpl<$Res, _$CarModelsLoadingImpl>
    implements _$$CarModelsLoadingImplCopyWith<$Res> {
  __$$CarModelsLoadingImplCopyWithImpl(_$CarModelsLoadingImpl _value,
      $Res Function(_$CarModelsLoadingImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$CarModelsLoadingImpl implements _CarModelsLoading {
  const _$CarModelsLoadingImpl();

  @override
  String toString() {
    return 'CarModelsState.loading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$CarModelsLoadingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(List<CarModelItem> data) success,
    required TResult Function() failure,
    required TResult Function() empty,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(List<CarModelItem> data)? success,
    TResult? Function()? failure,
    TResult? Function()? empty,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(List<CarModelItem> data)? success,
    TResult Function()? failure,
    TResult Function()? empty,
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
    required TResult Function(_CarModelsLoading value) loading,
    required TResult Function(_CarModelsSuccess value) success,
    required TResult Function(_CarModelsFailure value) failure,
    required TResult Function(_CarModelsEmpty value) empty,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_CarModelsLoading value)? loading,
    TResult? Function(_CarModelsSuccess value)? success,
    TResult? Function(_CarModelsFailure value)? failure,
    TResult? Function(_CarModelsEmpty value)? empty,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CarModelsLoading value)? loading,
    TResult Function(_CarModelsSuccess value)? success,
    TResult Function(_CarModelsFailure value)? failure,
    TResult Function(_CarModelsEmpty value)? empty,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _CarModelsLoading implements CarModelsState {
  const factory _CarModelsLoading() = _$CarModelsLoadingImpl;
}

/// @nodoc
abstract class _$$CarModelsSuccessImplCopyWith<$Res> {
  factory _$$CarModelsSuccessImplCopyWith(_$CarModelsSuccessImpl value,
          $Res Function(_$CarModelsSuccessImpl) then) =
      __$$CarModelsSuccessImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<CarModelItem> data});
}

/// @nodoc
class __$$CarModelsSuccessImplCopyWithImpl<$Res>
    extends _$CarModelsStateCopyWithImpl<$Res, _$CarModelsSuccessImpl>
    implements _$$CarModelsSuccessImplCopyWith<$Res> {
  __$$CarModelsSuccessImplCopyWithImpl(_$CarModelsSuccessImpl _value,
      $Res Function(_$CarModelsSuccessImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
  }) {
    return _then(_$CarModelsSuccessImpl(
      null == data
          ? _value._data
          : data // ignore: cast_nullable_to_non_nullable
              as List<CarModelItem>,
    ));
  }
}

/// @nodoc

class _$CarModelsSuccessImpl implements _CarModelsSuccess {
  _$CarModelsSuccessImpl(final List<CarModelItem> data) : _data = data;

  final List<CarModelItem> _data;
  @override
  List<CarModelItem> get data {
    if (_data is EqualUnmodifiableListView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_data);
  }

  @override
  String toString() {
    return 'CarModelsState.success(data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CarModelsSuccessImpl &&
            const DeepCollectionEquality().equals(other._data, _data));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_data));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CarModelsSuccessImplCopyWith<_$CarModelsSuccessImpl> get copyWith =>
      __$$CarModelsSuccessImplCopyWithImpl<_$CarModelsSuccessImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(List<CarModelItem> data) success,
    required TResult Function() failure,
    required TResult Function() empty,
  }) {
    return success(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(List<CarModelItem> data)? success,
    TResult? Function()? failure,
    TResult? Function()? empty,
  }) {
    return success?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(List<CarModelItem> data)? success,
    TResult Function()? failure,
    TResult Function()? empty,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_CarModelsLoading value) loading,
    required TResult Function(_CarModelsSuccess value) success,
    required TResult Function(_CarModelsFailure value) failure,
    required TResult Function(_CarModelsEmpty value) empty,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_CarModelsLoading value)? loading,
    TResult? Function(_CarModelsSuccess value)? success,
    TResult? Function(_CarModelsFailure value)? failure,
    TResult? Function(_CarModelsEmpty value)? empty,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CarModelsLoading value)? loading,
    TResult Function(_CarModelsSuccess value)? success,
    TResult Function(_CarModelsFailure value)? failure,
    TResult Function(_CarModelsEmpty value)? empty,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class _CarModelsSuccess implements CarModelsState {
  factory _CarModelsSuccess(final List<CarModelItem> data) =
      _$CarModelsSuccessImpl;

  List<CarModelItem> get data;
  @JsonKey(ignore: true)
  _$$CarModelsSuccessImplCopyWith<_$CarModelsSuccessImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$CarModelsFailureImplCopyWith<$Res> {
  factory _$$CarModelsFailureImplCopyWith(_$CarModelsFailureImpl value,
          $Res Function(_$CarModelsFailureImpl) then) =
      __$$CarModelsFailureImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$CarModelsFailureImplCopyWithImpl<$Res>
    extends _$CarModelsStateCopyWithImpl<$Res, _$CarModelsFailureImpl>
    implements _$$CarModelsFailureImplCopyWith<$Res> {
  __$$CarModelsFailureImplCopyWithImpl(_$CarModelsFailureImpl _value,
      $Res Function(_$CarModelsFailureImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$CarModelsFailureImpl implements _CarModelsFailure {
  const _$CarModelsFailureImpl();

  @override
  String toString() {
    return 'CarModelsState.failure()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$CarModelsFailureImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(List<CarModelItem> data) success,
    required TResult Function() failure,
    required TResult Function() empty,
  }) {
    return failure();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(List<CarModelItem> data)? success,
    TResult? Function()? failure,
    TResult? Function()? empty,
  }) {
    return failure?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(List<CarModelItem> data)? success,
    TResult Function()? failure,
    TResult Function()? empty,
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
    required TResult Function(_CarModelsLoading value) loading,
    required TResult Function(_CarModelsSuccess value) success,
    required TResult Function(_CarModelsFailure value) failure,
    required TResult Function(_CarModelsEmpty value) empty,
  }) {
    return failure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_CarModelsLoading value)? loading,
    TResult? Function(_CarModelsSuccess value)? success,
    TResult? Function(_CarModelsFailure value)? failure,
    TResult? Function(_CarModelsEmpty value)? empty,
  }) {
    return failure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CarModelsLoading value)? loading,
    TResult Function(_CarModelsSuccess value)? success,
    TResult Function(_CarModelsFailure value)? failure,
    TResult Function(_CarModelsEmpty value)? empty,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(this);
    }
    return orElse();
  }
}

abstract class _CarModelsFailure implements CarModelsState {
  const factory _CarModelsFailure() = _$CarModelsFailureImpl;
}

/// @nodoc
abstract class _$$CarModelsEmptyImplCopyWith<$Res> {
  factory _$$CarModelsEmptyImplCopyWith(_$CarModelsEmptyImpl value,
          $Res Function(_$CarModelsEmptyImpl) then) =
      __$$CarModelsEmptyImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$CarModelsEmptyImplCopyWithImpl<$Res>
    extends _$CarModelsStateCopyWithImpl<$Res, _$CarModelsEmptyImpl>
    implements _$$CarModelsEmptyImplCopyWith<$Res> {
  __$$CarModelsEmptyImplCopyWithImpl(
      _$CarModelsEmptyImpl _value, $Res Function(_$CarModelsEmptyImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$CarModelsEmptyImpl implements _CarModelsEmpty {
  const _$CarModelsEmptyImpl();

  @override
  String toString() {
    return 'CarModelsState.empty()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$CarModelsEmptyImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(List<CarModelItem> data) success,
    required TResult Function() failure,
    required TResult Function() empty,
  }) {
    return empty();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(List<CarModelItem> data)? success,
    TResult? Function()? failure,
    TResult? Function()? empty,
  }) {
    return empty?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(List<CarModelItem> data)? success,
    TResult Function()? failure,
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
    required TResult Function(_CarModelsLoading value) loading,
    required TResult Function(_CarModelsSuccess value) success,
    required TResult Function(_CarModelsFailure value) failure,
    required TResult Function(_CarModelsEmpty value) empty,
  }) {
    return empty(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_CarModelsLoading value)? loading,
    TResult? Function(_CarModelsSuccess value)? success,
    TResult? Function(_CarModelsFailure value)? failure,
    TResult? Function(_CarModelsEmpty value)? empty,
  }) {
    return empty?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CarModelsLoading value)? loading,
    TResult Function(_CarModelsSuccess value)? success,
    TResult Function(_CarModelsFailure value)? failure,
    TResult Function(_CarModelsEmpty value)? empty,
    required TResult orElse(),
  }) {
    if (empty != null) {
      return empty(this);
    }
    return orElse();
  }
}

abstract class _CarModelsEmpty implements CarModelsState {
  const factory _CarModelsEmpty() = _$CarModelsEmptyImpl;
}
