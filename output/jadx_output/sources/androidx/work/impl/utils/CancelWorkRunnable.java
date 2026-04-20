package androidx.work.impl.utils;

import androidx.autofill.HintConstants;
import androidx.media3.extractor.text.ttml.TtmlNode;
import androidx.work.Operation;
import androidx.work.OperationKt;
import androidx.work.Tracer;
import androidx.work.WorkInfo;
import androidx.work.impl.Processor;
import androidx.work.impl.Scheduler;
import androidx.work.impl.Schedulers;
import androidx.work.impl.WorkDatabase;
import androidx.work.impl.WorkManagerImpl;
import androidx.work.impl.model.DependencyDao;
import androidx.work.impl.model.WorkSpecDao;
import androidx.work.impl.utils.taskexecutor.SerialExecutor;
import java.util.List;
import java.util.UUID;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: CancelWorkRunnable.kt */
/* JADX INFO: loaded from: classes21.dex */
@Metadata(d1 = {"\u0000*\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0007\u001a\u0018\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0002\u001a\u0010\u0010\u0006\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\u0002\u001a\u0018\u0010\u0007\u001a\u00020\u00012\u0006\u0010\b\u001a\u00020\t2\u0006\u0010\u0004\u001a\u00020\u0005H\u0002\u001a\u0016\u0010\n\u001a\u00020\u000b2\u0006\u0010\f\u001a\u00020\r2\u0006\u0010\u0002\u001a\u00020\u0003\u001a\u0016\u0010\u000e\u001a\u00020\u000b2\u0006\u0010\u000f\u001a\u00020\u00052\u0006\u0010\u0002\u001a\u00020\u0003\u001a\u0016\u0010\u0010\u001a\u00020\u000b2\u0006\u0010\u0011\u001a\u00020\u00052\u0006\u0010\u0002\u001a\u00020\u0003\u001a\u0016\u0010\u0012\u001a\u00020\u00012\u0006\u0010\u0011\u001a\u00020\u00052\u0006\u0010\u0002\u001a\u00020\u0003\u001a\u000e\u0010\u0013\u001a\u00020\u000b2\u0006\u0010\u0002\u001a\u00020\u0003¨\u0006\u0014"}, d2 = {"cancel", "", "workManagerImpl", "Landroidx/work/impl/WorkManagerImpl;", "workSpecId", "", "reschedulePendingWorkers", "iterativelyCancelWorkAndDependents", "workDatabase", "Landroidx/work/impl/WorkDatabase;", "forId", "Landroidx/work/Operation;", TtmlNode.ATTR_ID, "Ljava/util/UUID;", "forTag", "tag", "forName", HintConstants.AUTOFILL_HINT_NAME, "forNameInline", "forAll", "work-runtime_release"}, k = 2, mv = {2, 1, 0}, xi = 48)
public final class CancelWorkRunnable {
    private static final void cancel(WorkManagerImpl workManagerImpl, String workSpecId) {
        WorkDatabase workDatabase = workManagerImpl.getWorkDatabase();
        Intrinsics.checkNotNullExpressionValue(workDatabase, "getWorkDatabase(...)");
        iterativelyCancelWorkAndDependents(workDatabase, workSpecId);
        Processor processor = workManagerImpl.getProcessor();
        Intrinsics.checkNotNullExpressionValue(processor, "getProcessor(...)");
        processor.stopAndCancelWork(workSpecId, 1);
        for (Scheduler scheduler : workManagerImpl.getSchedulers()) {
            scheduler.cancel(workSpecId);
        }
    }

    private static final void reschedulePendingWorkers(WorkManagerImpl workManagerImpl) {
        Schedulers.schedule(workManagerImpl.getConfiguration(), workManagerImpl.getWorkDatabase(), workManagerImpl.getSchedulers());
    }

    private static final void iterativelyCancelWorkAndDependents(WorkDatabase workDatabase, String workSpecId) {
        WorkSpecDao workSpecDao = workDatabase.workSpecDao();
        DependencyDao dependencyDao = workDatabase.dependencyDao();
        List idsToProcess = CollectionsKt.mutableListOf(workSpecId);
        while (!idsToProcess.isEmpty()) {
            String id = (String) CollectionsKt.removeLast(idsToProcess);
            WorkInfo.State state = workSpecDao.getState(id);
            if (state != WorkInfo.State.SUCCEEDED && state != WorkInfo.State.FAILED) {
                workSpecDao.setCancelledState(id);
            }
            idsToProcess.addAll(dependencyDao.getDependentWorkIds(id));
        }
    }

