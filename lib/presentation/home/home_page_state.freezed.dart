// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'home_page_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$HomePageState {
  List<Plan> get popularPlans => throw _privateConstructorUsedError;
  List<Topic> get popularTopics => throw _privateConstructorUsedError;
  List<Plan>? get recentPlans => throw _privateConstructorUsedError;

  /// Create a copy of HomePageState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $HomePageStateCopyWith<HomePageState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomePageStateCopyWith<$Res> {
  factory $HomePageStateCopyWith(
          HomePageState value, $Res Function(HomePageState) then) =
      _$HomePageStateCopyWithImpl<$Res, HomePageState>;
  @useResult
  $Res call(
      {List<Plan> popularPlans,
      List<Topic> popularTopics,
      List<Plan>? recentPlans});
}

/// @nodoc
class _$HomePageStateCopyWithImpl<$Res, $Val extends HomePageState>
    implements $HomePageStateCopyWith<$Res> {
  _$HomePageStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of HomePageState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? popularPlans = null,
    Object? popularTopics = null,
    Object? recentPlans = freezed,
  }) {
    return _then(_value.copyWith(
      popularPlans: null == popularPlans
          ? _value.popularPlans
          : popularPlans // ignore: cast_nullable_to_non_nullable
              as List<Plan>,
      popularTopics: null == popularTopics
          ? _value.popularTopics
          : popularTopics // ignore: cast_nullable_to_non_nullable
              as List<Topic>,
      recentPlans: freezed == recentPlans
          ? _value.recentPlans
          : recentPlans // ignore: cast_nullable_to_non_nullable
              as List<Plan>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$HomePageStateImplCopyWith<$Res>
    implements $HomePageStateCopyWith<$Res> {
  factory _$$HomePageStateImplCopyWith(
          _$HomePageStateImpl value, $Res Function(_$HomePageStateImpl) then) =
      __$$HomePageStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<Plan> popularPlans,
      List<Topic> popularTopics,
      List<Plan>? recentPlans});
}

/// @nodoc
class __$$HomePageStateImplCopyWithImpl<$Res>
    extends _$HomePageStateCopyWithImpl<$Res, _$HomePageStateImpl>
    implements _$$HomePageStateImplCopyWith<$Res> {
  __$$HomePageStateImplCopyWithImpl(
      _$HomePageStateImpl _value, $Res Function(_$HomePageStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of HomePageState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? popularPlans = null,
    Object? popularTopics = null,
    Object? recentPlans = freezed,
  }) {
    return _then(_$HomePageStateImpl(
      popularPlans: null == popularPlans
          ? _value._popularPlans
          : popularPlans // ignore: cast_nullable_to_non_nullable
              as List<Plan>,
      popularTopics: null == popularTopics
          ? _value._popularTopics
          : popularTopics // ignore: cast_nullable_to_non_nullable
              as List<Topic>,
      recentPlans: freezed == recentPlans
          ? _value._recentPlans
          : recentPlans // ignore: cast_nullable_to_non_nullable
              as List<Plan>?,
    ));
  }
}

/// @nodoc

class _$HomePageStateImpl implements _HomePageState {
  const _$HomePageStateImpl(
      {required final List<Plan> popularPlans,
      required final List<Topic> popularTopics,
      final List<Plan>? recentPlans})
      : _popularPlans = popularPlans,
        _popularTopics = popularTopics,
        _recentPlans = recentPlans;

  final List<Plan> _popularPlans;
  @override
  List<Plan> get popularPlans {
    if (_popularPlans is EqualUnmodifiableListView) return _popularPlans;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_popularPlans);
  }

  final List<Topic> _popularTopics;
  @override
  List<Topic> get popularTopics {
    if (_popularTopics is EqualUnmodifiableListView) return _popularTopics;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_popularTopics);
  }

  final List<Plan>? _recentPlans;
  @override
  List<Plan>? get recentPlans {
    final value = _recentPlans;
    if (value == null) return null;
    if (_recentPlans is EqualUnmodifiableListView) return _recentPlans;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'HomePageState(popularPlans: $popularPlans, popularTopics: $popularTopics, recentPlans: $recentPlans)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HomePageStateImpl &&
            const DeepCollectionEquality()
                .equals(other._popularPlans, _popularPlans) &&
            const DeepCollectionEquality()
                .equals(other._popularTopics, _popularTopics) &&
            const DeepCollectionEquality()
                .equals(other._recentPlans, _recentPlans));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_popularPlans),
      const DeepCollectionEquality().hash(_popularTopics),
      const DeepCollectionEquality().hash(_recentPlans));

  /// Create a copy of HomePageState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$HomePageStateImplCopyWith<_$HomePageStateImpl> get copyWith =>
      __$$HomePageStateImplCopyWithImpl<_$HomePageStateImpl>(this, _$identity);
}

abstract class _HomePageState implements HomePageState {
  const factory _HomePageState(
      {required final List<Plan> popularPlans,
      required final List<Topic> popularTopics,
      final List<Plan>? recentPlans}) = _$HomePageStateImpl;

  @override
  List<Plan> get popularPlans;
  @override
  List<Topic> get popularTopics;
  @override
  List<Plan>? get recentPlans;

  /// Create a copy of HomePageState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$HomePageStateImplCopyWith<_$HomePageStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
