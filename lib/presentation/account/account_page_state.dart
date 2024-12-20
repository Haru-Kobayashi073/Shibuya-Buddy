import 'package:freezed_annotation/freezed_annotation.dart';

part 'account_page_state.freezed.dart';

@freezed
class AccountPageState with _$AccountPageState {
  const factory AccountPageState({
    @Default(false) bool googleLinkage,
    @Default(false) bool appleLinkage,
  }) = _AccountPageState;
}
