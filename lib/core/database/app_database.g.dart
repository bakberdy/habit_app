// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'app_database.dart';

// ignore_for_file: type=lint
class $CategoriesTable extends Categories
    with TableInfo<$CategoriesTable, Category> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $CategoriesTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<int> id = GeneratedColumn<int>(
      'id', aliasedName, false,
      type: DriftSqlType.int, requiredDuringInsert: false);
  static const VerificationMeta _imagePathMeta =
      const VerificationMeta('imagePath');
  @override
  late final GeneratedColumn<String> imagePath = GeneratedColumn<String>(
      'image_path', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _titleEnMeta =
      const VerificationMeta('titleEn');
  @override
  late final GeneratedColumn<String> titleEn = GeneratedColumn<String>(
      'title_en', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _descriptionEnMeta =
      const VerificationMeta('descriptionEn');
  @override
  late final GeneratedColumn<String> descriptionEn = GeneratedColumn<String>(
      'description_en', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _titleRuMeta =
      const VerificationMeta('titleRu');
  @override
  late final GeneratedColumn<String> titleRu = GeneratedColumn<String>(
      'title_ru', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _descriptionRuMeta =
      const VerificationMeta('descriptionRu');
  @override
  late final GeneratedColumn<String> descriptionRu = GeneratedColumn<String>(
      'description_ru', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _titleKkMeta =
      const VerificationMeta('titleKk');
  @override
  late final GeneratedColumn<String> titleKk = GeneratedColumn<String>(
      'title_kk', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _descriptionKkMeta =
      const VerificationMeta('descriptionKk');
  @override
  late final GeneratedColumn<String> descriptionKk = GeneratedColumn<String>(
      'description_kk', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  @override
  List<GeneratedColumn> get $columns => [
        id,
        imagePath,
        titleEn,
        descriptionEn,
        titleRu,
        descriptionRu,
        titleKk,
        descriptionKk
      ];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'categories';
  @override
  VerificationContext validateIntegrity(Insertable<Category> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('image_path')) {
      context.handle(_imagePathMeta,
          imagePath.isAcceptableOrUnknown(data['image_path']!, _imagePathMeta));
    }
    if (data.containsKey('title_en')) {
      context.handle(_titleEnMeta,
          titleEn.isAcceptableOrUnknown(data['title_en']!, _titleEnMeta));
    } else if (isInserting) {
      context.missing(_titleEnMeta);
    }
    if (data.containsKey('description_en')) {
      context.handle(
          _descriptionEnMeta,
          descriptionEn.isAcceptableOrUnknown(
              data['description_en']!, _descriptionEnMeta));
    } else if (isInserting) {
      context.missing(_descriptionEnMeta);
    }
    if (data.containsKey('title_ru')) {
      context.handle(_titleRuMeta,
          titleRu.isAcceptableOrUnknown(data['title_ru']!, _titleRuMeta));
    } else if (isInserting) {
      context.missing(_titleRuMeta);
    }
    if (data.containsKey('description_ru')) {
      context.handle(
          _descriptionRuMeta,
          descriptionRu.isAcceptableOrUnknown(
              data['description_ru']!, _descriptionRuMeta));
    } else if (isInserting) {
      context.missing(_descriptionRuMeta);
    }
    if (data.containsKey('title_kk')) {
      context.handle(_titleKkMeta,
          titleKk.isAcceptableOrUnknown(data['title_kk']!, _titleKkMeta));
    } else if (isInserting) {
      context.missing(_titleKkMeta);
    }
    if (data.containsKey('description_kk')) {
      context.handle(
          _descriptionKkMeta,
          descriptionKk.isAcceptableOrUnknown(
              data['description_kk']!, _descriptionKkMeta));
    } else if (isInserting) {
      context.missing(_descriptionKkMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  Category map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return Category(
      id: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}id'])!,
      imagePath: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}image_path']),
      titleEn: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}title_en'])!,
      descriptionEn: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}description_en'])!,
      titleRu: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}title_ru'])!,
      descriptionRu: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}description_ru'])!,
      titleKk: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}title_kk'])!,
      descriptionKk: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}description_kk'])!,
    );
  }

  @override
  $CategoriesTable createAlias(String alias) {
    return $CategoriesTable(attachedDatabase, alias);
  }
}

class Category extends DataClass implements Insertable<Category> {
  final int id;
  final String? imagePath;
  final String titleEn;
  final String descriptionEn;
  final String titleRu;
  final String descriptionRu;
  final String titleKk;
  final String descriptionKk;
  const Category(
      {required this.id,
      this.imagePath,
      required this.titleEn,
      required this.descriptionEn,
      required this.titleRu,
      required this.descriptionRu,
      required this.titleKk,
      required this.descriptionKk});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    if (!nullToAbsent || imagePath != null) {
      map['image_path'] = Variable<String>(imagePath);
    }
    map['title_en'] = Variable<String>(titleEn);
    map['description_en'] = Variable<String>(descriptionEn);
    map['title_ru'] = Variable<String>(titleRu);
    map['description_ru'] = Variable<String>(descriptionRu);
    map['title_kk'] = Variable<String>(titleKk);
    map['description_kk'] = Variable<String>(descriptionKk);
    return map;
  }

  CategoriesCompanion toCompanion(bool nullToAbsent) {
    return CategoriesCompanion(
      id: Value(id),
      imagePath: imagePath == null && nullToAbsent
          ? const Value.absent()
          : Value(imagePath),
      titleEn: Value(titleEn),
      descriptionEn: Value(descriptionEn),
      titleRu: Value(titleRu),
      descriptionRu: Value(descriptionRu),
      titleKk: Value(titleKk),
      descriptionKk: Value(descriptionKk),
    );
  }

  factory Category.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return Category(
      id: serializer.fromJson<int>(json['id']),
      imagePath: serializer.fromJson<String?>(json['imagePath']),
      titleEn: serializer.fromJson<String>(json['titleEn']),
      descriptionEn: serializer.fromJson<String>(json['descriptionEn']),
      titleRu: serializer.fromJson<String>(json['titleRu']),
      descriptionRu: serializer.fromJson<String>(json['descriptionRu']),
      titleKk: serializer.fromJson<String>(json['titleKk']),
      descriptionKk: serializer.fromJson<String>(json['descriptionKk']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'imagePath': serializer.toJson<String?>(imagePath),
      'titleEn': serializer.toJson<String>(titleEn),
      'descriptionEn': serializer.toJson<String>(descriptionEn),
      'titleRu': serializer.toJson<String>(titleRu),
      'descriptionRu': serializer.toJson<String>(descriptionRu),
      'titleKk': serializer.toJson<String>(titleKk),
      'descriptionKk': serializer.toJson<String>(descriptionKk),
    };
  }

  Category copyWith(
          {int? id,
          Value<String?> imagePath = const Value.absent(),
          String? titleEn,
          String? descriptionEn,
          String? titleRu,
          String? descriptionRu,
          String? titleKk,
          String? descriptionKk}) =>
      Category(
        id: id ?? this.id,
        imagePath: imagePath.present ? imagePath.value : this.imagePath,
        titleEn: titleEn ?? this.titleEn,
        descriptionEn: descriptionEn ?? this.descriptionEn,
        titleRu: titleRu ?? this.titleRu,
        descriptionRu: descriptionRu ?? this.descriptionRu,
        titleKk: titleKk ?? this.titleKk,
        descriptionKk: descriptionKk ?? this.descriptionKk,
      );
  Category copyWithCompanion(CategoriesCompanion data) {
    return Category(
      id: data.id.present ? data.id.value : this.id,
      imagePath: data.imagePath.present ? data.imagePath.value : this.imagePath,
      titleEn: data.titleEn.present ? data.titleEn.value : this.titleEn,
      descriptionEn: data.descriptionEn.present
          ? data.descriptionEn.value
          : this.descriptionEn,
      titleRu: data.titleRu.present ? data.titleRu.value : this.titleRu,
      descriptionRu: data.descriptionRu.present
          ? data.descriptionRu.value
          : this.descriptionRu,
      titleKk: data.titleKk.present ? data.titleKk.value : this.titleKk,
      descriptionKk: data.descriptionKk.present
          ? data.descriptionKk.value
          : this.descriptionKk,
    );
  }

  @override
  String toString() {
    return (StringBuffer('Category(')
          ..write('id: $id, ')
          ..write('imagePath: $imagePath, ')
          ..write('titleEn: $titleEn, ')
          ..write('descriptionEn: $descriptionEn, ')
          ..write('titleRu: $titleRu, ')
          ..write('descriptionRu: $descriptionRu, ')
          ..write('titleKk: $titleKk, ')
          ..write('descriptionKk: $descriptionKk')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(id, imagePath, titleEn, descriptionEn,
      titleRu, descriptionRu, titleKk, descriptionKk);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is Category &&
          other.id == this.id &&
          other.imagePath == this.imagePath &&
          other.titleEn == this.titleEn &&
          other.descriptionEn == this.descriptionEn &&
          other.titleRu == this.titleRu &&
          other.descriptionRu == this.descriptionRu &&
          other.titleKk == this.titleKk &&
          other.descriptionKk == this.descriptionKk);
}

class CategoriesCompanion extends UpdateCompanion<Category> {
  final Value<int> id;
  final Value<String?> imagePath;
  final Value<String> titleEn;
  final Value<String> descriptionEn;
  final Value<String> titleRu;
  final Value<String> descriptionRu;
  final Value<String> titleKk;
  final Value<String> descriptionKk;
  const CategoriesCompanion({
    this.id = const Value.absent(),
    this.imagePath = const Value.absent(),
    this.titleEn = const Value.absent(),
    this.descriptionEn = const Value.absent(),
    this.titleRu = const Value.absent(),
    this.descriptionRu = const Value.absent(),
    this.titleKk = const Value.absent(),
    this.descriptionKk = const Value.absent(),
  });
  CategoriesCompanion.insert({
    this.id = const Value.absent(),
    this.imagePath = const Value.absent(),
    required String titleEn,
    required String descriptionEn,
    required String titleRu,
    required String descriptionRu,
    required String titleKk,
    required String descriptionKk,
  })  : titleEn = Value(titleEn),
        descriptionEn = Value(descriptionEn),
        titleRu = Value(titleRu),
        descriptionRu = Value(descriptionRu),
        titleKk = Value(titleKk),
        descriptionKk = Value(descriptionKk);
  static Insertable<Category> custom({
    Expression<int>? id,
    Expression<String>? imagePath,
    Expression<String>? titleEn,
    Expression<String>? descriptionEn,
    Expression<String>? titleRu,
    Expression<String>? descriptionRu,
    Expression<String>? titleKk,
    Expression<String>? descriptionKk,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (imagePath != null) 'image_path': imagePath,
      if (titleEn != null) 'title_en': titleEn,
      if (descriptionEn != null) 'description_en': descriptionEn,
      if (titleRu != null) 'title_ru': titleRu,
      if (descriptionRu != null) 'description_ru': descriptionRu,
      if (titleKk != null) 'title_kk': titleKk,
      if (descriptionKk != null) 'description_kk': descriptionKk,
    });
  }

  CategoriesCompanion copyWith(
      {Value<int>? id,
      Value<String?>? imagePath,
      Value<String>? titleEn,
      Value<String>? descriptionEn,
      Value<String>? titleRu,
      Value<String>? descriptionRu,
      Value<String>? titleKk,
      Value<String>? descriptionKk}) {
    return CategoriesCompanion(
      id: id ?? this.id,
      imagePath: imagePath ?? this.imagePath,
      titleEn: titleEn ?? this.titleEn,
      descriptionEn: descriptionEn ?? this.descriptionEn,
      titleRu: titleRu ?? this.titleRu,
      descriptionRu: descriptionRu ?? this.descriptionRu,
      titleKk: titleKk ?? this.titleKk,
      descriptionKk: descriptionKk ?? this.descriptionKk,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (imagePath.present) {
      map['image_path'] = Variable<String>(imagePath.value);
    }
    if (titleEn.present) {
      map['title_en'] = Variable<String>(titleEn.value);
    }
    if (descriptionEn.present) {
      map['description_en'] = Variable<String>(descriptionEn.value);
    }
    if (titleRu.present) {
      map['title_ru'] = Variable<String>(titleRu.value);
    }
    if (descriptionRu.present) {
      map['description_ru'] = Variable<String>(descriptionRu.value);
    }
    if (titleKk.present) {
      map['title_kk'] = Variable<String>(titleKk.value);
    }
    if (descriptionKk.present) {
      map['description_kk'] = Variable<String>(descriptionKk.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('CategoriesCompanion(')
          ..write('id: $id, ')
          ..write('imagePath: $imagePath, ')
          ..write('titleEn: $titleEn, ')
          ..write('descriptionEn: $descriptionEn, ')
          ..write('titleRu: $titleRu, ')
          ..write('descriptionRu: $descriptionRu, ')
          ..write('titleKk: $titleKk, ')
          ..write('descriptionKk: $descriptionKk')
          ..write(')'))
        .toString();
  }
}

class $HabitsTable extends Habits with TableInfo<$HabitsTable, Habit> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $HabitsTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<int> id = GeneratedColumn<int>(
      'id', aliasedName, false,
      hasAutoIncrement: true,
      type: DriftSqlType.int,
      requiredDuringInsert: false,
      defaultConstraints:
          GeneratedColumn.constraintIsAlways('PRIMARY KEY AUTOINCREMENT'));
  static const VerificationMeta _takesTimeMeta =
      const VerificationMeta('takesTime');
  @override
  late final GeneratedColumn<int> takesTime = GeneratedColumn<int>(
      'takes_time', aliasedName, false,
      type: DriftSqlType.int, requiredDuringInsert: true);
  static const VerificationMeta _categoryIdMeta =
      const VerificationMeta('categoryId');
  @override
  late final GeneratedColumn<int> categoryId = GeneratedColumn<int>(
      'category_id', aliasedName, false,
      type: DriftSqlType.int,
      requiredDuringInsert: true,
      defaultConstraints:
          GeneratedColumn.constraintIsAlways('REFERENCES categories (id)'));
  static const VerificationMeta _titleEnMeta =
      const VerificationMeta('titleEn');
  @override
  late final GeneratedColumn<String> titleEn =
      GeneratedColumn<String>('title_en', aliasedName, false,
          additionalChecks: GeneratedColumn.checkTextLength(
            minTextLength: 1,
          ),
          type: DriftSqlType.string,
          requiredDuringInsert: true,
          defaultConstraints: GeneratedColumn.constraintIsAlways('UNIQUE'));
  static const VerificationMeta _descriptionEnMeta =
      const VerificationMeta('descriptionEn');
  @override
  late final GeneratedColumn<String> descriptionEn = GeneratedColumn<String>(
      'description_en', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _whyEnMeta = const VerificationMeta('whyEn');
  @override
  late final GeneratedColumn<String> whyEn = GeneratedColumn<String>(
      'why_en', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _titleKkMeta =
      const VerificationMeta('titleKk');
  @override
  late final GeneratedColumn<String> titleKk =
      GeneratedColumn<String>('title_kk', aliasedName, false,
          additionalChecks: GeneratedColumn.checkTextLength(
            minTextLength: 1,
          ),
          type: DriftSqlType.string,
          requiredDuringInsert: true,
          defaultConstraints: GeneratedColumn.constraintIsAlways('UNIQUE'));
  static const VerificationMeta _descriptionKkMeta =
      const VerificationMeta('descriptionKk');
  @override
  late final GeneratedColumn<String> descriptionKk = GeneratedColumn<String>(
      'description_kk', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _whyKkMeta = const VerificationMeta('whyKk');
  @override
  late final GeneratedColumn<String> whyKk = GeneratedColumn<String>(
      'why_kk', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _titleRuMeta =
      const VerificationMeta('titleRu');
  @override
  late final GeneratedColumn<String> titleRu =
      GeneratedColumn<String>('title_ru', aliasedName, false,
          additionalChecks: GeneratedColumn.checkTextLength(
            minTextLength: 1,
          ),
          type: DriftSqlType.string,
          requiredDuringInsert: true,
          defaultConstraints: GeneratedColumn.constraintIsAlways('UNIQUE'));
  static const VerificationMeta _descriptionRuMeta =
      const VerificationMeta('descriptionRu');
  @override
  late final GeneratedColumn<String> descriptionRu = GeneratedColumn<String>(
      'description_ru', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _whyRuMeta = const VerificationMeta('whyRu');
  @override
  late final GeneratedColumn<String> whyRu = GeneratedColumn<String>(
      'why_ru', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  @override
  List<GeneratedColumn> get $columns => [
        id,
        takesTime,
        categoryId,
        titleEn,
        descriptionEn,
        whyEn,
        titleKk,
        descriptionKk,
        whyKk,
        titleRu,
        descriptionRu,
        whyRu
      ];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'habits';
  @override
  VerificationContext validateIntegrity(Insertable<Habit> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('takes_time')) {
      context.handle(_takesTimeMeta,
          takesTime.isAcceptableOrUnknown(data['takes_time']!, _takesTimeMeta));
    } else if (isInserting) {
      context.missing(_takesTimeMeta);
    }
    if (data.containsKey('category_id')) {
      context.handle(
          _categoryIdMeta,
          categoryId.isAcceptableOrUnknown(
              data['category_id']!, _categoryIdMeta));
    } else if (isInserting) {
      context.missing(_categoryIdMeta);
    }
    if (data.containsKey('title_en')) {
      context.handle(_titleEnMeta,
          titleEn.isAcceptableOrUnknown(data['title_en']!, _titleEnMeta));
    } else if (isInserting) {
      context.missing(_titleEnMeta);
    }
    if (data.containsKey('description_en')) {
      context.handle(
          _descriptionEnMeta,
          descriptionEn.isAcceptableOrUnknown(
              data['description_en']!, _descriptionEnMeta));
    } else if (isInserting) {
      context.missing(_descriptionEnMeta);
    }
    if (data.containsKey('why_en')) {
      context.handle(
          _whyEnMeta, whyEn.isAcceptableOrUnknown(data['why_en']!, _whyEnMeta));
    }
    if (data.containsKey('title_kk')) {
      context.handle(_titleKkMeta,
          titleKk.isAcceptableOrUnknown(data['title_kk']!, _titleKkMeta));
    } else if (isInserting) {
      context.missing(_titleKkMeta);
    }
    if (data.containsKey('description_kk')) {
      context.handle(
          _descriptionKkMeta,
          descriptionKk.isAcceptableOrUnknown(
              data['description_kk']!, _descriptionKkMeta));
    } else if (isInserting) {
      context.missing(_descriptionKkMeta);
    }
    if (data.containsKey('why_kk')) {
      context.handle(
          _whyKkMeta, whyKk.isAcceptableOrUnknown(data['why_kk']!, _whyKkMeta));
    }
    if (data.containsKey('title_ru')) {
      context.handle(_titleRuMeta,
          titleRu.isAcceptableOrUnknown(data['title_ru']!, _titleRuMeta));
    } else if (isInserting) {
      context.missing(_titleRuMeta);
    }
    if (data.containsKey('description_ru')) {
      context.handle(
          _descriptionRuMeta,
          descriptionRu.isAcceptableOrUnknown(
              data['description_ru']!, _descriptionRuMeta));
    } else if (isInserting) {
      context.missing(_descriptionRuMeta);
    }
    if (data.containsKey('why_ru')) {
      context.handle(
          _whyRuMeta, whyRu.isAcceptableOrUnknown(data['why_ru']!, _whyRuMeta));
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  Habit map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return Habit(
      id: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}id'])!,
      takesTime: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}takes_time'])!,
      categoryId: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}category_id'])!,
      titleEn: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}title_en'])!,
      descriptionEn: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}description_en'])!,
      whyEn: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}why_en']),
      titleKk: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}title_kk'])!,
      descriptionKk: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}description_kk'])!,
      whyKk: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}why_kk']),
      titleRu: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}title_ru'])!,
      descriptionRu: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}description_ru'])!,
      whyRu: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}why_ru']),
    );
  }

  @override
  $HabitsTable createAlias(String alias) {
    return $HabitsTable(attachedDatabase, alias);
  }
}

