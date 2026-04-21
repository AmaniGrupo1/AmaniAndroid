package androidx.work.impl.utils;

import android.text.TextUtils;
import androidx.work.ExistingWorkPolicy;
import androidx.work.Logger;
import androidx.work.WorkInfo;
import androidx.work.WorkRequest;
import androidx.work.impl.Schedulers;
import androidx.work.impl.WorkContinuationImpl;
import androidx.work.impl.WorkDatabase;
import androidx.work.impl.WorkManagerImpl;
import androidx.work.impl.model.Dependency;
import androidx.work.impl.model.DependencyDao;
import androidx.work.impl.model.WorkName;
import androidx.work.impl.model.WorkSpec;
import androidx.work.impl.model.WorkSpecDao;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.Set;

/* JADX INFO: loaded from: classes21.dex */
public class EnqueueRunnable {
    private static final String TAG = Logger.tagWithPrefix("EnqueueRunnable");

    private EnqueueRunnable() {
    }

    public static void enqueue(WorkContinuationImpl workContinuation) {
        if (workContinuation.hasCycles()) {
            throw new IllegalStateException("WorkContinuation has cycles (" + workContinuation + ")");
        }
        boolean needsScheduling = addToDatabase(workContinuation);
        if (needsScheduling) {
            scheduleWorkInBackground(workContinuation);
        }
    }

    public static boolean addToDatabase(WorkContinuationImpl workContinuation) {
        WorkManagerImpl workManagerImpl = workContinuation.getWorkManagerImpl();
        WorkDatabase workDatabase = workManagerImpl.getWorkDatabase();
        workDatabase.beginTransaction();
        try {
            EnqueueUtilsKt.checkContentUriTriggerWorkerLimits(workDatabase, workManagerImpl.getConfiguration(), workContinuation);
            boolean needsScheduling = processContinuation(workContinuation);
            workDatabase.setTransactionSuccessful();
            return needsScheduling;
        } finally {
            workDatabase.endTransaction();
        }
    }

    public static void scheduleWorkInBackground(WorkContinuationImpl workContinuation) {
        WorkManagerImpl workManager = workContinuation.getWorkManagerImpl();
        Schedulers.schedule(workManager.getConfiguration(), workManager.getWorkDatabase(), workManager.getSchedulers());
    }

    private static boolean processContinuation(WorkContinuationImpl workContinuation) {
        boolean needsScheduling = false;
        List<WorkContinuationImpl> parents = workContinuation.getParents();
        if (parents != null) {
            for (WorkContinuationImpl parent : parents) {
                if (!parent.isEnqueued()) {
                    needsScheduling |= processContinuation(parent);
                } else {
                    Logger.get().warning(TAG, "Already enqueued work ids (" + TextUtils.join(", ", parent.getIds()) + ")");
                }
            }
        }
        return needsScheduling | enqueueContinuation(workContinuation);
    }

