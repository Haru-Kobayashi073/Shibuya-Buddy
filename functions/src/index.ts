import * as functions from "firebase-functions/v2";
const { onDocumentCreated, firestore } = require("firebase-functions/v2/firestore");
import * as scheduler from "firebase-functions/v2/scheduler";
import { QueryDocumentSnapshot, DocumentSnapshot } from "firebase-admin/firestore";


functions.setGlobalOptions({
    region: "asia-northeast1",
    timeoutSeconds: 1800
});

export const scheduledrankingplan = scheduler.onSchedule("0 0 * * 0", async () => {
    const plansRef = firestore.collection("plans");
    const popularPlansRef = firestore.collection("popular_plans");

    // popularPlansRefのドキュメントを削除
    const snapshot = await popularPlansRef.get();
    const deletePromises = snapshot.docs.map((doc: QueryDocumentSnapshot) =>
        popularPlansRef.doc(doc.id).delete()
    );
    await Promise.all(deletePromises);

    // plansRefから上位10件を取得し、popularPlansRefに設定
    try {
        const plansSnapshot = await plansRef
            .orderBy("bookmark_count", "desc")
            .limit(10)
            .get();

        const setPromises = plansSnapshot.docs.map((doc: QueryDocumentSnapshot, index: number) => {
            const data = doc.data();
            data.ranking = index + 1;
            return popularPlansRef.doc(doc.id).set(data);
        });
        await Promise.all(setPromises);
    } catch (error) {
        console.error("Error ranking plans: ", error);
    }
});

export const scheduledrankingtopic = scheduler.onSchedule("0 0 * * 0", async () => {
    const topicsRef = firestore.collection("topics");
    const popularTopicsRef = firestore.collection("popular_topics");

    // popularTopicsRefのドキュメントを削除
    const snapshot = await popularTopicsRef.get();
    const deletePromises = snapshot.docs.map((doc: QueryDocumentSnapshot) =>
        popularTopicsRef.doc(doc.id).delete()
    );
    await Promise.all(deletePromises);

    // topicsRefから上位10件を取得し、popularTopicsRefに設定
    try {
        const topicsSnapshot = await topicsRef
            .orderBy("total_count", "desc")
            .limit(10)
            .get();

        const setPromises = topicsSnapshot.docs.map((doc: QueryDocumentSnapshot, index: number) => {
            const data = doc.data();
            data.ranking = index + 1;
            return popularTopicsRef.doc(doc.id).set(data);
        });
        await Promise.all(setPromises);
    } catch (error) {
        console.error("Error ranking topics: ", error);
    }
});

export const setRankDownToStandardTask = onDocumentCreated("plans/{planId}", async (event: DocumentSnapshot) => {
    const planId = event.id;
    const planRef = firestore.collection("plans").doc(planId);

    const planSnapshot = await planRef.get();
    const planData = planSnapshot.data();

    if (planData.bookmark_count < 10) {
        await planRef.update({ ranking: null });
    }
}
);
