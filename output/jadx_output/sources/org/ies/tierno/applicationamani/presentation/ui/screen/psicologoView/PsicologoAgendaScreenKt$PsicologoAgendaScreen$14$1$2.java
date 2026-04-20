package org.ies.tierno.applicationamani.presentation.ui.screen.psicologoView;

import androidx.compose.material3.SnackbarHostState;
import androidx.compose.runtime.State;
import j$.time.LocalDate;
import j$.time.LocalTime;
import j$.time.format.DateTimeFormatter;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SpillingKt;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.CoroutineScope;
import org.ies.tierno.applicationamani.dto.psicologo.PacientePsicologoResponseDTO;

/* JADX INFO: compiled from: PsicologoAgendaScreen.kt */
/* JADX INFO: loaded from: classes6.dex */
@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 2, 0}, xi = 48)
@DebugMetadata(c = "org.ies.tierno.applicationamani.presentation.ui.screen.psicologoView.PsicologoAgendaScreenKt$PsicologoAgendaScreen$14$1$2", f = "PsicologoAgendaScreen.kt", i = {0}, l = {408}, m = "invokeSuspend", n = {"paciente"}, s = {"L$0"})
final class PsicologoAgendaScreenKt$PsicologoAgendaScreen$14$1$2 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
    final /* synthetic */ LocalDate $fecha;
    final /* synthetic */ LocalTime $hora;
    final /* synthetic */ long $idPaciente;
    final /* synthetic */ State<List<PacientePsicologoResponseDTO>> $pacientesAsignados$delegate;
    final /* synthetic */ SnackbarHostState $snackbarHostState;
    Object L$0;
    int label;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Multi-variable type inference failed */
    PsicologoAgendaScreenKt$PsicologoAgendaScreen$14$1$2(SnackbarHostState snackbarHostState, LocalDate localDate, LocalTime localTime, State<? extends List<PacientePsicologoResponseDTO>> state, long j, Continuation<? super PsicologoAgendaScreenKt$PsicologoAgendaScreen$14$1$2> continuation) {
        super(2, continuation);
        this.$snackbarHostState = snackbarHostState;
        this.$fecha = localDate;
        this.$hora = localTime;
        this.$pacientesAsignados$delegate = state;
        this.$idPaciente = j;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        return new PsicologoAgendaScreenKt$PsicologoAgendaScreen$14$1$2(this.$snackbarHostState, this.$fecha, this.$hora, this.$pacientesAsignados$delegate, this.$idPaciente, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
        return ((PsicologoAgendaScreenKt$PsicologoAgendaScreen$14$1$2) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object $result) {
        Object next;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        switch (this.label) {
            case 0:
                ResultKt.throwOnFailure($result);
                List listPsicologoAgendaScreen$lambda$28 = PsicologoAgendaScreenKt.PsicologoAgendaScreen$lambda$28(this.$pacientesAsignados$delegate);
                long j = this.$idPaciente;
                Iterator it = listPsicologoAgendaScreen$lambda$28.iterator();
                while (true) {
                    if (it.hasNext()) {
                        next = it.next();
                        Long idPaciente = ((PacientePsicologoResponseDTO) next).getIdPaciente();
                        if (idPaciente != null && idPaciente.longValue() == j) {
                        }
                    } else {
                        next = null;
                    }
                }
                PacientePsicologoResponseDTO paciente = (PacientePsicologoResponseDTO) next;
                SnackbarHostState snackbarHostState = this.$snackbarHostState;
                String nombre = paciente != null ? paciente.getNombre() : null;
                String apellido = paciente != null ? paciente.getApellido() : null;
                String str = this.$fecha.format(DateTimeFormatter.ofPattern("dd/MM/yyyy"));
                LocalTime localTime = this.$hora;
                this.L$0 = SpillingKt.nullOutSpilledVariable(paciente);
                this.label = 1;
                if (SnackbarHostState.showSnackbar$default(snackbarHostState, "✅ Cita creada: " + nombre + " " + apellido + " - " + str + " a las " + localTime, null, false, null, this, 14, null) == coroutine_suspended) {
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
