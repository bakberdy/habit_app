// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'search_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$SearchEvent {
  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is SearchEvent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'SearchEvent()';
  }
}

/// @nodoc
class $SearchEventCopyWith<$Res> {
  $SearchEventCopyWith(SearchEvent _, $Res Function(SearchEvent) __);
}

/// @nodoc

class _SearchEvent implements SearchEvent {
  const _SearchEvent({required this.query, this.categoryId});

  final String query;
  final int? categoryId;

  /// Create a copy of SearchEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$SearchEventCopyWith<_SearchEvent> get copyWith =>
      __$SearchEventCopyWithImpl<_SearchEvent>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _SearchEvent &&
            (identical(other.query, query) || other.query == query) &&
            (identical(other.categoryId, categoryId) ||
                other.categoryId == categoryId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, query, categoryId);

  @override
  String toString() {
    return 'SearchEvent.search(query: $query, categoryId: $categoryId)';
  }
}

/// @nodoc
abstract mixin class _$SearchEventCopyWith<$Res>
    implements $SearchEventCopyWith<$Res> {
  factory _$SearchEventCopyWith(
          _SearchEvent value, $Res Function(_SearchEvent) _then) =
      __$SearchEventCopyWithImpl;
  @useResult
  $Res call({String query, int? categoryId});
}

/// @nodoc
class __$SearchEventCopyWithImpl<$Res> implements _$SearchEventCopyWith<$Res> {
  __$SearchEventCopyWithImpl(this._self, this._then);

  final _SearchEvent _self;
  final $Res Function(_SearchEvent) _then;

  /// Create a copy of SearchEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? query = null,
    Object? categoryId = freezed,
  }) {
    return _then(_SearchEvent(
      query: null == query
          ? _self.query
          : query // ignore: cast_nullable_to_non_nullable
              as String,
      categoryId: freezed == categoryId
          ? _self.categoryId
          : categoryId // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc

class _Clear implements SearchEvent {
  const _Clear();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _Clear);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'SearchEvent.clear()';
  }
}

/// @nodoc
mixin _$SearchState {
  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is SearchState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'SearchState()';
  }
}

/// @nodoc
class $SearchStateCopyWith<$Res> {
  $SearchStateCopyWith(SearchState _, $Res Function(SearchState) __);
}

/// @nodoc

class SearchInitial implements SearchState {
  const SearchInitial();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is SearchInitial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'SearchState.initial()';
  }
}

/// @nodoc

class SearchError implements SearchState {
  const SearchError();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is SearchError);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'SearchState.error()';
  }
}

/// @nodoc

class Searching implements SearchState {
  const Searching(
      {required this.query, required final List<HabitEntity> habits})
      : _habits = habits;

  final String query;
  final List<HabitEntity> _habits;
  List<HabitEntity> get habits {
    if (_habits is EqualUnmodifiableListView) return _habits;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_habits);
  }

  /// Create a copy of SearchState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $SearchingCopyWith<Searching> get copyWith =>
      _$SearchingCopyWithImpl<Searching>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is Searching &&
            (identical(other.query, query) || other.query == query) &&
            const DeepCollectionEquality().equals(other._habits, _habits));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, query, const DeepCollectionEquality().hash(_habits));

  @override
  String toString() {
    return 'SearchState.searching(query: $query, habits: $habits)';
  }
}

/// @nodoc
abstract mixin class $SearchingCopyWith<$Res>
    implements $SearchStateCopyWith<$Res> {
  factory $SearchingCopyWith(Searching value, $Res Function(Searching) _then) =
      _$SearchingCopyWithImpl;
  @useResult
  $Res call({String query, List<HabitEntity> habits});
}

/// @nodoc
class _$SearchingCopyWithImpl<$Res> implements $SearchingCopyWith<$Res> {
  _$SearchingCopyWithImpl(this._self, this._then);

  final Searching _self;
  final $Res Function(Searching) _then;

  /// Create a copy of SearchState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? query = null,
    Object? habits = null,
  }) {
    return _then(Searching(
      query: null == query
          ? _self.query
          : query // ignore: cast_nullable_to_non_nullable
              as String,
      habits: null == habits
          ? _self._habits
          : habits // ignore: cast_nullable_to_non_nullable
              as List<HabitEntity>,
    ));
  }
}

// dart format on
