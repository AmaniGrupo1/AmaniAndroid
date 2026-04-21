package org.ies.tierno.applicationamani.presentation.viewmodels.admin;

import androidx.lifecycle.ViewModel;
import androidx.lifecycle.ViewModelKt;
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
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.BuildersKt__Builders_commonKt;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.flow.Flow;
import kotlinx.coroutines.flow.FlowCollector;
import kotlinx.coroutines.flow.MutableStateFlow;
import kotlinx.coroutines.flow.StateFlow;
import kotlinx.coroutines.flow.StateFlowKt;
import org.ies.tierno.applicationamani.domain.usecases.adminUseCase.DarBajaPacienteUseCase;
import org.ies.tierno.applicationamani.domain.usecases.adminUseCase.TodosLosPacientesUseCase;
import org.ies.tierno.applicationamani.dto.requestPaciente.DatosPacienteAdminDTO;

/* JADX INFO: compiled from: ListarPacientesViewModel.kt */
/* JADX INFO: loaded from: classes16.dex */
@Metadata(d1 = {"\u0000F\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\t\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0000\b\u0007\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005¢\u0006\u0004\b\u0006\u0010\u0007J\u001e\u0010\u0014\u001a\b\u0012\u0004\u0012\u00020\u00160\u00152\u0006\u0010\u0017\u001a\u00020\u0018H\u0086@¢\u0006\u0004\b\u0019\u0010\u001aJ\u000e\u0010\u001b\u001a\u00020\u001c2\u0006\u0010\u0017\u001a\u00020\u0018R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\b\u0010\tR\u0011\u0010\u0004\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b\n\u0010\u000bR\u001a\u0010\f\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u000f0\u000e0\rX\u0082\u0004¢\u0006\u0002\n\u0000R\u001d\u0010\u0010\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u000f0\u000e0\u0011¢\u0006\b\n\u0000\u001a\u0004\b\u0012\u0010\u0013¨\u0006\u001d"}, d2 = {"Lorg/ies/tierno/applicationamani/presentation/viewmodels/admin/ListarPacientesViewModel;", "Landroidx/lifecycle/ViewModel;", "listarPacientesUseCase", "Lorg/ies/tierno/applicationamani/domain/usecases/adminUseCase/TodosLosPacientesUseCase;", "darBajaPacienteUseCase", "Lorg/ies/tierno/applicationamani/domain/usecases/adminUseCase/DarBajaPacienteUseCase;", "<init>", "(Lorg/ies/tierno/applicationamani/domain/usecases/adminUseCase/TodosLosPacientesUseCase;Lorg/ies/tierno/applicationamani/domain/usecases/adminUseCase/DarBajaPacienteUseCase;)V", "getListarPacientesUseCase", "()Lorg/ies/tierno/applicationamani/domain/usecases/adminUseCase/TodosLosPacientesUseCase;", "getDarBajaPacienteUseCase", "()Lorg/ies/tierno/applicationamani/domain/usecases/adminUseCase/DarBajaPacienteUseCase;", "_paciente", "Lkotlinx/coroutines/flow/MutableStateFlow;", "", "Lorg/ies/tierno/applicationamani/dto/requestPaciente/DatosPacienteAdminDTO;", "paciente", "Lkotlinx/coroutines/flow/StateFlow;", "getPaciente", "()Lkotlinx/coroutines/flow/StateFlow;", "darBajaPaciente", "Lkotlin/Result;", "", TtmlNode.ATTR_ID, "", "darBajaPaciente-gIAlu-s", "(JLkotlin/coroutines/Continuation;)Ljava/lang/Object;", "actualizarPacienteBaja", "", "app"}, k = 1, mv = {2, 2, 0}, xi = 48)
public final class ListarPacientesViewModel extends ViewModel {
    public static final int $stable = 8;
    private final MutableStateFlow<List<DatosPacienteAdminDTO>> _paciente;
    private final DarBajaPacienteUseCase darBajaPacienteUseCase;
    private final TodosLosPacientesUseCase listarPacientesUseCase;
    private final StateFlow<List<DatosPacienteAdminDTO>> paciente;

    public final TodosLosPacientesUseCase getListarPacientesUseCase() {
        return this.listarPacientesUseCase;
    }

    public final DarBajaPacienteUseCase getDarBajaPacienteUseCase() {
        return this.darBajaPacienteUseCase;
    }

    public ListarPacientesViewModel(TodosLosPacientesUseCase listarPacientesUseCase, DarBajaPacienteUseCase darBajaPacienteUseCase) {
        Intrinsics.checkNotNullParameter(listarPacientesUseCase, "listarPacientesUseCase");
        Intrinsics.checkNotNullParameter(darBajaPacienteUseCase, "darBajaPacienteUseCase");
        this.listarPacientesUseCase = listarPacientesUseCase;
        this.darBajaPacienteUseCase = darBajaPacienteUseCase;
        this._paciente = StateFlowKt.MutableStateFlow(CollectionsKt.emptyList());
        this.paciente = this._paciente;
        BuildersKt__Builders_commonKt.launch$default(ViewModelKt.getViewModelScope(this), null, null, new AnonymousClass1(null), 3, null);
    }

