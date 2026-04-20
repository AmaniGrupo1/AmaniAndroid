package org.ies.tierno.applicationamani.presentation.ui.screen;

import androidx.compose.material3.SnackbarDuration;
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

/* JADX INFO: compiled from: LoginScreen.kt */
/* JADX INFO: loaded from: classes11.dex */
@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 2, 0}, xi = 48)
@DebugMetadata(c = "org.ies.tierno.applicationamani.presentation.ui.screen.LoginScreenKt$LoginScreen$1$1", f = "LoginScreen.kt", i = {}, l = {92}, m = "invokeSuspend", n = {}, s = {})
final class LoginScreenKt$LoginScreen$1$1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
    final /* synthetic */ State<String> $loginError$delegate;
    final /* synthetic */ SnackbarHostState $snackbarHostState;
    int label;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    LoginScreenKt$LoginScreen$1$1(SnackbarHostState snackbarHostState, State<String> state, Continuation<? super LoginScreenKt$LoginScreen$1$1> continuation) {
        super(2, continuation);
        this.$snackbarHostState = snackbarHostState;
        this.$loginError$delegate = state;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        return new LoginScreenKt$LoginScreen$1$1(this.$snackbarHostState, this.$loginError$delegate, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
        return ((LoginScreenKt$LoginScreen$1$1) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object $result) {
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        switch (this.label) {
            case 0:
                ResultKt.throwOnFailure($result);
                String strLoginScreen$lambda$4 = LoginScreenKt.LoginScreen$lambda$4(this.$loginError$delegate);
                if (!(strLoginScreen$lambda$4 == null || StringsKt.isBlank(strLoginScreen$lambda$4))) {
                    SnackbarHostState snackbarHostState = this.$snackbarHostState;
                    String strLoginScreen$lambda$42 = LoginScreenKt.LoginScreen$lambda$4(this.$loginError$delegate);
                    if (strLoginScreen$lambda$42 == null) {
                        strLoginScreen$lambda$42 = "Error al iniciar sesión";
                    }
                    this.label = 1;
                    if (SnackbarHostState.showSnackbar$default(snackbarHostState, strLoginScreen$lambda$42, null, false, SnackbarDuration.Short, this, 6, null) == coroutine_suspended) {
                        return coroutine_suspended;
                    }
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
