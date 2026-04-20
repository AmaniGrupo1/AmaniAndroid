package androidx.compose.material3.internal;

import androidx.autofill.HintConstants;
import androidx.compose.ui.geometry.Offset;
import androidx.compose.ui.input.pointer.AwaitPointerEventScope;
import androidx.compose.ui.input.pointer.PointerEvent;
import androidx.compose.ui.input.pointer.PointerEventKt;
import androidx.compose.ui.input.pointer.PointerEventPass;
import androidx.compose.ui.input.pointer.PointerId;
import androidx.compose.ui.input.pointer.PointerInputChange;
import androidx.compose.ui.input.pointer.PointerType;
import androidx.compose.ui.platform.ViewConfiguration;
import androidx.compose.ui.unit.Dp;
import java.util.List;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.Boxing;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Ref;

/* JADX INFO: compiled from: DragGestureDetectorCopy.kt */
/* JADX INFO: loaded from: classes20.dex */
@Metadata(d1 = {"\u0000Z\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0007\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\u001aa\u0010\u0006\u001a\u0004\u0018\u00010\u0007*\u00020\b2\u0006\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\f26\u0010\r\u001a2\u0012\u0013\u0012\u00110\u0007¢\u0006\f\b\u000f\u0012\b\b\u0010\u0012\u0004\b\b(\u0011\u0012\u0013\u0012\u00110\u0005¢\u0006\f\b\u000f\u0012\b\b\u0010\u0012\u0004\b\b(\u0012\u0012\u0004\u0012\u00020\u00130\u000eH\u0080@ø\u0001\u0000¢\u0006\u0004\b\u0014\u0010\u0015\u001aW\u0010\u0016\u001a\u0004\u0018\u00010\u0007*\u00020\b2\u0006\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\f2\u0018\u0010\r\u001a\u0014\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u00130\u000e2\u0012\u0010\u0017\u001a\u000e\u0012\u0004\u0012\u00020\u0019\u0012\u0004\u0012\u00020\u00050\u0018H\u0082Hø\u0001\u0000¢\u0006\u0004\b\u001a\u0010\u001b\u001a\u001e\u0010\u001c\u001a\u00020\u001d*\u00020\u001e2\u0006\u0010\t\u001a\u00020\nH\u0002ø\u0001\u0000¢\u0006\u0004\b\u001f\u0010 \u001a\u001e\u0010!\u001a\u00020\u0005*\u00020\"2\u0006\u0010\u000b\u001a\u00020\fH\u0000ø\u0001\u0000¢\u0006\u0004\b#\u0010$\"\u0010\u0010\u0000\u001a\u00020\u0001X\u0082\u0004¢\u0006\u0004\n\u0002\u0010\u0002\"\u0010\u0010\u0003\u001a\u00020\u0001X\u0082\u0004¢\u0006\u0004\n\u0002\u0010\u0002\"\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004¢\u0006\u0002\n\u0000\u0082\u0002\u0007\n\u0005\b¡\u001e0\u0001¨\u0006%"}, d2 = {"defaultTouchSlop", "Landroidx/compose/ui/unit/Dp;", "F", "mouseSlop", "mouseToTouchSlopRatio", "", "awaitHorizontalPointerSlopOrCancellation", "Landroidx/compose/ui/input/pointer/PointerInputChange;", "Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;", "pointerId", "Landroidx/compose/ui/input/pointer/PointerId;", "pointerType", "Landroidx/compose/ui/input/pointer/PointerType;", "onPointerSlopReached", "Lkotlin/Function2;", "Lkotlin/ParameterName;", HintConstants.AUTOFILL_HINT_NAME, "change", "overSlop", "", "awaitHorizontalPointerSlopOrCancellation-gDDlDlE", "(Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;JILkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "awaitPointerSlopOrCancellation", "getDragDirectionValue", "Lkotlin/Function1;", "Landroidx/compose/ui/geometry/Offset;", "awaitPointerSlopOrCancellation-pn7EDYM", "(Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;JILkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "isPointerUp", "", "Landroidx/compose/ui/input/pointer/PointerEvent;", "isPointerUp-DmW0f2w", "(Landroidx/compose/ui/input/pointer/PointerEvent;J)Z", "pointerSlop", "Landroidx/compose/ui/platform/ViewConfiguration;", "pointerSlop-E8SPZFQ", "(Landroidx/compose/ui/platform/ViewConfiguration;I)F", "material3_release"}, k = 2, mv = {1, 8, 0}, xi = 48)
public final class DragGestureDetectorCopyKt {
    private static final float mouseToTouchSlopRatio;
    private static final float mouseSlop = Dp.m7505constructorimpl((float) 0.125d);
    private static final float defaultTouchSlop = Dp.m7505constructorimpl(18);

    /* JADX WARN: Removed duplicated region for block: B:20:0x00b1 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:21:0x00b2  */
    /* JADX WARN: Removed duplicated region for block: B:24:0x00cd  */
    /* JADX WARN: Removed duplicated region for block: B:31:0x010f  */
    /* JADX WARN: Removed duplicated region for block: B:32:0x0115  */
    /* JADX WARN: Removed duplicated region for block: B:53:0x01a8 A[RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:54:0x01aa  */
    /* JADX WARN: Removed duplicated region for block: B:60:0x00f9 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:7:0x0016  */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:44:0x014e -> B:18:0x009b). Please report as a decompilation issue!!! */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:50:0x0199 -> B:51:0x01a2). Please report as a decompilation issue!!! */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:59:0x01c9 -> B:18:0x009b). Please report as a decompilation issue!!! */
    /* JADX INFO: renamed from: awaitHorizontalPointerSlopOrCancellation-gDDlDlE, reason: not valid java name */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static final Object m3175awaitHorizontalPointerSlopOrCancellationgDDlDlE(AwaitPointerEventScope awaitPointerEventScope, long pointerId, int pointerType, Function2<? super PointerInputChange, ? super Float, Unit> function2, Continuation<? super PointerInputChange> continuation) {
        DragGestureDetectorCopyKt$awaitHorizontalPointerSlopOrCancellation$1 dragGestureDetectorCopyKt$awaitHorizontalPointerSlopOrCancellation$1;
        AwaitPointerEventScope $this$awaitPointerSlopOrCancellation_u2dpn7EDYM$iv;
        Function2<? super PointerInputChange, ? super Float, Unit> function22;
        float touchSlop$iv;
        Ref.LongRef pointer$iv;
        float touchSlop$iv2;
        AwaitPointerEventScope $this$awaitPointerSlopOrCancellation_u2dpn7EDYM$iv2;
        float touchSlop$iv3;
        Object obj;
        DragGestureDetectorCopyKt$awaitHorizontalPointerSlopOrCancellation$1 dragGestureDetectorCopyKt$awaitHorizontalPointerSlopOrCancellation$12;
        Object $result;
        PointerEvent event$iv;
        int index$iv$iv$iv;
        int size;
        PointerEvent event$iv2;
        Object $result2;
        Function2<? super PointerInputChange, ? super Float, Unit> function23;
        Object it$iv$iv;
        PointerInputChange dragEvent$iv;
        PointerInputChange dragEvent$iv2;
        Object it$iv$iv2;
        if (continuation instanceof DragGestureDetectorCopyKt$awaitHorizontalPointerSlopOrCancellation$1) {
            dragGestureDetectorCopyKt$awaitHorizontalPointerSlopOrCancellation$1 = (DragGestureDetectorCopyKt$awaitHorizontalPointerSlopOrCancellation$1) continuation;
            if ((dragGestureDetectorCopyKt$awaitHorizontalPointerSlopOrCancellation$1.label & Integer.MIN_VALUE) != 0) {
                dragGestureDetectorCopyKt$awaitHorizontalPointerSlopOrCancellation$1.label -= Integer.MIN_VALUE;
            } else {
                dragGestureDetectorCopyKt$awaitHorizontalPointerSlopOrCancellation$1 = new DragGestureDetectorCopyKt$awaitHorizontalPointerSlopOrCancellation$1(continuation);
            }
        }
        Object $result3 = dragGestureDetectorCopyKt$awaitHorizontalPointerSlopOrCancellation$1.result;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        PointerEventPass pointerEventPass = null;
        switch (dragGestureDetectorCopyKt$awaitHorizontalPointerSlopOrCancellation$1.label) {
            case 0:
                ResultKt.throwOnFailure($result3);
                $this$awaitPointerSlopOrCancellation_u2dpn7EDYM$iv = awaitPointerEventScope;
                function22 = function2;
                if (m3177isPointerUpDmW0f2w($this$awaitPointerSlopOrCancellation_u2dpn7EDYM$iv.getCurrentEvent(), pointerId)) {
                    return null;
                }
                touchSlop$iv = m3178pointerSlopE8SPZFQ($this$awaitPointerSlopOrCancellation_u2dpn7EDYM$iv.getViewConfiguration(), pointerType);
                pointer$iv = new Ref.LongRef();
                pointer$iv.element = pointerId;
                touchSlop$iv2 = 0.0f;
                dragGestureDetectorCopyKt$awaitHorizontalPointerSlopOrCancellation$1.L$0 = function22;
                dragGestureDetectorCopyKt$awaitHorizontalPointerSlopOrCancellation$1.L$1 = $this$awaitPointerSlopOrCancellation_u2dpn7EDYM$iv;
                dragGestureDetectorCopyKt$awaitHorizontalPointerSlopOrCancellation$1.L$2 = pointer$iv;
                dragGestureDetectorCopyKt$awaitHorizontalPointerSlopOrCancellation$1.L$3 = pointerEventPass;
                dragGestureDetectorCopyKt$awaitHorizontalPointerSlopOrCancellation$1.F$0 = touchSlop$iv;
                dragGestureDetectorCopyKt$awaitHorizontalPointerSlopOrCancellation$1.F$1 = touchSlop$iv2;
                dragGestureDetectorCopyKt$awaitHorizontalPointerSlopOrCancellation$1.label = 1;
                Object objAwaitPointerEvent$default = AwaitPointerEventScope.awaitPointerEvent$default($this$awaitPointerSlopOrCancellation_u2dpn7EDYM$iv, pointerEventPass, dragGestureDetectorCopyKt$awaitHorizontalPointerSlopOrCancellation$1, 1, pointerEventPass);
                if (objAwaitPointerEvent$default != coroutine_suspended) {
                    return coroutine_suspended;
                }
                DragGestureDetectorCopyKt$awaitHorizontalPointerSlopOrCancellation$1 dragGestureDetectorCopyKt$awaitHorizontalPointerSlopOrCancellation$13 = dragGestureDetectorCopyKt$awaitHorizontalPointerSlopOrCancellation$1;
                $result = $result3;
                $result3 = objAwaitPointerEvent$default;
                touchSlop$iv3 = touchSlop$iv;
                $this$awaitPointerSlopOrCancellation_u2dpn7EDYM$iv2 = $this$awaitPointerSlopOrCancellation_u2dpn7EDYM$iv;
                obj = coroutine_suspended;
                dragGestureDetectorCopyKt$awaitHorizontalPointerSlopOrCancellation$12 = dragGestureDetectorCopyKt$awaitHorizontalPointerSlopOrCancellation$13;
                event$iv = (PointerEvent) $result3;
                List<PointerInputChange> changes = event$iv.getChanges();
                index$iv$iv$iv = 0;
                size = changes.size();
                while (true) {
                    if (index$iv$iv$iv >= size) {
                        Object item$iv$iv$iv = changes.get(index$iv$iv$iv);
                        it$iv$iv = item$iv$iv$iv;
                        PointerInputChange it$iv = (PointerInputChange) it$iv$iv;
                        function23 = function22;
                        event$iv2 = event$iv;
                        $result2 = $result;
                        if (!PointerId.m5992equalsimpl0(it$iv.getId(), pointer$iv.element)) {
                            index$iv$iv$iv++;
                            function22 = function23;
                            $result = $result2;
                            event$iv = event$iv2;
                        }
                    } else {
                        event$iv2 = event$iv;
                        $result2 = $result;
                        function23 = function22;
                        it$iv$iv = null;
                    }
                }
                Intrinsics.checkNotNull(it$iv$iv);
                dragEvent$iv = (PointerInputChange) it$iv$iv;
                if (dragEvent$iv.isConsumed()) {
                    return null;
                }
                if (PointerEventKt.changedToUpIgnoreConsumed(dragEvent$iv)) {
                    List<PointerInputChange> changes2 = event$iv2.getChanges();
                    int index$iv$iv$iv2 = 0;
                    int size2 = changes2.size();
                    while (true) {
                        if (index$iv$iv$iv2 < size2) {
                            Object item$iv$iv$iv2 = changes2.get(index$iv$iv$iv2);
                            it$iv$iv2 = item$iv$iv$iv2;
                            PointerInputChange it$iv2 = (PointerInputChange) it$iv$iv2;
                            if (!it$iv2.getPressed()) {
                                index$iv$iv$iv2++;
                            }
                        } else {
                            it$iv$iv2 = null;
                        }
                    }
                    PointerInputChange otherDown$iv = (PointerInputChange) it$iv$iv2;
                    if (otherDown$iv == null) {
                        return null;
                    }
                    pointer$iv.element = otherDown$iv.getId();
                    function22 = function23;
                    $result3 = $result2;
                    dragGestureDetectorCopyKt$awaitHorizontalPointerSlopOrCancellation$1 = dragGestureDetectorCopyKt$awaitHorizontalPointerSlopOrCancellation$12;
                    coroutine_suspended = obj;
                    $this$awaitPointerSlopOrCancellation_u2dpn7EDYM$iv = $this$awaitPointerSlopOrCancellation_u2dpn7EDYM$iv2;
                    pointerEventPass = null;
                    touchSlop$iv = touchSlop$iv3;
                } else {
                    long it = dragEvent$iv.getPosition();
                    long it2 = dragEvent$iv.getPreviousPosition();
                    float positionChange$iv = Offset.m4452getXimpl(it) - Offset.m4452getXimpl(it2);
                    float totalPositionChange$iv = touchSlop$iv2 + positionChange$iv;
                    float inDirection$iv = Math.abs(totalPositionChange$iv);
                    if (inDirection$iv < touchSlop$iv3) {
                        PointerEventPass pointerEventPass2 = PointerEventPass.Final;
                        Function2<? super PointerInputChange, ? super Float, Unit> function24 = function23;
                        dragGestureDetectorCopyKt$awaitHorizontalPointerSlopOrCancellation$12.L$0 = function24;
                        dragGestureDetectorCopyKt$awaitHorizontalPointerSlopOrCancellation$12.L$1 = $this$awaitPointerSlopOrCancellation_u2dpn7EDYM$iv2;
                        dragGestureDetectorCopyKt$awaitHorizontalPointerSlopOrCancellation$12.L$2 = pointer$iv;
                        dragGestureDetectorCopyKt$awaitHorizontalPointerSlopOrCancellation$12.L$3 = dragEvent$iv;
                        dragGestureDetectorCopyKt$awaitHorizontalPointerSlopOrCancellation$12.F$0 = touchSlop$iv3;
                        dragGestureDetectorCopyKt$awaitHorizontalPointerSlopOrCancellation$12.F$1 = totalPositionChange$iv;
                        dragGestureDetectorCopyKt$awaitHorizontalPointerSlopOrCancellation$12.label = 2;
                        if ($this$awaitPointerSlopOrCancellation_u2dpn7EDYM$iv2.awaitPointerEvent(pointerEventPass2, dragGestureDetectorCopyKt$awaitHorizontalPointerSlopOrCancellation$12) == obj) {
                            return obj;
                        }
                        dragGestureDetectorCopyKt$awaitHorizontalPointerSlopOrCancellation$1 = dragGestureDetectorCopyKt$awaitHorizontalPointerSlopOrCancellation$12;
                        coroutine_suspended = obj;
                        touchSlop$iv2 = totalPositionChange$iv;
                        $this$awaitPointerSlopOrCancellation_u2dpn7EDYM$iv = $this$awaitPointerSlopOrCancellation_u2dpn7EDYM$iv2;
                        function22 = function24;
                        touchSlop$iv = touchSlop$iv3;
                        dragEvent$iv2 = dragEvent$iv;
                        $result3 = $result2;
                        if (!dragEvent$iv2.isConsumed()) {
                            return null;
                        }
                        pointerEventPass = null;
                    } else {
                        Function2<? super PointerInputChange, ? super Float, Unit> function25 = function23;
                        function25.invoke(dragEvent$iv, Boxing.boxFloat(totalPositionChange$iv - (Math.signum(totalPositionChange$iv) * touchSlop$iv3)));
                        if (dragEvent$iv.isConsumed()) {
                            return dragEvent$iv;
                        }
                        touchSlop$iv2 = 0.0f;
                        $result3 = $result2;
                        dragGestureDetectorCopyKt$awaitHorizontalPointerSlopOrCancellation$1 = dragGestureDetectorCopyKt$awaitHorizontalPointerSlopOrCancellation$12;
                        coroutine_suspended = obj;
                        function22 = function25;
                        $this$awaitPointerSlopOrCancellation_u2dpn7EDYM$iv = $this$awaitPointerSlopOrCancellation_u2dpn7EDYM$iv2;
                        pointerEventPass = null;
                        touchSlop$iv = touchSlop$iv3;
                    }
                }
                dragGestureDetectorCopyKt$awaitHorizontalPointerSlopOrCancellation$1.L$0 = function22;
                dragGestureDetectorCopyKt$awaitHorizontalPointerSlopOrCancellation$1.L$1 = $this$awaitPointerSlopOrCancellation_u2dpn7EDYM$iv;
                dragGestureDetectorCopyKt$awaitHorizontalPointerSlopOrCancellation$1.L$2 = pointer$iv;
                dragGestureDetectorCopyKt$awaitHorizontalPointerSlopOrCancellation$1.L$3 = pointerEventPass;
                dragGestureDetectorCopyKt$awaitHorizontalPointerSlopOrCancellation$1.F$0 = touchSlop$iv;
                dragGestureDetectorCopyKt$awaitHorizontalPointerSlopOrCancellation$1.F$1 = touchSlop$iv2;
                dragGestureDetectorCopyKt$awaitHorizontalPointerSlopOrCancellation$1.label = 1;
                Object objAwaitPointerEvent$default2 = AwaitPointerEventScope.awaitPointerEvent$default($this$awaitPointerSlopOrCancellation_u2dpn7EDYM$iv, pointerEventPass, dragGestureDetectorCopyKt$awaitHorizontalPointerSlopOrCancellation$1, 1, pointerEventPass);
                if (objAwaitPointerEvent$default2 != coroutine_suspended) {
                }
                break;
            case 1:
                float totalPositionChange$iv2 = dragGestureDetectorCopyKt$awaitHorizontalPointerSlopOrCancellation$1.F$1;
                float touchSlop$iv4 = dragGestureDetectorCopyKt$awaitHorizontalPointerSlopOrCancellation$1.F$0;
                Ref.LongRef pointer$iv2 = (Ref.LongRef) dragGestureDetectorCopyKt$awaitHorizontalPointerSlopOrCancellation$1.L$2;
                $this$awaitPointerSlopOrCancellation_u2dpn7EDYM$iv2 = (AwaitPointerEventScope) dragGestureDetectorCopyKt$awaitHorizontalPointerSlopOrCancellation$1.L$1;
                Function2<? super PointerInputChange, ? super Float, Unit> function26 = (Function2) dragGestureDetectorCopyKt$awaitHorizontalPointerSlopOrCancellation$1.L$0;
                ResultKt.throwOnFailure($result3);
                pointer$iv = pointer$iv2;
                touchSlop$iv3 = touchSlop$iv4;
                touchSlop$iv2 = totalPositionChange$iv2;
                function22 = function26;
                obj = coroutine_suspended;
                dragGestureDetectorCopyKt$awaitHorizontalPointerSlopOrCancellation$12 = dragGestureDetectorCopyKt$awaitHorizontalPointerSlopOrCancellation$1;
                $result = $result3;
                event$iv = (PointerEvent) $result3;
                List<PointerInputChange> changes3 = event$iv.getChanges();
                index$iv$iv$iv = 0;
                size = changes3.size();
                while (true) {
                    if (index$iv$iv$iv >= size) {
                    }
                    index$iv$iv$iv++;
                    function22 = function23;
                    $result = $result2;
                    event$iv = event$iv2;
                }
                Intrinsics.checkNotNull(it$iv$iv);
                dragEvent$iv = (PointerInputChange) it$iv$iv;
                if (dragEvent$iv.isConsumed()) {
                }
                break;
            case 2:
                float totalPositionChange$iv3 = dragGestureDetectorCopyKt$awaitHorizontalPointerSlopOrCancellation$1.F$1;
                float touchSlop$iv5 = dragGestureDetectorCopyKt$awaitHorizontalPointerSlopOrCancellation$1.F$0;
                dragEvent$iv2 = (PointerInputChange) dragGestureDetectorCopyKt$awaitHorizontalPointerSlopOrCancellation$1.L$3;
                Ref.LongRef pointer$iv3 = (Ref.LongRef) dragGestureDetectorCopyKt$awaitHorizontalPointerSlopOrCancellation$1.L$2;
                AwaitPointerEventScope $this$awaitPointerSlopOrCancellation_u2dpn7EDYM$iv3 = (AwaitPointerEventScope) dragGestureDetectorCopyKt$awaitHorizontalPointerSlopOrCancellation$1.L$1;
                Function2<? super PointerInputChange, ? super Float, Unit> function27 = (Function2) dragGestureDetectorCopyKt$awaitHorizontalPointerSlopOrCancellation$1.L$0;
                ResultKt.throwOnFailure($result3);
                $this$awaitPointerSlopOrCancellation_u2dpn7EDYM$iv = $this$awaitPointerSlopOrCancellation_u2dpn7EDYM$iv3;
                touchSlop$iv2 = totalPositionChange$iv3;
                function22 = function27;
                pointer$iv = pointer$iv3;
                touchSlop$iv = touchSlop$iv5;
                if (!dragEvent$iv2.isConsumed()) {
                }
                break;
            default:
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }
    }

    /* JADX INFO: renamed from: awaitPointerSlopOrCancellation-pn7EDYM, reason: not valid java name */
    private static final Object m3176awaitPointerSlopOrCancellationpn7EDYM(AwaitPointerEventScope $this$awaitPointerSlopOrCancellation_u2dpn7EDYM, long pointerId, int pointerType, Function2<? super PointerInputChange, ? super Float, Unit> function2, Function1<? super Offset, Float> function1, Continuation<? super PointerInputChange> continuation) {
        int i;
        float touchSlop;
        Object it$iv;
        Object it$iv2;
        int i2 = 0;
        PointerEventPass pointerEventPass = null;
        if (m3177isPointerUpDmW0f2w($this$awaitPointerSlopOrCancellation_u2dpn7EDYM.getCurrentEvent(), pointerId)) {
            return null;
        }
        float touchSlop2 = m3178pointerSlopE8SPZFQ($this$awaitPointerSlopOrCancellation_u2dpn7EDYM.getViewConfiguration(), pointerType);
        Ref.LongRef pointer = new Ref.LongRef();
        pointer.element = pointerId;
        float totalPositionChange = 0.0f;
        while (true) {
            PointerEvent event = (PointerEvent) AwaitPointerEventScope.awaitPointerEvent$default($this$awaitPointerSlopOrCancellation_u2dpn7EDYM, pointerEventPass, continuation, 1, pointerEventPass);
            List<PointerInputChange> changes = event.getChanges();
            PointerEventPass pointerEventPass2 = pointerEventPass;
            int size = changes.size();
            int index$iv$iv = 0;
            while (true) {
                if (index$iv$iv < size) {
                    Object item$iv$iv = changes.get(index$iv$iv);
                    it$iv = item$iv$iv;
                    PointerInputChange it = (PointerInputChange) it$iv;
                    int index$iv$iv2 = index$iv$iv;
                    i = i2;
                    touchSlop = touchSlop2;
                    if (Boolean.valueOf(PointerId.m5992equalsimpl0(it.getId(), pointer.element)).booleanValue()) {
                        break;
                    }
                    index$iv$iv = index$iv$iv2 + 1;
                    i2 = i;
                    touchSlop2 = touchSlop;
                } else {
                    i = i2;
                    touchSlop = touchSlop2;
                    it$iv = pointerEventPass2;
                    break;
                }
            }
            Intrinsics.checkNotNull(it$iv);
            PointerInputChange dragEvent = (PointerInputChange) it$iv;
            if (dragEvent.isConsumed()) {
                return pointerEventPass2;
            }
            if (PointerEventKt.changedToUpIgnoreConsumed(dragEvent)) {
                List<PointerInputChange> changes2 = event.getChanges();
                int index$iv$iv3 = 0;
                int size2 = changes2.size();
                while (true) {
                    if (index$iv$iv3 < size2) {
                        Object item$iv$iv2 = changes2.get(index$iv$iv3);
                        it$iv2 = item$iv$iv2;
                        PointerInputChange it2 = (PointerInputChange) it$iv2;
                        if (Boolean.valueOf(it2.getPressed()).booleanValue()) {
                            break;
                        }
                        index$iv$iv3++;
                    } else {
                        it$iv2 = pointerEventPass2;
                        break;
                    }
                }
                PointerInputChange otherDown = (PointerInputChange) it$iv2;
                if (otherDown == null) {
                    return pointerEventPass2;
                }
                pointer.element = otherDown.getId();
            } else {
                long currentPosition = dragEvent.getPosition();
                long previousPosition = dragEvent.getPreviousPosition();
                float positionChange = function1.invoke(Offset.m4441boximpl(currentPosition)).floatValue() - function1.invoke(Offset.m4441boximpl(previousPosition)).floatValue();
                totalPositionChange += positionChange;
                float inDirection = Math.abs(totalPositionChange);
                if (inDirection < touchSlop) {
                    $this$awaitPointerSlopOrCancellation_u2dpn7EDYM.awaitPointerEvent(PointerEventPass.Final, continuation);
                    if (dragEvent.isConsumed()) {
                        return pointerEventPass2;
                    }
                } else {
                    function2.invoke(dragEvent, Float.valueOf(totalPositionChange - (Math.signum(totalPositionChange) * touchSlop)));
                    if (dragEvent.isConsumed()) {
                        return dragEvent;
                    }
                    totalPositionChange = 0.0f;
                }
            }
            pointerEventPass = pointerEventPass2;
            i2 = i;
            touchSlop2 = touchSlop;
        }
    }

    /* JADX INFO: renamed from: isPointerUp-DmW0f2w, reason: not valid java name */
    private static final boolean m3177isPointerUpDmW0f2w(PointerEvent $this$isPointerUp_u2dDmW0f2w, long pointerId) {
        Object it$iv;
        List<PointerInputChange> changes = $this$isPointerUp_u2dDmW0f2w.getChanges();
        int index$iv$iv = 0;
        int size = changes.size();
        while (true) {
            if (index$iv$iv < size) {
                Object item$iv$iv = changes.get(index$iv$iv);
                it$iv = item$iv$iv;
                PointerInputChange it = (PointerInputChange) it$iv;
                if (PointerId.m5992equalsimpl0(it.getId(), pointerId)) {
                    break;
                }
                index$iv$iv++;
            } else {
                it$iv = null;
                break;
            }
        }
        PointerInputChange pointerInputChange = (PointerInputChange) it$iv;
        boolean z = false;
        if (pointerInputChange != null && pointerInputChange.getPressed()) {
            z = true;
        }
        return !z;
    }

    static {
        float arg0$iv = mouseSlop;
        float other$iv = defaultTouchSlop;
        mouseToTouchSlopRatio = arg0$iv / other$iv;
    }

    /* JADX INFO: renamed from: pointerSlop-E8SPZFQ, reason: not valid java name */
    public static final float m3178pointerSlopE8SPZFQ(ViewConfiguration $this$pointerSlop_u2dE8SPZFQ, int pointerType) {
        return PointerType.m6081equalsimpl0(pointerType, PointerType.INSTANCE.m6086getMouseT8wyACA()) ? $this$pointerSlop_u2dE8SPZFQ.getTouchSlop() * mouseToTouchSlopRatio : $this$pointerSlop_u2dE8SPZFQ.getTouchSlop();
    }
}
