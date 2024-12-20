// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'plan.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

Plan _$PlanFromJson(Map<String, dynamic> json) {
  return _Plan.fromJson(json);
}

/// @nodoc
mixin _$Plan {
  String get id => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  String get thumbnailUrl => throw _privateConstructorUsedError;
  List<String> get topicIds => throw _privateConstructorUsedError;
  List<String>? get tags => throw _privateConstructorUsedError;
  String get authorId => throw _privateConstructorUsedError;
  int? get ranking => throw _privateConstructorUsedError;
  bool get isBookmarked => throw _privateConstructorUsedError;
  @DateTimeConverter()
  DateTime get createdAt => throw _privateConstructorUsedError;
  @DateTimeConverter()
  DateTime? get updatedAt => throw _privateConstructorUsedError;

  /// Serializes this Plan to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Plan
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PlanCopyWith<Plan> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PlanCopyWith<$Res> {
  factory $PlanCopyWith(Plan value, $Res Function(Plan) then) =
      _$PlanCopyWithImpl<$Res, Plan>;
  @useResult
  $Res call(
      {String id,
      String title,
      String description,
      String thumbnailUrl,
      List<String> topicIds,
      List<String>? tags,
      String authorId,
      int? ranking,
      bool isBookmarked,
      @DateTimeConverter() DateTime createdAt,
      @DateTimeConverter() DateTime? updatedAt});
}

/// @nodoc
class _$PlanCopyWithImpl<$Res, $Val extends Plan>
    implements $PlanCopyWith<$Res> {
  _$PlanCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Plan
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? description = null,
    Object? thumbnailUrl = null,
    Object? topicIds = null,
    Object? tags = freezed,
    Object? authorId = null,
    Object? ranking = freezed,
    Object? isBookmarked = null,
    Object? createdAt = null,
    Object? updatedAt = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      thumbnailUrl: null == thumbnailUrl
          ? _value.thumbnailUrl
          : thumbnailUrl // ignore: cast_nullable_to_non_nullable
              as String,
      topicIds: null == topicIds
          ? _value.topicIds
          : topicIds // ignore: cast_nullable_to_non_nullable
              as List<String>,
      tags: freezed == tags
          ? _value.tags
          : tags // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      authorId: null == authorId
          ? _value.authorId
          : authorId // ignore: cast_nullable_to_non_nullable
              as String,
      ranking: freezed == ranking
          ? _value.ranking
          : ranking // ignore: cast_nullable_to_non_nullable
              as int?,
      isBookmarked: null == isBookmarked
          ? _value.isBookmarked
          : isBookmarked // ignore: cast_nullable_to_non_nullable
              as bool,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PlanImplCopyWith<$Res> implements $PlanCopyWith<$Res> {
  factory _$$PlanImplCopyWith(
          _$PlanImpl value, $Res Function(_$PlanImpl) then) =
      __$$PlanImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String title,
      String description,
      String thumbnailUrl,
      List<String> topicIds,
      List<String>? tags,
      String authorId,
      int? ranking,
      bool isBookmarked,
      @DateTimeConverter() DateTime createdAt,
      @DateTimeConverter() DateTime? updatedAt});
}

