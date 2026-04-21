package org.ies.tierno.applicationamani.presentation.ui.screen.psicologoView;

import androidx.compose.runtime.MutableState;
import androidx.compose.runtime.State;
import j$.time.YearMonth;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.CoroutineScope;
import org.ies.tierno.applicationamani.data.local.UserSession;
import org.ies.tierno.applicationamani.presentation.viewmodels.PsicologoAgendaViewModel;

/* JADX INFO: compiled from: PsicologoAgendaScreen.kt */
/* JADX INFO: loaded from: classes6.dex */
@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 2, 0}, xi = 48)
@DebugMetadata(c = "org.ies.tierno.applicationamani.presentation.ui.screen.psicologoView.PsicologoAgendaScreenKt$PsicologoAgendaScreen$2$1", f = "PsicologoAgendaScreen.kt", i = {}, l = {}, m = "invokeSuspend", n = {}, s = {})
final class PsicologoAgendaScreenKt$PsicologoAgendaScreen$2$1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
    final /* synthetic */ MutableState<YearMonth> $mesVisible$delegate;
    final /* synthetic */ State<UserSession> $userSession$delegate;
    final /* synthetic */ PsicologoAgendaViewModel $viewModel;
    int label;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    PsicologoAgendaScreenKt$PsicologoAgendaScreen$2$1(PsicologoAgendaViewModel psicologoAgendaViewModel, State<UserSession> state, MutableState<YearMonth> mutableState, Continuation<? super PsicologoAgendaScreenKt$PsicologoAgendaScreen$2$1> continuation) {
        super(2, continuation);
        this.$viewModel = psicologoAgendaViewModel;
        this.$userSession$delegate = state;
        this.$mesVisible$delegate = mutableState;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        return new PsicologoAgendaScreenKt$PsicologoAgendaScreen$2$1(this.$viewModel, this.$userSession$delegate, this.$mesVisible$delegate, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
        return ((PsicologoAgendaScreenKt$PsicologoAgendaScreen$2$1) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object $result) {
        IntrinsicsKt.getCOROUTINE_SUSPENDED();
        switch (this.label) {
            case 0:
                ResultKt.throwOnFailure($result);
                UserSession userSessionPsicologoAgendaScreen$lambda$34 = PsicologoAgendaScreenKt.PsicologoAgendaScreen$lambda$34(this.$userSession$delegate);
                if ((userSessionPsicologoAgendaScreen$lambda$34 != null ? userSessionPsicologoAgendaScreen$lambda$34.getIdPsicologo() : null) != null) {
                    PsicologoAgendaViewModel psicologoAgendaViewModel = this.$viewModel;
                    YearMonth yearMonthPsicologoAgendaScreen$lambda$10 = PsicologoAgendaScreenKt.PsicologoAgendaScreen$lambda$10(this.$mesVisible$delegate);
                    Intrinsics.checkNotNullExpressionValue(yearMonthPsicologoAgendaScreen$lambda$10, "access$PsicologoAgendaScreen$lambda$10(...)");
                    psicologoAgendaViewModel.cargarAgendaMensual(yearMonthPsicologoAgendaScreen$lambda$10);
                }
                return Unit.INSTANCE;
            default:
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }
    }
}
