// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'account_page_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$AccountPageState {
// Googleログイン状態を管理するプロパティ
  bool get isGoogleSignedIn => throw _privateConstructorUsedError;

  /// Create a copy of AccountPageState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AccountPageStateCopyWith<AccountPageState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AccountPageStateCopyWith<$Res> {
  factory $AccountPageStateCopyWith(
          AccountPageState value, $Res Function(AccountPageState) then) =
      _$AccountPageStateCopyWithImpl<$Res, AccountPageState>;
  @useResult
  $Res call({bool isGoogleSignedIn});
}

/// @nodoc
class _$AccountPageStateCopyWithImpl<$Res, $Val extends AccountPageState>
    implements $AccountPageStateCopyWith<$Res> {
  _$AccountPageStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AccountPageState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isGoogleSignedIn = null,
  }) {
    return _then(_value.copyWith(
      isGoogleSignedIn: null == isGoogleSignedIn
          ? _value.isGoogleSignedIn
          : isGoogleSignedIn // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AccountPageStateImplCopyWith<$Res>
    implements $AccountPageStateCopyWith<$Res> {
  factory _$$AccountPageStateImplCopyWith(_$AccountPageStateImpl value,
          $Res Function(_$AccountPageStateImpl) then) =
      __$$AccountPageStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool isGoogleSignedIn});
}

/// @nodoc
class __$$AccountPageStateImplCopyWithImpl<$Res>
    extends _$AccountPageStateCopyWithImpl<$Res, _$AccountPageStateImpl>
    implements _$$AccountPageStateImplCopyWith<$Res> {
  __$$AccountPageStateImplCopyWithImpl(_$AccountPageStateImpl _value,
      $Res Function(_$AccountPageStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of AccountPageState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isGoogleSignedIn = null,
  }) {
    return _then(_$AccountPageStateImpl(
      isGoogleSignedIn: null == isGoogleSignedIn
          ? _value.isGoogleSignedIn
          : isGoogleSignedIn // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$AccountPageStateImpl implements _AccountPageState {
  const _$AccountPageStateImpl({this.isGoogleSignedIn = false});

// Googleログイン状態を管理するプロパティ
  @override
  @JsonKey()
  final bool isGoogleSignedIn;

  @override
  String toString() {
    return 'AccountPageState(isGoogleSignedIn: $isGoogleSignedIn)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AccountPageStateImpl &&
            (identical(other.isGoogleSignedIn, isGoogleSignedIn) ||
                other.isGoogleSignedIn == isGoogleSignedIn));
  }

  @override
  int get hashCode => Object.hash(runtimeType, isGoogleSignedIn);

  /// Create a copy of AccountPageState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AccountPageStateImplCopyWith<_$AccountPageStateImpl> get copyWith =>
      __$$AccountPageStateImplCopyWithImpl<_$AccountPageStateImpl>(
          this, _$identity);
}

abstract class _AccountPageState implements AccountPageState {
  const factory _AccountPageState({final bool isGoogleSignedIn}) =
      _$AccountPageStateImpl;

// Googleログイン状態を管理するプロパティ
  @override
  bool get isGoogleSignedIn;

  /// Create a copy of AccountPageState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AccountPageStateImplCopyWith<_$AccountPageStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
