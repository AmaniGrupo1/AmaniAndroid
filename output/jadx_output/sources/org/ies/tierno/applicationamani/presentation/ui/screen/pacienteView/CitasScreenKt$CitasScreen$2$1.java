package org.ies.tierno.applicationamani.presentation.ui.screen.pacienteView;

import androidx.compose.runtime.MutableState;
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
import org.ies.tierno.applicationamani.presentation.viewmodels.CitasViewModel;

/* JADX INFO: compiled from: CitasScreen.kt */
/* JADX INFO: loaded from: classes15.dex */
@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 2, 0}, xi = 48)
@DebugMetadata(c = "org.ies.tierno.applicationamani.presentation.ui.screen.pacienteView.CitasScreenKt$CitasScreen$2$1", f = "CitasScreen.kt", i = {}, l = {}, m = "invokeSuspend", n = {}, s = {})
final class CitasScreenKt$CitasScreen$2$1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
    final /* synthetic */ MutableState<YearMonth> $mesVisible$delegate;
    final /* synthetic */ CitasViewModel $viewModel;
    int label;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    CitasScreenKt$CitasScreen$2$1(CitasViewModel citasViewModel, MutableState<YearMonth> mutableState, Continuation<? super CitasScreenKt$CitasScreen$2$1> continuation) {
        super(2, continuation);
        this.$viewModel = citasViewModel;
        this.$mesVisible$delegate = mutableState;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        return new CitasScreenKt$CitasScreen$2$1(this.$viewModel, this.$mesVisible$delegate, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
        return ((CitasScreenKt$CitasScreen$2$1) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object $result) {
        IntrinsicsKt.getCOROUTINE_SUSPENDED();
        switch (this.label) {
            case 0:
                ResultKt.throwOnFailure($result);
                CitasViewModel citasViewModel = this.$viewModel;
                YearMonth yearMonthCitasScreen$lambda$8 = CitasScreenKt.CitasScreen$lambda$8(this.$mesVisible$delegate);
                Intrinsics.checkNotNullExpressionValue(yearMonthCitasScreen$lambda$8, "access$CitasScreen$lambda$8(...)");
                citasViewModel.cargarAgendaMensual(yearMonthCitasScreen$lambda$8);
                return Unit.INSTANCE;
            default:
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }
    }
}
