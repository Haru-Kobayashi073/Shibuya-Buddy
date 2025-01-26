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
  String get verificationId => throw _privateConstructorUsedError; // 現在の認証ID
  String get phoneNumber => throw _privateConstructorUsedError; // 電話番号
  bool get isSmsVerified =>
      throw _privateConstructorUsedError; // SMS認証が成功したかどうか
  SmsVerificationButtonState get buttonState =>
      throw _privateConstructorUsedError; // ボタンの状態
  int get resendCooldown =>
      throw _privateConstructorUsedError; // 再送信のクールダウン残り時間
  String? get errorMessage => throw _privateConstructorUsedError;

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
      {String verificationId,
      String phoneNumber,
      bool isSmsVerified,
      SmsVerificationButtonState buttonState,
      int resendCooldown,
      String? errorMessage});
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
    Object? verificationId = null,
    Object? phoneNumber = null,
    Object? isSmsVerified = null,
    Object? buttonState = null,
    Object? resendCooldown = null,
    Object? errorMessage = freezed,
  }) {
    return _then(_value.copyWith(
      verificationId: null == verificationId
          ? _value.verificationId
          : verificationId // ignore: cast_nullable_to_non_nullable
              as String,
      phoneNumber: null == phoneNumber
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as String,
      isSmsVerified: null == isSmsVerified
          ? _value.isSmsVerified
          : isSmsVerified // ignore: cast_nullable_to_non_nullable
              as bool,
      buttonState: null == buttonState
          ? _value.buttonState
          : buttonState // ignore: cast_nullable_to_non_nullable
              as SmsVerificationButtonState,
      resendCooldown: null == resendCooldown
          ? _value.resendCooldown
          : resendCooldown // ignore: cast_nullable_to_non_nullable
              as int,
      errorMessage: freezed == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String?,
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
      {String verificationId,
      String phoneNumber,
      bool isSmsVerified,
      SmsVerificationButtonState buttonState,
      int resendCooldown,
      String? errorMessage});
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
    Object? verificationId = null,
    Object? phoneNumber = null,
    Object? isSmsVerified = null,
    Object? buttonState = null,
    Object? resendCooldown = null,
    Object? errorMessage = freezed,
  }) {
    return _then(_$SmsVerificationStateImpl(
      verificationId: null == verificationId
          ? _value.verificationId
          : verificationId // ignore: cast_nullable_to_non_nullable
              as String,
      phoneNumber: null == phoneNumber
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as String,
      isSmsVerified: null == isSmsVerified
          ? _value.isSmsVerified
          : isSmsVerified // ignore: cast_nullable_to_non_nullable
              as bool,
      buttonState: null == buttonState
          ? _value.buttonState
          : buttonState // ignore: cast_nullable_to_non_nullable
              as SmsVerificationButtonState,
      resendCooldown: null == resendCooldown
          ? _value.resendCooldown
          : resendCooldown // ignore: cast_nullable_to_non_nullable
              as int,
      errorMessage: freezed == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$SmsVerificationStateImpl implements _SmsVerificationState {
  const _$SmsVerificationStateImpl(
      {this.verificationId = '',
      this.phoneNumber = '',
      this.isSmsVerified = false,
      this.buttonState = SmsVerificationButtonState.initialize,
      this.resendCooldown = 60,
      this.errorMessage});

  @override
  @JsonKey()
  final String verificationId;
// 現在の認証ID
  @override
  @JsonKey()
  final String phoneNumber;
// 電話番号
  @override
  @JsonKey()
  final bool isSmsVerified;
// SMS認証が成功したかどうか
  @override
  @JsonKey()
  final SmsVerificationButtonState buttonState;
// ボタンの状態
  @override
  @JsonKey()
  final int resendCooldown;
// 再送信のクールダウン残り時間
  @override
  final String? errorMessage;

  @override
  String toString() {
    return 'SmsVerificationState(verificationId: $verificationId, phoneNumber: $phoneNumber, isSmsVerified: $isSmsVerified, buttonState: $buttonState, resendCooldown: $resendCooldown, errorMessage: $errorMessage)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SmsVerificationStateImpl &&
            (identical(other.verificationId, verificationId) ||
                other.verificationId == verificationId) &&
            (identical(other.phoneNumber, phoneNumber) ||
                other.phoneNumber == phoneNumber) &&
            (identical(other.isSmsVerified, isSmsVerified) ||
                other.isSmsVerified == isSmsVerified) &&
            (identical(other.buttonState, buttonState) ||
                other.buttonState == buttonState) &&
            (identical(other.resendCooldown, resendCooldown) ||
                other.resendCooldown == resendCooldown) &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage));
  }

  @override
  int get hashCode => Object.hash(runtimeType, verificationId, phoneNumber,
      isSmsVerified, buttonState, resendCooldown, errorMessage);

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
      {final String verificationId,
      final String phoneNumber,
      final bool isSmsVerified,
      final SmsVerificationButtonState buttonState,
      final int resendCooldown,
      final String? errorMessage}) = _$SmsVerificationStateImpl;

  @override
  String get verificationId; // 現在の認証ID
  @override
  String get phoneNumber; // 電話番号
  @override
  bool get isSmsVerified; // SMS認証が成功したかどうか
  @override
  SmsVerificationButtonState get buttonState; // ボタンの状態
  @override
  int get resendCooldown; // 再送信のクールダウン残り時間
  @override
  String? get errorMessage;

  /// Create a copy of SmsVerificationState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SmsVerificationStateImplCopyWith<_$SmsVerificationStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}
