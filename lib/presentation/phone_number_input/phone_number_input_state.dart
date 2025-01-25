import 'package:freezed_annotation/freezed_annotation.dart';

part 'phone_number_input_state.freezed.dart';

@freezed
abstract class PhoneNumberInputState with _$PhoneNumberInputState {
  const factory PhoneNumberInputState({
    @Default(false) bool isSmsVerified,
    @Default(SmsVerificationButtonState.initialize)
    SmsVerificationButtonState smsVerificationButtonState,
    @Default(60) int resendEmailVerificationCountdown,
    @Default('') String phoneNumber,
    @Default('') String smsCode,
    @Default('') String verificationId,
  }) = _PhoneNumberInputState;
}

enum SmsVerificationButtonState { initialize, resend, coolDown, verified }
