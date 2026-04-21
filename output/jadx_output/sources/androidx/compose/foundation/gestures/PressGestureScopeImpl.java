package androidx.compose.foundation.gestures;

import androidx.compose.ui.geometry.Rect;
import androidx.compose.ui.unit.Density;
import androidx.compose.ui.unit.DpRect;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.Boxing;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlinx.coroutines.sync.Mutex;
import kotlinx.coroutines.sync.MutexKt;

/* JADX INFO: compiled from: TapGestureDetector.kt */
/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000Z\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0006\n\u0002\u0010\b\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u0007\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\f\b\u0001\u0018\u00002\u00020\u00012\u00020\u0002B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005J\u0006\u0010\u000b\u001a\u00020\fJ\u0006\u0010\r\u001a\u00020\fJ\u000e\u0010\u000e\u001a\u00020\fH\u0086@¢\u0006\u0002\u0010\u000fJ\u000e\u0010\u0010\u001a\u00020\fH\u0096@¢\u0006\u0002\u0010\u000fJ\u000e\u0010\u0011\u001a\u00020\u0007H\u0096@¢\u0006\u0002\u0010\u000fJ\u0014\u0010\u0012\u001a\u00020\u0013*\u00020\u0014H\u0097\u0001¢\u0006\u0004\b\u0015\u0010\u0016J\u0014\u0010\u0012\u001a\u00020\u0013*\u00020\u0017H\u0097\u0001¢\u0006\u0004\b\u0018\u0010\u0019J\u0014\u0010\u001a\u001a\u00020\u0014*\u00020\u0013H\u0097\u0001¢\u0006\u0004\b\u001b\u0010\u001cJ\u0014\u0010\u001a\u001a\u00020\u0014*\u00020\u001dH\u0097\u0001¢\u0006\u0004\b\u001b\u0010\u001eJ\u0014\u0010\u001a\u001a\u00020\u0014*\u00020\u0017H\u0097\u0001¢\u0006\u0004\b\u001f\u0010 J\u0014\u0010!\u001a\u00020\"*\u00020#H\u0097\u0001¢\u0006\u0004\b$\u0010%J\u0014\u0010&\u001a\u00020\u001d*\u00020\u0014H\u0097\u0001¢\u0006\u0004\b'\u0010\u001eJ\u0014\u0010&\u001a\u00020\u001d*\u00020\u0017H\u0097\u0001¢\u0006\u0004\b(\u0010 J\r\u0010)\u001a\u00020**\u00020+H\u0097\u0001J\u0014\u0010,\u001a\u00020#*\u00020\"H\u0097\u0001¢\u0006\u0004\b-\u0010%J\u0014\u0010.\u001a\u00020\u0017*\u00020\u0013H\u0097\u0001¢\u0006\u0004\b/\u00100J\u0014\u0010.\u001a\u00020\u0017*\u00020\u001dH\u0097\u0001¢\u0006\u0004\b/\u00101J\u0014\u0010.\u001a\u00020\u0017*\u00020\u0014H\u0097\u0001¢\u0006\u0004\b2\u00101R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\b\u001a\u00020\u0007X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\nX\u0082\u0004¢\u0006\u0002\n\u0000R\u0014\u0010\u0003\u001a\u00020\u001d8\u0016X\u0097\u0005¢\u0006\u0006\u001a\u0004\b3\u00104R\u0014\u00105\u001a\u00020\u001d8\u0016X\u0097\u0005¢\u0006\u0006\u001a\u0004\b6\u00104¨\u00067"}, d2 = {"Landroidx/compose/foundation/gestures/PressGestureScopeImpl;", "Landroidx/compose/foundation/gestures/PressGestureScope;", "Landroidx/compose/ui/unit/Density;", "density", "<init>", "(Landroidx/compose/ui/unit/Density;)V", "isReleased", "", "isCanceled", "mutex", "Lkotlinx/coroutines/sync/Mutex;", "cancel", "", "release", "reset", "(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "awaitRelease", "tryAwaitRelease", "roundToPx", "", "Landroidx/compose/ui/unit/Dp;", "roundToPx-0680j_4", "(F)I", "Landroidx/compose/ui/unit/TextUnit;", "roundToPx--R2X_6o", "(J)I", "toDp", "toDp-u2uoSUM", "(I)F", "", "(F)F", "toDp-GaN1DYA", "(J)F", "toDpSize", "Landroidx/compose/ui/unit/DpSize;", "Landroidx/compose/ui/geometry/Size;", "toDpSize-k-rfVVM", "(J)J", "toPx", "toPx-0680j_4", "toPx--R2X_6o", "toRect", "Landroidx/compose/ui/geometry/Rect;", "Landroidx/compose/ui/unit/DpRect;", "toSize", "toSize-XkaWNTQ", "toSp", "toSp-kPz2Gy4", "(I)J", "(F)J", "toSp-0xMU5do", "getDensity", "()F", "fontScale", "getFontScale", "foundation"}, k = 1, mv = {2, 0, 0}, xi = 48)
public final class PressGestureScopeImpl implements PressGestureScope, Density {
    public static final int $stable = 0;
    private final /* synthetic */ Density $$delegate_0;
    private boolean isCanceled;
    private boolean isReleased;
    private final Mutex mutex = MutexKt.Mutex(false);

    /* JADX INFO: renamed from: androidx.compose.foundation.gestures.PressGestureScopeImpl$awaitRelease$1, reason: invalid class name */
    /* JADX INFO: compiled from: TapGestureDetector.kt */
    @Metadata(k = 3, mv = {2, 0, 0}, xi = 48)
    @DebugMetadata(c = "androidx.compose.foundation.gestures.PressGestureScopeImpl", f = "TapGestureDetector.kt", i = {}, l = {533}, m = "awaitRelease", n = {}, s = {}, v = 1)
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
            return PressGestureScopeImpl.this.awaitRelease(this);
        }
    }

    /* JADX INFO: renamed from: androidx.compose.foundation.gestures.PressGestureScopeImpl$reset$1, reason: invalid class name and case insensitive filesystem */
    /* JADX INFO: compiled from: TapGestureDetector.kt */
    @Metadata(k = 3, mv = {2, 0, 0}, xi = 48)
    @DebugMetadata(c = "androidx.compose.foundation.gestures.PressGestureScopeImpl", f = "TapGestureDetector.kt", i = {}, l = {527}, m = "reset", n = {}, s = {}, v = 1)
    static final class C02561 extends ContinuationImpl {
        int label;
        /* synthetic */ Object result;

        C02561(Continuation<? super C02561> continuation) {
            super(continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            this.result = obj;
            this.label |= Integer.MIN_VALUE;
            return PressGestureScopeImpl.this.reset(this);
        }
    }

    /* JADX INFO: renamed from: androidx.compose.foundation.gestures.PressGestureScopeImpl$tryAwaitRelease$1, reason: invalid class name and case insensitive filesystem */
    /* JADX INFO: compiled from: TapGestureDetector.kt */
    @Metadata(k = 3, mv = {2, 0, 0}, xi = 48)
    @DebugMetadata(c = "androidx.compose.foundation.gestures.PressGestureScopeImpl", f = "TapGestureDetector.kt", i = {}, l = {540}, m = "tryAwaitRelease", n = {}, s = {}, v = 1)
    static final class C02571 extends ContinuationImpl {
        int label;
        /* synthetic */ Object result;

        C02571(Continuation<? super C02571> continuation) {
            super(continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            this.result = obj;
            this.label |= Integer.MIN_VALUE;
            return PressGestureScopeImpl.this.tryAwaitRelease(this);
        }
    }

    @Override // androidx.compose.ui.unit.Density
    public float getDensity() {
        return this.$$delegate_0.getDensity();
    }

    @Override // androidx.compose.ui.unit.FontScaling
    public float getFontScale() {
        return this.$$delegate_0.getFontScale();
    }

    @Override // androidx.compose.ui.unit.Density
    /* JADX INFO: renamed from: roundToPx--R2X_6o */
    public int mo398roundToPxR2X_6o(long j) {
        return this.$$delegate_0.mo398roundToPxR2X_6o(j);
    }

    @Override // androidx.compose.ui.unit.Density
    /* JADX INFO: renamed from: roundToPx-0680j_4 */
    public int mo399roundToPx0680j_4(float f) {
        return this.$$delegate_0.mo399roundToPx0680j_4(f);
    }

    @Override // androidx.compose.ui.unit.FontScaling
    /* JADX INFO: renamed from: toDp-GaN1DYA */
    public float mo400toDpGaN1DYA(long j) {
        return this.$$delegate_0.mo400toDpGaN1DYA(j);
    }

    @Override // androidx.compose.ui.unit.Density
    /* JADX INFO: renamed from: toDp-u2uoSUM */
    public float mo401toDpu2uoSUM(float f) {
        return this.$$delegate_0.mo401toDpu2uoSUM(f);
    }

    @Override // androidx.compose.ui.unit.Density
    /* JADX INFO: renamed from: toDp-u2uoSUM */
    public float mo402toDpu2uoSUM(int i) {
        return this.$$delegate_0.mo402toDpu2uoSUM(i);
    }

    @Override // androidx.compose.ui.unit.Density
    /* JADX INFO: renamed from: toDpSize-k-rfVVM */
    public long mo403toDpSizekrfVVM(long j) {
        return this.$$delegate_0.mo403toDpSizekrfVVM(j);
    }

    @Override // androidx.compose.ui.unit.Density
    /* JADX INFO: renamed from: toPx--R2X_6o */
    public float mo404toPxR2X_6o(long j) {
        return this.$$delegate_0.mo404toPxR2X_6o(j);
    }

    @Override // androidx.compose.ui.unit.Density
    /* JADX INFO: renamed from: toPx-0680j_4 */
    public float mo405toPx0680j_4(float f) {
        return this.$$delegate_0.mo405toPx0680j_4(f);
    }

    @Override // androidx.compose.ui.unit.Density
    public Rect toRect(DpRect dpRect) {
        return this.$$delegate_0.toRect(dpRect);
    }

    @Override // androidx.compose.ui.unit.Density
    /* JADX INFO: renamed from: toSize-XkaWNTQ */
    public long mo406toSizeXkaWNTQ(long j) {
        return this.$$delegate_0.mo406toSizeXkaWNTQ(j);
    }

    @Override // androidx.compose.ui.unit.FontScaling
    /* JADX INFO: renamed from: toSp-0xMU5do */
    public long mo407toSp0xMU5do(float f) {
        return this.$$delegate_0.mo407toSp0xMU5do(f);
    }

    @Override // androidx.compose.ui.unit.Density
    /* JADX INFO: renamed from: toSp-kPz2Gy4 */
    public long mo408toSpkPz2Gy4(float f) {
        return this.$$delegate_0.mo408toSpkPz2Gy4(f);
    }

    @Override // androidx.compose.ui.unit.Density
    /* JADX INFO: renamed from: toSp-kPz2Gy4 */
    public long mo409toSpkPz2Gy4(int i) {
        return this.$$delegate_0.mo409toSpkPz2Gy4(i);
    }

    public PressGestureScopeImpl(Density density) {
        this.$$delegate_0 = density;
    }

    public final void cancel() {
        this.isCanceled = true;
        if (this.mutex.isLocked()) {
            Mutex.DefaultImpls.unlock$default(this.mutex, null, 1, null);
        }
    }

    public final void release() {
        this.isReleased = true;
        if (this.mutex.isLocked()) {
            Mutex.DefaultImpls.unlock$default(this.mutex, null, 1, null);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:7:0x0014  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final Object reset(Continuation<? super Unit> continuation) {
        C02561 c02561;
        PressGestureScopeImpl pressGestureScopeImpl;
        if (continuation instanceof C02561) {
            c02561 = (C02561) continuation;
            if ((c02561.label & Integer.MIN_VALUE) != 0) {
                c02561.label -= Integer.MIN_VALUE;
            } else {
                c02561 = new C02561(continuation);
            }
        }
        Object $result = c02561.result;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        switch (c02561.label) {
            case 0:
                ResultKt.throwOnFailure($result);
                Mutex mutex = this.mutex;
                c02561.label = 1;
                if (Mutex.DefaultImpls.lock$default(mutex, null, c02561, 1, null) == coroutine_suspended) {
                    return coroutine_suspended;
                }
                pressGestureScopeImpl = this;
                break;
                break;
            case 1:
                pressGestureScopeImpl = this;
                ResultKt.throwOnFailure($result);
                break;
            default:
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }
        pressGestureScopeImpl.isReleased = false;
        pressGestureScopeImpl.isCanceled = false;
        return Unit.INSTANCE;
    }

    /* JADX WARN: Removed duplicated region for block: B:7:0x0014  */
    @Override // androidx.compose.foundation.gestures.PressGestureScope
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public Object awaitRelease(Continuation<? super Unit> continuation) {
        AnonymousClass1 anonymousClass1;
        Object objTryAwaitRelease;
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
                anonymousClass1.label = 1;
                objTryAwaitRelease = tryAwaitRelease(anonymousClass1);
                if (objTryAwaitRelease == coroutine_suspended) {
                    return coroutine_suspended;
                }
                break;
            case 1:
                ResultKt.throwOnFailure($result);
                objTryAwaitRelease = $result;
                break;
            default:
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }
        if (!((Boolean) objTryAwaitRelease).booleanValue()) {
            throw new GestureCancellationException("The press gesture was canceled.");
        }
        return Unit.INSTANCE;
    }

    /* JADX WARN: Removed duplicated region for block: B:7:0x0014  */
    @Override // androidx.compose.foundation.gestures.PressGestureScope
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public Object tryAwaitRelease(Continuation<? super Boolean> continuation) {
        C02571 c02571;
        PressGestureScopeImpl pressGestureScopeImpl;
        PressGestureScopeImpl pressGestureScopeImpl2;
        if (continuation instanceof C02571) {
            c02571 = (C02571) continuation;
            if ((c02571.label & Integer.MIN_VALUE) != 0) {
                c02571.label -= Integer.MIN_VALUE;
            } else {
                c02571 = new C02571(continuation);
            }
        }
        Object $result = c02571.result;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        switch (c02571.label) {
            case 0:
                ResultKt.throwOnFailure($result);
                pressGestureScopeImpl = this;
                if (!pressGestureScopeImpl.isReleased && !pressGestureScopeImpl.isCanceled) {
                    Mutex mutex = pressGestureScopeImpl.mutex;
                    c02571.label = 1;
                    if (Mutex.DefaultImpls.lock$default(mutex, null, c02571, 1, null) == coroutine_suspended) {
                        return coroutine_suspended;
                    }
                    pressGestureScopeImpl2 = pressGestureScopeImpl;
                    Mutex.DefaultImpls.unlock$default(pressGestureScopeImpl2.mutex, null, 1, null);
                    pressGestureScopeImpl = pressGestureScopeImpl2;
                }
                return Boxing.boxBoolean(pressGestureScopeImpl.isReleased);
            case 1:
                pressGestureScopeImpl2 = this;
                ResultKt.throwOnFailure($result);
                Mutex.DefaultImpls.unlock$default(pressGestureScopeImpl2.mutex, null, 1, null);
                pressGestureScopeImpl = pressGestureScopeImpl2;
                return Boxing.boxBoolean(pressGestureScopeImpl.isReleased);
            default:
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }
    }
}
