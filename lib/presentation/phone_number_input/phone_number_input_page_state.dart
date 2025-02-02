import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:intl_phone_field/countries.dart';

part 'phone_number_input_page_state.freezed.dart';

@freezed
class PhoneNumberInputPageState with _$PhoneNumberInputPageState {
  const factory PhoneNumberInputPageState({
    @Default('') String completePhoneNumber, // 現在入力されている電話番号
    @Default('') String countryCode,
    required Country country,
  }) = _PhoneNumberInputPageState;
}
