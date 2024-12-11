// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'plan_prompt.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

PlanPrompt _$PlanPromptFromJson(Map<String, dynamic> json) {
  return _PlanPrompt.fromJson(json);
}

/// @nodoc
mixin _$PlanPrompt {
  String get id => throw _privateConstructorUsedError;
  @DateTimeConverter()
  ({DateTime firstDate, DateTime lastDate}) get schedules =>
      throw _privateConstructorUsedError;
  int get numberOfPeople => throw _privateConstructorUsedError;
  String get transportation => throw _privateConstructorUsedError;
  Category get category => throw _privateConstructorUsedError;
  List<String> get topicIds => throw _privateConstructorUsedError;
  @DateTimeConverter()
  DateTime get createdAt => throw _privateConstructorUsedError;

  /// Serializes this PlanPrompt to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of PlanPrompt
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PlanPromptCopyWith<PlanPrompt> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PlanPromptCopyWith<$Res> {
  factory $PlanPromptCopyWith(
          PlanPrompt value, $Res Function(PlanPrompt) then) =
      _$PlanPromptCopyWithImpl<$Res, PlanPrompt>;
  @useResult
  $Res call(
      {String id,
      @DateTimeConverter() ({DateTime firstDate, DateTime lastDate}) schedules,
      int numberOfPeople,
      String transportation,
      Category category,
      List<String> topicIds,
      @DateTimeConverter() DateTime createdAt});
}

/// @nodoc
class _$PlanPromptCopyWithImpl<$Res, $Val extends PlanPrompt>
    implements $PlanPromptCopyWith<$Res> {
  _$PlanPromptCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PlanPrompt
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? schedules = null,
    Object? numberOfPeople = null,
    Object? transportation = null,
    Object? category = null,
    Object? topicIds = null,
    Object? createdAt = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      schedules: null == schedules
          ? _value.schedules
          : schedules // ignore: cast_nullable_to_non_nullable
              as ({DateTime firstDate, DateTime lastDate}),
      numberOfPeople: null == numberOfPeople
          ? _value.numberOfPeople
          : numberOfPeople // ignore: cast_nullable_to_non_nullable
              as int,
      transportation: null == transportation
          ? _value.transportation
          : transportation // ignore: cast_nullable_to_non_nullable
              as String,
      category: null == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as Category,
      topicIds: null == topicIds
          ? _value.topicIds
          : topicIds // ignore: cast_nullable_to_non_nullable
              as List<String>,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PlanPromptImplCopyWith<$Res>
    implements $PlanPromptCopyWith<$Res> {
  factory _$$PlanPromptImplCopyWith(
          _$PlanPromptImpl value, $Res Function(_$PlanPromptImpl) then) =
      __$$PlanPromptImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      @DateTimeConverter() ({DateTime firstDate, DateTime lastDate}) schedules,
      int numberOfPeople,
      String transportation,
      Category category,
      List<String> topicIds,
      @DateTimeConverter() DateTime createdAt});
}

/// @nodoc
class __$$PlanPromptImplCopyWithImpl<$Res>
    extends _$PlanPromptCopyWithImpl<$Res, _$PlanPromptImpl>
    implements _$$PlanPromptImplCopyWith<$Res> {
  __$$PlanPromptImplCopyWithImpl(
      _$PlanPromptImpl _value, $Res Function(_$PlanPromptImpl) _then)
      : super(_value, _then);

  /// Create a copy of PlanPrompt
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? schedules = null,
    Object? numberOfPeople = null,
    Object? transportation = null,
    Object? category = null,
    Object? topicIds = null,
    Object? createdAt = null,
  }) {
    return _then(_$PlanPromptImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      schedules: null == schedules
          ? _value.schedules
          : schedules // ignore: cast_nullable_to_non_nullable
              as ({DateTime firstDate, DateTime lastDate}),
      numberOfPeople: null == numberOfPeople
          ? _value.numberOfPeople
          : numberOfPeople // ignore: cast_nullable_to_non_nullable
              as int,
      transportation: null == transportation
          ? _value.transportation
          : transportation // ignore: cast_nullable_to_non_nullable
              as String,
      category: null == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as Category,
      topicIds: null == topicIds
          ? _value._topicIds
          : topicIds // ignore: cast_nullable_to_non_nullable
              as List<String>,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PlanPromptImpl implements _PlanPrompt {
  const _$PlanPromptImpl(
      {required this.id,
      @DateTimeConverter() required this.schedules,
      required this.numberOfPeople,
      required this.transportation,
      required this.category,
      required final List<String> topicIds,
      @DateTimeConverter() required this.createdAt})
      : _topicIds = topicIds;

  factory _$PlanPromptImpl.fromJson(Map<String, dynamic> json) =>
      _$$PlanPromptImplFromJson(json);

  @override
  final String id;
  @override
  @DateTimeConverter()
  final ({DateTime firstDate, DateTime lastDate}) schedules;
  @override
  final int numberOfPeople;
  @override
  final String transportation;
  @override
  final Category category;
  final List<String> _topicIds;
  @override
  List<String> get topicIds {
    if (_topicIds is EqualUnmodifiableListView) return _topicIds;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_topicIds);
  }

  @override
  @DateTimeConverter()
  final DateTime createdAt;

  @override
  String toString() {
    return 'PlanPrompt(id: $id, schedules: $schedules, numberOfPeople: $numberOfPeople, transportation: $transportation, category: $category, topicIds: $topicIds, createdAt: $createdAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PlanPromptImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.schedules, schedules) ||
                other.schedules == schedules) &&
            (identical(other.numberOfPeople, numberOfPeople) ||
                other.numberOfPeople == numberOfPeople) &&
            (identical(other.transportation, transportation) ||
                other.transportation == transportation) &&
            (identical(other.category, category) ||
                other.category == category) &&
            const DeepCollectionEquality().equals(other._topicIds, _topicIds) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      schedules,
      numberOfPeople,
      transportation,
      category,
      const DeepCollectionEquality().hash(_topicIds),
      createdAt);

  /// Create a copy of PlanPrompt
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PlanPromptImplCopyWith<_$PlanPromptImpl> get copyWith =>
      __$$PlanPromptImplCopyWithImpl<_$PlanPromptImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PlanPromptImplToJson(
      this,
    );
  }
}

abstract class _PlanPrompt implements PlanPrompt {
  const factory _PlanPrompt(
          {required final String id,
          @DateTimeConverter()
          required final ({DateTime firstDate, DateTime lastDate}) schedules,
          required final int numberOfPeople,
          required final String transportation,
          required final Category category,
          required final List<String> topicIds,
          @DateTimeConverter() required final DateTime createdAt}) =
      _$PlanPromptImpl;

  factory _PlanPrompt.fromJson(Map<String, dynamic> json) =
      _$PlanPromptImpl.fromJson;

  @override
  String get id;
  @override
  @DateTimeConverter()
  ({DateTime firstDate, DateTime lastDate}) get schedules;
  @override
  int get numberOfPeople;
  @override
  String get transportation;
  @override
  Category get category;
  @override
  List<String> get topicIds;
  @override
  @DateTimeConverter()
  DateTime get createdAt;

  /// Create a copy of PlanPrompt
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PlanPromptImplCopyWith<_$PlanPromptImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
