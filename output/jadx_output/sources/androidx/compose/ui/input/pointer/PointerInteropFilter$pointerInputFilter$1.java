package androidx.compose.ui.input.pointer;

import android.os.SystemClock;
import android.view.MotionEvent;
import androidx.compose.ui.geometry.Offset;
import androidx.compose.ui.input.pointer.PointerInteropFilter;
import androidx.compose.ui.layout.LayoutCoordinates;
import java.util.List;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: PointerInteropFilter.android.kt */
/* JADX INFO: loaded from: classes20.dex */
@Metadata(d1 = {"\u00005\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\b*\u0001\u0000\b\n\u0018\u00002\u00020\u0001J'\u0010\n\u001a\u00020\u000b2\u0006\u0010\f\u001a\u00020\t2\u0006\u0010\r\u001a\u00020\u000e2\u0006\u0010\u000f\u001a\u00020\u0010H\u0016¢\u0006\u0004\b\u0011\u0010\u0012J\b\u0010\u0013\u001a\u00020\u000bH\u0016J\b\u0010\u0014\u001a\u00020\u000bH\u0002J\u0018\u0010\u0015\u001a\u00020\u000b2\u0006\u0010\f\u001a\u00020\t2\u0006\u0010\u0016\u001a\u00020\u0005H\u0002J\u0010\u0010\u0017\u001a\u00020\u000b2\u0006\u0010\f\u001a\u00020\tH\u0002R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u000e¢\u0006\u0002\n\u0000R\u0014\u0010\u0004\u001a\u00020\u00058VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b\u0006\u0010\u0007R\u0010\u0010\b\u001a\u0004\u0018\u00010\tX\u0082\u000e¢\u0006\u0002\n\u0000¨\u0006\u0018"}, d2 = {"androidx/compose/ui/input/pointer/PointerInteropFilter$pointerInputFilter$1", "Landroidx/compose/ui/input/pointer/PointerInputFilter;", "state", "Landroidx/compose/ui/input/pointer/PointerInteropFilter$DispatchToViewState;", "shareWithSiblings", "", "getShareWithSiblings", "()Z", "lastEventDispatchedToInitialPass", "Landroidx/compose/ui/input/pointer/PointerEvent;", "onPointerEvent", "", "pointerEvent", "pass", "Landroidx/compose/ui/input/pointer/PointerEventPass;", "bounds", "Landroidx/compose/ui/unit/IntSize;", "onPointerEvent-H0pRuoY", "(Landroidx/compose/ui/input/pointer/PointerEvent;Landroidx/compose/ui/input/pointer/PointerEventPass;J)V", "onCancel", "reset", "dispatchToView", "shouldConsume", "stopDispatching", "ui"}, k = 1, mv = {2, 0, 0}, xi = 48)
public final class PointerInteropFilter$pointerInputFilter$1 extends PointerInputFilter {
    private PointerEvent lastEventDispatchedToInitialPass;
    private PointerInteropFilter.DispatchToViewState state = PointerInteropFilter.DispatchToViewState.Unknown;
    final /* synthetic */ PointerInteropFilter this$0;

    PointerInteropFilter$pointerInputFilter$1(PointerInteropFilter $receiver) {
        this.this$0 = $receiver;
    }

    @Override // androidx.compose.ui.input.pointer.PointerInputFilter
    public boolean getShareWithSiblings() {
        return true;
    }

