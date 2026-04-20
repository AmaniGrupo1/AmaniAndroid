package androidx.work.impl.workers;

import android.content.Context;
import android.os.Build;
import androidx.compose.runtime.ComposerImplKt;
import androidx.concurrent.futures.ListenableFutureKt;
import androidx.core.util.Consumer;
import androidx.media3.extractor.ts.TsExtractor;
import androidx.work.CoroutineWorker;
import androidx.work.ListenableWorker;
import androidx.work.Logger;
import androidx.work.WorkInfo;
import androidx.work.WorkerExceptionInfo;
import androidx.work.WorkerFactory;
import androidx.work.WorkerParameters;
import androidx.work.impl.WorkManagerImpl;
import androidx.work.impl.constraints.WorkConstraintsTracker;
import androidx.work.impl.constraints.trackers.Trackers;
import androidx.work.impl.model.WorkSpec;
import androidx.work.impl.model.WorkSpecDao;
import androidx.work.impl.utils.WorkerExceptionUtilsKt;
import com.google.common.util.concurrent.ListenableFuture;
import java.util.concurrent.CancellationException;
import java.util.concurrent.Executor;
import java.util.concurrent.atomic.AtomicInteger;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.BuildersKt;
import kotlinx.coroutines.BuildersKt__Builders_commonKt;
import kotlinx.coroutines.CoroutineDispatcher;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.CoroutineScopeKt;
import kotlinx.coroutines.ExecutorsKt;
import kotlinx.coroutines.Job;

