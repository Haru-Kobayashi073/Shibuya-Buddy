import '../entities/purchase_recipt.dart';

abstract interface class PurchaseRepository {
  Future<void> createPurchaseRecipt({required PurchaseRecipt purchaseRecipt});
  Future<void> updatePurchaseInformation({
    required PurchaseRecipt purchaseRecipt,
  });
}
