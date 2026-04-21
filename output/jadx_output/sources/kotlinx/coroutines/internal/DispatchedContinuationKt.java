package kotlinx.coroutines.internal;

import androidx.exifinterface.media.ExifInterface;
import java.util.concurrent.CancellationException;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.CoroutineContext;
import kotlin.jvm.functions.Function0;
import kotlinx.coroutines.CompletionStateKt;
import kotlinx.coroutines.CoroutineContextKt;
import kotlinx.coroutines.CoroutineDispatcher;
import kotlinx.coroutines.DebugKt;
import kotlinx.coroutines.DispatchException;
import kotlinx.coroutines.EventLoop;
import kotlinx.coroutines.Job;
import kotlinx.coroutines.ThreadLocalEventLoop;
import kotlinx.coroutines.UndispatchedCoroutine;

/* JADX INFO: compiled from: DispatchedContinuation.kt */
/* JADX INFO: loaded from: classes23.dex */
@Metadata(d1 = {"\u0000X\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\u001a%\u0010\u0003\u001a\u00020\u0004*\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u00072\n\u0010\b\u001a\u00060\tj\u0002`\nH\u0000¢\u0006\u0002\u0010\u000b\u001a\u0014\u0010\f\u001a\u00020\r*\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u0007H\u0000\u001a+\u0010\u000e\u001a\u00020\u0004\"\u0004\b\u0000\u0010\u000f*\b\u0012\u0004\u0012\u0002H\u000f0\u00102\f\u0010\u0011\u001a\b\u0012\u0004\u0012\u0002H\u000f0\u0012H\u0007¢\u0006\u0002\u0010\u0013\u001a\u0012\u0010\u0014\u001a\u00020\r*\b\u0012\u0004\u0012\u00020\u00040\u0015H\u0000\u001a;\u0010\u0016\u001a\u00020\r*\u0006\u0012\u0002\b\u00030\u00152\b\u0010\u0017\u001a\u0004\u0018\u00010\u00182\u0006\u0010\u0019\u001a\u00020\u001a2\b\b\u0002\u0010\u001b\u001a\u00020\r2\f\u0010\u001c\u001a\b\u0012\u0004\u0012\u00020\u00040\u001dH\u0082\b\"\u000e\u0010\u0000\u001a\u00020\u0001X\u0082\u0004¢\u0006\u0002\n\u0000\"\u0010\u0010\u0002\u001a\u00020\u00018\u0000X\u0081\u0004¢\u0006\u0002\n\u0000¨\u0006\u001e"}, d2 = {"UNDEFINED", "Lkotlinx/coroutines/internal/Symbol;", "REUSABLE_CLAIMED", "safeDispatch", "", "Lkotlinx/coroutines/CoroutineDispatcher;", "context", "Lkotlin/coroutines/CoroutineContext;", "runnable", "Ljava/lang/Runnable;", "Lkotlinx/coroutines/Runnable;", "(Lkotlinx/coroutines/CoroutineDispatcher;Lkotlin/coroutines/CoroutineContext;Ljava/lang/Runnable;)V", "safeIsDispatchNeeded", "", "resumeCancellableWith", ExifInterface.GPS_DIRECTION_TRUE, "Lkotlin/coroutines/Continuation;", "result", "Lkotlin/Result;", "(Lkotlin/coroutines/Continuation;Ljava/lang/Object;)V", "yieldUndispatched", "Lkotlinx/coroutines/internal/DispatchedContinuation;", "executeUnconfined", "contState", "", "mode", "", "doYield", "block", "Lkotlin/Function0;", "kotlinx-coroutines-core"}, k = 2, mv = {2, 1, 0}, xi = 48)
public final class DispatchedContinuationKt {
    private static final Symbol UNDEFINED = new Symbol("UNDEFINED");
    public static final Symbol REUSABLE_CLAIMED = new Symbol("REUSABLE_CLAIMED");

    public static final void safeDispatch(CoroutineDispatcher $this$safeDispatch, CoroutineContext context, Runnable runnable) {
        try {
            $this$safeDispatch.mo10112dispatch(context, runnable);
        } catch (Throwable e) {
            throw new DispatchException(e, $this$safeDispatch, context);
        }
    }

