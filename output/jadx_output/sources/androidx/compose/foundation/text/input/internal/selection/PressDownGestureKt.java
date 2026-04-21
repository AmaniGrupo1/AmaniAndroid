package androidx.compose.foundation.text.input.internal.selection;

import androidx.compose.foundation.gestures.ForEachGestureKt;
import androidx.compose.foundation.gestures.TapGestureDetectorKt;
import androidx.compose.ui.input.pointer.AwaitPointerEventScope;
import androidx.compose.ui.input.pointer.PointerEvent;
import androidx.compose.ui.input.pointer.PointerId;
import androidx.compose.ui.input.pointer.PointerInputChange;
import androidx.compose.ui.input.pointer.PointerInputScope;
import java.util.List;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.RestrictedSuspendLambda;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function2;

/* JADX INFO: compiled from: PressDownGesture.kt */
/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u001a\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\u001a,\u0010\u0000\u001a\u00020\u0001*\u00020\u00022\u0006\u0010\u0003\u001a\u00020\u00042\u0010\b\u0002\u0010\u0005\u001a\n\u0012\u0004\u0012\u00020\u0001\u0018\u00010\u0006H\u0080@¢\u0006\u0002\u0010\u0007¨\u0006\b"}, d2 = {"detectPressDownGesture", "", "Landroidx/compose/ui/input/pointer/PointerInputScope;", "onDown", "Landroidx/compose/foundation/text/input/internal/selection/TapOnPosition;", "onUp", "Lkotlin/Function0;", "(Landroidx/compose/ui/input/pointer/PointerInputScope;Landroidx/compose/foundation/text/input/internal/selection/TapOnPosition;Lkotlin/jvm/functions/Function0;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "foundation"}, k = 2, mv = {2, 0, 0}, xi = 48)
public final class PressDownGestureKt {
    public static /* synthetic */ Object detectPressDownGesture$default(PointerInputScope pointerInputScope, TapOnPosition tapOnPosition, Function0 function0, Continuation continuation, int i, Object obj) {
        if ((i & 2) != 0) {
            function0 = null;
        }
        return detectPressDownGesture(pointerInputScope, tapOnPosition, function0, continuation);
    }

