package androidx.compose.foundation.text;

import androidx.compose.ui.geometry.Offset;
import androidx.compose.ui.input.pointer.AwaitPointerEventScope;
import androidx.compose.ui.input.pointer.PointerEvent;
import androidx.compose.ui.input.pointer.PointerEventPass;
import androidx.compose.ui.input.pointer.PointerEventType;
import androidx.compose.ui.input.pointer.PointerInputChange;
import androidx.compose.ui.input.pointer.PointerInputScope;
import java.util.List;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.CoroutineContext;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.RestrictedSuspendLambda;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Ref;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.CoroutineScopeKt;
import kotlinx.coroutines.JobKt;

/* JADX INFO: compiled from: PointerMoveDetector.kt */
/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u001e\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\u001a0\u0010\u0000\u001a\u00020\u0001*\u00020\u00022\b\b\u0002\u0010\u0003\u001a\u00020\u00042\u0012\u0010\u0005\u001a\u000e\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u00020\u00010\u0006H\u0080@¢\u0006\u0002\u0010\b¨\u0006\t"}, d2 = {"detectMoves", "", "Landroidx/compose/ui/input/pointer/PointerInputScope;", "pointerEventPass", "Landroidx/compose/ui/input/pointer/PointerEventPass;", "onMove", "Lkotlin/Function1;", "Landroidx/compose/ui/geometry/Offset;", "(Landroidx/compose/ui/input/pointer/PointerInputScope;Landroidx/compose/ui/input/pointer/PointerEventPass;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "foundation"}, k = 2, mv = {2, 0, 0}, xi = 48)
public final class PointerMoveDetectorKt {
    public static /* synthetic */ Object detectMoves$default(PointerInputScope pointerInputScope, PointerEventPass pointerEventPass, Function1 function1, Continuation continuation, int i, Object obj) {
        if ((i & 1) != 0) {
            pointerEventPass = PointerEventPass.Initial;
        }
        return detectMoves(pointerInputScope, pointerEventPass, function1, continuation);
    }

