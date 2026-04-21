package org.ies.tierno.applicationamani.presentation.ui.screen.psicologoView;

import androidx.compose.runtime.MutableIntState;
import androidx.compose.runtime.MutableState;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.CoroutineScope;
import org.ies.tierno.applicationamani.dto.citas.TerapiaResponseDTO;

/* JADX INFO: compiled from: PsicologoAgendaScreen.kt */
/* JADX INFO: loaded from: classes6.dex */
@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 2, 0}, xi = 48)
@DebugMetadata(c = "org.ies.tierno.applicationamani.presentation.ui.screen.psicologoView.PsicologoAgendaScreenKt$DialogoCrearEditarCita$1$1", f = "PsicologoAgendaScreen.kt", i = {}, l = {}, m = "invokeSuspend", n = {}, s = {})
final class PsicologoAgendaScreenKt$DialogoCrearEditarCita$1$1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
    final /* synthetic */ MutableIntState $duracionMinutos$delegate;
    final /* synthetic */ MutableState<TerapiaResponseDTO> $terapiaSeleccionada$delegate;
    int label;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    PsicologoAgendaScreenKt$DialogoCrearEditarCita$1$1(MutableState<TerapiaResponseDTO> mutableState, MutableIntState mutableIntState, Continuation<? super PsicologoAgendaScreenKt$DialogoCrearEditarCita$1$1> continuation) {
        super(2, continuation);
        this.$terapiaSeleccionada$delegate = mutableState;
        this.$duracionMinutos$delegate = mutableIntState;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        return new PsicologoAgendaScreenKt$DialogoCrearEditarCita$1$1(this.$terapiaSeleccionada$delegate, this.$duracionMinutos$delegate, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
        return ((PsicologoAgendaScreenKt$DialogoCrearEditarCita$1$1) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object $result) {
        IntrinsicsKt.getCOROUTINE_SUSPENDED();
        switch (this.label) {
            case 0:
                ResultKt.throwOnFailure($result);
                TerapiaResponseDTO terapiaResponseDTODialogoCrearEditarCita$lambda$177 = PsicologoAgendaScreenKt.DialogoCrearEditarCita$lambda$177(this.$terapiaSeleccionada$delegate);
                if (terapiaResponseDTODialogoCrearEditarCita$lambda$177 != null) {
                    this.$duracionMinutos$delegate.setIntValue(terapiaResponseDTODialogoCrearEditarCita$lambda$177.getDuracionMinutos());
                }
                return Unit.INSTANCE;
            default:
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }
    }
}
