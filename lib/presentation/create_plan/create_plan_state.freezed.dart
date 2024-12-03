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
  String get date => throw _privateConstructorUsedError;
  String get numberOfPeople => throw _privateConstructorUsedError;
  String get transport => throw _privateConstructorUsedError;
  String get category => throw _privateConstructorUsedError;
  List<String> get selectedTopics => throw _privateConstructorUsedError;

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
      String date,
      String numberOfPeople,
      String transport,
      String category,
      List<String> selectedTopics});
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
    Object? date = null,
    Object? numberOfPeople = null,
    Object? transport = null,
    Object? category = null,
    Object? selectedTopics = null,
  }) {
    return _then(_value.copyWith(
      location: null == location
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as String,
      date: null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as String,
      numberOfPeople: null == numberOfPeople
          ? _value.numberOfPeople
          : numberOfPeople // ignore: cast_nullable_to_non_nullable
              as String,
      transport: null == transport
          ? _value.transport
          : transport // ignore: cast_nullable_to_non_nullable
              as String,
      category: null == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as String,
      selectedTopics: null == selectedTopics
          ? _value.selectedTopics
          : selectedTopics // ignore: cast_nullable_to_non_nullable
              as List<String>,
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
      String date,
      String numberOfPeople,
      String transport,
      String category,
      List<String> selectedTopics});
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
    Object? date = null,
    Object? numberOfPeople = null,
    Object? transport = null,
    Object? category = null,
    Object? selectedTopics = null,
  }) {
    return _then(_$CreatePlanStateImpl(
      location: null == location
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as String,
      date: null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as String,
      numberOfPeople: null == numberOfPeople
          ? _value.numberOfPeople
          : numberOfPeople // ignore: cast_nullable_to_non_nullable
              as String,
      transport: null == transport
          ? _value.transport
          : transport // ignore: cast_nullable_to_non_nullable
              as String,
      category: null == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as String,
      selectedTopics: null == selectedTopics
          ? _value._selectedTopics
          : selectedTopics // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc

class _$CreatePlanStateImpl implements _CreatePlanState {
  const _$CreatePlanStateImpl(
      {this.location = '',
      this.date = '',
      this.numberOfPeople = '',
      this.transport = '',
      this.category = '',
      final List<String> selectedTopics = const []})
      : _selectedTopics = selectedTopics;

  @override
  @JsonKey()
  final String location;
  @override
  @JsonKey()
  final String date;
  @override
  @JsonKey()
  final String numberOfPeople;
  @override
  @JsonKey()
  final String transport;
  @override
  @JsonKey()
  final String category;
  final List<String> _selectedTopics;
  @override
  @JsonKey()
  List<String> get selectedTopics {
    if (_selectedTopics is EqualUnmodifiableListView) return _selectedTopics;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_selectedTopics);
  }

  @override
  String toString() {
    return 'CreatePlanState(location: $location, date: $date, numberOfPeople: $numberOfPeople, transport: $transport, category: $category, selectedTopics: $selectedTopics)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CreatePlanStateImpl &&
            (identical(other.location, location) ||
                other.location == location) &&
            (identical(other.date, date) || other.date == date) &&
            (identical(other.numberOfPeople, numberOfPeople) ||
                other.numberOfPeople == numberOfPeople) &&
            (identical(other.transport, transport) ||
                other.transport == transport) &&
            (identical(other.category, category) ||
                other.category == category) &&
            const DeepCollectionEquality()
                .equals(other._selectedTopics, _selectedTopics));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      location,
      date,
      numberOfPeople,
      transport,
      category,
      const DeepCollectionEquality().hash(_selectedTopics));

  /// Create a copy of CreatePlanState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CreatePlanStateImplCopyWith<_$CreatePlanStateImpl> get copyWith =>
      __$$CreatePlanStateImplCopyWithImpl<_$CreatePlanStateImpl>(
          this, _$identity);
}

abstract class _CreatePlanState implements CreatePlanState {
  const factory _CreatePlanState(
      {final String location,
      final String date,
      final String numberOfPeople,
      final String transport,
      final String category,
      final List<String> selectedTopics}) = _$CreatePlanStateImpl;

  @override
  String get location;
  @override
  String get date;
  @override
  String get numberOfPeople;
  @override
  String get transport;
  @override
  String get category;
  @override
  List<String> get selectedTopics;

  /// Create a copy of CreatePlanState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CreatePlanStateImplCopyWith<_$CreatePlanStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
