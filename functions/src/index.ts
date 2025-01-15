import * as functions from "firebase-functions";
import * as admin from "firebase-admin";
import * as scheduler from "firebase-functions/v2/scheduler";

admin.initializeApp();
const firestore = admin.firestore();

functions.setGlobalOptions({
    region: "asia-northeast1",
    timeoutSeconds: 1800
});

export const scheduledrankingplan = scheduler.onSchedule("0 0 * * 0", async () => {
    const plansRef = firestore.collection("plans");
    const popularPlansRef = firestore.collection("popular_plans");

    // popularPlansRefのドキュメントを削除
    const snapshot = await popularPlansRef.get();
    const deletePromises = snapshot.docs.map((doc) => popularPlansRef.doc(doc.id).delete());
    await Promise.all(deletePromises);

    // plansRefから上位10件を取得し、popularPlansRefに設定
    try {
        const plansSnapshot = await plansRef
            .orderBy("bookmark_count", "desc")
            .limit(10)
            .get();

        const setPromises = plansSnapshot.docs.map((doc) => {
            const data = doc.data();
            return popularPlansRef.doc(doc.id).set(data);
        });
        await Promise.all(setPromises);
    } catch (error) {
        console.error("Error ranking plans: ", error);
    }
});

export const scheduledRankingPlan = scheduler.onSchedule("every 168 hours", async () => {
    const plansRef = firestore.collection("plans");
    const popularPlansRef = firestore.collection("popular_plans");

    // popularPlansRefのドキュメントを削除
    const snapshot = await popularPlansRef.get();
    const deletePromises = snapshot.docs.map((doc) => popularPlansRef.doc(doc.id).delete());
    await Promise.all(deletePromises);

    // plansRefから上位10件を取得し、popularPlansRefに設定
    try {
        const plansSnapshot = await plansRef
            .orderBy("bookmarkCount", "desc")
            .limit(10)
            .get();

        const setPromises = plansSnapshot.docs.map((doc) => {
            const data = doc.data();
            return popularPlansRef.doc(doc.id).set(data);
        });
        await Promise.all(setPromises);
    } catch (error) {
        console.error("Error ranking plans: ", error);
    }
});
