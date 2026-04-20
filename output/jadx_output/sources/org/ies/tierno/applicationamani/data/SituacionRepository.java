package org.ies.tierno.applicationamani.data;

import androidx.media3.extractor.text.ttml.TtmlNode;
import java.util.ArrayList;
import java.util.Collection;
import java.util.List;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SpillingKt;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.BuildersKt;
import kotlinx.coroutines.CoroutineDispatcher;
import kotlinx.coroutines.Dispatchers;
import kotlinx.coroutines.flow.Flow;
import kotlinx.coroutines.flow.FlowCollector;
import kotlinx.coroutines.flow.FlowKt;
import org.ies.tierno.applicationamani.data.remoto.SituacionApi;
import org.ies.tierno.applicationamani.dto.situacionDTO.SituacionDTO;
import retrofit2.Response;

/* JADX INFO: compiled from: SituacionRepositoty.kt */
/* JADX INFO: loaded from: classes7.dex */
@Metadata(d1 = {"\u0000.\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\b\u0003\b\u0007\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0004\b\u0004\u0010\u0005J\u0012\u0010\u0006\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\t0\b0\u0007J\u001e\u0010\n\u001a\b\u0012\u0004\u0012\u00020\t0\u000b2\u0006\u0010\f\u001a\u00020\rH\u0086@¢\u0006\u0004\b\u000e\u0010\u000fR\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\u0010"}, d2 = {"Lorg/ies/tierno/applicationamani/data/SituacionRepository;", "", "api", "Lorg/ies/tierno/applicationamani/data/remoto/SituacionApi;", "<init>", "(Lorg/ies/tierno/applicationamani/data/remoto/SituacionApi;)V", "getSituaciones", "Lkotlinx/coroutines/flow/Flow;", "", "Lorg/ies/tierno/applicationamani/dto/situacionDTO/SituacionDTO;", "getSituacionById", "Lkotlin/Result;", TtmlNode.ATTR_ID, "", "getSituacionById-gIAlu-s", "(JLkotlin/coroutines/Continuation;)Ljava/lang/Object;", "app"}, k = 1, mv = {2, 2, 0}, xi = 48)
public final class SituacionRepository {
    public static final int $stable = 8;
    private final SituacionApi api;

    public SituacionRepository(SituacionApi api) {
        Intrinsics.checkNotNullParameter(api, "api");
        this.api = api;
    }

    /* JADX INFO: renamed from: org.ies.tierno.applicationamani.data.SituacionRepository$getSituaciones$1, reason: invalid class name */
    /* JADX INFO: compiled from: SituacionRepositoty.kt */
    @Metadata(d1 = {"\u0000\u0012\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00040\u00030\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/flow/FlowCollector;", "", "Lorg/ies/tierno/applicationamani/dto/situacionDTO/SituacionDTO;"}, k = 3, mv = {2, 2, 0}, xi = 48)
    @DebugMetadata(c = "org.ies.tierno.applicationamani.data.SituacionRepository$getSituaciones$1", f = "SituacionRepositoty.kt", i = {0, 1, 1, 1, 2, 2, 3, 3}, l = {16, 26, 28, 31}, m = "invokeSuspend", n = {"$this$flow", "$this$flow", "response", "situaciones", "$this$flow", "response", "$this$flow", "e"}, s = {"L$0", "L$0", "L$1", "L$2", "L$0", "L$1", "L$0", "L$1"})
    static final class AnonymousClass1 extends SuspendLambda implements Function2<FlowCollector<? super List<? extends SituacionDTO>>, Continuation<? super Unit>, Object> {
        private /* synthetic */ Object L$0;
        Object L$1;
        Object L$2;
        int label;