    /* JADX INFO: renamed from: androidx.compose.foundation.text.input.internal.selection.PressDownGestureKt$detectPressDownGesture$2, reason: invalid class name */
    /* JADX INFO: compiled from: PressDownGesture.kt */
    @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;"}, k = 3, mv = {2, 0, 0}, xi = 48)
    @DebugMetadata(c = "androidx.compose.foundation.text.input.internal.selection.PressDownGestureKt$detectPressDownGesture$2", f = "PressDownGesture.kt", i = {0, 1, 1}, l = {31, 37}, m = "invokeSuspend", n = {"$this$awaitEachGesture", "$this$awaitEachGesture", "down"}, s = {"L$0", "L$0", "L$1"}, v = 1)
    static final class AnonymousClass2 extends RestrictedSuspendLambda implements Function2<AwaitPointerEventScope, Continuation<? super Unit>, Object> {
        final /* synthetic */ TapOnPosition $onDown;
        final /* synthetic */ Function0<Unit> $onUp;
        private /* synthetic */ Object L$0;
        Object L$1;
        int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        AnonymousClass2(TapOnPosition tapOnPosition, Function0<Unit> function0, Continuation<? super AnonymousClass2> continuation) {
            super(2, continuation);
            this.$onDown = tapOnPosition;
            this.$onUp = function0;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            AnonymousClass2 anonymousClass2 = new AnonymousClass2(this.$onDown, this.$onUp, continuation);
            anonymousClass2.L$0 = obj;
            return anonymousClass2;
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(AwaitPointerEventScope awaitPointerEventScope, Continuation<? super Unit> continuation) {
            return ((AnonymousClass2) create(awaitPointerEventScope, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        /* JADX WARN: Removed duplicated region for block: B:14:0x0063  */
        /* JADX WARN: Removed duplicated region for block: B:17:0x0078 A[RETURN] */
        /* JADX WARN: Removed duplicated region for block: B:18:0x0079  */
        /* JADX WARN: Removed duplicated region for block: B:21:0x0094  */
        /* JADX WARN: Removed duplicated region for block: B:32:0x00c9  */
        /* JADX WARN: Removed duplicated region for block: B:33:0x00d1  */
        /* JADX WARN: Removed duplicated region for block: B:34:0x00d8  */
        /* JADX WARN: Removed duplicated region for block: B:37:0x00c3 A[SYNTHETIC] */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:18:0x0079 -> B:19:0x0081). Please report as a decompilation issue!!! */
        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        /*
            Code decompiled incorrectly, please refer to instructions dump.
        */
        public final Object invokeSuspend(Object $result) {
            AwaitPointerEventScope $this$awaitEachGesture;
            Object $result2;
            Object $result3;
            Object $result4;
            Object $result5;
            AnonymousClass2 anonymousClass2;
            AwaitPointerEventScope $this$awaitEachGesture2;
            PointerInputChange down;
            int index$iv$iv;
            int size;
            Object $result6;
            boolean z;
            Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
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
                    PointerInputChange down2 = (PointerInputChange) $result3;
                    this.$onDown.mo1488onEventk4lQ0M(down2.getPosition());
                    if (this.$onUp != null) {
                        return Unit.INSTANCE;
                    }
                    Object obj = $result2;
                    PointerInputChange down3 = down2;
                    Object $result7 = obj;
                    AnonymousClass2 anonymousClass22 = this;
                    anonymousClass22.L$0 = $this$awaitEachGesture;
                    anonymousClass22.L$1 = down3;
                    anonymousClass22.label = 2;
                    Object objAwaitPointerEvent$default = AwaitPointerEventScope.awaitPointerEvent$default($this$awaitEachGesture, null, anonymousClass22, i, null);
                    if (objAwaitPointerEvent$default != coroutine_suspended) {
                        return coroutine_suspended;
                    }
                    PointerInputChange pointerInputChange = down3;
                    $result4 = $result7;
                    $result5 = objAwaitPointerEvent$default;
                    anonymousClass2 = anonymousClass22;
                    $this$awaitEachGesture2 = $this$awaitEachGesture;
                    down = pointerInputChange;
                    PointerEvent event = (PointerEvent) $result5;
                    List<PointerInputChange> changes = event.getChanges();
                    index$iv$iv = 0;
                    size = changes.size();
                    while (true) {
                        if (index$iv$iv >= size) {
                            Object it$iv = changes.get(index$iv$iv);
                            PointerInputChange it = (PointerInputChange) it$iv;
                            $result6 = $result4;
                            if (PointerId.m5992equalsimpl0(it.getId(), down.getId()) && it.getPressed()) {
                                z = true;
                            } else {
                                index$iv$iv++;
                                $result4 = $result6;
                            }
                        } else {
                            $result6 = $result4;
                            z = false;
                        }
                    }
                    if (z) {
                        anonymousClass2.$onUp.invoke();
                        return Unit.INSTANCE;
                    }
                    $result7 = $result6;
                    down3 = down;
                    $this$awaitEachGesture = $this$awaitEachGesture2;
                    anonymousClass22 = anonymousClass2;
                    i = 1;
                    anonymousClass22.L$0 = $this$awaitEachGesture;
                    anonymousClass22.L$1 = down3;
                    anonymousClass22.label = 2;
                    Object objAwaitPointerEvent$default2 = AwaitPointerEventScope.awaitPointerEvent$default($this$awaitEachGesture, null, anonymousClass22, i, null);
                    if (objAwaitPointerEvent$default2 != coroutine_suspended) {
                    }
                    break;
                case 1:
                    $result3 = $result;
                    AwaitPointerEventScope $this$awaitEachGesture3 = (AwaitPointerEventScope) this.L$0;
                    ResultKt.throwOnFailure($result3);
                    $this$awaitEachGesture = $this$awaitEachGesture3;
                    $result2 = $result3;
                    PointerInputChange down22 = (PointerInputChange) $result3;
                    this.$onDown.mo1488onEventk4lQ0M(down22.getPosition());
                    if (this.$onUp != null) {
                    }
                    break;
                case 2:
                    $result5 = $result;
                    PointerInputChange down4 = (PointerInputChange) this.L$1;
                    AwaitPointerEventScope $this$awaitEachGesture4 = (AwaitPointerEventScope) this.L$0;
                    ResultKt.throwOnFailure($result5);
                    anonymousClass2 = this;
                    $this$awaitEachGesture2 = $this$awaitEachGesture4;
                    down = down4;
                    $result4 = $result5;
                    PointerEvent event2 = (PointerEvent) $result5;
                    List<PointerInputChange> changes2 = event2.getChanges();
                    index$iv$iv = 0;
                    size = changes2.size();
                    while (true) {
                        if (index$iv$iv >= size) {
                        }
                        index$iv$iv++;
                        $result4 = $result6;
                    }
                    if (z) {
                    }
                    break;
                default:
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
        }
    }

    public static final Object detectPressDownGesture(PointerInputScope $this$detectPressDownGesture, TapOnPosition onDown, Function0<Unit> function0, Continuation<? super Unit> continuation) {
        Object objAwaitEachGesture = ForEachGestureKt.awaitEachGesture($this$detectPressDownGesture, new AnonymousClass2(onDown, function0, null), continuation);
        return objAwaitEachGesture == IntrinsicsKt.getCOROUTINE_SUSPENDED() ? objAwaitEachGesture : Unit.INSTANCE;
    }
}