class Habit extends DataClass implements Insertable<Habit> {
  final int id;
  final int takesTime;
  final int categoryId;
  final String titleEn;
  final String descriptionEn;
  final String? whyEn;
  final String titleKk;
  final String descriptionKk;
  final String? whyKk;
  final String titleRu;
  final String descriptionRu;
  final String? whyRu;
  const Habit(
      {required this.id,
      required this.takesTime,
      required this.categoryId,
      required this.titleEn,
      required this.descriptionEn,
      this.whyEn,
      required this.titleKk,
      required this.descriptionKk,
      this.whyKk,
      required this.titleRu,
      required this.descriptionRu,
      this.whyRu});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    map['takes_time'] = Variable<int>(takesTime);
    map['category_id'] = Variable<int>(categoryId);
    map['title_en'] = Variable<String>(titleEn);
    map['description_en'] = Variable<String>(descriptionEn);
    if (!nullToAbsent || whyEn != null) {
      map['why_en'] = Variable<String>(whyEn);
    }
    map['title_kk'] = Variable<String>(titleKk);
    map['description_kk'] = Variable<String>(descriptionKk);
    if (!nullToAbsent || whyKk != null) {
      map['why_kk'] = Variable<String>(whyKk);
    }
    map['title_ru'] = Variable<String>(titleRu);
    map['description_ru'] = Variable<String>(descriptionRu);
    if (!nullToAbsent || whyRu != null) {
      map['why_ru'] = Variable<String>(whyRu);
    }
    return map;
  }

  HabitsCompanion toCompanion(bool nullToAbsent) {
    return HabitsCompanion(
      id: Value(id),
      takesTime: Value(takesTime),
      categoryId: Value(categoryId),
      titleEn: Value(titleEn),
      descriptionEn: Value(descriptionEn),
      whyEn:
          whyEn == null && nullToAbsent ? const Value.absent() : Value(whyEn),
      titleKk: Value(titleKk),
      descriptionKk: Value(descriptionKk),
      whyKk:
          whyKk == null && nullToAbsent ? const Value.absent() : Value(whyKk),
      titleRu: Value(titleRu),
      descriptionRu: Value(descriptionRu),
      whyRu:
          whyRu == null && nullToAbsent ? const Value.absent() : Value(whyRu),
    );
  }

  factory Habit.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return Habit(
      id: serializer.fromJson<int>(json['id']),
      takesTime: serializer.fromJson<int>(json['takesTime']),
      categoryId: serializer.fromJson<int>(json['categoryId']),
      titleEn: serializer.fromJson<String>(json['titleEn']),
      descriptionEn: serializer.fromJson<String>(json['descriptionEn']),
      whyEn: serializer.fromJson<String?>(json['whyEn']),
      titleKk: serializer.fromJson<String>(json['titleKk']),
      descriptionKk: serializer.fromJson<String>(json['descriptionKk']),
      whyKk: serializer.fromJson<String?>(json['whyKk']),
      titleRu: serializer.fromJson<String>(json['titleRu']),
      descriptionRu: serializer.fromJson<String>(json['descriptionRu']),
      whyRu: serializer.fromJson<String?>(json['whyRu']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'takesTime': serializer.toJson<int>(takesTime),
      'categoryId': serializer.toJson<int>(categoryId),
      'titleEn': serializer.toJson<String>(titleEn),
      'descriptionEn': serializer.toJson<String>(descriptionEn),
      'whyEn': serializer.toJson<String?>(whyEn),
      'titleKk': serializer.toJson<String>(titleKk),
      'descriptionKk': serializer.toJson<String>(descriptionKk),
      'whyKk': serializer.toJson<String?>(whyKk),
      'titleRu': serializer.toJson<String>(titleRu),
      'descriptionRu': serializer.toJson<String>(descriptionRu),
      'whyRu': serializer.toJson<String?>(whyRu),
    };
  }

  Habit copyWith(
          {int? id,
          int? takesTime,
          int? categoryId,
          String? titleEn,
          String? descriptionEn,
          Value<String?> whyEn = const Value.absent(),
          String? titleKk,
          String? descriptionKk,
          Value<String?> whyKk = const Value.absent(),
          String? titleRu,
          String? descriptionRu,
          Value<String?> whyRu = const Value.absent()}) =>
      Habit(
        id: id ?? this.id,
        takesTime: takesTime ?? this.takesTime,
        categoryId: categoryId ?? this.categoryId,
        titleEn: titleEn ?? this.titleEn,
        descriptionEn: descriptionEn ?? this.descriptionEn,
        whyEn: whyEn.present ? whyEn.value : this.whyEn,
        titleKk: titleKk ?? this.titleKk,
        descriptionKk: descriptionKk ?? this.descriptionKk,
        whyKk: whyKk.present ? whyKk.value : this.whyKk,
        titleRu: titleRu ?? this.titleRu,
        descriptionRu: descriptionRu ?? this.descriptionRu,
        whyRu: whyRu.present ? whyRu.value : this.whyRu,
      );
  Habit copyWithCompanion(HabitsCompanion data) {
    return Habit(
      id: data.id.present ? data.id.value : this.id,
      takesTime: data.takesTime.present ? data.takesTime.value : this.takesTime,
      categoryId:
          data.categoryId.present ? data.categoryId.value : this.categoryId,
      titleEn: data.titleEn.present ? data.titleEn.value : this.titleEn,
      descriptionEn: data.descriptionEn.present
          ? data.descriptionEn.value
          : this.descriptionEn,
      whyEn: data.whyEn.present ? data.whyEn.value : this.whyEn,
      titleKk: data.titleKk.present ? data.titleKk.value : this.titleKk,
      descriptionKk: data.descriptionKk.present
          ? data.descriptionKk.value
          : this.descriptionKk,
      whyKk: data.whyKk.present ? data.whyKk.value : this.whyKk,
      titleRu: data.titleRu.present ? data.titleRu.value : this.titleRu,
      descriptionRu: data.descriptionRu.present
          ? data.descriptionRu.value
          : this.descriptionRu,
      whyRu: data.whyRu.present ? data.whyRu.value : this.whyRu,
    );
  }

  @override
  String toString() {
    return (StringBuffer('Habit(')
          ..write('id: $id, ')
          ..write('takesTime: $takesTime, ')
          ..write('categoryId: $categoryId, ')
          ..write('titleEn: $titleEn, ')
          ..write('descriptionEn: $descriptionEn, ')
          ..write('whyEn: $whyEn, ')
          ..write('titleKk: $titleKk, ')
          ..write('descriptionKk: $descriptionKk, ')
          ..write('whyKk: $whyKk, ')
          ..write('titleRu: $titleRu, ')
          ..write('descriptionRu: $descriptionRu, ')
          ..write('whyRu: $whyRu')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(
      id,
      takesTime,
      categoryId,
      titleEn,
      descriptionEn,
      whyEn,
      titleKk,
      descriptionKk,
      whyKk,
      titleRu,
      descriptionRu,
      whyRu);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is Habit &&
          other.id == this.id &&
          other.takesTime == this.takesTime &&
          other.categoryId == this.categoryId &&
          other.titleEn == this.titleEn &&
          other.descriptionEn == this.descriptionEn &&
          other.whyEn == this.whyEn &&
          other.titleKk == this.titleKk &&
          other.descriptionKk == this.descriptionKk &&
          other.whyKk == this.whyKk &&
          other.titleRu == this.titleRu &&
          other.descriptionRu == this.descriptionRu &&
          other.whyRu == this.whyRu);
}

