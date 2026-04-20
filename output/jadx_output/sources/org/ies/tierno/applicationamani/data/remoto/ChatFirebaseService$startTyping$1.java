package org.ies.tierno.applicationamani.data.remoto;

import kotlin.Metadata;
import kotlin.Result;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;

/* JADX INFO: compiled from: ChatFirebaseService.kt */
/* JADX INFO: loaded from: classes10.dex */
@Metadata(k = 3, mv = {2, 2, 0}, xi = 48)
@DebugMetadata(c = "org.ies.tierno.applicationamani.data.remoto.ChatFirebaseService", f = "ChatFirebaseService.kt", i = {0, 0, 0}, l = {218}, m = "startTyping-0E7RQCE", n = {"roomId", "senderId", "receiverId"}, s = {"L$0", "J$0", "J$1"})
final class ChatFirebaseService$startTyping$1 extends ContinuationImpl {
    long J$0;
    long J$1;
    Object L$0;
    int label;
    /* synthetic */ Object result;
    final /* synthetic */ ChatFirebaseService this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    ChatFirebaseService$startTyping$1(ChatFirebaseService chatFirebaseService, Continuation<? super ChatFirebaseService$startTyping$1> continuation) {
        super(continuation);
        this.this$0 = chatFirebaseService;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.result = obj;
        this.label |= Integer.MIN_VALUE;
        Object objM10341startTyping0E7RQCE = this.this$0.m10341startTyping0E7RQCE(0L, 0L, this);
        return objM10341startTyping0E7RQCE == IntrinsicsKt.getCOROUTINE_SUSPENDED() ? objM10341startTyping0E7RQCE : Result.m8541boximpl(objM10341startTyping0E7RQCE);
    }
}
