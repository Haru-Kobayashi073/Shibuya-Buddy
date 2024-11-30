// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'email_verification_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$EmailVerificationState {
  bool get isEmailVerified => throw _privateConstructorUsedError;
  EmailVerificationButtonState get emailVerificationButtonState =>
      throw _privateConstructorUsedError;
  int get resendEmailVerificationCountdown =>
      throw _privateConstructorUsedError;

  /// Create a copy of EmailVerificationState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $EmailVerificationStateCopyWith<EmailVerificationState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EmailVerificationStateCopyWith<$Res> {
  factory $EmailVerificationStateCopyWith(EmailVerificationState value,
          $Res Function(EmailVerificationState) then) =
      _$EmailVerificationStateCopyWithImpl<$Res, EmailVerificationState>;
  @useResult
  $Res call(
      {bool isEmailVerified,
      EmailVerificationButtonState emailVerificationButtonState,
      int resendEmailVerificationCountdown});
}

/// @nodoc
class _$EmailVerificationStateCopyWithImpl<$Res,
        $Val extends EmailVerificationState>
    implements $EmailVerificationStateCopyWith<$Res> {
  _$EmailVerificationStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of EmailVerificationState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isEmailVerified = null,
    Object? emailVerificationButtonState = null,
    Object? resendEmailVerificationCountdown = null,
  }) {
    return _then(_value.copyWith(
      isEmailVerified: null == isEmailVerified
          ? _value.isEmailVerified
          : isEmailVerified // ignore: cast_nullable_to_non_nullable
              as bool,
      emailVerificationButtonState: null == emailVerificationButtonState
          ? _value.emailVerificationButtonState
          : emailVerificationButtonState // ignore: cast_nullable_to_non_nullable
              as EmailVerificationButtonState,
      resendEmailVerificationCountdown: null == resendEmailVerificationCountdown
          ? _value.resendEmailVerificationCountdown
          : resendEmailVerificationCountdown // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$EmailVerificationStateImplCopyWith<$Res>
    implements $EmailVerificationStateCopyWith<$Res> {
  factory _$$EmailVerificationStateImplCopyWith(
          _$EmailVerificationStateImpl value,
          $Res Function(_$EmailVerificationStateImpl) then) =
      __$$EmailVerificationStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool isEmailVerified,
      EmailVerificationButtonState emailVerificationButtonState,
      int resendEmailVerificationCountdown});
}

/// @nodoc
class __$$EmailVerificationStateImplCopyWithImpl<$Res>
    extends _$EmailVerificationStateCopyWithImpl<$Res,
        _$EmailVerificationStateImpl>
    implements _$$EmailVerificationStateImplCopyWith<$Res> {
  __$$EmailVerificationStateImplCopyWithImpl(
      _$EmailVerificationStateImpl _value,
      $Res Function(_$EmailVerificationStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of EmailVerificationState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isEmailVerified = null,
    Object? emailVerificationButtonState = null,
    Object? resendEmailVerificationCountdown = null,
  }) {
    return _then(_$EmailVerificationStateImpl(
      isEmailVerified: null == isEmailVerified
          ? _value.isEmailVerified
          : isEmailVerified // ignore: cast_nullable_to_non_nullable
              as bool,
      emailVerificationButtonState: null == emailVerificationButtonState
          ? _value.emailVerificationButtonState
          : emailVerificationButtonState // ignore: cast_nullable_to_non_nullable
              as EmailVerificationButtonState,
      resendEmailVerificationCountdown: null == resendEmailVerificationCountdown
          ? _value.resendEmailVerificationCountdown
          : resendEmailVerificationCountdown // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$EmailVerificationStateImpl implements _EmailVerificationState {
  const _$EmailVerificationStateImpl(
      {this.isEmailVerified = false,
      this.emailVerificationButtonState =
          EmailVerificationButtonState.initialize,
      this.resendEmailVerificationCountdown = 60});

  @override
  @JsonKey()
  final bool isEmailVerified;
  @override
  @JsonKey()
  final EmailVerificationButtonState emailVerificationButtonState;
  @override
  @JsonKey()
  final int resendEmailVerificationCountdown;

  @override
  String toString() {
    return 'EmailVerificationState(isEmailVerified: $isEmailVerified, emailVerificationButtonState: $emailVerificationButtonState, resendEmailVerificationCountdown: $resendEmailVerificationCountdown)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EmailVerificationStateImpl &&
            (identical(other.isEmailVerified, isEmailVerified) ||
                other.isEmailVerified == isEmailVerified) &&
            (identical(other.emailVerificationButtonState,
                    emailVerificationButtonState) ||
                other.emailVerificationButtonState ==
                    emailVerificationButtonState) &&
            (identical(other.resendEmailVerificationCountdown,
                    resendEmailVerificationCountdown) ||
                other.resendEmailVerificationCountdown ==
                    resendEmailVerificationCountdown));
  }

  @override
  int get hashCode => Object.hash(runtimeType, isEmailVerified,
      emailVerificationButtonState, resendEmailVerificationCountdown);

  /// Create a copy of EmailVerificationState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$EmailVerificationStateImplCopyWith<_$EmailVerificationStateImpl>
      get copyWith => __$$EmailVerificationStateImplCopyWithImpl<
          _$EmailVerificationStateImpl>(this, _$identity);
}

abstract class _EmailVerificationState implements EmailVerificationState {
  const factory _EmailVerificationState(
          {final bool isEmailVerified,
          final EmailVerificationButtonState emailVerificationButtonState,
          final int resendEmailVerificationCountdown}) =
      _$EmailVerificationStateImpl;

  @override
  bool get isEmailVerified;
  @override
  EmailVerificationButtonState get emailVerificationButtonState;
  @override
  int get resendEmailVerificationCountdown;

  /// Create a copy of EmailVerificationState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$EmailVerificationStateImplCopyWith<_$EmailVerificationStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}
