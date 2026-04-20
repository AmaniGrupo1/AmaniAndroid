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
@DebugMetadata(c = "org.ies.tierno.applicationamani.data.remoto.ChatFirebaseService", f = "ChatFirebaseService.kt", i = {0, 0}, l = {257}, m = "updateUserOnline-0E7RQCE", n = {"userId", "isOnline"}, s = {"J$0", "Z$0"})
final class ChatFirebaseService$updateUserOnline$1 extends ContinuationImpl {
    long J$0;
    boolean Z$0;
    int label;
    /* synthetic */ Object result;
    final /* synthetic */ ChatFirebaseService this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    ChatFirebaseService$updateUserOnline$1(ChatFirebaseService chatFirebaseService, Continuation<? super ChatFirebaseService$updateUserOnline$1> continuation) {
        super(continuation);
        this.this$0 = chatFirebaseService;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.result = obj;
        this.label |= Integer.MIN_VALUE;
        Object objM10344updateUserOnline0E7RQCE = this.this$0.m10344updateUserOnline0E7RQCE(0L, false, this);
        return objM10344updateUserOnline0E7RQCE == IntrinsicsKt.getCOROUTINE_SUSPENDED() ? objM10344updateUserOnline0E7RQCE : Result.m8541boximpl(objM10344updateUserOnline0E7RQCE);
    }
}
