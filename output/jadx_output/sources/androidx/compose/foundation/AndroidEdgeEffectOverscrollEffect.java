package androidx.compose.foundation;

import android.content.Context;
import android.os.Build;
import android.widget.EdgeEffect;
import androidx.compose.foundation.gestures.ForEachGestureKt;
import androidx.compose.foundation.gestures.TapGestureDetectorKt;
import androidx.compose.foundation.layout.PaddingValues;
import androidx.compose.runtime.MutableState;
import androidx.compose.runtime.SnapshotStateKt;
import androidx.compose.ui.geometry.InlineClassHelperKt;
import androidx.compose.ui.geometry.Offset;
import androidx.compose.ui.geometry.Size;
import androidx.compose.ui.geometry.SizeKt;
import androidx.compose.ui.graphics.ColorKt;
import androidx.compose.ui.input.nestedscroll.NestedScrollSource;
import androidx.compose.ui.input.pointer.AwaitPointerEventScope;
import androidx.compose.ui.input.pointer.PointerEvent;
import androidx.compose.ui.input.pointer.PointerEventPass;
import androidx.compose.ui.input.pointer.PointerId;
import androidx.compose.ui.input.pointer.PointerInputChange;
import androidx.compose.ui.input.pointer.PointerInputEventHandler;
import androidx.compose.ui.input.pointer.PointerInputScope;
import androidx.compose.ui.input.pointer.SuspendingPointerInputFilterKt;
import androidx.compose.ui.input.pointer.SuspendingPointerInputModifierNode;
import androidx.compose.ui.node.DelegatableNode;
import androidx.compose.ui.unit.Density;
import androidx.compose.ui.unit.IntSize;
import androidx.compose.ui.unit.Velocity;
import androidx.compose.ui.unit.VelocityKt;
import java.util.ArrayList;
import java.util.List;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.RestrictedSuspendLambda;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.math.MathKt;

