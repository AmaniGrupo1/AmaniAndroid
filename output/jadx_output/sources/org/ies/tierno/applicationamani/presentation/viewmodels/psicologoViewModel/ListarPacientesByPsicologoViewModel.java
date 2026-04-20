package org.ies.tierno.applicationamani.presentation.viewmodels.psicologoViewModel;

import androidx.lifecycle.ViewModel;
import androidx.lifecycle.ViewModelKt;
import j$.time.LocalDate;
import j$.time.Period;
import j$.time.format.DateTimeFormatter;
import java.util.ArrayList;
import java.util.Collection;
import java.util.List;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;
import kotlinx.coroutines.BuildersKt__Builders_commonKt;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.flow.Flow;
import kotlinx.coroutines.flow.FlowCollector;
import kotlinx.coroutines.flow.MutableStateFlow;
import kotlinx.coroutines.flow.StateFlow;
import kotlinx.coroutines.flow.StateFlowKt;
import org.ies.tierno.applicationamani.domain.usecases.psicologosUseCase.ListarPacientesByPsicologo;
import org.ies.tierno.applicationamani.dto.psicologo.PacientePsicologoResponseDTO;
import org.ies.tierno.applicationamani.dto.tutor.TutorResponseDTO;

/* JADX INFO: compiled from: ListarPacientesByPsicologoViewModel.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000<\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u000e\n\u0000\b\u0007\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0004\b\u0004\u0010\u0005J\u0012\u0010\u0014\u001a\u00020\u00152\b\u0010\u0016\u001a\u0004\u0018\u00010\u0017H\u0002R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0006\u0010\u0007R\u001a\u0010\b\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u000b0\n0\tX\u0082\u0004¢\u0006\u0002\n\u0000R\u001d\u0010\f\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u000b0\n0\r¢\u0006\b\n\u0000\u001a\u0004\b\u000e\u0010\u000fR\u001a\u0010\u0010\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00110\n0\tX\u0082\u0004¢\u0006\u0002\n\u0000R\u001d\u0010\u0012\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00110\n0\r¢\u0006\b\n\u0000\u001a\u0004\b\u0013\u0010\u000f¨\u0006\u0018"}, d2 = {"Lorg/ies/tierno/applicationamani/presentation/viewmodels/psicologoViewModel/ListarPacientesByPsicologoViewModel;", "Landroidx/lifecycle/ViewModel;", "listarPacientesByPsicologo", "Lorg/ies/tierno/applicationamani/domain/usecases/psicologosUseCase/ListarPacientesByPsicologo;", "<init>", "(Lorg/ies/tierno/applicationamani/domain/usecases/psicologosUseCase/ListarPacientesByPsicologo;)V", "getListarPacientesByPsicologo", "()Lorg/ies/tierno/applicationamani/domain/usecases/psicologosUseCase/ListarPacientesByPsicologo;", "_pacientes", "Lkotlinx/coroutines/flow/MutableStateFlow;", "", "Lorg/ies/tierno/applicationamani/dto/psicologo/PacientePsicologoResponseDTO;", "pacientes", "Lkotlinx/coroutines/flow/StateFlow;", "getPacientes", "()Lkotlinx/coroutines/flow/StateFlow;", "_pacientesConInfo", "Lorg/ies/tierno/applicationamani/presentation/viewmodels/psicologoViewModel/PacienteConInfoMenor;", "pacientesConInfo", "getPacientesConInfo", "esMenorDeEdad", "", "fechaNacimientoStr", "", "app"}, k = 1, mv = {2, 2, 0}, xi = 48)
public final class ListarPacientesByPsicologoViewModel extends ViewModel {
    public static final int $stable = 8;
    private final MutableStateFlow<List<PacientePsicologoResponseDTO>> _pacientes;
    private final MutableStateFlow<List<PacienteConInfoMenor>> _pacientesConInfo;
    private final ListarPacientesByPsicologo listarPacientesByPsicologo;
    private final StateFlow<List<PacientePsicologoResponseDTO>> pacientes;
    private final StateFlow<List<PacienteConInfoMenor>> pacientesConInfo;

    public final ListarPacientesByPsicologo getListarPacientesByPsicologo() {
        return this.listarPacientesByPsicologo;
    }

    public ListarPacientesByPsicologoViewModel(ListarPacientesByPsicologo listarPacientesByPsicologo) {
        Intrinsics.checkNotNullParameter(listarPacientesByPsicologo, "listarPacientesByPsicologo");
        this.listarPacientesByPsicologo = listarPacientesByPsicologo;
        this._pacientes = StateFlowKt.MutableStateFlow(CollectionsKt.emptyList());
        this.pacientes = this._pacientes;
        this._pacientesConInfo = StateFlowKt.MutableStateFlow(CollectionsKt.emptyList());
        this.pacientesConInfo = this._pacientesConInfo;
        BuildersKt__Builders_commonKt.launch$default(ViewModelKt.getViewModelScope(this), null, null, new AnonymousClass1(null), 3, null);
    }

    public final StateFlow<List<PacientePsicologoResponseDTO>> getPacientes() {
        return this.pacientes;
    }

    public final StateFlow<List<PacienteConInfoMenor>> getPacientesConInfo() {
        return this.pacientesConInfo;
    }

    /* JADX INFO: renamed from: org.ies.tierno.applicationamani.presentation.viewmodels.psicologoViewModel.ListarPacientesByPsicologoViewModel$1, reason: invalid class name */
    /* JADX INFO: compiled from: ListarPacientesByPsicologoViewModel.kt */
    @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 2, 0}, xi = 48)
    @DebugMetadata(c = "org.ies.tierno.applicationamani.presentation.viewmodels.psicologoViewModel.ListarPacientesByPsicologoViewModel$1", f = "ListarPacientesByPsicologoViewModel.kt", i = {}, l = {29}, m = "invokeSuspend", n = {}, s = {})
    static final class AnonymousClass1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
        int label;

        AnonymousClass1(Continuation<? super AnonymousClass1> continuation) {
            super(2, continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return ListarPacientesByPsicologoViewModel.this.new AnonymousClass1(continuation);
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
                    Flow<List<PacientePsicologoResponseDTO>> flowInvoke = ListarPacientesByPsicologoViewModel.this.getListarPacientesByPsicologo().invoke();
                    final ListarPacientesByPsicologoViewModel listarPacientesByPsicologoViewModel = ListarPacientesByPsicologoViewModel.this;
                    this.label = 1;
                    if (flowInvoke.collect(new FlowCollector() { // from class: org.ies.tierno.applicationamani.presentation.viewmodels.psicologoViewModel.ListarPacientesByPsicologoViewModel.1.1
                        @Override // kotlinx.coroutines.flow.FlowCollector
                        public /* bridge */ /* synthetic */ Object emit(Object value, Continuation $completion) {
                            return emit((List<PacientePsicologoResponseDTO>) value, (Continuation<? super Unit>) $completion);
                        }

                        public final Object emit(List<PacientePsicologoResponseDTO> list, Continuation<? super Unit> continuation) {
                            List<TutorResponseDTO> listEmptyList;
                            listarPacientesByPsicologoViewModel._pacientes.setValue(list);
                            MutableStateFlow mutableStateFlow = listarPacientesByPsicologoViewModel._pacientesConInfo;
                            List<PacientePsicologoResponseDTO> list2 = list;
                            ListarPacientesByPsicologoViewModel listarPacientesByPsicologoViewModel2 = listarPacientesByPsicologoViewModel;
                            Collection arrayList = new ArrayList(CollectionsKt.collectionSizeOrDefault(list2, 10));
                            for (PacientePsicologoResponseDTO pacientePsicologoResponseDTO : list2) {
                                boolean zEsMenorDeEdad = listarPacientesByPsicologoViewModel2.esMenorDeEdad(pacientePsicologoResponseDTO.getFechaNacimiento());
                                if (listarPacientesByPsicologoViewModel2.esMenorDeEdad(pacientePsicologoResponseDTO.getFechaNacimiento())) {
                                    listEmptyList = pacientePsicologoResponseDTO.getTutor();
                                    if (listEmptyList == null) {
                                        listEmptyList = CollectionsKt.emptyList();
                                    }
                                } else {
                                    listEmptyList = CollectionsKt.emptyList();
                                }
                                arrayList.add(new PacienteConInfoMenor(pacientePsicologoResponseDTO, zEsMenorDeEdad, listEmptyList));
                            }
                            mutableStateFlow.setValue((List) arrayList);
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

    /* JADX INFO: Access modifiers changed from: private */
    public final boolean esMenorDeEdad(String fechaNacimientoStr) {
        String str = fechaNacimientoStr;
        if (str == null || StringsKt.isBlank(str)) {
            return false;
        }
        try {
            DateTimeFormatter formatter = DateTimeFormatter.ofPattern("yyyy-MM-dd");
            LocalDate fechaNacimiento = LocalDate.parse(fechaNacimientoStr, formatter);
            int edad = Period.between(fechaNacimiento, LocalDate.now()).getYears();
            return edad < 18;
        } catch (Exception e) {
            return false;
        }
    }
}
