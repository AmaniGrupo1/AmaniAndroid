package org.ies.tierno.applicationamani.data.repositorio;

import androidx.exifinterface.media.ExifInterface;
import com.google.android.gms.actions.SearchIntents;
import java.util.List;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SpillingKt;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.DelayKt;
import kotlinx.coroutines.Dispatchers;
import kotlinx.coroutines.flow.Flow;
import kotlinx.coroutines.flow.FlowCollector;
import kotlinx.coroutines.flow.FlowKt;
import org.ies.tierno.applicationamani.data.remoto.CustomerClient;
import timber.log.Timber;

/* JADX INFO: compiled from: CustomerRepository.kt */
/* JADX INFO: loaded from: classes16.dex */
@Metadata(d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\b\u0002\n\u0002\u0010\t\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\b\u0007\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0004\b\u0004\u0010\u0005JK\u0010\b\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u0002H\u000b0\n0\t\"\u0004\b\u0000\u0010\u000b2\b\b\u0002\u0010\f\u001a\u00020\r2\"\u0010\u000e\u001a\u001e\b\u0001\u0012\u0010\u0012\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u0002H\u000b0\n0\u0010\u0012\u0006\u0012\u0004\u0018\u00010\u00010\u000f¢\u0006\u0002\u0010\u0011R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0006\u0010\u0007¨\u0006\u0012"}, d2 = {"Lorg/ies/tierno/applicationamani/data/repositorio/CustomerRepository;", "", "customerClient", "Lorg/ies/tierno/applicationamani/data/remoto/CustomerClient;", "<init>", "(Lorg/ies/tierno/applicationamani/data/remoto/CustomerClient;)V", "getCustomerClient", "()Lorg/ies/tierno/applicationamani/data/remoto/CustomerClient;", "observeQuery", "Lkotlinx/coroutines/flow/Flow;", "", ExifInterface.GPS_DIRECTION_TRUE, "retryTime", "", SearchIntents.EXTRA_QUERY, "Lkotlin/Function1;", "Lkotlin/coroutines/Continuation;", "(JLkotlin/jvm/functions/Function1;)Lkotlinx/coroutines/flow/Flow;", "app"}, k = 1, mv = {2, 2, 0}, xi = 48)
public final class CustomerRepository {
    public static final int $stable = 8;
    private final CustomerClient customerClient;

    public CustomerRepository(CustomerClient customerClient) {
        Intrinsics.checkNotNullParameter(customerClient, "customerClient");
        this.customerClient = customerClient;
    }

    public final CustomerClient getCustomerClient() {
        return this.customerClient;
    }

    public static /* synthetic */ Flow observeQuery$default(CustomerRepository customerRepository, long j, Function1 function1, int i, Object obj) {
        if ((i & 1) != 0) {
            j = 5000;
        }
        return customerRepository.observeQuery(j, function1);
    }

