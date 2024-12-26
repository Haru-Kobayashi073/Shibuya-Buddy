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
  ({String firstDate, String lastDate}) get schedules =>
      throw _privateConstructorUsedError;
  String get numberOfPeople => throw _privateConstructorUsedError;
  List<String> get transports => throw _privateConstructorUsedError;
  List<String> get categories => throw _privateConstructorUsedError;
  List<String> get topics => throw _privateConstructorUsedError;
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
      @DateTimeConverter() ({String firstDate, String lastDate}) schedules,
      String numberOfPeople,
      List<String> transports,
      List<String> categories,
      List<String> topics,
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
    Object? transports = null,
    Object? categories = null,
    Object? topics = null,
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
              as ({String firstDate, String lastDate}),
      numberOfPeople: null == numberOfPeople
          ? _value.numberOfPeople
          : numberOfPeople // ignore: cast_nullable_to_non_nullable
              as String,
      transports: null == transports
          ? _value.transports
          : transports // ignore: cast_nullable_to_non_nullable
              as List<String>,
      categories: null == categories
          ? _value.categories
          : categories // ignore: cast_nullable_to_non_nullable
              as List<String>,
      topics: null == topics
          ? _value.topics
          : topics // ignore: cast_nullable_to_non_nullable
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
      @DateTimeConverter() ({String firstDate, String lastDate}) schedules,
      String numberOfPeople,
      List<String> transports,
      List<String> categories,
      List<String> topics,
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
    Object? transports = null,
    Object? categories = null,
    Object? topics = null,
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
              as ({String firstDate, String lastDate}),
      numberOfPeople: null == numberOfPeople
          ? _value.numberOfPeople
          : numberOfPeople // ignore: cast_nullable_to_non_nullable
              as String,
      transports: null == transports
          ? _value._transports
          : transports // ignore: cast_nullable_to_non_nullable
              as List<String>,
      categories: null == categories
          ? _value._categories
          : categories // ignore: cast_nullable_to_non_nullable
              as List<String>,
      topics: null == topics
          ? _value._topics
          : topics // ignore: cast_nullable_to_non_nullable
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
      required final List<String> transports,
      required final List<String> categories,
      required final List<String> topics,
      @DateTimeConverter() required this.createdAt})
      : _transports = transports,
        _categories = categories,
        _topics = topics;

  factory _$PlanPromptImpl.fromJson(Map<String, dynamic> json) =>
      _$$PlanPromptImplFromJson(json);

  @override
  final String id;
  @override
  @DateTimeConverter()
  final ({String firstDate, String lastDate}) schedules;
  @override
  final String numberOfPeople;
  final List<String> _transports;
  @override
  List<String> get transports {
    if (_transports is EqualUnmodifiableListView) return _transports;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_transports);
  }

  final List<String> _categories;
  @override
  List<String> get categories {
    if (_categories is EqualUnmodifiableListView) return _categories;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_categories);
  }

  final List<String> _topics;
  @override
  List<String> get topics {
    if (_topics is EqualUnmodifiableListView) return _topics;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_topics);
  }

  @override
  @DateTimeConverter()
  final DateTime createdAt;

  @override
  String toString() {
    return 'PlanPrompt(id: $id, schedules: $schedules, numberOfPeople: $numberOfPeople, transports: $transports, categories: $categories, topics: $topics, createdAt: $createdAt)';
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
            const DeepCollectionEquality()
                .equals(other._transports, _transports) &&
            const DeepCollectionEquality()
                .equals(other._categories, _categories) &&
            const DeepCollectionEquality().equals(other._topics, _topics) &&
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
      const DeepCollectionEquality().hash(_transports),
      const DeepCollectionEquality().hash(_categories),
      const DeepCollectionEquality().hash(_topics),
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
          required final ({String firstDate, String lastDate}) schedules,
          required final String numberOfPeople,
          required final List<String> transports,
          required final List<String> categories,
          required final List<String> topics,
          @DateTimeConverter() required final DateTime createdAt}) =
      _$PlanPromptImpl;

  factory _PlanPrompt.fromJson(Map<String, dynamic> json) =
      _$PlanPromptImpl.fromJson;

  @override
  String get id;
  @override
  @DateTimeConverter()
  ({String firstDate, String lastDate}) get schedules;
  @override
  String get numberOfPeople;
  @override
  List<String> get transports;
  @override
  List<String> get categories;
  @override
  List<String> get topics;
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
