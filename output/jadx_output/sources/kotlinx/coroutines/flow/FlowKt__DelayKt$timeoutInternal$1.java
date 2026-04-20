package kotlinx.coroutines.flow;

import androidx.exifinterface.media.ExifInterface;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function3;
import kotlin.time.Duration;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.TimeoutCancellationException;
import kotlinx.coroutines.channels.ReceiveChannel;
import kotlinx.coroutines.selects.OnTimeoutKt;
import kotlinx.coroutines.selects.SelectImplementation;

/* JADX INFO: Add missing generic type declarations: [T] */
/* JADX INFO: compiled from: Delay.kt */
/* JADX INFO: loaded from: classes23.dex */
@Metadata(d1 = {"\u0000\u0012\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001\"\u0004\b\u0000\u0010\u0002*\u00020\u00032\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u0002H\u00020\u0005H\n"}, d2 = {"<anonymous>", "", ExifInterface.GPS_DIRECTION_TRUE, "Lkotlinx/coroutines/CoroutineScope;", "downStream", "Lkotlinx/coroutines/flow/FlowCollector;"}, k = 3, mv = {2, 1, 0}, xi = 48)
@DebugMetadata(c = "kotlinx.coroutines.flow.FlowKt__DelayKt$timeoutInternal$1", f = "Delay.kt", i = {0, 0}, l = {413}, m = "invokeSuspend", n = {"downStream", "values"}, s = {"L$0", "L$1"})
final class FlowKt__DelayKt$timeoutInternal$1<T> extends SuspendLambda implements Function3<CoroutineScope, FlowCollector<? super T>, Continuation<? super Unit>, Object> {
    final /* synthetic */ Flow<T> $this_timeoutInternal;
    final /* synthetic */ long $timeout;
    long J$0;
    private /* synthetic */ Object L$0;
    /* synthetic */ Object L$1;
    int label;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Multi-variable type inference failed */
    FlowKt__DelayKt$timeoutInternal$1(long j, Flow<? extends T> flow, Continuation<? super FlowKt__DelayKt$timeoutInternal$1> continuation) {
        super(3, continuation);
        this.$timeout = j;
        this.$this_timeoutInternal = flow;
    }

    @Override // kotlin.jvm.functions.Function3
    public final Object invoke(CoroutineScope coroutineScope, FlowCollector<? super T> flowCollector, Continuation<? super Unit> continuation) {
        FlowKt__DelayKt$timeoutInternal$1 flowKt__DelayKt$timeoutInternal$1 = new FlowKt__DelayKt$timeoutInternal$1(this.$timeout, this.$this_timeoutInternal, continuation);
        flowKt__DelayKt$timeoutInternal$1.L$0 = coroutineScope;
        flowKt__DelayKt$timeoutInternal$1.L$1 = flowCollector;
        return flowKt__DelayKt$timeoutInternal$1.invokeSuspend(Unit.INSTANCE);
    }

