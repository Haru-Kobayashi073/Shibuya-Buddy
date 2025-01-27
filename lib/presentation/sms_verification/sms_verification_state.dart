import 'package:freezed_annotation/freezed_annotation.dart';

part 'sms_verification_state.freezed.dart';

enum SmsVerificationButtonState { initialize, resend, coolDown }

@freezed
class SmsVerificationState with _$SmsVerificationState {
  const factory SmsVerificationState({
    @Default('') String verificationId, // 現在の認証ID
    @Default('') String phoneNumber, // 電話番号
    @Default(false) bool isSmsVerified, // SMS認証が成功したかどうか
    @Default(SmsVerificationButtonState.initialize)
    SmsVerificationButtonState buttonState, // ボタンの状態
    @Default(60) int resendCooldown, // 再送信のクールダウン残り時間
    String? errorMessage, // エラーメッセージ（表示用）
  }) = _SmsVerificationState;
}
