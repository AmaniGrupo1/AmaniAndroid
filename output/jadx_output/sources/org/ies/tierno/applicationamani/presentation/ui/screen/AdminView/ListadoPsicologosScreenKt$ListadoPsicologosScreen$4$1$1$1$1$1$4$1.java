package org.ies.tierno.applicationamani.presentation.ui.screen.AdminView;

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
import kotlinx.coroutines.CoroutineScope;
import org.ies.tierno.applicationamani.presentation.viewmodels.LoginViewModel;

/* JADX INFO: compiled from: ListadoPsicologosScreen.kt */
/* JADX INFO: loaded from: classes8.dex */
@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 2, 0}, xi = 48)
@DebugMetadata(c = "org.ies.tierno.applicationamani.presentation.ui.screen.AdminView.ListadoPsicologosScreenKt$ListadoPsicologosScreen$4$1$1$1$1$1$4$1", f = "ListadoPsicologosScreen.kt", i = {}, l = {174, 177}, m = "invokeSuspend", n = {}, s = {})
final class ListadoPsicologosScreenKt$ListadoPsicologosScreen$4$1$1$1$1$1$4$1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
    final /* synthetic */ State<String> $asignarError$delegate;
    final /* synthetic */ State<Boolean> $asignarSuccess$delegate;
    final /* synthetic */ LoginViewModel $loginViewModel;
    final /* synthetic */ SnackbarHostState $snackbarHostState;
    int label;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    ListadoPsicologosScreenKt$ListadoPsicologosScreen$4$1$1$1$1$1$4$1(SnackbarHostState snackbarHostState, LoginViewModel loginViewModel, State<Boolean> state, State<String> state2, Continuation<? super ListadoPsicologosScreenKt$ListadoPsicologosScreen$4$1$1$1$1$1$4$1> continuation) {
        super(2, continuation);
        this.$snackbarHostState = snackbarHostState;
        this.$loginViewModel = loginViewModel;
        this.$asignarSuccess$delegate = state;
        this.$asignarError$delegate = state2;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        return new ListadoPsicologosScreenKt$ListadoPsicologosScreen$4$1$1$1$1$1$4$1(this.$snackbarHostState, this.$loginViewModel, this.$asignarSuccess$delegate, this.$asignarError$delegate, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
        return ((ListadoPsicologosScreenKt$ListadoPsicologosScreen$4$1$1$1$1$1$4$1) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object $result) {
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        switch (this.label) {
            case 0:
                ResultKt.throwOnFailure($result);
                if (!ListadoPsicologosScreenKt$ListadoPsicologosScreen$4$1$1$1$1.invoke$lambda$7$lambda$3(this.$asignarSuccess$delegate)) {
                    if (ListadoPsicologosScreenKt$ListadoPsicologosScreen$4$1$1$1$1.invoke$lambda$7$lambda$4(this.$asignarError$delegate) != null) {
                        SnackbarHostState snackbarHostState = this.$snackbarHostState;
                        String strInvoke$lambda$7$lambda$4 = ListadoPsicologosScreenKt$ListadoPsicologosScreen$4$1$1$1$1.invoke$lambda$7$lambda$4(this.$asignarError$delegate);
                        this.label = 2;
                        if (SnackbarHostState.showSnackbar$default(snackbarHostState, "Error: " + strInvoke$lambda$7$lambda$4, null, false, null, this, 14, null) == coroutine_suspended) {
                            return coroutine_suspended;
                        }
                        this.$loginViewModel.clearAsignarPsicologoResult();
                    }
                    return Unit.INSTANCE;
                }
                this.label = 1;
                if (SnackbarHostState.showSnackbar$default(this.$snackbarHostState, "Psicólogo asignado correctamente", null, false, null, this, 14, null) == coroutine_suspended) {
                    return coroutine_suspended;
                }
                this.$loginViewModel.clearAsignarPsicologoResult();
                return Unit.INSTANCE;
            case 1:
                ResultKt.throwOnFailure($result);
                this.$loginViewModel.clearAsignarPsicologoResult();
                return Unit.INSTANCE;
            case 2:
                ResultKt.throwOnFailure($result);
                this.$loginViewModel.clearAsignarPsicologoResult();
                return Unit.INSTANCE;
            default:
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }
    }
}
