// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'habit_map_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$HabitMapEvent {
  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is HabitMapEvent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'HabitMapEvent()';
  }
}

/// @nodoc
class $HabitMapEventCopyWith<$Res> {
  $HabitMapEventCopyWith(HabitMapEvent _, $Res Function(HabitMapEvent) __);
}

/// @nodoc

class _Load implements HabitMapEvent {
  const _Load();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _Load);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'HabitMapEvent.load()';
  }
}

/// @nodoc
mixin _$HabitMapState {
  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is HabitMapState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'HabitMapState()';
  }
}

/// @nodoc
class $HabitMapStateCopyWith<$Res> {
  $HabitMapStateCopyWith(HabitMapState _, $Res Function(HabitMapState) __);
}

/// @nodoc

class HabitMapLoading implements HabitMapState {
  const HabitMapLoading();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is HabitMapLoading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'HabitMapState.loading()';
  }
}

/// @nodoc

class HabitMapLoaded implements HabitMapState {
  const HabitMapLoaded({required final Map<DateTime, int> dateset})
      : _dateset = dateset;

  final Map<DateTime, int> _dateset;
  Map<DateTime, int> get dateset {
    if (_dateset is EqualUnmodifiableMapView) return _dateset;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_dateset);
  }

  /// Create a copy of HabitMapState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $HabitMapLoadedCopyWith<HabitMapLoaded> get copyWith =>
      _$HabitMapLoadedCopyWithImpl<HabitMapLoaded>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is HabitMapLoaded &&
            const DeepCollectionEquality().equals(other._dateset, _dateset));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_dateset));

  @override
  String toString() {
    return 'HabitMapState.loaded(dateset: $dateset)';
  }
}

/// @nodoc
abstract mixin class $HabitMapLoadedCopyWith<$Res>
    implements $HabitMapStateCopyWith<$Res> {
  factory $HabitMapLoadedCopyWith(
          HabitMapLoaded value, $Res Function(HabitMapLoaded) _then) =
      _$HabitMapLoadedCopyWithImpl;
  @useResult
  $Res call({Map<DateTime, int> dateset});
}

/// @nodoc
class _$HabitMapLoadedCopyWithImpl<$Res>
    implements $HabitMapLoadedCopyWith<$Res> {
  _$HabitMapLoadedCopyWithImpl(this._self, this._then);

  final HabitMapLoaded _self;
  final $Res Function(HabitMapLoaded) _then;

  /// Create a copy of HabitMapState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? dateset = null,
  }) {
    return _then(HabitMapLoaded(
      dateset: null == dateset
          ? _self._dateset
          : dateset // ignore: cast_nullable_to_non_nullable
              as Map<DateTime, int>,
    ));
  }
}

// dart format on