class HabitsCompanion extends UpdateCompanion<Habit> {
  final Value<int> id;
  final Value<int> takesTime;
  final Value<int> categoryId;
  final Value<String> titleEn;
  final Value<String> descriptionEn;
  final Value<String?> whyEn;
  final Value<String> titleKk;
  final Value<String> descriptionKk;
  final Value<String?> whyKk;
  final Value<String> titleRu;
  final Value<String> descriptionRu;
  final Value<String?> whyRu;
  const HabitsCompanion({
    this.id = const Value.absent(),
    this.takesTime = const Value.absent(),
    this.categoryId = const Value.absent(),
    this.titleEn = const Value.absent(),
    this.descriptionEn = const Value.absent(),
    this.whyEn = const Value.absent(),
    this.titleKk = const Value.absent(),
    this.descriptionKk = const Value.absent(),
    this.whyKk = const Value.absent(),
    this.titleRu = const Value.absent(),
    this.descriptionRu = const Value.absent(),
    this.whyRu = const Value.absent(),
  });
  HabitsCompanion.insert({
    this.id = const Value.absent(),
    required int takesTime,
    required int categoryId,
    required String titleEn,
    required String descriptionEn,
    this.whyEn = const Value.absent(),
    required String titleKk,
    required String descriptionKk,
    this.whyKk = const Value.absent(),
    required String titleRu,
    required String descriptionRu,
    this.whyRu = const Value.absent(),
  })  : takesTime = Value(takesTime),
        categoryId = Value(categoryId),
        titleEn = Value(titleEn),
        descriptionEn = Value(descriptionEn),
        titleKk = Value(titleKk),
        descriptionKk = Value(descriptionKk),
        titleRu = Value(titleRu),
        descriptionRu = Value(descriptionRu);
  static Insertable<Habit> custom({
    Expression<int>? id,
    Expression<int>? takesTime,
    Expression<int>? categoryId,
    Expression<String>? titleEn,
    Expression<String>? descriptionEn,
    Expression<String>? whyEn,
    Expression<String>? titleKk,
    Expression<String>? descriptionKk,
    Expression<String>? whyKk,
    Expression<String>? titleRu,
    Expression<String>? descriptionRu,
    Expression<String>? whyRu,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (takesTime != null) 'takes_time': takesTime,
      if (categoryId != null) 'category_id': categoryId,
      if (titleEn != null) 'title_en': titleEn,
      if (descriptionEn != null) 'description_en': descriptionEn,
      if (whyEn != null) 'why_en': whyEn,
      if (titleKk != null) 'title_kk': titleKk,
      if (descriptionKk != null) 'description_kk': descriptionKk,
      if (whyKk != null) 'why_kk': whyKk,
      if (titleRu != null) 'title_ru': titleRu,
      if (descriptionRu != null) 'description_ru': descriptionRu,
      if (whyRu != null) 'why_ru': whyRu,
    });
  }

  HabitsCompanion copyWith(
      {Value<int>? id,
      Value<int>? takesTime,
      Value<int>? categoryId,
      Value<String>? titleEn,
      Value<String>? descriptionEn,
      Value<String?>? whyEn,
      Value<String>? titleKk,
      Value<String>? descriptionKk,
      Value<String?>? whyKk,
      Value<String>? titleRu,
      Value<String>? descriptionRu,
      Value<String?>? whyRu}) {
    return HabitsCompanion(
      id: id ?? this.id,
      takesTime: takesTime ?? this.takesTime,
      categoryId: categoryId ?? this.categoryId,
      titleEn: titleEn ?? this.titleEn,
      descriptionEn: descriptionEn ?? this.descriptionEn,
      whyEn: whyEn ?? this.whyEn,
      titleKk: titleKk ?? this.titleKk,
      descriptionKk: descriptionKk ?? this.descriptionKk,
      whyKk: whyKk ?? this.whyKk,
      titleRu: titleRu ?? this.titleRu,
      descriptionRu: descriptionRu ?? this.descriptionRu,
      whyRu: whyRu ?? this.whyRu,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (takesTime.present) {
      map['takes_time'] = Variable<int>(takesTime.value);
    }
    if (categoryId.present) {
      map['category_id'] = Variable<int>(categoryId.value);
    }
    if (titleEn.present) {
      map['title_en'] = Variable<String>(titleEn.value);
    }
    if (descriptionEn.present) {
      map['description_en'] = Variable<String>(descriptionEn.value);
    }
    if (whyEn.present) {
      map['why_en'] = Variable<String>(whyEn.value);
    }
    if (titleKk.present) {
      map['title_kk'] = Variable<String>(titleKk.value);
    }
    if (descriptionKk.present) {
      map['description_kk'] = Variable<String>(descriptionKk.value);
    }
    if (whyKk.present) {
      map['why_kk'] = Variable<String>(whyKk.value);
    }
    if (titleRu.present) {
      map['title_ru'] = Variable<String>(titleRu.value);
    }
    if (descriptionRu.present) {
      map['description_ru'] = Variable<String>(descriptionRu.value);
    }
    if (whyRu.present) {
      map['why_ru'] = Variable<String>(whyRu.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('HabitsCompanion(')
          ..write('id: $id, ')
          ..write('takesTime: $takesTime, ')
          ..write('categoryId: $categoryId, ')
          ..write('titleEn: $titleEn, ')
          ..write('descriptionEn: $descriptionEn, ')
          ..write('whyEn: $whyEn, ')
          ..write('titleKk: $titleKk, ')
          ..write('descriptionKk: $descriptionKk, ')
          ..write('whyKk: $whyKk, ')
          ..write('titleRu: $titleRu, ')
          ..write('descriptionRu: $descriptionRu, ')
          ..write('whyRu: $whyRu')
          ..write(')'))
        .toString();
  }
}

class $TipsTable extends Tips with TableInfo<$TipsTable, Tip> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $TipsTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<int> id = GeneratedColumn<int>(
      'id', aliasedName, false,
      hasAutoIncrement: true,
      type: DriftSqlType.int,
      requiredDuringInsert: false,
      defaultConstraints:
          GeneratedColumn.constraintIsAlways('PRIMARY KEY AUTOINCREMENT'));
  static const VerificationMeta _habitIdMeta =
      const VerificationMeta('habitId');
  @override
  late final GeneratedColumn<int> habitId = GeneratedColumn<int>(
      'habit_id', aliasedName, false,
      type: DriftSqlType.int,
      requiredDuringInsert: true,
      defaultConstraints:
          GeneratedColumn.constraintIsAlways('REFERENCES habits (id)'));
  static const VerificationMeta _titleEnMeta =
      const VerificationMeta('titleEn');
  @override
  late final GeneratedColumn<String> titleEn = GeneratedColumn<String>(
      'title_en', aliasedName, false,
      additionalChecks:
          GeneratedColumn.checkTextLength(minTextLength: 1, maxTextLength: 255),
      type: DriftSqlType.string,
      requiredDuringInsert: true);
  static const VerificationMeta _contentEnMeta =
      const VerificationMeta('contentEn');
  @override
  late final GeneratedColumn<String> contentEn = GeneratedColumn<String>(
      'content_en', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _titleRuMeta =
      const VerificationMeta('titleRu');
  @override
  late final GeneratedColumn<String> titleRu = GeneratedColumn<String>(
      'title_ru', aliasedName, false,
      additionalChecks:
          GeneratedColumn.checkTextLength(minTextLength: 1, maxTextLength: 255),
      type: DriftSqlType.string,
      requiredDuringInsert: true);
  static const VerificationMeta _contentRuMeta =
      const VerificationMeta('contentRu');
  @override
  late final GeneratedColumn<String> contentRu = GeneratedColumn<String>(
      'content_ru', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _titleKkMeta =
      const VerificationMeta('titleKk');
  @override
  late final GeneratedColumn<String> titleKk = GeneratedColumn<String>(
      'title_kk', aliasedName, false,
      additionalChecks:
          GeneratedColumn.checkTextLength(minTextLength: 1, maxTextLength: 255),
      type: DriftSqlType.string,
      requiredDuringInsert: true);
  static const VerificationMeta _contentKkMeta =
      const VerificationMeta('contentKk');
  @override
  late final GeneratedColumn<String> contentKk = GeneratedColumn<String>(
      'content_kk', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  @override
  List<GeneratedColumn> get $columns =>
      [id, habitId, titleEn, contentEn, titleRu, contentRu, titleKk, contentKk];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'tips';
  @override
  VerificationContext validateIntegrity(Insertable<Tip> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('habit_id')) {
      context.handle(_habitIdMeta,
          habitId.isAcceptableOrUnknown(data['habit_id']!, _habitIdMeta));
    } else if (isInserting) {
      context.missing(_habitIdMeta);
    }
    if (data.containsKey('title_en')) {
      context.handle(_titleEnMeta,
          titleEn.isAcceptableOrUnknown(data['title_en']!, _titleEnMeta));
    } else if (isInserting) {
      context.missing(_titleEnMeta);
    }
    if (data.containsKey('content_en')) {
      context.handle(_contentEnMeta,
          contentEn.isAcceptableOrUnknown(data['content_en']!, _contentEnMeta));
    } else if (isInserting) {
      context.missing(_contentEnMeta);
    }
    if (data.containsKey('title_ru')) {
      context.handle(_titleRuMeta,
          titleRu.isAcceptableOrUnknown(data['title_ru']!, _titleRuMeta));
    } else if (isInserting) {
      context.missing(_titleRuMeta);
    }
    if (data.containsKey('content_ru')) {
      context.handle(_contentRuMeta,
          contentRu.isAcceptableOrUnknown(data['content_ru']!, _contentRuMeta));
    } else if (isInserting) {
      context.missing(_contentRuMeta);
    }
    if (data.containsKey('title_kk')) {
      context.handle(_titleKkMeta,
          titleKk.isAcceptableOrUnknown(data['title_kk']!, _titleKkMeta));
    } else if (isInserting) {
      context.missing(_titleKkMeta);
    }
    if (data.containsKey('content_kk')) {
      context.handle(_contentKkMeta,
          contentKk.isAcceptableOrUnknown(data['content_kk']!, _contentKkMeta));
    } else if (isInserting) {
      context.missing(_contentKkMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  Tip map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return Tip(
      id: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}id'])!,
      habitId: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}habit_id'])!,
      titleEn: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}title_en'])!,
      contentEn: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}content_en'])!,
      titleRu: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}title_ru'])!,
      contentRu: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}content_ru'])!,
      titleKk: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}title_kk'])!,
      contentKk: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}content_kk'])!,
    );
  }

  @override
  $TipsTable createAlias(String alias) {
    return $TipsTable(attachedDatabase, alias);
  }
}

class Tip extends DataClass implements Insertable<Tip> {
  final int id;
  final int habitId;
  final String titleEn;
  final String contentEn;
  final String titleRu;
  final String contentRu;
  final String titleKk;
  final String contentKk;
  const Tip(
      {required this.id,
      required this.habitId,
      required this.titleEn,
      required this.contentEn,
      required this.titleRu,
      required this.contentRu,
      required this.titleKk,
      required this.contentKk});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    map['habit_id'] = Variable<int>(habitId);
    map['title_en'] = Variable<String>(titleEn);
    map['content_en'] = Variable<String>(contentEn);
    map['title_ru'] = Variable<String>(titleRu);
    map['content_ru'] = Variable<String>(contentRu);
    map['title_kk'] = Variable<String>(titleKk);
    map['content_kk'] = Variable<String>(contentKk);
    return map;
  }

  TipsCompanion toCompanion(bool nullToAbsent) {
    return TipsCompanion(
      id: Value(id),
      habitId: Value(habitId),
      titleEn: Value(titleEn),
      contentEn: Value(contentEn),
      titleRu: Value(titleRu),
      contentRu: Value(contentRu),
      titleKk: Value(titleKk),
      contentKk: Value(contentKk),
    );
  }

  factory Tip.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return Tip(
      id: serializer.fromJson<int>(json['id']),
      habitId: serializer.fromJson<int>(json['habitId']),
      titleEn: serializer.fromJson<String>(json['titleEn']),
      contentEn: serializer.fromJson<String>(json['contentEn']),
      titleRu: serializer.fromJson<String>(json['titleRu']),
      contentRu: serializer.fromJson<String>(json['contentRu']),
      titleKk: serializer.fromJson<String>(json['titleKk']),
      contentKk: serializer.fromJson<String>(json['contentKk']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'habitId': serializer.toJson<int>(habitId),
      'titleEn': serializer.toJson<String>(titleEn),
      'contentEn': serializer.toJson<String>(contentEn),
      'titleRu': serializer.toJson<String>(titleRu),
      'contentRu': serializer.toJson<String>(contentRu),
      'titleKk': serializer.toJson<String>(titleKk),
      'contentKk': serializer.toJson<String>(contentKk),
    };
  }

  Tip copyWith(
          {int? id,
          int? habitId,
          String? titleEn,
          String? contentEn,
          String? titleRu,
          String? contentRu,
          String? titleKk,
          String? contentKk}) =>
      Tip(
        id: id ?? this.id,
        habitId: habitId ?? this.habitId,
        titleEn: titleEn ?? this.titleEn,
        contentEn: contentEn ?? this.contentEn,
        titleRu: titleRu ?? this.titleRu,
        contentRu: contentRu ?? this.contentRu,
        titleKk: titleKk ?? this.titleKk,
        contentKk: contentKk ?? this.contentKk,
      );
  Tip copyWithCompanion(TipsCompanion data) {
    return Tip(
      id: data.id.present ? data.id.value : this.id,
      habitId: data.habitId.present ? data.habitId.value : this.habitId,
      titleEn: data.titleEn.present ? data.titleEn.value : this.titleEn,
      contentEn: data.contentEn.present ? data.contentEn.value : this.contentEn,
      titleRu: data.titleRu.present ? data.titleRu.value : this.titleRu,
      contentRu: data.contentRu.present ? data.contentRu.value : this.contentRu,
      titleKk: data.titleKk.present ? data.titleKk.value : this.titleKk,
      contentKk: data.contentKk.present ? data.contentKk.value : this.contentKk,
    );
  }

  @override
  String toString() {
    return (StringBuffer('Tip(')
          ..write('id: $id, ')
          ..write('habitId: $habitId, ')
          ..write('titleEn: $titleEn, ')
          ..write('contentEn: $contentEn, ')
          ..write('titleRu: $titleRu, ')
          ..write('contentRu: $contentRu, ')
          ..write('titleKk: $titleKk, ')
          ..write('contentKk: $contentKk')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(
      id, habitId, titleEn, contentEn, titleRu, contentRu, titleKk, contentKk);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is Tip &&
          other.id == this.id &&
          other.habitId == this.habitId &&
          other.titleEn == this.titleEn &&
          other.contentEn == this.contentEn &&
          other.titleRu == this.titleRu &&
          other.contentRu == this.contentRu &&
          other.titleKk == this.titleKk &&
          other.contentKk == this.contentKk);
}

class TipsCompanion extends UpdateCompanion<Tip> {
  final Value<int> id;
  final Value<int> habitId;
  final Value<String> titleEn;
  final Value<String> contentEn;
  final Value<String> titleRu;
  final Value<String> contentRu;
  final Value<String> titleKk;
  final Value<String> contentKk;
  const TipsCompanion({
    this.id = const Value.absent(),
    this.habitId = const Value.absent(),
    this.titleEn = const Value.absent(),
    this.contentEn = const Value.absent(),
    this.titleRu = const Value.absent(),
    this.contentRu = const Value.absent(),
    this.titleKk = const Value.absent(),
    this.contentKk = const Value.absent(),
  });
  TipsCompanion.insert({
    this.id = const Value.absent(),
    required int habitId,
    required String titleEn,
    required String contentEn,
    required String titleRu,
    required String contentRu,
    required String titleKk,
    required String contentKk,
  })  : habitId = Value(habitId),
        titleEn = Value(titleEn),
        contentEn = Value(contentEn),
        titleRu = Value(titleRu),
        contentRu = Value(contentRu),
        titleKk = Value(titleKk),
        contentKk = Value(contentKk);
  static Insertable<Tip> custom({
    Expression<int>? id,
    Expression<int>? habitId,
    Expression<String>? titleEn,
    Expression<String>? contentEn,
    Expression<String>? titleRu,
    Expression<String>? contentRu,
    Expression<String>? titleKk,
    Expression<String>? contentKk,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (habitId != null) 'habit_id': habitId,
      if (titleEn != null) 'title_en': titleEn,
      if (contentEn != null) 'content_en': contentEn,
      if (titleRu != null) 'title_ru': titleRu,
      if (contentRu != null) 'content_ru': contentRu,
      if (titleKk != null) 'title_kk': titleKk,
      if (contentKk != null) 'content_kk': contentKk,
    });
  }

  TipsCompanion copyWith(
      {Value<int>? id,
      Value<int>? habitId,
      Value<String>? titleEn,
      Value<String>? contentEn,
      Value<String>? titleRu,
      Value<String>? contentRu,
      Value<String>? titleKk,
      Value<String>? contentKk}) {
    return TipsCompanion(
      id: id ?? this.id,
      habitId: habitId ?? this.habitId,
      titleEn: titleEn ?? this.titleEn,
      contentEn: contentEn ?? this.contentEn,
      titleRu: titleRu ?? this.titleRu,
      contentRu: contentRu ?? this.contentRu,
      titleKk: titleKk ?? this.titleKk,
      contentKk: contentKk ?? this.contentKk,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (habitId.present) {
      map['habit_id'] = Variable<int>(habitId.value);
    }
    if (titleEn.present) {
      map['title_en'] = Variable<String>(titleEn.value);
    }
    if (contentEn.present) {
      map['content_en'] = Variable<String>(contentEn.value);
    }
    if (titleRu.present) {
      map['title_ru'] = Variable<String>(titleRu.value);
    }
    if (contentRu.present) {
      map['content_ru'] = Variable<String>(contentRu.value);
    }
    if (titleKk.present) {
      map['title_kk'] = Variable<String>(titleKk.value);
    }
    if (contentKk.present) {
      map['content_kk'] = Variable<String>(contentKk.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('TipsCompanion(')
          ..write('id: $id, ')
          ..write('habitId: $habitId, ')
          ..write('titleEn: $titleEn, ')
          ..write('contentEn: $contentEn, ')
          ..write('titleRu: $titleRu, ')
          ..write('contentRu: $contentRu, ')
          ..write('titleKk: $titleKk, ')
          ..write('contentKk: $contentKk')
          ..write(')'))
        .toString();
  }
}

class $HabitSubscriptionsTable extends HabitSubscriptions
    with TableInfo<$HabitSubscriptionsTable, HabitSubscription> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $HabitSubscriptionsTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<int> id = GeneratedColumn<int>(
      'id', aliasedName, false,
      hasAutoIncrement: true,
      type: DriftSqlType.int,
      requiredDuringInsert: false,
      defaultConstraints:
          GeneratedColumn.constraintIsAlways('PRIMARY KEY AUTOINCREMENT'));
  static const VerificationMeta _habitIdMeta =
      const VerificationMeta('habitId');
  @override
  late final GeneratedColumn<int> habitId = GeneratedColumn<int>(
      'habit_id', aliasedName, false,
      type: DriftSqlType.int,
      requiredDuringInsert: true,
      defaultConstraints:
          GeneratedColumn.constraintIsAlways('REFERENCES habits (id)'));
  static const VerificationMeta _subscriptionDateMeta =
      const VerificationMeta('subscriptionDate');
  @override
  late final GeneratedColumn<DateTime> subscriptionDate =
      GeneratedColumn<DateTime>('subscription_date', aliasedName, false,
          type: DriftSqlType.dateTime, requiredDuringInsert: true);
  static const VerificationMeta _unsubscribeDateMeta =
      const VerificationMeta('unsubscribeDate');
  @override
  late final GeneratedColumn<DateTime> unsubscribeDate =
      GeneratedColumn<DateTime>('unsubscribe_date', aliasedName, true,
          type: DriftSqlType.dateTime, requiredDuringInsert: false);
  @override
  List<GeneratedColumn> get $columns =>
      [id, habitId, subscriptionDate, unsubscribeDate];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'habit_subscriptions';
  @override
  VerificationContext validateIntegrity(Insertable<HabitSubscription> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('habit_id')) {
      context.handle(_habitIdMeta,
          habitId.isAcceptableOrUnknown(data['habit_id']!, _habitIdMeta));
    } else if (isInserting) {
      context.missing(_habitIdMeta);
    }
    if (data.containsKey('subscription_date')) {
      context.handle(
          _subscriptionDateMeta,
          subscriptionDate.isAcceptableOrUnknown(
              data['subscription_date']!, _subscriptionDateMeta));
    } else if (isInserting) {
      context.missing(_subscriptionDateMeta);
    }
    if (data.containsKey('unsubscribe_date')) {
      context.handle(
          _unsubscribeDateMeta,
          unsubscribeDate.isAcceptableOrUnknown(
              data['unsubscribe_date']!, _unsubscribeDateMeta));
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  List<Set<GeneratedColumn>> get uniqueKeys => [
        {habitId, subscriptionDate},
      ];
  @override
  HabitSubscription map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return HabitSubscription(
      id: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}id'])!,
      habitId: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}habit_id'])!,
      subscriptionDate: attachedDatabase.typeMapping.read(
          DriftSqlType.dateTime, data['${effectivePrefix}subscription_date'])!,
      unsubscribeDate: attachedDatabase.typeMapping.read(
          DriftSqlType.dateTime, data['${effectivePrefix}unsubscribe_date']),
    );
  }

  @override
  $HabitSubscriptionsTable createAlias(String alias) {
    return $HabitSubscriptionsTable(attachedDatabase, alias);
  }
}

