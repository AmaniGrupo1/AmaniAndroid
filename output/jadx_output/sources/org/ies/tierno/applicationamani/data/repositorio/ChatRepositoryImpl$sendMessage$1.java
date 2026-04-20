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
@DebugMetadata(c = "org.ies.tierno.applicationamani.data.repositorio.ChatRepositoryImpl", f = "ChatRepositoryImpl.kt", i = {0, 0, 0, 0, 0, 0}, l = {23}, m = "sendMessage-bMdYcbs", n = {"content", "attachmentUrl", "attachmentType", "attachmentName", "senderId", "receiverId"}, s = {"L$0", "L$1", "L$2", "L$3", "J$0", "J$1"})
final class ChatRepositoryImpl$sendMessage$1 extends ContinuationImpl {
    long J$0;
    long J$1;
    Object L$0;
    Object L$1;
    Object L$2;
    Object L$3;
    int label;
    /* synthetic */ Object result;
    final /* synthetic */ ChatRepositoryImpl this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    ChatRepositoryImpl$sendMessage$1(ChatRepositoryImpl chatRepositoryImpl, Continuation<? super ChatRepositoryImpl$sendMessage$1> continuation) {
        super(continuation);
        this.this$0 = chatRepositoryImpl;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.result = obj;
        this.label |= Integer.MIN_VALUE;
        Object objMo10350sendMessagebMdYcbs = this.this$0.mo10350sendMessagebMdYcbs(0L, 0L, null, null, null, null, this);
        return objMo10350sendMessagebMdYcbs == IntrinsicsKt.getCOROUTINE_SUSPENDED() ? objMo10350sendMessagebMdYcbs : Result.m8541boximpl(objMo10350sendMessagebMdYcbs);
    }
}
