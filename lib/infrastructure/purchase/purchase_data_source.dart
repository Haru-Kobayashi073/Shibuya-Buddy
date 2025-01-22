import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../domain/entities/purchase_recipt.dart';
import '../../domain/entities/user.dart';
import '../../domain/repositories/purchase_repository.dart';
import '../../utils/providers/current_user/current_user.dart';
import '../firebase/cloud_firestore_provider.dart';

part 'purchase_data_source.g.dart';

@riverpod
class PurchaseDataSource extends _$PurchaseDataSource
    implements PurchaseRepository {
  FirebaseFirestore get firestore => ref.read(cloudFirestoreProvider);
  User get user => ref.watch(currentUserProvider);

  @override
  void build() {
    return;
  }

  @override
  Future<void> createPurchaseRecipt({
    required PurchaseRecipt purchaseRecipt,
  }) async {
    final billingGrade = purchaseRecipt.premiumPlanExpirationDate != null
        ? BillingGrade.premiumWithPeriod
        : BillingGrade.premiumWithUnlimited;
    await firestore.collection('users').doc(user.uid).set(
          user
              .copyWith(
                billingGrade: billingGrade,
                premiumPlanExpirationDate:
                    purchaseRecipt.premiumPlanExpirationDate,
              )
              .toJson(),
        );

    await firestore
        .collection('users')
        .doc(user.uid)
        .collection('purchase_recipts')
        .doc(user.uid)
        .set(purchaseRecipt.toJson());
  }

  @override
  Future<void> updatePurchaseInformation({
    required BillingGrade billingGrade,
    required DateTime updatedPremiumPlanExpirationDate,
  }) async {
    await firestore.collection('users').doc(user.uid).set(
          user
              .copyWith(
                billingGrade: billingGrade,
                premiumPlanExpirationDate: updatedPremiumPlanExpirationDate,
              )
              .toJson(),
        );

    await firestore
        .collection('users')
        .doc(user.uid)
        .collection('purchase_recipts')
        .doc(user.uid)
        .update({
      'premiumPlanExpirationDate': updatedPremiumPlanExpirationDate,
    });
  }
}
