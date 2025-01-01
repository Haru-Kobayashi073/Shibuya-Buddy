// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'create_plan_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$CreatePlanState {
  String get location => throw _privateConstructorUsedError;
  String? get startDate => throw _privateConstructorUsedError;
  String? get endDate => throw _privateConstructorUsedError;
  String get numberOfPeople => throw _privateConstructorUsedError;
  List<String> get transports => throw _privateConstructorUsedError;
  List<String> get categories => throw _privateConstructorUsedError;
  List<Topic> get topics => throw _privateConstructorUsedError;

  /// Create a copy of CreatePlanState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CreatePlanStateCopyWith<CreatePlanState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CreatePlanStateCopyWith<$Res> {
  factory $CreatePlanStateCopyWith(
          CreatePlanState value, $Res Function(CreatePlanState) then) =
      _$CreatePlanStateCopyWithImpl<$Res, CreatePlanState>;
  @useResult
  $Res call(
      {String location,
      String? startDate,
      String? endDate,
      String numberOfPeople,
      List<String> transports,
      List<String> categories,
      List<Topic> topics});
}

/// @nodoc
class _$CreatePlanStateCopyWithImpl<$Res, $Val extends CreatePlanState>
    implements $CreatePlanStateCopyWith<$Res> {
  _$CreatePlanStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CreatePlanState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? location = null,
    Object? startDate = freezed,
    Object? endDate = freezed,
    Object? numberOfPeople = null,
    Object? transports = null,
    Object? categories = null,
    Object? topics = null,
  }) {
    return _then(_value.copyWith(
      location: null == location
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as String,
      startDate: freezed == startDate
          ? _value.startDate
          : startDate // ignore: cast_nullable_to_non_nullable
              as String?,
      endDate: freezed == endDate
          ? _value.endDate
          : endDate // ignore: cast_nullable_to_non_nullable
              as String?,
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
              as List<Topic>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CreatePlanStateImplCopyWith<$Res>
    implements $CreatePlanStateCopyWith<$Res> {
  factory _$$CreatePlanStateImplCopyWith(_$CreatePlanStateImpl value,
          $Res Function(_$CreatePlanStateImpl) then) =
      __$$CreatePlanStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String location,
      String? startDate,
      String? endDate,
      String numberOfPeople,
      List<String> transports,
      List<String> categories,
      List<Topic> topics});
}

/// @nodoc
class __$$CreatePlanStateImplCopyWithImpl<$Res>
    extends _$CreatePlanStateCopyWithImpl<$Res, _$CreatePlanStateImpl>
    implements _$$CreatePlanStateImplCopyWith<$Res> {
  __$$CreatePlanStateImplCopyWithImpl(
      _$CreatePlanStateImpl _value, $Res Function(_$CreatePlanStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of CreatePlanState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? location = null,
    Object? startDate = freezed,
    Object? endDate = freezed,
    Object? numberOfPeople = null,
    Object? transports = null,
    Object? categories = null,
    Object? topics = null,
  }) {
    return _then(_$CreatePlanStateImpl(
      location: null == location
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as String,
      startDate: freezed == startDate
          ? _value.startDate
          : startDate // ignore: cast_nullable_to_non_nullable
              as String?,
      endDate: freezed == endDate
          ? _value.endDate
          : endDate // ignore: cast_nullable_to_non_nullable
              as String?,
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
              as List<Topic>,
    ));
  }
}

/// @nodoc

class _$CreatePlanStateImpl extends _CreatePlanState {
  const _$CreatePlanStateImpl(
      {this.location = '渋谷',
      this.startDate,
      this.endDate,
      this.numberOfPeople = '',
      final List<String> transports = const [],
      final List<String> categories = const [],
      final List<Topic> topics = const []})
      : _transports = transports,
        _categories = categories,
        _topics = topics,
        super._();

  @override
  @JsonKey()
  final String location;
  @override
  final String? startDate;
  @override
  final String? endDate;
  @override
  @JsonKey()
  final String numberOfPeople;
  final List<String> _transports;
  @override
  @JsonKey()
  List<String> get transports {
    if (_transports is EqualUnmodifiableListView) return _transports;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_transports);
  }

  final List<String> _categories;
  @override
  @JsonKey()
  List<String> get categories {
    if (_categories is EqualUnmodifiableListView) return _categories;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_categories);
  }

  final List<Topic> _topics;
  @override
  @JsonKey()
  List<Topic> get topics {
    if (_topics is EqualUnmodifiableListView) return _topics;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_topics);
  }

  @override
  String toString() {
    return 'CreatePlanState(location: $location, startDate: $startDate, endDate: $endDate, numberOfPeople: $numberOfPeople, transports: $transports, categories: $categories, topics: $topics)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CreatePlanStateImpl &&
            (identical(other.location, location) ||
                other.location == location) &&
            (identical(other.startDate, startDate) ||
                other.startDate == startDate) &&
            (identical(other.endDate, endDate) || other.endDate == endDate) &&
            (identical(other.numberOfPeople, numberOfPeople) ||
                other.numberOfPeople == numberOfPeople) &&
            const DeepCollectionEquality()
                .equals(other._transports, _transports) &&
            const DeepCollectionEquality()
                .equals(other._categories, _categories) &&
            const DeepCollectionEquality().equals(other._topics, _topics));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      location,
      startDate,
      endDate,
      numberOfPeople,
      const DeepCollectionEquality().hash(_transports),
      const DeepCollectionEquality().hash(_categories),
      const DeepCollectionEquality().hash(_topics));

  /// Create a copy of CreatePlanState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CreatePlanStateImplCopyWith<_$CreatePlanStateImpl> get copyWith =>
      __$$CreatePlanStateImplCopyWithImpl<_$CreatePlanStateImpl>(
          this, _$identity);
}

abstract class _CreatePlanState extends CreatePlanState {
  const factory _CreatePlanState(
      {final String location,
      final String? startDate,
      final String? endDate,
      final String numberOfPeople,
      final List<String> transports,
      final List<String> categories,
      final List<Topic> topics}) = _$CreatePlanStateImpl;
  const _CreatePlanState._() : super._();

  @override
  String get location;
  @override
  String? get startDate;
  @override
  String? get endDate;
  @override
  String get numberOfPeople;
  @override
  List<String> get transports;
  @override
  List<String> get categories;
  @override
  List<Topic> get topics;

  /// Create a copy of CreatePlanState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CreatePlanStateImplCopyWith<_$CreatePlanStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
