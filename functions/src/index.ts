import * as functions from "firebase-functions/v2";
import { onDocumentCreated, onDocumentDeleted } from "firebase-functions/v2/firestore";
import * as scheduler from "firebase-functions/v2/scheduler";
import { CloudTasksClient } from '@google-cloud/tasks';
import { QueryDocumentSnapshot } from "firebase-admin/firestore";
import * as admin from "firebase-admin";

admin.initializeApp();
const firestore = admin.firestore();


functions.setGlobalOptions({
    region: "asia-northeast1",
    timeoutSeconds: 540,
});

const cloudTasksClient = new CloudTasksClient();

const googleCloudProjectId = 'shibuya-buddy';
const region = 'asia-northeast1';
const queue = 'premium-grade-queue';

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

export const createRankDownToStandardTask = onDocumentCreated("users/{userId}/purchase_recipts/{reciptId}", async (event: any) => {

    const data = event.data.data();
    // eventから日付を取得し、Unixタイムスタンプに変換
    console.log(data.premiumPlanExpirationDate);
    const executionDate = new Date(data.premiumPlanExpirationDate);
    const executionTimestamp = Math.floor(executionDate.getTime() / 1000);
    console.log(executionTimestamp);

    const url = `https://${region}-${googleCloudProjectId}.cloudfunctions.net/rankDownToStandard?user_id=${event.params.userId}`;

    const parent = cloudTasksClient.queuePath(googleCloudProjectId, region, queue);
    const task = {
        httpRequest: {
            headers: {
                'Content-Type': 'application/json',
            },
            httpMethod: 'POST' as const,
            url: url,
        },
        scheduleTime: {
            seconds: executionTimestamp,
        },
    };

    const request = { parent: parent, task: task };

    try {
        const [response] = await cloudTasksClient.createTask(request);
        console.log(`Created task ${response.name}`);
        const purchaseReciptRef = firestore.collection("users").doc(event.params.userId).collection("purchase_recipts").doc(event.params.reciptId);
        purchaseReciptRef.update({ rankDownToStandardTaskPath: response.name });
    } catch (error) {
        console.error("Error creating task: ", error);
    }
});

export const deleteRankDownToStandardTask = onDocumentDeleted("users/{userId}/purchase_recipts/{reciptId}", async (event: any) => {
    const data = event.data.data();
    if (data.rankDownToStandardTaskPath) {
        try {
            await cloudTasksClient.deleteTask({ name: data.rankDownToStandardTaskPath });
            console.log(`Deleted task ${data.rankDownToStandardTaskPath}`);
        } catch (error) {
            console.error("Error deleting task: ", error);
        }
    }
});

export const rankDownToStandard = functions.https.onRequest(async (req: any, res: any) => {
    const userId = req.query.user_id;

    if (!userId) {
        return res.status(400).send("User ID is required");
    }

    console.log(userId);
    const purchaseReciptRef = firestore.collection("users").doc(userId).collection("purchase_recipts").doc(userId);
    try {
        await purchaseReciptRef.delete();
        console.log("Deleted purchase recipt");
    } catch (error) {
        console.error("Error deleting purchase recipt: ", error);
        return res.status(500).send("Error deleting purchase recipt");
    }

    const userRef = firestore.collection("users").doc(userId);

    try {
        const userSnapshot = await userRef.get();
        const user = userSnapshot.data();
        if (!user) {
            return res.status(404).send("User not found");
        }
        user.billingGrade = "standard";
        user.premiumPlanExpirationDate = null;
        userRef.update(user);

        console.log("Updated user");
        return res.status(200).send("success");
    } catch (error) {
        console.error("Error updating user: ", error);
        return res.status(500).send("Error updating user");
    }
});