package coil.util;

import androidx.lifecycle.DefaultLifecycleObserver;
import androidx.lifecycle.Lifecycle;
import androidx.lifecycle.LifecycleObserver;
import androidx.lifecycle.LifecycleOwner;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.DebugProbesKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Ref;
import kotlinx.coroutines.CancellableContinuation;
import kotlinx.coroutines.CancellableContinuationImpl;

/* JADX INFO: renamed from: coil.util.-Lifecycles, reason: invalid class name */
/* JADX INFO: compiled from: Lifecycles.kt */
/* JADX INFO: loaded from: classes21.dex */
@Metadata(d1 = {"\u0000\u0014\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\u001a\u0012\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\u0081@¢\u0006\u0002\u0010\u0003\u001a\u0014\u0010\u0004\u001a\u00020\u0001*\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u0006H\u0001¨\u0006\u0007"}, d2 = {"awaitStarted", "", "Landroidx/lifecycle/Lifecycle;", "(Landroidx/lifecycle/Lifecycle;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "removeAndAddObserver", "observer", "Landroidx/lifecycle/LifecycleObserver;", "coil-base_release"}, k = 2, mv = {2, 0, 0}, xi = 48)
public final class Lifecycles {

    /* JADX INFO: renamed from: coil.util.-Lifecycles$awaitStarted$1, reason: invalid class name */
    /* JADX INFO: compiled from: Lifecycles.kt */
    @Metadata(k = 3, mv = {2, 0, 0}, xi = 48)
    @DebugMetadata(c = "coil.util.-Lifecycles", f = "Lifecycles.kt", i = {0, 0}, l = {44}, m = "awaitStarted", n = {"$this$awaitStarted", "observer"}, s = {"L$0", "L$1"})
    static final class AnonymousClass1 extends ContinuationImpl {
        Object L$0;
        Object L$1;
        int label;
        /* synthetic */ Object result;

        AnonymousClass1(Continuation<? super AnonymousClass1> continuation) {
            super(continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            this.result = obj;
            this.label |= Integer.MIN_VALUE;
            return Lifecycles.awaitStarted(null, this);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:30:0x00a0  */
    /* JADX WARN: Removed duplicated region for block: B:37:0x00b3  */
    /* JADX WARN: Removed duplicated region for block: B:7:0x0014  */
    /* JADX WARN: Type inference failed for: r10v0, types: [T, coil.util.-Lifecycles$awaitStarted$2$1] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static final Object awaitStarted(Lifecycle lifecycle, Continuation<? super Unit> continuation) throws Throwable {
        AnonymousClass1 anonymousClass1;
        Lifecycle $this$awaitStarted;
        Ref.ObjectRef observer;
        Throwable th;
        LifecycleObserver p0;
        LifecycleObserver p02;
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
                $this$awaitStarted = lifecycle;
                if ($this$awaitStarted.getState().isAtLeast(Lifecycle.State.STARTED)) {
                    return Unit.INSTANCE;
                }
                Ref.ObjectRef observer2 = new Ref.ObjectRef();
                try {
                    anonymousClass1.L$0 = $this$awaitStarted;
                    anonymousClass1.L$1 = observer2;
                    anonymousClass1.label = 1;
                    Continuation uCont$iv = anonymousClass1;
                    CancellableContinuationImpl cancellable$iv = new CancellableContinuationImpl(IntrinsicsKt.intercepted(uCont$iv), 1);
                    cancellable$iv.initCancellability();
                    final CancellableContinuationImpl continuation2 = cancellable$iv;
                    observer2.element = new DefaultLifecycleObserver() { // from class: coil.util.-Lifecycles$awaitStarted$2$1
                        @Override // androidx.lifecycle.DefaultLifecycleObserver
                        public void onStart(LifecycleOwner owner) {
                            CancellableContinuation<Unit> cancellableContinuation = continuation2;
                            Result.Companion companion = Result.INSTANCE;
                            cancellableContinuation.resumeWith(Result.m8542constructorimpl(Unit.INSTANCE));
                        }
                    };
                    T t = observer2.element;
                    Intrinsics.checkNotNull(t);
                    $this$awaitStarted.addObserver((LifecycleObserver) t);
                    Object result = cancellable$iv.getResult();
                    if (result == IntrinsicsKt.getCOROUTINE_SUSPENDED()) {
                        DebugProbesKt.probeCoroutineSuspended(anonymousClass1);
                        break;
                    }
                    if (result == coroutine_suspended) {
                        return coroutine_suspended;
                    }
                    observer = observer2;
                    p02 = (LifecycleObserver) observer.element;
                    if (p02 != null) {
                        $this$awaitStarted.removeObserver(p02);
                    }
                    return Unit.INSTANCE;
                } catch (Throwable th2) {
                    observer = observer2;
                    th = th2;
                    p0 = (LifecycleObserver) observer.element;
                    if (p0 != null) {
                        $this$awaitStarted.removeObserver(p0);
                    }
                    throw th;
                }
            case 1:
                observer = (Ref.ObjectRef) anonymousClass1.L$1;
                $this$awaitStarted = (Lifecycle) anonymousClass1.L$0;
                try {
                    ResultKt.throwOnFailure($result);
                    p02 = (LifecycleObserver) observer.element;
                    if (p02 != null) {
                    }
                    return Unit.INSTANCE;
                } catch (Throwable th3) {
                    th = th3;
                    p0 = (LifecycleObserver) observer.element;
                    if (p0 != null) {
                    }
                    throw th;
                }
            default:
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }
    }

    public static final void removeAndAddObserver(Lifecycle $this$removeAndAddObserver, LifecycleObserver observer) {
        $this$removeAndAddObserver.removeObserver(observer);
        $this$removeAndAddObserver.addObserver(observer);
    }
}
