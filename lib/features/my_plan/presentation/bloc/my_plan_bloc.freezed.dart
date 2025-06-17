// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'my_plan_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$MyPlanEvent {
  DateTime get date;

  /// Create a copy of MyPlanEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $MyPlanEventCopyWith<MyPlanEvent> get copyWith =>
      _$MyPlanEventCopyWithImpl<MyPlanEvent>(this as MyPlanEvent, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is MyPlanEvent &&
            (identical(other.date, date) || other.date == date));
  }

  @override
  int get hashCode => Object.hash(runtimeType, date);

  @override
  String toString() {
    return 'MyPlanEvent(date: $date)';
  }
}

/// @nodoc
abstract mixin class $MyPlanEventCopyWith<$Res> {
  factory $MyPlanEventCopyWith(
          MyPlanEvent value, $Res Function(MyPlanEvent) _then) =
      _$MyPlanEventCopyWithImpl;
  @useResult
  $Res call({DateTime date});
}

/// @nodoc
class _$MyPlanEventCopyWithImpl<$Res> implements $MyPlanEventCopyWith<$Res> {
  _$MyPlanEventCopyWithImpl(this._self, this._then);

  final MyPlanEvent _self;
  final $Res Function(MyPlanEvent) _then;

  /// Create a copy of MyPlanEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? date = null,
  }) {
    return _then(_self.copyWith(
      date: null == date
          ? _self.date
          : date // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc

class _GetSubscriptions implements MyPlanEvent {
  _GetSubscriptions({required this.date});

  @override
  final DateTime date;

  /// Create a copy of MyPlanEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$GetSubscriptionsCopyWith<_GetSubscriptions> get copyWith =>
      __$GetSubscriptionsCopyWithImpl<_GetSubscriptions>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _GetSubscriptions &&
            (identical(other.date, date) || other.date == date));
  }

  @override
  int get hashCode => Object.hash(runtimeType, date);

  @override
  String toString() {
    return 'MyPlanEvent.getSubscriptionsOn(date: $date)';
  }
}

/// @nodoc
abstract mixin class _$GetSubscriptionsCopyWith<$Res>
    implements $MyPlanEventCopyWith<$Res> {
  factory _$GetSubscriptionsCopyWith(
          _GetSubscriptions value, $Res Function(_GetSubscriptions) _then) =
      __$GetSubscriptionsCopyWithImpl;
  @override
  @useResult
  $Res call({DateTime date});
}

/// @nodoc
class __$GetSubscriptionsCopyWithImpl<$Res>
    implements _$GetSubscriptionsCopyWith<$Res> {
  __$GetSubscriptionsCopyWithImpl(this._self, this._then);

  final _GetSubscriptions _self;
  final $Res Function(_GetSubscriptions) _then;

  /// Create a copy of MyPlanEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? date = null,
  }) {
    return _then(_GetSubscriptions(
      date: null == date
          ? _self.date
          : date // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc

class _ToggleHabitDoneStatus implements MyPlanEvent {
  _ToggleHabitDoneStatus(
      {required this.date, required this.habitId, required this.isDone});

  @override
  final DateTime date;
  final int habitId;
  final bool isDone;

  /// Create a copy of MyPlanEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$ToggleHabitDoneStatusCopyWith<_ToggleHabitDoneStatus> get copyWith =>
      __$ToggleHabitDoneStatusCopyWithImpl<_ToggleHabitDoneStatus>(
          this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ToggleHabitDoneStatus &&
            (identical(other.date, date) || other.date == date) &&
            (identical(other.habitId, habitId) || other.habitId == habitId) &&
            (identical(other.isDone, isDone) || other.isDone == isDone));
  }

  @override
  int get hashCode => Object.hash(runtimeType, date, habitId, isDone);

  @override
  String toString() {
    return 'MyPlanEvent.toggleHabitDoneStatus(date: $date, habitId: $habitId, isDone: $isDone)';
  }
}

/// @nodoc
abstract mixin class _$ToggleHabitDoneStatusCopyWith<$Res>
    implements $MyPlanEventCopyWith<$Res> {
  factory _$ToggleHabitDoneStatusCopyWith(_ToggleHabitDoneStatus value,
          $Res Function(_ToggleHabitDoneStatus) _then) =
      __$ToggleHabitDoneStatusCopyWithImpl;
  @override
  @useResult
  $Res call({DateTime date, int habitId, bool isDone});
}

/// @nodoc
class __$ToggleHabitDoneStatusCopyWithImpl<$Res>
    implements _$ToggleHabitDoneStatusCopyWith<$Res> {
  __$ToggleHabitDoneStatusCopyWithImpl(this._self, this._then);

  final _ToggleHabitDoneStatus _self;
  final $Res Function(_ToggleHabitDoneStatus) _then;

  /// Create a copy of MyPlanEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? date = null,
    Object? habitId = null,
    Object? isDone = null,
  }) {
    return _then(_ToggleHabitDoneStatus(
      date: null == date
          ? _self.date
          : date // ignore: cast_nullable_to_non_nullable
              as DateTime,
      habitId: null == habitId
          ? _self.habitId
          : habitId // ignore: cast_nullable_to_non_nullable
              as int,
      isDone: null == isDone
          ? _self.isDone
          : isDone // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
mixin _$MyPlanState {
  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is MyPlanState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'MyPlanState()';
  }
}

/// @nodoc
class $MyPlanStateCopyWith<$Res> {
  $MyPlanStateCopyWith(MyPlanState _, $Res Function(MyPlanState) __);
}

/// @nodoc

class MyPlanInitial implements MyPlanState {
  const MyPlanInitial();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is MyPlanInitial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'MyPlanState.initial()';
  }
}

/// @nodoc

class MyPlanLoaded implements MyPlanState {
  const MyPlanLoaded(
      {required this.date,
      required this.dayStatus,
      required this.textOfDay,
      required final List<HabitInfo> habitInfo})
      : _habitInfo = habitInfo;

  final DateTime date;
  final DayStatus dayStatus;
  final String textOfDay;
  final List<HabitInfo> _habitInfo;
  List<HabitInfo> get habitInfo {
    if (_habitInfo is EqualUnmodifiableListView) return _habitInfo;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_habitInfo);
  }

  /// Create a copy of MyPlanState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $MyPlanLoadedCopyWith<MyPlanLoaded> get copyWith =>
      _$MyPlanLoadedCopyWithImpl<MyPlanLoaded>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is MyPlanLoaded &&
            (identical(other.date, date) || other.date == date) &&
            (identical(other.dayStatus, dayStatus) ||
                other.dayStatus == dayStatus) &&
            (identical(other.textOfDay, textOfDay) ||
                other.textOfDay == textOfDay) &&
            const DeepCollectionEquality()
                .equals(other._habitInfo, _habitInfo));
  }

  @override
  int get hashCode => Object.hash(runtimeType, date, dayStatus, textOfDay,
      const DeepCollectionEquality().hash(_habitInfo));

  @override
  String toString() {
    return 'MyPlanState.loaded(date: $date, dayStatus: $dayStatus, textOfDay: $textOfDay, habitInfo: $habitInfo)';
  }
}