    /* JADX INFO: Add missing generic type declarations: [T] */
    /* JADX INFO: renamed from: org.ies.tierno.applicationamani.data.repositorio.CustomerRepository$observeQuery$1, reason: invalid class name */
    /* JADX INFO: compiled from: CustomerRepository.kt */
    @Metadata(d1 = {"\u0000\u0010\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010 \u0010\u0000\u001a\u00020\u0001\"\u0004\b\u0000\u0010\u0002*\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u0002H\u00020\u00040\u0003H\n"}, d2 = {"<anonymous>", "", ExifInterface.GPS_DIRECTION_TRUE, "Lkotlinx/coroutines/flow/FlowCollector;", ""}, k = 3, mv = {2, 2, 0}, xi = 48)
    @DebugMetadata(c = "org.ies.tierno.applicationamani.data.repositorio.CustomerRepository$observeQuery$1", f = "CustomerRepository.kt", i = {0, 0, 1, 1, 1, 2, 2}, l = {34, 37, 42}, m = "invokeSuspend", n = {"$this$flow", "lastResult", "$this$flow", "lastResult", "newResult", "$this$flow", "lastResult"}, s = {"L$0", "L$1", "L$0", "L$1", "L$2", "L$0", "L$1"})
    static final class AnonymousClass1<T> extends SuspendLambda implements Function2<FlowCollector<? super List<? extends T>>, Continuation<? super Unit>, Object> {
        final /* synthetic */ Function1<Continuation<? super List<? extends T>>, Object> $query;
        final /* synthetic */ long $retryTime;
        private /* synthetic */ Object L$0;
        Object L$1;
        Object L$2;
        int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        /* JADX WARN: Multi-variable type inference failed */
        AnonymousClass1(Function1<? super Continuation<? super List<? extends T>>, ? extends Object> function1, long j, Continuation<? super AnonymousClass1> continuation) {
            super(2, continuation);
            this.$query = function1;
            this.$retryTime = j;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            AnonymousClass1 anonymousClass1 = new AnonymousClass1(this.$query, this.$retryTime, continuation);
            anonymousClass1.L$0 = obj;
            return anonymousClass1;
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(FlowCollector<? super List<? extends T>> flowCollector, Continuation<? super Unit> continuation) {
            return ((AnonymousClass1) create(flowCollector, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        /* JADX WARN: Not initialized variable reg: 3, insn: 0x003e: MOVE (r4 I:??[OBJECT, ARRAY]) = (r3 I:??[OBJECT, ARRAY] A[D('lastResult' java.util.List)]), block:B:14:0x003e */
        /* JADX WARN: Removed duplicated region for block: B:19:0x005c A[RETURN] */
        /* JADX WARN: Removed duplicated region for block: B:20:0x005d  */
        /* JADX WARN: Removed duplicated region for block: B:23:0x006c A[Catch: Exception -> 0x008e, TRY_LEAVE, TryCatch #0 {Exception -> 0x008e, blocks: (B:21:0x0064, B:23:0x006c), top: B:39:0x0064 }] */
        /* JADX WARN: Removed duplicated region for block: B:28:0x008c  */
        /* JADX WARN: Removed duplicated region for block: B:36:0x00be A[RETURN] */
        /* JADX WARN: Removed duplicated region for block: B:37:0x00bf  */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:37:0x00bf -> B:42:0x004d). Please report as a decompilation issue!!! */
        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        /*
            Code decompiled incorrectly, please refer to instructions dump.
        */
        public final Object invokeSuspend(Object $result) {
            List lastResult;
            List lastResult2;
            AnonymousClass1<T> anonymousClass1;
            Object obj;
            FlowCollector $this$flow;
            AnonymousClass1<T> anonymousClass12;
            List lastResult3;
            Object $result2;
            List newResult;
            Object objInvoke;
            FlowCollector $this$flow2 = (FlowCollector) this.L$0;
            Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
            try {
            } catch (Exception e) {
                e = e;
                lastResult2 = lastResult;
                anonymousClass1 = this;
                Timber.INSTANCE.e(e, "Error en observeQuery durante polling", new Object[0]);
                obj = coroutine_suspended;
                $this$flow = $this$flow2;
                anonymousClass1.L$0 = $this$flow;
                anonymousClass1.L$1 = lastResult2;
                anonymousClass1.L$2 = null;
                anonymousClass1.label = 3;
                if (DelayKt.delay(anonymousClass1.$retryTime, anonymousClass1) != obj) {
                }
            }
            switch (this.label) {
                case 0:
                    ResultKt.throwOnFailure($result);
                    lastResult3 = CollectionsKt.emptyList();
                    anonymousClass12 = this;
                    try {
                    } catch (Exception e2) {
                        List list = lastResult3;
                        anonymousClass1 = anonymousClass12;
                        e = e2;
                        lastResult2 = list;
                        Timber.INSTANCE.e(e, "Error en observeQuery durante polling", new Object[0]);
                        obj = coroutine_suspended;
                        $this$flow = $this$flow2;
                        anonymousClass1.L$0 = $this$flow;
                        anonymousClass1.L$1 = lastResult2;
                        anonymousClass1.L$2 = null;
                        anonymousClass1.label = 3;
                        if (DelayKt.delay(anonymousClass1.$retryTime, anonymousClass1) != obj) {
                        }
                    }
                    Function1<Continuation<? super List<? extends T>>, Object> function1 = anonymousClass12.$query;
                    anonymousClass12.L$0 = $this$flow2;
                    anonymousClass12.L$1 = lastResult3;
                    anonymousClass12.label = 1;
                    objInvoke = function1.invoke(anonymousClass12);
                    if (objInvoke == coroutine_suspended) {
                        return coroutine_suspended;
                    }
                    FlowCollector flowCollector = $this$flow2;
                    $result2 = $result;
                    $result = objInvoke;
                    lastResult2 = lastResult3;
                    anonymousClass1 = anonymousClass12;
                    obj = coroutine_suspended;
                    $this$flow = flowCollector;
                    try {
                    } catch (Exception e3) {
                        Object obj2 = obj;
                        e = e3;
                        $result = $result2;
                        $this$flow2 = $this$flow;
                        coroutine_suspended = obj2;
                        Timber.INSTANCE.e(e, "Error en observeQuery durante polling", new Object[0]);
                        obj = coroutine_suspended;
                        $this$flow = $this$flow2;
                        anonymousClass1.L$0 = $this$flow;
                        anonymousClass1.L$1 = lastResult2;
                        anonymousClass1.L$2 = null;
                        anonymousClass1.label = 3;
                        if (DelayKt.delay(anonymousClass1.$retryTime, anonymousClass1) != obj) {
                        }
                    }
                    newResult = (List) $result;
                    if (Intrinsics.areEqual(newResult, lastResult2)) {
                        lastResult2 = newResult;
                        anonymousClass1.L$0 = $this$flow;
                        anonymousClass1.L$1 = lastResult2;
                        anonymousClass1.L$2 = SpillingKt.nullOutSpilledVariable(newResult);
                        anonymousClass1.label = 2;
                        if ($this$flow.emit(newResult, anonymousClass1) == obj) {
                            return obj;
                        }
                        $result = $result2;
                        $this$flow2 = $this$flow;
                        coroutine_suspended = obj;
                        obj = coroutine_suspended;
                        $this$flow = $this$flow2;
                        anonymousClass1.L$0 = $this$flow;
                        anonymousClass1.L$1 = lastResult2;
                        anonymousClass1.L$2 = null;
                        anonymousClass1.label = 3;
                        if (DelayKt.delay(anonymousClass1.$retryTime, anonymousClass1) != obj) {
                            return obj;
                        }
                        $this$flow2 = $this$flow;
                        coroutine_suspended = obj;
                        anonymousClass12 = anonymousClass1;
                        lastResult3 = lastResult2;
                        Function1<Continuation<? super List<? extends T>>, Object> function12 = anonymousClass12.$query;
                        anonymousClass12.L$0 = $this$flow2;
                        anonymousClass12.L$1 = lastResult3;
                        anonymousClass12.label = 1;
                        objInvoke = function12.invoke(anonymousClass12);
                        if (objInvoke == coroutine_suspended) {
                        }
                    } else {
                        $result = $result2;
                        anonymousClass1.L$0 = $this$flow;
                        anonymousClass1.L$1 = lastResult2;
                        anonymousClass1.L$2 = null;
                        anonymousClass1.label = 3;
                        if (DelayKt.delay(anonymousClass1.$retryTime, anonymousClass1) != obj) {
                        }
                    }
                    break;
                case 1:
                    List lastResult4 = (List) this.L$1;
                    ResultKt.throwOnFailure($result);
                    obj = coroutine_suspended;
                    lastResult2 = lastResult4;
                    anonymousClass1 = this;
                    $this$flow = $this$flow2;
                    $result2 = $result;
                    newResult = (List) $result;
                    if (Intrinsics.areEqual(newResult, lastResult2)) {
                    }
                    break;
                case 2:
                    List lastResult5 = (List) this.L$1;
                    ResultKt.throwOnFailure($result);
                    lastResult2 = lastResult5;
                    anonymousClass1 = this;
                    obj = coroutine_suspended;
                    $this$flow = $this$flow2;
                    anonymousClass1.L$0 = $this$flow;
                    anonymousClass1.L$1 = lastResult2;
                    anonymousClass1.L$2 = null;
                    anonymousClass1.label = 3;
                    if (DelayKt.delay(anonymousClass1.$retryTime, anonymousClass1) != obj) {
                    }
                    break;
                case 3:
                    List lastResult6 = (List) this.L$1;
                    ResultKt.throwOnFailure($result);
                    lastResult3 = lastResult6;
                    anonymousClass12 = this;
                    Function1<Continuation<? super List<? extends T>>, Object> function122 = anonymousClass12.$query;
                    anonymousClass12.L$0 = $this$flow2;
                    anonymousClass12.L$1 = lastResult3;
                    anonymousClass12.label = 1;
                    objInvoke = function122.invoke(anonymousClass12);
                    if (objInvoke == coroutine_suspended) {
                    }
                    break;
                default:
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
        }
    }

    public final <T> Flow<List<T>> observeQuery(long retryTime, Function1<? super Continuation<? super List<? extends T>>, ? extends Object> query) {
        Intrinsics.checkNotNullParameter(query, "query");
        return FlowKt.flowOn(FlowKt.flow(new AnonymousClass1(query, retryTime, null)), Dispatchers.getIO());
    }
}