    /* JADX WARN: Removed duplicated region for block: B:26:0x006e  */
    /* JADX WARN: Removed duplicated region for block: B:46:0x00b5  */
    @Override // androidx.compose.ui.input.pointer.PointerInputFilter
    /* JADX INFO: renamed from: onPointerEvent-H0pRuoY */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public void mo6033onPointerEventH0pRuoY(PointerEvent pointerEvent, PointerEventPass pass, long bounds) {
        boolean z;
        boolean isMoveEvent;
        boolean hasUnconsumedMove;
        boolean dispatchDuringInitialTunnel;
        boolean z2;
        boolean z3;
        boolean z4;
        List<PointerInputChange> changes = pointerEvent.getChanges();
        int index$iv$iv = 0;
        int size = changes.size();
        while (true) {
            z = false;
            if (index$iv$iv < size) {
                Object item$iv$iv = changes.get(index$iv$iv);
                PointerInputChange it = (PointerInputChange) item$iv$iv;
                if (!((PointerEventKt.changedToDownIgnoreConsumed(it) || PointerEventKt.changedToUpIgnoreConsumed(it)) ? false : true)) {
                    isMoveEvent = false;
                    break;
                }
                index$iv$iv++;
            } else {
                isMoveEvent = true;
                break;
            }
        }
        if (isMoveEvent) {
            int index$iv$iv2 = 0;
            int size2 = changes.size();
            while (true) {
                if (index$iv$iv2 < size2) {
                    Object item$iv$iv2 = changes.get(index$iv$iv2);
                    PointerInputChange it2 = (PointerInputChange) item$iv$iv2;
                    if (it2.isConsumed()) {
                        z4 = false;
                        break;
                    }
                    index$iv$iv2++;
                } else {
                    z4 = true;
                    break;
                }
            }
            hasUnconsumedMove = z4;
        }
        if (!this.this$0.getDisallowIntercept()) {
            int index$iv$iv3 = 0;
            int size3 = changes.size();
            while (true) {
                if (index$iv$iv3 < size3) {
                    Object item$iv$iv3 = changes.get(index$iv$iv3);
                    PointerInputChange it3 = (PointerInputChange) item$iv$iv3;
                    if (PointerEventKt.changedToDownIgnoreConsumed(it3) || PointerEventKt.changedToUpIgnoreConsumed(it3)) {
                        z3 = true;
                        break;
                    }
                    index$iv$iv3++;
                } else {
                    z3 = false;
                    break;
                }
            }
            dispatchDuringInitialTunnel = z3 || hasUnconsumedMove;
        }
        if (this.state != PointerInteropFilter.DispatchToViewState.NotDispatching) {
            if (pass == PointerEventPass.Initial && dispatchDuringInitialTunnel) {
                this.lastEventDispatchedToInitialPass = pointerEvent;
                boolean shouldConsumeNow = !isMoveEvent || this.this$0.getDisallowIntercept();
                dispatchToView(pointerEvent, shouldConsumeNow);
            }
            if (pass == PointerEventPass.Main && isMoveEvent && Intrinsics.areEqual(pointerEvent, this.lastEventDispatchedToInitialPass) && this.this$0.getDisallowIntercept()) {
                int size4 = changes.size();
                for (int index$iv = 0; index$iv < size4; index$iv++) {
                    Object item$iv = changes.get(index$iv);
                    PointerInputChange it4 = (PointerInputChange) item$iv;
                    it4.consume();
                }
            }
            if (pass == PointerEventPass.Final && !dispatchDuringInitialTunnel && !Intrinsics.areEqual(pointerEvent, this.lastEventDispatchedToInitialPass)) {
                dispatchToView(pointerEvent, true);
            }
        }
        if (pass != PointerEventPass.Final) {
            return;
        }
        int index$iv$iv4 = 0;
        int size5 = changes.size();
        while (true) {
            if (index$iv$iv4 < size5) {
                Object item$iv$iv4 = changes.get(index$iv$iv4);
                PointerInputChange it5 = (PointerInputChange) item$iv$iv4;
                if (!PointerEventKt.changedToUpIgnoreConsumed(it5)) {
                    z2 = false;
                    break;
                }
                index$iv$iv4++;
            } else {
                z2 = true;
                break;
            }
        }
        if (z2) {
            reset();
        }
        if (!Intrinsics.areEqual(pointerEvent, this.lastEventDispatchedToInitialPass) || !isMoveEvent) {
            return;
        }
        int index$iv$iv5 = 0;
        int size6 = changes.size();
        while (true) {
            if (index$iv$iv5 >= size6) {
                break;
            }
            Object item$iv$iv5 = changes.get(index$iv$iv5);
            PointerInputChange it6 = (PointerInputChange) item$iv$iv5;
            if (it6.isConsumed()) {
                z = true;
                break;
            }
            index$iv$iv5++;
        }
        if (z && !this.this$0.getDisallowIntercept()) {
            stopDispatching(pointerEvent);
            return;
        }
        int size7 = changes.size();
        for (int index$iv2 = 0; index$iv2 < size7; index$iv2++) {
            Object item$iv2 = changes.get(index$iv2);
            PointerInputChange it7 = (PointerInputChange) item$iv2;
            it7.consume();
        }
    }

    @Override // androidx.compose.ui.input.pointer.PointerInputFilter
    public void onCancel() {
        if (this.state == PointerInteropFilter.DispatchToViewState.Dispatching) {
            long jUptimeMillis = SystemClock.uptimeMillis();
            final PointerInteropFilter pointerInteropFilter = this.this$0;
            PointerInteropUtils_androidKt.emptyCancelMotionEventScope(jUptimeMillis, new Function1<MotionEvent, Unit>() { // from class: androidx.compose.ui.input.pointer.PointerInteropFilter$pointerInputFilter$1$onCancel$1
                {
                    super(1);
                }

                @Override // kotlin.jvm.functions.Function1
                public /* bridge */ /* synthetic */ Unit invoke(MotionEvent motionEvent) {
                    invoke2(motionEvent);
                    return Unit.INSTANCE;
                }

                /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
                public final void invoke2(MotionEvent motionEvent) {
                    pointerInteropFilter.getOnTouchEvent().invoke(motionEvent);
                }
            });
            reset();
        }
    }

