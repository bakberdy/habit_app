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
  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is MyPlanEvent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'MyPlanEvent()';
  }
}

/// @nodoc
class $MyPlanEventCopyWith<$Res> {
  $MyPlanEventCopyWith(MyPlanEvent _, $Res Function(MyPlanEvent) __);
}

/// @nodoc

class _GetSubscriptions implements MyPlanEvent {
  _GetSubscriptions({required this.date});

  final DateTime date;

  /// Create a copy of MyPlanEvent
  /// with the given fields replaced by the non-null parameter values.
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

class _AddHabitFromDb implements MyPlanEvent {
  _AddHabitFromDb({required this.habitId});

  final int habitId;

  /// Create a copy of MyPlanEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$AddHabitFromDbCopyWith<_AddHabitFromDb> get copyWith =>
      __$AddHabitFromDbCopyWithImpl<_AddHabitFromDb>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _AddHabitFromDb &&
            (identical(other.habitId, habitId) || other.habitId == habitId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, habitId);

  @override
  String toString() {
    return 'MyPlanEvent.addHabitFromDb(habitId: $habitId)';
  }
}

/// @nodoc
abstract mixin class _$AddHabitFromDbCopyWith<$Res>
    implements $MyPlanEventCopyWith<$Res> {
  factory _$AddHabitFromDbCopyWith(
          _AddHabitFromDb value, $Res Function(_AddHabitFromDb) _then) =
      __$AddHabitFromDbCopyWithImpl;
  @useResult
  $Res call({int habitId});
}

/// @nodoc
class __$AddHabitFromDbCopyWithImpl<$Res>
    implements _$AddHabitFromDbCopyWith<$Res> {
  __$AddHabitFromDbCopyWithImpl(this._self, this._then);

  final _AddHabitFromDb _self;
  final $Res Function(_AddHabitFromDb) _then;

  /// Create a copy of MyPlanEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? habitId = null,
  }) {
    return _then(_AddHabitFromDb(
      habitId: null == habitId
          ? _self.habitId
          : habitId // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _AddNewHabit implements MyPlanEvent {
  _AddNewHabit(
      {required this.title,
      required this.description,
      required this.takeMinutes,
      required final List<Weekday> days,
      this.why,
      final List<TipEntity>? tips})
      : _days = days,
        _tips = tips;

  final String title;
  final String description;
  final int? takeMinutes;
  final List<Weekday> _days;
  List<Weekday> get days {
    if (_days is EqualUnmodifiableListView) return _days;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_days);
  }

  final String? why;
  final List<TipEntity>? _tips;
  List<TipEntity>? get tips {
    final value = _tips;
    if (value == null) return null;
    if (_tips is EqualUnmodifiableListView) return _tips;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// Create a copy of MyPlanEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$AddNewHabitCopyWith<_AddNewHabit> get copyWith =>
      __$AddNewHabitCopyWithImpl<_AddNewHabit>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _AddNewHabit &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.takeMinutes, takeMinutes) ||
                other.takeMinutes == takeMinutes) &&
            const DeepCollectionEquality().equals(other._days, _days) &&
            (identical(other.why, why) || other.why == why) &&
            const DeepCollectionEquality().equals(other._tips, _tips));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      title,
      description,
      takeMinutes,
      const DeepCollectionEquality().hash(_days),
      why,
      const DeepCollectionEquality().hash(_tips));

  @override
  String toString() {
    return 'MyPlanEvent.addNewHabit(title: $title, description: $description, takeMinutes: $takeMinutes, days: $days, why: $why, tips: $tips)';
  }
}

/// @nodoc
abstract mixin class _$AddNewHabitCopyWith<$Res>
    implements $MyPlanEventCopyWith<$Res> {
  factory _$AddNewHabitCopyWith(
          _AddNewHabit value, $Res Function(_AddNewHabit) _then) =
      __$AddNewHabitCopyWithImpl;
  @useResult
  $Res call(
      {String title,
      String description,
      int? takeMinutes,
      List<Weekday> days,
      String? why,
      List<TipEntity>? tips});
}

/// @nodoc
class __$AddNewHabitCopyWithImpl<$Res> implements _$AddNewHabitCopyWith<$Res> {
  __$AddNewHabitCopyWithImpl(this._self, this._then);

  final _AddNewHabit _self;
  final $Res Function(_AddNewHabit) _then;

  /// Create a copy of MyPlanEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? title = null,
    Object? description = null,
    Object? takeMinutes = freezed,
    Object? days = null,
    Object? why = freezed,
    Object? tips = freezed,
  }) {
    return _then(_AddNewHabit(
      title: null == title
          ? _self.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _self.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      takeMinutes: freezed == takeMinutes
          ? _self.takeMinutes
          : takeMinutes // ignore: cast_nullable_to_non_nullable
              as int?,
      days: null == days
          ? _self._days
          : days // ignore: cast_nullable_to_non_nullable
              as List<Weekday>,
      why: freezed == why
          ? _self.why
          : why // ignore: cast_nullable_to_non_nullable
              as String?,
      tips: freezed == tips
          ? _self._tips
          : tips // ignore: cast_nullable_to_non_nullable
              as List<TipEntity>?,
    ));
  }
}

