package androidx.compose.foundation.gestures;

import androidx.autofill.HintConstants;
import androidx.compose.animation.core.AnimationScope;
import androidx.compose.animation.core.AnimationSpecKt;
import androidx.compose.animation.core.AnimationState;
import androidx.compose.animation.core.AnimationStateKt;
import androidx.compose.animation.core.AnimationVector1D;
import androidx.compose.animation.core.EasingKt;
import androidx.compose.animation.core.SuspendAnimationKt;
import androidx.compose.foundation.ComposeFoundationFlags;
import androidx.compose.foundation.MutatePriority;
import androidx.compose.foundation.gestures.MouseWheelScrollingLogic;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.ui.geometry.Offset;
import androidx.compose.ui.input.nestedscroll.NestedScrollSource;
import androidx.compose.ui.input.pointer.PointerEvent;
import androidx.compose.ui.input.pointer.PointerEventPass;
import androidx.compose.ui.input.pointer.PointerEventType;
import androidx.compose.ui.input.pointer.PointerInputChange;
import androidx.compose.ui.unit.Density;
import androidx.compose.ui.unit.Velocity;
import androidx.exifinterface.media.ExifInterface;
import androidx.media3.extractor.ts.TsExtractor;
import com.google.firebase.firestore.model.Values;
import java.util.List;
import java.util.concurrent.CancellationException;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.Boxing;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.RestrictedSuspendLambda;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Ref;
import kotlin.math.MathKt;
import kotlin.ranges.RangesKt;
import kotlin.sequences.Sequence;
import kotlin.sequences.SequenceScope;
import kotlin.sequences.SequencesKt;
import kotlinx.coroutines.BuildersKt__Builders_commonKt;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.CoroutineScopeKt;
import kotlinx.coroutines.Job;
import kotlinx.coroutines.JobKt;
import kotlinx.coroutines.SupervisorKt;
import kotlinx.coroutines.TimeoutKt;
import kotlinx.coroutines.channels.Channel;
import kotlinx.coroutines.channels.ChannelKt;
import kotlinx.coroutines.channels.ChannelResult;

