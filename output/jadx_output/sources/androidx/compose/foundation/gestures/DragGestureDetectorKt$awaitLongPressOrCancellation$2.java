package androidx.compose.foundation.gestures;

import androidx.compose.ui.input.pointer.AwaitPointerEventScope;
import androidx.compose.ui.input.pointer.PointerEvent;
import androidx.compose.ui.input.pointer.PointerEventKt;
import androidx.compose.ui.input.pointer.PointerEventPass;
import androidx.compose.ui.input.pointer.PointerId;
import androidx.compose.ui.input.pointer.PointerInputChange;
import androidx.core.app.NotificationCompat;
import androidx.media3.exoplayer.analytics.AnalyticsListener;
import java.util.List;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.RestrictedSuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Ref;

/* JADX INFO: compiled from: DragGestureDetector.kt */
/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;"}, k = 3, mv = {2, 0, 0}, xi = 48)
@DebugMetadata(c = "androidx.compose.foundation.gestures.DragGestureDetectorKt$awaitLongPressOrCancellation$2", f = "DragGestureDetector.kt", i = {0, 0, 1, 1, 1}, l = {AnalyticsListener.EVENT_DRM_KEYS_REMOVED, 1048}, m = "invokeSuspend", n = {"$this$withTimeout", "finished", "$this$withTimeout", NotificationCompat.CATEGORY_EVENT, "finished"}, s = {"L$0", "I$0", "L$0", "L$1", "I$0"}, v = 1)
final class DragGestureDetectorKt$awaitLongPressOrCancellation$2 extends RestrictedSuspendLambda implements Function2<AwaitPointerEventScope, Continuation<? super Unit>, Object> {
    final /* synthetic */ Ref.ObjectRef<PointerInputChange> $currentDown;
    final /* synthetic */ Ref.BooleanRef $deepPress;
    final /* synthetic */ Ref.ObjectRef<PointerInputChange> $longPress;
    int I$0;
    private /* synthetic */ Object L$0;
    Object L$1;
    int label;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    DragGestureDetectorKt$awaitLongPressOrCancellation$2(Ref.BooleanRef booleanRef, Ref.ObjectRef<PointerInputChange> objectRef, Ref.ObjectRef<PointerInputChange> objectRef2, Continuation<? super DragGestureDetectorKt$awaitLongPressOrCancellation$2> continuation) {
        super(2, continuation);
        this.$deepPress = booleanRef;
        this.$currentDown = objectRef;
        this.$longPress = objectRef2;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        DragGestureDetectorKt$awaitLongPressOrCancellation$2 dragGestureDetectorKt$awaitLongPressOrCancellation$2 = new DragGestureDetectorKt$awaitLongPressOrCancellation$2(this.$deepPress, this.$currentDown, this.$longPress, continuation);
        dragGestureDetectorKt$awaitLongPressOrCancellation$2.L$0 = obj;
        return dragGestureDetectorKt$awaitLongPressOrCancellation$2;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(AwaitPointerEventScope awaitPointerEventScope, Continuation<? super Unit> continuation) {
        return ((DragGestureDetectorKt$awaitLongPressOrCancellation$2) create(awaitPointerEventScope, continuation)).invokeSuspend(Unit.INSTANCE);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:10:0x004a  */
    /* JADX WARN: Removed duplicated region for block: B:16:0x0079  */
    /* JADX WARN: Removed duplicated region for block: B:22:0x0097  */
    /* JADX WARN: Removed duplicated region for block: B:25:0x00aa  */
    /* JADX WARN: Removed duplicated region for block: B:35:0x00d5 A[LOOP:3: B:24:0x00a8->B:35:0x00d5, LOOP_END] */
    /* JADX WARN: Removed duplicated region for block: B:38:0x00e3  */
    /* JADX WARN: Removed duplicated region for block: B:41:0x00ea  */
    /* JADX WARN: Removed duplicated region for block: B:42:0x00f2  */
    /* JADX WARN: Removed duplicated region for block: B:45:0x0108 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:46:0x0109  */
    /* JADX WARN: Removed duplicated region for block: B:49:0x0120  */
    /* JADX WARN: Removed duplicated region for block: B:55:0x013c  */
    /* JADX WARN: Removed duplicated region for block: B:58:0x014e  */
    /* JADX WARN: Removed duplicated region for block: B:69:0x0193  */
    /* JADX WARN: Removed duplicated region for block: B:78:0x01ea  */
    /* JADX WARN: Removed duplicated region for block: B:80:0x0138 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:85:0x0093 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:86:0x00d3 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:87:0x00dd A[SYNTHETIC] */
    /* JADX WARN: Type inference failed for: r2v21, types: [T, androidx.compose.ui.input.pointer.PointerInputChange] */
    /* JADX WARN: Type inference failed for: r5v16, types: [T] */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:46:0x0109 -> B:47:0x010d). Please report as a decompilation issue!!! */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final Object invokeSuspend(Object obj) {
        Object $result;
        AwaitPointerEventScope $this$withTimeout;
        int i;
        DragGestureDetectorKt$awaitLongPressOrCancellation$2 dragGestureDetectorKt$awaitLongPressOrCancellation$2;
        Object $result2;
        DragGestureDetectorKt$awaitLongPressOrCancellation$2 dragGestureDetectorKt$awaitLongPressOrCancellation$22;
        AwaitPointerEventScope $this$withTimeout2;
        int i2;
        Object $result3;
        PointerEvent event;
        int index$iv$iv;
        int size;
        int i3;
        int index$iv$iv2;
        int size2;
        Object $result4;
        boolean z;
        int i4;
        Object objAwaitPointerEvent;
        PointerEvent event2;
        Object $result5;
        Object $result6;
        boolean z2;
        int index$iv$iv3;
        int size3;
        int i5;
        Object obj2;
        T t;
        Object it$iv;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        Object $result7 = null;
        int i6 = 1;
        switch (this.label) {
            case 0:
                ResultKt.throwOnFailure(obj);
                $result = obj;
                AwaitPointerEventScope $this$withTimeout3 = (AwaitPointerEventScope) this.L$0;
                $this$withTimeout = $this$withTimeout3;
                i = 0;
                dragGestureDetectorKt$awaitLongPressOrCancellation$2 = this;
                if (i != 0) {
                    dragGestureDetectorKt$awaitLongPressOrCancellation$2.L$0 = $this$withTimeout;
                    dragGestureDetectorKt$awaitLongPressOrCancellation$2.L$1 = $result7;
                    dragGestureDetectorKt$awaitLongPressOrCancellation$2.I$0 = i;
                    dragGestureDetectorKt$awaitLongPressOrCancellation$2.label = i6;
                    Object objAwaitPointerEvent2 = $this$withTimeout.awaitPointerEvent(PointerEventPass.Main, dragGestureDetectorKt$awaitLongPressOrCancellation$2);
                    if (objAwaitPointerEvent2 == coroutine_suspended) {
                        return coroutine_suspended;
                    }
                    int i7 = i;
                    $result3 = $result;
                    $result2 = objAwaitPointerEvent2;
                    dragGestureDetectorKt$awaitLongPressOrCancellation$22 = dragGestureDetectorKt$awaitLongPressOrCancellation$2;
                    $this$withTimeout2 = $this$withTimeout;
                    i2 = i7;
                    event = (PointerEvent) $result2;
                    List<PointerInputChange> changes = event.getChanges();
                    index$iv$iv = 0;
                    size = changes.size();
                    while (true) {
                        if (index$iv$iv >= size) {
                            Object item$iv$iv = changes.get(index$iv$iv);
                            if (PointerEventKt.changedToUpIgnoreConsumed((PointerInputChange) item$iv$iv)) {
                                index$iv$iv++;
                            } else {
                                i3 = 0;
                            }
                        } else {
                            i3 = i6;
                        }
                    }
                    if (i3 != 0) {
                        i2 = 1;
                    }
                    List<PointerInputChange> changes2 = event.getChanges();
                    index$iv$iv2 = 0;
                    size2 = changes2.size();
                    while (true) {
                        if (index$iv$iv2 >= size2) {
                            Object it$iv2 = changes2.get(index$iv$iv2);
                            PointerInputChange it = (PointerInputChange) it$iv2;
                            if (it.isConsumed()) {
                                $result4 = $result3;
                            } else {
                                $result4 = $result3;
                                if (!PointerEventKt.m5955isOutOfBoundsjwHxaWs(it, $this$withTimeout2.mo5906getSizeYbymL2g(), $this$withTimeout2.mo5905getExtendedTouchPaddingNHjbRc())) {
                                    z2 = false;
                                }
                                if (z2) {
                                    index$iv$iv2++;
                                    $result3 = $result4;
                                } else {
                                    z = true;
                                }
                            }
                            z2 = true;
                            if (z2) {
                            }
                        } else {
                            $result4 = $result3;
                            z = false;
                        }
                    }
                    if (z) {
                        i2 = 1;
                    }
                    if (TapGestureDetector_androidKt.isDeepPress(event)) {
                        i4 = 1;
                        i = i2;
                    } else {
                        i4 = 1;
                        dragGestureDetectorKt$awaitLongPressOrCancellation$22.$deepPress.element = true;
                        i = 1;
                    }
                    dragGestureDetectorKt$awaitLongPressOrCancellation$22.L$0 = $this$withTimeout2;
                    dragGestureDetectorKt$awaitLongPressOrCancellation$22.L$1 = event;
                    dragGestureDetectorKt$awaitLongPressOrCancellation$22.I$0 = i;
                    dragGestureDetectorKt$awaitLongPressOrCancellation$22.label = 2;
                    objAwaitPointerEvent = $this$withTimeout2.awaitPointerEvent(PointerEventPass.Final, dragGestureDetectorKt$awaitLongPressOrCancellation$22);
                    if (objAwaitPointerEvent != coroutine_suspended) {
                        return coroutine_suspended;
                    }
                    event2 = event;
                    $result5 = objAwaitPointerEvent;
                    $result6 = $result4;
                    PointerEvent consumeCheck = (PointerEvent) $result5;
                    List<PointerInputChange> changes3 = consumeCheck.getChanges();
                    index$iv$iv3 = 0;
                    size3 = changes3.size();
                    while (true) {
                        if (index$iv$iv3 >= size3) {
                            Object item$iv$iv2 = changes3.get(index$iv$iv3);
                            if (((PointerInputChange) item$iv$iv2).isConsumed()) {
                                i5 = i4;
                            } else {
                                index$iv$iv3++;
                            }
                        } else {
                            i5 = 0;
                        }
                    }
                    if (i5 != 0) {
                        i = 1;
                    }
                    if (DragGestureDetectorKt.m475isPointerUpDmW0f2w(event2, dragGestureDetectorKt$awaitLongPressOrCancellation$22.$currentDown.element.getId())) {
                        Ref.ObjectRef<PointerInputChange> objectRef = dragGestureDetectorKt$awaitLongPressOrCancellation$22.$longPress;
                        List<PointerInputChange> changes4 = event2.getChanges();
                        Ref.ObjectRef<PointerInputChange> objectRef2 = dragGestureDetectorKt$awaitLongPressOrCancellation$22.$currentDown;
                        int index$iv$iv4 = 0;
                        int size4 = changes4.size();
                        while (true) {
                            if (index$iv$iv4 < size4) {
                                Object item$iv$iv3 = changes4.get(index$iv$iv4);
                                t = item$iv$iv3;
                                List<PointerInputChange> list = changes4;
                                obj2 = coroutine_suspended;
                                if (!PointerId.m5992equalsimpl0(((PointerInputChange) t).getId(), objectRef2.element.getId())) {
                                    index$iv$iv4++;
                                    changes4 = list;
                                    coroutine_suspended = obj2;
                                }
                            } else {
                                obj2 = coroutine_suspended;
                                t = 0;
                            }
                        }
                        objectRef.element = t;
                    } else {
                        List<PointerInputChange> changes5 = event2.getChanges();
                        int index$iv$iv5 = 0;
                        int size5 = changes5.size();
                        while (true) {
                            if (index$iv$iv5 < size5) {
                                Object item$iv$iv4 = changes5.get(index$iv$iv5);
                                it$iv = item$iv$iv4;
                                if (!((PointerInputChange) it$iv).getPressed()) {
                                    index$iv$iv5++;
                                }
                            } else {
                                it$iv = null;
                            }
                        }
                        ?? r2 = (PointerInputChange) it$iv;
                        if (r2 != 0) {
                            dragGestureDetectorKt$awaitLongPressOrCancellation$22.$currentDown.element = r2;
                            dragGestureDetectorKt$awaitLongPressOrCancellation$22.$longPress.element = dragGestureDetectorKt$awaitLongPressOrCancellation$22.$currentDown.element;
                            obj2 = coroutine_suspended;
                        } else {
                            i = 1;
                            $result = $result6;
                            i6 = i4;
                            $this$withTimeout = $this$withTimeout2;
                            dragGestureDetectorKt$awaitLongPressOrCancellation$2 = dragGestureDetectorKt$awaitLongPressOrCancellation$22;
                            $result7 = null;
                            if (i != 0) {
                                return Unit.INSTANCE;
                            }
                        }
                    }
                    $result = $result6;
                    $this$withTimeout = $this$withTimeout2;
                    dragGestureDetectorKt$awaitLongPressOrCancellation$2 = dragGestureDetectorKt$awaitLongPressOrCancellation$22;
                    coroutine_suspended = obj2;
                    $result7 = null;
                    i6 = 1;
                    if (i != 0) {
                    }
                }
                break;
            case 1:
                $result2 = obj;
                int i8 = this.I$0;
                AwaitPointerEventScope $this$withTimeout4 = (AwaitPointerEventScope) this.L$0;
                ResultKt.throwOnFailure($result2);
                dragGestureDetectorKt$awaitLongPressOrCancellation$22 = this;
                $this$withTimeout2 = $this$withTimeout4;
                i2 = i8;
                $result3 = $result2;
                event = (PointerEvent) $result2;
                List<PointerInputChange> changes6 = event.getChanges();
                index$iv$iv = 0;
                size = changes6.size();
                while (true) {
                    if (index$iv$iv >= size) {
                    }
                    index$iv$iv++;
                }
                if (i3 != 0) {
                }
                List<PointerInputChange> changes22 = event.getChanges();
                index$iv$iv2 = 0;
                size2 = changes22.size();
                while (true) {
                    if (index$iv$iv2 >= size2) {
                    }
                    index$iv$iv2++;
                    $result3 = $result4;
                }
                if (z) {
                }
                if (TapGestureDetector_androidKt.isDeepPress(event)) {
                }
                dragGestureDetectorKt$awaitLongPressOrCancellation$22.L$0 = $this$withTimeout2;
                dragGestureDetectorKt$awaitLongPressOrCancellation$22.L$1 = event;
                dragGestureDetectorKt$awaitLongPressOrCancellation$22.I$0 = i;
                dragGestureDetectorKt$awaitLongPressOrCancellation$22.label = 2;
                objAwaitPointerEvent = $this$withTimeout2.awaitPointerEvent(PointerEventPass.Final, dragGestureDetectorKt$awaitLongPressOrCancellation$22);
                if (objAwaitPointerEvent != coroutine_suspended) {
                }
                break;
            case 2:
                $result5 = obj;
                i = this.I$0;
                event2 = (PointerEvent) this.L$1;
                $this$withTimeout2 = (AwaitPointerEventScope) this.L$0;
                ResultKt.throwOnFailure($result5);
                dragGestureDetectorKt$awaitLongPressOrCancellation$22 = this;
                $result6 = $result5;
                i4 = 1;
                PointerEvent consumeCheck2 = (PointerEvent) $result5;
                List<PointerInputChange> changes32 = consumeCheck2.getChanges();
                index$iv$iv3 = 0;
                size3 = changes32.size();
                while (true) {
                    if (index$iv$iv3 >= size3) {
                    }
                    index$iv$iv3++;
                }
                if (i5 != 0) {
                }
                if (DragGestureDetectorKt.m475isPointerUpDmW0f2w(event2, dragGestureDetectorKt$awaitLongPressOrCancellation$22.$currentDown.element.getId())) {
                }
                $result = $result6;
                $this$withTimeout = $this$withTimeout2;
                dragGestureDetectorKt$awaitLongPressOrCancellation$2 = dragGestureDetectorKt$awaitLongPressOrCancellation$22;
                coroutine_suspended = obj2;
                $result7 = null;
                i6 = 1;
                if (i != 0) {
                }
                break;
            default:
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }
    }
}