    public final StateFlow<List<DatosPacienteAdminDTO>> getPaciente() {
        return this.paciente;
    }

    /* JADX INFO: renamed from: org.ies.tierno.applicationamani.presentation.viewmodels.admin.ListarPacientesViewModel$1, reason: invalid class name */
    /* JADX INFO: compiled from: ListarPacientesViewModel.kt */
    @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 2, 0}, xi = 48)
    @DebugMetadata(c = "org.ies.tierno.applicationamani.presentation.viewmodels.admin.ListarPacientesViewModel$1", f = "ListarPacientesViewModel.kt", i = {}, l = {36}, m = "invokeSuspend", n = {}, s = {})
    static final class AnonymousClass1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
        int label;

        AnonymousClass1(Continuation<? super AnonymousClass1> continuation) {
            super(2, continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return ListarPacientesViewModel.this.new AnonymousClass1(continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
            return ((AnonymousClass1) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object $result) {
            Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
            switch (this.label) {
                case 0:
                    ResultKt.throwOnFailure($result);
                    Flow<List<DatosPacienteAdminDTO>> flowInvoke = ListarPacientesViewModel.this.getListarPacientesUseCase().invoke();
                    final ListarPacientesViewModel listarPacientesViewModel = ListarPacientesViewModel.this;
                    this.label = 1;
                    if (flowInvoke.collect(new FlowCollector() { // from class: org.ies.tierno.applicationamani.presentation.viewmodels.admin.ListarPacientesViewModel.1.1
                        @Override // kotlinx.coroutines.flow.FlowCollector
                        public /* bridge */ /* synthetic */ Object emit(Object value, Continuation $completion) {
                            return emit((List<DatosPacienteAdminDTO>) value, (Continuation<? super Unit>) $completion);
                        }

                        public final Object emit(List<DatosPacienteAdminDTO> list, Continuation<? super Unit> continuation) {
                            listarPacientesViewModel._paciente.setValue(list);
                            return Unit.INSTANCE;
                        }
                    }, this) == coroutine_suspended) {
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
    /* JADX INFO: renamed from: darBajaPaciente-gIAlu-s, reason: not valid java name */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final Object m10486darBajaPacientegIAlus(long id, Continuation<? super Result<String>> continuation) {
        ListarPacientesViewModel$darBajaPaciente$1 listarPacientesViewModel$darBajaPaciente$1;
        Object result;
        if (continuation instanceof ListarPacientesViewModel$darBajaPaciente$1) {
            listarPacientesViewModel$darBajaPaciente$1 = (ListarPacientesViewModel$darBajaPaciente$1) continuation;
            if ((listarPacientesViewModel$darBajaPaciente$1.label & Integer.MIN_VALUE) != 0) {
                listarPacientesViewModel$darBajaPaciente$1.label -= Integer.MIN_VALUE;
            } else {
                listarPacientesViewModel$darBajaPaciente$1 = new ListarPacientesViewModel$darBajaPaciente$1(this, continuation);
            }
        }
        Object $result = listarPacientesViewModel$darBajaPaciente$1.result;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        try {
            switch (listarPacientesViewModel$darBajaPaciente$1.label) {
                case 0:
                    ResultKt.throwOnFailure($result);
                    DarBajaPacienteUseCase darBajaPacienteUseCase = this.darBajaPacienteUseCase;
                    listarPacientesViewModel$darBajaPaciente$1.J$0 = id;
                    listarPacientesViewModel$darBajaPaciente$1.label = 1;
                    Object objM10386invokegIAlus = darBajaPacienteUseCase.m10386invokegIAlus(id, listarPacientesViewModel$darBajaPaciente$1);
                    if (objM10386invokegIAlus == coroutine_suspended) {
                        return coroutine_suspended;
                    }
                    result = objM10386invokegIAlus;
                    break;
                    break;
                case 1:
                    id = listarPacientesViewModel$darBajaPaciente$1.J$0;
                    ResultKt.throwOnFailure($result);
                    result = ((Result) $result).getValue();
                    break;
                default:
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            if (!Result.m8549isSuccessimpl(result)) {
                return result;
            }
            actualizarPacienteBaja(id);
            return result;
        } catch (Exception e) {
            Result.Companion companion = Result.INSTANCE;
            return Result.m8542constructorimpl(ResultKt.createFailure(e));
        }
    }

    public final void actualizarPacienteBaja(long id) {
        MutableStateFlow<List<DatosPacienteAdminDTO>> mutableStateFlow = this._paciente;
        Iterable<DatosPacienteAdminDTO> value = this._paciente.getValue();
        Collection arrayList = new ArrayList(CollectionsKt.collectionSizeOrDefault(value, 10));
        for (DatosPacienteAdminDTO datosPacienteAdminDTOCopy$default : value) {
            if (datosPacienteAdminDTOCopy$default.getIdPaciente() == id) {
                datosPacienteAdminDTOCopy$default = DatosPacienteAdminDTO.copy$default(datosPacienteAdminDTOCopy$default, 0L, null, null, null, null, null, null, null, null, false, null, null, null, null, null, 32255, null);
            }
            arrayList.add(datosPacienteAdminDTOCopy$default);
        }
        mutableStateFlow.setValue((List) arrayList);
    }
}
