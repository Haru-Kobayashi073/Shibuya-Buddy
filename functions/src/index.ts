import * as functions from "firebase-functions/v2";
const { onDocumentCreated, firestore } = require("firebase-functions/v2/firestore");
import * as scheduler from "firebase-functions/v2/scheduler";
import { CloudTasksClient } from '@google-cloud/tasks';
import { QueryDocumentSnapshot } from "firebase-admin/firestore";


functions.setGlobalOptions({
    region: "asia-northeast1",
    timeoutSeconds: 540,
});

const cloudTasksClient = new CloudTasksClient();

const googleCloudProjectId = 'shibuya-buddy';
const region = 'asia-northeast1';
const queue = 'premium-plan-queue';

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

export const setRankDownToStandardTask = onDocumentCreated("users/{userId}/purchse_recipt/{reciptId}", async (event: any) => {
    // eventから日付を取得し、Unixタイムスタンプに変換
    const executionDate = new Date(event.data.executionDate);
    const executionTimestamp = Math.floor(executionDate.getTime() / 1000);

    const url = `https://${region}-${googleCloudProjectId}.cloudfunctions.net/rankDownToStandard?user_id=${event.params.userId}`;

    const parent = cloudTasksClient.queuePath(googleCloudProjectId, region, queue);
    const task = {
        scheduleTime: {
            seconds: executionTimestamp,
        },
        httpRequest: {
            headers: {
                'Content-Type': 'application/json'
            },
            httpMethod: 'POST' as const,
            url,
        },
    };

    const request = { parent: parent, task: task };
    const [response] = await cloudTasksClient.createTask(request);
    console.log(`Created task ${response.name}`);
});

export const rankDownToStandard = functions.https.onRequest((req: any, res: any) => {
    const purchaseReciptRef = firestore.collection("users").doc(req.params.user_id).collection("purchase_recipt").doc(req.params.user_id);

    const purchaseReciptSnapshot = purchaseReciptRef.delete();

    if (!purchaseReciptSnapshot.exists) {
        return res.status(404).send("purchase recipt not found");
    }

    const userRef = firestore.collection("users").doc(req.params.user_id);
    const userSnapshot = userRef.get();

    if (!userSnapshot.exists) {
        return res.status(404).send("user not found");
    }

    const user = userSnapshot.data();
    user.billingGrade = "standard";
    userRef.premiumPlanExpirationDate = null;
    userRef.update(user);

    return res.status(200).send("success");
});
