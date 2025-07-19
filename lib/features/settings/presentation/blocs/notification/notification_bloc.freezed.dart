// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'notification_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$NotificationEvent {
  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is NotificationEvent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'NotificationEvent()';
  }
}

/// @nodoc
class $NotificationEventCopyWith<$Res> {
  $NotificationEventCopyWith(
      NotificationEvent _, $Res Function(NotificationEvent) __);
}

/// @nodoc

class _SetDailyEnabled implements NotificationEvent {
  _SetDailyEnabled(this.enabled);

  final bool enabled;

  /// Create a copy of NotificationEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$SetDailyEnabledCopyWith<_SetDailyEnabled> get copyWith =>
      __$SetDailyEnabledCopyWithImpl<_SetDailyEnabled>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _SetDailyEnabled &&
            (identical(other.enabled, enabled) || other.enabled == enabled));
  }

  @override
  int get hashCode => Object.hash(runtimeType, enabled);

  @override
  String toString() {
    return 'NotificationEvent.setDailyEnabled(enabled: $enabled)';
  }
}

/// @nodoc
abstract mixin class _$SetDailyEnabledCopyWith<$Res>
    implements $NotificationEventCopyWith<$Res> {
  factory _$SetDailyEnabledCopyWith(
          _SetDailyEnabled value, $Res Function(_SetDailyEnabled) _then) =
      __$SetDailyEnabledCopyWithImpl;
  @useResult
  $Res call({bool enabled});
}

/// @nodoc
class __$SetDailyEnabledCopyWithImpl<$Res>
    implements _$SetDailyEnabledCopyWith<$Res> {
  __$SetDailyEnabledCopyWithImpl(this._self, this._then);

  final _SetDailyEnabled _self;
  final $Res Function(_SetDailyEnabled) _then;

  /// Create a copy of NotificationEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? enabled = null,
  }) {
    return _then(_SetDailyEnabled(
      null == enabled
          ? _self.enabled
          : enabled // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _SetPushEnabled implements NotificationEvent {
  _SetPushEnabled(this.enabled);

  final bool enabled;

  /// Create a copy of NotificationEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$SetPushEnabledCopyWith<_SetPushEnabled> get copyWith =>
      __$SetPushEnabledCopyWithImpl<_SetPushEnabled>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _SetPushEnabled &&
            (identical(other.enabled, enabled) || other.enabled == enabled));
  }

  @override
  int get hashCode => Object.hash(runtimeType, enabled);

  @override
  String toString() {
    return 'NotificationEvent.setPushEnabled(enabled: $enabled)';
  }
}

/// @nodoc
abstract mixin class _$SetPushEnabledCopyWith<$Res>
    implements $NotificationEventCopyWith<$Res> {
  factory _$SetPushEnabledCopyWith(
          _SetPushEnabled value, $Res Function(_SetPushEnabled) _then) =
      __$SetPushEnabledCopyWithImpl;
  @useResult
  $Res call({bool enabled});
}

/// @nodoc
class __$SetPushEnabledCopyWithImpl<$Res>
    implements _$SetPushEnabledCopyWith<$Res> {
  __$SetPushEnabledCopyWithImpl(this._self, this._then);

  final _SetPushEnabled _self;
  final $Res Function(_SetPushEnabled) _then;

  /// Create a copy of NotificationEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? enabled = null,
  }) {
    return _then(_SetPushEnabled(
      null == enabled
          ? _self.enabled
          : enabled // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _LoadSettings implements NotificationEvent {
  _LoadSettings();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _LoadSettings);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'NotificationEvent.loadSettings()';
  }
}

