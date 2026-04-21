package androidx.compose.material3;

import androidx.compose.foundation.gestures.ForEachGestureKt;
import androidx.compose.foundation.gestures.TapGestureDetectorKt;
import androidx.compose.ui.input.pointer.AwaitPointerEventScope;
import androidx.compose.ui.input.pointer.PointerEventPass;
import androidx.compose.ui.input.pointer.PointerInputChange;
import androidx.compose.ui.input.pointer.PointerInputScope;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.RestrictedSuspendLambda;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function2;

/* JADX INFO: compiled from: ExposedDropdownMenu.android.kt */
/* JADX INFO: loaded from: classes20.dex */
@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\u008a@"}, d2 = {"<anonymous>", "", "Landroidx/compose/ui/input/pointer/PointerInputScope;"}, k = 3, mv = {1, 8, 0}, xi = 48)
@DebugMetadata(c = "androidx.compose.material3.ExposedDropdownMenu_androidKt$expandable$1", f = "ExposedDropdownMenu.android.kt", i = {}, l = {1426}, m = "invokeSuspend", n = {}, s = {})
final class ExposedDropdownMenu_androidKt$expandable$1 extends SuspendLambda implements Function2<PointerInputScope, Continuation<? super Unit>, Object> {
    final /* synthetic */ String $anchorType;
    final /* synthetic */ Function0<Unit> $onExpandedChange;
    private /* synthetic */ Object L$0;
    int label;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    ExposedDropdownMenu_androidKt$expandable$1(String str, Function0<Unit> function0, Continuation<? super ExposedDropdownMenu_androidKt$expandable$1> continuation) {
        super(2, continuation);
        this.$anchorType = str;
        this.$onExpandedChange = function0;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        ExposedDropdownMenu_androidKt$expandable$1 exposedDropdownMenu_androidKt$expandable$1 = new ExposedDropdownMenu_androidKt$expandable$1(this.$anchorType, this.$onExpandedChange, continuation);
        exposedDropdownMenu_androidKt$expandable$1.L$0 = obj;
        return exposedDropdownMenu_androidKt$expandable$1;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(PointerInputScope pointerInputScope, Continuation<? super Unit> continuation) {
        return ((ExposedDropdownMenu_androidKt$expandable$1) create(pointerInputScope, continuation)).invokeSuspend(Unit.INSTANCE);
    }

    /* JADX INFO: renamed from: androidx.compose.material3.ExposedDropdownMenu_androidKt$expandable$1$1, reason: invalid class name */
    /* JADX INFO: compiled from: ExposedDropdownMenu.android.kt */
    @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\u008a@"}, d2 = {"<anonymous>", "", "Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;"}, k = 3, mv = {1, 8, 0}, xi = 48)
    @DebugMetadata(c = "androidx.compose.material3.ExposedDropdownMenu_androidKt$expandable$1$1", f = "ExposedDropdownMenu.android.kt", i = {0}, l = {1430, 1434}, m = "invokeSuspend", n = {"$this$awaitEachGesture"}, s = {"L$0"})
    static final class AnonymousClass1 extends RestrictedSuspendLambda implements Function2<AwaitPointerEventScope, Continuation<? super Unit>, Object> {
        final /* synthetic */ String $anchorType;
        final /* synthetic */ Function0<Unit> $onExpandedChange;
        private /* synthetic */ Object L$0;
        int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        AnonymousClass1(String str, Function0<Unit> function0, Continuation<? super AnonymousClass1> continuation) {
            super(2, continuation);
            this.$anchorType = str;
            this.$onExpandedChange = function0;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            AnonymousClass1 anonymousClass1 = new AnonymousClass1(this.$anchorType, this.$onExpandedChange, continuation);
            anonymousClass1.L$0 = obj;
            return anonymousClass1;
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(AwaitPointerEventScope awaitPointerEventScope, Continuation<? super Unit> continuation) {
            return ((AnonymousClass1) create(awaitPointerEventScope, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        /* JADX WARN: Removed duplicated region for block: B:14:0x0054  */
        /* JADX WARN: Removed duplicated region for block: B:17:0x0068 A[RETURN] */
        /* JADX WARN: Removed duplicated region for block: B:18:0x0069  */
        /* JADX WARN: Removed duplicated region for block: B:21:0x006e  */
        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        /*
            Code decompiled incorrectly, please refer to instructions dump.
        */
        public final Object invokeSuspend(Object $result) {
            AwaitPointerEventScope $this$awaitEachGesture;
            AnonymousClass1 anonymousClass1;
            AnonymousClass1 anonymousClass12;
            PointerInputChange upEvent;
            Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
            switch (this.label) {
                case 0:
                    ResultKt.throwOnFailure($result);
                    $this$awaitEachGesture = (AwaitPointerEventScope) this.L$0;
                    this.L$0 = $this$awaitEachGesture;
                    this.label = 1;
                    Object objAwaitFirstDown$default = TapGestureDetectorKt.awaitFirstDown$default($this$awaitEachGesture, false, PointerEventPass.Initial, this, 1, null);
                    if (objAwaitFirstDown$default == coroutine_suspended) {
                        return coroutine_suspended;
                    }
                    $result = objAwaitFirstDown$default;
                    anonymousClass1 = this;
                    PointerInputChange downEvent = (PointerInputChange) $result;
                    if (MenuAnchorType.m2503equalsimpl0(anonymousClass1.$anchorType, MenuAnchorType.INSTANCE.m2509getSecondaryEditableMg6Rgbw())) {
                        downEvent.consume();
                    }
                    anonymousClass1.L$0 = null;
                    anonymousClass1.label = 2;
                    $result = TapGestureDetectorKt.waitForUpOrCancellation($this$awaitEachGesture, PointerEventPass.Initial, anonymousClass1);
                    if ($result != coroutine_suspended) {
                        return coroutine_suspended;
                    }
                    anonymousClass12 = anonymousClass1;
                    upEvent = (PointerInputChange) $result;
                    if (upEvent != null) {
                        anonymousClass12.$onExpandedChange.invoke();
                    }
                    return Unit.INSTANCE;
                case 1:
                    AwaitPointerEventScope $this$awaitEachGesture2 = (AwaitPointerEventScope) this.L$0;
                    ResultKt.throwOnFailure($result);
                    $this$awaitEachGesture = $this$awaitEachGesture2;
                    anonymousClass1 = this;
                    PointerInputChange downEvent2 = (PointerInputChange) $result;
                    if (MenuAnchorType.m2503equalsimpl0(anonymousClass1.$anchorType, MenuAnchorType.INSTANCE.m2509getSecondaryEditableMg6Rgbw())) {
                    }
                    anonymousClass1.L$0 = null;
                    anonymousClass1.label = 2;
                    $result = TapGestureDetectorKt.waitForUpOrCancellation($this$awaitEachGesture, PointerEventPass.Initial, anonymousClass1);
                    if ($result != coroutine_suspended) {
                    }
                    break;
                case 2:
                    anonymousClass12 = this;
                    ResultKt.throwOnFailure($result);
                    upEvent = (PointerInputChange) $result;
                    if (upEvent != null) {
                    }
                    return Unit.INSTANCE;
                default:
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
        }
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object $result) {
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        switch (this.label) {
            case 0:
                ResultKt.throwOnFailure($result);
                PointerInputScope $this$pointerInput = (PointerInputScope) this.L$0;
                this.label = 1;
                if (ForEachGestureKt.awaitEachGesture($this$pointerInput, new AnonymousClass1(this.$anchorType, this.$onExpandedChange, null), this) == coroutine_suspended) {
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
