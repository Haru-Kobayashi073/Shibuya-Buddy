import 'package:freezed_annotation/freezed_annotation.dart';

part 'sms_verification_state.freezed.dart';

@freezed
abstract class SmsVerificationState with _$SmsVerificationState {
  const factory SmsVerificationState({
    @Default('') String phoneNumber,
    @Default('') String verificationId,
    @Default('') String smsCode,
    @Default(SmsVerificationButtonState.idle)
    SmsVerificationButtonState buttonState,
  }) = _SmsVerificationState;

  factory SmsVerificationState.initial() => const SmsVerificationState();
}

enum SmsVerificationButtonState { idle, loading, success, error }
