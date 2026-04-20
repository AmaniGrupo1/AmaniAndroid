package org.ies.tierno.applicationamani.domain.usecases;

import kotlin.Metadata;
import kotlin.Result;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;

/* JADX INFO: compiled from: UpdateUserOnlineUseCase.kt */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(k = 3, mv = {2, 2, 0}, xi = 48)
@DebugMetadata(c = "org.ies.tierno.applicationamani.domain.usecases.UpdateUserOnlineUseCase", f = "UpdateUserOnlineUseCase.kt", i = {0, 0}, l = {8}, m = "invoke-0E7RQCE", n = {"userId", "isOnline"}, s = {"J$0", "Z$0"})
final class UpdateUserOnlineUseCase$invoke$1 extends ContinuationImpl {
    long J$0;
    boolean Z$0;
    int label;
    /* synthetic */ Object result;
    final /* synthetic */ UpdateUserOnlineUseCase this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    UpdateUserOnlineUseCase$invoke$1(UpdateUserOnlineUseCase updateUserOnlineUseCase, Continuation<? super UpdateUserOnlineUseCase$invoke$1> continuation) {
        super(continuation);
        this.this$0 = updateUserOnlineUseCase;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.result = obj;
        this.label |= Integer.MIN_VALUE;
        Object objM10384invoke0E7RQCE = this.this$0.m10384invoke0E7RQCE(0L, false, this);
        return objM10384invoke0E7RQCE == IntrinsicsKt.getCOROUTINE_SUSPENDED() ? objM10384invoke0E7RQCE : Result.m8541boximpl(objM10384invoke0E7RQCE);
    }
}
