// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'my_plan_page_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$MyPlanPageState {
  List<Plan> get bookmarkPlanList => throw _privateConstructorUsedError;
  List<Plan> get createPlanList => throw _privateConstructorUsedError;

  /// Create a copy of MyPlanPageState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $MyPlanPageStateCopyWith<MyPlanPageState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MyPlanPageStateCopyWith<$Res> {
  factory $MyPlanPageStateCopyWith(
          MyPlanPageState value, $Res Function(MyPlanPageState) then) =
      _$MyPlanPageStateCopyWithImpl<$Res, MyPlanPageState>;
  @useResult
  $Res call({List<Plan> bookmarkPlanList, List<Plan> createPlanList});
}

/// @nodoc
class _$MyPlanPageStateCopyWithImpl<$Res, $Val extends MyPlanPageState>
    implements $MyPlanPageStateCopyWith<$Res> {
  _$MyPlanPageStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of MyPlanPageState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? bookmarkPlanList = null,
    Object? createPlanList = null,
  }) {
    return _then(_value.copyWith(
      bookmarkPlanList: null == bookmarkPlanList
          ? _value.bookmarkPlanList
          : bookmarkPlanList // ignore: cast_nullable_to_non_nullable
              as List<Plan>,
      createPlanList: null == createPlanList
          ? _value.createPlanList
          : createPlanList // ignore: cast_nullable_to_non_nullable
              as List<Plan>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$MyPlanPageStateImplCopyWith<$Res>
    implements $MyPlanPageStateCopyWith<$Res> {
  factory _$$MyPlanPageStateImplCopyWith(_$MyPlanPageStateImpl value,
          $Res Function(_$MyPlanPageStateImpl) then) =
      __$$MyPlanPageStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<Plan> bookmarkPlanList, List<Plan> createPlanList});
}

/// @nodoc
class __$$MyPlanPageStateImplCopyWithImpl<$Res>
    extends _$MyPlanPageStateCopyWithImpl<$Res, _$MyPlanPageStateImpl>
    implements _$$MyPlanPageStateImplCopyWith<$Res> {
  __$$MyPlanPageStateImplCopyWithImpl(
      _$MyPlanPageStateImpl _value, $Res Function(_$MyPlanPageStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of MyPlanPageState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? bookmarkPlanList = null,
    Object? createPlanList = null,
  }) {
    return _then(_$MyPlanPageStateImpl(
      bookmarkPlanList: null == bookmarkPlanList
          ? _value._bookmarkPlanList
          : bookmarkPlanList // ignore: cast_nullable_to_non_nullable
              as List<Plan>,
      createPlanList: null == createPlanList
          ? _value._createPlanList
          : createPlanList // ignore: cast_nullable_to_non_nullable
              as List<Plan>,
    ));
  }
}

/// @nodoc

class _$MyPlanPageStateImpl implements _MyPlanPageState {
  const _$MyPlanPageStateImpl(
      {final List<Plan> bookmarkPlanList = const [],
      final List<Plan> createPlanList = const []})
      : _bookmarkPlanList = bookmarkPlanList,
        _createPlanList = createPlanList;

  final List<Plan> _bookmarkPlanList;
  @override
  @JsonKey()
  List<Plan> get bookmarkPlanList {
    if (_bookmarkPlanList is EqualUnmodifiableListView)
      return _bookmarkPlanList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_bookmarkPlanList);
  }

  final List<Plan> _createPlanList;
  @override
  @JsonKey()
  List<Plan> get createPlanList {
    if (_createPlanList is EqualUnmodifiableListView) return _createPlanList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_createPlanList);
  }

  @override
  String toString() {
    return 'MyPlanPageState(bookmarkPlanList: $bookmarkPlanList, createPlanList: $createPlanList)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MyPlanPageStateImpl &&
            const DeepCollectionEquality()
                .equals(other._bookmarkPlanList, _bookmarkPlanList) &&
            const DeepCollectionEquality()
                .equals(other._createPlanList, _createPlanList));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_bookmarkPlanList),
      const DeepCollectionEquality().hash(_createPlanList));

  /// Create a copy of MyPlanPageState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$MyPlanPageStateImplCopyWith<_$MyPlanPageStateImpl> get copyWith =>
      __$$MyPlanPageStateImplCopyWithImpl<_$MyPlanPageStateImpl>(
          this, _$identity);
}

abstract class _MyPlanPageState implements MyPlanPageState {
  const factory _MyPlanPageState(
      {final List<Plan> bookmarkPlanList,
      final List<Plan> createPlanList}) = _$MyPlanPageStateImpl;

  @override
  List<Plan> get bookmarkPlanList;
  @override
  List<Plan> get createPlanList;

  /// Create a copy of MyPlanPageState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$MyPlanPageStateImplCopyWith<_$MyPlanPageStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