/* JADX INFO: compiled from: AndroidOverscroll.android.kt */
/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0090\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\n\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\t\n\u0002\u0010\u0007\n\u0002\b\n\b\u0001\u0018\u00002\u00020\u0001B'\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\u0006\u0010\b\u001a\u00020\t¢\u0006\u0004\b\n\u0010\u000bJ3\u0010\u001f\u001a\u00020\r2\u0006\u0010 \u001a\u00020\r2\u0006\u0010!\u001a\u00020\"2\u0012\u0010#\u001a\u000e\u0012\u0004\u0012\u00020\r\u0012\u0004\u0012\u00020\r0$H\u0016¢\u0006\u0004\b%\u0010&J<\u0010'\u001a\u00020\u00132\u0006\u0010(\u001a\u00020)2\"\u0010*\u001a\u001e\b\u0001\u0012\u0004\u0012\u00020)\u0012\n\u0012\b\u0012\u0004\u0012\u00020)0,\u0012\u0006\u0012\u0004\u0018\u00010-0+H\u0096@¢\u0006\u0004\b.\u0010/J\u0017\u00103\u001a\u00020\u00132\u0006\u00104\u001a\u000201H\u0000¢\u0006\u0004\b5\u00106J\u000f\u00109\u001a\u00020\rH\u0000¢\u0006\u0004\b:\u0010;J\r\u0010B\u001a\u00020\u0013H\u0000¢\u0006\u0002\bCJ\b\u0010D\u001a\u00020\u0013H\u0002J\u0017\u0010E\u001a\u00020\u00172\u0006\u0010 \u001a\u00020\rH\u0002¢\u0006\u0004\bF\u0010GJ\u0017\u0010H\u001a\u00020I2\u0006\u0010J\u001a\u00020\rH\u0002¢\u0006\u0004\bK\u0010LJ\u0017\u0010M\u001a\u00020I2\u0006\u0010J\u001a\u00020\rH\u0002¢\u0006\u0004\bN\u0010LJ\u0017\u0010O\u001a\u00020I2\u0006\u0010J\u001a\u00020\rH\u0002¢\u0006\u0004\bP\u0010LJ\u0017\u0010Q\u001a\u00020I2\u0006\u0010J\u001a\u00020\rH\u0002¢\u0006\u0004\bR\u0010LR\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\f\u001a\u00020\rX\u0082\u000e¢\u0006\u0004\n\u0002\u0010\u000eR\u000e\u0010\u000f\u001a\u00020\u0010X\u0082\u0004¢\u0006\u0002\n\u0000R\u001a\u0010\u0011\u001a\b\u0012\u0004\u0012\u00020\u00130\u0012X\u0080\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0014\u0010\u0015R$\u0010\u0016\u001a\u00020\u00178\u0000@\u0000X\u0081\u000e¢\u0006\u0014\n\u0000\u0012\u0004\b\u0018\u0010\u0019\u001a\u0004\b\u001a\u0010\u001b\"\u0004\b\u001c\u0010\u001dR\u000e\u0010\u001e\u001a\u00020\u0017X\u0082\u000e¢\u0006\u0002\n\u0000R\u0010\u00100\u001a\u000201X\u0082\u000e¢\u0006\u0004\n\u0002\u0010\u000eR\u0014\u00102\u001a\u00020\u00178VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b2\u0010\u001bR\u0010\u00107\u001a\u000208X\u0082\u000e¢\u0006\u0004\n\u0002\u0010\u000eR\u000e\u0010<\u001a\u00020=X\u0082\u0004¢\u0006\u0002\n\u0000R\u0014\u0010>\u001a\u00020?X\u0096\u0004¢\u0006\b\n\u0000\u001a\u0004\b@\u0010A¨\u0006S"}, d2 = {"Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;", "Landroidx/compose/foundation/OverscrollEffect;", "context", "Landroid/content/Context;", "density", "Landroidx/compose/ui/unit/Density;", "glowColor", "Landroidx/compose/ui/graphics/Color;", "glowDrawPadding", "Landroidx/compose/foundation/layout/PaddingValues;", "<init>", "(Landroid/content/Context;Landroidx/compose/ui/unit/Density;JLandroidx/compose/foundation/layout/PaddingValues;Lkotlin/jvm/internal/DefaultConstructorMarker;)V", "pointerPosition", "Landroidx/compose/ui/geometry/Offset;", "J", "edgeEffectWrapper", "Landroidx/compose/foundation/EdgeEffectWrapper;", "redrawSignal", "Landroidx/compose/runtime/MutableState;", "", "getRedrawSignal$foundation", "()Landroidx/compose/runtime/MutableState;", "invalidationEnabled", "", "getInvalidationEnabled$foundation$annotations", "()V", "getInvalidationEnabled$foundation", "()Z", "setInvalidationEnabled$foundation", "(Z)V", "scrollCycleInProgress", "applyToScroll", "delta", "source", "Landroidx/compose/ui/input/nestedscroll/NestedScrollSource;", "performScroll", "Lkotlin/Function1;", "applyToScroll-Rhakbz0", "(JILkotlin/jvm/functions/Function1;)J", "applyToFling", "velocity", "Landroidx/compose/ui/unit/Velocity;", "performFling", "Lkotlin/Function2;", "Lkotlin/coroutines/Continuation;", "", "applyToFling-BMRW4eQ", "(JLkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "containerSize", "Landroidx/compose/ui/geometry/Size;", "isInProgress", "updateSize", "size", "updateSize-uvyYCjk$foundation", "(J)V", "pointerId", "Landroidx/compose/ui/input/pointer/PointerId;", "displacement", "displacement-F1C5BW0$foundation", "()J", "pointerInputNode", "Landroidx/compose/ui/input/pointer/SuspendingPointerInputModifierNode;", "node", "Landroidx/compose/ui/node/DelegatableNode;", "getNode", "()Landroidx/compose/ui/node/DelegatableNode;", "invalidateOverscroll", "invalidateOverscroll$foundation", "animateToReleaseIfNeeded", "releaseOppositeOverscroll", "releaseOppositeOverscroll-k-4lQ0M", "(J)Z", "pullTop", "", "scroll", "pullTop-k-4lQ0M", "(J)F", "pullBottom", "pullBottom-k-4lQ0M", "pullLeft", "pullLeft-k-4lQ0M", "pullRight", "pullRight-k-4lQ0M", "foundation"}, k = 1, mv = {2, 0, 0}, xi = 48)
public final class AndroidEdgeEffectOverscrollEffect implements OverscrollEffect {
    public static final int $stable = 0;
    private long containerSize;
    private final Density density;
    private final EdgeEffectWrapper edgeEffectWrapper;
    private boolean invalidationEnabled;
    private final DelegatableNode node;
    private long pointerId;
    private final SuspendingPointerInputModifierNode pointerInputNode;
    private long pointerPosition;
    private final MutableState<Unit> redrawSignal;
    private boolean scrollCycleInProgress;

    public /* synthetic */ AndroidEdgeEffectOverscrollEffect(Context context, Density density, long j, PaddingValues paddingValues, DefaultConstructorMarker defaultConstructorMarker) {
        this(context, density, j, paddingValues);
    }

    public static /* synthetic */ void getInvalidationEnabled$foundation$annotations() {
    }

    private AndroidEdgeEffectOverscrollEffect(Context context, Density density, long glowColor, PaddingValues glowDrawPadding) {
        GlowOverscrollNode glowOverscrollNode;
        this.density = density;
        this.pointerPosition = Offset.INSTANCE.m4467getUnspecifiedF1C5BW0();
        this.edgeEffectWrapper = new EdgeEffectWrapper(context, ColorKt.m4751toArgb8_81llA(glowColor));
        this.redrawSignal = SnapshotStateKt.mutableStateOf(Unit.INSTANCE, SnapshotStateKt.neverEqualPolicy());
        this.invalidationEnabled = true;
        this.containerSize = Size.INSTANCE.m4530getZeroNHjbRc();
        this.pointerId = PointerId.m5990constructorimpl(-1L);
        this.pointerInputNode = SuspendingPointerInputFilterKt.SuspendingPointerInputModifierNode(new PointerInputEventHandler() { // from class: androidx.compose.foundation.AndroidEdgeEffectOverscrollEffect$pointerInputNode$1

            /* JADX INFO: renamed from: androidx.compose.foundation.AndroidEdgeEffectOverscrollEffect$pointerInputNode$1$1, reason: invalid class name */
            /* JADX INFO: compiled from: AndroidOverscroll.android.kt */
            @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;"}, k = 3, mv = {2, 0, 0}, xi = 48)
            @DebugMetadata(c = "androidx.compose.foundation.AndroidEdgeEffectOverscrollEffect$pointerInputNode$1$1", f = "AndroidOverscroll.android.kt", i = {0, 1}, l = {783, 787}, m = "invokeSuspend", n = {"$this$awaitEachGesture", "$this$awaitEachGesture"}, s = {"L$0", "L$0"}, v = 1)
            static final class AnonymousClass1 extends RestrictedSuspendLambda implements Function2<AwaitPointerEventScope, Continuation<? super Unit>, Object> {
                private /* synthetic */ Object L$0;
                int label;
                final /* synthetic */ AndroidEdgeEffectOverscrollEffect this$0;

                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                AnonymousClass1(AndroidEdgeEffectOverscrollEffect androidEdgeEffectOverscrollEffect, Continuation<? super AnonymousClass1> continuation) {
                    super(2, continuation);
                    this.this$0 = androidEdgeEffectOverscrollEffect;
                }

                @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
                public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
                    AnonymousClass1 anonymousClass1 = new AnonymousClass1(this.this$0, continuation);
                    anonymousClass1.L$0 = obj;
                    return anonymousClass1;
                }

                @Override // kotlin.jvm.functions.Function2
                public final Object invoke(AwaitPointerEventScope awaitPointerEventScope, Continuation<? super Unit> continuation) {
                    return ((AnonymousClass1) create(awaitPointerEventScope, continuation)).invokeSuspend(Unit.INSTANCE);
                }

                /* JADX WARN: Removed duplicated region for block: B:15:0x0075 A[RETURN] */
                /* JADX WARN: Removed duplicated region for block: B:16:0x0076  */
                /* JADX WARN: Removed duplicated region for block: B:19:0x0099  */
                /* JADX WARN: Removed duplicated region for block: B:25:0x00c9  */
                /* JADX WARN: Removed duplicated region for block: B:32:0x00f9  */
                /* JADX WARN: Removed duplicated region for block: B:35:0x0104  */
                /* JADX WARN: Removed duplicated region for block: B:38:0x011f  */
                /* JADX WARN: Removed duplicated region for block: B:39:0x0121  */
                /* JADX WARN: Removed duplicated region for block: B:41:0x0124  */
                /* JADX WARN: Removed duplicated region for block: B:43:0x0132  */
                /* JADX WARN: Removed duplicated region for block: B:47:0x00f1 A[SYNTHETIC] */
                /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:16:0x0076 -> B:17:0x007d). Please report as a decompilation issue!!! */
                @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
                /*
                    Code decompiled incorrectly, please refer to instructions dump.
                */
                public final Object invokeSuspend(Object $result) {
                    AwaitPointerEventScope $this$awaitEachGesture;
                    Object $result2;
                    Object $result3;
                    Object objAwaitPointerEvent$default;
                    Object $result4;
                    Object $result5;
                    AnonymousClass1 anonymousClass1;
                    AwaitPointerEventScope $this$awaitEachGesture2;
                    int index$iv$iv;
                    int size;
                    List pressedChanges;
                    int index$iv$iv2;
                    int size2;
                    Object obj;
                    Object it$iv;
                    PointerInputChange change;
                    Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
                    PointerEventPass pointerEventPass = null;
                    int i = 1;
                    switch (this.label) {
                        case 0:
                            ResultKt.throwOnFailure($result);
                            $this$awaitEachGesture = (AwaitPointerEventScope) this.L$0;
                            this.L$0 = $this$awaitEachGesture;
                            this.label = 1;
                            Object objAwaitFirstDown$default = TapGestureDetectorKt.awaitFirstDown$default($this$awaitEachGesture, false, null, this, 2, null);
                            if (objAwaitFirstDown$default == coroutine_suspended) {
                                return coroutine_suspended;
                            }
                            $result2 = $result;
                            $result3 = objAwaitFirstDown$default;
                            PointerInputChange down = (PointerInputChange) $result3;
                            this.this$0.pointerId = down.getId();
                            this.this$0.pointerPosition = down.getPosition();
                            Object $result6 = $result2;
                            AwaitPointerEventScope $this$awaitEachGesture3 = $this$awaitEachGesture;
                            AnonymousClass1 anonymousClass12 = this;
                            anonymousClass12.L$0 = $this$awaitEachGesture3;
                            anonymousClass12.label = 2;
                            objAwaitPointerEvent$default = AwaitPointerEventScope.awaitPointerEvent$default($this$awaitEachGesture3, pointerEventPass, anonymousClass12, i, pointerEventPass);
                            if (objAwaitPointerEvent$default == coroutine_suspended) {
                                return coroutine_suspended;
                            }
                            AwaitPointerEventScope awaitPointerEventScope = $this$awaitEachGesture3;
                            $result4 = $result6;
                            $result5 = objAwaitPointerEvent$default;
                            anonymousClass1 = anonymousClass12;
                            $this$awaitEachGesture2 = awaitPointerEventScope;
                            List<PointerInputChange> changes = ((PointerEvent) $result5).getChanges();
                            List target$iv = new ArrayList(changes.size());
                            size = changes.size();
                            for (index$iv$iv = 0; index$iv$iv < size; index$iv$iv++) {
                                PointerInputChange pointerInputChange = changes.get(index$iv$iv);
                                PointerInputChange it = pointerInputChange;
                                if (it.getPressed()) {
                                    target$iv.add(pointerInputChange);
                                }
                            }
                            pressedChanges = target$iv;
                            AndroidEdgeEffectOverscrollEffect androidEdgeEffectOverscrollEffect = anonymousClass1.this$0;
                            index$iv$iv2 = 0;
                            size2 = pressedChanges.size();
                            while (true) {
                                if (index$iv$iv2 >= size2) {
                                    Object item$iv$iv = pressedChanges.get(index$iv$iv2);
                                    it$iv = item$iv$iv;
                                    PointerInputChange it2 = (PointerInputChange) it$iv;
                                    obj = coroutine_suspended;
                                    if (!PointerId.m5992equalsimpl0(it2.getId(), androidEdgeEffectOverscrollEffect.pointerId)) {
                                        index$iv$iv2++;
                                        coroutine_suspended = obj;
                                    }
                                } else {
                                    obj = coroutine_suspended;
                                    it$iv = null;
                                }
                            }
                            change = (PointerInputChange) it$iv;
                            if (change == null) {
                                change = (PointerInputChange) CollectionsKt.firstOrNull(pressedChanges);
                            }
                            if (change != null) {
                                anonymousClass1.this$0.pointerId = change.getId();
                                anonymousClass1.this$0.pointerPosition = change.getPosition();
                            }
                            if (pressedChanges.isEmpty()) {
                                anonymousClass1.this$0.pointerId = PointerId.m5990constructorimpl(-1L);
                                return Unit.INSTANCE;
                            }
                            coroutine_suspended = obj;
                            $result6 = $result4;
                            $this$awaitEachGesture3 = $this$awaitEachGesture2;
                            anonymousClass12 = anonymousClass1;
                            pointerEventPass = null;
                            i = 1;
                            anonymousClass12.L$0 = $this$awaitEachGesture3;
                            anonymousClass12.label = 2;
                            objAwaitPointerEvent$default = AwaitPointerEventScope.awaitPointerEvent$default($this$awaitEachGesture3, pointerEventPass, anonymousClass12, i, pointerEventPass);
                            if (objAwaitPointerEvent$default == coroutine_suspended) {
                            }
                            break;
                        case 1:
                            $result3 = $result;
                            AwaitPointerEventScope $this$awaitEachGesture4 = (AwaitPointerEventScope) this.L$0;
                            ResultKt.throwOnFailure($result3);
                            $this$awaitEachGesture = $this$awaitEachGesture4;
                            $result2 = $result3;
                            PointerInputChange down2 = (PointerInputChange) $result3;
                            this.this$0.pointerId = down2.getId();
                            this.this$0.pointerPosition = down2.getPosition();
                            Object $result62 = $result2;
                            AwaitPointerEventScope $this$awaitEachGesture32 = $this$awaitEachGesture;
                            AnonymousClass1 anonymousClass122 = this;
                            anonymousClass122.L$0 = $this$awaitEachGesture32;
                            anonymousClass122.label = 2;
                            objAwaitPointerEvent$default = AwaitPointerEventScope.awaitPointerEvent$default($this$awaitEachGesture32, pointerEventPass, anonymousClass122, i, pointerEventPass);
                            if (objAwaitPointerEvent$default == coroutine_suspended) {
                            }
                            break;
                        case 2:
                            $result5 = $result;
                            AwaitPointerEventScope $this$awaitEachGesture5 = (AwaitPointerEventScope) this.L$0;
                            ResultKt.throwOnFailure($result5);
                            anonymousClass1 = this;
                            $this$awaitEachGesture2 = $this$awaitEachGesture5;
                            $result4 = $result5;
                            List<PointerInputChange> changes2 = ((PointerEvent) $result5).getChanges();
                            List target$iv2 = new ArrayList(changes2.size());
                            size = changes2.size();
                            while (index$iv$iv < size) {
                            }
                            pressedChanges = target$iv2;
                            AndroidEdgeEffectOverscrollEffect androidEdgeEffectOverscrollEffect2 = anonymousClass1.this$0;
                            index$iv$iv2 = 0;
                            size2 = pressedChanges.size();
                            while (true) {
                                if (index$iv$iv2 >= size2) {
                                }
                                index$iv$iv2++;
                                coroutine_suspended = obj;
                            }
                            change = (PointerInputChange) it$iv;
                            if (change == null) {
                            }
                            if (change != null) {
                            }
                            if (pressedChanges.isEmpty()) {
                            }
                            break;
                        default:
                            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                    }
                }
            }

            @Override // androidx.compose.ui.input.pointer.PointerInputEventHandler
            public final Object invoke(PointerInputScope $this$SuspendingPointerInputModifierNode, Continuation<? super Unit> continuation) {
                Object objAwaitEachGesture = ForEachGestureKt.awaitEachGesture($this$SuspendingPointerInputModifierNode, new AnonymousClass1(this.this$0, null), continuation);
                return objAwaitEachGesture == IntrinsicsKt.getCOROUTINE_SUSPENDED() ? objAwaitEachGesture : Unit.INSTANCE;
            }
        });
        if (Build.VERSION.SDK_INT >= 31) {
            glowOverscrollNode = new StretchOverscrollNode(this.pointerInputNode, this, this.edgeEffectWrapper);
        } else {
            glowOverscrollNode = new GlowOverscrollNode(this.pointerInputNode, this, this.edgeEffectWrapper, glowDrawPadding);
        }
        this.node = glowOverscrollNode;
    }

    public final MutableState<Unit> getRedrawSignal$foundation() {
        return this.redrawSignal;
    }

    /* JADX INFO: renamed from: getInvalidationEnabled$foundation, reason: from getter */
    public final boolean getInvalidationEnabled() {
        return this.invalidationEnabled;
    }

    public final void setInvalidationEnabled$foundation(boolean z) {
        this.invalidationEnabled = z;
    }

    /* JADX WARN: Removed duplicated region for block: B:106:0x02e8  */
    /* JADX WARN: Removed duplicated region for block: B:116:0x031e  */
    /* JADX WARN: Removed duplicated region for block: B:57:0x0172  */
    /* JADX WARN: Removed duplicated region for block: B:78:0x0204  */
    /* JADX WARN: Removed duplicated region for block: B:92:0x0267  */
    @Override // androidx.compose.foundation.OverscrollEffect
    /* JADX INFO: renamed from: applyToScroll-Rhakbz0, reason: not valid java name */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public long mo242applyToScrollRhakbz0(long delta, int source, Function1<? super Offset, Offset> performScroll) {
        long destretchDelta;
        float f;
        long destretchDelta2;
        float consumedPixelsY;
        float consumedPixelsY2;
        float consumedPixelsX;
        float f2;
        boolean appliedHorizontalOverscroll;
        boolean appliedVerticalOverscroll;
        if (Size.m4523isEmptyimpl(this.containerSize)) {
            return performScroll.invoke(Offset.m4441boximpl(delta)).m4462unboximpl();
        }
        if (!this.scrollCycleInProgress) {
            if (this.edgeEffectWrapper.isLeftStretched()) {
                m237pullLeftk4lQ0M(Offset.INSTANCE.m4468getZeroF1C5BW0());
            }
            if (this.edgeEffectWrapper.isRightStretched()) {
                m238pullRightk4lQ0M(Offset.INSTANCE.m4468getZeroF1C5BW0());
            }
            if (this.edgeEffectWrapper.isTopStretched()) {
                m239pullTopk4lQ0M(Offset.INSTANCE.m4468getZeroF1C5BW0());
            }
            if (this.edgeEffectWrapper.isBottomStretched()) {
                m236pullBottomk4lQ0M(Offset.INSTANCE.m4468getZeroF1C5BW0());
            }
            this.scrollCycleInProgress = true;
        }
        float destretchMultiplier = AndroidOverscroll_androidKt.m261destretchMultiplierGyEprt8(source);
        long destretchDelta3 = Offset.m4459timestuRUvjQ(delta, destretchMultiplier);
        int bits$iv$iv$iv = (int) (delta & 4294967295L);
        if (Float.intBitsToFloat(bits$iv$iv$iv) == 0.0f) {
            destretchDelta2 = destretchDelta3;
            consumedPixelsY = 0.0f;
            f = 0.0f;
        } else {
            if (this.edgeEffectWrapper.isTopStretched()) {
                f = 0.0f;
                int bits$iv$iv$iv2 = (int) (delta & 4294967295L);
                if (Float.intBitsToFloat(bits$iv$iv$iv2) < 0.0f) {
                    float consumed = m239pullTopk4lQ0M(destretchDelta3);
                    if (!this.edgeEffectWrapper.isTopStretched()) {
                        this.edgeEffectWrapper.getOrCreateTopEffect().finish();
                    }
                    int bits$iv$iv$iv3 = (int) (destretchDelta3 & 4294967295L);
                    if (consumed == Float.intBitsToFloat(bits$iv$iv$iv3)) {
                        int bits$iv$iv$iv4 = (int) (delta & 4294967295L);
                        consumedPixelsY = Float.intBitsToFloat(bits$iv$iv$iv4);
                        destretchDelta2 = destretchDelta3;
                    } else {
                        consumedPixelsY = consumed / destretchMultiplier;
                        destretchDelta2 = destretchDelta3;
                    }
                } else {
                    destretchDelta = destretchDelta3;
                }
            } else {
                destretchDelta = destretchDelta3;
                f = 0.0f;
            }
            if (this.edgeEffectWrapper.isBottomStretched()) {
                int bits$iv$iv$iv5 = (int) (delta & 4294967295L);
                if (Float.intBitsToFloat(bits$iv$iv$iv5) > f) {
                    destretchDelta2 = destretchDelta;
                    float consumed2 = m236pullBottomk4lQ0M(destretchDelta2);
                    if (!this.edgeEffectWrapper.isBottomStretched()) {
                        this.edgeEffectWrapper.getOrCreateBottomEffect().finish();
                    }
                    int bits$iv$iv$iv6 = (int) (destretchDelta2 & 4294967295L);
                    if (consumed2 == Float.intBitsToFloat(bits$iv$iv$iv6)) {
                        int bits$iv$iv$iv7 = (int) (delta & 4294967295L);
                        consumedPixelsY = Float.intBitsToFloat(bits$iv$iv$iv7);
                    } else {
                        consumedPixelsY = consumed2 / destretchMultiplier;
                    }
                } else {
                    destretchDelta2 = destretchDelta;
                    consumedPixelsY = f;
                }
            }
        }
        int bits$iv$iv$iv8 = (int) (delta >> 32);
        if (Float.intBitsToFloat(bits$iv$iv$iv8) == f) {
            consumedPixelsY2 = consumedPixelsY;
            consumedPixelsX = f;
        } else if (this.edgeEffectWrapper.isLeftStretched()) {
            int bits$iv$iv$iv9 = (int) (delta >> 32);
            if (Float.intBitsToFloat(bits$iv$iv$iv9) < f) {
                float consumed3 = m237pullLeftk4lQ0M(destretchDelta2);
                if (!this.edgeEffectWrapper.isLeftStretched()) {
                    this.edgeEffectWrapper.getOrCreateLeftEffect().finish();
                }
                consumedPixelsY2 = consumedPixelsY;
                int bits$iv$iv$iv10 = (int) (destretchDelta2 >> 32);
                if (consumed3 == Float.intBitsToFloat(bits$iv$iv$iv10)) {
                    int bits$iv$iv$iv11 = (int) (delta >> 32);
                    consumedPixelsX = Float.intBitsToFloat(bits$iv$iv$iv11);
                } else {
                    consumedPixelsX = consumed3 / destretchMultiplier;
                }
            } else {
                consumedPixelsY2 = consumedPixelsY;
                if (this.edgeEffectWrapper.isRightStretched()) {
                    int bits$iv$iv$iv12 = (int) (delta >> 32);
                    if (Float.intBitsToFloat(bits$iv$iv$iv12) > f) {
                        float consumed4 = m238pullRightk4lQ0M(destretchDelta2);
                        if (!this.edgeEffectWrapper.isRightStretched()) {
                            this.edgeEffectWrapper.getOrCreateRightEffect().finish();
                        }
                        int bits$iv$iv$iv13 = (int) (destretchDelta2 >> 32);
                        if (consumed4 == Float.intBitsToFloat(bits$iv$iv$iv13)) {
                            int bits$iv$iv$iv14 = (int) (delta >> 32);
                            consumedPixelsX = Float.intBitsToFloat(bits$iv$iv$iv14);
                        } else {
                            consumedPixelsX = consumed4 / destretchMultiplier;
                        }
                    } else {
                        consumedPixelsX = f;
                    }
                }
            }
        }
        float y$iv = consumedPixelsY2;
        float x$iv = consumedPixelsX;
        long v1$iv$iv = Float.floatToRawIntBits(x$iv);
        long v2$iv$iv = Float.floatToRawIntBits(y$iv);
        long consumedOffset = Offset.m4444constructorimpl((v1$iv$iv << 32) | (v2$iv$iv & 4294967295L));
        if (!Offset.m4449equalsimpl0(consumedOffset, Offset.INSTANCE.m4468getZeroF1C5BW0())) {
            invalidateOverscroll$foundation();
        }
        long leftForDelta = Offset.m4456minusMKHz9U(delta, consumedOffset);
        long consumedByDelta = performScroll.invoke(Offset.m4441boximpl(leftForDelta)).m4462unboximpl();
        long leftForOverscroll = Offset.m4456minusMKHz9U(leftForDelta, consumedByDelta);
        int bits$iv$iv$iv15 = (int) (leftForDelta >> 32);
        if (Float.intBitsToFloat(bits$iv$iv$iv15) == f) {
            int bits$iv$iv$iv16 = (int) (leftForDelta & 4294967295L);
            if (!(Float.intBitsToFloat(bits$iv$iv$iv16) == f)) {
                int bits$iv$iv$iv17 = (int) (consumedByDelta >> 32);
                if (Float.intBitsToFloat(bits$iv$iv$iv17) == f) {
                    int bits$iv$iv$iv18 = (int) (consumedByDelta & 4294967295L);
                    if (!(Float.intBitsToFloat(bits$iv$iv$iv18) == f)) {
                        EdgeEffectWrapper $this$applyToScroll_Rhakbz0_u24lambda_u244 = this.edgeEffectWrapper;
                        if ($this$applyToScroll_Rhakbz0_u24lambda_u244.isLeftStretched() || $this$applyToScroll_Rhakbz0_u24lambda_u244.isTopStretched() || $this$applyToScroll_Rhakbz0_u24lambda_u244.isRightStretched() || $this$applyToScroll_Rhakbz0_u24lambda_u244.isBottomStretched()) {
                            animateToReleaseIfNeeded();
                        }
                    }
                }
            }
        }
        boolean appliedVerticalOverscroll2 = false;
        if (NestedScrollSource.m5878equalsimpl0(source, NestedScrollSource.INSTANCE.m5890getUserInputWNlRxjI())) {
            int bits$iv$iv$iv19 = (int) (leftForOverscroll >> 32);
            if (Float.intBitsToFloat(bits$iv$iv$iv19) > 0.5f) {
                m237pullLeftk4lQ0M(leftForOverscroll);
                f2 = 0.5f;
                appliedHorizontalOverscroll = true;
            } else {
                f2 = 0.5f;
                int bits$iv$iv$iv20 = (int) (leftForOverscroll >> 32);
                if (Float.intBitsToFloat(bits$iv$iv$iv20) < -0.5f) {
                    m238pullRightk4lQ0M(leftForOverscroll);
                    appliedHorizontalOverscroll = true;
                } else {
                    appliedHorizontalOverscroll = false;
                }
            }
            boolean appliedHorizontalOverscroll2 = appliedHorizontalOverscroll;
            int bits$iv$iv$iv21 = (int) (leftForOverscroll & 4294967295L);
            if (Float.intBitsToFloat(bits$iv$iv$iv21) > f2) {
                m239pullTopk4lQ0M(leftForOverscroll);
                appliedVerticalOverscroll = true;
            } else {
                int bits$iv$iv$iv22 = (int) (leftForOverscroll & 4294967295L);
                if (Float.intBitsToFloat(bits$iv$iv$iv22) < -0.5f) {
                    m236pullBottomk4lQ0M(leftForOverscroll);
                    appliedVerticalOverscroll = true;
                } else {
                    appliedVerticalOverscroll = false;
                }
            }
            appliedVerticalOverscroll2 = appliedHorizontalOverscroll2 || appliedVerticalOverscroll;
        }
        if (!Offset.m4449equalsimpl0(leftForDelta, Offset.INSTANCE.m4468getZeroF1C5BW0())) {
            appliedVerticalOverscroll2 = m240releaseOppositeOverscrollk4lQ0M(delta) || appliedVerticalOverscroll2;
        }
        if (appliedVerticalOverscroll2) {
            invalidateOverscroll$foundation();
        }
        return Offset.m4457plusMKHz9U(consumedOffset, consumedByDelta);
    }

    /* JADX WARN: Removed duplicated region for block: B:52:0x0194  */
    /* JADX WARN: Removed duplicated region for block: B:53:0x01a8  */
    /* JADX WARN: Removed duplicated region for block: B:58:0x01cc  */
    /* JADX WARN: Removed duplicated region for block: B:59:0x01e0  */
    /* JADX WARN: Removed duplicated region for block: B:7:0x0018  */
    @Override // androidx.compose.foundation.OverscrollEffect
    /* JADX INFO: renamed from: applyToFling-BMRW4eQ, reason: not valid java name */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public Object mo241applyToFlingBMRW4eQ(long j, Function2<? super Velocity, ? super Continuation<? super Velocity>, ? extends Object> function2, Continuation<? super Unit> continuation) {
        AndroidEdgeEffectOverscrollEffect$applyToFling$1 androidEdgeEffectOverscrollEffect$applyToFling$1;
        float f;
        long j2;
        float consumedX;
        float consumedY;
        long remainingVelocity;
        Object objInvoke;
        AndroidEdgeEffectOverscrollEffect androidEdgeEffectOverscrollEffect;
        long consumedByVelocity;
        if (continuation instanceof AndroidEdgeEffectOverscrollEffect$applyToFling$1) {
            androidEdgeEffectOverscrollEffect$applyToFling$1 = (AndroidEdgeEffectOverscrollEffect$applyToFling$1) continuation;
            if ((androidEdgeEffectOverscrollEffect$applyToFling$1.label & Integer.MIN_VALUE) != 0) {
                androidEdgeEffectOverscrollEffect$applyToFling$1.label -= Integer.MIN_VALUE;
            } else {
                androidEdgeEffectOverscrollEffect$applyToFling$1 = new AndroidEdgeEffectOverscrollEffect$applyToFling$1(this, continuation);
            }
        }
        Object $result = androidEdgeEffectOverscrollEffect$applyToFling$1.result;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        switch (androidEdgeEffectOverscrollEffect$applyToFling$1.label) {
            case 0:
                ResultKt.throwOnFailure($result);
                if (Size.m4523isEmptyimpl(this.containerSize)) {
                    Velocity velocityM7734boximpl = Velocity.m7734boximpl(j);
                    androidEdgeEffectOverscrollEffect$applyToFling$1.label = 1;
                    if (function2.invoke(velocityM7734boximpl, androidEdgeEffectOverscrollEffect$applyToFling$1) == coroutine_suspended) {
                        return coroutine_suspended;
                    }
                    return Unit.INSTANCE;
                }
                if (!this.edgeEffectWrapper.isLeftStretched() || Velocity.m7743getXimpl(j) >= 0.0f) {
                    f = 0.0f;
                    j2 = j;
                    if (this.edgeEffectWrapper.isRightStretched() && Velocity.m7743getXimpl(j2) > 0.0f) {
                        EdgeEffectCompat edgeEffectCompat = EdgeEffectCompat.INSTANCE;
                        EdgeEffect orCreateRightEffect = this.edgeEffectWrapper.getOrCreateRightEffect();
                        float f2 = -Velocity.m7743getXimpl(j2);
                        int bits$iv$iv$iv = (int) (this.containerSize >> 32);
                        consumedX = -edgeEffectCompat.absorbToRelaxIfNeeded(orCreateRightEffect, f2, Float.intBitsToFloat(bits$iv$iv$iv), this.density);
                    } else {
                        consumedX = 0.0f;
                    }
                } else {
                    EdgeEffectCompat edgeEffectCompat2 = EdgeEffectCompat.INSTANCE;
                    EdgeEffect orCreateLeftEffect = this.edgeEffectWrapper.getOrCreateLeftEffect();
                    float fM7743getXimpl = Velocity.m7743getXimpl(j);
                    f = 0.0f;
                    j2 = j;
                    int bits$iv$iv$iv2 = (int) (this.containerSize >> 32);
                    consumedX = edgeEffectCompat2.absorbToRelaxIfNeeded(orCreateLeftEffect, fM7743getXimpl, Float.intBitsToFloat(bits$iv$iv$iv2), this.density);
                }
                if (this.edgeEffectWrapper.isTopStretched() && Velocity.m7744getYimpl(j2) < f) {
                    EdgeEffectCompat edgeEffectCompat3 = EdgeEffectCompat.INSTANCE;
                    EdgeEffect orCreateTopEffect = this.edgeEffectWrapper.getOrCreateTopEffect();
                    float fM7744getYimpl = Velocity.m7744getYimpl(j2);
                    int bits$iv$iv$iv3 = (int) (4294967295L & this.containerSize);
                    consumedY = edgeEffectCompat3.absorbToRelaxIfNeeded(orCreateTopEffect, fM7744getYimpl, Float.intBitsToFloat(bits$iv$iv$iv3), this.density);
                } else if (this.edgeEffectWrapper.isBottomStretched() && Velocity.m7744getYimpl(j2) > f) {
                    EdgeEffectCompat edgeEffectCompat4 = EdgeEffectCompat.INSTANCE;
                    EdgeEffect orCreateBottomEffect = this.edgeEffectWrapper.getOrCreateBottomEffect();
                    float f3 = -Velocity.m7744getYimpl(j2);
                    int bits$iv$iv$iv4 = (int) (4294967295L & this.containerSize);
                    consumedY = -edgeEffectCompat4.absorbToRelaxIfNeeded(orCreateBottomEffect, f3, Float.intBitsToFloat(bits$iv$iv$iv4), this.density);
                } else {
                    consumedY = f;
                }
                long consumed = VelocityKt.Velocity(consumedX, consumedY);
                if (!Velocity.m7742equalsimpl0(consumed, Velocity.INSTANCE.m7754getZero9UxMQ8M())) {
                    invalidateOverscroll$foundation();
                }
                remainingVelocity = Velocity.m7746minusAH228Gc(j2, consumed);
                Velocity velocityM7734boximpl2 = Velocity.m7734boximpl(remainingVelocity);
                androidEdgeEffectOverscrollEffect$applyToFling$1.J$0 = remainingVelocity;
                androidEdgeEffectOverscrollEffect$applyToFling$1.label = 2;
                objInvoke = function2.invoke(velocityM7734boximpl2, androidEdgeEffectOverscrollEffect$applyToFling$1);
                if (objInvoke == coroutine_suspended) {
                    return coroutine_suspended;
                }
                androidEdgeEffectOverscrollEffect = this;
                consumedByVelocity = Velocity.m7746minusAH228Gc(remainingVelocity, ((Velocity) objInvoke).getPackedValue());
                androidEdgeEffectOverscrollEffect.scrollCycleInProgress = false;
                if (Velocity.m7743getXimpl(consumedByVelocity) <= f) {
                    EdgeEffectCompat.INSTANCE.onAbsorbCompat(androidEdgeEffectOverscrollEffect.edgeEffectWrapper.getOrCreateLeftEffect(), MathKt.roundToInt(Velocity.m7743getXimpl(consumedByVelocity)));
                } else if (Velocity.m7743getXimpl(consumedByVelocity) < f) {
                    EdgeEffectCompat.INSTANCE.onAbsorbCompat(androidEdgeEffectOverscrollEffect.edgeEffectWrapper.getOrCreateRightEffect(), -MathKt.roundToInt(Velocity.m7743getXimpl(consumedByVelocity)));
                }
                if (Velocity.m7744getYimpl(consumedByVelocity) <= f) {
                    EdgeEffectCompat.INSTANCE.onAbsorbCompat(androidEdgeEffectOverscrollEffect.edgeEffectWrapper.getOrCreateTopEffect(), MathKt.roundToInt(Velocity.m7744getYimpl(consumedByVelocity)));
                } else if (Velocity.m7744getYimpl(consumedByVelocity) < f) {
                    EdgeEffectCompat.INSTANCE.onAbsorbCompat(androidEdgeEffectOverscrollEffect.edgeEffectWrapper.getOrCreateBottomEffect(), -MathKt.roundToInt(Velocity.m7744getYimpl(consumedByVelocity)));
                }
                androidEdgeEffectOverscrollEffect.animateToReleaseIfNeeded();
                return Unit.INSTANCE;
            case 1:
                ResultKt.throwOnFailure($result);
                return Unit.INSTANCE;
            case 2:
                androidEdgeEffectOverscrollEffect = this;
                remainingVelocity = androidEdgeEffectOverscrollEffect$applyToFling$1.J$0;
                ResultKt.throwOnFailure($result);
                objInvoke = $result;
                f = 0.0f;
                consumedByVelocity = Velocity.m7746minusAH228Gc(remainingVelocity, ((Velocity) objInvoke).getPackedValue());
                androidEdgeEffectOverscrollEffect.scrollCycleInProgress = false;
                if (Velocity.m7743getXimpl(consumedByVelocity) <= f) {
                }
                if (Velocity.m7744getYimpl(consumedByVelocity) <= f) {
                }
                androidEdgeEffectOverscrollEffect.animateToReleaseIfNeeded();
                return Unit.INSTANCE;
            default:
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }
    }

    @Override // androidx.compose.foundation.OverscrollEffect
    public boolean isInProgress() {
        EdgeEffectWrapper this_$iv = this.edgeEffectWrapper;
        EdgeEffect it = this_$iv.topEffect;
        if (it != null) {
            if (!(EdgeEffectCompat.INSTANCE.getDistanceCompat(it) == 0.0f)) {
                return true;
            }
        }
        EdgeEffect it2 = this_$iv.bottomEffect;
        if (it2 != null) {
            if (!(EdgeEffectCompat.INSTANCE.getDistanceCompat(it2) == 0.0f)) {
                return true;
            }
        }
        EdgeEffect it3 = this_$iv.leftEffect;
        if (it3 != null) {
            if (!(EdgeEffectCompat.INSTANCE.getDistanceCompat(it3) == 0.0f)) {
                return true;
            }
        }
        EdgeEffect it4 = this_$iv.rightEffect;
        if (it4 != null) {
            if (!(EdgeEffectCompat.INSTANCE.getDistanceCompat(it4) == 0.0f)) {
                return true;
            }
        }
        return false;
    }

    /* JADX INFO: renamed from: updateSize-uvyYCjk$foundation, reason: not valid java name */
    public final void m244updateSizeuvyYCjk$foundation(long size) {
        boolean initialSetSize = Size.m4517equalsimpl0(this.containerSize, Size.INSTANCE.m4530getZeroNHjbRc());
        boolean differentSize = !Size.m4517equalsimpl0(size, this.containerSize);
        this.containerSize = size;
        if (differentSize) {
            EdgeEffectWrapper edgeEffectWrapper = this.edgeEffectWrapper;
            int bits$iv$iv$iv = (int) (size >> 32);
            int width$iv = MathKt.roundToInt(Float.intBitsToFloat(bits$iv$iv$iv));
            int bits$iv$iv$iv2 = (int) (size & 4294967295L);
            int height$iv = MathKt.roundToInt(Float.intBitsToFloat(bits$iv$iv$iv2));
            edgeEffectWrapper.m318updateSizeozmzZPI(IntSize.m7671constructorimpl((((long) width$iv) << 32) | (((long) height$iv) & 4294967295L)));
        }
        if (initialSetSize || !differentSize) {
            return;
        }
        animateToReleaseIfNeeded();
    }

    /* JADX INFO: renamed from: displacement-F1C5BW0$foundation, reason: not valid java name */
    public final long m243displacementF1C5BW0$foundation() {
        long pointer = ((9223372034707292159L & this.pointerPosition) > InlineClassHelperKt.UnspecifiedPackedFloats ? 1 : ((9223372034707292159L & this.pointerPosition) == InlineClassHelperKt.UnspecifiedPackedFloats ? 0 : -1)) != 0 ? this.pointerPosition : SizeKt.m4531getCenteruvyYCjk(this.containerSize);
        int bits$iv$iv$iv = (int) (pointer >> 32);
        float fIntBitsToFloat = Float.intBitsToFloat(bits$iv$iv$iv);
        int bits$iv$iv$iv2 = (int) (this.containerSize >> 32);
        float x = fIntBitsToFloat / Float.intBitsToFloat(bits$iv$iv$iv2);
        int bits$iv$iv$iv3 = (int) (pointer & 4294967295L);
        float fIntBitsToFloat2 = Float.intBitsToFloat(bits$iv$iv$iv3);
        int bits$iv$iv$iv4 = (int) (this.containerSize & 4294967295L);
        float y = fIntBitsToFloat2 / Float.intBitsToFloat(bits$iv$iv$iv4);
        long v1$iv$iv = Float.floatToRawIntBits(x);
        long v2$iv$iv = Float.floatToRawIntBits(y);
        return Offset.m4444constructorimpl((v1$iv$iv << 32) | (v2$iv$iv & 4294967295L));
    }

    @Override // androidx.compose.foundation.OverscrollEffect
    public DelegatableNode getNode() {
        return this.node;
    }

    public final void invalidateOverscroll$foundation() {
        if (this.invalidationEnabled) {
            this.redrawSignal.setValue(Unit.INSTANCE);
        }
    }

    private final void animateToReleaseIfNeeded() {
        boolean needsInvalidation = false;
        EdgeEffectWrapper this_$iv = this.edgeEffectWrapper;
        EdgeEffect it = this_$iv.topEffect;
        boolean z = true;
        if (it != null) {
            it.onRelease();
            needsInvalidation = !it.isFinished();
        }
        EdgeEffect it2 = this_$iv.bottomEffect;
        if (it2 != null) {
            it2.onRelease();
            needsInvalidation = !it2.isFinished() || needsInvalidation;
        }
        EdgeEffect it3 = this_$iv.leftEffect;
        if (it3 != null) {
            it3.onRelease();
            needsInvalidation = !it3.isFinished() || needsInvalidation;
        }
        EdgeEffect it4 = this_$iv.rightEffect;
        if (it4 != null) {
            it4.onRelease();
            if (it4.isFinished() && !needsInvalidation) {
                z = false;
            }
            needsInvalidation = z;
        }
        if (needsInvalidation) {
            invalidateOverscroll$foundation();
        }
    }

    /* JADX INFO: renamed from: releaseOppositeOverscroll-k-4lQ0M, reason: not valid java name */
    private final boolean m240releaseOppositeOverscrollk4lQ0M(long delta) {
        boolean needsInvalidation = false;
        if (this.edgeEffectWrapper.isLeftAnimating()) {
            int bits$iv$iv$iv = (int) (delta >> 32);
            if (Float.intBitsToFloat(bits$iv$iv$iv) < 0.0f) {
                int bits$iv$iv$iv2 = (int) (delta >> 32);
                EdgeEffectCompat.INSTANCE.onReleaseWithOppositeDelta(this.edgeEffectWrapper.getOrCreateLeftEffect(), Float.intBitsToFloat(bits$iv$iv$iv2));
                needsInvalidation = this.edgeEffectWrapper.isLeftAnimating();
            }
        }
        if (this.edgeEffectWrapper.isRightAnimating()) {
            int bits$iv$iv$iv3 = (int) (delta >> 32);
            if (Float.intBitsToFloat(bits$iv$iv$iv3) > 0.0f) {
                int bits$iv$iv$iv4 = (int) (delta >> 32);
                EdgeEffectCompat.INSTANCE.onReleaseWithOppositeDelta(this.edgeEffectWrapper.getOrCreateRightEffect(), Float.intBitsToFloat(bits$iv$iv$iv4));
                needsInvalidation = needsInvalidation || this.edgeEffectWrapper.isRightAnimating();
            }
        }
        if (this.edgeEffectWrapper.isTopAnimating()) {
            int bits$iv$iv$iv5 = (int) (delta & 4294967295L);
            if (Float.intBitsToFloat(bits$iv$iv$iv5) < 0.0f) {
                int bits$iv$iv$iv6 = (int) (delta & 4294967295L);
                EdgeEffectCompat.INSTANCE.onReleaseWithOppositeDelta(this.edgeEffectWrapper.getOrCreateTopEffect(), Float.intBitsToFloat(bits$iv$iv$iv6));
                needsInvalidation = needsInvalidation || this.edgeEffectWrapper.isTopAnimating();
            }
        }
        if (!this.edgeEffectWrapper.isBottomAnimating()) {
            return needsInvalidation;
        }
        int bits$iv$iv$iv7 = (int) (delta & 4294967295L);
        if (Float.intBitsToFloat(bits$iv$iv$iv7) <= 0.0f) {
            return needsInvalidation;
        }
        int bits$iv$iv$iv8 = (int) (4294967295L & delta);
        EdgeEffectCompat.INSTANCE.onReleaseWithOppositeDelta(this.edgeEffectWrapper.getOrCreateBottomEffect(), Float.intBitsToFloat(bits$iv$iv$iv8));
        return needsInvalidation || this.edgeEffectWrapper.isBottomAnimating();
    }

    /* JADX INFO: renamed from: pullTop-k-4lQ0M, reason: not valid java name */
    private final float m239pullTopk4lQ0M(long scroll) {
        int bits$iv$iv$iv = (int) (m243displacementF1C5BW0$foundation() >> 32);
        float displacementX = Float.intBitsToFloat(bits$iv$iv$iv);
        int bits$iv$iv$iv2 = (int) (scroll & 4294967295L);
        float fIntBitsToFloat = Float.intBitsToFloat(bits$iv$iv$iv2);
        int bits$iv$iv$iv3 = (int) (this.containerSize & 4294967295L);
        float pullY = fIntBitsToFloat / Float.intBitsToFloat(bits$iv$iv$iv3);
        EdgeEffect topEffect = this.edgeEffectWrapper.getOrCreateTopEffect();
        float fOnPullDistanceCompat = EdgeEffectCompat.INSTANCE.onPullDistanceCompat(topEffect, pullY, displacementX);
        int bits$iv$iv$iv4 = (int) (this.containerSize & 4294967295L);
        float consumed = fOnPullDistanceCompat * Float.intBitsToFloat(bits$iv$iv$iv4);
        if (EdgeEffectCompat.INSTANCE.getDistanceCompat(topEffect) == 0.0f) {
            return consumed;
        }
        int bits$iv$iv$iv5 = (int) (4294967295L & scroll);
        return Float.intBitsToFloat(bits$iv$iv$iv5);
    }

    /* JADX INFO: renamed from: pullBottom-k-4lQ0M, reason: not valid java name */
    private final float m236pullBottomk4lQ0M(long scroll) {
        int bits$iv$iv$iv = (int) (m243displacementF1C5BW0$foundation() >> 32);
        float displacementX = Float.intBitsToFloat(bits$iv$iv$iv);
        int bits$iv$iv$iv2 = (int) (scroll & 4294967295L);
        float fIntBitsToFloat = Float.intBitsToFloat(bits$iv$iv$iv2);
        int bits$iv$iv$iv3 = (int) (this.containerSize & 4294967295L);
        float pullY = fIntBitsToFloat / Float.intBitsToFloat(bits$iv$iv$iv3);
        EdgeEffect bottomEffect = this.edgeEffectWrapper.getOrCreateBottomEffect();
        float f = -EdgeEffectCompat.INSTANCE.onPullDistanceCompat(bottomEffect, -pullY, 1 - displacementX);
        int bits$iv$iv$iv4 = (int) (this.containerSize & 4294967295L);
        float consumed = f * Float.intBitsToFloat(bits$iv$iv$iv4);
        if (EdgeEffectCompat.INSTANCE.getDistanceCompat(bottomEffect) == 0.0f) {
            return consumed;
        }
        int bits$iv$iv$iv5 = (int) (4294967295L & scroll);
        return Float.intBitsToFloat(bits$iv$iv$iv5);
    }

    /* JADX INFO: renamed from: pullLeft-k-4lQ0M, reason: not valid java name */
    private final float m237pullLeftk4lQ0M(long scroll) {
        int bits$iv$iv$iv = (int) (4294967295L & m243displacementF1C5BW0$foundation());
        float displacementY = Float.intBitsToFloat(bits$iv$iv$iv);
        int bits$iv$iv$iv2 = (int) (scroll >> 32);
        float fIntBitsToFloat = Float.intBitsToFloat(bits$iv$iv$iv2);
        int bits$iv$iv$iv3 = (int) (this.containerSize >> 32);
        float pullX = fIntBitsToFloat / Float.intBitsToFloat(bits$iv$iv$iv3);
        EdgeEffect leftEffect = this.edgeEffectWrapper.getOrCreateLeftEffect();
        float fOnPullDistanceCompat = EdgeEffectCompat.INSTANCE.onPullDistanceCompat(leftEffect, pullX, 1 - displacementY);
        int bits$iv$iv$iv4 = (int) (this.containerSize >> 32);
        float consumed = fOnPullDistanceCompat * Float.intBitsToFloat(bits$iv$iv$iv4);
        if (EdgeEffectCompat.INSTANCE.getDistanceCompat(leftEffect) == 0.0f) {
            return consumed;
        }
        int bits$iv$iv$iv5 = (int) (scroll >> 32);
        return Float.intBitsToFloat(bits$iv$iv$iv5);
    }

    /* JADX INFO: renamed from: pullRight-k-4lQ0M, reason: not valid java name */
    private final float m238pullRightk4lQ0M(long scroll) {
        int bits$iv$iv$iv = (int) (4294967295L & m243displacementF1C5BW0$foundation());
        float displacementY = Float.intBitsToFloat(bits$iv$iv$iv);
        int bits$iv$iv$iv2 = (int) (scroll >> 32);
        float fIntBitsToFloat = Float.intBitsToFloat(bits$iv$iv$iv2);
        int bits$iv$iv$iv3 = (int) (this.containerSize >> 32);
        float pullX = fIntBitsToFloat / Float.intBitsToFloat(bits$iv$iv$iv3);
        EdgeEffect rightEffect = this.edgeEffectWrapper.getOrCreateRightEffect();
        float f = -EdgeEffectCompat.INSTANCE.onPullDistanceCompat(rightEffect, -pullX, displacementY);
        int bits$iv$iv$iv4 = (int) (this.containerSize >> 32);
        float consumed = f * Float.intBitsToFloat(bits$iv$iv$iv4);
        if (EdgeEffectCompat.INSTANCE.getDistanceCompat(rightEffect) == 0.0f) {
            return consumed;
        }
        int bits$iv$iv$iv5 = (int) (scroll >> 32);
        return Float.intBitsToFloat(bits$iv$iv$iv5);
    }
}