/// @nodoc
class __$$PlanImplCopyWithImpl<$Res>
    extends _$PlanCopyWithImpl<$Res, _$PlanImpl>
    implements _$$PlanImplCopyWith<$Res> {
  __$$PlanImplCopyWithImpl(_$PlanImpl _value, $Res Function(_$PlanImpl) _then)
      : super(_value, _then);

  /// Create a copy of Plan
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? description = null,
    Object? thumbnailUrl = null,
    Object? topicIds = null,
    Object? tags = freezed,
    Object? authorId = null,
    Object? ranking = freezed,
    Object? isBookmarked = null,
    Object? createdAt = null,
    Object? updatedAt = freezed,
  }) {
    return _then(_$PlanImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      thumbnailUrl: null == thumbnailUrl
          ? _value.thumbnailUrl
          : thumbnailUrl // ignore: cast_nullable_to_non_nullable
              as String,
      topicIds: null == topicIds
          ? _value._topicIds
          : topicIds // ignore: cast_nullable_to_non_nullable
              as List<String>,
      tags: freezed == tags
          ? _value._tags
          : tags // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      authorId: null == authorId
          ? _value.authorId
          : authorId // ignore: cast_nullable_to_non_nullable
              as String,
      ranking: freezed == ranking
          ? _value.ranking
          : ranking // ignore: cast_nullable_to_non_nullable
              as int?,
      isBookmarked: null == isBookmarked
          ? _value.isBookmarked
          : isBookmarked // ignore: cast_nullable_to_non_nullable
              as bool,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PlanImpl implements _Plan {
  const _$PlanImpl(
      {required this.id,
      required this.title,
      required this.description,
      required this.thumbnailUrl,
      required final List<String> topicIds,
      final List<String>? tags,
      required this.authorId,
      this.ranking,
      this.isBookmarked = false,
      @DateTimeConverter() required this.createdAt,
      @DateTimeConverter() this.updatedAt})
      : _topicIds = topicIds,
        _tags = tags;

  factory _$PlanImpl.fromJson(Map<String, dynamic> json) =>
      _$$PlanImplFromJson(json);

  @override
  final String id;
  @override
  final String title;
  @override
  final String description;
  @override
  final String thumbnailUrl;
  final List<String> _topicIds;
  @override
  List<String> get topicIds {
    if (_topicIds is EqualUnmodifiableListView) return _topicIds;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_topicIds);
  }

  final List<String>? _tags;
  @override
  List<String>? get tags {
    final value = _tags;
    if (value == null) return null;
    if (_tags is EqualUnmodifiableListView) return _tags;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final String authorId;
  @override
  final int? ranking;
  @override
  @JsonKey()
  final bool isBookmarked;
  @override
  @DateTimeConverter()
  final DateTime createdAt;
  @override
  @DateTimeConverter()
  final DateTime? updatedAt;

  @override
  String toString() {
    return 'Plan(id: $id, title: $title, description: $description, thumbnailUrl: $thumbnailUrl, topicIds: $topicIds, tags: $tags, authorId: $authorId, ranking: $ranking, isBookmarked: $isBookmarked, createdAt: $createdAt, updatedAt: $updatedAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PlanImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.thumbnailUrl, thumbnailUrl) ||
                other.thumbnailUrl == thumbnailUrl) &&
            const DeepCollectionEquality().equals(other._topicIds, _topicIds) &&
            const DeepCollectionEquality().equals(other._tags, _tags) &&
            (identical(other.authorId, authorId) ||
                other.authorId == authorId) &&
            (identical(other.ranking, ranking) || other.ranking == ranking) &&
            (identical(other.isBookmarked, isBookmarked) ||
                other.isBookmarked == isBookmarked) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      title,
      description,
      thumbnailUrl,
      const DeepCollectionEquality().hash(_topicIds),
      const DeepCollectionEquality().hash(_tags),
      authorId,
      ranking,
      isBookmarked,
      createdAt,
      updatedAt);

  /// Create a copy of Plan
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PlanImplCopyWith<_$PlanImpl> get copyWith =>
      __$$PlanImplCopyWithImpl<_$PlanImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PlanImplToJson(
      this,
    );
  }
}

abstract class _Plan implements Plan {
  const factory _Plan(
      {required final String id,
      required final String title,
      required final String description,
      required final String thumbnailUrl,
      required final List<String> topicIds,
      final List<String>? tags,
      required final String authorId,
      final int? ranking,
      final bool isBookmarked,
      @DateTimeConverter() required final DateTime createdAt,
      @DateTimeConverter() final DateTime? updatedAt}) = _$PlanImpl;

  factory _Plan.fromJson(Map<String, dynamic> json) = _$PlanImpl.fromJson;

  @override
  String get id;
  @override
  String get title;
  @override
  String get description;
  @override
  String get thumbnailUrl;
  @override
  List<String> get topicIds;
  @override
  List<String>? get tags;
  @override
  String get authorId;
  @override
  int? get ranking;
  @override
  bool get isBookmarked;
  @override
  @DateTimeConverter()
  DateTime get createdAt;
  @override
  @DateTimeConverter()
  DateTime? get updatedAt;

  /// Create a copy of Plan
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PlanImplCopyWith<_$PlanImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
