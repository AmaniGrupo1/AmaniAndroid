package org.ies.tierno.applicationamani.presentation.ui.screen.pacienteView;

import androidx.compose.material3.SnackbarHostState;
import androidx.compose.runtime.State;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.BuildersKt__Builders_commonKt;
import kotlinx.coroutines.CoroutineScope;
import org.ies.tierno.applicationamani.presentation.viewmodels.CitasViewModel;

/* JADX INFO: compiled from: CitasScreen.kt */
/* JADX INFO: loaded from: classes15.dex */
@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 2, 0}, xi = 48)
@DebugMetadata(c = "org.ies.tierno.applicationamani.presentation.ui.screen.pacienteView.CitasScreenKt$CitasScreen$3$1", f = "CitasScreen.kt", i = {}, l = {}, m = "invokeSuspend", n = {}, s = {})
final class CitasScreenKt$CitasScreen$3$1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
    final /* synthetic */ State<String> $errorMessage$delegate;
    final /* synthetic */ CoroutineScope $scope;
    final /* synthetic */ SnackbarHostState $snackbarHostState;
    final /* synthetic */ CitasViewModel $viewModel;
    int label;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    CitasScreenKt$CitasScreen$3$1(State<String> state, CoroutineScope coroutineScope, SnackbarHostState snackbarHostState, CitasViewModel citasViewModel, Continuation<? super CitasScreenKt$CitasScreen$3$1> continuation) {
        super(2, continuation);
        this.$errorMessage$delegate = state;
        this.$scope = coroutineScope;
        this.$snackbarHostState = snackbarHostState;
        this.$viewModel = citasViewModel;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        return new CitasScreenKt$CitasScreen$3$1(this.$errorMessage$delegate, this.$scope, this.$snackbarHostState, this.$viewModel, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
        return ((CitasScreenKt$CitasScreen$3$1) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object $result) {
        IntrinsicsKt.getCOROUTINE_SUSPENDED();
        switch (this.label) {
            case 0:
                ResultKt.throwOnFailure($result);
                String strCitasScreen$lambda$2 = CitasScreenKt.CitasScreen$lambda$2(this.$errorMessage$delegate);
                if (strCitasScreen$lambda$2 != null) {
                    BuildersKt__Builders_commonKt.launch$default(this.$scope, null, null, new CitasScreenKt$CitasScreen$3$1$1$1(this.$snackbarHostState, strCitasScreen$lambda$2, this.$viewModel, null), 3, null);
                }
                return Unit.INSTANCE;
            default:
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }
    }
}
