package androidx.work.impl;

import androidx.autofill.HintConstants;
import androidx.work.Configuration;
import androidx.work.ExistingWorkPolicy;
import androidx.work.ListenableFutureKt;
import androidx.work.Operation;
import androidx.work.OperationKt;
import androidx.work.Tracer;
import androidx.work.WorkInfo;
import androidx.work.WorkManager;
import androidx.work.WorkRequest;
import androidx.work.impl.model.WorkSpec;
import androidx.work.impl.model.WorkSpecDao;
import androidx.work.impl.model.WorkTagDao;
import androidx.work.impl.utils.EnqueueRunnable;
import androidx.work.impl.utils.EnqueueUtilsKt;
import androidx.work.impl.utils.taskexecutor.SerialExecutor;
import com.google.common.util.concurrent.ListenableFuture;
import java.util.List;
import java.util.Set;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: WorkerUpdater.kt */
/* JADX INFO: loaded from: classes21.dex */
@Metadata(d1 = {"\u0000J\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\"\n\u0002\u0010\u000e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\u001aD\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u00072\f\u0010\b\u001a\b\u0012\u0004\u0012\u00020\n0\t2\u0006\u0010\u000b\u001a\u00020\f2\f\u0010\r\u001a\b\u0012\u0004\u0012\u00020\u000f0\u000eH\u0002\u001a\u001a\u0010\u0000\u001a\b\u0012\u0004\u0012\u00020\u00010\u0010*\u00020\u00112\u0006\u0010\u0012\u001a\u00020\u0013H\u0000\u001a\u001c\u0010\u0014\u001a\u00020\u0015*\u00020\u00112\u0006\u0010\u0016\u001a\u00020\u000f2\u0006\u0010\u0012\u001a\u00020\u0013H\u0007¨\u0006\u0017"}, d2 = {"updateWorkImpl", "Landroidx/work/WorkManager$UpdateResult;", "processor", "Landroidx/work/impl/Processor;", "workDatabase", "Landroidx/work/impl/WorkDatabase;", "configuration", "Landroidx/work/Configuration;", "schedulers", "", "Landroidx/work/impl/Scheduler;", "newWorkSpec", "Landroidx/work/impl/model/WorkSpec;", "tags", "", "", "Lcom/google/common/util/concurrent/ListenableFuture;", "Landroidx/work/impl/WorkManagerImpl;", "workRequest", "Landroidx/work/WorkRequest;", "enqueueUniquelyNamedPeriodic", "Landroidx/work/Operation;", HintConstants.AUTOFILL_HINT_NAME, "work-runtime_release"}, k = 2, mv = {2, 1, 0}, xi = 48)
public final class WorkerUpdater {
    private static final WorkManager.UpdateResult updateWorkImpl(Processor processor, final WorkDatabase workDatabase, Configuration configuration, final List<? extends Scheduler> list, final WorkSpec newWorkSpec, final Set<String> set) {
        final String workSpecId = newWorkSpec.id;
        final WorkSpec oldWorkSpec = workDatabase.workSpecDao().getWorkSpec(workSpecId);
        if (oldWorkSpec == null) {
            throw new IllegalArgumentException("Worker with " + workSpecId + " doesn't exist");
        }
        if (oldWorkSpec.state.isFinished()) {
            return WorkManager.UpdateResult.NOT_APPLIED;
        }
        if (oldWorkSpec.isPeriodic() ^ newWorkSpec.isPeriodic()) {
            Function1 type = new Function1() { // from class: androidx.work.impl.WorkerUpdater$$ExternalSyntheticLambda0
                @Override // kotlin.jvm.functions.Function1
                public final Object invoke(Object obj) {
                    return WorkerUpdater.updateWorkImpl$lambda$0((WorkSpec) obj);
                }
            };
            throw new UnsupportedOperationException("Can't update " + ((String) type.invoke(oldWorkSpec)) + " Worker to " + ((String) type.invoke(newWorkSpec)) + " Worker. Update operation must preserve worker's type.");
        }
        final boolean isEnqueued = processor.isEnqueued(workSpecId);
        if (!isEnqueued) {
            List<? extends Scheduler> $this$forEach$iv = list;
            for (Object element$iv : $this$forEach$iv) {
                Scheduler scheduler = (Scheduler) element$iv;
                scheduler.cancel(workSpecId);
            }
        }
        workDatabase.runInTransaction(new Runnable() { // from class: androidx.work.impl.WorkerUpdater$$ExternalSyntheticLambda1
            @Override // java.lang.Runnable
            public final void run() {
                WorkerUpdater.updateWorkImpl$lambda$3(workDatabase, oldWorkSpec, newWorkSpec, list, workSpecId, set, isEnqueued);
            }
        });
        if (!isEnqueued) {
            Schedulers.schedule(configuration, workDatabase, list);
        }
        return isEnqueued ? WorkManager.UpdateResult.APPLIED_FOR_NEXT_RUN : WorkManager.UpdateResult.APPLIED_IMMEDIATELY;
    }