class HabitSubscription extends DataClass
    implements Insertable<HabitSubscription> {
  final int id;
  final int habitId;
  final DateTime subscriptionDate;
  final DateTime? unsubscribeDate;
  const HabitSubscription(
      {required this.id,
      required this.habitId,
      required this.subscriptionDate,
      this.unsubscribeDate});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    map['habit_id'] = Variable<int>(habitId);
    map['subscription_date'] = Variable<DateTime>(subscriptionDate);
    if (!nullToAbsent || unsubscribeDate != null) {
      map['unsubscribe_date'] = Variable<DateTime>(unsubscribeDate);
    }
    return map;
  }

  HabitSubscriptionsCompanion toCompanion(bool nullToAbsent) {
    return HabitSubscriptionsCompanion(
      id: Value(id),
      habitId: Value(habitId),
      subscriptionDate: Value(subscriptionDate),
      unsubscribeDate: unsubscribeDate == null && nullToAbsent
          ? const Value.absent()
          : Value(unsubscribeDate),
    );
  }

  factory HabitSubscription.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return HabitSubscription(
      id: serializer.fromJson<int>(json['id']),
      habitId: serializer.fromJson<int>(json['habitId']),
      subscriptionDate: serializer.fromJson<DateTime>(json['subscriptionDate']),
      unsubscribeDate: serializer.fromJson<DateTime?>(json['unsubscribeDate']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'habitId': serializer.toJson<int>(habitId),
      'subscriptionDate': serializer.toJson<DateTime>(subscriptionDate),
      'unsubscribeDate': serializer.toJson<DateTime?>(unsubscribeDate),
    };
  }

  HabitSubscription copyWith(
          {int? id,
          int? habitId,
          DateTime? subscriptionDate,
          Value<DateTime?> unsubscribeDate = const Value.absent()}) =>
      HabitSubscription(
        id: id ?? this.id,
        habitId: habitId ?? this.habitId,
        subscriptionDate: subscriptionDate ?? this.subscriptionDate,
        unsubscribeDate: unsubscribeDate.present
            ? unsubscribeDate.value
            : this.unsubscribeDate,
      );
  HabitSubscription copyWithCompanion(HabitSubscriptionsCompanion data) {
    return HabitSubscription(
      id: data.id.present ? data.id.value : this.id,
      habitId: data.habitId.present ? data.habitId.value : this.habitId,
      subscriptionDate: data.subscriptionDate.present
          ? data.subscriptionDate.value
          : this.subscriptionDate,
      unsubscribeDate: data.unsubscribeDate.present
          ? data.unsubscribeDate.value
          : this.unsubscribeDate,
    );
  }

  @override
  String toString() {
    return (StringBuffer('HabitSubscription(')
          ..write('id: $id, ')
          ..write('habitId: $habitId, ')
          ..write('subscriptionDate: $subscriptionDate, ')
          ..write('unsubscribeDate: $unsubscribeDate')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode =>
      Object.hash(id, habitId, subscriptionDate, unsubscribeDate);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is HabitSubscription &&
          other.id == this.id &&
          other.habitId == this.habitId &&
          other.subscriptionDate == this.subscriptionDate &&
          other.unsubscribeDate == this.unsubscribeDate);
}

class HabitSubscriptionsCompanion extends UpdateCompanion<HabitSubscription> {
  final Value<int> id;
  final Value<int> habitId;
  final Value<DateTime> subscriptionDate;
  final Value<DateTime?> unsubscribeDate;
  const HabitSubscriptionsCompanion({
    this.id = const Value.absent(),
    this.habitId = const Value.absent(),
    this.subscriptionDate = const Value.absent(),
    this.unsubscribeDate = const Value.absent(),
  });
  HabitSubscriptionsCompanion.insert({
    this.id = const Value.absent(),
    required int habitId,
    required DateTime subscriptionDate,
    this.unsubscribeDate = const Value.absent(),
  })  : habitId = Value(habitId),
        subscriptionDate = Value(subscriptionDate);
  static Insertable<HabitSubscription> custom({
    Expression<int>? id,
    Expression<int>? habitId,
    Expression<DateTime>? subscriptionDate,
    Expression<DateTime>? unsubscribeDate,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (habitId != null) 'habit_id': habitId,
      if (subscriptionDate != null) 'subscription_date': subscriptionDate,
      if (unsubscribeDate != null) 'unsubscribe_date': unsubscribeDate,
    });
  }

  HabitSubscriptionsCompanion copyWith(
      {Value<int>? id,
      Value<int>? habitId,
      Value<DateTime>? subscriptionDate,
      Value<DateTime?>? unsubscribeDate}) {
    return HabitSubscriptionsCompanion(
      id: id ?? this.id,
      habitId: habitId ?? this.habitId,
      subscriptionDate: subscriptionDate ?? this.subscriptionDate,
      unsubscribeDate: unsubscribeDate ?? this.unsubscribeDate,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (habitId.present) {
      map['habit_id'] = Variable<int>(habitId.value);
    }
    if (subscriptionDate.present) {
      map['subscription_date'] = Variable<DateTime>(subscriptionDate.value);
    }
    if (unsubscribeDate.present) {
      map['unsubscribe_date'] = Variable<DateTime>(unsubscribeDate.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('HabitSubscriptionsCompanion(')
          ..write('id: $id, ')
          ..write('habitId: $habitId, ')
          ..write('subscriptionDate: $subscriptionDate, ')
          ..write('unsubscribeDate: $unsubscribeDate')
          ..write(')'))
        .toString();
  }
}

class $HabitCompletionsTable extends HabitCompletions
    with TableInfo<$HabitCompletionsTable, HabitCompletion> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $HabitCompletionsTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<int> id = GeneratedColumn<int>(
      'id', aliasedName, false,
      hasAutoIncrement: true,
      type: DriftSqlType.int,
      requiredDuringInsert: false,
      defaultConstraints:
          GeneratedColumn.constraintIsAlways('PRIMARY KEY AUTOINCREMENT'));
  static const VerificationMeta _habitIdMeta =
      const VerificationMeta('habitId');
  @override
  late final GeneratedColumn<int> habitId = GeneratedColumn<int>(
      'habit_id', aliasedName, false,
      type: DriftSqlType.int,
      requiredDuringInsert: true,
      defaultConstraints:
          GeneratedColumn.constraintIsAlways('REFERENCES habits (id)'));
  static const VerificationMeta _isDoneMeta = const VerificationMeta('isDone');
  @override
  late final GeneratedColumn<bool> isDone = GeneratedColumn<bool>(
      'is_done', aliasedName, false,
      type: DriftSqlType.bool,
      requiredDuringInsert: true,
      defaultConstraints:
          GeneratedColumn.constraintIsAlways('CHECK ("is_done" IN (0, 1))'));
  static const VerificationMeta _dateMeta = const VerificationMeta('date');
  @override
  late final GeneratedColumn<DateTime> date = GeneratedColumn<DateTime>(
      'date', aliasedName, false,
      type: DriftSqlType.dateTime, requiredDuringInsert: true);
  @override
  List<GeneratedColumn> get $columns => [id, habitId, isDone, date];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'habit_completions';
  @override
  VerificationContext validateIntegrity(Insertable<HabitCompletion> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('habit_id')) {
      context.handle(_habitIdMeta,
          habitId.isAcceptableOrUnknown(data['habit_id']!, _habitIdMeta));
    } else if (isInserting) {
      context.missing(_habitIdMeta);
    }
    if (data.containsKey('is_done')) {
      context.handle(_isDoneMeta,
          isDone.isAcceptableOrUnknown(data['is_done']!, _isDoneMeta));
    } else if (isInserting) {
      context.missing(_isDoneMeta);
    }
    if (data.containsKey('date')) {
      context.handle(
          _dateMeta, date.isAcceptableOrUnknown(data['date']!, _dateMeta));
    } else if (isInserting) {
      context.missing(_dateMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  List<Set<GeneratedColumn>> get uniqueKeys => [
        {habitId, date},
      ];
  @override
  HabitCompletion map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return HabitCompletion(
      id: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}id'])!,
      habitId: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}habit_id'])!,
      isDone: attachedDatabase.typeMapping
          .read(DriftSqlType.bool, data['${effectivePrefix}is_done'])!,
      date: attachedDatabase.typeMapping
          .read(DriftSqlType.dateTime, data['${effectivePrefix}date'])!,
    );
  }

  @override
  $HabitCompletionsTable createAlias(String alias) {
    return $HabitCompletionsTable(attachedDatabase, alias);
  }
}

class HabitCompletion extends DataClass implements Insertable<HabitCompletion> {
  final int id;
  final int habitId;
  final bool isDone;
  final DateTime date;
  const HabitCompletion(
      {required this.id,
      required this.habitId,
      required this.isDone,
      required this.date});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    map['habit_id'] = Variable<int>(habitId);
    map['is_done'] = Variable<bool>(isDone);
    map['date'] = Variable<DateTime>(date);
    return map;
  }

  HabitCompletionsCompanion toCompanion(bool nullToAbsent) {
    return HabitCompletionsCompanion(
      id: Value(id),
      habitId: Value(habitId),
      isDone: Value(isDone),
      date: Value(date),
    );
  }

  factory HabitCompletion.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return HabitCompletion(
      id: serializer.fromJson<int>(json['id']),
      habitId: serializer.fromJson<int>(json['habitId']),
      isDone: serializer.fromJson<bool>(json['isDone']),
      date: serializer.fromJson<DateTime>(json['date']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'habitId': serializer.toJson<int>(habitId),
      'isDone': serializer.toJson<bool>(isDone),
      'date': serializer.toJson<DateTime>(date),
    };
  }

  HabitCompletion copyWith(
          {int? id, int? habitId, bool? isDone, DateTime? date}) =>
      HabitCompletion(
        id: id ?? this.id,
        habitId: habitId ?? this.habitId,
        isDone: isDone ?? this.isDone,
        date: date ?? this.date,
      );
  HabitCompletion copyWithCompanion(HabitCompletionsCompanion data) {
    return HabitCompletion(
      id: data.id.present ? data.id.value : this.id,
      habitId: data.habitId.present ? data.habitId.value : this.habitId,
      isDone: data.isDone.present ? data.isDone.value : this.isDone,
      date: data.date.present ? data.date.value : this.date,
    );
  }

  @override
  String toString() {
    return (StringBuffer('HabitCompletion(')
          ..write('id: $id, ')
          ..write('habitId: $habitId, ')
          ..write('isDone: $isDone, ')
          ..write('date: $date')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(id, habitId, isDone, date);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is HabitCompletion &&
          other.id == this.id &&
          other.habitId == this.habitId &&
          other.isDone == this.isDone &&
          other.date == this.date);
}

class HabitCompletionsCompanion extends UpdateCompanion<HabitCompletion> {
  final Value<int> id;
  final Value<int> habitId;
  final Value<bool> isDone;
  final Value<DateTime> date;
  const HabitCompletionsCompanion({
    this.id = const Value.absent(),
    this.habitId = const Value.absent(),
    this.isDone = const Value.absent(),
    this.date = const Value.absent(),
  });
  HabitCompletionsCompanion.insert({
    this.id = const Value.absent(),
    required int habitId,
    required bool isDone,
    required DateTime date,
  })  : habitId = Value(habitId),
        isDone = Value(isDone),
        date = Value(date);
  static Insertable<HabitCompletion> custom({
    Expression<int>? id,
    Expression<int>? habitId,
    Expression<bool>? isDone,
    Expression<DateTime>? date,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (habitId != null) 'habit_id': habitId,
      if (isDone != null) 'is_done': isDone,
      if (date != null) 'date': date,
    });
  }

  HabitCompletionsCompanion copyWith(
      {Value<int>? id,
      Value<int>? habitId,
      Value<bool>? isDone,
      Value<DateTime>? date}) {
    return HabitCompletionsCompanion(
      id: id ?? this.id,
      habitId: habitId ?? this.habitId,
      isDone: isDone ?? this.isDone,
      date: date ?? this.date,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (habitId.present) {
      map['habit_id'] = Variable<int>(habitId.value);
    }
    if (isDone.present) {
      map['is_done'] = Variable<bool>(isDone.value);
    }
    if (date.present) {
      map['date'] = Variable<DateTime>(date.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('HabitCompletionsCompanion(')
          ..write('id: $id, ')
          ..write('habitId: $habitId, ')
          ..write('isDone: $isDone, ')
          ..write('date: $date')
          ..write(')'))
        .toString();
  }
}

class $HabitWeekdaysTable extends HabitWeekdays
    with TableInfo<$HabitWeekdaysTable, HabitWeekday> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $HabitWeekdaysTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<int> id = GeneratedColumn<int>(
      'id', aliasedName, false,
      hasAutoIncrement: true,
      type: DriftSqlType.int,
      requiredDuringInsert: false,
      defaultConstraints:
          GeneratedColumn.constraintIsAlways('PRIMARY KEY AUTOINCREMENT'));
  static const VerificationMeta _habitIdMeta =
      const VerificationMeta('habitId');
  @override
  late final GeneratedColumn<int> habitId = GeneratedColumn<int>(
      'habit_id', aliasedName, false,
      type: DriftSqlType.int,
      requiredDuringInsert: true,
      defaultConstraints:
          GeneratedColumn.constraintIsAlways('REFERENCES habits (id)'));
  static const VerificationMeta _weekdayMeta =
      const VerificationMeta('weekday');
  @override
  late final GeneratedColumn<int> weekday = GeneratedColumn<int>(
      'weekday', aliasedName, false,
      check: () => ComparableExpr(weekday).isBetween(Constant(1), Constant(7)),
      type: DriftSqlType.int,
      requiredDuringInsert: true);
  @override
  List<GeneratedColumn> get $columns => [id, habitId, weekday];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'habit_weekdays';
  @override
  VerificationContext validateIntegrity(Insertable<HabitWeekday> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('habit_id')) {
      context.handle(_habitIdMeta,
          habitId.isAcceptableOrUnknown(data['habit_id']!, _habitIdMeta));
    } else if (isInserting) {
      context.missing(_habitIdMeta);
    }
    if (data.containsKey('weekday')) {
      context.handle(_weekdayMeta,
          weekday.isAcceptableOrUnknown(data['weekday']!, _weekdayMeta));
    } else if (isInserting) {
      context.missing(_weekdayMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  HabitWeekday map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return HabitWeekday(
      id: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}id'])!,
      habitId: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}habit_id'])!,
      weekday: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}weekday'])!,
    );
  }

  @override
  $HabitWeekdaysTable createAlias(String alias) {
    return $HabitWeekdaysTable(attachedDatabase, alias);
  }
}

class HabitWeekday extends DataClass implements Insertable<HabitWeekday> {
  final int id;
  final int habitId;
  final int weekday;
  const HabitWeekday(
      {required this.id, required this.habitId, required this.weekday});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    map['habit_id'] = Variable<int>(habitId);
    map['weekday'] = Variable<int>(weekday);
    return map;
  }

  HabitWeekdaysCompanion toCompanion(bool nullToAbsent) {
    return HabitWeekdaysCompanion(
      id: Value(id),
      habitId: Value(habitId),
      weekday: Value(weekday),
    );
  }

  factory HabitWeekday.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return HabitWeekday(
      id: serializer.fromJson<int>(json['id']),
      habitId: serializer.fromJson<int>(json['habitId']),
      weekday: serializer.fromJson<int>(json['weekday']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'habitId': serializer.toJson<int>(habitId),
      'weekday': serializer.toJson<int>(weekday),
    };
  }

  HabitWeekday copyWith({int? id, int? habitId, int? weekday}) => HabitWeekday(
        id: id ?? this.id,
        habitId: habitId ?? this.habitId,
        weekday: weekday ?? this.weekday,
      );
  HabitWeekday copyWithCompanion(HabitWeekdaysCompanion data) {
    return HabitWeekday(
      id: data.id.present ? data.id.value : this.id,
      habitId: data.habitId.present ? data.habitId.value : this.habitId,
      weekday: data.weekday.present ? data.weekday.value : this.weekday,
    );
  }

  @override
  String toString() {
    return (StringBuffer('HabitWeekday(')
          ..write('id: $id, ')
          ..write('habitId: $habitId, ')
          ..write('weekday: $weekday')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(id, habitId, weekday);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is HabitWeekday &&
          other.id == this.id &&
          other.habitId == this.habitId &&
          other.weekday == this.weekday);
}

