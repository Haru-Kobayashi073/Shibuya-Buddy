import 'dart:async';

import 'package:intl_phone_field/countries.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../i18n/strings.g.dart';
import '../../infrastructure/authentication/authentication_data_source.dart';
import '../../utils/providers/locale/locale_service.dart';
import '../../utils/providers/scaffold_messenger/scaffold_messenger.dart';
import '../components/loading_overlay.dart';
import 'phone_number_input_page_state.dart';

part 'phone_number_input_page_notifier.g.dart';

@riverpod
class PhoneNumberInputPageNotifier extends _$PhoneNumberInputPageNotifier {
  AuthenticationDataSource get authenticationDataSource =>
      ref.read(authenticationDataSourceProvider.notifier);
  ScaffoldMessenger get scaffoldMessenger =>
      ref.read(scaffoldMessengerProvider.notifier);
  AppLocale get appLocale => ref.watch(localeServiceProvider);

  @override
  PhoneNumberInputPageState build() {
    final countryCode = switch (appLocale) {
      AppLocale.ja => 'JP',
      AppLocale.en => 'US',
      AppLocale.zhHans => 'CN',
      AppLocale.zhHant => 'TW',
      AppLocale.ko => 'KR',
    };
    return PhoneNumberInputPageState(
      countryCode: countryCode,
      country: countries.firstWhere(
        (country) => country.code == countryCode,
      ),
    );
  }

  Future<void> sendSmsCode(
    void Function(String verificationId) onSuccess,
  ) async {
    final i18n = t.authentication.phoneNumberInputPage.scaffoldMessenger;
    if (state.completePhoneNumber.isEmpty) {
      // 電話番号が空の場合
      scaffoldMessenger.showExceptionSnackBar(
        i18n.empty,
      );
      return;
    }
    ref.read(isShowLoadingOverlayProvider.notifier).state = true;
    try {
      await authenticationDataSource.sendSmsCode(
        phoneNumber: state.completePhoneNumber,
        onCodeSent: (verificationId) async {
          // SMSコードの送信に成功した場合
          scaffoldMessenger.showSuccessSnackBar(
            i18n.success,
          );
          // 遷移処理をonSuccessで受け取る
          onSuccess(verificationId);
        },
        onError: (error) {
          // 電話番号が間違っている場合やサーバーエラーの場合
          scaffoldMessenger.showExceptionSnackBar(
            i18n.error,
          );
        },
      );
    } on Exception catch (error) {
      // その他の例外エラー
      scaffoldMessenger.showExceptionSnackBar(
        '${i18n.unexpectedError} $error',
      );
    } finally {
      ref.read(isShowLoadingOverlayProvider.notifier).state = false;
    }
  }

  void changeCountryCode(String countryCode) {
    state = state.copyWith(
      countryCode: countryCode,
    );
  }

  void setCompletePhoneNumber(String completePhoneNumber) {
    state = state.copyWith(
      completePhoneNumber: completePhoneNumber,
    );
  }

  void changeCountry(Country country) {
    state = state.copyWith(
      country: country,
    );
  }
}