    static final String updateWorkImpl$lambda$0(WorkSpec spec) {
        Intrinsics.checkNotNullParameter(spec, "spec");
        return spec.isPeriodic() ? "Periodic" : "OneTime";
    }

    static final void updateWorkImpl$lambda$3(WorkDatabase $workDatabase, WorkSpec $oldWorkSpec, WorkSpec $newWorkSpec, List $schedulers, String $workSpecId, Set $tags, boolean $isEnqueued) {
        WorkSpecDao workSpecDao = $workDatabase.workSpecDao();
        WorkTagDao workTagDao = $workDatabase.workTagDao();
        WorkSpec updatedSpec = WorkSpec.copy$default($newWorkSpec, null, $oldWorkSpec.state, null, null, null, null, 0L, 0L, 0L, null, $oldWorkSpec.runAttemptCount, null, 0L, $oldWorkSpec.lastEnqueueTime, 0L, 0L, false, null, $oldWorkSpec.getPeriodCount(), $oldWorkSpec.getGeneration() + 1, $oldWorkSpec.getNextScheduleTimeOverride(), $oldWorkSpec.getNextScheduleTimeOverrideGeneration(), 0, null, null, 29613053, null);
        if ($newWorkSpec.getNextScheduleTimeOverrideGeneration() == 1) {
            updatedSpec.setNextScheduleTimeOverride($newWorkSpec.getNextScheduleTimeOverride());
            updatedSpec.setNextScheduleTimeOverrideGeneration(updatedSpec.getNextScheduleTimeOverrideGeneration() + 1);
        }
        workSpecDao.updateWorkSpec(EnqueueUtilsKt.wrapWorkSpecIfNeeded($schedulers, updatedSpec));
        workTagDao.deleteByWorkSpecId($workSpecId);
        workTagDao.insertTags($workSpecId, $tags);
        if ($isEnqueued) {
            return;
        }
        workSpecDao.markWorkSpecScheduled($workSpecId, -1L);
        $workDatabase.workProgressDao().delete($workSpecId);
    }

