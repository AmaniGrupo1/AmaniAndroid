package org.ies.tierno.applicationamani.data.repositorio;

import com.google.firebase.firestore.index.FirestoreIndexValueWriter;
import java.util.List;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.Boxing;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SpillingKt;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.functions.Function3;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.flow.Flow;
import kotlinx.coroutines.flow.FlowCollector;
import kotlinx.coroutines.flow.FlowKt;
import org.ies.tierno.applicationamani.data.remoto.TestApi;
import org.ies.tierno.applicationamani.domain.models.test.RespuestasRequestDTO;
import org.ies.tierno.applicationamani.dto.opcionAdminDTO.OpcionAdminDTO;
import org.ies.tierno.applicationamani.dto.opcionAdminDTO.PreguntaRequest;

/* JADX INFO: compiled from: TestRepositoryApi.kt */
/* JADX INFO: loaded from: classes16.dex */
@Metadata(d1 = {"\u0000>\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\b\u0007\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0004\b\u0004\u0010\u0005J\u0018\u0010\u0006\u001a\u0004\u0018\u00010\u00072\u0006\u0010\b\u001a\u00020\tH\u0086@¢\u0006\u0002\u0010\nJ\u0012\u0010\u000b\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00070\r0\fJ$\u0010\u000e\u001a\u00020\u000f2\u0006\u0010\u0010\u001a\u00020\u00112\f\u0010\u0012\u001a\b\u0012\u0004\u0012\u00020\u00130\rH\u0086@¢\u0006\u0002\u0010\u0014R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\u0015"}, d2 = {"Lorg/ies/tierno/applicationamani/data/repositorio/TestRepositoryApi;", "", "testApi", "Lorg/ies/tierno/applicationamani/data/remoto/TestApi;", "<init>", "(Lorg/ies/tierno/applicationamani/data/remoto/TestApi;)V", "createPregunta", "Lorg/ies/tierno/applicationamani/dto/opcionAdminDTO/OpcionAdminDTO;", "pregunta", "Lorg/ies/tierno/applicationamani/dto/opcionAdminDTO/PreguntaRequest;", "(Lorg/ies/tierno/applicationamani/dto/opcionAdminDTO/PreguntaRequest;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "getPreguntasFlow", "Lkotlinx/coroutines/flow/Flow;", "", "responderTest", "", "idPaciente", "", "respuestas", "Lorg/ies/tierno/applicationamani/domain/models/test/RespuestasRequestDTO;", "(JLjava/util/List;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "app"}, k = 1, mv = {2, 2, 0}, xi = 48)
public final class TestRepositoryApi {
    public static final int $stable = 8;
    private final TestApi testApi;

    /* JADX INFO: renamed from: org.ies.tierno.applicationamani.data.repositorio.TestRepositoryApi$createPregunta$1, reason: invalid class name */
    /* JADX INFO: compiled from: TestRepositoryApi.kt */
    @Metadata(k = 3, mv = {2, 2, 0}, xi = 48)
    @DebugMetadata(c = "org.ies.tierno.applicationamani.data.repositorio.TestRepositoryApi", f = "TestRepositoryApi.kt", i = {0}, l = {35}, m = "createPregunta", n = {"pregunta"}, s = {"L$0"})
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
            return TestRepositoryApi.this.createPregunta(null, this);
        }
    }

    /* JADX INFO: renamed from: org.ies.tierno.applicationamani.data.repositorio.TestRepositoryApi$responderTest$1, reason: invalid class name and case insensitive filesystem */
    /* JADX INFO: compiled from: TestRepositoryApi.kt */
    @Metadata(k = 3, mv = {2, 2, 0}, xi = 48)
    @DebugMetadata(c = "org.ies.tierno.applicationamani.data.repositorio.TestRepositoryApi", f = "TestRepositoryApi.kt", i = {0, 0}, l = {65}, m = "responderTest", n = {"respuestas", "idPaciente"}, s = {"L$0", "J$0"})
    static final class C08051 extends ContinuationImpl {
        long J$0;
        Object L$0;
        int label;
        /* synthetic */ Object result;

        C08051(Continuation<? super C08051> continuation) {
            super(continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            this.result = obj;
            this.label |= Integer.MIN_VALUE;
            return TestRepositoryApi.this.responderTest(0L, null, this);
        }
    }

    public TestRepositoryApi(TestApi testApi) {
        Intrinsics.checkNotNullParameter(testApi, "testApi");
        this.testApi = testApi;
    }

    /* JADX WARN: Removed duplicated region for block: B:7:0x0014  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final Object createPregunta(PreguntaRequest pregunta, Continuation<? super OpcionAdminDTO> continuation) {
        AnonymousClass1 anonymousClass1;
        Object objCreatePregunta;
        if (continuation instanceof AnonymousClass1) {
            anonymousClass1 = (AnonymousClass1) continuation;
            if ((anonymousClass1.label & Integer.MIN_VALUE) != 0) {
                anonymousClass1.label -= Integer.MIN_VALUE;
            } else {
                anonymousClass1 = new AnonymousClass1(continuation);
            }
        }
        Object $result = anonymousClass1.result;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        try {
            switch (anonymousClass1.label) {
                case 0:
                    ResultKt.throwOnFailure($result);
                    TestApi testApi = this.testApi;
                    anonymousClass1.L$0 = SpillingKt.nullOutSpilledVariable(pregunta);
                    anonymousClass1.label = 1;
                    objCreatePregunta = testApi.createPregunta(pregunta, anonymousClass1);
                    if (objCreatePregunta == coroutine_suspended) {
                        return coroutine_suspended;
                    }
                    break;
                case 1:
                    ResultKt.throwOnFailure($result);
                    objCreatePregunta = $result;
                    break;
                default:
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            return (OpcionAdminDTO) objCreatePregunta;
        } catch (Exception e) {
            e.printStackTrace();
            return null;
        }
    }

    /* JADX INFO: renamed from: org.ies.tierno.applicationamani.data.repositorio.TestRepositoryApi$getPreguntasFlow$1, reason: invalid class name and case insensitive filesystem */
    /* JADX INFO: compiled from: TestRepositoryApi.kt */
    @Metadata(d1 = {"\u0000\u0012\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00040\u00030\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/flow/FlowCollector;", "", "Lorg/ies/tierno/applicationamani/dto/opcionAdminDTO/OpcionAdminDTO;"}, k = 3, mv = {2, 2, 0}, xi = 48)
    @DebugMetadata(c = "org.ies.tierno.applicationamani.data.repositorio.TestRepositoryApi$getPreguntasFlow$1", f = "TestRepositoryApi.kt", i = {0, 1, 1}, l = {51, 52}, m = "invokeSuspend", n = {"$this$flow", "$this$flow", "preguntas"}, s = {"L$0", "L$0", "L$1"})
    static final class C08041 extends SuspendLambda implements Function2<FlowCollector<? super List<? extends OpcionAdminDTO>>, Continuation<? super Unit>, Object> {
        private /* synthetic */ Object L$0;
        Object L$1;
        int label;

        C08041(Continuation<? super C08041> continuation) {
            super(2, continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            C08041 c08041 = TestRepositoryApi.this.new C08041(continuation);
            c08041.L$0 = obj;
            return c08041;
        }

        @Override // kotlin.jvm.functions.Function2
        public /* bridge */ /* synthetic */ Object invoke(FlowCollector<? super List<? extends OpcionAdminDTO>> flowCollector, Continuation<? super Unit> continuation) {
            return invoke2((FlowCollector<? super List<OpcionAdminDTO>>) flowCollector, continuation);
        }

        /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
        public final Object invoke2(FlowCollector<? super List<OpcionAdminDTO>> flowCollector, Continuation<? super Unit> continuation) {
            return ((C08041) create(flowCollector, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        /* JADX WARN: Removed duplicated region for block: B:13:0x0054 A[RETURN] */
        /* JADX WARN: Removed duplicated region for block: B:14:0x0055  */
        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        /*
            Code decompiled incorrectly, please refer to instructions dump.
        */
        public final Object invokeSuspend(Object $result) {
            Object preguntas;
            List preguntas2;
            FlowCollector $this$flow = (FlowCollector) this.L$0;
            Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
            switch (this.label) {
                case 0:
                    ResultKt.throwOnFailure($result);
                    this.L$0 = $this$flow;
                    this.label = 1;
                    preguntas = TestRepositoryApi.this.testApi.getPreguntas(this);
                    if (preguntas == coroutine_suspended) {
                        return coroutine_suspended;
                    }
                    preguntas2 = (List) preguntas;
                    this.L$0 = SpillingKt.nullOutSpilledVariable($this$flow);
                    this.L$1 = SpillingKt.nullOutSpilledVariable(preguntas2);
                    this.label = 2;
                    if ($this$flow.emit(preguntas2, this) != coroutine_suspended) {
                        return coroutine_suspended;
                    }
                    return Unit.INSTANCE;
                case 1:
                    ResultKt.throwOnFailure($result);
                    preguntas = $result;
                    preguntas2 = (List) preguntas;
                    this.L$0 = SpillingKt.nullOutSpilledVariable($this$flow);
                    this.L$1 = SpillingKt.nullOutSpilledVariable(preguntas2);
                    this.label = 2;
                    if ($this$flow.emit(preguntas2, this) != coroutine_suspended) {
                    }
                    break;
                case 2:
                    ResultKt.throwOnFailure($result);
                    return Unit.INSTANCE;
                default:
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
        }
    }

    public final Flow<List<OpcionAdminDTO>> getPreguntasFlow() {
        return FlowKt.m10084catch(FlowKt.flow(new C08041(null)), new AnonymousClass2(null));
    }

    /* JADX INFO: renamed from: org.ies.tierno.applicationamani.data.repositorio.TestRepositoryApi$getPreguntasFlow$2, reason: invalid class name */
    /* JADX INFO: compiled from: TestRepositoryApi.kt */
    @Metadata(d1 = {"\u0000\u0018\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0003\u0010\u0000\u001a\u00020\u0001*\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00040\u00030\u00022\u0006\u0010\u0005\u001a\u00020\u0006H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/flow/FlowCollector;", "", "Lorg/ies/tierno/applicationamani/dto/opcionAdminDTO/OpcionAdminDTO;", "e", ""}, k = 3, mv = {2, 2, 0}, xi = 48)
    @DebugMetadata(c = "org.ies.tierno.applicationamani.data.repositorio.TestRepositoryApi$getPreguntasFlow$2", f = "TestRepositoryApi.kt", i = {0, 0}, l = {FirestoreIndexValueWriter.INDEX_TYPE_MAP}, m = "invokeSuspend", n = {"$this$catch", "e"}, s = {"L$0", "L$1"})
    static final class AnonymousClass2 extends SuspendLambda implements Function3<FlowCollector<? super List<? extends OpcionAdminDTO>>, Throwable, Continuation<? super Unit>, Object> {
        private /* synthetic */ Object L$0;
        /* synthetic */ Object L$1;
        int label;

        AnonymousClass2(Continuation<? super AnonymousClass2> continuation) {
            super(3, continuation);
        }

        @Override // kotlin.jvm.functions.Function3
        public /* bridge */ /* synthetic */ Object invoke(FlowCollector<? super List<? extends OpcionAdminDTO>> flowCollector, Throwable th, Continuation<? super Unit> continuation) {
            return invoke2((FlowCollector<? super List<OpcionAdminDTO>>) flowCollector, th, continuation);
        }

        /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
        public final Object invoke2(FlowCollector<? super List<OpcionAdminDTO>> flowCollector, Throwable th, Continuation<? super Unit> continuation) {
            AnonymousClass2 anonymousClass2 = new AnonymousClass2(continuation);
            anonymousClass2.L$0 = flowCollector;
            anonymousClass2.L$1 = th;
            return anonymousClass2.invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object $result) {
            FlowCollector $this$catch = (FlowCollector) this.L$0;
            Throwable e = (Throwable) this.L$1;
            Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
            switch (this.label) {
                case 0:
                    ResultKt.throwOnFailure($result);
                    e.printStackTrace();
                    this.L$0 = SpillingKt.nullOutSpilledVariable($this$catch);
                    this.L$1 = SpillingKt.nullOutSpilledVariable(e);
                    this.label = 1;
                    if ($this$catch.emit(CollectionsKt.emptyList(), this) == coroutine_suspended) {
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

    /* JADX WARN: Removed duplicated region for block: B:7:0x0014  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final Object responderTest(long idPaciente, List<RespuestasRequestDTO> list, Continuation<? super Boolean> continuation) {
        C08051 c08051;
        if (continuation instanceof C08051) {
            c08051 = (C08051) continuation;
            if ((c08051.label & Integer.MIN_VALUE) != 0) {
                c08051.label -= Integer.MIN_VALUE;
            } else {
                c08051 = new C08051(continuation);
            }
        }
        Object $result = c08051.result;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        boolean z = true;
        try {
            switch (c08051.label) {
                case 0:
                    ResultKt.throwOnFailure($result);
                    TestApi testApi = this.testApi;
                    c08051.L$0 = SpillingKt.nullOutSpilledVariable(list);
                    c08051.J$0 = idPaciente;
                    c08051.label = 1;
                    if (testApi.responderTest(idPaciente, list, c08051) == coroutine_suspended) {
                        return coroutine_suspended;
                    }
                    break;
                case 1:
                    long idPaciente2 = c08051.J$0;
                    ResultKt.throwOnFailure($result);
                    break;
                default:
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
        } catch (Exception e) {
            e.printStackTrace();
            z = false;
        }
        return Boxing.boxBoolean(z);
    }
}
