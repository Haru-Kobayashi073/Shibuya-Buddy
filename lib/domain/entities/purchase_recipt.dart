import 'package:freezed_annotation/freezed_annotation.dart';

import '../../utils/date_time_converter.dart';

part 'purchase_recipt.freezed.dart';
part 'purchase_recipt.g.dart';

@freezed
abstract class PurchaseRecipt with _$PurchaseRecipt {
  const factory PurchaseRecipt({
    required String id,
    required String userId,
    @DateTimeConverter() DateTime? premiumPlanExpirationDate,
  }) = _PurchaseRecipt;

  factory PurchaseRecipt.fromJson(Map<String, dynamic> json) =>
      _$PurchaseReciptFromJson(json);
}
