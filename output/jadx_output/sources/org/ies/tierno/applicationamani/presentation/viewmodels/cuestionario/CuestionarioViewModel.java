package org.ies.tierno.applicationamani.presentation.viewmodels.cuestionario;

import androidx.lifecycle.ViewModel;
import androidx.lifecycle.ViewModelKt;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.flow.FlowKt;
import kotlinx.coroutines.flow.SharingStarted;
import kotlinx.coroutines.flow.StateFlow;
import org.ies.tierno.applicationamani.domain.usecases.pacienteUseCase.ListarPreguntasUseCase;
import org.ies.tierno.applicationamani.dto.opcionAdminDTO.OpcionAdminDTO;

/* JADX INFO: compiled from: CuestionarioViewModel.kt */
/* JADX INFO: loaded from: classes6.dex */
@Metadata(d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0007\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0004\b\u0004\u0010\u0005R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0006\u0010\u0007R\u001f\u0010\b\u001a\u0010\u0012\f\u0012\n\u0012\u0004\u0012\u00020\u000b\u0018\u00010\n0\t¢\u0006\b\n\u0000\u001a\u0004\b\f\u0010\r¨\u0006\u000e"}, d2 = {"Lorg/ies/tierno/applicationamani/presentation/viewmodels/cuestionario/CuestionarioViewModel;", "Landroidx/lifecycle/ViewModel;", "obtenerPreguntasUseCase", "Lorg/ies/tierno/applicationamani/domain/usecases/pacienteUseCase/ListarPreguntasUseCase;", "<init>", "(Lorg/ies/tierno/applicationamani/domain/usecases/pacienteUseCase/ListarPreguntasUseCase;)V", "getObtenerPreguntasUseCase", "()Lorg/ies/tierno/applicationamani/domain/usecases/pacienteUseCase/ListarPreguntasUseCase;", "preguntas", "Lkotlinx/coroutines/flow/StateFlow;", "", "Lorg/ies/tierno/applicationamani/dto/opcionAdminDTO/OpcionAdminDTO;", "getPreguntas", "()Lkotlinx/coroutines/flow/StateFlow;", "app"}, k = 1, mv = {2, 2, 0}, xi = 48)
public final class CuestionarioViewModel extends ViewModel {
    public static final int $stable = 8;
    private final ListarPreguntasUseCase obtenerPreguntasUseCase;
    private final StateFlow<List<OpcionAdminDTO>> preguntas;

    public final ListarPreguntasUseCase getObtenerPreguntasUseCase() {
        return this.obtenerPreguntasUseCase;
    }

    public CuestionarioViewModel(ListarPreguntasUseCase obtenerPreguntasUseCase) {
        Intrinsics.checkNotNullParameter(obtenerPreguntasUseCase, "obtenerPreguntasUseCase");
        this.obtenerPreguntasUseCase = obtenerPreguntasUseCase;
        this.preguntas = FlowKt.stateIn(this.obtenerPreguntasUseCase.invoke(), ViewModelKt.getViewModelScope(this), SharingStarted.Companion.WhileSubscribed$default(SharingStarted.INSTANCE, 5000L, 0L, 2, null), CollectionsKt.emptyList());
    }

    public final StateFlow<List<OpcionAdminDTO>> getPreguntas() {
        return this.preguntas;
    }
}
