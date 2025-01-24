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
  String get phoneNumber => throw _privateConstructorUsedError;
  String get verificationId => throw _privateConstructorUsedError;
  String get smsCode => throw _privateConstructorUsedError;
  SmsVerificationButtonState get buttonState =>
      throw _privateConstructorUsedError;

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
      {String phoneNumber,
      String verificationId,
      String smsCode,
      SmsVerificationButtonState buttonState});
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
    Object? phoneNumber = null,
    Object? verificationId = null,
    Object? smsCode = null,
    Object? buttonState = null,
  }) {
    return _then(_value.copyWith(
      phoneNumber: null == phoneNumber
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as String,
      verificationId: null == verificationId
          ? _value.verificationId
          : verificationId // ignore: cast_nullable_to_non_nullable
              as String,
      smsCode: null == smsCode
          ? _value.smsCode
          : smsCode // ignore: cast_nullable_to_non_nullable
              as String,
      buttonState: null == buttonState
          ? _value.buttonState
          : buttonState // ignore: cast_nullable_to_non_nullable
              as SmsVerificationButtonState,
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
      {String phoneNumber,
      String verificationId,
      String smsCode,
      SmsVerificationButtonState buttonState});
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
    Object? phoneNumber = null,
    Object? verificationId = null,
    Object? smsCode = null,
    Object? buttonState = null,
  }) {
    return _then(_$SmsVerificationStateImpl(
      phoneNumber: null == phoneNumber
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as String,
      verificationId: null == verificationId
          ? _value.verificationId
          : verificationId // ignore: cast_nullable_to_non_nullable
              as String,
      smsCode: null == smsCode
          ? _value.smsCode
          : smsCode // ignore: cast_nullable_to_non_nullable
              as String,
      buttonState: null == buttonState
          ? _value.buttonState
          : buttonState // ignore: cast_nullable_to_non_nullable
              as SmsVerificationButtonState,
    ));
  }
}

/// @nodoc

class _$SmsVerificationStateImpl implements _SmsVerificationState {
  const _$SmsVerificationStateImpl(
      {this.phoneNumber = '',
      this.verificationId = '',
      this.smsCode = '',
      this.buttonState = SmsVerificationButtonState.idle});

  @override
  @JsonKey()
  final String phoneNumber;
  @override
  @JsonKey()
  final String verificationId;
  @override
  @JsonKey()
  final String smsCode;
  @override
  @JsonKey()
  final SmsVerificationButtonState buttonState;

  @override
  String toString() {
    return 'SmsVerificationState(phoneNumber: $phoneNumber, verificationId: $verificationId, smsCode: $smsCode, buttonState: $buttonState)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SmsVerificationStateImpl &&
            (identical(other.phoneNumber, phoneNumber) ||
                other.phoneNumber == phoneNumber) &&
            (identical(other.verificationId, verificationId) ||
                other.verificationId == verificationId) &&
            (identical(other.smsCode, smsCode) || other.smsCode == smsCode) &&
            (identical(other.buttonState, buttonState) ||
                other.buttonState == buttonState));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, phoneNumber, verificationId, smsCode, buttonState);

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
          {final String phoneNumber,
          final String verificationId,
          final String smsCode,
          final SmsVerificationButtonState buttonState}) =
      _$SmsVerificationStateImpl;

  @override
  String get phoneNumber;
  @override
  String get verificationId;
  @override
  String get smsCode;
  @override
  SmsVerificationButtonState get buttonState;

  /// Create a copy of SmsVerificationState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SmsVerificationStateImplCopyWith<_$SmsVerificationStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}