    public static final ListenableFuture<WorkManager.UpdateResult> updateWorkImpl(final WorkManagerImpl $this$updateWorkImpl, final WorkRequest workRequest) {
        Intrinsics.checkNotNullParameter($this$updateWorkImpl, "<this>");
        Intrinsics.checkNotNullParameter(workRequest, "workRequest");
        SerialExecutor serialTaskExecutor = $this$updateWorkImpl.getWorkTaskExecutor().getSerialTaskExecutor();
        Intrinsics.checkNotNullExpressionValue(serialTaskExecutor, "getSerialTaskExecutor(...)");
        return ListenableFutureKt.executeAsync(serialTaskExecutor, "updateWorkImpl", new Function0() { // from class: androidx.work.impl.WorkerUpdater$$ExternalSyntheticLambda3
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return WorkerUpdater.updateWorkImpl$lambda$4($this$updateWorkImpl, workRequest);
            }
        });
    }

    static final WorkManager.UpdateResult updateWorkImpl$lambda$4(WorkManagerImpl $this_updateWorkImpl, WorkRequest $workRequest) {
        Processor processor = $this_updateWorkImpl.getProcessor();
        Intrinsics.checkNotNullExpressionValue(processor, "getProcessor(...)");
        WorkDatabase workDatabase = $this_updateWorkImpl.getWorkDatabase();
        Intrinsics.checkNotNullExpressionValue(workDatabase, "getWorkDatabase(...)");
        Configuration configuration = $this_updateWorkImpl.getConfiguration();
        Intrinsics.checkNotNullExpressionValue(configuration, "<get-configuration>(...)");
        List<Scheduler> schedulers = $this_updateWorkImpl.getSchedulers();
        Intrinsics.checkNotNullExpressionValue(schedulers, "getSchedulers(...)");
        return updateWorkImpl(processor, workDatabase, configuration, schedulers, $workRequest.getWorkSpec(), $workRequest.getTags());
    }

    public static final Operation enqueueUniquelyNamedPeriodic(final WorkManagerImpl $this$enqueueUniquelyNamedPeriodic, final String name, final WorkRequest workRequest) {
        Intrinsics.checkNotNullParameter($this$enqueueUniquelyNamedPeriodic, "<this>");
        Intrinsics.checkNotNullParameter(name, "name");
        Intrinsics.checkNotNullParameter(workRequest, "workRequest");
        Tracer tracer = $this$enqueueUniquelyNamedPeriodic.getConfiguration().getTracer();
        String str = "enqueueUniquePeriodic_" + name;
        SerialExecutor serialTaskExecutor = $this$enqueueUniquelyNamedPeriodic.getWorkTaskExecutor().getSerialTaskExecutor();
        Intrinsics.checkNotNullExpressionValue(serialTaskExecutor, "getSerialTaskExecutor(...)");
        return OperationKt.launchOperation(tracer, str, serialTaskExecutor, new Function0() { // from class: androidx.work.impl.WorkerUpdater$$ExternalSyntheticLambda4
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return WorkerUpdater.enqueueUniquelyNamedPeriodic$lambda$6($this$enqueueUniquelyNamedPeriodic, name, workRequest);
            }
        });
    }

    static final Unit enqueueUniquelyNamedPeriodic$lambda$6(final WorkManagerImpl $this_enqueueUniquelyNamedPeriodic, final String $name, final WorkRequest $workRequest) {
        Function0 enqueueNew = new Function0() { // from class: androidx.work.impl.WorkerUpdater$$ExternalSyntheticLambda2
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return WorkerUpdater.enqueueUniquelyNamedPeriodic$lambda$6$lambda$5($workRequest, $this_enqueueUniquelyNamedPeriodic, $name);
            }
        };
        WorkSpecDao workSpecDao = $this_enqueueUniquelyNamedPeriodic.getWorkDatabase().workSpecDao();
        List<WorkSpec.IdAndState> workSpecIdAndStatesForName = workSpecDao.getWorkSpecIdAndStatesForName($name);
        if (workSpecIdAndStatesForName.size() > 1) {
            throw new UnsupportedOperationException("Can't apply UPDATE policy to the chains of work.");
        }
        WorkSpec.IdAndState current = (WorkSpec.IdAndState) CollectionsKt.firstOrNull((List) workSpecIdAndStatesForName);
        if (current == null) {
            enqueueNew.invoke();
            return Unit.INSTANCE;
        }
        WorkSpec spec = workSpecDao.getWorkSpec(current.id);
        if (spec == null) {
            throw new IllegalStateException("WorkSpec with " + current.id + ", that matches a name \"" + $name + "\", wasn't found");
        }
        if (!spec.isPeriodic()) {
            throw new UnsupportedOperationException("Can't update OneTimeWorker to Periodic Worker. Update operation must preserve worker's type.");
        }
        if (current.state == WorkInfo.State.CANCELLED) {
            workSpecDao.delete(current.id);
            enqueueNew.invoke();
            return Unit.INSTANCE;
        }
        WorkSpec newWorkSpec = WorkSpec.copy$default($workRequest.getWorkSpec(), current.id, null, null, null, null, null, 0L, 0L, 0L, null, 0, null, 0L, 0L, 0L, 0L, false, null, 0, 0, 0L, 0, 0, null, null, 33554430, null);
        Processor processor = $this_enqueueUniquelyNamedPeriodic.getProcessor();
        Intrinsics.checkNotNullExpressionValue(processor, "getProcessor(...)");
        WorkDatabase workDatabase = $this_enqueueUniquelyNamedPeriodic.getWorkDatabase();
        Intrinsics.checkNotNullExpressionValue(workDatabase, "getWorkDatabase(...)");
        Configuration configuration = $this_enqueueUniquelyNamedPeriodic.getConfiguration();
        Intrinsics.checkNotNullExpressionValue(configuration, "<get-configuration>(...)");
        List<Scheduler> schedulers = $this_enqueueUniquelyNamedPeriodic.getSchedulers();
        Intrinsics.checkNotNullExpressionValue(schedulers, "getSchedulers(...)");
        updateWorkImpl(processor, workDatabase, configuration, schedulers, newWorkSpec, $workRequest.getTags());
        return Unit.INSTANCE;
    }

    static final Unit enqueueUniquelyNamedPeriodic$lambda$6$lambda$5(WorkRequest $workRequest, WorkManagerImpl $this_enqueueUniquelyNamedPeriodic, String $name) {
        List requests = CollectionsKt.listOf($workRequest);
        WorkContinuationImpl continuation = new WorkContinuationImpl($this_enqueueUniquelyNamedPeriodic, $name, ExistingWorkPolicy.KEEP, requests);
        EnqueueRunnable.enqueue(continuation);
        return Unit.INSTANCE;
    }
}
