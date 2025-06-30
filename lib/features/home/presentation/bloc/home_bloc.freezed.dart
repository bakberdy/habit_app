// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'home_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$HomeEvent {
  Locale get locale;

  /// Create a copy of HomeEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $HomeEventCopyWith<HomeEvent> get copyWith =>
      _$HomeEventCopyWithImpl<HomeEvent>(this as HomeEvent, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is HomeEvent &&
            (identical(other.locale, locale) || other.locale == locale));
  }

  @override
  int get hashCode => Object.hash(runtimeType, locale);

  @override
  String toString() {
    return 'HomeEvent(locale: $locale)';
  }
}

/// @nodoc
abstract mixin class $HomeEventCopyWith<$Res> {
  factory $HomeEventCopyWith(HomeEvent value, $Res Function(HomeEvent) _then) =
      _$HomeEventCopyWithImpl;
  @useResult
  $Res call({Locale locale});
}

/// @nodoc
class _$HomeEventCopyWithImpl<$Res> implements $HomeEventCopyWith<$Res> {
  _$HomeEventCopyWithImpl(this._self, this._then);

  final HomeEvent _self;
  final $Res Function(HomeEvent) _then;

  /// Create a copy of HomeEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? locale = null,
  }) {
    return _then(_self.copyWith(
      locale: null == locale
          ? _self.locale
          : locale // ignore: cast_nullable_to_non_nullable
              as Locale,
    ));
  }
}

/// @nodoc

class _LoadData implements HomeEvent {
  const _LoadData({required this.locale});

  @override
  final Locale locale;

  /// Create a copy of HomeEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$LoadDataCopyWith<_LoadData> get copyWith =>
      __$LoadDataCopyWithImpl<_LoadData>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _LoadData &&
            (identical(other.locale, locale) || other.locale == locale));
  }

  @override
  int get hashCode => Object.hash(runtimeType, locale);

  @override
  String toString() {
    return 'HomeEvent.loadData(locale: $locale)';
  }
}

/// @nodoc
abstract mixin class _$LoadDataCopyWith<$Res>
    implements $HomeEventCopyWith<$Res> {
  factory _$LoadDataCopyWith(_LoadData value, $Res Function(_LoadData) _then) =
      __$LoadDataCopyWithImpl;
  @override
  @useResult
  $Res call({Locale locale});
}

/// @nodoc
class __$LoadDataCopyWithImpl<$Res> implements _$LoadDataCopyWith<$Res> {
  __$LoadDataCopyWithImpl(this._self, this._then);

  final _LoadData _self;
  final $Res Function(_LoadData) _then;

  /// Create a copy of HomeEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? locale = null,
  }) {
    return _then(_LoadData(
      locale: null == locale
          ? _self.locale
          : locale // ignore: cast_nullable_to_non_nullable
              as Locale,
    ));
  }
}

/// @nodoc

class _SetUsername implements HomeEvent {
  const _SetUsername({required this.username, required this.locale});

  final String username;
  @override
  final Locale locale;

  /// Create a copy of HomeEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$SetUsernameCopyWith<_SetUsername> get copyWith =>
      __$SetUsernameCopyWithImpl<_SetUsername>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _SetUsername &&
            (identical(other.username, username) ||
                other.username == username) &&
            (identical(other.locale, locale) || other.locale == locale));
  }

  @override
  int get hashCode => Object.hash(runtimeType, username, locale);

  @override
  String toString() {
    return 'HomeEvent.setUsername(username: $username, locale: $locale)';
  }
}

/// @nodoc
abstract mixin class _$SetUsernameCopyWith<$Res>
    implements $HomeEventCopyWith<$Res> {
  factory _$SetUsernameCopyWith(
          _SetUsername value, $Res Function(_SetUsername) _then) =
      __$SetUsernameCopyWithImpl;
  @override
  @useResult
  $Res call({String username, Locale locale});
}

