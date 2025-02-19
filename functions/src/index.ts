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
    timeoutSeconds: 300,
    enforceAppCheck: true,
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

    // 無期限プレミアムは日付を持たないため、処理を終了
    if (!data.premiumPlanExpirationDate) {
        return;
    }
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

export const updateAllDocuments = scheduler.onSchedule("0 0 * * 0", async () => {
    try {
        const plansSnapshot = await firestore.collection('plans').get();
        const usersSnapshot = await firestore.collection('users').get();

        const batch = firestore.batch();
        
        plansSnapshot.docs.forEach((doc) => {
            const bookmarkedUserIds: Array<string> = [];
            usersSnapshot.docs.forEach((user) => {
                if (user.data().bookmarkedPlanIds.includes(doc.id)) {
                    bookmarkedUserIds.push(user.id);
                }
            });
            batch.update(doc.ref, {
                is_bookmarked: admin.firestore.FieldValue.delete(),
                bookmarkedUserIds: admin.firestore.FieldValue.delete(),
                bookmarkCount: admin.firestore.FieldValue.delete(),
                bookmarked_user_ids: bookmarkedUserIds,
                bookmark_count: bookmarkedUserIds.length,
            });
        });

        await batch.commit();
        console.log("Updated documents");
    } catch (error) {
        console.error("Error updating documents:", error);
    }
});

export const updatePlanAtEnterGeofence = functions.https.onCall(async (req: any, res: any) => {

    const userId = req.data.userId || req.auth?.uid;
    const planId = req.data.planId;
    console.log(userId);


    if (!userId) {
        console.error("User ID is required");
        return;
    }

    if (!planId) {
        console.error("Plan ID is required");
        return;
    }

    const planRef = firestore.collection("plans").doc(planId);

    try {
        const planSnapshot = await planRef.get();
        const plan = planSnapshot.data();
        if (!plan) {
            console.error("Plan not found");
            return;
        }

        if (!plan.used_user_ids) {
            plan.used_user_ids = [];
        }

        if (!plan.used_user_ids.includes(userId)) {
            plan.used_user_ids.push(userId);
            planRef.update(plan);
        }

        console.log("Updated plan");
        return;
    } catch (error) {
        console.error("Error updating plan: ", error);
        return;
    }
});
