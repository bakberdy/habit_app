// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'catalog_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$CatalogEvent {
  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is CatalogEvent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'CatalogEvent()';
  }
}

/// @nodoc
class $CatalogEventCopyWith<$Res> {
  $CatalogEventCopyWith(CatalogEvent _, $Res Function(CatalogEvent) __);
}

/// @nodoc

class _GetCategories implements CatalogEvent {
  const _GetCategories();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _GetCategories);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'CatalogEvent.loadCategories()';
  }
}

/// @nodoc

class _LoadCategory implements CatalogEvent {
  const _LoadCategory({required this.categoryId});

  final int categoryId;

  /// Create a copy of CatalogEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$LoadCategoryCopyWith<_LoadCategory> get copyWith =>
      __$LoadCategoryCopyWithImpl<_LoadCategory>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _LoadCategory &&
            (identical(other.categoryId, categoryId) ||
                other.categoryId == categoryId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, categoryId);

  @override
  String toString() {
    return 'CatalogEvent.loadCategory(categoryId: $categoryId)';
  }
}

/// @nodoc
abstract mixin class _$LoadCategoryCopyWith<$Res>
    implements $CatalogEventCopyWith<$Res> {
  factory _$LoadCategoryCopyWith(
          _LoadCategory value, $Res Function(_LoadCategory) _then) =
      __$LoadCategoryCopyWithImpl;
  @useResult
  $Res call({int categoryId});
}

/// @nodoc
class __$LoadCategoryCopyWithImpl<$Res>
    implements _$LoadCategoryCopyWith<$Res> {
  __$LoadCategoryCopyWithImpl(this._self, this._then);

  final _LoadCategory _self;
  final $Res Function(_LoadCategory) _then;

  /// Create a copy of CatalogEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? categoryId = null,
  }) {
    return _then(_LoadCategory(
      categoryId: null == categoryId
          ? _self.categoryId
          : categoryId // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _LoadHabit implements CatalogEvent {
  const _LoadHabit({required this.habitId});

  final int habitId;

  /// Create a copy of CatalogEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$LoadHabitCopyWith<_LoadHabit> get copyWith =>
      __$LoadHabitCopyWithImpl<_LoadHabit>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _LoadHabit &&
            (identical(other.habitId, habitId) || other.habitId == habitId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, habitId);

  @override
  String toString() {
    return 'CatalogEvent.loadHabit(habitId: $habitId)';
  }
}

/// @nodoc
abstract mixin class _$LoadHabitCopyWith<$Res>
    implements $CatalogEventCopyWith<$Res> {
  factory _$LoadHabitCopyWith(
          _LoadHabit value, $Res Function(_LoadHabit) _then) =
      __$LoadHabitCopyWithImpl;
  @useResult
  $Res call({int habitId});
}

/// @nodoc
class __$LoadHabitCopyWithImpl<$Res> implements _$LoadHabitCopyWith<$Res> {
  __$LoadHabitCopyWithImpl(this._self, this._then);

  final _LoadHabit _self;
  final $Res Function(_LoadHabit) _then;

  /// Create a copy of CatalogEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? habitId = null,
  }) {
    return _then(_LoadHabit(
      habitId: null == habitId
          ? _self.habitId
          : habitId // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
mixin _$CatalogState {
  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is CatalogState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'CatalogState()';
  }
}

/// @nodoc
class $CatalogStateCopyWith<$Res> {
  $CatalogStateCopyWith(CatalogState _, $Res Function(CatalogState) __);
}

/// @nodoc

class CatalogInitial implements CatalogState {
  const CatalogInitial();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is CatalogInitial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'CatalogState.initial()';
  }
}

/// @nodoc

class CatalogError implements CatalogState {
  const CatalogError(this.message);

  final String message;

  /// Create a copy of CatalogState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $CatalogErrorCopyWith<CatalogError> get copyWith =>
      _$CatalogErrorCopyWithImpl<CatalogError>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is CatalogError &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @override
  String toString() {
    return 'CatalogState.error(message: $message)';
  }
}

/// @nodoc
abstract mixin class $CatalogErrorCopyWith<$Res>
    implements $CatalogStateCopyWith<$Res> {
  factory $CatalogErrorCopyWith(
          CatalogError value, $Res Function(CatalogError) _then) =
      _$CatalogErrorCopyWithImpl;
  @useResult
  $Res call({String message});
}

/// @nodoc
class _$CatalogErrorCopyWithImpl<$Res> implements $CatalogErrorCopyWith<$Res> {
  _$CatalogErrorCopyWithImpl(this._self, this._then);

  final CatalogError _self;
  final $Res Function(CatalogError) _then;

  /// Create a copy of CatalogState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? message = null,
  }) {
    return _then(CatalogError(
      null == message
          ? _self.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class CatalogLoaded implements CatalogState {
  const CatalogLoaded({required final List<CategoryEntity> categories})
      : _categories = categories;

  final List<CategoryEntity> _categories;
  List<CategoryEntity> get categories {
    if (_categories is EqualUnmodifiableListView) return _categories;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_categories);
  }

  /// Create a copy of CatalogState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $CatalogLoadedCopyWith<CatalogLoaded> get copyWith =>
      _$CatalogLoadedCopyWithImpl<CatalogLoaded>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is CatalogLoaded &&
            const DeepCollectionEquality()
                .equals(other._categories, _categories));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_categories));

  @override
  String toString() {
    return 'CatalogState.loaded(categories: $categories)';
  }
}

