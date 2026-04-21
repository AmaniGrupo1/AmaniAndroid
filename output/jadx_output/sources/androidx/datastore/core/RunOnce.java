package androidx.datastore.core;

import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlinx.coroutines.CompletableDeferred;
import kotlinx.coroutines.CompletableDeferredKt;
import kotlinx.coroutines.sync.Mutex;
import kotlinx.coroutines.sync.MutexKt;

/* JADX INFO: compiled from: DataStoreImpl.kt */
/* JADX INFO: loaded from: classes20.dex */
@Metadata(d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0005\b \u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u0002\u0010\u0003J\u000e\u0010\t\u001a\u00020\bH¤@¢\u0006\u0002\u0010\nJ\u000e\u0010\u000b\u001a\u00020\bH\u0086@¢\u0006\u0002\u0010\nJ\u000e\u0010\f\u001a\u00020\bH\u0086@¢\u0006\u0002\u0010\nR\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004¢\u0006\u0002\n\u0000R\u0014\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\b0\u0007X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\r"}, d2 = {"Landroidx/datastore/core/RunOnce;", "", "<init>", "()V", "runMutex", "Lkotlinx/coroutines/sync/Mutex;", "didRun", "Lkotlinx/coroutines/CompletableDeferred;", "", "doRun", "(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "awaitComplete", "runIfNeeded", "datastore-core"}, k = 1, mv = {2, 0, 0}, xi = 48)
public abstract class RunOnce {
    private final Mutex runMutex = MutexKt.Mutex$default(false, 1, null);
    private final CompletableDeferred<Unit> didRun = CompletableDeferredKt.CompletableDeferred$default(null, 1, null);

    /* JADX INFO: renamed from: androidx.datastore.core.RunOnce$runIfNeeded$1, reason: invalid class name */
    /* JADX INFO: compiled from: DataStoreImpl.kt */
    @Metadata(k = 3, mv = {2, 0, 0}, xi = 48)
    @DebugMetadata(c = "androidx.datastore.core.RunOnce", f = "DataStoreImpl.kt", i = {0, 1}, l = {566, 517}, m = "runIfNeeded", n = {"$this$withLock_u24default$iv", "$this$withLock_u24default$iv"}, s = {"L$0", "L$0"}, v = 1)
    static final class AnonymousClass1 extends ContinuationImpl {
        Object L$0;
        int label;
        /* synthetic */ Object result;

        AnonymousClass1(Continuation<? super AnonymousClass1> continuation) {
            super(continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            this.result = obj;
            this.label |= Integer.MIN_VALUE;
            return RunOnce.this.runIfNeeded(this);
        }
    }

    protected abstract Object doRun(Continuation<? super Unit> continuation);

    public final Object awaitComplete(Continuation<? super Unit> continuation) {
        Object objAwait = this.didRun.await(continuation);
        return objAwait == IntrinsicsKt.getCOROUTINE_SUSPENDED() ? objAwait : Unit.INSTANCE;
    }

    /* JADX WARN: Removed duplicated region for block: B:28:0x0070 A[Catch: all -> 0x009c, TRY_LEAVE, TryCatch #2 {all -> 0x009c, blocks: (B:26:0x0068, B:28:0x0070), top: B:48:0x0068 }] */
    /* JADX WARN: Removed duplicated region for block: B:44:0x0076 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:7:0x0014  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final Object runIfNeeded(Continuation<? super Unit> continuation) throws Throwable {
        AnonymousClass1 anonymousClass1;
        RunOnce runOnce;
        Mutex $this$withLock_u24default$iv;
        Mutex owner$iv;
        Mutex $this$withLock_u24default$iv2;
        Mutex $this$withLock_u24default$iv3;
        RunOnce runOnce2;
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
                runOnce = this;
                if (runOnce.didRun.isCompleted()) {
                    return Unit.INSTANCE;
                }
                $this$withLock_u24default$iv = runOnce.runMutex;
                owner$iv = null;
                anonymousClass1.L$0 = $this$withLock_u24default$iv;
                anonymousClass1.label = 1;
                if ($this$withLock_u24default$iv.lock(null, anonymousClass1) == coroutine_suspended) {
                    return coroutine_suspended;
                }
                try {
                    if (!runOnce.didRun.isCompleted()) {
                        Unit unit = Unit.INSTANCE;
                        $this$withLock_u24default$iv.unlock(owner$iv);
                        return unit;
                    }
                    try {
                        anonymousClass1.L$0 = $this$withLock_u24default$iv;
                        anonymousClass1.label = 2;
                        if (runOnce.doRun(anonymousClass1) == coroutine_suspended) {
                            return coroutine_suspended;
                        }
                        Mutex mutex = owner$iv;
                        $this$withLock_u24default$iv2 = $this$withLock_u24default$iv;
                        $this$withLock_u24default$iv3 = mutex;
                        runOnce2 = runOnce;
                        runOnce2.didRun.complete(Unit.INSTANCE);
                        $this$withLock_u24default$iv2.unlock($this$withLock_u24default$iv3);
                        return Unit.INSTANCE;
                    } catch (Throwable th) {
                        th = th;
                        Mutex mutex2 = owner$iv;
                        $this$withLock_u24default$iv2 = $this$withLock_u24default$iv;
                        $this$withLock_u24default$iv3 = mutex2;
                    }
                } catch (Throwable th2) {
                    th = th2;
                    Mutex mutex3 = owner$iv;
                    $this$withLock_u24default$iv2 = $this$withLock_u24default$iv;
                    $this$withLock_u24default$iv3 = mutex3;
                }
                $this$withLock_u24default$iv2.unlock($this$withLock_u24default$iv3);
                throw th;
            case 1:
                runOnce = this;
                $this$withLock_u24default$iv = (Mutex) anonymousClass1.L$0;
                ResultKt.throwOnFailure($result);
                owner$iv = null;
                if (!runOnce.didRun.isCompleted()) {
                }
                $this$withLock_u24default$iv2.unlock($this$withLock_u24default$iv3);
                throw th;
            case 2:
                runOnce2 = this;
                $this$withLock_u24default$iv3 = null;
                $this$withLock_u24default$iv2 = (Mutex) anonymousClass1.L$0;
                try {
                    ResultKt.throwOnFailure($result);
                    runOnce2.didRun.complete(Unit.INSTANCE);
                    $this$withLock_u24default$iv2.unlock($this$withLock_u24default$iv3);
                    return Unit.INSTANCE;
                } catch (Throwable th3) {
                    th = th3;
                }
                break;
            default:
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }
    }
}
