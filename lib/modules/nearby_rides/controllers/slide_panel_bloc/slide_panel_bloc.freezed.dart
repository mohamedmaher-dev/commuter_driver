// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'slide_panel_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$SlidePanelEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(bool isOpen) iconHeaderClick,
    required TResult Function(double position) onPanelSlide,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(bool isOpen)? iconHeaderClick,
    TResult? Function(double position)? onPanelSlide,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(bool isOpen)? iconHeaderClick,
    TResult Function(double position)? onPanelSlide,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(IconHeaderClick value) iconHeaderClick,
    required TResult Function(OnPanelSlide value) onPanelSlide,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(IconHeaderClick value)? iconHeaderClick,
    TResult? Function(OnPanelSlide value)? onPanelSlide,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(IconHeaderClick value)? iconHeaderClick,
    TResult Function(OnPanelSlide value)? onPanelSlide,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SlidePanelEventCopyWith<$Res> {
  factory $SlidePanelEventCopyWith(
          SlidePanelEvent value, $Res Function(SlidePanelEvent) then) =
      _$SlidePanelEventCopyWithImpl<$Res, SlidePanelEvent>;
}

/// @nodoc
class _$SlidePanelEventCopyWithImpl<$Res, $Val extends SlidePanelEvent>
    implements $SlidePanelEventCopyWith<$Res> {
  _$SlidePanelEventCopyWithImpl(this._value, this._then);

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
    extends _$SlidePanelEventCopyWithImpl<$Res, _$StartedImpl>
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
    return 'SlidePanelEvent.started()';
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
    required TResult Function(bool isOpen) iconHeaderClick,
    required TResult Function(double position) onPanelSlide,
  }) {
    return started();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(bool isOpen)? iconHeaderClick,
    TResult? Function(double position)? onPanelSlide,
  }) {
    return started?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(bool isOpen)? iconHeaderClick,
    TResult Function(double position)? onPanelSlide,
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
    required TResult Function(IconHeaderClick value) iconHeaderClick,
    required TResult Function(OnPanelSlide value) onPanelSlide,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(IconHeaderClick value)? iconHeaderClick,
    TResult? Function(OnPanelSlide value)? onPanelSlide,
  }) {
    return started?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(IconHeaderClick value)? iconHeaderClick,
    TResult Function(OnPanelSlide value)? onPanelSlide,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class _Started implements SlidePanelEvent {
  const factory _Started() = _$StartedImpl;
}

/// @nodoc
abstract class _$$IconHeaderClickImplCopyWith<$Res> {
  factory _$$IconHeaderClickImplCopyWith(_$IconHeaderClickImpl value,
          $Res Function(_$IconHeaderClickImpl) then) =
      __$$IconHeaderClickImplCopyWithImpl<$Res>;
  @useResult
  $Res call({bool isOpen});
}

/// @nodoc
class __$$IconHeaderClickImplCopyWithImpl<$Res>
    extends _$SlidePanelEventCopyWithImpl<$Res, _$IconHeaderClickImpl>
    implements _$$IconHeaderClickImplCopyWith<$Res> {
  __$$IconHeaderClickImplCopyWithImpl(
      _$IconHeaderClickImpl _value, $Res Function(_$IconHeaderClickImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isOpen = null,
  }) {
    return _then(_$IconHeaderClickImpl(
      null == isOpen
          ? _value.isOpen
          : isOpen // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$IconHeaderClickImpl implements IconHeaderClick {
  const _$IconHeaderClickImpl(this.isOpen);

  @override
  final bool isOpen;

  @override
  String toString() {
    return 'SlidePanelEvent.iconHeaderClick(isOpen: $isOpen)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$IconHeaderClickImpl &&
            (identical(other.isOpen, isOpen) || other.isOpen == isOpen));
  }

  @override
  int get hashCode => Object.hash(runtimeType, isOpen);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$IconHeaderClickImplCopyWith<_$IconHeaderClickImpl> get copyWith =>
      __$$IconHeaderClickImplCopyWithImpl<_$IconHeaderClickImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(bool isOpen) iconHeaderClick,
    required TResult Function(double position) onPanelSlide,
  }) {
    return iconHeaderClick(isOpen);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(bool isOpen)? iconHeaderClick,
    TResult? Function(double position)? onPanelSlide,
  }) {
    return iconHeaderClick?.call(isOpen);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(bool isOpen)? iconHeaderClick,
    TResult Function(double position)? onPanelSlide,
    required TResult orElse(),
  }) {
    if (iconHeaderClick != null) {
      return iconHeaderClick(isOpen);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(IconHeaderClick value) iconHeaderClick,
    required TResult Function(OnPanelSlide value) onPanelSlide,
  }) {
    return iconHeaderClick(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(IconHeaderClick value)? iconHeaderClick,
    TResult? Function(OnPanelSlide value)? onPanelSlide,
  }) {
    return iconHeaderClick?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(IconHeaderClick value)? iconHeaderClick,
    TResult Function(OnPanelSlide value)? onPanelSlide,
    required TResult orElse(),
  }) {
    if (iconHeaderClick != null) {
      return iconHeaderClick(this);
    }
    return orElse();
  }
}