/* JADX INFO: compiled from: MouseWheelScrollable.kt */
/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000¾\u0001\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0007\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0001\u0018\u00002\u00020\u0001:\u0001SBR\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u00121\u0010\u0006\u001a-\b\u0001\u0012\u0013\u0012\u00110\b¢\u0006\f\b\t\u0012\b\b\n\u0012\u0004\b\b(\u000b\u0012\n\u0012\b\u0012\u0004\u0012\u00020\r0\f\u0012\u0006\u0012\u0004\u0018\u00010\u00010\u0007\u0012\u0006\u0010\u000e\u001a\u00020\u000f¢\u0006\u0004\b\u0010\u0010\u0011J\u000e\u0010\u0013\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\u000fJ%\u0010\u0014\u001a\u00020\r2\u0006\u0010\u0015\u001a\u00020\u00162\u0006\u0010\u0017\u001a\u00020\u00182\u0006\u0010\u0019\u001a\u00020\u001a¢\u0006\u0004\b\u001b\u0010\u001cJ\f\u0010 \u001a\u00020\r*\u00020\u0016H\u0002J\u000e\u0010'\u001a\u00020\r2\u0006\u0010(\u001a\u00020)J;\u0010*\u001a\u00020\r*\u00020\u00032'\u0010+\u001a#\b\u0001\u0012\u0004\u0012\u00020,\u0012\n\u0012\b\u0012\u0004\u0012\u00020\r0\f\u0012\u0006\u0012\u0004\u0018\u00010\u00010\u0007¢\u0006\u0002\b-H\u0082@¢\u0006\u0002\u0010.J\u001f\u0010/\u001a\u00020\u001e2\u0006\u0010\u0015\u001a\u00020\u00162\u0006\u0010\u0019\u001a\u00020\u001aH\u0002¢\u0006\u0004\b0\u00101J\u0014\u00102\u001a\u0004\u0018\u00010#*\b\u0012\u0004\u0012\u00020#0\"H\u0002J\u0018\u00103\u001a\u00020#*\b\u0012\u0004\u0012\u00020#0\"H\u0082@¢\u0006\u0002\u00104J$\u00105\u001a\b\u0012\u0004\u0012\u0002H706\"\u0004\b\u0000\u001072\u000e\u00108\u001a\n\u0012\u0006\u0012\u0004\u0018\u0001H709H\u0002J\u001b\u0010:\u001a\u00020\u001e*\u00020\u00032\u0006\u0010;\u001a\u00020<H\u0002¢\u0006\u0004\b=\u0010>J\u0010\u0010A\u001a\u00020\r2\u0006\u0010;\u001a\u00020#H\u0002J*\u0010B\u001a\u00020\r*\u00020\u00032\u0006\u0010;\u001a\u00020#2\u0006\u0010C\u001a\u00020D2\u0006\u0010E\u001a\u00020DH\u0082@¢\u0006\u0002\u0010FJY\u0010G\u001a\u00020\r*\u00020,2\u0012\u0010H\u001a\u000e\u0012\u0004\u0012\u00020D\u0012\u0004\u0012\u00020J0I2\u0006\u0010K\u001a\u00020D2\u0006\u0010L\u001a\u00020M2!\u0010N\u001a\u001d\u0012\u0013\u0012\u00110D¢\u0006\f\b\t\u0012\b\b\n\u0012\u0004\b\b(P\u0012\u0004\u0012\u00020\u001e0OH\u0082@¢\u0006\u0002\u0010QJ\u0014\u0010B\u001a\u00020D*\u00020,2\u0006\u0010R\u001a\u00020DH\u0002R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004¢\u0006\u0002\n\u0000R;\u0010\u0006\u001a-\b\u0001\u0012\u0013\u0012\u00110\b¢\u0006\f\b\t\u0012\b\b\n\u0012\u0004\b\b(\u000b\u0012\n\u0012\b\u0012\u0004\u0012\u00020\r0\f\u0012\u0006\u0012\u0004\u0018\u00010\u00010\u0007X\u0082\u0004¢\u0006\u0004\n\u0002\u0010\u0012R\u000e\u0010\u000e\u001a\u00020\u000fX\u0082\u000e¢\u0006\u0002\n\u0000R\u0019\u0010\u001d\u001a\u00020\u001e*\u00020\u00168Â\u0002X\u0082\u0004¢\u0006\u0006\u001a\u0004\b\u001d\u0010\u001fR\u0014\u0010!\u001a\b\u0012\u0004\u0012\u00020#0\"X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010$\u001a\u00020\u001eX\u0082\u000e¢\u0006\u0002\n\u0000R\u0010\u0010%\u001a\u0004\u0018\u00010&X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010?\u001a\u00020@X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006T"}, d2 = {"Landroidx/compose/foundation/gestures/MouseWheelScrollingLogic;", "", "scrollingLogic", "Landroidx/compose/foundation/gestures/ScrollingLogic;", "mouseWheelScrollConfig", "Landroidx/compose/foundation/gestures/ScrollConfig;", "onScrollStopped", "Lkotlin/Function2;", "Landroidx/compose/ui/unit/Velocity;", "Lkotlin/ParameterName;", HintConstants.AUTOFILL_HINT_NAME, "velocity", "Lkotlin/coroutines/Continuation;", "", "density", "Landroidx/compose/ui/unit/Density;", "<init>", "(Landroidx/compose/foundation/gestures/ScrollingLogic;Landroidx/compose/foundation/gestures/ScrollConfig;Lkotlin/jvm/functions/Function2;Landroidx/compose/ui/unit/Density;)V", "Lkotlin/jvm/functions/Function2;", "updateDensity", "onPointerEvent", "pointerEvent", "Landroidx/compose/ui/input/pointer/PointerEvent;", "pass", "Landroidx/compose/ui/input/pointer/PointerEventPass;", "bounds", "Landroidx/compose/ui/unit/IntSize;", "onPointerEvent-H0pRuoY", "(Landroidx/compose/ui/input/pointer/PointerEvent;Landroidx/compose/ui/input/pointer/PointerEventPass;J)V", "isConsumed", "", "(Landroidx/compose/ui/input/pointer/PointerEvent;)Z", "consume", "channel", "Lkotlinx/coroutines/channels/Channel;", "Landroidx/compose/foundation/gestures/MouseWheelScrollingLogic$MouseWheelScrollDelta;", "isScrolling", "receivingMouseWheelEventsJob", "Lkotlinx/coroutines/Job;", "startReceivingMouseWheelEvents", "coroutineScope", "Lkotlinx/coroutines/CoroutineScope;", "userScroll", "block", "Landroidx/compose/foundation/gestures/NestedScrollScope;", "Lkotlin/ExtensionFunctionType;", "(Landroidx/compose/foundation/gestures/ScrollingLogic;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "onMouseWheel", "onMouseWheel-O0kMr_c", "(Landroidx/compose/ui/input/pointer/PointerEvent;J)Z", "sumOrNull", "busyReceive", "(Lkotlinx/coroutines/channels/Channel;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "untilNull", "Lkotlin/sequences/Sequence;", ExifInterface.LONGITUDE_EAST, "builderAction", "Lkotlin/Function0;", "canConsumeDelta", "scrollDelta", "Landroidx/compose/ui/geometry/Offset;", "canConsumeDelta-Uv8p0NA", "(Landroidx/compose/foundation/gestures/ScrollingLogic;J)Z", "velocityTracker", "Landroidx/compose/foundation/gestures/MouseWheelVelocityTracker;", "trackVelocity", "dispatchMouseWheelScroll", "threshold", "", "speed", "(Landroidx/compose/foundation/gestures/ScrollingLogic;Landroidx/compose/foundation/gestures/MouseWheelScrollingLogic$MouseWheelScrollDelta;FFLkotlin/coroutines/Continuation;)Ljava/lang/Object;", "animateMouseWheelScroll", "animationState", "Landroidx/compose/animation/core/AnimationState;", "Landroidx/compose/animation/core/AnimationVector1D;", "targetValue", "durationMillis", "", "shouldCancelAnimation", "Lkotlin/Function1;", "lastValue", "(Landroidx/compose/foundation/gestures/NestedScrollScope;Landroidx/compose/animation/core/AnimationState;FILkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "delta", "MouseWheelScrollDelta", "foundation"}, k = 1, mv = {2, 0, 0}, xi = 48)
public final class MouseWheelScrollingLogic {
    public static final int $stable = 8;
    private Density density;
    private boolean isScrolling;
    private final ScrollConfig mouseWheelScrollConfig;
    private final Function2<Velocity, Continuation<? super Unit>, Object> onScrollStopped;
    private Job receivingMouseWheelEventsJob;
    private final ScrollingLogic scrollingLogic;
    private final Channel<MouseWheelScrollDelta> channel = ChannelKt.Channel$default(Integer.MAX_VALUE, null, null, 6, null);
    private final MouseWheelVelocityTracker velocityTracker = new MouseWheelVelocityTracker();

    /* JADX INFO: renamed from: androidx.compose.foundation.gestures.MouseWheelScrollingLogic$dispatchMouseWheelScroll$1, reason: invalid class name */
    /* JADX INFO: compiled from: MouseWheelScrollable.kt */
    @Metadata(k = 3, mv = {2, 0, 0}, xi = 48)
    @DebugMetadata(c = "androidx.compose.foundation.gestures.MouseWheelScrollingLogic", f = "MouseWheelScrollable.kt", i = {0, 0, 0}, l = {288, 346}, m = "dispatchMouseWheelScroll", n = {"$this$dispatchMouseWheelScroll", "targetValue", "speed"}, s = {"L$0", "L$1", "F$0"}, v = 1)
    static final class AnonymousClass1 extends ContinuationImpl {
        float F$0;
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
            return MouseWheelScrollingLogic.this.dispatchMouseWheelScroll(null, null, 0.0f, 0.0f, this);
        }
    }

    /* JADX INFO: renamed from: androidx.compose.foundation.gestures.MouseWheelScrollingLogic$userScroll$1, reason: invalid class name and case insensitive filesystem */
    /* JADX INFO: compiled from: MouseWheelScrollable.kt */
    @Metadata(k = 3, mv = {2, 0, 0}, xi = 48)
    @DebugMetadata(c = "androidx.compose.foundation.gestures.MouseWheelScrollingLogic", f = "MouseWheelScrollable.kt", i = {}, l = {150}, m = "userScroll", n = {}, s = {}, v = 1)
    static final class C02541 extends ContinuationImpl {
        int label;
        /* synthetic */ Object result;

        C02541(Continuation<? super C02541> continuation) {
            super(continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            this.result = obj;
            this.label |= Integer.MIN_VALUE;
            return MouseWheelScrollingLogic.this.userScroll(null, null, this);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public MouseWheelScrollingLogic(ScrollingLogic scrollingLogic, ScrollConfig mouseWheelScrollConfig, Function2<? super Velocity, ? super Continuation<? super Unit>, ? extends Object> function2, Density density) {
        this.scrollingLogic = scrollingLogic;
        this.mouseWheelScrollConfig = mouseWheelScrollConfig;
        this.onScrollStopped = function2;
        this.density = density;
    }

    public final void updateDensity(Density density) {
        this.density = density;
    }

    /* JADX INFO: renamed from: onPointerEvent-H0pRuoY, reason: not valid java name */
    public final void m523onPointerEventH0pRuoY(PointerEvent pointerEvent, PointerEventPass pass, long bounds) {
        boolean z = false;
        if (ComposeFoundationFlags.isMouseWheel1DAxisLockingEnabled) {
            if (PointerEventType.m5959equalsimpl0(pointerEvent.getType(), PointerEventType.INSTANCE.m5968getScroll7fucELk())) {
                List<PointerInputChange> changes = pointerEvent.getChanges();
                int index$iv$iv$iv = 0;
                int size = changes.size();
                while (true) {
                    if (index$iv$iv$iv >= size) {
                        break;
                    }
                    Object item$iv$iv$iv = changes.get(index$iv$iv$iv);
                    PointerInputChange it$iv = (PointerInputChange) item$iv$iv$iv;
                    if (it$iv.isConsumed()) {
                        z = true;
                        break;
                    }
                    index$iv$iv$iv++;
                }
                if (z) {
                    return;
                }
                if (pass == PointerEventPass.Initial && this.isScrolling) {
                    m522onMouseWheelO0kMr_c(pointerEvent, bounds);
                    consume(pointerEvent);
                }
                if (pass == PointerEventPass.Main && !this.isScrolling) {
                    boolean consumed = m522onMouseWheelO0kMr_c(pointerEvent, bounds);
                    if (consumed) {
                        consume(pointerEvent);
                        return;
                    }
                    return;
                }
                return;
            }
            return;
        }
        if (pass != PointerEventPass.Main || !PointerEventType.m5959equalsimpl0(pointerEvent.getType(), PointerEventType.INSTANCE.m5968getScroll7fucELk())) {
            return;
        }
        List<PointerInputChange> changes2 = pointerEvent.getChanges();
        int index$iv$iv$iv2 = 0;
        int size2 = changes2.size();
        while (true) {
            if (index$iv$iv$iv2 >= size2) {
                break;
            }
            Object item$iv$iv$iv2 = changes2.get(index$iv$iv$iv2);
            PointerInputChange it$iv2 = (PointerInputChange) item$iv$iv$iv2;
            if (it$iv2.isConsumed()) {
                z = true;
                break;
            }
            index$iv$iv$iv2++;
        }
        if (!z) {
            boolean consumed2 = m522onMouseWheelO0kMr_c(pointerEvent, bounds);
            if (consumed2) {
                consume(pointerEvent);
            }
        }
    }

    private final boolean isConsumed(PointerEvent $this$isConsumed) {
        List<PointerInputChange> changes = $this$isConsumed.getChanges();
        int size = changes.size();
        for (int index$iv$iv = 0; index$iv$iv < size; index$iv$iv++) {
            Object item$iv$iv = changes.get(index$iv$iv);
            PointerInputChange it = (PointerInputChange) item$iv$iv;
            if (it.isConsumed()) {
                return true;
            }
        }
        return false;
    }

    private final void consume(PointerEvent $this$consume) {
        List<PointerInputChange> changes = $this$consume.getChanges();
        int size = changes.size();
        for (int index$iv = 0; index$iv < size; index$iv++) {
            Object item$iv = changes.get(index$iv);
            PointerInputChange it = (PointerInputChange) item$iv;
            it.consume();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: compiled from: MouseWheelScrollable.kt */
    @Metadata(d1 = {"\u0000*\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0013\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0000\b\u0082\b\u0018\u00002\u00020\u0001B\u001f\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007¢\u0006\u0004\b\b\u0010\tJ\u0011\u0010\u0010\u001a\u00020\u00002\u0006\u0010\u0011\u001a\u00020\u0000H\u0086\u0002J\u0010\u0010\u0012\u001a\u00020\u0003HÆ\u0003¢\u0006\u0004\b\u0013\u0010\u000bJ\t\u0010\u0014\u001a\u00020\u0005HÆ\u0003J\t\u0010\u0015\u001a\u00020\u0007HÆ\u0003J.\u0010\u0016\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u00052\b\b\u0002\u0010\u0006\u001a\u00020\u0007HÆ\u0001¢\u0006\u0004\b\u0017\u0010\u0018J\u0013\u0010\u0019\u001a\u00020\u00072\b\u0010\u0011\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\u001a\u001a\u00020\u001bHÖ\u0001J\t\u0010\u001c\u001a\u00020\u001dHÖ\u0001R\u0013\u0010\u0002\u001a\u00020\u0003¢\u0006\n\n\u0002\u0010\f\u001a\u0004\b\n\u0010\u000bR\u0011\u0010\u0004\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b\r\u0010\u000bR\u0011\u0010\u0006\u001a\u00020\u0007¢\u0006\b\n\u0000\u001a\u0004\b\u000e\u0010\u000f¨\u0006\u001e"}, d2 = {"Landroidx/compose/foundation/gestures/MouseWheelScrollingLogic$MouseWheelScrollDelta;", "", Values.VECTOR_MAP_VECTORS_KEY, "Landroidx/compose/ui/geometry/Offset;", "timeMillis", "", "shouldApplyImmediately", "", "<init>", "(JJZLkotlin/jvm/internal/DefaultConstructorMarker;)V", "getValue-F1C5BW0", "()J", "J", "getTimeMillis", "getShouldApplyImmediately", "()Z", "plus", "other", "component1", "component1-F1C5BW0", "component2", "component3", "copy", "copy-9KIMszo", "(JJZ)Landroidx/compose/foundation/gestures/MouseWheelScrollingLogic$MouseWheelScrollDelta;", "equals", "hashCode", "", "toString", "", "foundation"}, k = 1, mv = {2, 0, 0}, xi = 48)
    static final /* data */ class MouseWheelScrollDelta {
        private final boolean shouldApplyImmediately;
        private final long timeMillis;
        private final long value;

        public /* synthetic */ MouseWheelScrollDelta(long j, long j2, boolean z, DefaultConstructorMarker defaultConstructorMarker) {
            this(j, j2, z);
        }

        /* JADX INFO: renamed from: copy-9KIMszo$default, reason: not valid java name */
        public static /* synthetic */ MouseWheelScrollDelta m524copy9KIMszo$default(MouseWheelScrollDelta mouseWheelScrollDelta, long j, long j2, boolean z, int i, Object obj) {
            if ((i & 1) != 0) {
                j = mouseWheelScrollDelta.value;
            }
            long j3 = j;
            if ((i & 2) != 0) {
                j2 = mouseWheelScrollDelta.timeMillis;
            }
            long j4 = j2;
            if ((i & 4) != 0) {
                z = mouseWheelScrollDelta.shouldApplyImmediately;
            }
            return mouseWheelScrollDelta.m526copy9KIMszo(j3, j4, z);
        }

        /* JADX INFO: renamed from: component1-F1C5BW0, reason: not valid java name and from getter */
        public final long getValue() {
            return this.value;
        }

        /* JADX INFO: renamed from: component2, reason: from getter */
        public final long getTimeMillis() {
            return this.timeMillis;
        }

        /* JADX INFO: renamed from: component3, reason: from getter */
        public final boolean getShouldApplyImmediately() {
            return this.shouldApplyImmediately;
        }

        /* JADX INFO: renamed from: copy-9KIMszo, reason: not valid java name */
        public final MouseWheelScrollDelta m526copy9KIMszo(long value, long timeMillis, boolean shouldApplyImmediately) {
            return new MouseWheelScrollDelta(value, timeMillis, shouldApplyImmediately, null);
        }

        public boolean equals(Object other) {
            if (this == other) {
                return true;
            }
            if (!(other instanceof MouseWheelScrollDelta)) {
                return false;
            }
            MouseWheelScrollDelta mouseWheelScrollDelta = (MouseWheelScrollDelta) other;
            return Offset.m4449equalsimpl0(this.value, mouseWheelScrollDelta.value) && this.timeMillis == mouseWheelScrollDelta.timeMillis && this.shouldApplyImmediately == mouseWheelScrollDelta.shouldApplyImmediately;
        }

        public int hashCode() {
            return (((Offset.m4454hashCodeimpl(this.value) * 31) + Long.hashCode(this.timeMillis)) * 31) + Boolean.hashCode(this.shouldApplyImmediately);
        }

        public String toString() {
            return "MouseWheelScrollDelta(value=" + ((Object) Offset.m4460toStringimpl(this.value)) + ", timeMillis=" + this.timeMillis + ", shouldApplyImmediately=" + this.shouldApplyImmediately + ')';
        }

        private MouseWheelScrollDelta(long value, long timeMillis, boolean shouldApplyImmediately) {
            this.value = value;
            this.timeMillis = timeMillis;
            this.shouldApplyImmediately = shouldApplyImmediately;
        }

        /* JADX INFO: renamed from: getValue-F1C5BW0, reason: not valid java name */
        public final long m527getValueF1C5BW0() {
            return this.value;
        }

        public final long getTimeMillis() {
            return this.timeMillis;
        }

        public final boolean getShouldApplyImmediately() {
            return this.shouldApplyImmediately;
        }

        public final MouseWheelScrollDelta plus(MouseWheelScrollDelta other) {
            return new MouseWheelScrollDelta(Offset.m4457plusMKHz9U(this.value, other.value), Math.max(this.timeMillis, other.timeMillis), this.shouldApplyImmediately, null);
        }
    }

    public final void startReceivingMouseWheelEvents(CoroutineScope coroutineScope) {
        if (this.receivingMouseWheelEventsJob == null) {
            this.receivingMouseWheelEventsJob = BuildersKt__Builders_commonKt.launch$default(coroutineScope, null, null, new C02521(null), 3, null);
        }
    }

    /* JADX INFO: renamed from: androidx.compose.foundation.gestures.MouseWheelScrollingLogic$startReceivingMouseWheelEvents$1, reason: invalid class name and case insensitive filesystem */
    /* JADX INFO: compiled from: MouseWheelScrollable.kt */
    @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 0, 0}, xi = 48)
    @DebugMetadata(c = "androidx.compose.foundation.gestures.MouseWheelScrollingLogic$startReceivingMouseWheelEvents$1", f = "MouseWheelScrollable.kt", i = {0, 1}, l = {TsExtractor.TS_STREAM_TYPE_E_AC3, TsExtractor.TS_STREAM_TYPE_DTS}, m = "invokeSuspend", n = {"$this$launch", "$this$launch"}, s = {"L$0", "L$0"}, v = 1)
    static final class C02521 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
        private /* synthetic */ Object L$0;
        int label;

        C02521(Continuation<? super C02521> continuation) {
            super(2, continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            C02521 c02521 = MouseWheelScrollingLogic.this.new C02521(continuation);
            c02521.L$0 = obj;
            return c02521;
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
            return ((C02521) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        /* JADX WARN: Removed duplicated region for block: B:17:0x003e A[Catch: all -> 0x00a1, TRY_LEAVE, TryCatch #0 {all -> 0x00a1, blocks: (B:15:0x0034, B:17:0x003e), top: B:33:0x0034 }] */
        /* JADX WARN: Removed duplicated region for block: B:23:0x008f A[RETURN] */
        /* JADX WARN: Removed duplicated region for block: B:24:0x0090  */
        /* JADX WARN: Removed duplicated region for block: B:28:0x0098  */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:24:0x0090 -> B:33:0x0034). Please report as a decompilation issue!!! */
        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        /*
            Code decompiled incorrectly, please refer to instructions dump.
        */
        public final Object invokeSuspend(Object $result) throws Throwable {
            C02521 c02521;
            CoroutineScope $this$launch;
            C02521 c025212;
            CoroutineScope $this$launch2;
            Object $result2;
            MouseWheelScrollDelta scrollDelta;
            float threshold;
            float speed;
            Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
            try {
                switch (this.label) {
                    case 0:
                        ResultKt.throwOnFailure($result);
                        $this$launch = (CoroutineScope) this.L$0;
                        c02521 = this;
                        try {
                            if (JobKt.isActive($this$launch.getCoroutineContext())) {
                                c02521.L$0 = $this$launch;
                                c02521.label = 1;
                                Object objReceive = MouseWheelScrollingLogic.this.channel.receive(c02521);
                                if (objReceive == coroutine_suspended) {
                                    return coroutine_suspended;
                                }
                                CoroutineScope coroutineScope = $this$launch;
                                $result2 = $result;
                                $result = objReceive;
                                c025212 = c02521;
                                $this$launch2 = coroutineScope;
                                try {
                                    scrollDelta = (MouseWheelScrollDelta) $result;
                                    Density $this$invokeSuspend_u24lambda_u240 = MouseWheelScrollingLogic.this.density;
                                    threshold = $this$invokeSuspend_u24lambda_u240.mo405toPx0680j_4(MouseWheelScrollableKt.AnimationThreshold);
                                    Density $this$invokeSuspend_u24lambda_u241 = MouseWheelScrollingLogic.this.density;
                                    speed = $this$invokeSuspend_u24lambda_u241.mo405toPx0680j_4(MouseWheelScrollableKt.AnimationSpeed);
                                    c025212.L$0 = $this$launch2;
                                    c025212.label = 2;
                                    if (MouseWheelScrollingLogic.this.dispatchMouseWheelScroll(MouseWheelScrollingLogic.this.scrollingLogic, scrollDelta, threshold, speed, c025212) != coroutine_suspended) {
                                        return coroutine_suspended;
                                    }
                                    $result = $result2;
                                    $this$launch = $this$launch2;
                                    c02521 = c025212;
                                    if (JobKt.isActive($this$launch.getCoroutineContext())) {
                                        MouseWheelScrollingLogic.this.receivingMouseWheelEventsJob = null;
                                        return Unit.INSTANCE;
                                    }
                                } catch (Throwable th) {
                                    th = th;
                                    c02521 = c025212;
                                    MouseWheelScrollingLogic.this.receivingMouseWheelEventsJob = null;
                                    throw th;
                                }
                            }
                        } catch (Throwable th2) {
                            th = th2;
                            MouseWheelScrollingLogic.this.receivingMouseWheelEventsJob = null;
                            throw th;
                        }
                        break;
                    case 1:
                        CoroutineScope $this$launch3 = (CoroutineScope) this.L$0;
                        ResultKt.throwOnFailure($result);
                        c025212 = this;
                        $this$launch2 = $this$launch3;
                        $result2 = $result;
                        scrollDelta = (MouseWheelScrollDelta) $result;
                        Density $this$invokeSuspend_u24lambda_u2402 = MouseWheelScrollingLogic.this.density;
                        threshold = $this$invokeSuspend_u24lambda_u2402.mo405toPx0680j_4(MouseWheelScrollableKt.AnimationThreshold);
                        Density $this$invokeSuspend_u24lambda_u2412 = MouseWheelScrollingLogic.this.density;
                        speed = $this$invokeSuspend_u24lambda_u2412.mo405toPx0680j_4(MouseWheelScrollableKt.AnimationSpeed);
                        c025212.L$0 = $this$launch2;
                        c025212.label = 2;
                        if (MouseWheelScrollingLogic.this.dispatchMouseWheelScroll(MouseWheelScrollingLogic.this.scrollingLogic, scrollDelta, threshold, speed, c025212) != coroutine_suspended) {
                        }
                        break;
                    case 2:
                        $this$launch = (CoroutineScope) this.L$0;
                        ResultKt.throwOnFailure($result);
                        c02521 = this;
                        if (JobKt.isActive($this$launch.getCoroutineContext())) {
                        }
                        break;
                    default:
                        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
            } catch (Throwable th3) {
                th = th3;
                c02521 = this;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Removed duplicated region for block: B:7:0x0014  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final Object userScroll(ScrollingLogic $this$userScroll, Function2<? super NestedScrollScope, ? super Continuation<? super Unit>, ? extends Object> function2, Continuation<? super Unit> continuation) {
        C02541 c02541;
        MouseWheelScrollingLogic mouseWheelScrollingLogic;
        if (continuation instanceof C02541) {
            c02541 = (C02541) continuation;
            if ((c02541.label & Integer.MIN_VALUE) != 0) {
                c02541.label -= Integer.MIN_VALUE;
            } else {
                c02541 = new C02541(continuation);
            }
        }
        Object $result = c02541.result;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        switch (c02541.label) {
            case 0:
                ResultKt.throwOnFailure($result);
                this.isScrolling = true;
                C02552 c02552 = new C02552($this$userScroll, function2, null);
                c02541.label = 1;
                if (SupervisorKt.supervisorScope(c02552, c02541) == coroutine_suspended) {
                    return coroutine_suspended;
                }
                mouseWheelScrollingLogic = this;
                break;
                break;
            case 1:
                mouseWheelScrollingLogic = this;
                ResultKt.throwOnFailure($result);
                break;
            default:
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }
        mouseWheelScrollingLogic.isScrolling = false;
        return Unit.INSTANCE;
    }

    /* JADX INFO: renamed from: androidx.compose.foundation.gestures.MouseWheelScrollingLogic$userScroll$2, reason: invalid class name and case insensitive filesystem */
    /* JADX INFO: compiled from: MouseWheelScrollable.kt */
    @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 0, 0}, xi = 48)
    @DebugMetadata(c = "androidx.compose.foundation.gestures.MouseWheelScrollingLogic$userScroll$2", f = "MouseWheelScrollable.kt", i = {}, l = {150}, m = "invokeSuspend", n = {}, s = {}, v = 1)
    static final class C02552 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
        final /* synthetic */ Function2<NestedScrollScope, Continuation<? super Unit>, Object> $block;
        final /* synthetic */ ScrollingLogic $this_userScroll;
        int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        /* JADX WARN: Multi-variable type inference failed */
        C02552(ScrollingLogic scrollingLogic, Function2<? super NestedScrollScope, ? super Continuation<? super Unit>, ? extends Object> function2, Continuation<? super C02552> continuation) {
            super(2, continuation);
            this.$this_userScroll = scrollingLogic;
            this.$block = function2;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return new C02552(this.$this_userScroll, this.$block, continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
            return ((C02552) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object $result) {
            Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
            switch (this.label) {
                case 0:
                    ResultKt.throwOnFailure($result);
                    this.label = 1;
                    if (this.$this_userScroll.scroll(MutatePriority.UserInput, this.$block, this) == coroutine_suspended) {
                        return coroutine_suspended;
                    }
                    break;
                case 1:
                    ResultKt.throwOnFailure($result);
                    break;
                default:
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            return Unit.INSTANCE;
        }
    }

    /* JADX INFO: renamed from: onMouseWheel-O0kMr_c, reason: not valid java name */
    private final boolean m522onMouseWheelO0kMr_c(PointerEvent pointerEvent, long bounds) {
        ScrollConfig $this$onMouseWheel_O0kMr_c_u24lambda_u240 = this.mouseWheelScrollConfig;
        Density $this$onMouseWheel_O0kMr_c_u24lambda_u240_u240 = this.density;
        long scrollDelta = $this$onMouseWheel_O0kMr_c_u24lambda_u240.mo426calculateMouseWheelScroll8xgXZGE($this$onMouseWheel_O0kMr_c_u24lambda_u240_u240, pointerEvent, bounds);
        if (m521canConsumeDeltaUv8p0NA(this.scrollingLogic, scrollDelta)) {
            return ChannelResult.m10074isSuccessimpl(this.channel.mo10050trySendJP2dKIU(new MouseWheelScrollDelta(scrollDelta, ((PointerInputChange) CollectionsKt.first((List) pointerEvent.getChanges())).getUptimeMillis(), !this.mouseWheelScrollConfig.isSmoothScrollingEnabled() || this.mouseWheelScrollConfig.isPreciseWheelScroll(pointerEvent), null)));
        }
        return this.isScrolling;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final MouseWheelScrollDelta sumOrNull(final Channel<MouseWheelScrollDelta> channel) {
        MouseWheelScrollDelta sum = null;
        for (MouseWheelScrollDelta i : untilNull(new Function0() { // from class: androidx.compose.foundation.gestures.MouseWheelScrollingLogic$$ExternalSyntheticLambda0
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return MouseWheelScrollingLogic.sumOrNull$lambda$0(channel);
            }
        })) {
            sum = sum == null ? i : sum.plus(i);
        }
        return sum;
    }

    static final MouseWheelScrollDelta sumOrNull$lambda$0(Channel $this_sumOrNull) {
        return (MouseWheelScrollDelta) ChannelResult.m10069getOrNullimpl($this_sumOrNull.mo10057tryReceivePtdJZtk());
    }

    /* JADX INFO: renamed from: androidx.compose.foundation.gestures.MouseWheelScrollingLogic$busyReceive$2, reason: invalid class name */
    /* JADX INFO: compiled from: MouseWheelScrollable.kt */
    @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "Landroidx/compose/foundation/gestures/MouseWheelScrollingLogic$MouseWheelScrollDelta;", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 0, 0}, xi = 48)
    @DebugMetadata(c = "androidx.compose.foundation.gestures.MouseWheelScrollingLogic$busyReceive$2", f = "MouseWheelScrollable.kt", i = {0}, l = {198}, m = "invokeSuspend", n = {"job"}, s = {"L$0"}, v = 1)
    static final class AnonymousClass2 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super MouseWheelScrollDelta>, Object> {
        final /* synthetic */ Channel<MouseWheelScrollDelta> $this_busyReceive;
        private /* synthetic */ Object L$0;
        int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        AnonymousClass2(Channel<MouseWheelScrollDelta> channel, Continuation<? super AnonymousClass2> continuation) {
            super(2, continuation);
            this.$this_busyReceive = channel;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            AnonymousClass2 anonymousClass2 = new AnonymousClass2(this.$this_busyReceive, continuation);
            anonymousClass2.L$0 = obj;
            return anonymousClass2;
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(CoroutineScope coroutineScope, Continuation<? super MouseWheelScrollDelta> continuation) {
            return ((AnonymousClass2) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Type inference failed for: r12v3 */
        /* JADX WARN: Type inference failed for: r1v0, types: [int] */
        /* JADX WARN: Type inference failed for: r1v1 */
        /* JADX WARN: Type inference failed for: r1v11 */
        /* JADX WARN: Type inference failed for: r1v2, types: [kotlinx.coroutines.Job] */
        /* JADX WARN: Type inference failed for: r1v6 */
        /* JADX WARN: Type inference failed for: r1v7 */
        /* JADX WARN: Type inference failed for: r1v8 */
        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object $result) throws Throwable {
            Job job;
            Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
            ?? r1 = this.label;
            try {
                switch (r1) {
                    case 0:
                        ResultKt.throwOnFailure($result);
                        CoroutineScope $this$coroutineScope = (CoroutineScope) this.L$0;
                        Job job2 = BuildersKt__Builders_commonKt.launch$default($this$coroutineScope, null, null, new MouseWheelScrollingLogic$busyReceive$2$job$1(null), 3, null);
                        this.L$0 = job2;
                        this.label = 1;
                        Object objReceive = this.$this_busyReceive.receive(this);
                        if (objReceive == coroutine_suspended) {
                            return coroutine_suspended;
                        }
                        r1 = $result;
                        $result = objReceive;
                        job = job2;
                        break;
                        break;
                    case 1:
                        Job job3 = (Job) this.L$0;
                        ResultKt.throwOnFailure($result);
                        job = job3;
                        r1 = $result;
                        break;
                    default:
                        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                try {
                    Object $result2 = (MouseWheelScrollDelta) $result;
                    Job.DefaultImpls.cancel$default(job, (CancellationException) null, 1, (Object) null);
                    return $result2;
                } catch (Throwable th) {
                    th = th;
                    r1 = job;
                    Job.DefaultImpls.cancel$default((Job) r1, (CancellationException) null, 1, (Object) null);
                    throw th;
                }
            } catch (Throwable th2) {
                th = th2;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final Object busyReceive(Channel<MouseWheelScrollDelta> channel, Continuation<? super MouseWheelScrollDelta> continuation) {
        return CoroutineScopeKt.coroutineScope(new AnonymousClass2(channel, null), continuation);
    }

    /* JADX INFO: Add missing generic type declarations: [E] */
    /* JADX INFO: renamed from: androidx.compose.foundation.gestures.MouseWheelScrollingLogic$untilNull$1, reason: invalid class name and case insensitive filesystem */
    /* JADX INFO: compiled from: MouseWheelScrollable.kt */
    @Metadata(d1 = {"\u0000\f\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001\"\u0004\b\u0000\u0010\u0002*\b\u0012\u0004\u0012\u0002H\u00020\u0003H\n"}, d2 = {"<anonymous>", "", ExifInterface.LONGITUDE_EAST, "Lkotlin/sequences/SequenceScope;"}, k = 3, mv = {2, 0, 0}, xi = 48)
    @DebugMetadata(c = "androidx.compose.foundation.gestures.MouseWheelScrollingLogic$untilNull$1", f = "MouseWheelScrollable.kt", i = {0}, l = {ComposerKt.reuseKey}, m = "invokeSuspend", n = {"$this$sequence"}, s = {"L$0"}, v = 1)
    static final class C02531<E> extends RestrictedSuspendLambda implements Function2<SequenceScope<? super E>, Continuation<? super Unit>, Object> {
        final /* synthetic */ Function0<E> $builderAction;
        private /* synthetic */ Object L$0;
        Object L$1;
        int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        /* JADX WARN: Multi-variable type inference failed */
        C02531(Function0<? extends E> function0, Continuation<? super C02531> continuation) {
            super(2, continuation);
            this.$builderAction = function0;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            C02531 c02531 = new C02531(this.$builderAction, continuation);
            c02531.L$0 = obj;
            return c02531;
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(SequenceScope<? super E> sequenceScope, Continuation<? super Unit> continuation) {
            return ((C02531) create(sequenceScope, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        /* JADX WARN: Removed duplicated region for block: B:10:0x0031  */
        /* JADX WARN: Removed duplicated region for block: B:15:0x0047  */
        /* JADX WARN: Removed duplicated region for block: B:17:0x004c  */
        /* JADX WARN: Removed duplicated region for block: B:19:0x004f  */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:13:0x0041 -> B:14:0x0045). Please report as a decompilation issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:15:0x0047 -> B:16:0x004a). Please report as a decompilation issue!!! */
        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        /*
            Code decompiled incorrectly, please refer to instructions dump.
        */
        public final Object invokeSuspend(Object $result) {
            C02531<E> c02531;
            SequenceScope $this$sequence;
            Object element;
            C02531<E> c025312;
            Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
            switch (this.label) {
                case 0:
                    ResultKt.throwOnFailure($result);
                    SequenceScope $this$sequence2 = (SequenceScope) this.L$0;
                    c02531 = this;
                    E eInvoke = c02531.$builderAction.invoke();
                    if (eInvoke == null) {
                        c02531.L$0 = $this$sequence2;
                        c02531.L$1 = eInvoke;
                        c02531.label = 1;
                        Object it = $this$sequence2.yield(eInvoke, c02531);
                        if (it == coroutine_suspended) {
                            return coroutine_suspended;
                        }
                        $this$sequence = $this$sequence2;
                        element = eInvoke;
                        c025312 = c02531;
                        c02531 = c025312;
                        if (element != null) {
                            $this$sequence2 = $this$sequence;
                            E eInvoke2 = c02531.$builderAction.invoke();
                            if (eInvoke2 == null) {
                                $this$sequence = $this$sequence2;
                                element = null;
                                if (element != null) {
                                }
                            }
                        } else {
                            return Unit.INSTANCE;
                        }
                    }
                    break;
                case 1:
                    Object obj = this.L$1;
                    SequenceScope $this$sequence3 = (SequenceScope) this.L$0;
                    ResultKt.throwOnFailure($result);
                    $this$sequence = $this$sequence3;
                    element = obj;
                    c025312 = this;
                    c02531 = c025312;
                    if (element != null) {
                    }
                    break;
                default:
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
        }
    }

    private final <E> Sequence<E> untilNull(Function0<? extends E> builderAction) {
        return SequencesKt.sequence(new C02531(builderAction, null));
    }

    /* JADX INFO: renamed from: canConsumeDelta-Uv8p0NA, reason: not valid java name */
    private final boolean m521canConsumeDeltaUv8p0NA(ScrollingLogic $this$canConsumeDelta_u2dUv8p0NA, long j) {
        float delta;
        if (ComposeFoundationFlags.isMouseWheel1DAxisLockingEnabled) {
            delta = $this$canConsumeDelta_u2dUv8p0NA.m591toSingleAxisDeltaFromAnglek4lQ0M($this$canConsumeDelta_u2dUv8p0NA.m587reverseIfNeededMKHz9U(j));
        } else {
            delta = $this$canConsumeDelta_u2dUv8p0NA.m589toFloatk4lQ0M($this$canConsumeDelta_u2dUv8p0NA.m587reverseIfNeededMKHz9U(j));
        }
        if (delta == 0.0f) {
            return false;
        }
        if (delta > 0.0f) {
            return $this$canConsumeDelta_u2dUv8p0NA.getScrollableState().getCanScrollForward();
        }
        return $this$canConsumeDelta_u2dUv8p0NA.getScrollableState().getCanScrollBackward();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void trackVelocity(MouseWheelScrollDelta scrollDelta) {
        this.velocityTracker.m528addDeltaUv8p0NA(scrollDelta.getTimeMillis(), scrollDelta.m527getValueF1C5BW0());
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:27:0x00e5  */
    /* JADX WARN: Removed duplicated region for block: B:30:0x011b A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:7:0x0018  */
    /* JADX WARN: Type inference failed for: r5v9, types: [T, androidx.compose.animation.core.AnimationState] */
    /* JADX WARN: Type inference failed for: r8v3, types: [T, androidx.compose.foundation.gestures.MouseWheelScrollingLogic$MouseWheelScrollDelta] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final Object dispatchMouseWheelScroll(ScrollingLogic $this$dispatchMouseWheelScroll, MouseWheelScrollDelta mouseWheelScrollDelta, float threshold, float speed, Continuation<? super Unit> continuation) {
        AnonymousClass1 anonymousClass1;
        ScrollingLogic $this$dispatchMouseWheelScroll2;
        Ref.FloatRef targetValue;
        MouseWheelScrollingLogic mouseWheelScrollingLogic;
        float speed2;
        long velocity;
        Function2<Velocity, Continuation<? super Unit>, Object> function2;
        Velocity velocityM7734boximpl;
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
                Ref.ObjectRef targetScrollDelta = new Ref.ObjectRef();
                targetScrollDelta.element = mouseWheelScrollDelta;
                trackVelocity(mouseWheelScrollDelta);
                MouseWheelScrollDelta it = sumOrNull(this.channel);
                if (it != null) {
                    trackVelocity(it);
                    targetScrollDelta.element = ((MouseWheelScrollDelta) targetScrollDelta.element).plus(it);
                }
                Ref.FloatRef targetValue2 = new Ref.FloatRef();
                targetValue2.element = $this$dispatchMouseWheelScroll.m589toFloatk4lQ0M($this$dispatchMouseWheelScroll.m587reverseIfNeededMKHz9U(((MouseWheelScrollDelta) targetScrollDelta.element).m527getValueF1C5BW0()));
                if (MouseWheelScrollableKt.isLowScrollingDelta(targetValue2.element)) {
                    return Unit.INSTANCE;
                }
                Ref.ObjectRef animationState = new Ref.ObjectRef();
                animationState.element = AnimationStateKt.AnimationState$default(0.0f, 0.0f, 0L, 0L, false, 30, null);
                $this$dispatchMouseWheelScroll2 = $this$dispatchMouseWheelScroll;
                AnonymousClass3 anonymousClass3 = new AnonymousClass3(targetValue2, animationState, targetScrollDelta, threshold, this, speed, $this$dispatchMouseWheelScroll, null);
                anonymousClass1.L$0 = $this$dispatchMouseWheelScroll2;
                anonymousClass1.L$1 = targetValue2;
                anonymousClass1.F$0 = speed;
                anonymousClass1.label = 1;
                if (userScroll($this$dispatchMouseWheelScroll2, anonymousClass3, anonymousClass1) == coroutine_suspended) {
                    return coroutine_suspended;
                }
                targetValue = targetValue2;
                mouseWheelScrollingLogic = this;
                speed2 = speed;
                velocity = mouseWheelScrollingLogic.velocityTracker.m529calculateVelocity9UxMQ8M();
                if (Velocity.m7742equalsimpl0(velocity, Velocity.INSTANCE.m7754getZero9UxMQ8M())) {
                    velocity = $this$dispatchMouseWheelScroll2.m592toVelocityadjELrA($this$dispatchMouseWheelScroll2.reverseIfNeeded(Math.signum(targetValue.element)) * Math.min(Math.abs(targetValue.element) / 100, speed2) * 1000);
                }
                function2 = mouseWheelScrollingLogic.onScrollStopped;
                velocityM7734boximpl = Velocity.m7734boximpl(velocity);
                anonymousClass1.L$0 = null;
                anonymousClass1.L$1 = null;
                anonymousClass1.label = 2;
                if (function2.invoke(velocityM7734boximpl, anonymousClass1) == coroutine_suspended) {
                    return coroutine_suspended;
                }
                return Unit.INSTANCE;
            case 1:
                mouseWheelScrollingLogic = this;
                speed2 = anonymousClass1.F$0;
                targetValue = (Ref.FloatRef) anonymousClass1.L$1;
                $this$dispatchMouseWheelScroll2 = (ScrollingLogic) anonymousClass1.L$0;
                ResultKt.throwOnFailure($result);
                velocity = mouseWheelScrollingLogic.velocityTracker.m529calculateVelocity9UxMQ8M();
                if (Velocity.m7742equalsimpl0(velocity, Velocity.INSTANCE.m7754getZero9UxMQ8M())) {
                }
                function2 = mouseWheelScrollingLogic.onScrollStopped;
                velocityM7734boximpl = Velocity.m7734boximpl(velocity);
                anonymousClass1.L$0 = null;
                anonymousClass1.L$1 = null;
                anonymousClass1.label = 2;
                if (function2.invoke(velocityM7734boximpl, anonymousClass1) == coroutine_suspended) {
                }
                return Unit.INSTANCE;
            case 2:
                ResultKt.throwOnFailure($result);
                return Unit.INSTANCE;
            default:
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Removed duplicated region for block: B:7:0x0016  */
    /* JADX WARN: Type inference failed for: r11v7, types: [T, androidx.compose.foundation.gestures.MouseWheelScrollingLogic$MouseWheelScrollDelta] */
    /* JADX WARN: Type inference failed for: r4v4, types: [T, androidx.compose.animation.core.AnimationState] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static final Object dispatchMouseWheelScroll$waitNextScrollDelta(MouseWheelScrollingLogic mouseWheelScrollingLogic, Ref.ObjectRef<MouseWheelScrollDelta> objectRef, Ref.FloatRef floatRef, ScrollingLogic $this_dispatchMouseWheelScroll, Ref.ObjectRef<AnimationState<Float, AnimationVector1D>> objectRef2, long timeoutMillis, Continuation<? super Boolean> continuation) {
        MouseWheelScrollingLogic$dispatchMouseWheelScroll$waitNextScrollDelta$1 mouseWheelScrollingLogic$dispatchMouseWheelScroll$waitNextScrollDelta$1;
        MouseWheelScrollingLogic this$0;
        Ref.FloatRef targetValue;
        Ref.ObjectRef<MouseWheelScrollDelta> objectRef3;
        Object objWithTimeoutOrNull;
        Ref.ObjectRef<AnimationState<Float, AnimationVector1D>> objectRef4;
        ScrollingLogic $this_dispatchMouseWheelScroll2;
        if (continuation instanceof MouseWheelScrollingLogic$dispatchMouseWheelScroll$waitNextScrollDelta$1) {
            mouseWheelScrollingLogic$dispatchMouseWheelScroll$waitNextScrollDelta$1 = (MouseWheelScrollingLogic$dispatchMouseWheelScroll$waitNextScrollDelta$1) continuation;
            if ((mouseWheelScrollingLogic$dispatchMouseWheelScroll$waitNextScrollDelta$1.label & Integer.MIN_VALUE) != 0) {
                mouseWheelScrollingLogic$dispatchMouseWheelScroll$waitNextScrollDelta$1.label -= Integer.MIN_VALUE;
            } else {
                mouseWheelScrollingLogic$dispatchMouseWheelScroll$waitNextScrollDelta$1 = new MouseWheelScrollingLogic$dispatchMouseWheelScroll$waitNextScrollDelta$1(continuation);
            }
        }
        Object $result = mouseWheelScrollingLogic$dispatchMouseWheelScroll$waitNextScrollDelta$1.result;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        boolean z = false;
        switch (mouseWheelScrollingLogic$dispatchMouseWheelScroll$waitNextScrollDelta$1.label) {
            case 0:
                ResultKt.throwOnFailure($result);
                this$0 = mouseWheelScrollingLogic;
                targetValue = floatRef;
                objectRef3 = objectRef;
                if (timeoutMillis < 0) {
                    return Boxing.boxBoolean(false);
                }
                MouseWheelScrollingLogic$dispatchMouseWheelScroll$waitNextScrollDelta$2 mouseWheelScrollingLogic$dispatchMouseWheelScroll$waitNextScrollDelta$2 = new MouseWheelScrollingLogic$dispatchMouseWheelScroll$waitNextScrollDelta$2(this$0, null);
                mouseWheelScrollingLogic$dispatchMouseWheelScroll$waitNextScrollDelta$1.L$0 = this$0;
                mouseWheelScrollingLogic$dispatchMouseWheelScroll$waitNextScrollDelta$1.L$1 = objectRef3;
                mouseWheelScrollingLogic$dispatchMouseWheelScroll$waitNextScrollDelta$1.L$2 = targetValue;
                mouseWheelScrollingLogic$dispatchMouseWheelScroll$waitNextScrollDelta$1.L$3 = $this_dispatchMouseWheelScroll;
                mouseWheelScrollingLogic$dispatchMouseWheelScroll$waitNextScrollDelta$1.L$4 = objectRef2;
                mouseWheelScrollingLogic$dispatchMouseWheelScroll$waitNextScrollDelta$1.label = 1;
                objWithTimeoutOrNull = TimeoutKt.withTimeoutOrNull(timeoutMillis, mouseWheelScrollingLogic$dispatchMouseWheelScroll$waitNextScrollDelta$2, mouseWheelScrollingLogic$dispatchMouseWheelScroll$waitNextScrollDelta$1);
                if (objWithTimeoutOrNull == coroutine_suspended) {
                    return coroutine_suspended;
                }
                objectRef4 = objectRef2;
                $this_dispatchMouseWheelScroll2 = $this_dispatchMouseWheelScroll;
                break;
            case 1:
                objectRef4 = (Ref.ObjectRef) mouseWheelScrollingLogic$dispatchMouseWheelScroll$waitNextScrollDelta$1.L$4;
                $this_dispatchMouseWheelScroll2 = (ScrollingLogic) mouseWheelScrollingLogic$dispatchMouseWheelScroll$waitNextScrollDelta$1.L$3;
                targetValue = (Ref.FloatRef) mouseWheelScrollingLogic$dispatchMouseWheelScroll$waitNextScrollDelta$1.L$2;
                objectRef3 = (Ref.ObjectRef) mouseWheelScrollingLogic$dispatchMouseWheelScroll$waitNextScrollDelta$1.L$1;
                this$0 = (MouseWheelScrollingLogic) mouseWheelScrollingLogic$dispatchMouseWheelScroll$waitNextScrollDelta$1.L$0;
                ResultKt.throwOnFailure($result);
                objWithTimeoutOrNull = $result;
                break;
            default:
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }
        MouseWheelScrollDelta it = (MouseWheelScrollDelta) objWithTimeoutOrNull;
        if (it != null) {
            boolean previousDeltaShouldApplyImmediately = objectRef3.element.getShouldApplyImmediately();
            objectRef3.element = MouseWheelScrollDelta.m524copy9KIMszo$default(it, 0L, 0L, previousDeltaShouldApplyImmediately, 3, null);
            targetValue.element = ComposeFoundationFlags.isMouseWheel1DAxisLockingEnabled ? $this_dispatchMouseWheelScroll2.m591toSingleAxisDeltaFromAnglek4lQ0M($this_dispatchMouseWheelScroll2.m587reverseIfNeededMKHz9U(objectRef3.element.m527getValueF1C5BW0())) : $this_dispatchMouseWheelScroll2.m589toFloatk4lQ0M($this_dispatchMouseWheelScroll2.m587reverseIfNeededMKHz9U(objectRef3.element.m527getValueF1C5BW0()));
            objectRef4.element = AnimationStateKt.AnimationState$default(0.0f, 0.0f, 0L, 0L, false, 30, null);
            this$0.trackVelocity(it);
            z = MouseWheelScrollableKt.isLowScrollingDelta(targetValue.element) ? false : true;
        }
        return Boxing.boxBoolean(z);
    }

    /* JADX INFO: renamed from: androidx.compose.foundation.gestures.MouseWheelScrollingLogic$dispatchMouseWheelScroll$3, reason: invalid class name */
    /* JADX INFO: compiled from: MouseWheelScrollable.kt */
    @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Landroidx/compose/foundation/gestures/NestedScrollScope;"}, k = 3, mv = {2, 0, 0}, xi = 48)
    @DebugMetadata(c = "androidx.compose.foundation.gestures.MouseWheelScrollingLogic$dispatchMouseWheelScroll$3", f = "MouseWheelScrollable.kt", i = {0, 0, 1, 1, 1, 2, 2}, l = {297, 310, 334}, m = "invokeSuspend", n = {"$this$userScroll", "requiredAnimation", "$this$userScroll", "requiredAnimation", "durationMillis", "$this$userScroll", "requiredAnimation"}, s = {"L$0", "L$1", "L$0", "L$1", "I$0", "L$0", "L$1"}, v = 1)
    static final class AnonymousClass3 extends SuspendLambda implements Function2<NestedScrollScope, Continuation<? super Unit>, Object> {
        final /* synthetic */ Ref.ObjectRef<AnimationState<Float, AnimationVector1D>> $animationState;
        final /* synthetic */ float $speed;
        final /* synthetic */ Ref.ObjectRef<MouseWheelScrollDelta> $targetScrollDelta;
        final /* synthetic */ Ref.FloatRef $targetValue;
        final /* synthetic */ ScrollingLogic $this_dispatchMouseWheelScroll;
        final /* synthetic */ float $threshold;
        int I$0;
        private /* synthetic */ Object L$0;
        Object L$1;
        Object L$2;
        int label;
        final /* synthetic */ MouseWheelScrollingLogic this$0;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        AnonymousClass3(Ref.FloatRef floatRef, Ref.ObjectRef<AnimationState<Float, AnimationVector1D>> objectRef, Ref.ObjectRef<MouseWheelScrollDelta> objectRef2, float f, MouseWheelScrollingLogic mouseWheelScrollingLogic, float f2, ScrollingLogic scrollingLogic, Continuation<? super AnonymousClass3> continuation) {
            super(2, continuation);
            this.$targetValue = floatRef;
            this.$animationState = objectRef;
            this.$targetScrollDelta = objectRef2;
            this.$threshold = f;
            this.this$0 = mouseWheelScrollingLogic;
            this.$speed = f2;
            this.$this_dispatchMouseWheelScroll = scrollingLogic;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            AnonymousClass3 anonymousClass3 = new AnonymousClass3(this.$targetValue, this.$animationState, this.$targetScrollDelta, this.$threshold, this.this$0, this.$speed, this.$this_dispatchMouseWheelScroll, continuation);
            anonymousClass3.L$0 = obj;
            return anonymousClass3;
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(NestedScrollScope nestedScrollScope, Continuation<? super Unit> continuation) {
            return ((AnonymousClass3) create(nestedScrollScope, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        /* JADX WARN: Removed duplicated region for block: B:12:0x0072  */
        /* JADX WARN: Removed duplicated region for block: B:23:0x013d  */
        /* JADX WARN: Type inference failed for: r4v19, types: [T, androidx.compose.animation.core.AnimationState] */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:22:0x013a -> B:10:0x006e). Please report as a decompilation issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:26:0x0164 -> B:27:0x0168). Please report as a decompilation issue!!! */
        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        /*
            Code decompiled incorrectly, please refer to instructions dump.
        */
        public final Object invokeSuspend(Object $result) {
            Object $result2;
            AnonymousClass3 anonymousClass3;
            final Ref.BooleanRef requiredAnimation;
            NestedScrollScope $this$userScroll;
            int durationMillis;
            Object $result3;
            Object $result4;
            Ref.BooleanRef requiredAnimation2;
            Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
            switch (this.label) {
                case 0:
                    ResultKt.throwOnFailure($result);
                    $result2 = $result;
                    NestedScrollScope $this$userScroll2 = (NestedScrollScope) this.L$0;
                    Ref.BooleanRef requiredAnimation3 = new Ref.BooleanRef();
                    requiredAnimation3.element = true;
                    anonymousClass3 = this;
                    requiredAnimation = requiredAnimation3;
                    $this$userScroll = $this$userScroll2;
                    while (requiredAnimation.element) {
                        requiredAnimation.element = false;
                        float targetValueLeftover = anonymousClass3.$targetValue.element - anonymousClass3.$animationState.element.getValue().floatValue();
                        if (anonymousClass3.$targetScrollDelta.element.getShouldApplyImmediately() || Math.abs(targetValueLeftover) < anonymousClass3.$threshold) {
                            anonymousClass3.this$0.dispatchMouseWheelScroll($this$userScroll, targetValueLeftover);
                            anonymousClass3.L$0 = $this$userScroll;
                            anonymousClass3.L$1 = requiredAnimation;
                            anonymousClass3.L$2 = requiredAnimation;
                            anonymousClass3.label = 1;
                            Object $result5 = MouseWheelScrollingLogic.dispatchMouseWheelScroll$waitNextScrollDelta(anonymousClass3.this$0, anonymousClass3.$targetScrollDelta, anonymousClass3.$targetValue, anonymousClass3.$this_dispatchMouseWheelScroll, anonymousClass3.$animationState, 50L, anonymousClass3);
                            if ($result5 == coroutine_suspended) {
                                return coroutine_suspended;
                            }
                            Object $result6 = $result2;
                            Ref.BooleanRef requiredAnimation4 = requiredAnimation;
                            requiredAnimation.element = ((Boolean) $result5).booleanValue();
                            $result2 = $result6;
                            requiredAnimation = requiredAnimation4;
                        } else {
                            float instantDelta = Math.signum(targetValueLeftover) * anonymousClass3.$threshold;
                            anonymousClass3.this$0.dispatchMouseWheelScroll($this$userScroll, instantDelta);
                            anonymousClass3.$animationState.element = AnimationStateKt.copy$default((AnimationState) anonymousClass3.$animationState.element, anonymousClass3.$animationState.element.getValue().floatValue() + instantDelta, 0.0f, 0L, 0L, false, 30, (Object) null);
                            int durationMillis2 = RangesKt.coerceAtMost(MathKt.roundToInt(Math.abs(anonymousClass3.$targetValue.element - anonymousClass3.$animationState.element.getValue().floatValue()) / anonymousClass3.$speed), 100);
                            MouseWheelScrollingLogic mouseWheelScrollingLogic = anonymousClass3.this$0;
                            AnimationState<Float, AnimationVector1D> animationState = anonymousClass3.$animationState.element;
                            float f = anonymousClass3.$targetValue.element;
                            final MouseWheelScrollingLogic mouseWheelScrollingLogic2 = anonymousClass3.this$0;
                            final Ref.ObjectRef<MouseWheelScrollDelta> objectRef = anonymousClass3.$targetScrollDelta;
                            final Ref.FloatRef floatRef = anonymousClass3.$targetValue;
                            final ScrollingLogic scrollingLogic = anonymousClass3.$this_dispatchMouseWheelScroll;
                            anonymousClass3.L$0 = $this$userScroll;
                            anonymousClass3.L$1 = requiredAnimation;
                            anonymousClass3.L$2 = null;
                            anonymousClass3.I$0 = durationMillis2;
                            anonymousClass3.label = 2;
                            if (mouseWheelScrollingLogic.animateMouseWheelScroll($this$userScroll, animationState, f, durationMillis2, new Function1() { // from class: androidx.compose.foundation.gestures.MouseWheelScrollingLogic$dispatchMouseWheelScroll$3$$ExternalSyntheticLambda0
                                @Override // kotlin.jvm.functions.Function1
                                public final Object invoke(Object obj) {
                                    return Boolean.valueOf(MouseWheelScrollingLogic.AnonymousClass3.invokeSuspend$lambda$0(mouseWheelScrollingLogic2, objectRef, floatRef, scrollingLogic, requiredAnimation, ((Float) obj).floatValue()));
                                }
                            }, anonymousClass3) == coroutine_suspended) {
                                return coroutine_suspended;
                            }
                            durationMillis = durationMillis2;
                            if (!requiredAnimation.element) {
                                anonymousClass3.L$0 = $this$userScroll;
                                anonymousClass3.L$1 = requiredAnimation;
                                anonymousClass3.L$2 = requiredAnimation;
                                anonymousClass3.label = 3;
                                Object objDispatchMouseWheelScroll$waitNextScrollDelta = MouseWheelScrollingLogic.dispatchMouseWheelScroll$waitNextScrollDelta(anonymousClass3.this$0, anonymousClass3.$targetScrollDelta, anonymousClass3.$targetValue, anonymousClass3.$this_dispatchMouseWheelScroll, anonymousClass3.$animationState, 50 - ((long) durationMillis), anonymousClass3);
                                if (objDispatchMouseWheelScroll$waitNextScrollDelta == coroutine_suspended) {
                                    return coroutine_suspended;
                                }
                                $result3 = $result2;
                                $result4 = objDispatchMouseWheelScroll$waitNextScrollDelta;
                                requiredAnimation2 = requiredAnimation;
                                requiredAnimation.element = ((Boolean) $result4).booleanValue();
                                $result2 = $result3;
                                requiredAnimation = requiredAnimation2;
                            }
                            while (requiredAnimation.element) {
                            }
                        }
                    }
                    return Unit.INSTANCE;
                case 1:
                    Ref.BooleanRef booleanRef = (Ref.BooleanRef) this.L$2;
                    Ref.BooleanRef requiredAnimation5 = (Ref.BooleanRef) this.L$1;
                    NestedScrollScope $this$userScroll3 = (NestedScrollScope) this.L$0;
                    ResultKt.throwOnFailure($result);
                    $this$userScroll = $this$userScroll3;
                    anonymousClass3 = this;
                    booleanRef.element = ((Boolean) $result).booleanValue();
                    $result2 = $result;
                    requiredAnimation = requiredAnimation5;
                    while (requiredAnimation.element) {
                    }
                    return Unit.INSTANCE;
                case 2:
                    $result2 = $result;
                    durationMillis = this.I$0;
                    Ref.BooleanRef requiredAnimation6 = (Ref.BooleanRef) this.L$1;
                    NestedScrollScope $this$userScroll4 = (NestedScrollScope) this.L$0;
                    ResultKt.throwOnFailure($result2);
                    anonymousClass3 = this;
                    requiredAnimation = requiredAnimation6;
                    $this$userScroll = $this$userScroll4;
                    if (!requiredAnimation.element) {
                    }
                    while (requiredAnimation.element) {
                    }
                    return Unit.INSTANCE;
                case 3:
                    $result4 = $result;
                    Ref.BooleanRef booleanRef2 = (Ref.BooleanRef) this.L$2;
                    Ref.BooleanRef requiredAnimation7 = (Ref.BooleanRef) this.L$1;
                    NestedScrollScope $this$userScroll5 = (NestedScrollScope) this.L$0;
                    ResultKt.throwOnFailure($result4);
                    requiredAnimation2 = requiredAnimation7;
                    $this$userScroll = $this$userScroll5;
                    anonymousClass3 = this;
                    requiredAnimation = booleanRef2;
                    $result3 = $result4;
                    requiredAnimation.element = ((Boolean) $result4).booleanValue();
                    $result2 = $result3;
                    requiredAnimation = requiredAnimation2;
                    while (requiredAnimation.element) {
                    }
                    return Unit.INSTANCE;
                default:
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
        }

        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Type inference failed for: r2v2, types: [T, androidx.compose.foundation.gestures.MouseWheelScrollingLogic$MouseWheelScrollDelta] */
        static final boolean invokeSuspend$lambda$0(MouseWheelScrollingLogic this$0, Ref.ObjectRef $targetScrollDelta, Ref.FloatRef $targetValue, ScrollingLogic $this_dispatchMouseWheelScroll, Ref.BooleanRef $requiredAnimation, float lastValue) {
            float fM589toFloatk4lQ0M;
            MouseWheelScrollDelta nextScrollDelta = this$0.sumOrNull(this$0.channel);
            if (nextScrollDelta != null) {
                this$0.trackVelocity(nextScrollDelta);
                $targetScrollDelta.element = ((MouseWheelScrollDelta) $targetScrollDelta.element).plus(nextScrollDelta);
                if (ComposeFoundationFlags.isMouseWheel1DAxisLockingEnabled) {
                    fM589toFloatk4lQ0M = $this_dispatchMouseWheelScroll.m591toSingleAxisDeltaFromAnglek4lQ0M($this_dispatchMouseWheelScroll.m587reverseIfNeededMKHz9U(((MouseWheelScrollDelta) $targetScrollDelta.element).m527getValueF1C5BW0()));
                } else {
                    fM589toFloatk4lQ0M = $this_dispatchMouseWheelScroll.m589toFloatk4lQ0M($this_dispatchMouseWheelScroll.m587reverseIfNeededMKHz9U(((MouseWheelScrollDelta) $targetScrollDelta.element).m527getValueF1C5BW0()));
                }
                $targetValue.element = fM589toFloatk4lQ0M;
                $requiredAnimation.element = !MouseWheelScrollableKt.isLowScrollingDelta($targetValue.element - lastValue);
            }
            return nextScrollDelta != null;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final Object animateMouseWheelScroll(final NestedScrollScope $this$animateMouseWheelScroll, AnimationState<Float, AnimationVector1D> animationState, float targetValue, int durationMillis, final Function1<? super Float, Boolean> function1, Continuation<? super Unit> continuation) {
        final Ref.FloatRef lastValue = new Ref.FloatRef();
        lastValue.element = animationState.getValue().floatValue();
        Object objAnimateTo = SuspendAnimationKt.animateTo(animationState, Boxing.boxFloat(targetValue), AnimationSpecKt.tween$default(durationMillis, 0, EasingKt.getLinearEasing(), 2, null), true, new Function1() { // from class: androidx.compose.foundation.gestures.MouseWheelScrollingLogic$$ExternalSyntheticLambda1
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return MouseWheelScrollingLogic.animateMouseWheelScroll$lambda$0(lastValue, this, $this$animateMouseWheelScroll, function1, (AnimationScope) obj);
            }
        }, continuation);
        return objAnimateTo == IntrinsicsKt.getCOROUTINE_SUSPENDED() ? objAnimateTo : Unit.INSTANCE;
    }

    static final Unit animateMouseWheelScroll$lambda$0(Ref.FloatRef $lastValue, MouseWheelScrollingLogic this$0, NestedScrollScope $this_animateMouseWheelScroll, Function1 $shouldCancelAnimation, AnimationScope $this$animateTo) {
        float delta = ((Number) $this$animateTo.getValue()).floatValue() - $lastValue.element;
        if (!MouseWheelScrollableKt.isLowScrollingDelta(delta)) {
            float consumedDelta = this$0.dispatchMouseWheelScroll($this_animateMouseWheelScroll, delta);
            if (!MouseWheelScrollableKt.isLowScrollingDelta(delta - consumedDelta)) {
                $this$animateTo.cancelAnimation();
                return Unit.INSTANCE;
            }
            $lastValue.element += delta;
        }
        float consumedDelta2 = $lastValue.element;
        if (((Boolean) $shouldCancelAnimation.invoke(Float.valueOf(consumedDelta2))).booleanValue()) {
            $this$animateTo.cancelAnimation();
        }
        return Unit.INSTANCE;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final float dispatchMouseWheelScroll(NestedScrollScope $this$dispatchMouseWheelScroll, float delta) {
        ScrollingLogic $this$dispatchMouseWheelScroll_u24lambda_u242 = this.scrollingLogic;
        long offset = $this$dispatchMouseWheelScroll_u24lambda_u242.m590toOffsettuRUvjQ($this$dispatchMouseWheelScroll_u24lambda_u242.reverseIfNeeded(delta));
        long consumed = $this$dispatchMouseWheelScroll.mo530scrollByOzD1aCk(offset, NestedScrollSource.INSTANCE.m5890getUserInputWNlRxjI());
        return $this$dispatchMouseWheelScroll_u24lambda_u242.m589toFloatk4lQ0M($this$dispatchMouseWheelScroll_u24lambda_u242.m587reverseIfNeededMKHz9U(consumed));
    }
}
