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
@DebugMetadata(c = "org.ies.tierno.applicationamani.data.remoto.ChatFirebaseService", f = "ChatFirebaseService.kt", i = {0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0}, l = {111}, m = "sendMessage-bMdYcbs", n = {"content", "attachmentUrl", "attachmentType", "attachmentName", "roomId", "messagesRef", "messageRef", "messageMap", "senderId", "receiverId", "messageId"}, s = {"L$0", "L$1", "L$2", "L$3", "L$4", "L$5", "L$6", "L$7", "J$0", "J$1", "J$2"})
final class ChatFirebaseService$sendMessage$1 extends ContinuationImpl {
    long J$0;
    long J$1;
    long J$2;
    Object L$0;
    Object L$1;
    Object L$2;
    Object L$3;
    Object L$4;
    Object L$5;
    Object L$6;
    Object L$7;
    int label;
    /* synthetic */ Object result;
    final /* synthetic */ ChatFirebaseService this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    ChatFirebaseService$sendMessage$1(ChatFirebaseService chatFirebaseService, Continuation<? super ChatFirebaseService$sendMessage$1> continuation) {
        super(continuation);
        this.this$0 = chatFirebaseService;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.result = obj;
        this.label |= Integer.MIN_VALUE;
        Object objM10340sendMessagebMdYcbs = this.this$0.m10340sendMessagebMdYcbs(0L, 0L, null, null, null, null, this);
        return objM10340sendMessagebMdYcbs == IntrinsicsKt.getCOROUTINE_SUSPENDED() ? objM10340sendMessagebMdYcbs : Result.m8541boximpl(objM10340sendMessagebMdYcbs);
    }
}
