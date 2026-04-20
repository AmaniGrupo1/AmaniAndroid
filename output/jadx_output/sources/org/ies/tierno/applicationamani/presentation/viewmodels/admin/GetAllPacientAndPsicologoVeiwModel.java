package org.ies.tierno.applicationamani.presentation.viewmodels.admin;

import androidx.lifecycle.ViewModel;
import androidx.lifecycle.ViewModelKt;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.flow.FlowKt;
import kotlinx.coroutines.flow.SharingStarted;
import kotlinx.coroutines.flow.StateFlow;
import org.ies.tierno.applicationamani.domain.usecases.adminUseCase.GetAllClientAndPsicologoUseCase;
import org.ies.tierno.applicationamani.dto.login.ListaPacientesAndPsicologo;

/* JADX INFO: compiled from: GetAllPacientAndPsicologoVeiwModel.kt */
/* JADX INFO: loaded from: classes16.dex */
@Metadata(d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0007\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0004\b\u0004\u0010\u0005R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000R\u001d\u0010\u0006\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\t0\b0\u0007¢\u0006\b\n\u0000\u001a\u0004\b\n\u0010\u000bR\u001d\u0010\f\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\t0\b0\u0007¢\u0006\b\n\u0000\u001a\u0004\b\r\u0010\u000b¨\u0006\u000e"}, d2 = {"Lorg/ies/tierno/applicationamani/presentation/viewmodels/admin/GetAllPacientAndPsicologoVeiwModel;", "Landroidx/lifecycle/ViewModel;", "getAllPacientAndPsicologoUseCase", "Lorg/ies/tierno/applicationamani/domain/usecases/adminUseCase/GetAllClientAndPsicologoUseCase;", "<init>", "(Lorg/ies/tierno/applicationamani/domain/usecases/adminUseCase/GetAllClientAndPsicologoUseCase;)V", "_pacientes", "Lkotlinx/coroutines/flow/StateFlow;", "", "Lorg/ies/tierno/applicationamani/dto/login/ListaPacientesAndPsicologo;", "get_pacientes", "()Lkotlinx/coroutines/flow/StateFlow;", "paciente", "getPaciente", "app"}, k = 1, mv = {2, 2, 0}, xi = 48)
public final class GetAllPacientAndPsicologoVeiwModel extends ViewModel {
    public static final int $stable = 8;
    private final StateFlow<List<ListaPacientesAndPsicologo>> _pacientes;
    private final GetAllClientAndPsicologoUseCase getAllPacientAndPsicologoUseCase;
    private final StateFlow<List<ListaPacientesAndPsicologo>> paciente;

    public GetAllPacientAndPsicologoVeiwModel(GetAllClientAndPsicologoUseCase getAllPacientAndPsicologoUseCase) {
        Intrinsics.checkNotNullParameter(getAllPacientAndPsicologoUseCase, "getAllPacientAndPsicologoUseCase");
        this.getAllPacientAndPsicologoUseCase = getAllPacientAndPsicologoUseCase;
        this._pacientes = FlowKt.stateIn(this.getAllPacientAndPsicologoUseCase.invoke(), ViewModelKt.getViewModelScope(this), SharingStarted.Companion.WhileSubscribed$default(SharingStarted.INSTANCE, 5000L, 0L, 2, null), CollectionsKt.emptyList());
        this.paciente = this._pacientes;
    }

    public final StateFlow<List<ListaPacientesAndPsicologo>> get_pacientes() {
        return this._pacientes;
    }

    public final StateFlow<List<ListaPacientesAndPsicologo>> getPaciente() {
        return this.paciente;
    }
}
