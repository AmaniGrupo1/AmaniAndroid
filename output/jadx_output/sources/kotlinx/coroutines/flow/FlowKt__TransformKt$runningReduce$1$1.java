package kotlinx.coroutines.flow;

import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.jvm.functions.Function3;
import kotlin.jvm.internal.Ref;
import kotlinx.coroutines.flow.internal.NullSurrogateKt;

/* JADX INFO: compiled from: Transform.kt */
/* JADX INFO: loaded from: classes23.dex */
@Metadata(k = 3, mv = {2, 1, 0}, xi = 48)
final class FlowKt__TransformKt$runningReduce$1$1<T> implements FlowCollector {
    final /* synthetic */ Ref.ObjectRef<Object> $accumulator;
    final /* synthetic */ Function3<T, T, Continuation<? super T>, Object> $operation;
    final /* synthetic */ FlowCollector<T> $this_flow;

    /* JADX WARN: Multi-variable type inference failed */
    FlowKt__TransformKt$runningReduce$1$1(Ref.ObjectRef<Object> objectRef, Function3<? super T, ? super T, ? super Continuation<? super T>, ? extends Object> function3, FlowCollector<? super T> flowCollector) {
        this.$accumulator = objectRef;
        this.$operation = function3;
        this.$this_flow = flowCollector;
    }

    /* JADX WARN: Removed duplicated region for block: B:24:0x007f A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:7:0x0014  */
    @Override // kotlinx.coroutines.flow.FlowCollector
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final Object emit(T t, Continuation<? super Unit> continuation) {
        FlowKt__TransformKt$runningReduce$1$1$emit$1 flowKt__TransformKt$runningReduce$1$1$emit$1;
        FlowKt__TransformKt$runningReduce$1$1<T> flowKt__TransformKt$runningReduce$1$1;
        Ref.ObjectRef<Object> objectRef;
        Object obj;
        Ref.ObjectRef<Object> objectRef2;
        FlowKt__TransformKt$runningReduce$1$1<T> flowKt__TransformKt$runningReduce$1$12;
        FlowCollector<T> flowCollector;
        T t2;
        if (continuation instanceof FlowKt__TransformKt$runningReduce$1$1$emit$1) {
            flowKt__TransformKt$runningReduce$1$1$emit$1 = (FlowKt__TransformKt$runningReduce$1$1$emit$1) continuation;
            if ((flowKt__TransformKt$runningReduce$1$1$emit$1.label & Integer.MIN_VALUE) != 0) {
                flowKt__TransformKt$runningReduce$1$1$emit$1.label -= Integer.MIN_VALUE;
            } else {
                flowKt__TransformKt$runningReduce$1$1$emit$1 = new FlowKt__TransformKt$runningReduce$1$1$emit$1(this, continuation);
            }
        }
        Object obj2 = flowKt__TransformKt$runningReduce$1$1$emit$1.result;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        switch (flowKt__TransformKt$runningReduce$1$1$emit$1.label) {
            case 0:
                ResultKt.throwOnFailure(obj2);
                flowKt__TransformKt$runningReduce$1$1 = this;
                objectRef = flowKt__TransformKt$runningReduce$1$1.$accumulator;
                if (flowKt__TransformKt$runningReduce$1$1.$accumulator.element != NullSurrogateKt.NULL) {
                    Function3<T, T, Continuation<? super T>, Object> function3 = flowKt__TransformKt$runningReduce$1$1.$operation;
                    T t3 = flowKt__TransformKt$runningReduce$1$1.$accumulator.element;
                    flowKt__TransformKt$runningReduce$1$1$emit$1.L$0 = flowKt__TransformKt$runningReduce$1$1;
                    flowKt__TransformKt$runningReduce$1$1$emit$1.L$1 = objectRef;
                    flowKt__TransformKt$runningReduce$1$1$emit$1.label = 1;
                    Object objInvoke = function3.invoke(t3, t, flowKt__TransformKt$runningReduce$1$1$emit$1);
                    if (objInvoke == coroutine_suspended) {
                        return coroutine_suspended;
                    }
                    obj = objInvoke;
                    objectRef2 = objectRef;
                    flowKt__TransformKt$runningReduce$1$12 = flowKt__TransformKt$runningReduce$1$1;
                    FlowKt__TransformKt$runningReduce$1$1<T> flowKt__TransformKt$runningReduce$1$13 = flowKt__TransformKt$runningReduce$1$12;
                    objectRef = objectRef2;
                    t = (T) obj;
                    flowKt__TransformKt$runningReduce$1$1 = flowKt__TransformKt$runningReduce$1$13;
                }
                objectRef.element = t;
                flowCollector = flowKt__TransformKt$runningReduce$1$1.$this_flow;
                t2 = flowKt__TransformKt$runningReduce$1$1.$accumulator.element;
                flowKt__TransformKt$runningReduce$1$1$emit$1.L$0 = null;
                flowKt__TransformKt$runningReduce$1$1$emit$1.L$1 = null;
                flowKt__TransformKt$runningReduce$1$1$emit$1.label = 2;
                if (flowCollector.emit(t2, flowKt__TransformKt$runningReduce$1$1$emit$1) == coroutine_suspended) {
                    return coroutine_suspended;
                }
                return Unit.INSTANCE;
            case 1:
                objectRef2 = (Ref.ObjectRef) flowKt__TransformKt$runningReduce$1$1$emit$1.L$1;
                FlowKt__TransformKt$runningReduce$1$1<T> flowKt__TransformKt$runningReduce$1$14 = (FlowKt__TransformKt$runningReduce$1$1) flowKt__TransformKt$runningReduce$1$1$emit$1.L$0;
                ResultKt.throwOnFailure(obj2);
                flowKt__TransformKt$runningReduce$1$12 = flowKt__TransformKt$runningReduce$1$14;
                obj = obj2;
                FlowKt__TransformKt$runningReduce$1$1<T> flowKt__TransformKt$runningReduce$1$132 = flowKt__TransformKt$runningReduce$1$12;
                objectRef = objectRef2;
                t = (T) obj;
                flowKt__TransformKt$runningReduce$1$1 = flowKt__TransformKt$runningReduce$1$132;
                objectRef.element = t;
                flowCollector = flowKt__TransformKt$runningReduce$1$1.$this_flow;
                t2 = flowKt__TransformKt$runningReduce$1$1.$accumulator.element;
                flowKt__TransformKt$runningReduce$1$1$emit$1.L$0 = null;
                flowKt__TransformKt$runningReduce$1$1$emit$1.L$1 = null;
                flowKt__TransformKt$runningReduce$1$1$emit$1.label = 2;
                if (flowCollector.emit(t2, flowKt__TransformKt$runningReduce$1$1$emit$1) == coroutine_suspended) {
                }
                return Unit.INSTANCE;
            case 2:
                ResultKt.throwOnFailure(obj2);
                return Unit.INSTANCE;
            default:
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }
    }
}