/// @nodoc
class __$SetUsernameCopyWithImpl<$Res> implements _$SetUsernameCopyWith<$Res> {
  __$SetUsernameCopyWithImpl(this._self, this._then);

  final _SetUsername _self;
  final $Res Function(_SetUsername) _then;

  /// Create a copy of HomeEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? username = null,
    Object? locale = null,
  }) {
    return _then(_SetUsername(
      username: null == username
          ? _self.username
          : username // ignore: cast_nullable_to_non_nullable
              as String,
      locale: null == locale
          ? _self.locale
          : locale // ignore: cast_nullable_to_non_nullable
              as Locale,
    ));
  }
}

/// @nodoc
mixin _$HomeState {
  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is HomeState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'HomeState()';
  }
}

/// @nodoc
class $HomeStateCopyWith<$Res> {
  $HomeStateCopyWith(HomeState _, $Res Function(HomeState) __);
}

/// @nodoc

class HomeInitial implements HomeState {
  const HomeInitial();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is HomeInitial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'HomeState.initial()';
  }
}

/// @nodoc

class HomeIError implements HomeState {
  const HomeIError({required this.errorMessage});

  final String errorMessage;

  /// Create a copy of HomeState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $HomeIErrorCopyWith<HomeIError> get copyWith =>
      _$HomeIErrorCopyWithImpl<HomeIError>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is HomeIError &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage));
  }

  @override
  int get hashCode => Object.hash(runtimeType, errorMessage);

  @override
  String toString() {
    return 'HomeState.error(errorMessage: $errorMessage)';
  }
}

/// @nodoc
abstract mixin class $HomeIErrorCopyWith<$Res>
    implements $HomeStateCopyWith<$Res> {
  factory $HomeIErrorCopyWith(
          HomeIError value, $Res Function(HomeIError) _then) =
      _$HomeIErrorCopyWithImpl;
  @useResult
  $Res call({String errorMessage});
}

/// @nodoc
class _$HomeIErrorCopyWithImpl<$Res> implements $HomeIErrorCopyWith<$Res> {
  _$HomeIErrorCopyWithImpl(this._self, this._then);

  final HomeIError _self;
  final $Res Function(HomeIError) _then;

  /// Create a copy of HomeState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? errorMessage = null,
  }) {
    return _then(HomeIError(
      errorMessage: null == errorMessage
          ? _self.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class HomeLoaded implements HomeState {
  const HomeLoaded({required this.quote, this.username});

  final QuoteEntity quote;
  final String? username;

  /// Create a copy of HomeState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $HomeLoadedCopyWith<HomeLoaded> get copyWith =>
      _$HomeLoadedCopyWithImpl<HomeLoaded>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is HomeLoaded &&
            (identical(other.quote, quote) || other.quote == quote) &&
            (identical(other.username, username) ||
                other.username == username));
  }

  @override
  int get hashCode => Object.hash(runtimeType, quote, username);

  @override
  String toString() {
    return 'HomeState.loaded(quote: $quote, username: $username)';
  }
}

/// @nodoc
abstract mixin class $HomeLoadedCopyWith<$Res>
    implements $HomeStateCopyWith<$Res> {
  factory $HomeLoadedCopyWith(
          HomeLoaded value, $Res Function(HomeLoaded) _then) =
      _$HomeLoadedCopyWithImpl;
  @useResult
  $Res call({QuoteEntity quote, String? username});
}

/// @nodoc
class _$HomeLoadedCopyWithImpl<$Res> implements $HomeLoadedCopyWith<$Res> {
  _$HomeLoadedCopyWithImpl(this._self, this._then);

  final HomeLoaded _self;
  final $Res Function(HomeLoaded) _then;

  /// Create a copy of HomeState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? quote = null,
    Object? username = freezed,
  }) {
    return _then(HomeLoaded(
      quote: null == quote
          ? _self.quote
          : quote // ignore: cast_nullable_to_non_nullable
              as QuoteEntity,
      username: freezed == username
          ? _self.username
          : username // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

// dart format on
