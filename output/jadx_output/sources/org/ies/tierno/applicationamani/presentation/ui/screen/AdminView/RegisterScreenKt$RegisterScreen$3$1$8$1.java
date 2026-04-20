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
import kotlin.text.StringsKt;
import kotlinx.coroutines.CoroutineScope;
import org.ies.tierno.applicationamani.presentation.viewmodels.LoginViewModel;

/* JADX INFO: compiled from: RegisterScreen.kt */
/* JADX INFO: loaded from: classes8.dex */
@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 2, 0}, xi = 48)
@DebugMetadata(c = "org.ies.tierno.applicationamani.presentation.ui.screen.AdminView.RegisterScreenKt$RegisterScreen$3$1$8$1", f = "RegisterScreen.kt", i = {}, l = {767, 770}, m = "invokeSuspend", n = {}, s = {})
final class RegisterScreenKt$RegisterScreen$3$1$8$1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
    final /* synthetic */ LoginViewModel $loginViewModel;
    final /* synthetic */ State<String> $registerError$delegate;
    final /* synthetic */ State<Boolean> $registerSuccess$delegate;
    final /* synthetic */ SnackbarHostState $snackbarHostState;
    int label;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    RegisterScreenKt$RegisterScreen$3$1$8$1(SnackbarHostState snackbarHostState, LoginViewModel loginViewModel, State<Boolean> state, State<String> state2, Continuation<? super RegisterScreenKt$RegisterScreen$3$1$8$1> continuation) {
        super(2, continuation);
        this.$snackbarHostState = snackbarHostState;
        this.$loginViewModel = loginViewModel;
        this.$registerSuccess$delegate = state;
        this.$registerError$delegate = state2;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        return new RegisterScreenKt$RegisterScreen$3$1$8$1(this.$snackbarHostState, this.$loginViewModel, this.$registerSuccess$delegate, this.$registerError$delegate, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
        return ((RegisterScreenKt$RegisterScreen$3$1$8$1) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object $result) {
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        switch (this.label) {
            case 0:
                ResultKt.throwOnFailure($result);
                boolean z = true;
                if (!RegisterScreenKt.RegisterScreen$lambda$188$lambda$187$lambda$181(this.$registerSuccess$delegate)) {
                    String strRegisterScreen$lambda$188$lambda$187$lambda$182 = RegisterScreenKt.RegisterScreen$lambda$188$lambda$187$lambda$182(this.$registerError$delegate);
                    if (strRegisterScreen$lambda$188$lambda$187$lambda$182 != null && !StringsKt.isBlank(strRegisterScreen$lambda$188$lambda$187$lambda$182)) {
                        z = false;
                    }
                    if (!z) {
                        SnackbarHostState snackbarHostState = this.$snackbarHostState;
                        String strRegisterScreen$lambda$188$lambda$187$lambda$1822 = RegisterScreenKt.RegisterScreen$lambda$188$lambda$187$lambda$182(this.$registerError$delegate);
                        this.label = 2;
                        if (SnackbarHostState.showSnackbar$default(snackbarHostState, "Error: " + strRegisterScreen$lambda$188$lambda$187$lambda$1822, null, true, null, this, 10, null) == coroutine_suspended) {
                            return coroutine_suspended;
                        }
                        this.$loginViewModel.resetRegisterState();
                    }
                    return Unit.INSTANCE;
                }
                this.label = 1;
                if (SnackbarHostState.showSnackbar$default(this.$snackbarHostState, "Paciente registrado correctamente", null, true, null, this, 10, null) == coroutine_suspended) {
                    return coroutine_suspended;
                }
                this.$loginViewModel.resetRegisterState();
                return Unit.INSTANCE;
            case 1:
                ResultKt.throwOnFailure($result);
                this.$loginViewModel.resetRegisterState();
                return Unit.INSTANCE;
            case 2:
                ResultKt.throwOnFailure($result);
                this.$loginViewModel.resetRegisterState();
                return Unit.INSTANCE;
            default:
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }
    }
}