abstract class IconHeaderClick implements SlidePanelEvent {
  const factory IconHeaderClick(final bool isOpen) = _$IconHeaderClickImpl;

  bool get isOpen;
  @JsonKey(ignore: true)
  _$$IconHeaderClickImplCopyWith<_$IconHeaderClickImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$OnPanelSlideImplCopyWith<$Res> {
  factory _$$OnPanelSlideImplCopyWith(
          _$OnPanelSlideImpl value, $Res Function(_$OnPanelSlideImpl) then) =
      __$$OnPanelSlideImplCopyWithImpl<$Res>;
  @useResult
  $Res call({double position});
}

/// @nodoc
class __$$OnPanelSlideImplCopyWithImpl<$Res>
    extends _$SlidePanelEventCopyWithImpl<$Res, _$OnPanelSlideImpl>
    implements _$$OnPanelSlideImplCopyWith<$Res> {
  __$$OnPanelSlideImplCopyWithImpl(
      _$OnPanelSlideImpl _value, $Res Function(_$OnPanelSlideImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? position = null,
  }) {
    return _then(_$OnPanelSlideImpl(
      null == position
          ? _value.position
          : position // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc

class _$OnPanelSlideImpl implements OnPanelSlide {
  const _$OnPanelSlideImpl(this.position);

  @override
  final double position;

  @override
  String toString() {
    return 'SlidePanelEvent.onPanelSlide(position: $position)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OnPanelSlideImpl &&
            (identical(other.position, position) ||
                other.position == position));
  }

  @override
  int get hashCode => Object.hash(runtimeType, position);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$OnPanelSlideImplCopyWith<_$OnPanelSlideImpl> get copyWith =>
      __$$OnPanelSlideImplCopyWithImpl<_$OnPanelSlideImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(bool isOpen) iconHeaderClick,
    required TResult Function(double position) onPanelSlide,
  }) {
    return onPanelSlide(position);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(bool isOpen)? iconHeaderClick,
    TResult? Function(double position)? onPanelSlide,
  }) {
    return onPanelSlide?.call(position);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(bool isOpen)? iconHeaderClick,
    TResult Function(double position)? onPanelSlide,
    required TResult orElse(),
  }) {
    if (onPanelSlide != null) {
      return onPanelSlide(position);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(IconHeaderClick value) iconHeaderClick,
    required TResult Function(OnPanelSlide value) onPanelSlide,
  }) {
    return onPanelSlide(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(IconHeaderClick value)? iconHeaderClick,
    TResult? Function(OnPanelSlide value)? onPanelSlide,
  }) {
    return onPanelSlide?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(IconHeaderClick value)? iconHeaderClick,
    TResult Function(OnPanelSlide value)? onPanelSlide,
    required TResult orElse(),
  }) {
    if (onPanelSlide != null) {
      return onPanelSlide(this);
    }
    return orElse();
  }
}

abstract class OnPanelSlide implements SlidePanelEvent {
  const factory OnPanelSlide(final double position) = _$OnPanelSlideImpl;

  double get position;
  @JsonKey(ignore: true)
  _$$OnPanelSlideImplCopyWith<_$OnPanelSlideImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$SlidePanelState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(int id) refresh,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(int id)? refresh,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(int id)? refresh,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(Refresh value) refresh,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(Refresh value)? refresh,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(Refresh value)? refresh,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SlidePanelStateCopyWith<$Res> {
  factory $SlidePanelStateCopyWith(
          SlidePanelState value, $Res Function(SlidePanelState) then) =
      _$SlidePanelStateCopyWithImpl<$Res, SlidePanelState>;
}

/// @nodoc
class _$SlidePanelStateCopyWithImpl<$Res, $Val extends SlidePanelState>
    implements $SlidePanelStateCopyWith<$Res> {
  _$SlidePanelStateCopyWithImpl(this._value, this._then);

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
    extends _$SlidePanelStateCopyWithImpl<$Res, _$InitialImpl>
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
    return 'SlidePanelState.initial()';
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
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(int id)? refresh,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(int id)? refresh,
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
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(Refresh value)? refresh,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(Refresh value)? refresh,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements SlidePanelState {
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
    extends _$SlidePanelStateCopyWithImpl<$Res, _$RefreshImpl>
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
    return 'SlidePanelState.refresh(id: $id)';
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
  }) {
    return refresh(id);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(int id)? refresh,
  }) {
    return refresh?.call(id);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(int id)? refresh,
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
  }) {
    return refresh(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(Refresh value)? refresh,
  }) {
    return refresh?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(Refresh value)? refresh,
    required TResult orElse(),
  }) {
    if (refresh != null) {
      return refresh(this);
    }
    return orElse();
  }
}

abstract class Refresh implements SlidePanelState {
  const factory Refresh(final int id) = _$RefreshImpl;

  int get id;
  @JsonKey(ignore: true)
  _$$RefreshImplCopyWith<_$RefreshImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
