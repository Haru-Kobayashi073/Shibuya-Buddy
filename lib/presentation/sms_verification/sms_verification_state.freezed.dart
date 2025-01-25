// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'sms_verification_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$SmsVerificationState {
  bool get isSmsVerified => throw _privateConstructorUsedError;
  SmsVerificationButtonState get smsVerificationButtonState =>
      throw _privateConstructorUsedError;
  int get resendEmailVerificationCountdown =>
      throw _privateConstructorUsedError;
  String get phoneNumber => throw _privateConstructorUsedError;
  String get smsCode => throw _privateConstructorUsedError;
  String get verificationId => throw _privateConstructorUsedError;

  /// Create a copy of SmsVerificationState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SmsVerificationStateCopyWith<SmsVerificationState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SmsVerificationStateCopyWith<$Res> {
  factory $SmsVerificationStateCopyWith(SmsVerificationState value,
          $Res Function(SmsVerificationState) then) =
      _$SmsVerificationStateCopyWithImpl<$Res, SmsVerificationState>;
  @useResult
  $Res call(
      {bool isSmsVerified,
      SmsVerificationButtonState smsVerificationButtonState,
      int resendEmailVerificationCountdown,
      String phoneNumber,
      String smsCode,
      String verificationId});
}

/// @nodoc
class _$SmsVerificationStateCopyWithImpl<$Res,
        $Val extends SmsVerificationState>
    implements $SmsVerificationStateCopyWith<$Res> {
  _$SmsVerificationStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SmsVerificationState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isSmsVerified = null,
    Object? smsVerificationButtonState = null,
    Object? resendEmailVerificationCountdown = null,
    Object? phoneNumber = null,
    Object? smsCode = null,
    Object? verificationId = null,
  }) {
    return _then(_value.copyWith(
      isSmsVerified: null == isSmsVerified
          ? _value.isSmsVerified
          : isSmsVerified // ignore: cast_nullable_to_non_nullable
              as bool,
      smsVerificationButtonState: null == smsVerificationButtonState
          ? _value.smsVerificationButtonState
          : smsVerificationButtonState // ignore: cast_nullable_to_non_nullable
              as SmsVerificationButtonState,
      resendEmailVerificationCountdown: null == resendEmailVerificationCountdown
          ? _value.resendEmailVerificationCountdown
          : resendEmailVerificationCountdown // ignore: cast_nullable_to_non_nullable
              as int,
      phoneNumber: null == phoneNumber
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as String,
      smsCode: null == smsCode
          ? _value.smsCode
          : smsCode // ignore: cast_nullable_to_non_nullable
              as String,
      verificationId: null == verificationId
          ? _value.verificationId
          : verificationId // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SmsVerificationStateImplCopyWith<$Res>
    implements $SmsVerificationStateCopyWith<$Res> {
  factory _$$SmsVerificationStateImplCopyWith(_$SmsVerificationStateImpl value,
          $Res Function(_$SmsVerificationStateImpl) then) =
      __$$SmsVerificationStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool isSmsVerified,
      SmsVerificationButtonState smsVerificationButtonState,
      int resendEmailVerificationCountdown,
      String phoneNumber,
      String smsCode,
      String verificationId});
}

/// @nodoc
class __$$SmsVerificationStateImplCopyWithImpl<$Res>
    extends _$SmsVerificationStateCopyWithImpl<$Res, _$SmsVerificationStateImpl>
    implements _$$SmsVerificationStateImplCopyWith<$Res> {
  __$$SmsVerificationStateImplCopyWithImpl(_$SmsVerificationStateImpl _value,
      $Res Function(_$SmsVerificationStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of SmsVerificationState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isSmsVerified = null,
    Object? smsVerificationButtonState = null,
    Object? resendEmailVerificationCountdown = null,
    Object? phoneNumber = null,
    Object? smsCode = null,
    Object? verificationId = null,
  }) {
    return _then(_$SmsVerificationStateImpl(
      isSmsVerified: null == isSmsVerified
          ? _value.isSmsVerified
          : isSmsVerified // ignore: cast_nullable_to_non_nullable
              as bool,
      smsVerificationButtonState: null == smsVerificationButtonState
          ? _value.smsVerificationButtonState
          : smsVerificationButtonState // ignore: cast_nullable_to_non_nullable
              as SmsVerificationButtonState,
      resendEmailVerificationCountdown: null == resendEmailVerificationCountdown
          ? _value.resendEmailVerificationCountdown
          : resendEmailVerificationCountdown // ignore: cast_nullable_to_non_nullable
              as int,
      phoneNumber: null == phoneNumber
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as String,
      smsCode: null == smsCode
          ? _value.smsCode
          : smsCode // ignore: cast_nullable_to_non_nullable
              as String,
      verificationId: null == verificationId
          ? _value.verificationId
          : verificationId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$SmsVerificationStateImpl implements _SmsVerificationState {
  const _$SmsVerificationStateImpl(
      {this.isSmsVerified = false,
      this.smsVerificationButtonState = SmsVerificationButtonState.initialize,
      this.resendEmailVerificationCountdown = 60,
      this.phoneNumber = '',
      this.smsCode = '',
      this.verificationId = ''});

  @override
  @JsonKey()
  final bool isSmsVerified;
  @override
  @JsonKey()
  final SmsVerificationButtonState smsVerificationButtonState;
  @override
  @JsonKey()
  final int resendEmailVerificationCountdown;
  @override
  @JsonKey()
  final String phoneNumber;
  @override
  @JsonKey()
  final String smsCode;
  @override
  @JsonKey()
  final String verificationId;

  @override
  String toString() {
    return 'SmsVerificationState(isSmsVerified: $isSmsVerified, smsVerificationButtonState: $smsVerificationButtonState, resendEmailVerificationCountdown: $resendEmailVerificationCountdown, phoneNumber: $phoneNumber, smsCode: $smsCode, verificationId: $verificationId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SmsVerificationStateImpl &&
            (identical(other.isSmsVerified, isSmsVerified) ||
                other.isSmsVerified == isSmsVerified) &&
            (identical(other.smsVerificationButtonState,
                    smsVerificationButtonState) ||
                other.smsVerificationButtonState ==
                    smsVerificationButtonState) &&
            (identical(other.resendEmailVerificationCountdown,
                    resendEmailVerificationCountdown) ||
                other.resendEmailVerificationCountdown ==
                    resendEmailVerificationCountdown) &&
            (identical(other.phoneNumber, phoneNumber) ||
                other.phoneNumber == phoneNumber) &&
            (identical(other.smsCode, smsCode) || other.smsCode == smsCode) &&
            (identical(other.verificationId, verificationId) ||
                other.verificationId == verificationId));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      isSmsVerified,
      smsVerificationButtonState,
      resendEmailVerificationCountdown,
      phoneNumber,
      smsCode,
      verificationId);

  /// Create a copy of SmsVerificationState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SmsVerificationStateImplCopyWith<_$SmsVerificationStateImpl>
      get copyWith =>
          __$$SmsVerificationStateImplCopyWithImpl<_$SmsVerificationStateImpl>(
              this, _$identity);
}

abstract class _SmsVerificationState implements SmsVerificationState {
  const factory _SmsVerificationState(
      {final bool isSmsVerified,
      final SmsVerificationButtonState smsVerificationButtonState,
      final int resendEmailVerificationCountdown,
      final String phoneNumber,
      final String smsCode,
      final String verificationId}) = _$SmsVerificationStateImpl;

  @override
  bool get isSmsVerified;
  @override
  SmsVerificationButtonState get smsVerificationButtonState;
  @override
  int get resendEmailVerificationCountdown;
  @override
  String get phoneNumber;
  @override
  String get smsCode;
  @override
  String get verificationId;

  /// Create a copy of SmsVerificationState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SmsVerificationStateImplCopyWith<_$SmsVerificationStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}
