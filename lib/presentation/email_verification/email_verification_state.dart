import 'package:freezed_annotation/freezed_annotation.dart';

part 'email_verification_state.freezed.dart';

@freezed
abstract class EmailVerificationState with _$EmailVerificationState {
  const factory EmailVerificationState({
    @Default(false) bool isEmailVerified,
    @Default(true) bool canResendEmailVerification,
    @Default(60) int resendEmailVerificationCountdown,
  }) = _EmailVerificationState;
}