    public static final Operation forId(final UUID id, final WorkManagerImpl workManagerImpl) {
        Intrinsics.checkNotNullParameter(id, "id");
        Intrinsics.checkNotNullParameter(workManagerImpl, "workManagerImpl");
        Tracer tracer = workManagerImpl.getConfiguration().getTracer();
        SerialExecutor serialTaskExecutor = workManagerImpl.getWorkTaskExecutor().getSerialTaskExecutor();
        Intrinsics.checkNotNullExpressionValue(serialTaskExecutor, "getSerialTaskExecutor(...)");
        return OperationKt.launchOperation(tracer, "CancelWorkById", serialTaskExecutor, new Function0() { // from class: androidx.work.impl.utils.CancelWorkRunnable$$ExternalSyntheticLambda6
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return CancelWorkRunnable.forId$lambda$1(workManagerImpl, id);
            }
        });
    }

    static final Unit forId$lambda$1(final WorkManagerImpl $workManagerImpl, final UUID $id) {
        WorkDatabase workDatabase = $workManagerImpl.getWorkDatabase();
        Intrinsics.checkNotNullExpressionValue(workDatabase, "getWorkDatabase(...)");
        workDatabase.runInTransaction(new Runnable() { // from class: androidx.work.impl.utils.CancelWorkRunnable$$ExternalSyntheticLambda4
            @Override // java.lang.Runnable
            public final void run() {
                CancelWorkRunnable.forId$lambda$1$lambda$0($workManagerImpl, $id);
            }
        });
        reschedulePendingWorkers($workManagerImpl);
        return Unit.INSTANCE;
    }

    static final void forId$lambda$1$lambda$0(WorkManagerImpl $workManagerImpl, UUID $id) {
        String string = $id.toString();
        Intrinsics.checkNotNullExpressionValue(string, "toString(...)");
        cancel($workManagerImpl, string);
    }

    public static final Operation forTag(final String tag, final WorkManagerImpl workManagerImpl) {
        Intrinsics.checkNotNullParameter(tag, "tag");
        Intrinsics.checkNotNullParameter(workManagerImpl, "workManagerImpl");
        Tracer tracer = workManagerImpl.getConfiguration().getTracer();
        String str = "CancelWorkByTag_" + tag;
        SerialExecutor serialTaskExecutor = workManagerImpl.getWorkTaskExecutor().getSerialTaskExecutor();
        Intrinsics.checkNotNullExpressionValue(serialTaskExecutor, "getSerialTaskExecutor(...)");
        return OperationKt.launchOperation(tracer, str, serialTaskExecutor, new Function0() { // from class: androidx.work.impl.utils.CancelWorkRunnable$$ExternalSyntheticLambda2
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return CancelWorkRunnable.forTag$lambda$3(workManagerImpl, tag);
            }
        });
    }

    static final Unit forTag$lambda$3(final WorkManagerImpl $workManagerImpl, final String $tag) {
        final WorkDatabase workDatabase = $workManagerImpl.getWorkDatabase();
        Intrinsics.checkNotNullExpressionValue(workDatabase, "getWorkDatabase(...)");
        workDatabase.runInTransaction(new Runnable() { // from class: androidx.work.impl.utils.CancelWorkRunnable$$ExternalSyntheticLambda1
            @Override // java.lang.Runnable
            public final void run() {
                CancelWorkRunnable.forTag$lambda$3$lambda$2(workDatabase, $tag, $workManagerImpl);
            }
        });
        reschedulePendingWorkers($workManagerImpl);
        return Unit.INSTANCE;
    }

    static final void forTag$lambda$3$lambda$2(WorkDatabase $workDatabase, String $tag, WorkManagerImpl $workManagerImpl) {
        WorkSpecDao workSpecDao = $workDatabase.workSpecDao();
        for (String workSpecId : workSpecDao.getUnfinishedWorkWithTag($tag)) {
            cancel($workManagerImpl, workSpecId);
        }
    }

    public static final Operation forName(final String name, final WorkManagerImpl workManagerImpl) {
        Intrinsics.checkNotNullParameter(name, "name");
        Intrinsics.checkNotNullParameter(workManagerImpl, "workManagerImpl");
        Tracer tracer = workManagerImpl.getConfiguration().getTracer();
        String str = "CancelWorkByName_" + name;
        SerialExecutor serialTaskExecutor = workManagerImpl.getWorkTaskExecutor().getSerialTaskExecutor();
        Intrinsics.checkNotNullExpressionValue(serialTaskExecutor, "getSerialTaskExecutor(...)");
        return OperationKt.launchOperation(tracer, str, serialTaskExecutor, new Function0() { // from class: androidx.work.impl.utils.CancelWorkRunnable$$ExternalSyntheticLambda3
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return CancelWorkRunnable.forName$lambda$4(name, workManagerImpl);
            }
        });
    }

    static final Unit forName$lambda$4(String $name, WorkManagerImpl $workManagerImpl) {
        forNameInline($name, $workManagerImpl);
        reschedulePendingWorkers($workManagerImpl);
        return Unit.INSTANCE;
    }

    public static final void forNameInline(final String name, final WorkManagerImpl workManagerImpl) {
        Intrinsics.checkNotNullParameter(name, "name");
        Intrinsics.checkNotNullParameter(workManagerImpl, "workManagerImpl");
        final WorkDatabase workDatabase = workManagerImpl.getWorkDatabase();
        Intrinsics.checkNotNullExpressionValue(workDatabase, "getWorkDatabase(...)");
        workDatabase.runInTransaction(new Runnable() { // from class: androidx.work.impl.utils.CancelWorkRunnable$$ExternalSyntheticLambda0
            @Override // java.lang.Runnable
            public final void run() {
                CancelWorkRunnable.forNameInline$lambda$5(workDatabase, name, workManagerImpl);
            }
        });
    }

    static final void forNameInline$lambda$5(WorkDatabase $workDatabase, String $name, WorkManagerImpl $workManagerImpl) {
        WorkSpecDao workSpecDao = $workDatabase.workSpecDao();
        for (String workSpecId : workSpecDao.getUnfinishedWorkWithName($name)) {
            cancel($workManagerImpl, workSpecId);
        }
    }

    public static final Operation forAll(final WorkManagerImpl workManagerImpl) {
        Intrinsics.checkNotNullParameter(workManagerImpl, "workManagerImpl");
        Tracer tracer = workManagerImpl.getConfiguration().getTracer();
        SerialExecutor serialTaskExecutor = workManagerImpl.getWorkTaskExecutor().getSerialTaskExecutor();
        Intrinsics.checkNotNullExpressionValue(serialTaskExecutor, "getSerialTaskExecutor(...)");
        return OperationKt.launchOperation(tracer, "CancelAllWork", serialTaskExecutor, new Function0() { // from class: androidx.work.impl.utils.CancelWorkRunnable$$ExternalSyntheticLambda5
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return CancelWorkRunnable.forAll$lambda$7(workManagerImpl);
            }
        });
    }

    static final Unit forAll$lambda$7(final WorkManagerImpl $workManagerImpl) {
        final WorkDatabase workDatabase = $workManagerImpl.getWorkDatabase();
        Intrinsics.checkNotNullExpressionValue(workDatabase, "getWorkDatabase(...)");
        workDatabase.runInTransaction(new Runnable() { // from class: androidx.work.impl.utils.CancelWorkRunnable$$ExternalSyntheticLambda7
            @Override // java.lang.Runnable
            public final void run() {
                CancelWorkRunnable.forAll$lambda$7$lambda$6(workDatabase, $workManagerImpl);
            }
        });
        return Unit.INSTANCE;
    }

    static final void forAll$lambda$7$lambda$6(WorkDatabase $workDatabase, WorkManagerImpl $workManagerImpl) {
        WorkSpecDao workSpecDao = $workDatabase.workSpecDao();
        for (String workSpecId : workSpecDao.getAllUnfinishedWork()) {
            cancel($workManagerImpl, workSpecId);
        }
        new PreferenceUtils($workDatabase).setLastCancelAllTimeMillis($workManagerImpl.getConfiguration().getClock().currentTimeMillis());
    }
}