/// @nodoc
abstract mixin class $MyPlanLoadedCopyWith<$Res>
    implements $MyPlanStateCopyWith<$Res> {
  factory $MyPlanLoadedCopyWith(
          MyPlanLoaded value, $Res Function(MyPlanLoaded) _then) =
      _$MyPlanLoadedCopyWithImpl;
  @useResult
  $Res call(
      {DateTime date,
      DayStatus dayStatus,
      String textOfDay,
      List<HabitInfo> habitInfo});
}

/// @nodoc
class _$MyPlanLoadedCopyWithImpl<$Res> implements $MyPlanLoadedCopyWith<$Res> {
  _$MyPlanLoadedCopyWithImpl(this._self, this._then);

  final MyPlanLoaded _self;
  final $Res Function(MyPlanLoaded) _then;

  /// Create a copy of MyPlanState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? date = null,
    Object? dayStatus = null,
    Object? textOfDay = null,
    Object? habitInfo = null,
  }) {
    return _then(MyPlanLoaded(
      date: null == date
          ? _self.date
          : date // ignore: cast_nullable_to_non_nullable
              as DateTime,
      dayStatus: null == dayStatus
          ? _self.dayStatus
          : dayStatus // ignore: cast_nullable_to_non_nullable
              as DayStatus,
      textOfDay: null == textOfDay
          ? _self.textOfDay
          : textOfDay // ignore: cast_nullable_to_non_nullable
              as String,
      habitInfo: null == habitInfo
          ? _self._habitInfo
          : habitInfo // ignore: cast_nullable_to_non_nullable
              as List<HabitInfo>,
    ));
  }
}

// dart format on
