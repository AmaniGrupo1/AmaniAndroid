package kotlinx.coroutines.flow;

import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.jvm.internal.Ref;

/* JADX INFO: compiled from: Limit.kt */
/* JADX INFO: loaded from: classes23.dex */
@Metadata(k = 3, mv = {2, 1, 0}, xi = 48)
final class FlowKt__LimitKt$take$2$1<T> implements FlowCollector {
    final /* synthetic */ Ref.IntRef $consumed;
    final /* synthetic */ int $count;
    final /* synthetic */ Object $ownershipMarker;
    final /* synthetic */ FlowCollector<T> $this_flow;

    /* JADX WARN: Multi-variable type inference failed */
    FlowKt__LimitKt$take$2$1(Ref.IntRef intRef, int i, FlowCollector<? super T> flowCollector, Object obj) {
        this.$consumed = intRef;
        this.$count = i;
        this.$this_flow = flowCollector;
        this.$ownershipMarker = obj;
    }

    /* JADX WARN: Removed duplicated region for block: B:7:0x0014  */
    @Override // kotlinx.coroutines.flow.FlowCollector
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final Object emit(T t, Continuation<? super Unit> continuation) {
        FlowKt__LimitKt$take$2$1$emit$1 flowKt__LimitKt$take$2$1$emit$1;
        if (continuation instanceof FlowKt__LimitKt$take$2$1$emit$1) {
            flowKt__LimitKt$take$2$1$emit$1 = (FlowKt__LimitKt$take$2$1$emit$1) continuation;
            if ((flowKt__LimitKt$take$2$1$emit$1.label & Integer.MIN_VALUE) != 0) {
                flowKt__LimitKt$take$2$1$emit$1.label -= Integer.MIN_VALUE;
            } else {
                flowKt__LimitKt$take$2$1$emit$1 = new FlowKt__LimitKt$take$2$1$emit$1(this, continuation);
            }
        }
        Object $result = flowKt__LimitKt$take$2$1$emit$1.result;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        switch (flowKt__LimitKt$take$2$1$emit$1.label) {
            case 0:
                ResultKt.throwOnFailure($result);
                this.$consumed.element++;
                int i = this.$consumed.element;
                int i2 = this.$count;
                FlowCollector<T> flowCollector = this.$this_flow;
                if (i >= i2) {
                    Object obj = this.$ownershipMarker;
                    flowKt__LimitKt$take$2$1$emit$1.label = 2;
                    Object value = FlowKt__LimitKt.emitAbort$FlowKt__LimitKt(flowCollector, t, obj, flowKt__LimitKt$take$2$1$emit$1);
                    if (value == coroutine_suspended) {
                        return coroutine_suspended;
                    }
                } else {
                    flowKt__LimitKt$take$2$1$emit$1.label = 1;
                    Object value2 = flowCollector.emit(t, flowKt__LimitKt$take$2$1$emit$1);
                    if (value2 == coroutine_suspended) {
                        return coroutine_suspended;
                    }
                }
            case 1:
            case 2:
                ResultKt.throwOnFailure($result);
                break;
            default:
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }
        return Unit.INSTANCE;
    }
}
