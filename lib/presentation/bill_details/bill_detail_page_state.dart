import 'package:freezed_annotation/freezed_annotation.dart';

part 'bill_detail_page_state.freezed.dart';

@freezed
abstract class BillDetailPageState with _$BillDetailPageState {
  const factory BillDetailPageState({
    required String selectedItemString,
    required Map<String, String> purchaseItemPrices,
  }) = _BillDetailPageState;
}
