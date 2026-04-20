package androidx.work.impl.utils;

import android.os.Build;
import androidx.work.Configuration;
import androidx.work.Constraints;
import androidx.work.Data;
import androidx.work.WorkRequest;
import androidx.work.impl.Scheduler;
import androidx.work.impl.WorkContinuationImpl;
import androidx.work.impl.WorkDatabase;
import androidx.work.impl.model.WorkSpec;
import androidx.work.impl.workers.ConstraintTrackingWorker;
import androidx.work.impl.workers.ConstraintTrackingWorkerKt;
import java.util.Collection;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: EnqueueUtils.kt */
/* JADX INFO: loaded from: classes21.dex */
@Metadata(d1 = {"\u00004\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0004\u001a \u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u0007H\u0000\u001a\u0010\u0010\b\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\tH\u0007\u001a\u0010\u0010\u000b\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\tH\u0000\u001a\u001e\u0010\f\u001a\u00020\t2\f\u0010\r\u001a\b\u0012\u0004\u0012\u00020\u000f0\u000e2\u0006\u0010\n\u001a\u00020\tH\u0000\"\u000e\u0010\u0010\u001a\u00020\u0011X\u0080T¢\u0006\u0002\n\u0000\"\u000e\u0010\u0012\u001a\u00020\u0011X\u0080T¢\u0006\u0002\n\u0000\"\u000e\u0010\u0013\u001a\u00020\u0011X\u0080T¢\u0006\u0002\n\u0000\"\u000e\u0010\u0014\u001a\u00020\u0011X\u0080T¢\u0006\u0002\n\u0000¨\u0006\u0015"}, d2 = {"checkContentUriTriggerWorkerLimits", "", "workDatabase", "Landroidx/work/impl/WorkDatabase;", "configuration", "Landroidx/work/Configuration;", "continuation", "Landroidx/work/impl/WorkContinuationImpl;", "tryDelegateRemoteListenableWorker", "Landroidx/work/impl/model/WorkSpec;", "workSpec", "tryDelegateConstrainedWorkSpec", "wrapWorkSpecIfNeeded", "schedulers", "", "Landroidx/work/impl/Scheduler;", "ARGUMENT_SERVICE_PACKAGE_NAME", "", "ARGUMENT_SERVICE_CLASS_NAME", "REMOTE_DELEGATING_LISTENABLE_WORKER_CLASS_NAME", "ARGUMENT_REMOTE_LISTENABLE_WORKER_NAME", "work-runtime_release"}, k = 2, mv = {2, 1, 0}, xi = 48)
public final class EnqueueUtilsKt {
    public static final String ARGUMENT_REMOTE_LISTENABLE_WORKER_NAME = "androidx.work.multiprocess.RemoteListenableDelegatingWorker.ARGUMENT_REMOTE_LISTENABLE_WORKER_NAME";
    public static final String ARGUMENT_SERVICE_CLASS_NAME = "androidx.work.impl.workers.RemoteListenableWorker.ARGUMENT_CLASS_NAME";
    public static final String ARGUMENT_SERVICE_PACKAGE_NAME = "androidx.work.impl.workers.RemoteListenableWorker.ARGUMENT_PACKAGE_NAME";
    public static final String REMOTE_DELEGATING_LISTENABLE_WORKER_CLASS_NAME = "androidx.work.multiprocess.RemoteListenableDelegatingWorker";

