package org.ies.tierno.applicationamani.data.repositorio;

import kotlin.Metadata;
import kotlin.Result;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;

/* JADX INFO: compiled from: ChatRepositoryImpl.kt */
/* JADX INFO: loaded from: classes16.dex */
@Metadata(k = 3, mv = {2, 2, 0}, xi = 48)
@DebugMetadata(c = "org.ies.tierno.applicationamani.data.repositorio.ChatRepositoryImpl", f = "ChatRepositoryImpl.kt", i = {0, 0}, l = {38}, m = "getMessages-0E7RQCE", n = {"currentUserId", "otherUserId"}, s = {"J$0", "J$1"})
final class ChatRepositoryImpl$getMessages$1 extends ContinuationImpl {
    long J$0;
    long J$1;
    int label;
    /* synthetic */ Object result;
    final /* synthetic */ ChatRepositoryImpl this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    ChatRepositoryImpl$getMessages$1(ChatRepositoryImpl chatRepositoryImpl, Continuation<? super ChatRepositoryImpl$getMessages$1> continuation) {
        super(continuation);
        this.this$0 = chatRepositoryImpl;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.result = obj;
        this.label |= Integer.MIN_VALUE;
        Object objMo10346getMessages0E7RQCE = this.this$0.mo10346getMessages0E7RQCE(0L, 0L, this);
        return objMo10346getMessages0E7RQCE == IntrinsicsKt.getCOROUTINE_SUSPENDED() ? objMo10346getMessages0E7RQCE : Result.m8541boximpl(objMo10346getMessages0E7RQCE);
    }
}
