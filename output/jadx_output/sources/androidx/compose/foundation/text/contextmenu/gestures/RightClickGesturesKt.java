package androidx.compose.foundation.text.contextmenu.gestures;

import androidx.compose.foundation.gestures.ForEachGestureKt;
import androidx.compose.foundation.gestures.TapGestureDetectorKt;
import androidx.compose.ui.geometry.Offset;
import androidx.compose.ui.input.pointer.AwaitPointerEventScope;
import androidx.compose.ui.input.pointer.PointerEvent;
import androidx.compose.ui.input.pointer.PointerEventKt;
import androidx.compose.ui.input.pointer.PointerEvent_androidKt;
import androidx.compose.ui.input.pointer.PointerInputChange;
import androidx.compose.ui.input.pointer.PointerInputScope;
import java.util.List;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.RestrictedSuspendLambda;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;

/* JADX INFO: compiled from: RightClickGestures.kt */
/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000$\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\u001a&\u0010\u0000\u001a\u00020\u0001*\u00020\u00022\u0012\u0010\u0003\u001a\u000e\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u00010\u0004H\u0080@¢\u0006\u0002\u0010\u0006\u001a\u0012\u0010\u0007\u001a\u00020\b*\u00020\tH\u0082@¢\u0006\u0002\u0010\n¨\u0006\u000b"}, d2 = {"onRightClickDown", "", "Landroidx/compose/ui/input/pointer/PointerInputScope;", "onDown", "Lkotlin/Function1;", "Landroidx/compose/ui/geometry/Offset;", "(Landroidx/compose/ui/input/pointer/PointerInputScope;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "awaitFirstRightClickDown", "Landroidx/compose/ui/input/pointer/PointerInputChange;", "Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;", "(Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "foundation"}, k = 2, mv = {2, 0, 0}, xi = 48)
public final class RightClickGesturesKt {

    /* JADX INFO: renamed from: androidx.compose.foundation.text.contextmenu.gestures.RightClickGesturesKt$awaitFirstRightClickDown$1, reason: invalid class name */
    /* JADX INFO: compiled from: RightClickGestures.kt */
    @Metadata(k = 3, mv = {2, 0, 0}, xi = 48)
    @DebugMetadata(c = "androidx.compose.foundation.text.contextmenu.gestures.RightClickGesturesKt", f = "RightClickGestures.kt", i = {0}, l = {45}, m = "awaitFirstRightClickDown", n = {"$this$awaitFirstRightClickDown"}, s = {"L$0"}, v = 1)
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
            return RightClickGesturesKt.awaitFirstRightClickDown(null, this);
        }
    }

    /* JADX INFO: renamed from: androidx.compose.foundation.text.contextmenu.gestures.RightClickGesturesKt$onRightClickDown$2, reason: invalid class name */
    /* JADX INFO: compiled from: RightClickGestures.kt */
    @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;"}, k = 3, mv = {2, 0, 0}, xi = 48)
    @DebugMetadata(c = "androidx.compose.foundation.text.contextmenu.gestures.RightClickGesturesKt$onRightClickDown$2", f = "RightClickGestures.kt", i = {0}, l = {32, 35}, m = "invokeSuspend", n = {"$this$awaitEachGesture"}, s = {"L$0"}, v = 1)
    static final class AnonymousClass2 extends RestrictedSuspendLambda implements Function2<AwaitPointerEventScope, Continuation<? super Unit>, Object> {
        final /* synthetic */ Function1<Offset, Unit> $onDown;
        private /* synthetic */ Object L$0;
        int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        /* JADX WARN: Multi-variable type inference failed */
        AnonymousClass2(Function1<? super Offset, Unit> function1, Continuation<? super AnonymousClass2> continuation) {
            super(2, continuation);
            this.$onDown = function1;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            AnonymousClass2 anonymousClass2 = new AnonymousClass2(this.$onDown, continuation);
            anonymousClass2.L$0 = obj;
            return anonymousClass2;
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(AwaitPointerEventScope awaitPointerEventScope, Continuation<? super Unit> continuation) {
            return ((AnonymousClass2) create(awaitPointerEventScope, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        /* JADX WARN: Removed duplicated region for block: B:14:0x005c A[RETURN] */
        /* JADX WARN: Removed duplicated region for block: B:17:0x0061  */
        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        /*
            Code decompiled incorrectly, please refer to instructions dump.
        */
        public final Object invokeSuspend(Object $result) {
            AwaitPointerEventScope $this$awaitEachGesture;
            PointerInputChange pointerInputChange;
            Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
            switch (this.label) {
                case 0:
                    ResultKt.throwOnFailure($result);
                    AwaitPointerEventScope $this$awaitEachGesture2 = (AwaitPointerEventScope) this.L$0;
                    this.L$0 = $this$awaitEachGesture2;
                    this.label = 1;
                    Object objAwaitFirstRightClickDown = RightClickGesturesKt.awaitFirstRightClickDown($this$awaitEachGesture2, this);
                    if (objAwaitFirstRightClickDown == coroutine_suspended) {
                        return coroutine_suspended;
                    }
                    $result = objAwaitFirstRightClickDown;
                    $this$awaitEachGesture = $this$awaitEachGesture2;
                    PointerInputChange down = (PointerInputChange) $result;
                    down.consume();
                    this.$onDown.invoke(Offset.m4441boximpl(down.getPosition()));
                    this.L$0 = null;
                    this.label = 2;
                    $result = TapGestureDetectorKt.waitForUpOrCancellation$default($this$awaitEachGesture, null, this, 1, null);
                    if ($result == coroutine_suspended) {
                        return coroutine_suspended;
                    }
                    pointerInputChange = (PointerInputChange) $result;
                    if (pointerInputChange != null) {
                        pointerInputChange.consume();
                    }
                    return Unit.INSTANCE;
                case 1:
                    AwaitPointerEventScope $this$awaitEachGesture3 = (AwaitPointerEventScope) this.L$0;
                    ResultKt.throwOnFailure($result);
                    $this$awaitEachGesture = $this$awaitEachGesture3;
                    PointerInputChange down2 = (PointerInputChange) $result;
                    down2.consume();
                    this.$onDown.invoke(Offset.m4441boximpl(down2.getPosition()));
                    this.L$0 = null;
                    this.label = 2;
                    $result = TapGestureDetectorKt.waitForUpOrCancellation$default($this$awaitEachGesture, null, this, 1, null);
                    if ($result == coroutine_suspended) {
                    }
                    pointerInputChange = (PointerInputChange) $result;
                    if (pointerInputChange != null) {
                    }
                    return Unit.INSTANCE;
                case 2:
                    ResultKt.throwOnFailure($result);
                    pointerInputChange = (PointerInputChange) $result;
                    if (pointerInputChange != null) {
                    }
                    return Unit.INSTANCE;
                default:
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
        }
    }

    public static final Object onRightClickDown(PointerInputScope $this$onRightClickDown, Function1<? super Offset, Unit> function1, Continuation<? super Unit> continuation) {
        Object objAwaitEachGesture = ForEachGestureKt.awaitEachGesture($this$onRightClickDown, new AnonymousClass2(function1, null), continuation);
        return objAwaitEachGesture == IntrinsicsKt.getCOROUTINE_SUSPENDED() ? objAwaitEachGesture : Unit.INSTANCE;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Removed duplicated region for block: B:16:0x004c A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:17:0x004d  */
    /* JADX WARN: Removed duplicated region for block: B:20:0x0060  */
    /* JADX WARN: Removed duplicated region for block: B:7:0x0016  */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:17:0x004d -> B:18:0x0054). Please report as a decompilation issue!!! */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static final Object awaitFirstRightClickDown(AwaitPointerEventScope awaitPointerEventScope, Continuation<? super PointerInputChange> continuation) {
        AnonymousClass1 anonymousClass1;
        AwaitPointerEventScope $this$awaitFirstRightClickDown;
        Object objAwaitPointerEvent$default;
        Object $result;
        AwaitPointerEventScope $this$awaitFirstRightClickDown2;
        Object obj;
        PointerEvent event;
        boolean z;
        if (continuation instanceof AnonymousClass1) {
            anonymousClass1 = (AnonymousClass1) continuation;
            if ((anonymousClass1.label & Integer.MIN_VALUE) != 0) {
                anonymousClass1.label -= Integer.MIN_VALUE;
            } else {
                anonymousClass1 = new AnonymousClass1(continuation);
            }
        }
        Object $result2 = anonymousClass1.result;
        Object $result3 = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        switch (anonymousClass1.label) {
            case 0:
                ResultKt.throwOnFailure($result2);
                $this$awaitFirstRightClickDown = awaitPointerEventScope;
                anonymousClass1.L$0 = $this$awaitFirstRightClickDown;
                anonymousClass1.label = 1;
                objAwaitPointerEvent$default = AwaitPointerEventScope.awaitPointerEvent$default($this$awaitFirstRightClickDown, null, anonymousClass1, 1, null);
                if (objAwaitPointerEvent$default == $result3) {
                    return $result3;
                }
                Object obj2 = $result3;
                $result = $result2;
                $result2 = objAwaitPointerEvent$default;
                $this$awaitFirstRightClickDown2 = $this$awaitFirstRightClickDown;
                obj = obj2;
                event = (PointerEvent) $result2;
                if (PointerEvent_androidKt.m5985isSecondaryPressedaHzCxE(event.getButtons())) {
                    List<PointerInputChange> changes = event.getChanges();
                    int index$iv$iv = 0;
                    int size = changes.size();
                    while (true) {
                        if (index$iv$iv < size) {
                            Object item$iv$iv = changes.get(index$iv$iv);
                            PointerInputChange it = (PointerInputChange) item$iv$iv;
                            if (PointerEventKt.changedToDown(it)) {
                                index$iv$iv++;
                            } else {
                                z = false;
                            }
                        } else {
                            z = true;
                        }
                    }
                    if (z) {
                        return event.getChanges().get(0);
                    }
                }
                $result2 = $result;
                $result3 = obj;
                $this$awaitFirstRightClickDown = $this$awaitFirstRightClickDown2;
                anonymousClass1.L$0 = $this$awaitFirstRightClickDown;
                anonymousClass1.label = 1;
                objAwaitPointerEvent$default = AwaitPointerEventScope.awaitPointerEvent$default($this$awaitFirstRightClickDown, null, anonymousClass1, 1, null);
                if (objAwaitPointerEvent$default == $result3) {
                }
                break;
            case 1:
                AwaitPointerEventScope $this$awaitFirstRightClickDown3 = (AwaitPointerEventScope) anonymousClass1.L$0;
                ResultKt.throwOnFailure($result2);
                $this$awaitFirstRightClickDown2 = $this$awaitFirstRightClickDown3;
                obj = $result3;
                $result = $result2;
                event = (PointerEvent) $result2;
                if (PointerEvent_androidKt.m5985isSecondaryPressedaHzCxE(event.getButtons())) {
                }
                $result2 = $result;
                $result3 = obj;
                $this$awaitFirstRightClickDown = $this$awaitFirstRightClickDown2;
                anonymousClass1.L$0 = $this$awaitFirstRightClickDown;
                anonymousClass1.label = 1;
                objAwaitPointerEvent$default = AwaitPointerEventScope.awaitPointerEvent$default($this$awaitFirstRightClickDown, null, anonymousClass1, 1, null);
                if (objAwaitPointerEvent$default == $result3) {
                }
                break;
            default:
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }
    }
}