    private static boolean enqueueContinuation(WorkContinuationImpl workContinuation) {
        Set<String> prerequisiteIds = WorkContinuationImpl.prerequisitesFor(workContinuation);
        boolean needsScheduling = enqueueWorkWithPrerequisites(workContinuation.getWorkManagerImpl(), workContinuation.getWork(), (String[]) prerequisiteIds.toArray(new String[0]), workContinuation.getName(), workContinuation.getExistingWorkPolicy());
        workContinuation.markEnqueued();
        return needsScheduling;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:100:0x01b9  */
    /* JADX WARN: Type inference failed for: r14v18 */
    /* JADX WARN: Type inference failed for: r14v3 */
    /* JADX WARN: Type inference failed for: r14v4, types: [int] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private static boolean enqueueWorkWithPrerequisites(WorkManagerImpl workManagerImpl, List<? extends WorkRequest> list, String[] strArr, String str, ExistingWorkPolicy existingWorkPolicy) {
        boolean z;
        boolean z2;
        boolean z3;
        boolean z4;
        WorkDatabase workDatabase;
        boolean z5;
        Iterator<? extends WorkRequest> it;
        String[] strArr2;
        Iterator<? extends WorkRequest> it2;
        DependencyDao dependencyDao;
        String[] strArr3 = strArr;
        boolean z6 = false;
        long jCurrentTimeMillis = workManagerImpl.getConfiguration().getClock().currentTimeMillis();
        WorkDatabase workDatabase2 = workManagerImpl.getWorkDatabase();
        boolean z7 = strArr3 != null && strArr3.length > 0;
        boolean z8 = true;
        boolean z9 = false;
        boolean z10 = false;
        if (!z7) {
            z = false;
            z2 = true;
            z3 = false;
        } else {
            int length = strArr3.length;
            int i = 0;
            while (i < length) {
                String str2 = strArr3[i];
                WorkSpec workSpec = workDatabase2.workSpecDao().getWorkSpec(str2);
                if (workSpec == null) {
                    Logger.get().error(TAG, "Prerequisite " + str2 + " doesn't exist; not enqueuing");
                    return false;
                }
                boolean z11 = z6;
                WorkInfo.State state = workSpec.state;
                z8 &= state == WorkInfo.State.SUCCEEDED;
                if (state == WorkInfo.State.FAILED) {
                    z9 = true;
                } else if (state == WorkInfo.State.CANCELLED) {
                    z10 = true;
                }
                i++;
                z6 = z11;
            }
            z = z6;
            z2 = true;
            z3 = false;
        }
        boolean z12 = !TextUtils.isEmpty(str);
        if (!((!z12 || z7) ? z3 : z2)) {
            z4 = z12;
            workDatabase = workDatabase2;
        } else {
            List<WorkSpec.IdAndState> workSpecIdAndStatesForName = workDatabase2.workSpecDao().getWorkSpecIdAndStatesForName(str);
            if (workSpecIdAndStatesForName.isEmpty()) {
                z4 = z12;
                workDatabase = workDatabase2;
            } else {
                if (existingWorkPolicy == ExistingWorkPolicy.APPEND || existingWorkPolicy == ExistingWorkPolicy.APPEND_OR_REPLACE) {
                    z4 = z12;
                    workDatabase = workDatabase2;
                    DependencyDao dependencyDao2 = workDatabase.dependencyDao();
                    List arrayList = new ArrayList();
                    for (WorkSpec.IdAndState idAndState : workSpecIdAndStatesForName) {
                        if (dependencyDao2.hasDependents(idAndState.id)) {
                            dependencyDao = dependencyDao2;
                        } else {
                            dependencyDao = dependencyDao2;
                            boolean z13 = (idAndState.state == WorkInfo.State.SUCCEEDED ? z2 : z3) & z8;
                            if (idAndState.state == WorkInfo.State.FAILED) {
                                z9 = true;
                            } else if (idAndState.state == WorkInfo.State.CANCELLED) {
                                z10 = true;
                            }
                            arrayList.add(idAndState.id);
                            z8 = z13;
                        }
                        dependencyDao2 = dependencyDao;
                    }
                    if (existingWorkPolicy == ExistingWorkPolicy.APPEND_OR_REPLACE && (z10 || z9)) {
                        WorkSpecDao workSpecDao = workDatabase.workSpecDao();
                        Iterator<WorkSpec.IdAndState> it3 = workSpecDao.getWorkSpecIdAndStatesForName(str).iterator();
                        while (it3.hasNext()) {
                            workSpecDao.delete(it3.next().id);
                        }
                        arrayList = Collections.emptyList();
                        z9 = false;
                        z10 = false;
                    }
                    strArr3 = (String[]) arrayList.toArray(strArr3);
                    if (strArr3.length <= 0) {
                        z2 = z3;
                    }
                    z7 = z2;
                    z5 = z;
                    it = list.iterator();
                    while (it.hasNext()) {
                        WorkRequest next = it.next();
                        WorkSpec workSpec2 = next.getWorkSpec();
                        if (z7 && !z8) {
                            if (z9) {
                                workSpec2.state = WorkInfo.State.FAILED;
                            } else if (z10) {
                                workSpec2.state = WorkInfo.State.CANCELLED;
                            } else {
                                workSpec2.state = WorkInfo.State.BLOCKED;
                            }
                        } else {
                            workSpec2.lastEnqueueTime = jCurrentTimeMillis;
                        }
                        if (workSpec2.state == WorkInfo.State.ENQUEUED) {
                            z5 = true;
                        }
                        workDatabase.workSpecDao().insertWorkSpec(EnqueueUtilsKt.wrapWorkSpecIfNeeded(workManagerImpl.getSchedulers(), workSpec2));
                        if (!z7) {
                            strArr2 = strArr3;
                            it2 = it;
                        } else {
                            int length2 = strArr3.length;
                            for (?? r14 = z3; r14 < length2; r14++) {
                                workDatabase.dependencyDao().insertDependency(new Dependency(next.getStringId(), strArr3[r14]));
                                it = it;
                                strArr3 = strArr3;
                            }
                            strArr2 = strArr3;
                            it2 = it;
                        }
                        workDatabase.workTagDao().insertTags(next.getStringId(), next.getTags());
                        if (z4) {
                            workDatabase.workNameDao().insert(new WorkName(str, next.getStringId()));
                        }
                        it = it2;
                        strArr3 = strArr2;
                    }
                    return z5;
                }
                if (existingWorkPolicy != ExistingWorkPolicy.KEEP) {
                    z4 = z12;
                } else {
                    for (WorkSpec.IdAndState idAndState2 : workSpecIdAndStatesForName) {
                        boolean z14 = z12;
                        if (idAndState2.state == WorkInfo.State.ENQUEUED || idAndState2.state == WorkInfo.State.RUNNING) {
                            return z3;
                        }
                        z12 = z14;
                    }
                    z4 = z12;
                }
                CancelWorkRunnable.forNameInline(str, workManagerImpl);
                WorkSpecDao workSpecDao2 = workDatabase2.workSpecDao();
                Iterator<WorkSpec.IdAndState> it4 = workSpecIdAndStatesForName.iterator();
                while (it4.hasNext()) {
                    workSpecDao2.delete(it4.next().id);
                    workDatabase2 = workDatabase2;
                }
                workDatabase = workDatabase2;
                z5 = true;
                it = list.iterator();
                while (it.hasNext()) {
                }
                return z5;
            }
        }
        z5 = z;
        it = list.iterator();
        while (it.hasNext()) {
        }
        return z5;
    }
}
