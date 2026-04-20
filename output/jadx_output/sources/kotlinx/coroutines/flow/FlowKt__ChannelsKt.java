package kotlinx.coroutines.flow;

import androidx.exifinterface.media.ExifInterface;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.channels.ChannelIterator;
import kotlinx.coroutines.channels.ChannelsKt;
import kotlinx.coroutines.channels.ReceiveChannel;
import kotlinx.coroutines.flow.internal.ChannelFlowKt;

/* JADX INFO: compiled from: Channels.kt */
/* JADX INFO: loaded from: classes23.dex */
@Metadata(d1 = {"\u0000,\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\u001a,\u0010\u0000\u001a\u00020\u0001\"\u0004\b\u0000\u0010\u0002*\b\u0012\u0004\u0012\u0002H\u00020\u00032\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u0002H\u00020\u0005H\u0086@¢\u0006\u0002\u0010\u0006\u001a6\u0010\u0007\u001a\u00020\u0001\"\u0004\b\u0000\u0010\u0002*\b\u0012\u0004\u0012\u0002H\u00020\u00032\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u0002H\u00020\u00052\u0006\u0010\b\u001a\u00020\tH\u0082@¢\u0006\u0004\b\n\u0010\u000b\u001a\u001c\u0010\f\u001a\b\u0012\u0004\u0012\u0002H\u00020\r\"\u0004\b\u0000\u0010\u0002*\b\u0012\u0004\u0012\u0002H\u00020\u0005\u001a\u001c\u0010\u000e\u001a\b\u0012\u0004\u0012\u0002H\u00020\r\"\u0004\b\u0000\u0010\u0002*\b\u0012\u0004\u0012\u0002H\u00020\u0005\u001a$\u0010\u000f\u001a\b\u0012\u0004\u0012\u0002H\u00020\u0005\"\u0004\b\u0000\u0010\u0002*\b\u0012\u0004\u0012\u0002H\u00020\r2\u0006\u0010\u0010\u001a\u00020\u0011¨\u0006\u0012"}, d2 = {"emitAll", "", ExifInterface.GPS_DIRECTION_TRUE, "Lkotlinx/coroutines/flow/FlowCollector;", "channel", "Lkotlinx/coroutines/channels/ReceiveChannel;", "(Lkotlinx/coroutines/flow/FlowCollector;Lkotlinx/coroutines/channels/ReceiveChannel;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "emitAllImpl", "consume", "", "emitAllImpl$FlowKt__ChannelsKt", "(Lkotlinx/coroutines/flow/FlowCollector;Lkotlinx/coroutines/channels/ReceiveChannel;ZLkotlin/coroutines/Continuation;)Ljava/lang/Object;", "receiveAsFlow", "Lkotlinx/coroutines/flow/Flow;", "consumeAsFlow", "produceIn", "scope", "Lkotlinx/coroutines/CoroutineScope;", "kotlinx-coroutines-core"}, k = 5, mv = {2, 1, 0}, xi = 48, xs = "kotlinx/coroutines/flow/FlowKt")
final /* synthetic */ class FlowKt__ChannelsKt {
    public static final <T> Object emitAll(FlowCollector<? super T> flowCollector, ReceiveChannel<? extends T> receiveChannel, Continuation<? super Unit> continuation) {
        Object objEmitAllImpl$FlowKt__ChannelsKt = emitAllImpl$FlowKt__ChannelsKt(flowCollector, receiveChannel, true, continuation);
        return objEmitAllImpl$FlowKt__ChannelsKt == IntrinsicsKt.getCOROUTINE_SUSPENDED() ? objEmitAllImpl$FlowKt__ChannelsKt : Unit.INSTANCE;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:24:0x007d A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:25:0x007e  */
    /* JADX WARN: Removed duplicated region for block: B:28:0x008f A[Catch: all -> 0x00b6, TRY_LEAVE, TryCatch #1 {all -> 0x00b6, blocks: (B:26:0x0087, B:28:0x008f), top: B:49:0x0087 }] */
    /* JADX WARN: Removed duplicated region for block: B:33:0x00ad A[DONT_GENERATE] */
    /* JADX WARN: Removed duplicated region for block: B:7:0x0014  */
    /* JADX WARN: Type inference failed for: r3v0, types: [int] */
    /* JADX WARN: Type inference failed for: r3v1, types: [kotlinx.coroutines.channels.ReceiveChannel] */
    /* JADX WARN: Type inference failed for: r3v10, types: [java.lang.Object] */
    /* JADX WARN: Type inference failed for: r3v14 */
    /* JADX WARN: Type inference failed for: r3v15 */
    /* JADX WARN: Type inference failed for: r3v2, types: [kotlinx.coroutines.channels.ReceiveChannel] */
    /* JADX WARN: Type inference failed for: r3v6 */
    /* JADX WARN: Type inference failed for: r3v8 */
    /* JADX WARN: Type inference failed for: r3v9 */
    /* JADX WARN: Type inference failed for: r4v3 */
    /* JADX WARN: Type inference failed for: r4v4, types: [java.lang.Object, kotlinx.coroutines.channels.ReceiveChannel] */
    /* JADX WARN: Type inference failed for: r4v7 */
    /* JADX WARN: Type inference failed for: r5v0 */
    /* JADX WARN: Type inference failed for: r5v1, types: [java.lang.Object, kotlinx.coroutines.flow.FlowCollector] */
    /* JADX WARN: Type inference failed for: r5v4 */
    /* JADX WARN: Type inference failed for: r8v0, types: [kotlinx.coroutines.flow.FlowCollector, kotlinx.coroutines.flow.FlowCollector<? super T>] */
    /* JADX WARN: Type inference failed for: r8v1 */
    /* JADX WARN: Type inference failed for: r8v16 */
    /* JADX WARN: Type inference failed for: r8v21 */
    /* JADX WARN: Type inference failed for: r8v22 */
    /* JADX WARN: Type inference failed for: r8v23 */
    /* JADX WARN: Type inference failed for: r8v24 */
    /* JADX WARN: Type inference failed for: r8v25 */
    /* JADX WARN: Type inference failed for: r8v4 */
    /* JADX WARN: Type inference failed for: r8v5, types: [boolean] */
    /* JADX WARN: Type inference failed for: r8v8, types: [java.lang.Object] */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:31:0x00a5 -> B:22:0x006c). Please report as a decompilation issue!!! */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static final <T> Object emitAllImpl$FlowKt__ChannelsKt(FlowCollector<? super T> flowCollector, ReceiveChannel<? extends T> receiveChannel, boolean z, Continuation<? super Unit> continuation) {
        FlowKt__ChannelsKt$emitAllImpl$1 flowKt__ChannelsKt$emitAllImpl$1;
        Throwable th;
        ChannelIterator it;
        ChannelIterator channelIterator;
        Throwable th2;
        ?? r5;
        ?? r4;
        Object obj;
        Object obj2;
        ?? r8;
        Object objHasNext;
        if (continuation instanceof FlowKt__ChannelsKt$emitAllImpl$1) {
            flowKt__ChannelsKt$emitAllImpl$1 = (FlowKt__ChannelsKt$emitAllImpl$1) continuation;
            if ((flowKt__ChannelsKt$emitAllImpl$1.label & Integer.MIN_VALUE) != 0) {
                flowKt__ChannelsKt$emitAllImpl$1.label -= Integer.MIN_VALUE;
            } else {
                flowKt__ChannelsKt$emitAllImpl$1 = new FlowKt__ChannelsKt$emitAllImpl$1(continuation);
            }
        }
        Object obj3 = flowKt__ChannelsKt$emitAllImpl$1.result;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        ?? r3 = flowKt__ChannelsKt$emitAllImpl$1.label;
        try {
            switch (r3) {
                case 0:
                    ResultKt.throwOnFailure(obj3);
                    r3 = receiveChannel;
                    FlowKt.ensureActive(flowCollector);
                    th = null;
                    try {
                        it = r3.iterator();
                        r3 = r3;
                        r8 = flowCollector;
                        flowKt__ChannelsKt$emitAllImpl$1.L$0 = r8;
                        flowKt__ChannelsKt$emitAllImpl$1.L$1 = r3;
                        flowKt__ChannelsKt$emitAllImpl$1.L$2 = it;
                        flowKt__ChannelsKt$emitAllImpl$1.Z$0 = z;
                        flowKt__ChannelsKt$emitAllImpl$1.label = 1;
                        objHasNext = it.hasNext(flowKt__ChannelsKt$emitAllImpl$1);
                        if (objHasNext == coroutine_suspended) {
                            return coroutine_suspended;
                        }
                        r5 = r8;
                        boolean z2 = (FlowCollector<? super T>) (z ? 1 : 0);
                        th2 = th;
                        channelIterator = it;
                        r4 = r3;
                        obj = coroutine_suspended;
                        obj2 = obj3;
                        obj3 = objHasNext;
                        flowCollector = z2;
                        try {
                            if (((Boolean) obj3).booleanValue()) {
                                return Unit.INSTANCE;
                            }
                            Object next = channelIterator.next();
                            flowKt__ChannelsKt$emitAllImpl$1.L$0 = r5;
                            flowKt__ChannelsKt$emitAllImpl$1.L$1 = r4;
                            flowKt__ChannelsKt$emitAllImpl$1.L$2 = channelIterator;
                            flowKt__ChannelsKt$emitAllImpl$1.Z$0 = (boolean) flowCollector;
                            flowKt__ChannelsKt$emitAllImpl$1.label = 2;
                            if (r5.emit(next, flowKt__ChannelsKt$emitAllImpl$1) == obj) {
                                return obj;
                            }
                            obj3 = obj2;
                            coroutine_suspended = obj;
                            r3 = r4;
                            it = channelIterator;
                            th = th2;
                            z = (??[int, float, boolean, short, byte, char, OBJECT, ARRAY]) flowCollector;
                            r8 = (FlowCollector<? super T>) r5;
                            flowKt__ChannelsKt$emitAllImpl$1.L$0 = r8;
                            flowKt__ChannelsKt$emitAllImpl$1.L$1 = r3;
                            flowKt__ChannelsKt$emitAllImpl$1.L$2 = it;
                            flowKt__ChannelsKt$emitAllImpl$1.Z$0 = z;
                            flowKt__ChannelsKt$emitAllImpl$1.label = 1;
                            objHasNext = it.hasNext(flowKt__ChannelsKt$emitAllImpl$1);
                            if (objHasNext == coroutine_suspended) {
                            }
                        } catch (Throwable th3) {
                            th = th3;
                            r3 = r4;
                            Throwable th4 = th;
                            try {
                                throw th;
                            } finally {
                                if (flowCollector != 0) {
                                    ChannelsKt.cancelConsumed(r3, th4);
                                }
                            }
                        }
                    } catch (Throwable th5) {
                        th = th5;
                        flowCollector = (FlowCollector<? super T>) (z ? 1 : 0);
                        Throwable th42 = th;
                        throw th;
                    }
                    break;
                case 1:
                    boolean z3 = flowKt__ChannelsKt$emitAllImpl$1.Z$0;
                    channelIterator = (ChannelIterator) flowKt__ChannelsKt$emitAllImpl$1.L$2;
                    th2 = null;
                    ReceiveChannel receiveChannel2 = (ReceiveChannel) flowKt__ChannelsKt$emitAllImpl$1.L$1;
                    FlowCollector flowCollector2 = (FlowCollector) flowKt__ChannelsKt$emitAllImpl$1.L$0;
                    ResultKt.throwOnFailure(obj3);
                    r5 = flowCollector2;
                    r4 = receiveChannel2;
                    obj = coroutine_suspended;
                    obj2 = obj3;
                    flowCollector = z3;
                    if (((Boolean) obj3).booleanValue()) {
                    }
                    break;
                case 2:
                    boolean z4 = flowKt__ChannelsKt$emitAllImpl$1.Z$0;
                    ChannelIterator channelIterator2 = (ChannelIterator) flowKt__ChannelsKt$emitAllImpl$1.L$2;
                    ReceiveChannel receiveChannel3 = (ReceiveChannel) flowKt__ChannelsKt$emitAllImpl$1.L$1;
                    FlowCollector flowCollector3 = (FlowCollector) flowKt__ChannelsKt$emitAllImpl$1.L$0;
                    ResultKt.throwOnFailure(obj3);
                    z = z4;
                    boolean z5 = (FlowCollector<? super T>) flowCollector3;
                    it = channelIterator2;
                    th = null;
                    r3 = receiveChannel3;
                    r8 = z5;
                    flowKt__ChannelsKt$emitAllImpl$1.L$0 = r8;
                    flowKt__ChannelsKt$emitAllImpl$1.L$1 = r3;
                    flowKt__ChannelsKt$emitAllImpl$1.L$2 = it;
                    flowKt__ChannelsKt$emitAllImpl$1.Z$0 = z;
                    flowKt__ChannelsKt$emitAllImpl$1.label = 1;
                    objHasNext = it.hasNext(flowKt__ChannelsKt$emitAllImpl$1);
                    if (objHasNext == coroutine_suspended) {
                    }
                    break;
                default:
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
        } catch (Throwable th6) {
            th = th6;
        }
    }

    public static final <T> Flow<T> receiveAsFlow(ReceiveChannel<? extends T> receiveChannel) {
        return new ChannelAsFlow(receiveChannel, false, null, 0, null, 28, null);
    }

    public static final <T> Flow<T> consumeAsFlow(ReceiveChannel<? extends T> receiveChannel) {
        return new ChannelAsFlow(receiveChannel, true, null, 0, null, 28, null);
    }

    public static final <T> ReceiveChannel<T> produceIn(Flow<? extends T> flow, CoroutineScope scope) {
        return ChannelFlowKt.asChannelFlow(flow).produceImpl(scope);
    }
}
