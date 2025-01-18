import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:purchases_flutter/purchases_flutter.dart';

part 'in_app_purchase_service_state.freezed.dart';

@freezed
abstract class InAppPurchaseServiceState with _$InAppPurchaseServiceState {
  const factory InAppPurchaseServiceState({
    required bool isPremiumUser,
    required Offerings offerings,
  }) = _InAppPurchaseServiceState;
}
