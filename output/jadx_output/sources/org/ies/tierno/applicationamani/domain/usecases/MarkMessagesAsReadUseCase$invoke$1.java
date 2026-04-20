package org.ies.tierno.applicationamani.domain.usecases;

import kotlin.Metadata;
import kotlin.Result;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;

/* JADX INFO: compiled from: MarkMessagesAsReadUseCase.kt */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(k = 3, mv = {2, 2, 0}, xi = 48)
@DebugMetadata(c = "org.ies.tierno.applicationamani.domain.usecases.MarkMessagesAsReadUseCase", f = "MarkMessagesAsReadUseCase.kt", i = {0, 0}, l = {7}, m = "invoke-0E7RQCE", n = {"currentUserId", "otherUserId"}, s = {"J$0", "J$1"})
final class MarkMessagesAsReadUseCase$invoke$1 extends ContinuationImpl {
    long J$0;
    long J$1;
    int label;
    /* synthetic */ Object result;
    final /* synthetic */ MarkMessagesAsReadUseCase this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    MarkMessagesAsReadUseCase$invoke$1(MarkMessagesAsReadUseCase markMessagesAsReadUseCase, Continuation<? super MarkMessagesAsReadUseCase$invoke$1> continuation) {
        super(continuation);
        this.this$0 = markMessagesAsReadUseCase;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.result = obj;
        this.label |= Integer.MIN_VALUE;
        Object objM10379invoke0E7RQCE = this.this$0.m10379invoke0E7RQCE(0L, 0L, this);
        return objM10379invoke0E7RQCE == IntrinsicsKt.getCOROUTINE_SUSPENDED() ? objM10379invoke0E7RQCE : Result.m8541boximpl(objM10379invoke0E7RQCE);
    }
}
