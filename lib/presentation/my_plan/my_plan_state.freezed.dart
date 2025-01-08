// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'my_plan_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$MyPlanState {
  List<Plan> get bookmarkPlanList => throw _privateConstructorUsedError;
  List<Plan> get createPlanList => throw _privateConstructorUsedError;

  /// Create a copy of MyPlanState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $MyPlanStateCopyWith<MyPlanState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MyPlanStateCopyWith<$Res> {
  factory $MyPlanStateCopyWith(
          MyPlanState value, $Res Function(MyPlanState) then) =
      _$MyPlanStateCopyWithImpl<$Res, MyPlanState>;
  @useResult
  $Res call({List<Plan> bookmarkPlanList, List<Plan> createPlanList});
}

/// @nodoc
class _$MyPlanStateCopyWithImpl<$Res, $Val extends MyPlanState>
    implements $MyPlanStateCopyWith<$Res> {
  _$MyPlanStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of MyPlanState
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
abstract class _$$MyPlanStateImplCopyWith<$Res>
    implements $MyPlanStateCopyWith<$Res> {
  factory _$$MyPlanStateImplCopyWith(
          _$MyPlanStateImpl value, $Res Function(_$MyPlanStateImpl) then) =
      __$$MyPlanStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<Plan> bookmarkPlanList, List<Plan> createPlanList});
}

/// @nodoc
class __$$MyPlanStateImplCopyWithImpl<$Res>
    extends _$MyPlanStateCopyWithImpl<$Res, _$MyPlanStateImpl>
    implements _$$MyPlanStateImplCopyWith<$Res> {
  __$$MyPlanStateImplCopyWithImpl(
      _$MyPlanStateImpl _value, $Res Function(_$MyPlanStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of MyPlanState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? bookmarkPlanList = null,
    Object? createPlanList = null,
  }) {
    return _then(_$MyPlanStateImpl(
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

class _$MyPlanStateImpl with DiagnosticableTreeMixin implements _MyPlanState {
  const _$MyPlanStateImpl(
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
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'MyPlanState(bookmarkPlanList: $bookmarkPlanList, createPlanList: $createPlanList)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'MyPlanState'))
      ..add(DiagnosticsProperty('bookmarkPlanList', bookmarkPlanList))
      ..add(DiagnosticsProperty('createPlanList', createPlanList));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MyPlanStateImpl &&
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

  /// Create a copy of MyPlanState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$MyPlanStateImplCopyWith<_$MyPlanStateImpl> get copyWith =>
      __$$MyPlanStateImplCopyWithImpl<_$MyPlanStateImpl>(this, _$identity);
}

abstract class _MyPlanState implements MyPlanState {
  const factory _MyPlanState(
      {final List<Plan> bookmarkPlanList,
      final List<Plan> createPlanList}) = _$MyPlanStateImpl;

  @override
  List<Plan> get bookmarkPlanList;
  @override
  List<Plan> get createPlanList;

  /// Create a copy of MyPlanState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$MyPlanStateImplCopyWith<_$MyPlanStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
