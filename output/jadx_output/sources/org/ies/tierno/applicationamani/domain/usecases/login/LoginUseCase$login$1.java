package org.ies.tierno.applicationamani.domain.usecases.login;

import kotlin.Metadata;
import kotlin.Result;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;

/* JADX INFO: compiled from: LoginUseCase.kt */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(k = 3, mv = {2, 2, 0}, xi = 48)
@DebugMetadata(c = "org.ies.tierno.applicationamani.domain.usecases.login.LoginUseCase", f = "LoginUseCase.kt", i = {0}, l = {26}, m = "login-gIAlu-s", n = {"request"}, s = {"L$0"})
final class LoginUseCase$login$1 extends ContinuationImpl {
    Object L$0;
    int label;
    /* synthetic */ Object result;
    final /* synthetic */ LoginUseCase this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    LoginUseCase$login$1(LoginUseCase loginUseCase, Continuation<? super LoginUseCase$login$1> continuation) {
        super(continuation);
        this.this$0 = loginUseCase;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.result = obj;
        this.label |= Integer.MIN_VALUE;
        Object objM10387logingIAlus = this.this$0.m10387logingIAlus(null, this);
        return objM10387logingIAlus == IntrinsicsKt.getCOROUTINE_SUSPENDED() ? objM10387logingIAlus : Result.m8541boximpl(objM10387logingIAlus);
    }
}