    public static final void checkContentUriTriggerWorkerLimits(WorkDatabase workDatabase, Configuration configuration, WorkContinuationImpl continuation) {
        int count$iv;
        Intrinsics.checkNotNullParameter(workDatabase, "workDatabase");
        Intrinsics.checkNotNullParameter(configuration, "configuration");
        Intrinsics.checkNotNullParameter(continuation, "continuation");
        List continuations = CollectionsKt.mutableListOf(continuation);
        int newCount = 0;
        while (!continuations.isEmpty()) {
            WorkContinuationImpl current = (WorkContinuationImpl) CollectionsKt.removeLast(continuations);
            Iterable work = current.getWork();
            Intrinsics.checkNotNullExpressionValue(work, "getWork(...)");
            Iterable $this$count$iv = work;
            if (($this$count$iv instanceof Collection) && ((Collection) $this$count$iv).isEmpty()) {
                count$iv = 0;
            } else {
                count$iv = 0;
                for (Object element$iv : $this$count$iv) {
                    WorkRequest it = (WorkRequest) element$iv;
                    if (it.getWorkSpec().constraints.hasContentUriTriggers() && (count$iv = count$iv + 1) < 0) {
                        CollectionsKt.throwCountOverflow();
                    }
                }
            }
            newCount += count$iv;
            List<WorkContinuationImpl> parents = current.getParents();
            if (parents != null) {
                continuations.addAll(parents);
            }
        }
        if (newCount == 0) {
            return;
        }
        int alreadyEnqueuedCount = workDatabase.workSpecDao().countNonFinishedContentUriTriggerWorkers();
        int limit = configuration.getContentUriTriggerWorkersLimit();
        if (alreadyEnqueuedCount + newCount > limit) {
            throw new IllegalArgumentException("Too many workers with contentUriTriggers are enqueued:\ncontentUriTrigger workers limit: " + limit + ";\nalready enqueued count: " + alreadyEnqueuedCount + ";\ncurrent enqueue operation count: " + newCount + ".\nTo address this issue you can: \n1. enqueue less workers or batch some of workers with content uri triggers together;\n2. increase limit via Configuration.Builder.setContentUriTriggerWorkersLimit;\nPlease beware that workers with content uri triggers immediately occupy slots in JobScheduler so no updates to content uris are missed.");
        }
    }

    public static final WorkSpec tryDelegateRemoteListenableWorker(WorkSpec workSpec) {
        Intrinsics.checkNotNullParameter(workSpec, "workSpec");
        Data this_$iv = workSpec.input;
        boolean hasDelegateWorker = this_$iv.hasKeyWithValueOfType(ARGUMENT_REMOTE_LISTENABLE_WORKER_NAME, String.class);
        Data this_$iv2 = workSpec.input;
        boolean zHasKeyWithValueOfType = this_$iv2.hasKeyWithValueOfType(ARGUMENT_SERVICE_PACKAGE_NAME, String.class);
        Data this_$iv3 = workSpec.input;
        boolean zHasKeyWithValueOfType2 = this_$iv3.hasKeyWithValueOfType(ARGUMENT_SERVICE_CLASS_NAME, String.class);
        if (!hasDelegateWorker && zHasKeyWithValueOfType && zHasKeyWithValueOfType2) {
            String workerClassName = workSpec.workerClassName;
            Data newInputData = new Data.Builder().putAll(workSpec.input).putString(ARGUMENT_REMOTE_LISTENABLE_WORKER_NAME, workerClassName).build();
            return WorkSpec.copy$default(workSpec, null, null, REMOTE_DELEGATING_LISTENABLE_WORKER_CLASS_NAME, null, newInputData, null, 0L, 0L, 0L, null, 0, null, 0L, 0L, 0L, 0L, false, null, 0, 0, 0L, 0, 0, null, null, 33554411, null);
        }
        return workSpec;
    }

    public static final WorkSpec tryDelegateConstrainedWorkSpec(WorkSpec workSpec) {
        Intrinsics.checkNotNullParameter(workSpec, "workSpec");
        Constraints constraints = workSpec.constraints;
        String workerClassName = workSpec.workerClassName;
        boolean isConstraintTrackingWorker = Intrinsics.areEqual(workerClassName, ConstraintTrackingWorker.class.getName());
        if (!isConstraintTrackingWorker && (constraints.getRequiresBatteryNotLow() || constraints.getRequiresStorageNotLow())) {
            Data newInputData = new Data.Builder().putAll(workSpec.input).putString(ConstraintTrackingWorkerKt.ARGUMENT_CLASS_NAME, workerClassName).build();
            String name = ConstraintTrackingWorker.class.getName();
            Intrinsics.checkNotNullExpressionValue(name, "getName(...)");
            return WorkSpec.copy$default(workSpec, null, null, name, null, newInputData, null, 0L, 0L, 0L, null, 0, null, 0L, 0L, 0L, 0L, false, null, 0, 0, 0L, 0, 0, null, null, 33554411, null);
        }
        return workSpec;
    }

    public static final WorkSpec wrapWorkSpecIfNeeded(List<? extends Scheduler> schedulers, WorkSpec workSpec) {
        Intrinsics.checkNotNullParameter(schedulers, "schedulers");
        Intrinsics.checkNotNullParameter(workSpec, "workSpec");
        WorkSpec delegated = tryDelegateRemoteListenableWorker(workSpec);
        return Build.VERSION.SDK_INT <= 25 ? tryDelegateConstrainedWorkSpec(delegated) : delegated;
    }
}
