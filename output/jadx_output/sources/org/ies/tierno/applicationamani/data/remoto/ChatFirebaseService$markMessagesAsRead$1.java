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
@DebugMetadata(c = "org.ies.tierno.applicationamani.data.remoto.ChatFirebaseService", f = "ChatFirebaseService.kt", i = {0, 0, 0, 0, 1, 1, 1, 1, 1, 1, 1, 1}, l = {122, 131}, m = "markMessagesAsRead-0E7RQCE", n = {"roomId", "messagesRef", "currentUserId", "otherUserId", "roomId", "messagesRef", "snapshot", "child", "currentUserId", "otherUserId", "senderIdValue", "leido"}, s = {"L$0", "L$1", "J$0", "J$1", "L$0", "L$1", "L$2", "L$4", "J$0", "J$1", "J$2", "I$0"})
final class ChatFirebaseService$markMessagesAsRead$1 extends ContinuationImpl {
    int I$0;
    long J$0;
    long J$1;
    long J$2;
    Object L$0;
    Object L$1;
    Object L$2;
    Object L$3;
    Object L$4;
    int label;
    /* synthetic */ Object result;
    final /* synthetic */ ChatFirebaseService this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    ChatFirebaseService$markMessagesAsRead$1(ChatFirebaseService chatFirebaseService, Continuation<? super ChatFirebaseService$markMessagesAsRead$1> continuation) {
        super(continuation);
        this.this$0 = chatFirebaseService;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.result = obj;
        this.label |= Integer.MIN_VALUE;
        Object objM10339markMessagesAsRead0E7RQCE = this.this$0.m10339markMessagesAsRead0E7RQCE(0L, 0L, this);
        return objM10339markMessagesAsRead0E7RQCE == IntrinsicsKt.getCOROUTINE_SUSPENDED() ? objM10339markMessagesAsRead0E7RQCE : Result.m8541boximpl(objM10339markMessagesAsRead0E7RQCE);
    }
}