/// @nodoc
abstract mixin class $CatalogLoadedCopyWith<$Res>
    implements $CatalogStateCopyWith<$Res> {
  factory $CatalogLoadedCopyWith(
          CatalogLoaded value, $Res Function(CatalogLoaded) _then) =
      _$CatalogLoadedCopyWithImpl;
  @useResult
  $Res call({List<CategoryEntity> categories});
}

/// @nodoc
class _$CatalogLoadedCopyWithImpl<$Res>
    implements $CatalogLoadedCopyWith<$Res> {
  _$CatalogLoadedCopyWithImpl(this._self, this._then);

  final CatalogLoaded _self;
  final $Res Function(CatalogLoaded) _then;

  /// Create a copy of CatalogState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? categories = null,
  }) {
    return _then(CatalogLoaded(
      categories: null == categories
          ? _self._categories
          : categories // ignore: cast_nullable_to_non_nullable
              as List<CategoryEntity>,
    ));
  }
}

/// @nodoc

class CategoryLoaded implements CatalogState {
  const CategoryLoaded(
      {required final List<HabitEntity> habits, required this.category})
      : _habits = habits;

  final List<HabitEntity> _habits;
  List<HabitEntity> get habits {
    if (_habits is EqualUnmodifiableListView) return _habits;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_habits);
  }

  final CategoryEntity category;

  /// Create a copy of CatalogState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $CategoryLoadedCopyWith<CategoryLoaded> get copyWith =>
      _$CategoryLoadedCopyWithImpl<CategoryLoaded>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is CategoryLoaded &&
            const DeepCollectionEquality().equals(other._habits, _habits) &&
            (identical(other.category, category) ||
                other.category == category));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_habits), category);

  @override
  String toString() {
    return 'CatalogState.categoryLoaded(habits: $habits, category: $category)';
  }
}

/// @nodoc
abstract mixin class $CategoryLoadedCopyWith<$Res>
    implements $CatalogStateCopyWith<$Res> {
  factory $CategoryLoadedCopyWith(
          CategoryLoaded value, $Res Function(CategoryLoaded) _then) =
      _$CategoryLoadedCopyWithImpl;
  @useResult
  $Res call({List<HabitEntity> habits, CategoryEntity category});
}

/// @nodoc
class _$CategoryLoadedCopyWithImpl<$Res>
    implements $CategoryLoadedCopyWith<$Res> {
  _$CategoryLoadedCopyWithImpl(this._self, this._then);

  final CategoryLoaded _self;
  final $Res Function(CategoryLoaded) _then;

  /// Create a copy of CatalogState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? habits = null,
    Object? category = null,
  }) {
    return _then(CategoryLoaded(
      habits: null == habits
          ? _self._habits
          : habits // ignore: cast_nullable_to_non_nullable
              as List<HabitEntity>,
      category: null == category
          ? _self.category
          : category // ignore: cast_nullable_to_non_nullable
              as CategoryEntity,
    ));
  }
}

/// @nodoc

class HabitLoaded implements CatalogState {
  const HabitLoaded({required this.habit, required this.isSubscribed});

  final HabitEntity habit;
  final bool isSubscribed;

  /// Create a copy of CatalogState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $HabitLoadedCopyWith<HabitLoaded> get copyWith =>
      _$HabitLoadedCopyWithImpl<HabitLoaded>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is HabitLoaded &&
            (identical(other.habit, habit) || other.habit == habit) &&
            (identical(other.isSubscribed, isSubscribed) ||
                other.isSubscribed == isSubscribed));
  }

  @override
  int get hashCode => Object.hash(runtimeType, habit, isSubscribed);

  @override
  String toString() {
    return 'CatalogState.habitLoaded(habit: $habit, isSubscribed: $isSubscribed)';
  }
}

/// @nodoc
abstract mixin class $HabitLoadedCopyWith<$Res>
    implements $CatalogStateCopyWith<$Res> {
  factory $HabitLoadedCopyWith(
          HabitLoaded value, $Res Function(HabitLoaded) _then) =
      _$HabitLoadedCopyWithImpl;
  @useResult
  $Res call({HabitEntity habit, bool isSubscribed});
}

/// @nodoc
class _$HabitLoadedCopyWithImpl<$Res> implements $HabitLoadedCopyWith<$Res> {
  _$HabitLoadedCopyWithImpl(this._self, this._then);

  final HabitLoaded _self;
  final $Res Function(HabitLoaded) _then;

  /// Create a copy of CatalogState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? habit = null,
    Object? isSubscribed = null,
  }) {
    return _then(HabitLoaded(
      habit: null == habit
          ? _self.habit
          : habit // ignore: cast_nullable_to_non_nullable
              as HabitEntity,
      isSubscribed: null == isSubscribed
          ? _self.isSubscribed
          : isSubscribed // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

// dart format on