    private final void reset() {
        this.state = PointerInteropFilter.DispatchToViewState.Unknown;
        this.this$0.setDisallowIntercept$ui(false);
        this.lastEventDispatchedToInitialPass = null;
    }

    private final void dispatchToView(PointerEvent pointerEvent, boolean shouldConsume) {
        boolean z;
        List<PointerInputChange> changes = pointerEvent.getChanges();
        int index$iv$iv = 0;
        int size = changes.size();
        while (true) {
            if (index$iv$iv < size) {
                Object item$iv$iv = changes.get(index$iv$iv);
                PointerInputChange it = (PointerInputChange) item$iv$iv;
                if (it.isConsumed()) {
                    z = true;
                    break;
                }
                index$iv$iv++;
            } else {
                z = false;
                break;
            }
        }
        if (z) {
            stopDispatching(pointerEvent);
            return;
        }
        LayoutCoordinates layoutCoordinates$ui = getLayoutCoordinates();
        if (layoutCoordinates$ui != null) {
            long jMo6152localToRootMKHz9U = layoutCoordinates$ui.mo6152localToRootMKHz9U(Offset.INSTANCE.m4468getZeroF1C5BW0());
            final PointerInteropFilter pointerInteropFilter = this.this$0;
            PointerInteropUtils_androidKt.m6069toMotionEventScoped4ec7I(pointerEvent, jMo6152localToRootMKHz9U, new Function1<MotionEvent, Unit>() { // from class: androidx.compose.ui.input.pointer.PointerInteropFilter$pointerInputFilter$1$dispatchToView$2
                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                {
                    super(1);
                }

                @Override // kotlin.jvm.functions.Function1
                public /* bridge */ /* synthetic */ Unit invoke(MotionEvent motionEvent) {
                    invoke2(motionEvent);
                    return Unit.INSTANCE;
                }

                /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
                public final void invoke2(MotionEvent motionEvent) {
                    PointerInteropFilter.DispatchToViewState dispatchToViewState;
                    if (motionEvent.getActionMasked() == 0) {
                        PointerInteropFilter$pointerInputFilter$1 pointerInteropFilter$pointerInputFilter$1 = this.this$0;
                        if (pointerInteropFilter.getOnTouchEvent().invoke(motionEvent).booleanValue()) {
                            dispatchToViewState = PointerInteropFilter.DispatchToViewState.Dispatching;
                        } else {
                            dispatchToViewState = PointerInteropFilter.DispatchToViewState.NotDispatching;
                        }
                        pointerInteropFilter$pointerInputFilter$1.state = dispatchToViewState;
                        return;
                    }
                    pointerInteropFilter.getOnTouchEvent().invoke(motionEvent);
                }
            });
            if (this.state == PointerInteropFilter.DispatchToViewState.Dispatching) {
                if (shouldConsume) {
                    int size2 = changes.size();
                    for (int index$iv = 0; index$iv < size2; index$iv++) {
                        Object item$iv = changes.get(index$iv);
                        PointerInputChange it2 = (PointerInputChange) item$iv;
                        it2.consume();
                    }
                }
                InternalPointerEvent internalPointerEvent = pointerEvent.getInternalPointerEvent();
                if (internalPointerEvent != null) {
                    internalPointerEvent.setSuppressMovementConsumption(!this.this$0.getDisallowIntercept());
                    return;
                }
                return;
            }
            return;
        }
        throw new IllegalStateException("layoutCoordinates not set".toString());
    }

    private final void stopDispatching(PointerEvent pointerEvent) {
        if (this.state == PointerInteropFilter.DispatchToViewState.Dispatching) {
            LayoutCoordinates layoutCoordinates$ui = getLayoutCoordinates();
            if (layoutCoordinates$ui != null) {
                long jMo6152localToRootMKHz9U = layoutCoordinates$ui.mo6152localToRootMKHz9U(Offset.INSTANCE.m4468getZeroF1C5BW0());
                final PointerInteropFilter pointerInteropFilter = this.this$0;
                PointerInteropUtils_androidKt.m6068toCancelMotionEventScoped4ec7I(pointerEvent, jMo6152localToRootMKHz9U, new Function1<MotionEvent, Unit>() { // from class: androidx.compose.ui.input.pointer.PointerInteropFilter$pointerInputFilter$1$stopDispatching$1
                    {
                        super(1);
                    }

                    @Override // kotlin.jvm.functions.Function1
                    public /* bridge */ /* synthetic */ Unit invoke(MotionEvent motionEvent) {
                        invoke2(motionEvent);
                        return Unit.INSTANCE;
                    }

                    /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
                    public final void invoke2(MotionEvent motionEvent) {
                        pointerInteropFilter.getOnTouchEvent().invoke(motionEvent);
                    }
                });
            } else {
                throw new IllegalStateException("layoutCoordinates not set".toString());
            }
        }
        this.state = PointerInteropFilter.DispatchToViewState.NotDispatching;
    }
}
