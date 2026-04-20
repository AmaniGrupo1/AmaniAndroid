package org.ies.tierno.applicationamani.data;

import kotlin.Metadata;
import kotlin.Result;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;

/* JADX INFO: compiled from: AuthRepository.kt */
/* JADX INFO: loaded from: classes7.dex */
@Metadata(k = 3, mv = {2, 2, 0}, xi = 48)
@DebugMetadata(c = "org.ies.tierno.applicationamani.data.AuthRepository", f = "AuthRepository.kt", i = {0}, l = {177}, m = "registerPsicologo-gIAlu-s", n = {"request"}, s = {"L$0"})
final class AuthRepository$registerPsicologo$1 extends ContinuationImpl {
    Object L$0;
    int label;
    /* synthetic */ Object result;
    final /* synthetic */ AuthRepository this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    AuthRepository$registerPsicologo$1(AuthRepository authRepository, Continuation<? super AuthRepository$registerPsicologo$1> continuation) {
        super(continuation);
        this.this$0 = authRepository;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.result = obj;
        this.label |= Integer.MIN_VALUE;
        Object objM10333registerPsicologogIAlus = this.this$0.m10333registerPsicologogIAlus(null, this);
        return objM10333registerPsicologogIAlus == IntrinsicsKt.getCOROUTINE_SUSPENDED() ? objM10333registerPsicologogIAlus : Result.m8541boximpl(objM10333registerPsicologogIAlus);
    }
}