        AnonymousClass1(Continuation<? super AnonymousClass1> continuation) {
            super(2, continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            AnonymousClass1 anonymousClass1 = SituacionRepository.this.new AnonymousClass1(continuation);
            anonymousClass1.L$0 = obj;
            return anonymousClass1;
        }

        @Override // kotlin.jvm.functions.Function2
        public /* bridge */ /* synthetic */ Object invoke(FlowCollector<? super List<? extends SituacionDTO>> flowCollector, Continuation<? super Unit> continuation) {
            return invoke2((FlowCollector<? super List<SituacionDTO>>) flowCollector, continuation);
        }

        /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
        public final Object invoke2(FlowCollector<? super List<SituacionDTO>> flowCollector, Continuation<? super Unit> continuation) {
            return ((AnonymousClass1) create(flowCollector, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        /* JADX WARN: Removed duplicated region for block: B:35:0x00e7 A[RETURN] */
        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        /*
            Code decompiled incorrectly, please refer to instructions dump.
        */
        public final Object invokeSuspend(Object $result) {
            Object situaciones;
            Response response;
            FlowCollector $this$flow = (FlowCollector) this.L$0;
            Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
            try {
            } catch (Exception e) {
                this.L$0 = SpillingKt.nullOutSpilledVariable($this$flow);
                this.L$1 = SpillingKt.nullOutSpilledVariable(e);
                this.L$2 = null;
                this.label = 4;
                if ($this$flow.emit(CollectionsKt.emptyList(), this) == coroutine_suspended) {
                    return coroutine_suspended;
                }
            }
            switch (this.label) {
                case 0:
                    ResultKt.throwOnFailure($result);
                    this.L$0 = $this$flow;
                    this.label = 1;
                    situaciones = SituacionRepository.this.api.getSituaciones(this);
                    if (situaciones == coroutine_suspended) {
                        return coroutine_suspended;
                    }
                    response = (Response) situaciones;
                    if (response.isSuccessful() || response.body() == null) {
                        this.L$0 = $this$flow;
                        this.L$1 = SpillingKt.nullOutSpilledVariable(response);
                        this.label = 3;
                        if ($this$flow.emit(CollectionsKt.emptyList(), this) == coroutine_suspended) {
                            return coroutine_suspended;
                        }
                    }
                    Object objBody = response.body();
                    Intrinsics.checkNotNull(objBody);
                    Iterable<SituacionDTO> iterable = (Iterable) objBody;
                    Collection arrayList = new ArrayList(CollectionsKt.collectionSizeOrDefault(iterable, 10));
                    for (SituacionDTO situacionDTO : iterable) {
                        arrayList.add(new SituacionDTO(situacionDTO.getIdSituacion(), situacionDTO.getNombre(), situacionDTO.getCategoria(), situacionDTO.getDescripcion()));
                    }
                    ArrayList arrayList2 = (List) arrayList;
                    this.L$0 = $this$flow;
                    this.L$1 = SpillingKt.nullOutSpilledVariable(response);
                    this.L$2 = SpillingKt.nullOutSpilledVariable(arrayList2);
                    this.label = 2;
                    return $this$flow.emit(arrayList2, this) == coroutine_suspended ? coroutine_suspended : Unit.INSTANCE;
                case 1:
                    ResultKt.throwOnFailure($result);
                    situaciones = $result;
                    response = (Response) situaciones;
                    if (response.isSuccessful()) {
                    }
                    this.L$0 = $this$flow;
                    this.L$1 = SpillingKt.nullOutSpilledVariable(response);
                    this.label = 3;
                    if ($this$flow.emit(CollectionsKt.emptyList(), this) == coroutine_suspended) {
                    }
                    break;
                case 2:
                    ResultKt.throwOnFailure($result);
                case 3:
                    ResultKt.throwOnFailure($result);
                case 4:
                    ResultKt.throwOnFailure($result);
                default:
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
        }
    }

    public final Flow<List<SituacionDTO>> getSituaciones() {
        return FlowKt.flow(new AnonymousClass1(null));
    }

    /* JADX WARN: Removed duplicated region for block: B:7:0x0014  */
    /* JADX INFO: renamed from: getSituacionById-gIAlu-s, reason: not valid java name */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final Object m10334getSituacionByIdgIAlus(long id, Continuation<? super Result<SituacionDTO>> continuation) {
        SituacionRepository$getSituacionById$1 situacionRepository$getSituacionById$1;
        Object objWithContext;
        if (continuation instanceof SituacionRepository$getSituacionById$1) {
            situacionRepository$getSituacionById$1 = (SituacionRepository$getSituacionById$1) continuation;
            if ((situacionRepository$getSituacionById$1.label & Integer.MIN_VALUE) != 0) {
                situacionRepository$getSituacionById$1.label -= Integer.MIN_VALUE;
            } else {
                situacionRepository$getSituacionById$1 = new SituacionRepository$getSituacionById$1(this, continuation);
            }
        }
        Object $result = situacionRepository$getSituacionById$1.result;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        switch (situacionRepository$getSituacionById$1.label) {
            case 0:
                ResultKt.throwOnFailure($result);
                CoroutineDispatcher io2 = Dispatchers.getIO();
                SituacionRepository$getSituacionById$2 situacionRepository$getSituacionById$2 = new SituacionRepository$getSituacionById$2(this, id, null);
                situacionRepository$getSituacionById$1.J$0 = id;
                situacionRepository$getSituacionById$1.label = 1;
                objWithContext = BuildersKt.withContext(io2, situacionRepository$getSituacionById$2, situacionRepository$getSituacionById$1);
                if (objWithContext == coroutine_suspended) {
                    return coroutine_suspended;
                }
                break;
            case 1:
                long id2 = situacionRepository$getSituacionById$1.J$0;
                ResultKt.throwOnFailure($result);
                objWithContext = $result;
                break;
            default:
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }
        return ((Result) objWithContext).getValue();
    }
}