class HabitWeekdaysCompanion extends UpdateCompanion<HabitWeekday> {
  final Value<int> id;
  final Value<int> habitId;
  final Value<int> weekday;
  const HabitWeekdaysCompanion({
    this.id = const Value.absent(),
    this.habitId = const Value.absent(),
    this.weekday = const Value.absent(),
  });
  HabitWeekdaysCompanion.insert({
    this.id = const Value.absent(),
    required int habitId,
    required int weekday,
  })  : habitId = Value(habitId),
        weekday = Value(weekday);
  static Insertable<HabitWeekday> custom({
    Expression<int>? id,
    Expression<int>? habitId,
    Expression<int>? weekday,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (habitId != null) 'habit_id': habitId,
      if (weekday != null) 'weekday': weekday,
    });
  }

  HabitWeekdaysCompanion copyWith(
      {Value<int>? id, Value<int>? habitId, Value<int>? weekday}) {
    return HabitWeekdaysCompanion(
      id: id ?? this.id,
      habitId: habitId ?? this.habitId,
      weekday: weekday ?? this.weekday,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (habitId.present) {
      map['habit_id'] = Variable<int>(habitId.value);
    }
    if (weekday.present) {
      map['weekday'] = Variable<int>(weekday.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('HabitWeekdaysCompanion(')
          ..write('id: $id, ')
          ..write('habitId: $habitId, ')
          ..write('weekday: $weekday')
          ..write(')'))
        .toString();
  }
}

abstract class _$AppDatabase extends GeneratedDatabase {
  _$AppDatabase(QueryExecutor e) : super(e);
  $AppDatabaseManager get managers => $AppDatabaseManager(this);
  late final $CategoriesTable categories = $CategoriesTable(this);
  late final $HabitsTable habits = $HabitsTable(this);
  late final $TipsTable tips = $TipsTable(this);
  late final $HabitSubscriptionsTable habitSubscriptions =
      $HabitSubscriptionsTable(this);
  late final $HabitCompletionsTable habitCompletions =
      $HabitCompletionsTable(this);
  late final $HabitWeekdaysTable habitWeekdays = $HabitWeekdaysTable(this);
  @override
  Iterable<TableInfo<Table, Object?>> get allTables =>
      allSchemaEntities.whereType<TableInfo<Table, Object?>>();
  @override
  List<DatabaseSchemaEntity> get allSchemaEntities => [
        categories,
        habits,
        tips,
        habitSubscriptions,
        habitCompletions,
        habitWeekdays
      ];
}

typedef $$CategoriesTableCreateCompanionBuilder = CategoriesCompanion Function({
  Value<int> id,
  Value<String?> imagePath,
  required String titleEn,
  required String descriptionEn,
  required String titleRu,
  required String descriptionRu,
  required String titleKk,
  required String descriptionKk,
});
typedef $$CategoriesTableUpdateCompanionBuilder = CategoriesCompanion Function({
  Value<int> id,
  Value<String?> imagePath,
  Value<String> titleEn,
  Value<String> descriptionEn,
  Value<String> titleRu,
  Value<String> descriptionRu,
  Value<String> titleKk,
  Value<String> descriptionKk,
});

final class $$CategoriesTableReferences
    extends BaseReferences<_$AppDatabase, $CategoriesTable, Category> {
  $$CategoriesTableReferences(super.$_db, super.$_table, super.$_typedResult);

  static MultiTypedResultKey<$HabitsTable, List<Habit>> _habitsRefsTable(
          _$AppDatabase db) =>
      MultiTypedResultKey.fromTable(db.habits,
          aliasName:
              $_aliasNameGenerator(db.categories.id, db.habits.categoryId));

  $$HabitsTableProcessedTableManager get habitsRefs {
    final manager = $$HabitsTableTableManager($_db, $_db.habits)
        .filter((f) => f.categoryId.id.sqlEquals($_itemColumn<int>('id')!));

    final cache = $_typedResult.readTableOrNull(_habitsRefsTable($_db));
    return ProcessedTableManager(
        manager.$state.copyWith(prefetchedData: cache));
  }
}

class $$CategoriesTableFilterComposer
    extends Composer<_$AppDatabase, $CategoriesTable> {
  $$CategoriesTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<int> get id => $composableBuilder(
      column: $table.id, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get imagePath => $composableBuilder(
      column: $table.imagePath, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get titleEn => $composableBuilder(
      column: $table.titleEn, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get descriptionEn => $composableBuilder(
      column: $table.descriptionEn, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get titleRu => $composableBuilder(
      column: $table.titleRu, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get descriptionRu => $composableBuilder(
      column: $table.descriptionRu, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get titleKk => $composableBuilder(
      column: $table.titleKk, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get descriptionKk => $composableBuilder(
      column: $table.descriptionKk, builder: (column) => ColumnFilters(column));

  Expression<bool> habitsRefs(
      Expression<bool> Function($$HabitsTableFilterComposer f) f) {
    final $$HabitsTableFilterComposer composer = $composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.id,
        referencedTable: $db.habits,
        getReferencedColumn: (t) => t.categoryId,
        builder: (joinBuilder,
                {$addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer}) =>
            $$HabitsTableFilterComposer(
              $db: $db,
              $table: $db.habits,
              $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
              joinBuilder: joinBuilder,
              $removeJoinBuilderFromRootComposer:
                  $removeJoinBuilderFromRootComposer,
            ));
    return f(composer);
  }
}

class $$CategoriesTableOrderingComposer
    extends Composer<_$AppDatabase, $CategoriesTable> {
  $$CategoriesTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<int> get id => $composableBuilder(
      column: $table.id, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get imagePath => $composableBuilder(
      column: $table.imagePath, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get titleEn => $composableBuilder(
      column: $table.titleEn, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get descriptionEn => $composableBuilder(
      column: $table.descriptionEn,
      builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get titleRu => $composableBuilder(
      column: $table.titleRu, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get descriptionRu => $composableBuilder(
      column: $table.descriptionRu,
      builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get titleKk => $composableBuilder(
      column: $table.titleKk, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get descriptionKk => $composableBuilder(
      column: $table.descriptionKk,
      builder: (column) => ColumnOrderings(column));
}

class $$CategoriesTableAnnotationComposer
    extends Composer<_$AppDatabase, $CategoriesTable> {
  $$CategoriesTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<int> get id =>
      $composableBuilder(column: $table.id, builder: (column) => column);

  GeneratedColumn<String> get imagePath =>
      $composableBuilder(column: $table.imagePath, builder: (column) => column);

  GeneratedColumn<String> get titleEn =>
      $composableBuilder(column: $table.titleEn, builder: (column) => column);

  GeneratedColumn<String> get descriptionEn => $composableBuilder(
      column: $table.descriptionEn, builder: (column) => column);

  GeneratedColumn<String> get titleRu =>
      $composableBuilder(column: $table.titleRu, builder: (column) => column);

  GeneratedColumn<String> get descriptionRu => $composableBuilder(
      column: $table.descriptionRu, builder: (column) => column);

  GeneratedColumn<String> get titleKk =>
      $composableBuilder(column: $table.titleKk, builder: (column) => column);

  GeneratedColumn<String> get descriptionKk => $composableBuilder(
      column: $table.descriptionKk, builder: (column) => column);

  Expression<T> habitsRefs<T extends Object>(
      Expression<T> Function($$HabitsTableAnnotationComposer a) f) {
    final $$HabitsTableAnnotationComposer composer = $composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.id,
        referencedTable: $db.habits,
        getReferencedColumn: (t) => t.categoryId,
        builder: (joinBuilder,
                {$addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer}) =>
            $$HabitsTableAnnotationComposer(
              $db: $db,
              $table: $db.habits,
              $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
              joinBuilder: joinBuilder,
              $removeJoinBuilderFromRootComposer:
                  $removeJoinBuilderFromRootComposer,
            ));
    return f(composer);
  }
}

class $$CategoriesTableTableManager extends RootTableManager<
    _$AppDatabase,
    $CategoriesTable,
    Category,
    $$CategoriesTableFilterComposer,
    $$CategoriesTableOrderingComposer,
    $$CategoriesTableAnnotationComposer,
    $$CategoriesTableCreateCompanionBuilder,
    $$CategoriesTableUpdateCompanionBuilder,
    (Category, $$CategoriesTableReferences),
    Category,
    PrefetchHooks Function({bool habitsRefs})> {
  $$CategoriesTableTableManager(_$AppDatabase db, $CategoriesTable table)
      : super(TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$CategoriesTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$CategoriesTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$CategoriesTableAnnotationComposer($db: db, $table: table),
          updateCompanionCallback: ({
            Value<int> id = const Value.absent(),
            Value<String?> imagePath = const Value.absent(),
            Value<String> titleEn = const Value.absent(),
            Value<String> descriptionEn = const Value.absent(),
            Value<String> titleRu = const Value.absent(),
            Value<String> descriptionRu = const Value.absent(),
            Value<String> titleKk = const Value.absent(),
            Value<String> descriptionKk = const Value.absent(),
          }) =>
              CategoriesCompanion(
            id: id,
            imagePath: imagePath,
            titleEn: titleEn,
            descriptionEn: descriptionEn,
            titleRu: titleRu,
            descriptionRu: descriptionRu,
            titleKk: titleKk,
            descriptionKk: descriptionKk,
          ),
          createCompanionCallback: ({
            Value<int> id = const Value.absent(),
            Value<String?> imagePath = const Value.absent(),
            required String titleEn,
            required String descriptionEn,
            required String titleRu,
            required String descriptionRu,
            required String titleKk,
            required String descriptionKk,
          }) =>
              CategoriesCompanion.insert(
            id: id,
            imagePath: imagePath,
            titleEn: titleEn,
            descriptionEn: descriptionEn,
            titleRu: titleRu,
            descriptionRu: descriptionRu,
            titleKk: titleKk,
            descriptionKk: descriptionKk,
          ),
          withReferenceMapper: (p0) => p0
              .map((e) => (
                    e.readTable(table),
                    $$CategoriesTableReferences(db, table, e)
                  ))
              .toList(),
          prefetchHooksCallback: ({habitsRefs = false}) {
            return PrefetchHooks(
              db: db,
              explicitlyWatchedTables: [if (habitsRefs) db.habits],
              addJoins: null,
              getPrefetchedDataCallback: (items) async {
                return [
                  if (habitsRefs)
                    await $_getPrefetchedData<Category, $CategoriesTable,
                            Habit>(
                        currentTable: table,
                        referencedTable:
                            $$CategoriesTableReferences._habitsRefsTable(db),
                        managerFromTypedResult: (p0) =>
                            $$CategoriesTableReferences(db, table, p0)
                                .habitsRefs,
                        referencedItemsForCurrentItem:
                            (item, referencedItems) => referencedItems
                                .where((e) => e.categoryId == item.id),
                        typedResults: items)
                ];
              },
            );
          },
        ));
}

typedef $$CategoriesTableProcessedTableManager = ProcessedTableManager<
    _$AppDatabase,
    $CategoriesTable,
    Category,
    $$CategoriesTableFilterComposer,
    $$CategoriesTableOrderingComposer,
    $$CategoriesTableAnnotationComposer,
    $$CategoriesTableCreateCompanionBuilder,
    $$CategoriesTableUpdateCompanionBuilder,
    (Category, $$CategoriesTableReferences),
    Category,
    PrefetchHooks Function({bool habitsRefs})>;
typedef $$HabitsTableCreateCompanionBuilder = HabitsCompanion Function({
  Value<int> id,
  required int takesTime,
  required int categoryId,
  required String titleEn,
  required String descriptionEn,
  Value<String?> whyEn,
  required String titleKk,
  required String descriptionKk,
  Value<String?> whyKk,
  required String titleRu,
  required String descriptionRu,
  Value<String?> whyRu,
});
typedef $$HabitsTableUpdateCompanionBuilder = HabitsCompanion Function({
  Value<int> id,
  Value<int> takesTime,
  Value<int> categoryId,
  Value<String> titleEn,
  Value<String> descriptionEn,
  Value<String?> whyEn,
  Value<String> titleKk,
  Value<String> descriptionKk,
  Value<String?> whyKk,
  Value<String> titleRu,
  Value<String> descriptionRu,
  Value<String?> whyRu,
});

final class $$HabitsTableReferences
    extends BaseReferences<_$AppDatabase, $HabitsTable, Habit> {
  $$HabitsTableReferences(super.$_db, super.$_table, super.$_typedResult);

  static $CategoriesTable _categoryIdTable(_$AppDatabase db) =>
      db.categories.createAlias(
          $_aliasNameGenerator(db.habits.categoryId, db.categories.id));

  $$CategoriesTableProcessedTableManager get categoryId {
    final $_column = $_itemColumn<int>('category_id')!;

    final manager = $$CategoriesTableTableManager($_db, $_db.categories)
        .filter((f) => f.id.sqlEquals($_column));
    final item = $_typedResult.readTableOrNull(_categoryIdTable($_db));
    if (item == null) return manager;
    return ProcessedTableManager(
        manager.$state.copyWith(prefetchedData: [item]));
  }

  static MultiTypedResultKey<$TipsTable, List<Tip>> _tipsRefsTable(
          _$AppDatabase db) =>
      MultiTypedResultKey.fromTable(db.tips,
          aliasName: $_aliasNameGenerator(db.habits.id, db.tips.habitId));

  $$TipsTableProcessedTableManager get tipsRefs {
    final manager = $$TipsTableTableManager($_db, $_db.tips)
        .filter((f) => f.habitId.id.sqlEquals($_itemColumn<int>('id')!));

    final cache = $_typedResult.readTableOrNull(_tipsRefsTable($_db));
    return ProcessedTableManager(
        manager.$state.copyWith(prefetchedData: cache));
  }

  static MultiTypedResultKey<$HabitSubscriptionsTable, List<HabitSubscription>>
      _habitSubscriptionsRefsTable(_$AppDatabase db) =>
          MultiTypedResultKey.fromTable(db.habitSubscriptions,
              aliasName: $_aliasNameGenerator(
                  db.habits.id, db.habitSubscriptions.habitId));

  $$HabitSubscriptionsTableProcessedTableManager get habitSubscriptionsRefs {
    final manager =
        $$HabitSubscriptionsTableTableManager($_db, $_db.habitSubscriptions)
            .filter((f) => f.habitId.id.sqlEquals($_itemColumn<int>('id')!));

    final cache =
        $_typedResult.readTableOrNull(_habitSubscriptionsRefsTable($_db));
    return ProcessedTableManager(
        manager.$state.copyWith(prefetchedData: cache));
  }

  static MultiTypedResultKey<$HabitCompletionsTable, List<HabitCompletion>>
      _habitCompletionsRefsTable(_$AppDatabase db) =>
          MultiTypedResultKey.fromTable(db.habitCompletions,
              aliasName: $_aliasNameGenerator(
                  db.habits.id, db.habitCompletions.habitId));

  $$HabitCompletionsTableProcessedTableManager get habitCompletionsRefs {
    final manager =
        $$HabitCompletionsTableTableManager($_db, $_db.habitCompletions)
            .filter((f) => f.habitId.id.sqlEquals($_itemColumn<int>('id')!));

    final cache =
        $_typedResult.readTableOrNull(_habitCompletionsRefsTable($_db));
    return ProcessedTableManager(
        manager.$state.copyWith(prefetchedData: cache));
  }

  static MultiTypedResultKey<$HabitWeekdaysTable, List<HabitWeekday>>
      _habitWeekdaysRefsTable(_$AppDatabase db) =>
          MultiTypedResultKey.fromTable(db.habitWeekdays,
              aliasName:
                  $_aliasNameGenerator(db.habits.id, db.habitWeekdays.habitId));

  $$HabitWeekdaysTableProcessedTableManager get habitWeekdaysRefs {
    final manager = $$HabitWeekdaysTableTableManager($_db, $_db.habitWeekdays)
        .filter((f) => f.habitId.id.sqlEquals($_itemColumn<int>('id')!));

    final cache = $_typedResult.readTableOrNull(_habitWeekdaysRefsTable($_db));
    return ProcessedTableManager(
        manager.$state.copyWith(prefetchedData: cache));
  }
}

class $$HabitsTableFilterComposer
    extends Composer<_$AppDatabase, $HabitsTable> {
  $$HabitsTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<int> get id => $composableBuilder(
      column: $table.id, builder: (column) => ColumnFilters(column));

  ColumnFilters<int> get takesTime => $composableBuilder(
      column: $table.takesTime, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get titleEn => $composableBuilder(
      column: $table.titleEn, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get descriptionEn => $composableBuilder(
      column: $table.descriptionEn, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get whyEn => $composableBuilder(
      column: $table.whyEn, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get titleKk => $composableBuilder(
      column: $table.titleKk, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get descriptionKk => $composableBuilder(
      column: $table.descriptionKk, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get whyKk => $composableBuilder(
      column: $table.whyKk, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get titleRu => $composableBuilder(
      column: $table.titleRu, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get descriptionRu => $composableBuilder(
      column: $table.descriptionRu, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get whyRu => $composableBuilder(
      column: $table.whyRu, builder: (column) => ColumnFilters(column));

  $$CategoriesTableFilterComposer get categoryId {
    final $$CategoriesTableFilterComposer composer = $composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.categoryId,
        referencedTable: $db.categories,
        getReferencedColumn: (t) => t.id,
        builder: (joinBuilder,
                {$addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer}) =>
            $$CategoriesTableFilterComposer(
              $db: $db,
              $table: $db.categories,
              $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
              joinBuilder: joinBuilder,
              $removeJoinBuilderFromRootComposer:
                  $removeJoinBuilderFromRootComposer,
            ));
    return composer;
  }

  Expression<bool> tipsRefs(
      Expression<bool> Function($$TipsTableFilterComposer f) f) {
    final $$TipsTableFilterComposer composer = $composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.id,
        referencedTable: $db.tips,
        getReferencedColumn: (t) => t.habitId,
        builder: (joinBuilder,
                {$addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer}) =>
            $$TipsTableFilterComposer(
              $db: $db,
              $table: $db.tips,
              $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
              joinBuilder: joinBuilder,
              $removeJoinBuilderFromRootComposer:
                  $removeJoinBuilderFromRootComposer,
            ));
    return f(composer);
  }

  Expression<bool> habitSubscriptionsRefs(
      Expression<bool> Function($$HabitSubscriptionsTableFilterComposer f) f) {
    final $$HabitSubscriptionsTableFilterComposer composer = $composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.id,
        referencedTable: $db.habitSubscriptions,
        getReferencedColumn: (t) => t.habitId,
        builder: (joinBuilder,
                {$addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer}) =>
            $$HabitSubscriptionsTableFilterComposer(
              $db: $db,
              $table: $db.habitSubscriptions,
              $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
              joinBuilder: joinBuilder,
              $removeJoinBuilderFromRootComposer:
                  $removeJoinBuilderFromRootComposer,
            ));
    return f(composer);
  }

  Expression<bool> habitCompletionsRefs(
      Expression<bool> Function($$HabitCompletionsTableFilterComposer f) f) {
    final $$HabitCompletionsTableFilterComposer composer = $composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.id,
        referencedTable: $db.habitCompletions,
        getReferencedColumn: (t) => t.habitId,
        builder: (joinBuilder,
                {$addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer}) =>
            $$HabitCompletionsTableFilterComposer(
              $db: $db,
              $table: $db.habitCompletions,
              $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
              joinBuilder: joinBuilder,
              $removeJoinBuilderFromRootComposer:
                  $removeJoinBuilderFromRootComposer,
            ));
    return f(composer);
  }

  Expression<bool> habitWeekdaysRefs(
      Expression<bool> Function($$HabitWeekdaysTableFilterComposer f) f) {
    final $$HabitWeekdaysTableFilterComposer composer = $composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.id,
        referencedTable: $db.habitWeekdays,
        getReferencedColumn: (t) => t.habitId,
        builder: (joinBuilder,
                {$addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer}) =>
            $$HabitWeekdaysTableFilterComposer(
              $db: $db,
              $table: $db.habitWeekdays,
              $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
              joinBuilder: joinBuilder,
              $removeJoinBuilderFromRootComposer:
                  $removeJoinBuilderFromRootComposer,
            ));
    return f(composer);
  }
}

class $$HabitsTableOrderingComposer
    extends Composer<_$AppDatabase, $HabitsTable> {
  $$HabitsTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<int> get id => $composableBuilder(
      column: $table.id, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<int> get takesTime => $composableBuilder(
      column: $table.takesTime, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get titleEn => $composableBuilder(
      column: $table.titleEn, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get descriptionEn => $composableBuilder(
      column: $table.descriptionEn,
      builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get whyEn => $composableBuilder(
      column: $table.whyEn, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get titleKk => $composableBuilder(
      column: $table.titleKk, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get descriptionKk => $composableBuilder(
      column: $table.descriptionKk,
      builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get whyKk => $composableBuilder(
      column: $table.whyKk, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get titleRu => $composableBuilder(
      column: $table.titleRu, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get descriptionRu => $composableBuilder(
      column: $table.descriptionRu,
      builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get whyRu => $composableBuilder(
      column: $table.whyRu, builder: (column) => ColumnOrderings(column));

  $$CategoriesTableOrderingComposer get categoryId {
    final $$CategoriesTableOrderingComposer composer = $composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.categoryId,
        referencedTable: $db.categories,
        getReferencedColumn: (t) => t.id,
        builder: (joinBuilder,
                {$addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer}) =>
            $$CategoriesTableOrderingComposer(
              $db: $db,
              $table: $db.categories,
              $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
              joinBuilder: joinBuilder,
              $removeJoinBuilderFromRootComposer:
                  $removeJoinBuilderFromRootComposer,
            ));
    return composer;
  }
}

class $$HabitsTableAnnotationComposer
    extends Composer<_$AppDatabase, $HabitsTable> {
  $$HabitsTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<int> get id =>
      $composableBuilder(column: $table.id, builder: (column) => column);

  GeneratedColumn<int> get takesTime =>
      $composableBuilder(column: $table.takesTime, builder: (column) => column);

  GeneratedColumn<String> get titleEn =>
      $composableBuilder(column: $table.titleEn, builder: (column) => column);

  GeneratedColumn<String> get descriptionEn => $composableBuilder(
      column: $table.descriptionEn, builder: (column) => column);

  GeneratedColumn<String> get whyEn =>
      $composableBuilder(column: $table.whyEn, builder: (column) => column);

  GeneratedColumn<String> get titleKk =>
      $composableBuilder(column: $table.titleKk, builder: (column) => column);

  GeneratedColumn<String> get descriptionKk => $composableBuilder(
      column: $table.descriptionKk, builder: (column) => column);

  GeneratedColumn<String> get whyKk =>
      $composableBuilder(column: $table.whyKk, builder: (column) => column);

  GeneratedColumn<String> get titleRu =>
      $composableBuilder(column: $table.titleRu, builder: (column) => column);

  GeneratedColumn<String> get descriptionRu => $composableBuilder(
      column: $table.descriptionRu, builder: (column) => column);

  GeneratedColumn<String> get whyRu =>
      $composableBuilder(column: $table.whyRu, builder: (column) => column);

  $$CategoriesTableAnnotationComposer get categoryId {
    final $$CategoriesTableAnnotationComposer composer = $composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.categoryId,
        referencedTable: $db.categories,
        getReferencedColumn: (t) => t.id,
        builder: (joinBuilder,
                {$addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer}) =>
            $$CategoriesTableAnnotationComposer(
              $db: $db,
              $table: $db.categories,
              $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
              joinBuilder: joinBuilder,
              $removeJoinBuilderFromRootComposer:
                  $removeJoinBuilderFromRootComposer,
            ));
    return composer;
  }

  Expression<T> tipsRefs<T extends Object>(
      Expression<T> Function($$TipsTableAnnotationComposer a) f) {
    final $$TipsTableAnnotationComposer composer = $composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.id,
        referencedTable: $db.tips,
        getReferencedColumn: (t) => t.habitId,
        builder: (joinBuilder,
                {$addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer}) =>
            $$TipsTableAnnotationComposer(
              $db: $db,
              $table: $db.tips,
              $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
              joinBuilder: joinBuilder,
              $removeJoinBuilderFromRootComposer:
                  $removeJoinBuilderFromRootComposer,
            ));
    return f(composer);
  }

  Expression<T> habitSubscriptionsRefs<T extends Object>(
      Expression<T> Function($$HabitSubscriptionsTableAnnotationComposer a) f) {
    final $$HabitSubscriptionsTableAnnotationComposer composer =
        $composerBuilder(
            composer: this,
            getCurrentColumn: (t) => t.id,
            referencedTable: $db.habitSubscriptions,
            getReferencedColumn: (t) => t.habitId,
            builder: (joinBuilder,
                    {$addJoinBuilderToRootComposer,
                    $removeJoinBuilderFromRootComposer}) =>
                $$HabitSubscriptionsTableAnnotationComposer(
                  $db: $db,
                  $table: $db.habitSubscriptions,
                  $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
                  joinBuilder: joinBuilder,
                  $removeJoinBuilderFromRootComposer:
                      $removeJoinBuilderFromRootComposer,
                ));
    return f(composer);
  }

  Expression<T> habitCompletionsRefs<T extends Object>(
      Expression<T> Function($$HabitCompletionsTableAnnotationComposer a) f) {
    final $$HabitCompletionsTableAnnotationComposer composer = $composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.id,
        referencedTable: $db.habitCompletions,
        getReferencedColumn: (t) => t.habitId,
        builder: (joinBuilder,
                {$addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer}) =>
            $$HabitCompletionsTableAnnotationComposer(
              $db: $db,
              $table: $db.habitCompletions,
              $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
              joinBuilder: joinBuilder,
              $removeJoinBuilderFromRootComposer:
                  $removeJoinBuilderFromRootComposer,
            ));
    return f(composer);
  }

  Expression<T> habitWeekdaysRefs<T extends Object>(
      Expression<T> Function($$HabitWeekdaysTableAnnotationComposer a) f) {
    final $$HabitWeekdaysTableAnnotationComposer composer = $composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.id,
        referencedTable: $db.habitWeekdays,
        getReferencedColumn: (t) => t.habitId,
        builder: (joinBuilder,
                {$addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer}) =>
            $$HabitWeekdaysTableAnnotationComposer(
              $db: $db,
              $table: $db.habitWeekdays,
              $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
              joinBuilder: joinBuilder,
              $removeJoinBuilderFromRootComposer:
                  $removeJoinBuilderFromRootComposer,
            ));
    return f(composer);
  }
}

class $$HabitsTableTableManager extends RootTableManager<
    _$AppDatabase,
    $HabitsTable,
    Habit,
    $$HabitsTableFilterComposer,
    $$HabitsTableOrderingComposer,
    $$HabitsTableAnnotationComposer,
    $$HabitsTableCreateCompanionBuilder,
    $$HabitsTableUpdateCompanionBuilder,
    (Habit, $$HabitsTableReferences),
    Habit,
    PrefetchHooks Function(
        {bool categoryId,
        bool tipsRefs,
        bool habitSubscriptionsRefs,
        bool habitCompletionsRefs,
        bool habitWeekdaysRefs})> {
  $$HabitsTableTableManager(_$AppDatabase db, $HabitsTable table)
      : super(TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$HabitsTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$HabitsTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$HabitsTableAnnotationComposer($db: db, $table: table),
          updateCompanionCallback: ({
            Value<int> id = const Value.absent(),
            Value<int> takesTime = const Value.absent(),
            Value<int> categoryId = const Value.absent(),
            Value<String> titleEn = const Value.absent(),
            Value<String> descriptionEn = const Value.absent(),
            Value<String?> whyEn = const Value.absent(),
            Value<String> titleKk = const Value.absent(),
            Value<String> descriptionKk = const Value.absent(),
            Value<String?> whyKk = const Value.absent(),
            Value<String> titleRu = const Value.absent(),
            Value<String> descriptionRu = const Value.absent(),
            Value<String?> whyRu = const Value.absent(),
          }) =>
              HabitsCompanion(
            id: id,
            takesTime: takesTime,
            categoryId: categoryId,
            titleEn: titleEn,
            descriptionEn: descriptionEn,
            whyEn: whyEn,
            titleKk: titleKk,
            descriptionKk: descriptionKk,
            whyKk: whyKk,
            titleRu: titleRu,
            descriptionRu: descriptionRu,
            whyRu: whyRu,
          ),
          createCompanionCallback: ({
            Value<int> id = const Value.absent(),
            required int takesTime,
            required int categoryId,
            required String titleEn,
            required String descriptionEn,
            Value<String?> whyEn = const Value.absent(),
            required String titleKk,
            required String descriptionKk,
            Value<String?> whyKk = const Value.absent(),
            required String titleRu,
            required String descriptionRu,
            Value<String?> whyRu = const Value.absent(),
          }) =>
              HabitsCompanion.insert(
            id: id,
            takesTime: takesTime,
            categoryId: categoryId,
            titleEn: titleEn,
            descriptionEn: descriptionEn,
            whyEn: whyEn,
            titleKk: titleKk,
            descriptionKk: descriptionKk,
            whyKk: whyKk,
            titleRu: titleRu,
            descriptionRu: descriptionRu,
            whyRu: whyRu,
          ),
          withReferenceMapper: (p0) => p0
              .map((e) =>
                  (e.readTable(table), $$HabitsTableReferences(db, table, e)))
              .toList(),
          prefetchHooksCallback: (
              {categoryId = false,
              tipsRefs = false,
              habitSubscriptionsRefs = false,
              habitCompletionsRefs = false,
              habitWeekdaysRefs = false}) {
            return PrefetchHooks(
              db: db,
              explicitlyWatchedTables: [
                if (tipsRefs) db.tips,
                if (habitSubscriptionsRefs) db.habitSubscriptions,
                if (habitCompletionsRefs) db.habitCompletions,
                if (habitWeekdaysRefs) db.habitWeekdays
              ],
              addJoins: <
                  T extends TableManagerState<
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic>>(state) {
                if (categoryId) {
                  state = state.withJoin(
                    currentTable: table,
                    currentColumn: table.categoryId,
                    referencedTable:
                        $$HabitsTableReferences._categoryIdTable(db),
                    referencedColumn:
                        $$HabitsTableReferences._categoryIdTable(db).id,
                  ) as T;
                }

                return state;
              },
              getPrefetchedDataCallback: (items) async {
                return [
                  if (tipsRefs)
                    await $_getPrefetchedData<Habit, $HabitsTable, Tip>(
                        currentTable: table,
                        referencedTable:
                            $$HabitsTableReferences._tipsRefsTable(db),
                        managerFromTypedResult: (p0) =>
                            $$HabitsTableReferences(db, table, p0).tipsRefs,
                        referencedItemsForCurrentItem: (item,
                                referencedItems) =>
                            referencedItems.where((e) => e.habitId == item.id),
                        typedResults: items),
                  if (habitSubscriptionsRefs)
                    await $_getPrefetchedData<Habit, $HabitsTable,
                            HabitSubscription>(
                        currentTable: table,
                        referencedTable: $$HabitsTableReferences
                            ._habitSubscriptionsRefsTable(db),
                        managerFromTypedResult: (p0) =>
                            $$HabitsTableReferences(db, table, p0)
                                .habitSubscriptionsRefs,
                        referencedItemsForCurrentItem: (item,
                                referencedItems) =>
                            referencedItems.where((e) => e.habitId == item.id),
                        typedResults: items),
                  if (habitCompletionsRefs)
                    await $_getPrefetchedData<Habit, $HabitsTable,
                            HabitCompletion>(
                        currentTable: table,
                        referencedTable: $$HabitsTableReferences
                            ._habitCompletionsRefsTable(db),
                        managerFromTypedResult: (p0) =>
                            $$HabitsTableReferences(db, table, p0)
                                .habitCompletionsRefs,
                        referencedItemsForCurrentItem: (item,
                                referencedItems) =>
                            referencedItems.where((e) => e.habitId == item.id),
                        typedResults: items),
                  if (habitWeekdaysRefs)
                    await $_getPrefetchedData<Habit, $HabitsTable,
                            HabitWeekday>(
                        currentTable: table,
                        referencedTable:
                            $$HabitsTableReferences._habitWeekdaysRefsTable(db),
                        managerFromTypedResult: (p0) =>
                            $$HabitsTableReferences(db, table, p0)
                                .habitWeekdaysRefs,
                        referencedItemsForCurrentItem: (item,
                                referencedItems) =>
                            referencedItems.where((e) => e.habitId == item.id),
                        typedResults: items)
                ];
              },
            );
          },
        ));
}

typedef $$HabitsTableProcessedTableManager = ProcessedTableManager<
    _$AppDatabase,
    $HabitsTable,
    Habit,
    $$HabitsTableFilterComposer,
    $$HabitsTableOrderingComposer,
    $$HabitsTableAnnotationComposer,
    $$HabitsTableCreateCompanionBuilder,
    $$HabitsTableUpdateCompanionBuilder,
    (Habit, $$HabitsTableReferences),
    Habit,
    PrefetchHooks Function(
        {bool categoryId,
        bool tipsRefs,
        bool habitSubscriptionsRefs,
        bool habitCompletionsRefs,
        bool habitWeekdaysRefs})>;
typedef $$TipsTableCreateCompanionBuilder = TipsCompanion Function({
  Value<int> id,
  required int habitId,
  required String titleEn,
  required String contentEn,
  required String titleRu,
  required String contentRu,
  required String titleKk,
  required String contentKk,
});
typedef $$TipsTableUpdateCompanionBuilder = TipsCompanion Function({
  Value<int> id,
  Value<int> habitId,
  Value<String> titleEn,
  Value<String> contentEn,
  Value<String> titleRu,
  Value<String> contentRu,
  Value<String> titleKk,
  Value<String> contentKk,
});

final class $$TipsTableReferences
    extends BaseReferences<_$AppDatabase, $TipsTable, Tip> {
  $$TipsTableReferences(super.$_db, super.$_table, super.$_typedResult);

  static $HabitsTable _habitIdTable(_$AppDatabase db) => db.habits
      .createAlias($_aliasNameGenerator(db.tips.habitId, db.habits.id));

  $$HabitsTableProcessedTableManager get habitId {
    final $_column = $_itemColumn<int>('habit_id')!;

    final manager = $$HabitsTableTableManager($_db, $_db.habits)
        .filter((f) => f.id.sqlEquals($_column));
    final item = $_typedResult.readTableOrNull(_habitIdTable($_db));
    if (item == null) return manager;
    return ProcessedTableManager(
        manager.$state.copyWith(prefetchedData: [item]));
  }
}

class $$TipsTableFilterComposer extends Composer<_$AppDatabase, $TipsTable> {
  $$TipsTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<int> get id => $composableBuilder(
      column: $table.id, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get titleEn => $composableBuilder(
      column: $table.titleEn, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get contentEn => $composableBuilder(
      column: $table.contentEn, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get titleRu => $composableBuilder(
      column: $table.titleRu, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get contentRu => $composableBuilder(
      column: $table.contentRu, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get titleKk => $composableBuilder(
      column: $table.titleKk, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get contentKk => $composableBuilder(
      column: $table.contentKk, builder: (column) => ColumnFilters(column));

  $$HabitsTableFilterComposer get habitId {
    final $$HabitsTableFilterComposer composer = $composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.habitId,
        referencedTable: $db.habits,
        getReferencedColumn: (t) => t.id,
        builder: (joinBuilder,
                {$addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer}) =>
            $$HabitsTableFilterComposer(
              $db: $db,
              $table: $db.habits,
              $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
              joinBuilder: joinBuilder,
              $removeJoinBuilderFromRootComposer:
                  $removeJoinBuilderFromRootComposer,
            ));
    return composer;
  }
}

class $$TipsTableOrderingComposer extends Composer<_$AppDatabase, $TipsTable> {
  $$TipsTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<int> get id => $composableBuilder(
      column: $table.id, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get titleEn => $composableBuilder(
      column: $table.titleEn, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get contentEn => $composableBuilder(
      column: $table.contentEn, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get titleRu => $composableBuilder(
      column: $table.titleRu, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get contentRu => $composableBuilder(
      column: $table.contentRu, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get titleKk => $composableBuilder(
      column: $table.titleKk, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get contentKk => $composableBuilder(
      column: $table.contentKk, builder: (column) => ColumnOrderings(column));

  $$HabitsTableOrderingComposer get habitId {
    final $$HabitsTableOrderingComposer composer = $composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.habitId,
        referencedTable: $db.habits,
        getReferencedColumn: (t) => t.id,
        builder: (joinBuilder,
                {$addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer}) =>
            $$HabitsTableOrderingComposer(
              $db: $db,
              $table: $db.habits,
              $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
              joinBuilder: joinBuilder,
              $removeJoinBuilderFromRootComposer:
                  $removeJoinBuilderFromRootComposer,
            ));
    return composer;
  }
}

class $$TipsTableAnnotationComposer
    extends Composer<_$AppDatabase, $TipsTable> {
  $$TipsTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<int> get id =>
      $composableBuilder(column: $table.id, builder: (column) => column);

  GeneratedColumn<String> get titleEn =>
      $composableBuilder(column: $table.titleEn, builder: (column) => column);

  GeneratedColumn<String> get contentEn =>
      $composableBuilder(column: $table.contentEn, builder: (column) => column);

  GeneratedColumn<String> get titleRu =>
      $composableBuilder(column: $table.titleRu, builder: (column) => column);

  GeneratedColumn<String> get contentRu =>
      $composableBuilder(column: $table.contentRu, builder: (column) => column);

  GeneratedColumn<String> get titleKk =>
      $composableBuilder(column: $table.titleKk, builder: (column) => column);

  GeneratedColumn<String> get contentKk =>
      $composableBuilder(column: $table.contentKk, builder: (column) => column);

  $$HabitsTableAnnotationComposer get habitId {
    final $$HabitsTableAnnotationComposer composer = $composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.habitId,
        referencedTable: $db.habits,
        getReferencedColumn: (t) => t.id,
        builder: (joinBuilder,
                {$addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer}) =>
            $$HabitsTableAnnotationComposer(
              $db: $db,
              $table: $db.habits,
              $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
              joinBuilder: joinBuilder,
              $removeJoinBuilderFromRootComposer:
                  $removeJoinBuilderFromRootComposer,
            ));
    return composer;
  }
}

class $$TipsTableTableManager extends RootTableManager<
    _$AppDatabase,
    $TipsTable,
    Tip,
    $$TipsTableFilterComposer,
    $$TipsTableOrderingComposer,
    $$TipsTableAnnotationComposer,
    $$TipsTableCreateCompanionBuilder,
    $$TipsTableUpdateCompanionBuilder,
    (Tip, $$TipsTableReferences),
    Tip,
    PrefetchHooks Function({bool habitId})> {
  $$TipsTableTableManager(_$AppDatabase db, $TipsTable table)
      : super(TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$TipsTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$TipsTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$TipsTableAnnotationComposer($db: db, $table: table),
          updateCompanionCallback: ({
            Value<int> id = const Value.absent(),
            Value<int> habitId = const Value.absent(),
            Value<String> titleEn = const Value.absent(),
            Value<String> contentEn = const Value.absent(),
            Value<String> titleRu = const Value.absent(),
            Value<String> contentRu = const Value.absent(),
            Value<String> titleKk = const Value.absent(),
            Value<String> contentKk = const Value.absent(),
          }) =>
              TipsCompanion(
            id: id,
            habitId: habitId,
            titleEn: titleEn,
            contentEn: contentEn,
            titleRu: titleRu,
            contentRu: contentRu,
            titleKk: titleKk,
            contentKk: contentKk,
          ),
          createCompanionCallback: ({
            Value<int> id = const Value.absent(),
            required int habitId,
            required String titleEn,
            required String contentEn,
            required String titleRu,
            required String contentRu,
            required String titleKk,
            required String contentKk,
          }) =>
              TipsCompanion.insert(
            id: id,
            habitId: habitId,
            titleEn: titleEn,
            contentEn: contentEn,
            titleRu: titleRu,
            contentRu: contentRu,
            titleKk: titleKk,
            contentKk: contentKk,
          ),
          withReferenceMapper: (p0) => p0
              .map((e) =>
                  (e.readTable(table), $$TipsTableReferences(db, table, e)))
              .toList(),
          prefetchHooksCallback: ({habitId = false}) {
            return PrefetchHooks(
              db: db,
              explicitlyWatchedTables: [],
              addJoins: <
                  T extends TableManagerState<
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic>>(state) {
                if (habitId) {
                  state = state.withJoin(
                    currentTable: table,
                    currentColumn: table.habitId,
                    referencedTable: $$TipsTableReferences._habitIdTable(db),
                    referencedColumn:
                        $$TipsTableReferences._habitIdTable(db).id,
                  ) as T;
                }

                return state;
              },
              getPrefetchedDataCallback: (items) async {
                return [];
              },
            );
          },
        ));
}

typedef $$TipsTableProcessedTableManager = ProcessedTableManager<
    _$AppDatabase,
    $TipsTable,
    Tip,
    $$TipsTableFilterComposer,
    $$TipsTableOrderingComposer,
    $$TipsTableAnnotationComposer,
    $$TipsTableCreateCompanionBuilder,
    $$TipsTableUpdateCompanionBuilder,
    (Tip, $$TipsTableReferences),
    Tip,
    PrefetchHooks Function({bool habitId})>;
typedef $$HabitSubscriptionsTableCreateCompanionBuilder
    = HabitSubscriptionsCompanion Function({
  Value<int> id,
  required int habitId,
  required DateTime subscriptionDate,
  Value<DateTime?> unsubscribeDate,
});
typedef $$HabitSubscriptionsTableUpdateCompanionBuilder
    = HabitSubscriptionsCompanion Function({
  Value<int> id,
  Value<int> habitId,
  Value<DateTime> subscriptionDate,
  Value<DateTime?> unsubscribeDate,
});

final class $$HabitSubscriptionsTableReferences extends BaseReferences<
    _$AppDatabase, $HabitSubscriptionsTable, HabitSubscription> {
  $$HabitSubscriptionsTableReferences(
      super.$_db, super.$_table, super.$_typedResult);

  static $HabitsTable _habitIdTable(_$AppDatabase db) => db.habits.createAlias(
      $_aliasNameGenerator(db.habitSubscriptions.habitId, db.habits.id));

  $$HabitsTableProcessedTableManager get habitId {
    final $_column = $_itemColumn<int>('habit_id')!;

    final manager = $$HabitsTableTableManager($_db, $_db.habits)
        .filter((f) => f.id.sqlEquals($_column));
    final item = $_typedResult.readTableOrNull(_habitIdTable($_db));
    if (item == null) return manager;
    return ProcessedTableManager(
        manager.$state.copyWith(prefetchedData: [item]));
  }
}

class $$HabitSubscriptionsTableFilterComposer
    extends Composer<_$AppDatabase, $HabitSubscriptionsTable> {
  $$HabitSubscriptionsTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<int> get id => $composableBuilder(
      column: $table.id, builder: (column) => ColumnFilters(column));

  ColumnFilters<DateTime> get subscriptionDate => $composableBuilder(
      column: $table.subscriptionDate,
      builder: (column) => ColumnFilters(column));

  ColumnFilters<DateTime> get unsubscribeDate => $composableBuilder(
      column: $table.unsubscribeDate,
      builder: (column) => ColumnFilters(column));

  $$HabitsTableFilterComposer get habitId {
    final $$HabitsTableFilterComposer composer = $composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.habitId,
        referencedTable: $db.habits,
        getReferencedColumn: (t) => t.id,
        builder: (joinBuilder,
                {$addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer}) =>
            $$HabitsTableFilterComposer(
              $db: $db,
              $table: $db.habits,
              $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
              joinBuilder: joinBuilder,
              $removeJoinBuilderFromRootComposer:
                  $removeJoinBuilderFromRootComposer,
            ));
    return composer;
  }
}

class $$HabitSubscriptionsTableOrderingComposer
    extends Composer<_$AppDatabase, $HabitSubscriptionsTable> {
  $$HabitSubscriptionsTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<int> get id => $composableBuilder(
      column: $table.id, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<DateTime> get subscriptionDate => $composableBuilder(
      column: $table.subscriptionDate,
      builder: (column) => ColumnOrderings(column));

  ColumnOrderings<DateTime> get unsubscribeDate => $composableBuilder(
      column: $table.unsubscribeDate,
      builder: (column) => ColumnOrderings(column));

  $$HabitsTableOrderingComposer get habitId {
    final $$HabitsTableOrderingComposer composer = $composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.habitId,
        referencedTable: $db.habits,
        getReferencedColumn: (t) => t.id,
        builder: (joinBuilder,
                {$addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer}) =>
            $$HabitsTableOrderingComposer(
              $db: $db,
              $table: $db.habits,
              $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
              joinBuilder: joinBuilder,
              $removeJoinBuilderFromRootComposer:
                  $removeJoinBuilderFromRootComposer,
            ));
    return composer;
  }
}

class $$HabitSubscriptionsTableAnnotationComposer
    extends Composer<_$AppDatabase, $HabitSubscriptionsTable> {
  $$HabitSubscriptionsTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<int> get id =>
      $composableBuilder(column: $table.id, builder: (column) => column);

  GeneratedColumn<DateTime> get subscriptionDate => $composableBuilder(
      column: $table.subscriptionDate, builder: (column) => column);

  GeneratedColumn<DateTime> get unsubscribeDate => $composableBuilder(
      column: $table.unsubscribeDate, builder: (column) => column);

  $$HabitsTableAnnotationComposer get habitId {
    final $$HabitsTableAnnotationComposer composer = $composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.habitId,
        referencedTable: $db.habits,
        getReferencedColumn: (t) => t.id,
        builder: (joinBuilder,
                {$addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer}) =>
            $$HabitsTableAnnotationComposer(
              $db: $db,
              $table: $db.habits,
              $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
              joinBuilder: joinBuilder,
              $removeJoinBuilderFromRootComposer:
                  $removeJoinBuilderFromRootComposer,
            ));
    return composer;
  }
}

class $$HabitSubscriptionsTableTableManager extends RootTableManager<
    _$AppDatabase,
    $HabitSubscriptionsTable,
    HabitSubscription,
    $$HabitSubscriptionsTableFilterComposer,
    $$HabitSubscriptionsTableOrderingComposer,
    $$HabitSubscriptionsTableAnnotationComposer,
    $$HabitSubscriptionsTableCreateCompanionBuilder,
    $$HabitSubscriptionsTableUpdateCompanionBuilder,
    (HabitSubscription, $$HabitSubscriptionsTableReferences),
    HabitSubscription,
    PrefetchHooks Function({bool habitId})> {
  $$HabitSubscriptionsTableTableManager(
      _$AppDatabase db, $HabitSubscriptionsTable table)
      : super(TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$HabitSubscriptionsTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$HabitSubscriptionsTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$HabitSubscriptionsTableAnnotationComposer(
                  $db: db, $table: table),
          updateCompanionCallback: ({
            Value<int> id = const Value.absent(),
            Value<int> habitId = const Value.absent(),
            Value<DateTime> subscriptionDate = const Value.absent(),
            Value<DateTime?> unsubscribeDate = const Value.absent(),
          }) =>
              HabitSubscriptionsCompanion(
            id: id,
            habitId: habitId,
            subscriptionDate: subscriptionDate,
            unsubscribeDate: unsubscribeDate,
          ),
          createCompanionCallback: ({
            Value<int> id = const Value.absent(),
            required int habitId,
            required DateTime subscriptionDate,
            Value<DateTime?> unsubscribeDate = const Value.absent(),
          }) =>
              HabitSubscriptionsCompanion.insert(
            id: id,
            habitId: habitId,
            subscriptionDate: subscriptionDate,
            unsubscribeDate: unsubscribeDate,
          ),
          withReferenceMapper: (p0) => p0
              .map((e) => (
                    e.readTable(table),
                    $$HabitSubscriptionsTableReferences(db, table, e)
                  ))
              .toList(),
          prefetchHooksCallback: ({habitId = false}) {
            return PrefetchHooks(
              db: db,
              explicitlyWatchedTables: [],
              addJoins: <
                  T extends TableManagerState<
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic>>(state) {
                if (habitId) {
                  state = state.withJoin(
                    currentTable: table,
                    currentColumn: table.habitId,
                    referencedTable:
                        $$HabitSubscriptionsTableReferences._habitIdTable(db),
                    referencedColumn: $$HabitSubscriptionsTableReferences
                        ._habitIdTable(db)
                        .id,
                  ) as T;
                }

                return state;
              },
              getPrefetchedDataCallback: (items) async {
                return [];
              },
            );
          },
        ));
}

typedef $$HabitSubscriptionsTableProcessedTableManager = ProcessedTableManager<
    _$AppDatabase,
    $HabitSubscriptionsTable,
    HabitSubscription,
    $$HabitSubscriptionsTableFilterComposer,
    $$HabitSubscriptionsTableOrderingComposer,
    $$HabitSubscriptionsTableAnnotationComposer,
    $$HabitSubscriptionsTableCreateCompanionBuilder,
    $$HabitSubscriptionsTableUpdateCompanionBuilder,
    (HabitSubscription, $$HabitSubscriptionsTableReferences),
    HabitSubscription,
    PrefetchHooks Function({bool habitId})>;
typedef $$HabitCompletionsTableCreateCompanionBuilder
    = HabitCompletionsCompanion Function({
  Value<int> id,
  required int habitId,
  required bool isDone,
  required DateTime date,
});
typedef $$HabitCompletionsTableUpdateCompanionBuilder
    = HabitCompletionsCompanion Function({
  Value<int> id,
  Value<int> habitId,
  Value<bool> isDone,
  Value<DateTime> date,
});

final class $$HabitCompletionsTableReferences extends BaseReferences<
    _$AppDatabase, $HabitCompletionsTable, HabitCompletion> {
  $$HabitCompletionsTableReferences(
      super.$_db, super.$_table, super.$_typedResult);

  static $HabitsTable _habitIdTable(_$AppDatabase db) => db.habits.createAlias(
      $_aliasNameGenerator(db.habitCompletions.habitId, db.habits.id));

  $$HabitsTableProcessedTableManager get habitId {
    final $_column = $_itemColumn<int>('habit_id')!;

    final manager = $$HabitsTableTableManager($_db, $_db.habits)
        .filter((f) => f.id.sqlEquals($_column));
    final item = $_typedResult.readTableOrNull(_habitIdTable($_db));
    if (item == null) return manager;
    return ProcessedTableManager(
        manager.$state.copyWith(prefetchedData: [item]));
  }
}

class $$HabitCompletionsTableFilterComposer
    extends Composer<_$AppDatabase, $HabitCompletionsTable> {
  $$HabitCompletionsTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<int> get id => $composableBuilder(
      column: $table.id, builder: (column) => ColumnFilters(column));

  ColumnFilters<bool> get isDone => $composableBuilder(
      column: $table.isDone, builder: (column) => ColumnFilters(column));

  ColumnFilters<DateTime> get date => $composableBuilder(
      column: $table.date, builder: (column) => ColumnFilters(column));

  $$HabitsTableFilterComposer get habitId {
    final $$HabitsTableFilterComposer composer = $composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.habitId,
        referencedTable: $db.habits,
        getReferencedColumn: (t) => t.id,
        builder: (joinBuilder,
                {$addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer}) =>
            $$HabitsTableFilterComposer(
              $db: $db,
              $table: $db.habits,
              $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
              joinBuilder: joinBuilder,
              $removeJoinBuilderFromRootComposer:
                  $removeJoinBuilderFromRootComposer,
            ));
    return composer;
  }
}

class $$HabitCompletionsTableOrderingComposer
    extends Composer<_$AppDatabase, $HabitCompletionsTable> {
  $$HabitCompletionsTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<int> get id => $composableBuilder(
      column: $table.id, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<bool> get isDone => $composableBuilder(
      column: $table.isDone, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<DateTime> get date => $composableBuilder(
      column: $table.date, builder: (column) => ColumnOrderings(column));

  $$HabitsTableOrderingComposer get habitId {
    final $$HabitsTableOrderingComposer composer = $composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.habitId,
        referencedTable: $db.habits,
        getReferencedColumn: (t) => t.id,
        builder: (joinBuilder,
                {$addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer}) =>
            $$HabitsTableOrderingComposer(
              $db: $db,
              $table: $db.habits,
              $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
              joinBuilder: joinBuilder,
              $removeJoinBuilderFromRootComposer:
                  $removeJoinBuilderFromRootComposer,
            ));
    return composer;
  }
}

class $$HabitCompletionsTableAnnotationComposer
    extends Composer<_$AppDatabase, $HabitCompletionsTable> {
  $$HabitCompletionsTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<int> get id =>
      $composableBuilder(column: $table.id, builder: (column) => column);

  GeneratedColumn<bool> get isDone =>
      $composableBuilder(column: $table.isDone, builder: (column) => column);

  GeneratedColumn<DateTime> get date =>
      $composableBuilder(column: $table.date, builder: (column) => column);

  $$HabitsTableAnnotationComposer get habitId {
    final $$HabitsTableAnnotationComposer composer = $composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.habitId,
        referencedTable: $db.habits,
        getReferencedColumn: (t) => t.id,
        builder: (joinBuilder,
                {$addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer}) =>
            $$HabitsTableAnnotationComposer(
              $db: $db,
              $table: $db.habits,
              $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
              joinBuilder: joinBuilder,
              $removeJoinBuilderFromRootComposer:
                  $removeJoinBuilderFromRootComposer,
            ));
    return composer;
  }
}

class $$HabitCompletionsTableTableManager extends RootTableManager<
    _$AppDatabase,
    $HabitCompletionsTable,
    HabitCompletion,
    $$HabitCompletionsTableFilterComposer,
    $$HabitCompletionsTableOrderingComposer,
    $$HabitCompletionsTableAnnotationComposer,
    $$HabitCompletionsTableCreateCompanionBuilder,
    $$HabitCompletionsTableUpdateCompanionBuilder,
    (HabitCompletion, $$HabitCompletionsTableReferences),
    HabitCompletion,
    PrefetchHooks Function({bool habitId})> {
  $$HabitCompletionsTableTableManager(
      _$AppDatabase db, $HabitCompletionsTable table)
      : super(TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$HabitCompletionsTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$HabitCompletionsTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$HabitCompletionsTableAnnotationComposer($db: db, $table: table),
          updateCompanionCallback: ({
            Value<int> id = const Value.absent(),
            Value<int> habitId = const Value.absent(),
            Value<bool> isDone = const Value.absent(),
            Value<DateTime> date = const Value.absent(),
          }) =>
              HabitCompletionsCompanion(
            id: id,
            habitId: habitId,
            isDone: isDone,
            date: date,
          ),
          createCompanionCallback: ({
            Value<int> id = const Value.absent(),
            required int habitId,
            required bool isDone,
            required DateTime date,
          }) =>
              HabitCompletionsCompanion.insert(
            id: id,
            habitId: habitId,
            isDone: isDone,
            date: date,
          ),
          withReferenceMapper: (p0) => p0
              .map((e) => (
                    e.readTable(table),
                    $$HabitCompletionsTableReferences(db, table, e)
                  ))
              .toList(),
          prefetchHooksCallback: ({habitId = false}) {
            return PrefetchHooks(
              db: db,
              explicitlyWatchedTables: [],
              addJoins: <
                  T extends TableManagerState<
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic>>(state) {
                if (habitId) {
                  state = state.withJoin(
                    currentTable: table,
                    currentColumn: table.habitId,
                    referencedTable:
                        $$HabitCompletionsTableReferences._habitIdTable(db),
                    referencedColumn:
                        $$HabitCompletionsTableReferences._habitIdTable(db).id,
                  ) as T;
                }

                return state;
              },
              getPrefetchedDataCallback: (items) async {
                return [];
              },
            );
          },
        ));
}

typedef $$HabitCompletionsTableProcessedTableManager = ProcessedTableManager<
    _$AppDatabase,
    $HabitCompletionsTable,
    HabitCompletion,
    $$HabitCompletionsTableFilterComposer,
    $$HabitCompletionsTableOrderingComposer,
    $$HabitCompletionsTableAnnotationComposer,
    $$HabitCompletionsTableCreateCompanionBuilder,
    $$HabitCompletionsTableUpdateCompanionBuilder,
    (HabitCompletion, $$HabitCompletionsTableReferences),
    HabitCompletion,
    PrefetchHooks Function({bool habitId})>;
typedef $$HabitWeekdaysTableCreateCompanionBuilder = HabitWeekdaysCompanion
    Function({
  Value<int> id,
  required int habitId,
  required int weekday,
});
typedef $$HabitWeekdaysTableUpdateCompanionBuilder = HabitWeekdaysCompanion
    Function({
  Value<int> id,
  Value<int> habitId,
  Value<int> weekday,
});

final class $$HabitWeekdaysTableReferences
    extends BaseReferences<_$AppDatabase, $HabitWeekdaysTable, HabitWeekday> {
  $$HabitWeekdaysTableReferences(
      super.$_db, super.$_table, super.$_typedResult);

  static $HabitsTable _habitIdTable(_$AppDatabase db) => db.habits.createAlias(
      $_aliasNameGenerator(db.habitWeekdays.habitId, db.habits.id));

  $$HabitsTableProcessedTableManager get habitId {
    final $_column = $_itemColumn<int>('habit_id')!;

    final manager = $$HabitsTableTableManager($_db, $_db.habits)
        .filter((f) => f.id.sqlEquals($_column));
    final item = $_typedResult.readTableOrNull(_habitIdTable($_db));
    if (item == null) return manager;
    return ProcessedTableManager(
        manager.$state.copyWith(prefetchedData: [item]));
  }
}

class $$HabitWeekdaysTableFilterComposer
    extends Composer<_$AppDatabase, $HabitWeekdaysTable> {
  $$HabitWeekdaysTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<int> get id => $composableBuilder(
      column: $table.id, builder: (column) => ColumnFilters(column));

  ColumnFilters<int> get weekday => $composableBuilder(
      column: $table.weekday, builder: (column) => ColumnFilters(column));

  $$HabitsTableFilterComposer get habitId {
    final $$HabitsTableFilterComposer composer = $composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.habitId,
        referencedTable: $db.habits,
        getReferencedColumn: (t) => t.id,
        builder: (joinBuilder,
                {$addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer}) =>
            $$HabitsTableFilterComposer(
              $db: $db,
              $table: $db.habits,
              $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
              joinBuilder: joinBuilder,
              $removeJoinBuilderFromRootComposer:
                  $removeJoinBuilderFromRootComposer,
            ));
    return composer;
  }
}

class $$HabitWeekdaysTableOrderingComposer
    extends Composer<_$AppDatabase, $HabitWeekdaysTable> {
  $$HabitWeekdaysTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<int> get id => $composableBuilder(
      column: $table.id, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<int> get weekday => $composableBuilder(
      column: $table.weekday, builder: (column) => ColumnOrderings(column));

  $$HabitsTableOrderingComposer get habitId {
    final $$HabitsTableOrderingComposer composer = $composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.habitId,
        referencedTable: $db.habits,
        getReferencedColumn: (t) => t.id,
        builder: (joinBuilder,
                {$addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer}) =>
            $$HabitsTableOrderingComposer(
              $db: $db,
              $table: $db.habits,
              $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
              joinBuilder: joinBuilder,
              $removeJoinBuilderFromRootComposer:
                  $removeJoinBuilderFromRootComposer,
            ));
    return composer;
  }
}

class $$HabitWeekdaysTableAnnotationComposer
    extends Composer<_$AppDatabase, $HabitWeekdaysTable> {
  $$HabitWeekdaysTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<int> get id =>
      $composableBuilder(column: $table.id, builder: (column) => column);

  GeneratedColumn<int> get weekday =>
      $composableBuilder(column: $table.weekday, builder: (column) => column);

  $$HabitsTableAnnotationComposer get habitId {
    final $$HabitsTableAnnotationComposer composer = $composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.habitId,
        referencedTable: $db.habits,
        getReferencedColumn: (t) => t.id,
        builder: (joinBuilder,
                {$addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer}) =>
            $$HabitsTableAnnotationComposer(
              $db: $db,
              $table: $db.habits,
              $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
              joinBuilder: joinBuilder,
              $removeJoinBuilderFromRootComposer:
                  $removeJoinBuilderFromRootComposer,
            ));
    return composer;
  }
}

class $$HabitWeekdaysTableTableManager extends RootTableManager<
    _$AppDatabase,
    $HabitWeekdaysTable,
    HabitWeekday,
    $$HabitWeekdaysTableFilterComposer,
    $$HabitWeekdaysTableOrderingComposer,
    $$HabitWeekdaysTableAnnotationComposer,
    $$HabitWeekdaysTableCreateCompanionBuilder,
    $$HabitWeekdaysTableUpdateCompanionBuilder,
    (HabitWeekday, $$HabitWeekdaysTableReferences),
    HabitWeekday,
    PrefetchHooks Function({bool habitId})> {
  $$HabitWeekdaysTableTableManager(_$AppDatabase db, $HabitWeekdaysTable table)
      : super(TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$HabitWeekdaysTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$HabitWeekdaysTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$HabitWeekdaysTableAnnotationComposer($db: db, $table: table),
          updateCompanionCallback: ({
            Value<int> id = const Value.absent(),
            Value<int> habitId = const Value.absent(),
            Value<int> weekday = const Value.absent(),
          }) =>
              HabitWeekdaysCompanion(
            id: id,
            habitId: habitId,
            weekday: weekday,
          ),
          createCompanionCallback: ({
            Value<int> id = const Value.absent(),
            required int habitId,
            required int weekday,
          }) =>
              HabitWeekdaysCompanion.insert(
            id: id,
            habitId: habitId,
            weekday: weekday,
          ),
          withReferenceMapper: (p0) => p0
              .map((e) => (
                    e.readTable(table),
                    $$HabitWeekdaysTableReferences(db, table, e)
                  ))
              .toList(),
          prefetchHooksCallback: ({habitId = false}) {
            return PrefetchHooks(
              db: db,
              explicitlyWatchedTables: [],
              addJoins: <
                  T extends TableManagerState<
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic>>(state) {
                if (habitId) {
                  state = state.withJoin(
                    currentTable: table,
                    currentColumn: table.habitId,
                    referencedTable:
                        $$HabitWeekdaysTableReferences._habitIdTable(db),
                    referencedColumn:
                        $$HabitWeekdaysTableReferences._habitIdTable(db).id,
                  ) as T;
                }

                return state;
              },
              getPrefetchedDataCallback: (items) async {
                return [];
              },
            );
          },
        ));
}

typedef $$HabitWeekdaysTableProcessedTableManager = ProcessedTableManager<
    _$AppDatabase,
    $HabitWeekdaysTable,
    HabitWeekday,
    $$HabitWeekdaysTableFilterComposer,
    $$HabitWeekdaysTableOrderingComposer,
    $$HabitWeekdaysTableAnnotationComposer,
    $$HabitWeekdaysTableCreateCompanionBuilder,
    $$HabitWeekdaysTableUpdateCompanionBuilder,
    (HabitWeekday, $$HabitWeekdaysTableReferences),
    HabitWeekday,
    PrefetchHooks Function({bool habitId})>;

class $AppDatabaseManager {
  final _$AppDatabase _db;
  $AppDatabaseManager(this._db);
  $$CategoriesTableTableManager get categories =>
      $$CategoriesTableTableManager(_db, _db.categories);
  $$HabitsTableTableManager get habits =>
      $$HabitsTableTableManager(_db, _db.habits);
  $$TipsTableTableManager get tips => $$TipsTableTableManager(_db, _db.tips);
  $$HabitSubscriptionsTableTableManager get habitSubscriptions =>
      $$HabitSubscriptionsTableTableManager(_db, _db.habitSubscriptions);
  $$HabitCompletionsTableTableManager get habitCompletions =>
      $$HabitCompletionsTableTableManager(_db, _db.habitCompletions);
  $$HabitWeekdaysTableTableManager get habitWeekdays =>
      $$HabitWeekdaysTableTableManager(_db, _db.habitWeekdays);
}
