// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'plan_review.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

PlanReview _$PlanReviewFromJson(Map<String, dynamic> json) {
  return _PlanReview.fromJson(json);
}

/// @nodoc
mixin _$PlanReview {
  String get id => throw _privateConstructorUsedError;
  String get planId => throw _privateConstructorUsedError;
  String get authorId => throw _privateConstructorUsedError;
  int get reviewRating => throw _privateConstructorUsedError;
  String? get content => throw _privateConstructorUsedError;
  @DateTimeConverter()
  DateTime get createdAt => throw _privateConstructorUsedError;
  @DateTimeConverter()
  DateTime? get updatedAt => throw _privateConstructorUsedError;

  /// Serializes this PlanReview to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of PlanReview
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PlanReviewCopyWith<PlanReview> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PlanReviewCopyWith<$Res> {
  factory $PlanReviewCopyWith(
          PlanReview value, $Res Function(PlanReview) then) =
      _$PlanReviewCopyWithImpl<$Res, PlanReview>;
  @useResult
  $Res call(
      {String id,
      String planId,
      String authorId,
      int reviewRating,
      String? content,
      @DateTimeConverter() DateTime createdAt,
      @DateTimeConverter() DateTime? updatedAt});
}

/// @nodoc
class _$PlanReviewCopyWithImpl<$Res, $Val extends PlanReview>
    implements $PlanReviewCopyWith<$Res> {
  _$PlanReviewCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PlanReview
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? planId = null,
    Object? authorId = null,
    Object? reviewRating = null,
    Object? content = freezed,
    Object? createdAt = null,
    Object? updatedAt = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      planId: null == planId
          ? _value.planId
          : planId // ignore: cast_nullable_to_non_nullable
              as String,
      authorId: null == authorId
          ? _value.authorId
          : authorId // ignore: cast_nullable_to_non_nullable
              as String,
      reviewRating: null == reviewRating
          ? _value.reviewRating
          : reviewRating // ignore: cast_nullable_to_non_nullable
              as int,
      content: freezed == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String?,
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
abstract class _$$PlanReviewImplCopyWith<$Res>
    implements $PlanReviewCopyWith<$Res> {
  factory _$$PlanReviewImplCopyWith(
          _$PlanReviewImpl value, $Res Function(_$PlanReviewImpl) then) =
      __$$PlanReviewImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String planId,
      String authorId,
      int reviewRating,
      String? content,
      @DateTimeConverter() DateTime createdAt,
      @DateTimeConverter() DateTime? updatedAt});
}

/// @nodoc
class __$$PlanReviewImplCopyWithImpl<$Res>
    extends _$PlanReviewCopyWithImpl<$Res, _$PlanReviewImpl>
    implements _$$PlanReviewImplCopyWith<$Res> {
  __$$PlanReviewImplCopyWithImpl(
      _$PlanReviewImpl _value, $Res Function(_$PlanReviewImpl) _then)
      : super(_value, _then);

  /// Create a copy of PlanReview
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? planId = null,
    Object? authorId = null,
    Object? reviewRating = null,
    Object? content = freezed,
    Object? createdAt = null,
    Object? updatedAt = freezed,
  }) {
    return _then(_$PlanReviewImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      planId: null == planId
          ? _value.planId
          : planId // ignore: cast_nullable_to_non_nullable
              as String,
      authorId: null == authorId
          ? _value.authorId
          : authorId // ignore: cast_nullable_to_non_nullable
              as String,
      reviewRating: null == reviewRating
          ? _value.reviewRating
          : reviewRating // ignore: cast_nullable_to_non_nullable
              as int,
      content: freezed == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String?,
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

@JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
class _$PlanReviewImpl implements _PlanReview {
  const _$PlanReviewImpl(
      {required this.id,
      required this.planId,
      required this.authorId,
      required this.reviewRating,
      this.content,
      @DateTimeConverter() required this.createdAt,
      @DateTimeConverter() this.updatedAt});

  factory _$PlanReviewImpl.fromJson(Map<String, dynamic> json) =>
      _$$PlanReviewImplFromJson(json);

  @override
  final String id;
  @override
  final String planId;
  @override
  final String authorId;
  @override
  final int reviewRating;
  @override
  final String? content;
  @override
  @DateTimeConverter()
  final DateTime createdAt;
  @override
  @DateTimeConverter()
  final DateTime? updatedAt;

  @override
  String toString() {
    return 'PlanReview(id: $id, planId: $planId, authorId: $authorId, reviewRating: $reviewRating, content: $content, createdAt: $createdAt, updatedAt: $updatedAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PlanReviewImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.planId, planId) || other.planId == planId) &&
            (identical(other.authorId, authorId) ||
                other.authorId == authorId) &&
            (identical(other.reviewRating, reviewRating) ||
                other.reviewRating == reviewRating) &&
            (identical(other.content, content) || other.content == content) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, planId, authorId,
      reviewRating, content, createdAt, updatedAt);

  /// Create a copy of PlanReview
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PlanReviewImplCopyWith<_$PlanReviewImpl> get copyWith =>
      __$$PlanReviewImplCopyWithImpl<_$PlanReviewImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PlanReviewImplToJson(
      this,
    );
  }
}

abstract class _PlanReview implements PlanReview {
  const factory _PlanReview(
      {required final String id,
      required final String planId,
      required final String authorId,
      required final int reviewRating,
      final String? content,
      @DateTimeConverter() required final DateTime createdAt,
      @DateTimeConverter() final DateTime? updatedAt}) = _$PlanReviewImpl;

  factory _PlanReview.fromJson(Map<String, dynamic> json) =
      _$PlanReviewImpl.fromJson;

  @override
  String get id;
  @override
  String get planId;
  @override
  String get authorId;
  @override
  int get reviewRating;
  @override
  String? get content;
  @override
  @DateTimeConverter()
  DateTime get createdAt;
  @override
  @DateTimeConverter()
  DateTime? get updatedAt;

  /// Create a copy of PlanReview
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PlanReviewImplCopyWith<_$PlanReviewImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
