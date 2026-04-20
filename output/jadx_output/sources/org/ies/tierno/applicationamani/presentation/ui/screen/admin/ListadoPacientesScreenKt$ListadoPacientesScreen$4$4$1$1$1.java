package org.ies.tierno.applicationamani.presentation.ui.screen.admin;

import androidx.compose.material3.SnackbarHostState;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.MutableState;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SpillingKt;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.CoroutineScope;
import org.ies.tierno.applicationamani.dto.requestPaciente.DatosPacienteAdminDTO;
import org.ies.tierno.applicationamani.presentation.viewmodels.admin.ListarPacientesViewModel;

/* JADX INFO: compiled from: ListadoPacientesScreen.kt */
/* JADX INFO: loaded from: classes12.dex */
@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 2, 0}, xi = 48)
@DebugMetadata(c = "org.ies.tierno.applicationamani.presentation.ui.screen.admin.ListadoPacientesScreenKt$ListadoPacientesScreen$4$4$1$1$1", f = "ListadoPacientesScreen.kt", i = {0, 0, 1, 1, 1, 2, 2, 2}, l = {203, ComposerKt.referenceKey, 208}, m = "invokeSuspend", n = {"paciente\\1", "$i$a$-let-ListadoPacientesScreenKt$ListadoPacientesScreen$4$4$1$1$1$1\\1\\202\\0", "paciente\\1", "result\\1", "$i$a$-let-ListadoPacientesScreenKt$ListadoPacientesScreen$4$4$1$1$1$1\\1\\202\\0", "paciente\\1", "result\\1", "$i$a$-let-ListadoPacientesScreenKt$ListadoPacientesScreen$4$4$1$1$1$1\\1\\202\\0"}, s = {"L$2", "I$0", "L$0", "L$1", "I$0", "L$0", "L$1", "I$0"})
final class ListadoPacientesScreenKt$ListadoPacientesScreen$4$4$1$1$1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
    final /* synthetic */ MutableState<Boolean> $mostrarDialogoBaja$delegate;
    final /* synthetic */ MutableState<DatosPacienteAdminDTO> $pacienteSeleccionado$delegate;
    final /* synthetic */ SnackbarHostState $snackbarHostState;
    final /* synthetic */ ListarPacientesViewModel $viewModel;
    int I$0;
    Object L$0;
    Object L$1;
    Object L$2;
    int label;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    ListadoPacientesScreenKt$ListadoPacientesScreen$4$4$1$1$1(MutableState<DatosPacienteAdminDTO> mutableState, ListarPacientesViewModel listarPacientesViewModel, SnackbarHostState snackbarHostState, MutableState<Boolean> mutableState2, Continuation<? super ListadoPacientesScreenKt$ListadoPacientesScreen$4$4$1$1$1> continuation) {
        super(2, continuation);
        this.$pacienteSeleccionado$delegate = mutableState;
        this.$viewModel = listarPacientesViewModel;
        this.$snackbarHostState = snackbarHostState;
        this.$mostrarDialogoBaja$delegate = mutableState2;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        return new ListadoPacientesScreenKt$ListadoPacientesScreen$4$4$1$1$1(this.$pacienteSeleccionado$delegate, this.$viewModel, this.$snackbarHostState, this.$mostrarDialogoBaja$delegate, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
        return ((ListadoPacientesScreenKt$ListadoPacientesScreen$4$4$1$1$1) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
    }

    /* JADX WARN: Removed duplicated region for block: B:17:0x007a  */
    /* JADX WARN: Removed duplicated region for block: B:22:0x00a9  */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final Object invokeSuspend(Object $result) {
        ListadoPacientesScreenKt$ListadoPacientesScreen$4$4$1$1$1 listadoPacientesScreenKt$ListadoPacientesScreen$4$4$1$1$1;
        ListarPacientesViewModel listarPacientesViewModel;
        SnackbarHostState snackbarHostState;
        Object objM10486darBajaPacientegIAlus;
        DatosPacienteAdminDTO datosPacienteAdminDTO;
        int i;
        Object obj;
        Object objShowSnackbar$default;
        Object objShowSnackbar$default2;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        switch (this.label) {
            case 0:
                ResultKt.throwOnFailure($result);
                DatosPacienteAdminDTO datosPacienteAdminDTOListadoPacientesScreen$lambda$3 = ListadoPacientesScreenKt.ListadoPacientesScreen$lambda$3(this.$pacienteSeleccionado$delegate);
                if (datosPacienteAdminDTOListadoPacientesScreen$lambda$3 == null) {
                    listadoPacientesScreenKt$ListadoPacientesScreen$4$4$1$1$1 = this;
                    ListadoPacientesScreenKt.ListadoPacientesScreen$lambda$7(listadoPacientesScreenKt$ListadoPacientesScreen$4$4$1$1$1.$mostrarDialogoBaja$delegate, false);
                    return Unit.INSTANCE;
                }
                listarPacientesViewModel = this.$viewModel;
                snackbarHostState = this.$snackbarHostState;
                long idPaciente = datosPacienteAdminDTOListadoPacientesScreen$lambda$3.getIdPaciente();
                this.L$0 = listarPacientesViewModel;
                this.L$1 = snackbarHostState;
                this.L$2 = datosPacienteAdminDTOListadoPacientesScreen$lambda$3;
                this.I$0 = 0;
                this.label = 1;
                objM10486darBajaPacientegIAlus = listarPacientesViewModel.m10486darBajaPacientegIAlus(idPaciente, this);
                if (objM10486darBajaPacientegIAlus == coroutine_suspended) {
                    return coroutine_suspended;
                }
                datosPacienteAdminDTO = datosPacienteAdminDTOListadoPacientesScreen$lambda$3;
                i = 0;
                obj = objM10486darBajaPacientegIAlus;
                if (Result.m8549isSuccessimpl(obj)) {
                    listadoPacientesScreenKt$ListadoPacientesScreen$4$4$1$1$1 = this;
                    listadoPacientesScreenKt$ListadoPacientesScreen$4$4$1$1$1.L$0 = SpillingKt.nullOutSpilledVariable(datosPacienteAdminDTO);
                    listadoPacientesScreenKt$ListadoPacientesScreen$4$4$1$1$1.L$1 = SpillingKt.nullOutSpilledVariable(obj);
                    listadoPacientesScreenKt$ListadoPacientesScreen$4$4$1$1$1.L$2 = null;
                    listadoPacientesScreenKt$ListadoPacientesScreen$4$4$1$1$1.I$0 = i;
                    listadoPacientesScreenKt$ListadoPacientesScreen$4$4$1$1$1.label = 3;
                    objShowSnackbar$default = SnackbarHostState.showSnackbar$default(snackbarHostState, "Error al dar de baja al paciente", null, false, null, listadoPacientesScreenKt$ListadoPacientesScreen$4$4$1$1$1, 14, null);
                    if (objShowSnackbar$default == coroutine_suspended) {
                        return coroutine_suspended;
                    }
                    ListadoPacientesScreenKt.ListadoPacientesScreen$lambda$7(listadoPacientesScreenKt$ListadoPacientesScreen$4$4$1$1$1.$mostrarDialogoBaja$delegate, false);
                    return Unit.INSTANCE;
                }
                listarPacientesViewModel.actualizarPacienteBaja(datosPacienteAdminDTO.getIdPaciente());
                this.L$0 = SpillingKt.nullOutSpilledVariable(datosPacienteAdminDTO);
                this.L$1 = SpillingKt.nullOutSpilledVariable(obj);
                this.L$2 = null;
                this.I$0 = i;
                this.label = 2;
                listadoPacientesScreenKt$ListadoPacientesScreen$4$4$1$1$1 = this;
                objShowSnackbar$default2 = SnackbarHostState.showSnackbar$default(snackbarHostState, "Paciente dado de baja correctamente", null, false, null, listadoPacientesScreenKt$ListadoPacientesScreen$4$4$1$1$1, 14, null);
                if (objShowSnackbar$default2 == coroutine_suspended) {
                    return coroutine_suspended;
                }
                ListadoPacientesScreenKt.ListadoPacientesScreen$lambda$7(listadoPacientesScreenKt$ListadoPacientesScreen$4$4$1$1$1.$mostrarDialogoBaja$delegate, false);
                return Unit.INSTANCE;
            case 1:
                i = this.I$0;
                datosPacienteAdminDTO = (DatosPacienteAdminDTO) this.L$2;
                snackbarHostState = (SnackbarHostState) this.L$1;
                listarPacientesViewModel = (ListarPacientesViewModel) this.L$0;
                ResultKt.throwOnFailure($result);
                objM10486darBajaPacientegIAlus = ((Result) $result).getValue();
                obj = objM10486darBajaPacientegIAlus;
                if (Result.m8549isSuccessimpl(obj)) {
                }
                break;
            case 2:
                int i2 = this.I$0;
                Object obj2 = this.L$1;
                ResultKt.throwOnFailure($result);
                listadoPacientesScreenKt$ListadoPacientesScreen$4$4$1$1$1 = this;
                objShowSnackbar$default2 = $result;
                ListadoPacientesScreenKt.ListadoPacientesScreen$lambda$7(listadoPacientesScreenKt$ListadoPacientesScreen$4$4$1$1$1.$mostrarDialogoBaja$delegate, false);
                return Unit.INSTANCE;
            case 3:
                int i3 = this.I$0;
                Object obj3 = this.L$1;
                ResultKt.throwOnFailure($result);
                listadoPacientesScreenKt$ListadoPacientesScreen$4$4$1$1$1 = this;
                objShowSnackbar$default = $result;
                ListadoPacientesScreenKt.ListadoPacientesScreen$lambda$7(listadoPacientesScreenKt$ListadoPacientesScreen$4$4$1$1$1.$mostrarDialogoBaja$delegate, false);
                return Unit.INSTANCE;
            default:
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }
    }
}