    /* JADX WARN: Removed duplicated region for block: B:12:0x0092 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:13:0x0093  */
    /* JADX WARN: Removed duplicated region for block: B:16:0x00a8  */
    /* JADX WARN: Removed duplicated region for block: B:18:0x00ab  */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:13:0x0093 -> B:14:0x009d). Please report as a decompilation issue!!! */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final Object invokeSuspend(Object obj) {
        ReceiveChannel values;
        FlowCollector downStream;
        long j;
        Object $result;
        Object $result2;
        FlowKt__DelayKt$timeoutInternal$1<T> flowKt__DelayKt$timeoutInternal$1;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        switch (this.label) {
            case 0:
                ResultKt.throwOnFailure(obj);
                Object $result3 = obj;
                CoroutineScope $this$scopedFlow = (CoroutineScope) this.L$0;
                FlowCollector downStream2 = (FlowCollector) this.L$1;
                if (Duration.m9892compareToLRDsOJo(this.$timeout, Duration.INSTANCE.m9988getZEROUwyO8pc()) > 0) {
                    ReceiveChannel values2 = FlowKt.produceIn(FlowKt__ContextKt.buffer$default(this.$this_timeoutInternal, 0, null, 2, null), $this$scopedFlow);
                    values = values2;
                    downStream = downStream2;
                    FlowKt__DelayKt$timeoutInternal$1<T> flowKt__DelayKt$timeoutInternal$12 = this;
                    j = this.$timeout;
                    SelectImplementation $this$select_u24lambda_u240$iv$iv = new SelectImplementation(flowKt__DelayKt$timeoutInternal$12.get$context());
                    SelectImplementation $this$invokeSuspend_u24lambda_u240 = $this$select_u24lambda_u240$iv$iv;
                    $this$invokeSuspend_u24lambda_u240.invoke(values.getOnReceiveCatching(), new FlowKt__DelayKt$timeoutInternal$1$1$1(downStream, null));
                    OnTimeoutKt.m10124onTimeout8Mi8wO0($this$invokeSuspend_u24lambda_u240, j, new FlowKt__DelayKt$timeoutInternal$1$1$2(j, null));
                    flowKt__DelayKt$timeoutInternal$12.L$0 = downStream;
                    flowKt__DelayKt$timeoutInternal$12.L$1 = values;
                    flowKt__DelayKt$timeoutInternal$12.J$0 = j;
                    flowKt__DelayKt$timeoutInternal$12.label = 1;
                    Object objDoSelect = $this$select_u24lambda_u240$iv$iv.doSelect(flowKt__DelayKt$timeoutInternal$12);
                    if (objDoSelect != coroutine_suspended) {
                        return coroutine_suspended;
                    }
                    Object obj2 = $result3;
                    $result = objDoSelect;
                    $result2 = obj2;
                    flowKt__DelayKt$timeoutInternal$1 = flowKt__DelayKt$timeoutInternal$12;
                    if (((Boolean) $result).booleanValue()) {
                        return Unit.INSTANCE;
                    }
                    $result3 = $result2;
                    flowKt__DelayKt$timeoutInternal$12 = flowKt__DelayKt$timeoutInternal$1;
                    SelectImplementation $this$select_u24lambda_u240$iv$iv2 = new SelectImplementation(flowKt__DelayKt$timeoutInternal$12.get$context());
                    SelectImplementation $this$invokeSuspend_u24lambda_u2402 = $this$select_u24lambda_u240$iv$iv2;
                    $this$invokeSuspend_u24lambda_u2402.invoke(values.getOnReceiveCatching(), new FlowKt__DelayKt$timeoutInternal$1$1$1(downStream, null));
                    OnTimeoutKt.m10124onTimeout8Mi8wO0($this$invokeSuspend_u24lambda_u2402, j, new FlowKt__DelayKt$timeoutInternal$1$1$2(j, null));
                    flowKt__DelayKt$timeoutInternal$12.L$0 = downStream;
                    flowKt__DelayKt$timeoutInternal$12.L$1 = values;
                    flowKt__DelayKt$timeoutInternal$12.J$0 = j;
                    flowKt__DelayKt$timeoutInternal$12.label = 1;
                    Object objDoSelect2 = $this$select_u24lambda_u240$iv$iv2.doSelect(flowKt__DelayKt$timeoutInternal$12);
                    if (objDoSelect2 != coroutine_suspended) {
                    }
                } else {
                    throw new TimeoutCancellationException("Timed out immediately");
                }
                break;
            case 1:
                $result = obj;
                j = this.J$0;
                values = (ReceiveChannel) this.L$1;
                downStream = (FlowCollector) this.L$0;
                ResultKt.throwOnFailure($result);
                flowKt__DelayKt$timeoutInternal$1 = this;
                $result2 = $result;
                if (((Boolean) $result).booleanValue()) {
                }
                break;
            default:
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }
    }
}
