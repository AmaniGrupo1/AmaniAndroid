package org.ies.tierno.applicationamani.domain.usecases;

import kotlin.Metadata;
import kotlin.Result;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;

/* JADX INFO: compiled from: SendMessageUseCase.kt */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(k = 3, mv = {2, 2, 0}, xi = 48)
@DebugMetadata(c = "org.ies.tierno.applicationamani.domain.usecases.SendMessageUseCase", f = "SendMessageUseCase.kt", i = {0, 0, 0, 0, 0, 0}, l = {15}, m = "invoke-bMdYcbs", n = {"content", "attachmentUrl", "attachmentType", "attachmentName", "senderId", "receiverId"}, s = {"L$0", "L$1", "L$2", "L$3", "J$0", "J$1"})
final class SendMessageUseCase$invoke$1 extends ContinuationImpl {
    long J$0;
    long J$1;
    Object L$0;
    Object L$1;
    Object L$2;
    Object L$3;
    int label;
    /* synthetic */ Object result;
    final /* synthetic */ SendMessageUseCase this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    SendMessageUseCase$invoke$1(SendMessageUseCase sendMessageUseCase, Continuation<? super SendMessageUseCase$invoke$1> continuation) {
        super(continuation);
        this.this$0 = sendMessageUseCase;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.result = obj;
        this.label |= Integer.MIN_VALUE;
        Object objM10381invokebMdYcbs = this.this$0.m10381invokebMdYcbs(0L, 0L, null, null, null, null, this);
        return objM10381invokebMdYcbs == IntrinsicsKt.getCOROUTINE_SUSPENDED() ? objM10381invokebMdYcbs : Result.m8541boximpl(objM10381invokebMdYcbs);
    }
}