/* JADX INFO: compiled from: ConstraintTrackingWorker.kt */
/* JADX INFO: loaded from: classes21.dex */
@Metadata(d1 = {"\u00004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0007\u0018\u00002\u00020\u0001:\u0001\u0014B\u0017\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005¢\u0006\u0004\b\u0006\u0010\u0007J\u000e\u0010\b\u001a\u00020\tH\u0096@¢\u0006\u0002\u0010\nJ\u000e\u0010\u000b\u001a\u00020\tH\u0082@¢\u0006\u0002\u0010\nJ&\u0010\f\u001a\u00020\t2\u0006\u0010\r\u001a\u00020\u000e2\u0006\u0010\u000f\u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00020\u0012H\u0082@¢\u0006\u0002\u0010\u0013R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\u0015"}, d2 = {"Landroidx/work/impl/workers/ConstraintTrackingWorker;", "Landroidx/work/CoroutineWorker;", "appContext", "Landroid/content/Context;", "workerParameters", "Landroidx/work/WorkerParameters;", "<init>", "(Landroid/content/Context;Landroidx/work/WorkerParameters;)V", "doWork", "Landroidx/work/ListenableWorker$Result;", "(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "setupAndRunConstraintTrackingWork", "runWorker", "delegate", "Landroidx/work/ListenableWorker;", "workConstraintsTracker", "Landroidx/work/impl/constraints/WorkConstraintsTracker;", "workSpec", "Landroidx/work/impl/model/WorkSpec;", "(Landroidx/work/ListenableWorker;Landroidx/work/impl/constraints/WorkConstraintsTracker;Landroidx/work/impl/model/WorkSpec;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "ConstraintUnsatisfiedException", "work-runtime_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class ConstraintTrackingWorker extends CoroutineWorker {
    private final WorkerParameters workerParameters;

    /* JADX INFO: renamed from: androidx.work.impl.workers.ConstraintTrackingWorker$runWorker$1, reason: invalid class name */
    /* JADX INFO: compiled from: ConstraintTrackingWorker.kt */
    @Metadata(k = 3, mv = {2, 1, 0}, xi = 48)
    @DebugMetadata(c = "androidx.work.impl.workers.ConstraintTrackingWorker", f = "ConstraintTrackingWorker.kt", i = {}, l = {ComposerImplKt.nodeKey}, m = "runWorker", n = {}, s = {})
    static final class AnonymousClass1 extends ContinuationImpl {
        int label;
        /* synthetic */ Object result;

        AnonymousClass1(Continuation<? super AnonymousClass1> continuation) {
            super(continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            this.result = obj;
            this.label |= Integer.MIN_VALUE;
            return ConstraintTrackingWorker.this.runWorker(null, null, null, this);
        }
    }

    /* JADX INFO: renamed from: androidx.work.impl.workers.ConstraintTrackingWorker$setupAndRunConstraintTrackingWork$1, reason: invalid class name and case insensitive filesystem */
    /* JADX INFO: compiled from: ConstraintTrackingWorker.kt */
    @Metadata(k = 3, mv = {2, 1, 0}, xi = 48)
    @DebugMetadata(c = "androidx.work.impl.workers.ConstraintTrackingWorker", f = "ConstraintTrackingWorker.kt", i = {0}, l = {97}, m = "setupAndRunConstraintTrackingWork", n = {"delegate"}, s = {"L$0"})
    static final class C06501 extends ContinuationImpl {
        Object L$0;
        int label;
        /* synthetic */ Object result;

        C06501(Continuation<? super C06501> continuation) {
            super(continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            this.result = obj;
            this.label |= Integer.MIN_VALUE;
            return ConstraintTrackingWorker.this.setupAndRunConstraintTrackingWork(this);
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ConstraintTrackingWorker(Context appContext, WorkerParameters workerParameters) {
        super(appContext, workerParameters);
        Intrinsics.checkNotNullParameter(appContext, "appContext");
        Intrinsics.checkNotNullParameter(workerParameters, "workerParameters");
        this.workerParameters = workerParameters;
    }

    /* JADX INFO: renamed from: androidx.work.impl.workers.ConstraintTrackingWorker$doWork$2, reason: invalid class name */
    /* JADX INFO: compiled from: ConstraintTrackingWorker.kt */
    @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "Landroidx/work/ListenableWorker$Result;", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 1, 0}, xi = 48)
    @DebugMetadata(c = "androidx.work.impl.workers.ConstraintTrackingWorker$doWork$2", f = "ConstraintTrackingWorker.kt", i = {}, l = {58}, m = "invokeSuspend", n = {}, s = {})
    static final class AnonymousClass2 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super ListenableWorker.Result>, Object> {
        int label;

        AnonymousClass2(Continuation<? super AnonymousClass2> continuation) {
            super(2, continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return ConstraintTrackingWorker.this.new AnonymousClass2(continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(CoroutineScope coroutineScope, Continuation<? super ListenableWorker.Result> continuation) {
            return ((AnonymousClass2) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object $result) {
            Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
            switch (this.label) {
                case 0:
                    ResultKt.throwOnFailure($result);
                    this.label = 1;
                    Object obj = ConstraintTrackingWorker.this.setupAndRunConstraintTrackingWork(this);
                    if (obj == coroutine_suspended) {
                        return coroutine_suspended;
                    }
                    return obj;
                case 1:
                    ResultKt.throwOnFailure($result);
                    return $result;
                default:
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
        }
    }

    @Override // androidx.work.CoroutineWorker
    public Object doWork(Continuation<? super ListenableWorker.Result> continuation) {
        Executor backgroundExecutor = getBackgroundExecutor();
        Intrinsics.checkNotNullExpressionValue(backgroundExecutor, "getBackgroundExecutor(...)");
        return BuildersKt.withContext(ExecutorsKt.from(backgroundExecutor), new AnonymousClass2(null), continuation);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Removed duplicated region for block: B:51:0x0167  */
    /* JADX WARN: Removed duplicated region for block: B:54:0x016c  */
    /* JADX WARN: Removed duplicated region for block: B:56:0x0172  */
    /* JADX WARN: Removed duplicated region for block: B:57:0x0175  */
    /* JADX WARN: Removed duplicated region for block: B:66:0x0194  */
    /* JADX WARN: Removed duplicated region for block: B:68:0x019d  */
    /* JADX WARN: Removed duplicated region for block: B:7:0x0018  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final Object setupAndRunConstraintTrackingWork(Continuation<? super ListenableWorker.Result> continuation) {
        C06501 c06501;
        ConstraintTrackingWorker constraintTrackingWorker;
        ConstraintTrackingWorker constraintTrackingWorker2;
        ListenableWorker delegate;
        Object objWithContext;
        int reason;
        if (continuation instanceof C06501) {
            c06501 = (C06501) continuation;
            if ((c06501.label & Integer.MIN_VALUE) != 0) {
                c06501.label -= Integer.MIN_VALUE;
            } else {
                c06501 = new C06501(continuation);
            }
        }
        C06501 c065012 = c06501;
        Object $result = c065012.result;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        switch (c065012.label) {
            case 0:
                ResultKt.throwOnFailure($result);
                constraintTrackingWorker = this;
                String className = constraintTrackingWorker.getInputData().getString(ConstraintTrackingWorkerKt.ARGUMENT_CLASS_NAME);
                String str = className;
                if (str == null || str.length() == 0) {
                    String tag$iv = ConstraintTrackingWorkerKt.TAG;
                    Logger.get().error(tag$iv, "No worker to delegate to.");
                    ListenableWorker.Result resultFailure = ListenableWorker.Result.failure();
                    Intrinsics.checkNotNullExpressionValue(resultFailure, "failure(...)");
                    return resultFailure;
                }
                WorkManagerImpl workManagerImpl = WorkManagerImpl.getInstance(constraintTrackingWorker.getApplicationContext());
                Intrinsics.checkNotNullExpressionValue(workManagerImpl, "getInstance(...)");
                WorkSpecDao workSpecDao = workManagerImpl.getWorkDatabase().workSpecDao();
                String string = constraintTrackingWorker.getId().toString();
                Intrinsics.checkNotNullExpressionValue(string, "toString(...)");
                WorkSpec workSpec = workSpecDao.getWorkSpec(string);
                if (workSpec == null) {
                    ListenableWorker.Result resultFailure2 = ListenableWorker.Result.failure();
                    Intrinsics.checkNotNullExpressionValue(resultFailure2, "failure(...)");
                    return resultFailure2;
                }
                Trackers trackers = workManagerImpl.getTrackers();
                Intrinsics.checkNotNullExpressionValue(trackers, "getTrackers(...)");
                WorkConstraintsTracker workConstraintsTracker = new WorkConstraintsTracker(trackers);
                if (!workConstraintsTracker.areAllConstraintsMet(workSpec)) {
                    String tag$iv2 = ConstraintTrackingWorkerKt.TAG;
                    Logger.get().debug(tag$iv2, "Constraints not met for delegate " + className + ". Requesting retry.");
                    ListenableWorker.Result resultRetry = ListenableWorker.Result.retry();
                    Intrinsics.checkNotNullExpressionValue(resultRetry, "retry(...)");
                    return resultRetry;
                }
                String tag$iv3 = ConstraintTrackingWorkerKt.TAG;
                Logger.get().debug(tag$iv3, "Constraints met for delegate " + className);
                try {
                    WorkerFactory workerFactory = constraintTrackingWorker.getWorkerFactory();
                    Context applicationContext = constraintTrackingWorker.getApplicationContext();
                    Intrinsics.checkNotNullExpressionValue(applicationContext, "getApplicationContext(...)");
                    ListenableWorker delegate2 = workerFactory.createWorkerWithDefaultFallback(applicationContext, className, constraintTrackingWorker.workerParameters);
                    Executor mainThreadExecutor = constraintTrackingWorker.workerParameters.getTaskExecutor().getMainThreadExecutor();
                    Intrinsics.checkNotNullExpressionValue(mainThreadExecutor, "getMainThreadExecutor(...)");
                    try {
                        CoroutineDispatcher coroutineDispatcherFrom = ExecutorsKt.from(mainThreadExecutor);
                        AnonymousClass5 anonymousClass5 = constraintTrackingWorker.new AnonymousClass5(delegate2, workConstraintsTracker, workSpec, null);
                        c065012.L$0 = delegate2;
                        c065012.label = 1;
                        objWithContext = BuildersKt.withContext(coroutineDispatcherFrom, anonymousClass5, c065012);
                        if (objWithContext == coroutine_suspended) {
                            return coroutine_suspended;
                        }
                        delegate = delegate2;
                        try {
                            return (ListenableWorker.Result) objWithContext;
                        } catch (CancellationException e) {
                            cancelled = e;
                            constraintTrackingWorker2 = constraintTrackingWorker;
                            if (constraintTrackingWorker2.isStopped()) {
                                if (Build.VERSION.SDK_INT >= 31) {
                                }
                                delegate.stop(reason);
                            }
                            if (cancelled instanceof ConstraintUnsatisfiedException) {
                            }
                        }
                    } catch (CancellationException e2) {
                        cancelled = e2;
                        constraintTrackingWorker2 = constraintTrackingWorker;
                        delegate = delegate2;
                        if (constraintTrackingWorker2.isStopped()) {
                        }
                        if (cancelled instanceof ConstraintUnsatisfiedException) {
                        }
                    }
                } catch (Throwable e3) {
                    String tag$iv4 = ConstraintTrackingWorkerKt.TAG;
                    Logger.get().debug(tag$iv4, "No worker to delegate to.");
                    Consumer<WorkerExceptionInfo> workerInitializationExceptionHandler = workManagerImpl.getConfiguration().getWorkerInitializationExceptionHandler();
                    if (workerInitializationExceptionHandler != null) {
                        WorkerExceptionUtilsKt.safeAccept(workerInitializationExceptionHandler, new WorkerExceptionInfo(className, constraintTrackingWorker.workerParameters, e3), ConstraintTrackingWorkerKt.TAG);
                    }
                    ListenableWorker.Result resultFailure3 = ListenableWorker.Result.failure();
                    Intrinsics.checkNotNullExpressionValue(resultFailure3, "failure(...)");
                    return resultFailure3;
                }
                break;
            case 1:
                constraintTrackingWorker2 = this;
                delegate = (ListenableWorker) c065012.L$0;
                try {
                    ResultKt.throwOnFailure($result);
                    constraintTrackingWorker = constraintTrackingWorker2;
                    objWithContext = $result;
                    return (ListenableWorker.Result) objWithContext;
                } catch (CancellationException e4) {
                    cancelled = e4;
                    if (constraintTrackingWorker2.isStopped() || (cancelled instanceof ConstraintUnsatisfiedException)) {
                        if (Build.VERSION.SDK_INT >= 31) {
                            reason = WorkInfo.STOP_REASON_UNKNOWN;
                        } else if (constraintTrackingWorker2.isStopped()) {
                            reason = constraintTrackingWorker2.getStopReason();
                        } else {
                            if (!(cancelled instanceof ConstraintUnsatisfiedException)) {
                                throw new IllegalStateException("Unreachable");
                            }
                            reason = ((ConstraintUnsatisfiedException) cancelled).getStopReason();
                        }
                        delegate.stop(reason);
                    }
                    if (cancelled instanceof ConstraintUnsatisfiedException) {
                        ListenableWorker.Result resultRetry2 = ListenableWorker.Result.retry();
                        Intrinsics.checkNotNull(resultRetry2);
                        return resultRetry2;
                    }
                    throw cancelled;
                }
            default:
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }
    }

    /* JADX INFO: renamed from: androidx.work.impl.workers.ConstraintTrackingWorker$setupAndRunConstraintTrackingWork$5, reason: invalid class name */
    /* JADX INFO: compiled from: ConstraintTrackingWorker.kt */
    @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "Landroidx/work/ListenableWorker$Result;", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 1, 0}, xi = 48)
    @DebugMetadata(c = "androidx.work.impl.workers.ConstraintTrackingWorker$setupAndRunConstraintTrackingWork$5", f = "ConstraintTrackingWorker.kt", i = {}, l = {98}, m = "invokeSuspend", n = {}, s = {})
    static final class AnonymousClass5 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super ListenableWorker.Result>, Object> {
        final /* synthetic */ ListenableWorker $delegate;
        final /* synthetic */ WorkConstraintsTracker $workConstraintsTracker;
        final /* synthetic */ WorkSpec $workSpec;
        int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        AnonymousClass5(ListenableWorker listenableWorker, WorkConstraintsTracker workConstraintsTracker, WorkSpec workSpec, Continuation<? super AnonymousClass5> continuation) {
            super(2, continuation);
            this.$delegate = listenableWorker;
            this.$workConstraintsTracker = workConstraintsTracker;
            this.$workSpec = workSpec;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return ConstraintTrackingWorker.this.new AnonymousClass5(this.$delegate, this.$workConstraintsTracker, this.$workSpec, continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(CoroutineScope coroutineScope, Continuation<? super ListenableWorker.Result> continuation) {
            return ((AnonymousClass5) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object $result) {
            Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
            switch (this.label) {
                case 0:
                    ResultKt.throwOnFailure($result);
                    this.label = 1;
                    Object objRunWorker = ConstraintTrackingWorker.this.runWorker(this.$delegate, this.$workConstraintsTracker, this.$workSpec, this);
                    if (objRunWorker == coroutine_suspended) {
                        return coroutine_suspended;
                    }
                    return objRunWorker;
                case 1:
                    ResultKt.throwOnFailure($result);
                    return $result;
                default:
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Removed duplicated region for block: B:7:0x0014  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final Object runWorker(ListenableWorker delegate, WorkConstraintsTracker workConstraintsTracker, WorkSpec workSpec, Continuation<? super ListenableWorker.Result> continuation) {
        AnonymousClass1 anonymousClass1;
        Object objCoroutineScope;
        if (continuation instanceof AnonymousClass1) {
            anonymousClass1 = (AnonymousClass1) continuation;
            if ((anonymousClass1.label & Integer.MIN_VALUE) != 0) {
                anonymousClass1.label -= Integer.MIN_VALUE;
            } else {
                anonymousClass1 = new AnonymousClass1(continuation);
            }
        }
        Object $result = anonymousClass1.result;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        switch (anonymousClass1.label) {
            case 0:
                ResultKt.throwOnFailure($result);
                C06492 c06492 = new C06492(delegate, workConstraintsTracker, workSpec, null);
                anonymousClass1.label = 1;
                objCoroutineScope = CoroutineScopeKt.coroutineScope(c06492, anonymousClass1);
                if (objCoroutineScope == coroutine_suspended) {
                    return coroutine_suspended;
                }
                break;
            case 1:
                ResultKt.throwOnFailure($result);
                objCoroutineScope = $result;
                break;
            default:
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }
        Intrinsics.checkNotNullExpressionValue(objCoroutineScope, "coroutineScope(...)");
        return objCoroutineScope;
    }

    /* JADX INFO: renamed from: androidx.work.impl.workers.ConstraintTrackingWorker$runWorker$2, reason: invalid class name and case insensitive filesystem */
    /* JADX INFO: compiled from: ConstraintTrackingWorker.kt */
    @Metadata(d1 = {"\u0000\f\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\u0010\u0000\u001a\n \u0002*\u0004\u0018\u00010\u00010\u0001*\u00020\u0003H\n"}, d2 = {"<anonymous>", "Landroidx/work/ListenableWorker$Result;", "kotlin.jvm.PlatformType", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 1, 0}, xi = 48)
    @DebugMetadata(c = "androidx.work.impl.workers.ConstraintTrackingWorker$runWorker$2", f = "ConstraintTrackingWorker.kt", i = {0, 0, 0}, l = {TsExtractor.TS_STREAM_TYPE_SPLICE_INFO}, m = "invokeSuspend", n = {"atomicReason", "future", "constraintTrackingJob"}, s = {"L$0", "L$1", "L$2"})
    static final class C06492 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super ListenableWorker.Result>, Object> {
        final /* synthetic */ ListenableWorker $delegate;
        final /* synthetic */ WorkConstraintsTracker $workConstraintsTracker;
        final /* synthetic */ WorkSpec $workSpec;
        private /* synthetic */ Object L$0;
        Object L$1;
        Object L$2;
        int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        C06492(ListenableWorker listenableWorker, WorkConstraintsTracker workConstraintsTracker, WorkSpec workSpec, Continuation<? super C06492> continuation) {
            super(2, continuation);
            this.$delegate = listenableWorker;
            this.$workConstraintsTracker = workConstraintsTracker;
            this.$workSpec = workSpec;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            C06492 c06492 = new C06492(this.$delegate, this.$workConstraintsTracker, this.$workSpec, continuation);
            c06492.L$0 = obj;
            return c06492;
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(CoroutineScope coroutineScope, Continuation<? super ListenableWorker.Result> continuation) {
            return ((C06492) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        /* JADX WARN: Not initialized variable reg: 7, insn: 0x0113: INVOKE 
          (r7 I:kotlinx.coroutines.Job A[D('constraintTrackingJob' kotlinx.coroutines.Job)])
          (r6 I:java.util.concurrent.CancellationException)
          (r3 I:int)
          (r6 I:java.lang.Object)
         STATIC call: kotlinx.coroutines.Job.DefaultImpls.cancel$default(kotlinx.coroutines.Job, java.util.concurrent.CancellationException, int, java.lang.Object):void A[MD:(kotlinx.coroutines.Job, java.util.concurrent.CancellationException, int, java.lang.Object):void (m)], block:B:43:0x0112 */
        /* JADX WARN: Removed duplicated region for block: B:33:0x00fa  */
        /* JADX WARN: Removed duplicated region for block: B:34:0x00fc  */
        /* JADX WARN: Removed duplicated region for block: B:37:0x0103 A[ADDED_TO_REGION] */
        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        /*
            Code decompiled incorrectly, please refer to instructions dump.
        */
        public final Object invokeSuspend(Object $result) {
            Job constraintTrackingJob;
            AtomicInteger atomicReason;
            Job constraintTrackingJob2;
            ListenableFuture<ListenableWorker.Result> listenableFuture;
            AtomicInteger atomicReason2;
            Object $result2;
            Object $result3;
            Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
            try {
                switch (this.label) {
                    case 0:
                        ResultKt.throwOnFailure($result);
                        CoroutineScope $this$coroutineScope = (CoroutineScope) this.L$0;
                        AtomicInteger atomicReason3 = new AtomicInteger(-256);
                        ListenableFuture<ListenableWorker.Result> listenableFutureStartWork = this.$delegate.startWork();
                        Intrinsics.checkNotNullExpressionValue(listenableFutureStartWork, "startWork(...)");
                        atomicReason = atomicReason3;
                        constraintTrackingJob2 = BuildersKt__Builders_commonKt.launch$default($this$coroutineScope, null, null, new ConstraintTrackingWorker$runWorker$2$constraintTrackingJob$1(this.$workConstraintsTracker, this.$workSpec, atomicReason3, listenableFutureStartWork, null), 3, null);
                        try {
                            this.L$0 = atomicReason;
                            this.L$1 = listenableFutureStartWork;
                            this.L$2 = constraintTrackingJob2;
                            this.label = 1;
                            Object objAwait = ListenableFutureKt.await(listenableFutureStartWork, this);
                            if (objAwait == coroutine_suspended) {
                                return coroutine_suspended;
                            }
                            $result2 = $result;
                            $result3 = objAwait;
                            listenableFuture = listenableFutureStartWork;
                            try {
                                Object $result4 = (ListenableWorker.Result) $result3;
                                Job.DefaultImpls.cancel$default(constraintTrackingJob2, (CancellationException) null, 1, (Object) null);
                                return $result4;
                            } catch (CancellationException e) {
                                cancellation = e;
                                atomicReason2 = atomicReason;
                                String tag$iv = ConstraintTrackingWorkerKt.TAG;
                                CancellationException t$iv = cancellation;
                                Logger.get().debug(tag$iv, "Delegated worker " + this.$delegate.getClass() + " was cancelled", t$iv);
                                boolean constraintFailed = atomicReason2.get() != -256;
                                if (listenableFuture.isCancelled() || !constraintFailed) {
                                    throw cancellation;
                                }
                                throw new ConstraintUnsatisfiedException(atomicReason2.get());
                            } catch (Throwable th) {
                                throwable = th;
                                String tag$iv2 = ConstraintTrackingWorkerKt.TAG;
                                Throwable t$iv2 = throwable;
                                Logger.get().debug(tag$iv2, "Delegated worker " + this.$delegate.getClass() + " threw exception in startWork.", t$iv2);
                                throw throwable;
                            }
                        } catch (CancellationException e2) {
                            cancellation = e2;
                            listenableFuture = listenableFutureStartWork;
                            atomicReason2 = atomicReason;
                            String tag$iv3 = ConstraintTrackingWorkerKt.TAG;
                            CancellationException t$iv3 = cancellation;
                            Logger.get().debug(tag$iv3, "Delegated worker " + this.$delegate.getClass() + " was cancelled", t$iv3);
                            if (atomicReason2.get() != -256) {
                            }
                            if (listenableFuture.isCancelled()) {
                            }
                            throw cancellation;
                        } catch (Throwable th2) {
                            throwable = th2;
                            String tag$iv22 = ConstraintTrackingWorkerKt.TAG;
                            Throwable t$iv22 = throwable;
                            Logger.get().debug(tag$iv22, "Delegated worker " + this.$delegate.getClass() + " threw exception in startWork.", t$iv22);
                            throw throwable;
                        }
                    case 1:
                        $result3 = $result;
                        Job constraintTrackingJob3 = (Job) this.L$2;
                        listenableFuture = (ListenableFuture) this.L$1;
                        atomicReason2 = (AtomicInteger) this.L$0;
                        try {
                            ResultKt.throwOnFailure($result3);
                            atomicReason = atomicReason2;
                            constraintTrackingJob2 = constraintTrackingJob3;
                            $result2 = $result3;
                            Object $result42 = (ListenableWorker.Result) $result3;
                            Job.DefaultImpls.cancel$default(constraintTrackingJob2, (CancellationException) null, 1, (Object) null);
                            return $result42;
                        } catch (CancellationException e3) {
                            cancellation = e3;
                            String tag$iv32 = ConstraintTrackingWorkerKt.TAG;
                            CancellationException t$iv32 = cancellation;
                            Logger.get().debug(tag$iv32, "Delegated worker " + this.$delegate.getClass() + " was cancelled", t$iv32);
                            if (atomicReason2.get() != -256) {
                            }
                            if (listenableFuture.isCancelled()) {
                            }
                            throw cancellation;
                        } catch (Throwable th3) {
                            throwable = th3;
                            String tag$iv222 = ConstraintTrackingWorkerKt.TAG;
                            Throwable t$iv222 = throwable;
                            Logger.get().debug(tag$iv222, "Delegated worker " + this.$delegate.getClass() + " threw exception in startWork.", t$iv222);
                            throw throwable;
                        }
                    default:
                        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
            } catch (Throwable cancellation) {
                Job.DefaultImpls.cancel$default(constraintTrackingJob, (CancellationException) null, 1, (Object) null);
                throw cancellation;
            }
        }
    }

    /* JADX INFO: compiled from: ConstraintTrackingWorker.kt */
    @Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0005\b\u0002\u0018\u00002\u00060\u0001j\u0002`\u0002B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0004¢\u0006\u0004\b\u0005\u0010\u0006R\u0011\u0010\u0003\u001a\u00020\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0007\u0010\b¨\u0006\t"}, d2 = {"Landroidx/work/impl/workers/ConstraintTrackingWorker$ConstraintUnsatisfiedException;", "Ljava/util/concurrent/CancellationException;", "Lkotlinx/coroutines/CancellationException;", "stopReason", "", "<init>", "(I)V", "getStopReason", "()I", "work-runtime_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
    private static final class ConstraintUnsatisfiedException extends CancellationException {
        private final int stopReason;

        public ConstraintUnsatisfiedException(int stopReason) {
            this.stopReason = stopReason;
        }

        public final int getStopReason() {
            return this.stopReason;
        }
    }
}
