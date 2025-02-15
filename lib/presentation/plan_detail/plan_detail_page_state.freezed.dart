// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'plan_detail_page_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$PlanDetailPageState {
  Plan get plan => throw _privateConstructorUsedError;
  List<Place> get places => throw _privateConstructorUsedError;
  bool get isBookmarked => throw _privateConstructorUsedError;
  bool get haveUsedPlan => throw _privateConstructorUsedError;

  /// Create a copy of PlanDetailPageState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PlanDetailPageStateCopyWith<PlanDetailPageState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PlanDetailPageStateCopyWith<$Res> {
  factory $PlanDetailPageStateCopyWith(
          PlanDetailPageState value, $Res Function(PlanDetailPageState) then) =
      _$PlanDetailPageStateCopyWithImpl<$Res, PlanDetailPageState>;
  @useResult
  $Res call(
      {Plan plan, List<Place> places, bool isBookmarked, bool haveUsedPlan});

  $PlanCopyWith<$Res> get plan;
}

/// @nodoc
class _$PlanDetailPageStateCopyWithImpl<$Res, $Val extends PlanDetailPageState>
    implements $PlanDetailPageStateCopyWith<$Res> {
  _$PlanDetailPageStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PlanDetailPageState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? plan = null,
    Object? places = null,
    Object? isBookmarked = null,
    Object? haveUsedPlan = null,
  }) {
    return _then(_value.copyWith(
      plan: null == plan
          ? _value.plan
          : plan // ignore: cast_nullable_to_non_nullable
              as Plan,
      places: null == places
          ? _value.places
          : places // ignore: cast_nullable_to_non_nullable
              as List<Place>,
      isBookmarked: null == isBookmarked
          ? _value.isBookmarked
          : isBookmarked // ignore: cast_nullable_to_non_nullable
              as bool,
      haveUsedPlan: null == haveUsedPlan
          ? _value.haveUsedPlan
          : haveUsedPlan // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }

  /// Create a copy of PlanDetailPageState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $PlanCopyWith<$Res> get plan {
    return $PlanCopyWith<$Res>(_value.plan, (value) {
      return _then(_value.copyWith(plan: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$PlanDetailPageStateImplCopyWith<$Res>
    implements $PlanDetailPageStateCopyWith<$Res> {
  factory _$$PlanDetailPageStateImplCopyWith(_$PlanDetailPageStateImpl value,
          $Res Function(_$PlanDetailPageStateImpl) then) =
      __$$PlanDetailPageStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {Plan plan, List<Place> places, bool isBookmarked, bool haveUsedPlan});

  @override
  $PlanCopyWith<$Res> get plan;
}

/// @nodoc
class __$$PlanDetailPageStateImplCopyWithImpl<$Res>
    extends _$PlanDetailPageStateCopyWithImpl<$Res, _$PlanDetailPageStateImpl>
    implements _$$PlanDetailPageStateImplCopyWith<$Res> {
  __$$PlanDetailPageStateImplCopyWithImpl(_$PlanDetailPageStateImpl _value,
      $Res Function(_$PlanDetailPageStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of PlanDetailPageState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? plan = null,
    Object? places = null,
    Object? isBookmarked = null,
    Object? haveUsedPlan = null,
  }) {
    return _then(_$PlanDetailPageStateImpl(
      plan: null == plan
          ? _value.plan
          : plan // ignore: cast_nullable_to_non_nullable
              as Plan,
      places: null == places
          ? _value._places
          : places // ignore: cast_nullable_to_non_nullable
              as List<Place>,
      isBookmarked: null == isBookmarked
          ? _value.isBookmarked
          : isBookmarked // ignore: cast_nullable_to_non_nullable
              as bool,
      haveUsedPlan: null == haveUsedPlan
          ? _value.haveUsedPlan
          : haveUsedPlan // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$PlanDetailPageStateImpl implements _PlanDetailPageState {
  const _$PlanDetailPageStateImpl(
      {required this.plan,
      required final List<Place> places,
      required this.isBookmarked,
      required this.haveUsedPlan})
      : _places = places;

  @override
  final Plan plan;
  final List<Place> _places;
  @override
  List<Place> get places {
    if (_places is EqualUnmodifiableListView) return _places;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_places);
  }

  @override
  final bool isBookmarked;
  @override
  final bool haveUsedPlan;

  @override
  String toString() {
    return 'PlanDetailPageState(plan: $plan, places: $places, isBookmarked: $isBookmarked, haveUsedPlan: $haveUsedPlan)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PlanDetailPageStateImpl &&
            (identical(other.plan, plan) || other.plan == plan) &&
            const DeepCollectionEquality().equals(other._places, _places) &&
            (identical(other.isBookmarked, isBookmarked) ||
                other.isBookmarked == isBookmarked) &&
            (identical(other.haveUsedPlan, haveUsedPlan) ||
                other.haveUsedPlan == haveUsedPlan));
  }

  @override
  int get hashCode => Object.hash(runtimeType, plan,
      const DeepCollectionEquality().hash(_places), isBookmarked, haveUsedPlan);

  /// Create a copy of PlanDetailPageState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PlanDetailPageStateImplCopyWith<_$PlanDetailPageStateImpl> get copyWith =>
      __$$PlanDetailPageStateImplCopyWithImpl<_$PlanDetailPageStateImpl>(
          this, _$identity);
}

abstract class _PlanDetailPageState implements PlanDetailPageState {
  const factory _PlanDetailPageState(
      {required final Plan plan,
      required final List<Place> places,
      required final bool isBookmarked,
      required final bool haveUsedPlan}) = _$PlanDetailPageStateImpl;

  @override
  Plan get plan;
  @override
  List<Place> get places;
  @override
  bool get isBookmarked;
  @override
  bool get haveUsedPlan;

  /// Create a copy of PlanDetailPageState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PlanDetailPageStateImplCopyWith<_$PlanDetailPageStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
