import 'package:freezed_annotation/freezed_annotation.dart';

part 'phone_number_input_state.freezed.dart';

@freezed
class PhoneNumberInputState with _$PhoneNumberInputState {
  const factory PhoneNumberInputState({
    @Default('') String phoneNumber, // 現在入力されている電話番号
    @Default(false) bool isLoading, // API呼び出し中かどうか
    String? errorMessage, // エラーメッセージ（表示用）
  }) = _PhoneNumberInputState;
}
