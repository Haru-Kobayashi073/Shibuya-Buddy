import * as functions from "firebase-functions";
import * as admin from "firebase-admin";

admin.initializeApp();
const firestore = admin.firestore();

export const rankingPlan = functions.https.onCall((_, __) => {
    const plansRef = firestore.collection("plans");
    const popularPlansRef = firestore.collection("popular_plans");

    popularPlansRef.get().then((snapshot) => {
        snapshot.docs.map((doc) => {
            popularPlansRef.doc(doc.id).delete();
        });
    });

    return plansRef
        .orderBy("bookmarkedUserIds", "desc")
        .limit(10)
        .get()
        .then((snapshot) => {
            snapshot.docs.map((doc) => {
                const data = doc.data();
                popularPlansRef.doc(doc.id).set(data);
            });
        })
        .catch((error) => {
            console.error("Error ranking plans: ", error);
        });
});
