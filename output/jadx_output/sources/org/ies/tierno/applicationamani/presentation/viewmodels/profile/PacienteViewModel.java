package org.ies.tierno.applicationamani.presentation.viewmodels.profile;

import androidx.lifecycle.ViewModel;
import androidx.lifecycle.ViewModelKt;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.Boxing;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.BuildersKt__Builders_commonKt;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.flow.MutableStateFlow;
import kotlinx.coroutines.flow.StateFlow;
import kotlinx.coroutines.flow.StateFlowKt;
import org.ies.tierno.applicationamani.domain.usecases.profileUseCase.ProfileUseCaseGeneral;
import org.ies.tierno.applicationamani.dto.perfil.PsicologoProfileResponseDTO;

/* JADX INFO: compiled from: PacienteViewModel.kt */
/* JADX INFO: loaded from: classes7.dex */
@Metadata(d1 = {"\u0000@\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\t\n\u0000\b\u0007\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0004\b\u0004\u0010\u0005J\u000e\u0010\u0014\u001a\u00020\u00152\u0006\u0010\u0016\u001a\u00020\u0017R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000R\u0016\u0010\u0006\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\b0\u0007X\u0082\u0004¢\u0006\u0002\n\u0000R\u0019\u0010\t\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\b0\n¢\u0006\b\n\u0000\u001a\u0004\b\u000b\u0010\fR\u0014\u0010\r\u001a\b\u0012\u0004\u0012\u00020\u000e0\u0007X\u0082\u0004¢\u0006\u0002\n\u0000R\u0017\u0010\u000f\u001a\b\u0012\u0004\u0012\u00020\u000e0\n¢\u0006\b\n\u0000\u001a\u0004\b\u000f\u0010\fR\u0016\u0010\u0010\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00110\u0007X\u0082\u0004¢\u0006\u0002\n\u0000R\u0019\u0010\u0012\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00110\n¢\u0006\b\n\u0000\u001a\u0004\b\u0013\u0010\f¨\u0006\u0018"}, d2 = {"Lorg/ies/tierno/applicationamani/presentation/viewmodels/profile/PacienteViewModel;", "Landroidx/lifecycle/ViewModel;", "profileUseCaseGeneral", "Lorg/ies/tierno/applicationamani/domain/usecases/profileUseCase/ProfileUseCaseGeneral;", "<init>", "(Lorg/ies/tierno/applicationamani/domain/usecases/profileUseCase/ProfileUseCaseGeneral;)V", "_psicologoAsignado", "Lkotlinx/coroutines/flow/MutableStateFlow;", "Lorg/ies/tierno/applicationamani/dto/perfil/PsicologoProfileResponseDTO;", "psicologoAsignado", "Lkotlinx/coroutines/flow/StateFlow;", "getPsicologoAsignado", "()Lkotlinx/coroutines/flow/StateFlow;", "_isLoading", "", "isLoading", "_error", "", "error", "getError", "cargarPsicologoAsignado", "", "idPaciente", "", "app"}, k = 1, mv = {2, 2, 0}, xi = 48)
public final class PacienteViewModel extends ViewModel {
    public static final int $stable = 8;
    private final MutableStateFlow<String> _error;
    private final MutableStateFlow<Boolean> _isLoading;
    private final MutableStateFlow<PsicologoProfileResponseDTO> _psicologoAsignado;
    private final StateFlow<String> error;
    private final StateFlow<Boolean> isLoading;
    private final ProfileUseCaseGeneral profileUseCaseGeneral;
    private final StateFlow<PsicologoProfileResponseDTO> psicologoAsignado;

    public PacienteViewModel(ProfileUseCaseGeneral profileUseCaseGeneral) {
        Intrinsics.checkNotNullParameter(profileUseCaseGeneral, "profileUseCaseGeneral");
        this.profileUseCaseGeneral = profileUseCaseGeneral;
        this._psicologoAsignado = StateFlowKt.MutableStateFlow(null);
        this.psicologoAsignado = this._psicologoAsignado;
        this._isLoading = StateFlowKt.MutableStateFlow(false);
        this.isLoading = this._isLoading;
        this._error = StateFlowKt.MutableStateFlow(null);
        this.error = this._error;
    }

    public final StateFlow<PsicologoProfileResponseDTO> getPsicologoAsignado() {
        return this.psicologoAsignado;
    }

    public final StateFlow<Boolean> isLoading() {
        return this.isLoading;
    }

    public final StateFlow<String> getError() {
        return this.error;
    }

    /* JADX INFO: renamed from: org.ies.tierno.applicationamani.presentation.viewmodels.profile.PacienteViewModel$cargarPsicologoAsignado$1, reason: invalid class name */
    /* JADX INFO: compiled from: PacienteViewModel.kt */
    @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 2, 0}, xi = 48)
    @DebugMetadata(c = "org.ies.tierno.applicationamani.presentation.viewmodels.profile.PacienteViewModel$cargarPsicologoAsignado$1", f = "PacienteViewModel.kt", i = {}, l = {28}, m = "invokeSuspend", n = {}, s = {})
    static final class AnonymousClass1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
        final /* synthetic */ long $idPaciente;
        int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        AnonymousClass1(long j, Continuation<? super AnonymousClass1> continuation) {
            super(2, continuation);
            this.$idPaciente = j;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return PacienteViewModel.this.new AnonymousClass1(this.$idPaciente, continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
            return ((AnonymousClass1) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object $result) {
            Object result;
            Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
            switch (this.label) {
                case 0:
                    ResultKt.throwOnFailure($result);
                    this.label = 1;
                    Object objM10396obtenerPsicologoAsignadogIAlus = PacienteViewModel.this.profileUseCaseGeneral.m10396obtenerPsicologoAsignadogIAlus(this.$idPaciente, this);
                    if (objM10396obtenerPsicologoAsignadogIAlus == coroutine_suspended) {
                        return coroutine_suspended;
                    }
                    result = objM10396obtenerPsicologoAsignadogIAlus;
                    break;
                    break;
                case 1:
                    ResultKt.throwOnFailure($result);
                    result = ((Result) $result).getValue();
                    break;
                default:
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            PacienteViewModel pacienteViewModel = PacienteViewModel.this;
            if (Result.m8549isSuccessimpl(result)) {
                pacienteViewModel._psicologoAsignado.setValue((PsicologoProfileResponseDTO) result);
                pacienteViewModel._error.setValue(null);
            }
            PacienteViewModel pacienteViewModel2 = PacienteViewModel.this;
            Throwable thM8545exceptionOrNullimpl = Result.m8545exceptionOrNullimpl(result);
            if (thM8545exceptionOrNullimpl != null) {
                MutableStateFlow mutableStateFlow = pacienteViewModel2._error;
                String message = thM8545exceptionOrNullimpl.getMessage();
                if (message == null) {
                    message = "Error al cargar los datos del psicólogo";
                }
                mutableStateFlow.setValue(message);
                pacienteViewModel2._psicologoAsignado.setValue(null);
            }
            PacienteViewModel.this._isLoading.setValue(Boxing.boxBoolean(false));
            return Unit.INSTANCE;
        }
    }

    public final void cargarPsicologoAsignado(long idPaciente) {
        this._isLoading.setValue(true);
        BuildersKt__Builders_commonKt.launch$default(ViewModelKt.getViewModelScope(this), null, null, new AnonymousClass1(idPaciente, null), 3, null);
    }
}