    /* JADX INFO: renamed from: androidx.compose.foundation.text.PointerMoveDetectorKt$detectMoves$2, reason: invalid class name */
    /* JADX INFO: compiled from: PointerMoveDetector.kt */
    @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 0, 0}, xi = 48)
    @DebugMetadata(c = "androidx.compose.foundation.text.PointerMoveDetectorKt$detectMoves$2", f = "PointerMoveDetector.kt", i = {}, l = {41}, m = "invokeSuspend", n = {}, s = {}, v = 1)
    static final class AnonymousClass2 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
        final /* synthetic */ Function1<Offset, Unit> $onMove;
        final /* synthetic */ PointerEventPass $pointerEventPass;
        final /* synthetic */ PointerInputScope $this_detectMoves;
        int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        /* JADX WARN: Multi-variable type inference failed */
        AnonymousClass2(PointerInputScope pointerInputScope, PointerEventPass pointerEventPass, Function1<? super Offset, Unit> function1, Continuation<? super AnonymousClass2> continuation) {
            super(2, continuation);
            this.$this_detectMoves = pointerInputScope;
            this.$pointerEventPass = pointerEventPass;
            this.$onMove = function1;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return new AnonymousClass2(this.$this_detectMoves, this.$pointerEventPass, this.$onMove, continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
            return ((AnonymousClass2) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object $result) {
            Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
            switch (this.label) {
                case 0:
                    ResultKt.throwOnFailure($result);
                    CoroutineContext currentContext = get$context();
                    this.label = 1;
                    if (this.$this_detectMoves.awaitPointerEventScope(new AnonymousClass1(currentContext, this.$pointerEventPass, this.$onMove, null), this) == coroutine_suspended) {
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

        /* JADX INFO: renamed from: androidx.compose.foundation.text.PointerMoveDetectorKt$detectMoves$2$1, reason: invalid class name */
        /* JADX INFO: compiled from: PointerMoveDetector.kt */
        @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;"}, k = 3, mv = {2, 0, 0}, xi = 48)
        @DebugMetadata(c = "androidx.compose.foundation.text.PointerMoveDetectorKt$detectMoves$2$1", f = "PointerMoveDetector.kt", i = {0, 0}, l = {44}, m = "invokeSuspend", n = {"$this$awaitPointerEventScope", "previousPosition"}, s = {"L$0", "L$1"}, v = 1)
        static final class AnonymousClass1 extends RestrictedSuspendLambda implements Function2<AwaitPointerEventScope, Continuation<? super Unit>, Object> {
            final /* synthetic */ CoroutineContext $currentContext;
            final /* synthetic */ Function1<Offset, Unit> $onMove;
            final /* synthetic */ PointerEventPass $pointerEventPass;
            private /* synthetic */ Object L$0;
            Object L$1;
            int label;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            /* JADX WARN: Multi-variable type inference failed */
            AnonymousClass1(CoroutineContext coroutineContext, PointerEventPass pointerEventPass, Function1<? super Offset, Unit> function1, Continuation<? super AnonymousClass1> continuation) {
                super(2, continuation);
                this.$currentContext = coroutineContext;
                this.$pointerEventPass = pointerEventPass;
                this.$onMove = function1;
            }

            @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
            public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
                AnonymousClass1 anonymousClass1 = new AnonymousClass1(this.$currentContext, this.$pointerEventPass, this.$onMove, continuation);
                anonymousClass1.L$0 = obj;
                return anonymousClass1;
            }

            @Override // kotlin.jvm.functions.Function2
            public final Object invoke(AwaitPointerEventScope awaitPointerEventScope, Continuation<? super Unit> continuation) {
                return ((AnonymousClass1) create(awaitPointerEventScope, continuation)).invokeSuspend(Unit.INSTANCE);
            }

            /* JADX WARN: Path cross not found for [B:16:0x0067, B:21:0x0080], limit reached: 28 */
            /* JADX WARN: Removed duplicated region for block: B:10:0x003b  */
            /* JADX WARN: Removed duplicated region for block: B:24:0x00a0  */
            /* JADX WARN: Removed duplicated region for block: B:26:0x00a4  */
            /* JADX WARN: Removed duplicated region for block: B:29:0x00c1  */
            /* JADX WARN: Type inference failed for: r8v1, types: [T, androidx.compose.ui.geometry.Offset] */
            /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:13:0x004e -> B:14:0x0055). Please report as a decompilation issue!!! */
            @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
            /*
                Code decompiled incorrectly, please refer to instructions dump.
            */
            public final Object invokeSuspend(Object $result) {
                AwaitPointerEventScope $this$awaitPointerEventScope;
                Ref.ObjectRef previousPosition;
                AnonymousClass1 anonymousClass1;
                Object $result2;
                AnonymousClass1 anonymousClass12;
                AwaitPointerEventScope $this$awaitPointerEventScope2;
                Ref.ObjectRef previousPosition2;
                Object obj;
                int type;
                Offset offsetM4441boximpl;
                long it;
                Object $result3 = IntrinsicsKt.getCOROUTINE_SUSPENDED();
                switch (this.label) {
                    case 0:
                        ResultKt.throwOnFailure($result);
                        AwaitPointerEventScope $this$awaitPointerEventScope3 = (AwaitPointerEventScope) this.L$0;
                        $this$awaitPointerEventScope = $this$awaitPointerEventScope3;
                        previousPosition = new Ref.ObjectRef();
                        anonymousClass1 = this;
                        if (JobKt.isActive(anonymousClass1.$currentContext)) {
                            anonymousClass1.L$0 = $this$awaitPointerEventScope;
                            anonymousClass1.L$1 = previousPosition;
                            anonymousClass1.label = 1;
                            Object objAwaitPointerEvent = $this$awaitPointerEventScope.awaitPointerEvent(anonymousClass1.$pointerEventPass, anonymousClass1);
                            if (objAwaitPointerEvent == $result3) {
                                return $result3;
                            }
                            Object obj2 = $result3;
                            $result2 = $result;
                            $result = objAwaitPointerEvent;
                            anonymousClass12 = anonymousClass1;
                            $this$awaitPointerEventScope2 = $this$awaitPointerEventScope;
                            previousPosition2 = previousPosition;
                            obj = obj2;
                            PointerEvent event = (PointerEvent) $result;
                            type = event.getType();
                            if (!PointerEventType.m5959equalsimpl0(type, PointerEventType.INSTANCE.m5965getMove7fucELk()) || PointerEventType.m5959equalsimpl0(type, PointerEventType.INSTANCE.m5963getEnter7fucELk()) || PointerEventType.m5959equalsimpl0(type, PointerEventType.INSTANCE.m5964getExit7fucELk())) {
                                offsetM4441boximpl = Offset.m4441boximpl(((PointerInputChange) CollectionsKt.first((List) event.getChanges())).getPosition());
                                it = offsetM4441boximpl.m4462unboximpl();
                                if (Offset.m4448equalsimpl(it, previousPosition2.element)) {
                                    offsetM4441boximpl = null;
                                }
                                if (offsetM4441boximpl != null) {
                                    Function1<Offset, Unit> function1 = anonymousClass12.$onMove;
                                    long position = offsetM4441boximpl.m4462unboximpl();
                                    previousPosition2.element = Offset.m4441boximpl(position);
                                    function1.invoke(Offset.m4441boximpl(position));
                                }
                            }
                            $result = $result2;
                            $result3 = obj;
                            previousPosition = previousPosition2;
                            $this$awaitPointerEventScope = $this$awaitPointerEventScope2;
                            anonymousClass1 = anonymousClass12;
                            if (JobKt.isActive(anonymousClass1.$currentContext)) {
                                return Unit.INSTANCE;
                            }
                        }
                        break;
                    case 1:
                        Ref.ObjectRef previousPosition3 = (Ref.ObjectRef) this.L$1;
                        AwaitPointerEventScope $this$awaitPointerEventScope4 = (AwaitPointerEventScope) this.L$0;
                        ResultKt.throwOnFailure($result);
                        anonymousClass12 = this;
                        $this$awaitPointerEventScope2 = $this$awaitPointerEventScope4;
                        previousPosition2 = previousPosition3;
                        obj = $result3;
                        $result2 = $result;
                        PointerEvent event2 = (PointerEvent) $result;
                        type = event2.getType();
                        if (!PointerEventType.m5959equalsimpl0(type, PointerEventType.INSTANCE.m5965getMove7fucELk())) {
                        }
                        offsetM4441boximpl = Offset.m4441boximpl(((PointerInputChange) CollectionsKt.first((List) event2.getChanges())).getPosition());
                        it = offsetM4441boximpl.m4462unboximpl();
                        if (Offset.m4448equalsimpl(it, previousPosition2.element)) {
                        }
                        if (offsetM4441boximpl != null) {
                        }
                        $result = $result2;
                        $result3 = obj;
                        previousPosition = previousPosition2;
                        $this$awaitPointerEventScope = $this$awaitPointerEventScope2;
                        anonymousClass1 = anonymousClass12;
                        if (JobKt.isActive(anonymousClass1.$currentContext)) {
                        }
                        break;
                    default:
                        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
            }
        }
    }

    public static final Object detectMoves(PointerInputScope $this$detectMoves, PointerEventPass pointerEventPass, Function1<? super Offset, Unit> function1, Continuation<? super Unit> continuation) {
        Object objCoroutineScope = CoroutineScopeKt.coroutineScope(new AnonymousClass2($this$detectMoves, pointerEventPass, function1, null), continuation);
        return objCoroutineScope == IntrinsicsKt.getCOROUTINE_SUSPENDED() ? objCoroutineScope : Unit.INSTANCE;
    }
}
