import '../entities/purchase_recipt.dart';

// ignore: one_member_abstracts For alert suppression
abstract interface class PurchaseRepository {
  Future<void> createPurchaseRecipt({required PurchaseRecipt purchaseRecipt});
  Future<void> updatePurchaseInformation({
    required PurchaseRecipt purchaseRecipt,
  });
}