/// @nodoc

class _ToggleHabitDoneStatus implements MyPlanEvent {
  _ToggleHabitDoneStatus(
      {required this.date, required this.habitId, required this.isDone});

  final DateTime date;
  final int habitId;
  final bool isDone;

  /// Create a copy of MyPlanEvent
  /// with the given fields replaced by the non-null parameter values.
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

class MyPlanStateInitial implements MyPlanState {
  const MyPlanStateInitial();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is MyPlanStateInitial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'MyPlanState.initial()';
  }
}

/// @nodoc

class MyPlanStateCreated implements MyPlanState {
  const MyPlanStateCreated();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is MyPlanStateCreated);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'MyPlanState.created()';
  }
}

/// @nodoc

class MyPlanStateError implements MyPlanState {
  const MyPlanStateError({required this.message});

  final String message;

  /// Create a copy of MyPlanState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $MyPlanStateErrorCopyWith<MyPlanStateError> get copyWith =>
      _$MyPlanStateErrorCopyWithImpl<MyPlanStateError>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is MyPlanStateError &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @override
  String toString() {
    return 'MyPlanState.errorState(message: $message)';
  }
}

/// @nodoc
abstract mixin class $MyPlanStateErrorCopyWith<$Res>
    implements $MyPlanStateCopyWith<$Res> {
  factory $MyPlanStateErrorCopyWith(
          MyPlanStateError value, $Res Function(MyPlanStateError) _then) =
      _$MyPlanStateErrorCopyWithImpl;
  @useResult
  $Res call({String message});
}

/// @nodoc
class _$MyPlanStateErrorCopyWithImpl<$Res>
    implements $MyPlanStateErrorCopyWith<$Res> {
  _$MyPlanStateErrorCopyWithImpl(this._self, this._then);

  final MyPlanStateError _self;
  final $Res Function(MyPlanStateError) _then;

  /// Create a copy of MyPlanState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? message = null,
  }) {
    return _then(MyPlanStateError(
      message: null == message
          ? _self.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class MyPlanStateLoaded implements MyPlanState {
  const MyPlanStateLoaded(
      {required this.date,
      required this.dayStatus,
      required this.numberOfDoneHabits,
      required this.textOfDay,
      required final List<HabitInfo> habitInfo})
      : _habitInfo = habitInfo;

  final DateTime date;
  final DayStatus dayStatus;
  final int numberOfDoneHabits;
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
  $MyPlanStateLoadedCopyWith<MyPlanStateLoaded> get copyWith =>
      _$MyPlanStateLoadedCopyWithImpl<MyPlanStateLoaded>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is MyPlanStateLoaded &&
            (identical(other.date, date) || other.date == date) &&
            (identical(other.dayStatus, dayStatus) ||
                other.dayStatus == dayStatus) &&
            (identical(other.numberOfDoneHabits, numberOfDoneHabits) ||
                other.numberOfDoneHabits == numberOfDoneHabits) &&
            (identical(other.textOfDay, textOfDay) ||
                other.textOfDay == textOfDay) &&
            const DeepCollectionEquality()
                .equals(other._habitInfo, _habitInfo));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      date,
      dayStatus,
      numberOfDoneHabits,
      textOfDay,
      const DeepCollectionEquality().hash(_habitInfo));

  @override
  String toString() {
    return 'MyPlanState.loaded(date: $date, dayStatus: $dayStatus, numberOfDoneHabits: $numberOfDoneHabits, textOfDay: $textOfDay, habitInfo: $habitInfo)';
  }
}

/// @nodoc
abstract mixin class $MyPlanStateLoadedCopyWith<$Res>
    implements $MyPlanStateCopyWith<$Res> {
  factory $MyPlanStateLoadedCopyWith(
          MyPlanStateLoaded value, $Res Function(MyPlanStateLoaded) _then) =
      _$MyPlanStateLoadedCopyWithImpl;
  @useResult
  $Res call(
      {DateTime date,
      DayStatus dayStatus,
      int numberOfDoneHabits,
      String textOfDay,
      List<HabitInfo> habitInfo});
}

/// @nodoc
class _$MyPlanStateLoadedCopyWithImpl<$Res>
    implements $MyPlanStateLoadedCopyWith<$Res> {
  _$MyPlanStateLoadedCopyWithImpl(this._self, this._then);

  final MyPlanStateLoaded _self;
  final $Res Function(MyPlanStateLoaded) _then;

  /// Create a copy of MyPlanState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? date = null,
    Object? dayStatus = null,
    Object? numberOfDoneHabits = null,
    Object? textOfDay = null,
    Object? habitInfo = null,
  }) {
    return _then(MyPlanStateLoaded(
      date: null == date
          ? _self.date
          : date // ignore: cast_nullable_to_non_nullable
              as DateTime,
      dayStatus: null == dayStatus
          ? _self.dayStatus
          : dayStatus // ignore: cast_nullable_to_non_nullable
              as DayStatus,
      numberOfDoneHabits: null == numberOfDoneHabits
          ? _self.numberOfDoneHabits
          : numberOfDoneHabits // ignore: cast_nullable_to_non_nullable
              as int,
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
