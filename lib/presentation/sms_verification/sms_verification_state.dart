import 'package:freezed_annotation/freezed_annotation.dart';

part 'sms_verification_state.freezed.dart';

@freezed
abstract class SmsVerificationState with _$SmsVerificationState {
  const factory SmsVerificationState({
    @Default(false) bool isSmsVerified,
    @Default(SmsVerificationButtonState.initialize)
    SmsVerificationButtonState smsVerificationButtonState,
    @Default(60) int resendEmailVerificationCountdown,
    @Default('') String phoneNumber,
    @Default('') String smsCode,
    @Default('') String verificationId,
  }) = _SmsVerificationState;
}

enum SmsVerificationButtonState { initialize, resend, coolDown, verified }