    public static final boolean safeIsDispatchNeeded(CoroutineDispatcher $this$safeIsDispatchNeeded, CoroutineContext context) throws DispatchException {
        try {
            return $this$safeIsDispatchNeeded.isDispatchNeeded(context);
        } catch (Throwable e) {
            throw new DispatchException(e, $this$safeIsDispatchNeeded, context);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:22:0x00ad  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static final <T> void resumeCancellableWith(Continuation<? super T> continuation, Object result) {
        boolean z;
        UndispatchedCoroutine<?> undispatchedCoroutineUpdateUndispatchedCompletion;
        if (!(continuation instanceof DispatchedContinuation)) {
            continuation.resumeWith(result);
            return;
        }
        DispatchedContinuation this_$iv = (DispatchedContinuation) continuation;
        Object state$iv = CompletionStateKt.toState(result);
        if (safeIsDispatchNeeded(this_$iv.dispatcher, this_$iv.get$context())) {
            this_$iv._state = state$iv;
            this_$iv.resumeMode = 1;
            safeDispatch(this_$iv.dispatcher, this_$iv.get$context(), this_$iv);
            return;
        }
        if (DebugKt.getASSERTIONS_ENABLED()) {
        }
        EventLoop eventLoop$iv$iv = ThreadLocalEventLoop.INSTANCE.getEventLoop$kotlinx_coroutines_core();
        if (eventLoop$iv$iv.isUnconfinedLoopActive()) {
            this_$iv._state = state$iv;
            this_$iv.resumeMode = 1;
            eventLoop$iv$iv.dispatchUnconfined(this_$iv);
            return;
        }
        DispatchedContinuation $this$runUnconfinedEventLoop$iv$iv$iv = this_$iv;
        eventLoop$iv$iv.incrementUseCount(true);
        try {
            Job job$iv$iv = (Job) this_$iv.get$context().get(Job.INSTANCE);
            if (job$iv$iv != null) {
                try {
                    if (job$iv$iv.isActive()) {
                        z = false;
                    } else {
                        CancellationException cause$iv$iv = job$iv$iv.getCancellationException();
                        this_$iv.cancelCompletedResult$kotlinx_coroutines_core(state$iv, cause$iv$iv);
                        Result.Companion companion = Result.INSTANCE;
                        this_$iv.resumeWith(Result.m8542constructorimpl(ResultKt.createFailure(cause$iv$iv)));
                        z = true;
                    }
                    try {
                        if (!z) {
                            Continuation<T> continuation2 = this_$iv.continuation;
                            Object countOrElement$iv$iv$iv = this_$iv.countOrElement;
                            CoroutineContext context$iv$iv$iv = continuation2.get$context();
                            try {
                                Object oldValue$iv$iv$iv = ThreadContextKt.updateThreadContext(context$iv$iv$iv, countOrElement$iv$iv$iv);
                                if (oldValue$iv$iv$iv != ThreadContextKt.NO_THREAD_ELEMENTS) {
                                    try {
                                        undispatchedCoroutineUpdateUndispatchedCompletion = CoroutineContextKt.updateUndispatchedCompletion(continuation2, context$iv$iv$iv, oldValue$iv$iv$iv);
                                    } catch (Throwable th) {
                                        e$iv$iv$iv = th;
                                        try {
                                            $this$runUnconfinedEventLoop$iv$iv$iv.handleFatalException$kotlinx_coroutines_core(e$iv$iv$iv);
                                        } finally {
                                            eventLoop$iv$iv.decrementUseCount(true);
                                        }
                                    }
                                } else {
                                    undispatchedCoroutineUpdateUndispatchedCompletion = null;
                                }
                                UndispatchedCoroutine<?> undispatchedCoroutine = undispatchedCoroutineUpdateUndispatchedCompletion;
                                try {
                                    try {
                                        this_$iv.continuation.resumeWith(result);
                                        Unit unit = Unit.INSTANCE;
                                        if (undispatchedCoroutine == null || undispatchedCoroutine.clearThreadContext()) {
                                            ThreadContextKt.restoreThreadContext(context$iv$iv$iv, oldValue$iv$iv$iv);
                                        }
                                    } catch (Throwable th2) {
                                        th = th2;
                                        if (undispatchedCoroutine == null || undispatchedCoroutine.clearThreadContext()) {
                                            ThreadContextKt.restoreThreadContext(context$iv$iv$iv, oldValue$iv$iv$iv);
                                        }
                                        throw th;
                                    }
                                } catch (Throwable th3) {
                                    th = th3;
                                }
                            } catch (Throwable th4) {
                                e$iv$iv$iv = th4;
                            }
                        }
                        while (eventLoop$iv$iv.processUnconfinedEvent()) {
                        }
                    } catch (Throwable th5) {
                        e$iv$iv$iv = th5;
                    }
                } catch (Throwable th6) {
                    e$iv$iv$iv = th6;
                    $this$runUnconfinedEventLoop$iv$iv$iv.handleFatalException$kotlinx_coroutines_core(e$iv$iv$iv);
                }
            }
        } catch (Throwable th7) {
            e$iv$iv$iv = th7;
        }
    }

    public static final boolean yieldUndispatched(DispatchedContinuation<? super Unit> dispatchedContinuation) {
        Object contState$iv = Unit.INSTANCE;
        if (DebugKt.getASSERTIONS_ENABLED()) {
        }
        EventLoop eventLoop$iv = ThreadLocalEventLoop.INSTANCE.getEventLoop$kotlinx_coroutines_core();
        if (eventLoop$iv.isUnconfinedQueueEmpty()) {
            return false;
        }
        if (eventLoop$iv.isUnconfinedLoopActive()) {
            dispatchedContinuation._state = contState$iv;
            dispatchedContinuation.resumeMode = 1;
            eventLoop$iv.dispatchUnconfined(dispatchedContinuation);
            return true;
        }
        DispatchedContinuation<? super Unit> $this$runUnconfinedEventLoop$iv$iv = dispatchedContinuation;
        eventLoop$iv.incrementUseCount(true);
        try {
            dispatchedContinuation.run();
            do {
            } while (eventLoop$iv.processUnconfinedEvent());
        } finally {
            try {
            } finally {
            }
        }
        return false;
    }

    static /* synthetic */ boolean executeUnconfined$default(DispatchedContinuation $this$executeUnconfined_u24default, Object contState, int mode, boolean doYield, Function0 block, int i, Object obj) {
        if ((i & 4) != 0) {
            doYield = false;
        }
        if (DebugKt.getASSERTIONS_ENABLED()) {
            if ((mode != -1 ? 1 : 0) == 0) {
                throw new AssertionError();
            }
        }
        EventLoop eventLoop = ThreadLocalEventLoop.INSTANCE.getEventLoop$kotlinx_coroutines_core();
        if (doYield && eventLoop.isUnconfinedQueueEmpty()) {
            return false;
        }
        if (eventLoop.isUnconfinedLoopActive()) {
            $this$executeUnconfined_u24default._state = contState;
            $this$executeUnconfined_u24default.resumeMode = mode;
            eventLoop.dispatchUnconfined($this$executeUnconfined_u24default);
            return true;
        }
        DispatchedContinuation $this$runUnconfinedEventLoop$iv = $this$executeUnconfined_u24default;
        eventLoop.incrementUseCount(true);
        try {
            block.invoke();
            do {
            } while (eventLoop.processUnconfinedEvent());
        } finally {
            try {
            } finally {
            }
        }
        return false;
    }

    private static final boolean executeUnconfined(DispatchedContinuation<?> dispatchedContinuation, Object contState, int mode, boolean doYield, Function0<Unit> function0) {
        if (DebugKt.getASSERTIONS_ENABLED()) {
            if ((mode != -1 ? 1 : 0) == 0) {
                throw new AssertionError();
            }
        }
        EventLoop eventLoop = ThreadLocalEventLoop.INSTANCE.getEventLoop$kotlinx_coroutines_core();
        if (doYield && eventLoop.isUnconfinedQueueEmpty()) {
            return false;
        }
        if (eventLoop.isUnconfinedLoopActive()) {
            dispatchedContinuation._state = contState;
            dispatchedContinuation.resumeMode = mode;
            eventLoop.dispatchUnconfined(dispatchedContinuation);
            return true;
        }
        DispatchedContinuation<?> $this$runUnconfinedEventLoop$iv = dispatchedContinuation;
        eventLoop.incrementUseCount(true);
        try {
            function0.invoke();
            do {
            } while (eventLoop.processUnconfinedEvent());
        } finally {
            try {
            } finally {
            }
        }
        return false;
    }
}
