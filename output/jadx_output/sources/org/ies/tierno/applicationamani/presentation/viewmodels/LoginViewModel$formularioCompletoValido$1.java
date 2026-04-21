package org.ies.tierno.applicationamani.presentation.viewmodels;

import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.Boxing;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function4;

/* JADX INFO: compiled from: LoginViewModel.kt */
/* JADX INFO: loaded from: classes14.dex */
@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0003\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u00012\u0006\u0010\u0003\u001a\u00020\u00012\u0006\u0010\u0004\u001a\u00020\u0001H\n"}, d2 = {"<anonymous>", "", "formValido", "tutorVal", "dirVal"}, k = 3, mv = {2, 2, 0}, xi = 48)
@DebugMetadata(c = "org.ies.tierno.applicationamani.presentation.viewmodels.LoginViewModel$formularioCompletoValido$1", f = "LoginViewModel.kt", i = {}, l = {}, m = "invokeSuspend", n = {}, s = {})
final class LoginViewModel$formularioCompletoValido$1 extends SuspendLambda implements Function4<Boolean, Boolean, Boolean, Continuation<? super Boolean>, Object> {
    /* synthetic */ boolean Z$0;
    /* synthetic */ boolean Z$1;
    /* synthetic */ boolean Z$2;
    int label;

    LoginViewModel$formularioCompletoValido$1(Continuation<? super LoginViewModel$formularioCompletoValido$1> continuation) {
        super(4, continuation);
    }

    @Override // kotlin.jvm.functions.Function4
    public /* bridge */ /* synthetic */ Object invoke(Boolean bool, Boolean bool2, Boolean bool3, Continuation<? super Boolean> continuation) {
        return invoke(bool.booleanValue(), bool2.booleanValue(), bool3.booleanValue(), continuation);
    }

    public final Object invoke(boolean z, boolean z2, boolean z3, Continuation<? super Boolean> continuation) {
        LoginViewModel$formularioCompletoValido$1 loginViewModel$formularioCompletoValido$1 = new LoginViewModel$formularioCompletoValido$1(continuation);
        loginViewModel$formularioCompletoValido$1.Z$0 = z;
        loginViewModel$formularioCompletoValido$1.Z$1 = z2;
        loginViewModel$formularioCompletoValido$1.Z$2 = z3;
        return loginViewModel$formularioCompletoValido$1.invokeSuspend(Unit.INSTANCE);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object $result) {
        boolean formValido = this.Z$0;
        boolean tutorVal = this.Z$1;
        boolean dirVal = this.Z$2;
        IntrinsicsKt.getCOROUTINE_SUSPENDED();
        switch (this.label) {
            case 0:
                ResultKt.throwOnFailure($result);
                return Boxing.boxBoolean(formValido && tutorVal && dirVal);
            default:
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }
    }
}
