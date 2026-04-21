package org.ies.tierno.applicationamani.presentation.ui.screen.psicologoView;

import androidx.compose.material3.SnackbarHostState;
import androidx.compose.runtime.MutableState;
import androidx.core.app.NotificationCompat;
import j$.time.LocalDate;
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
import org.ies.tierno.applicationamani.presentation.viewmodels.PsicologoAgendaViewModel;

/* JADX INFO: compiled from: PsicologoAgendaScreen.kt */
/* JADX INFO: loaded from: classes6.dex */
@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 2, 0}, xi = 48)
@DebugMetadata(c = "org.ies.tierno.applicationamani.presentation.ui.screen.psicologoView.PsicologoAgendaScreenKt$PsicologoAgendaScreen$10$1$1", f = "PsicologoAgendaScreen.kt", i = {0}, l = {358}, m = "invokeSuspend", n = {NotificationCompat.CATEGORY_MESSAGE}, s = {"L$0"})
final class PsicologoAgendaScreenKt$PsicologoAgendaScreen$10$1$1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
    final /* synthetic */ LocalDate $fecha;
    final /* synthetic */ MutableState<Boolean> $mostrarDialogoNoDisponible$delegate;
    final /* synthetic */ SnackbarHostState $snackbarHostState;
    final /* synthetic */ PsicologoAgendaViewModel $viewModel;
    final /* synthetic */ boolean $yaNoDisponible;
    Object L$0;
    int label;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    PsicologoAgendaScreenKt$PsicologoAgendaScreen$10$1$1(PsicologoAgendaViewModel psicologoAgendaViewModel, LocalDate localDate, boolean z, SnackbarHostState snackbarHostState, MutableState<Boolean> mutableState, Continuation<? super PsicologoAgendaScreenKt$PsicologoAgendaScreen$10$1$1> continuation) {
        super(2, continuation);
        this.$viewModel = psicologoAgendaViewModel;
        this.$fecha = localDate;
        this.$yaNoDisponible = z;
        this.$snackbarHostState = snackbarHostState;
        this.$mostrarDialogoNoDisponible$delegate = mutableState;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        return new PsicologoAgendaScreenKt$PsicologoAgendaScreen$10$1$1(this.$viewModel, this.$fecha, this.$yaNoDisponible, this.$snackbarHostState, this.$mostrarDialogoNoDisponible$delegate, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
        return ((PsicologoAgendaScreenKt$PsicologoAgendaScreen$10$1$1) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object $result) {
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        switch (this.label) {
            case 0:
                ResultKt.throwOnFailure($result);
                PsicologoAgendaViewModel.alternarDiaNoDisponible$default(this.$viewModel, this.$fecha, this.$yaNoDisponible, null, null, null, 28, null);
                PsicologoAgendaScreenKt.PsicologoAgendaScreen$lambda$18(this.$mostrarDialogoNoDisponible$delegate, false);
                boolean z = this.$yaNoDisponible;
                LocalDate localDate = this.$fecha;
                String msg = !z ? "Día " + localDate + " marcado como no disponible" : "Día " + localDate + " vuelve a estar disponible";
                this.L$0 = SpillingKt.nullOutSpilledVariable(msg);
                this.label = 1;
                if (SnackbarHostState.showSnackbar$default(this.$snackbarHostState, msg, null, false, null, this, 14, null) == coroutine_suspended) {
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