/// @nodoc
mixin _$NotificationState {
  bool get pushEnabled;
  bool get dailyEnabled;
  bool get isLoading;

  /// Create a copy of NotificationState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $NotificationStateCopyWith<NotificationState> get copyWith =>
      _$NotificationStateCopyWithImpl<NotificationState>(
          this as NotificationState, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is NotificationState &&
            (identical(other.pushEnabled, pushEnabled) ||
                other.pushEnabled == pushEnabled) &&
            (identical(other.dailyEnabled, dailyEnabled) ||
                other.dailyEnabled == dailyEnabled) &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, pushEnabled, dailyEnabled, isLoading);

  @override
  String toString() {
    return 'NotificationState(pushEnabled: $pushEnabled, dailyEnabled: $dailyEnabled, isLoading: $isLoading)';
  }
}

/// @nodoc
abstract mixin class $NotificationStateCopyWith<$Res> {
  factory $NotificationStateCopyWith(
          NotificationState value, $Res Function(NotificationState) _then) =
      _$NotificationStateCopyWithImpl;
  @useResult
  $Res call({bool pushEnabled, bool dailyEnabled, bool isLoading});
}

/// @nodoc
class _$NotificationStateCopyWithImpl<$Res>
    implements $NotificationStateCopyWith<$Res> {
  _$NotificationStateCopyWithImpl(this._self, this._then);

  final NotificationState _self;
  final $Res Function(NotificationState) _then;

  /// Create a copy of NotificationState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? pushEnabled = null,
    Object? dailyEnabled = null,
    Object? isLoading = null,
  }) {
    return _then(_self.copyWith(
      pushEnabled: null == pushEnabled
          ? _self.pushEnabled
          : pushEnabled // ignore: cast_nullable_to_non_nullable
              as bool,
      dailyEnabled: null == dailyEnabled
          ? _self.dailyEnabled
          : dailyEnabled // ignore: cast_nullable_to_non_nullable
              as bool,
      isLoading: null == isLoading
          ? _self.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _NotificationState implements NotificationState {
  const _NotificationState(
      {required this.pushEnabled,
      required this.dailyEnabled,
      required this.isLoading});

  @override
  final bool pushEnabled;
  @override
  final bool dailyEnabled;
  @override
  final bool isLoading;

  /// Create a copy of NotificationState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$NotificationStateCopyWith<_NotificationState> get copyWith =>
      __$NotificationStateCopyWithImpl<_NotificationState>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _NotificationState &&
            (identical(other.pushEnabled, pushEnabled) ||
                other.pushEnabled == pushEnabled) &&
            (identical(other.dailyEnabled, dailyEnabled) ||
                other.dailyEnabled == dailyEnabled) &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, pushEnabled, dailyEnabled, isLoading);

  @override
  String toString() {
    return 'NotificationState(pushEnabled: $pushEnabled, dailyEnabled: $dailyEnabled, isLoading: $isLoading)';
  }
}

/// @nodoc
abstract mixin class _$NotificationStateCopyWith<$Res>
    implements $NotificationStateCopyWith<$Res> {
  factory _$NotificationStateCopyWith(
          _NotificationState value, $Res Function(_NotificationState) _then) =
      __$NotificationStateCopyWithImpl;
  @override
  @useResult
  $Res call({bool pushEnabled, bool dailyEnabled, bool isLoading});
}

/// @nodoc
class __$NotificationStateCopyWithImpl<$Res>
    implements _$NotificationStateCopyWith<$Res> {
  __$NotificationStateCopyWithImpl(this._self, this._then);

  final _NotificationState _self;
  final $Res Function(_NotificationState) _then;

  /// Create a copy of NotificationState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? pushEnabled = null,
    Object? dailyEnabled = null,
    Object? isLoading = null,
  }) {
    return _then(_NotificationState(
      pushEnabled: null == pushEnabled
          ? _self.pushEnabled
          : pushEnabled // ignore: cast_nullable_to_non_nullable
              as bool,
      dailyEnabled: null == dailyEnabled
          ? _self.dailyEnabled
          : dailyEnabled // ignore: cast_nullable_to_non_nullable
              as bool,
      isLoading: null == isLoading
          ? _self.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

// dart format on
