package org.ies.tierno.applicationamani.presentation.viewmodels.chat;

import kotlin.Metadata;
import kotlin.Pair;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.Boxing;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function3;

/* JADX INFO: compiled from: ChatViewModel.kt */
/* JADX INFO: loaded from: classes16.dex */
@Metadata(d1 = {"\u0000\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\b\u0002\u0010\u0000\u001a\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00020\u00012\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0004\u001a\u00020\u0002H\n"}, d2 = {"<anonymous>", "Lkotlin/Pair;", "", "isTyping", "isOnline"}, k = 3, mv = {2, 2, 0}, xi = 48)
@DebugMetadata(c = "org.ies.tierno.applicationamani.presentation.viewmodels.chat.ChatViewModel$typingOnlineState$1", f = "ChatViewModel.kt", i = {}, l = {}, m = "invokeSuspend", n = {}, s = {})
final class ChatViewModel$typingOnlineState$1 extends SuspendLambda implements Function3<Boolean, Boolean, Continuation<? super Pair<? extends Boolean, ? extends Boolean>>, Object> {
    /* synthetic */ boolean Z$0;
    /* synthetic */ boolean Z$1;
    int label;

    ChatViewModel$typingOnlineState$1(Continuation<? super ChatViewModel$typingOnlineState$1> continuation) {
        super(3, continuation);
    }

    @Override // kotlin.jvm.functions.Function3
    public /* bridge */ /* synthetic */ Object invoke(Boolean bool, Boolean bool2, Continuation<? super Pair<? extends Boolean, ? extends Boolean>> continuation) {
        return invoke(bool.booleanValue(), bool2.booleanValue(), (Continuation<? super Pair<Boolean, Boolean>>) continuation);
    }

    public final Object invoke(boolean z, boolean z2, Continuation<? super Pair<Boolean, Boolean>> continuation) {
        ChatViewModel$typingOnlineState$1 chatViewModel$typingOnlineState$1 = new ChatViewModel$typingOnlineState$1(continuation);
        chatViewModel$typingOnlineState$1.Z$0 = z;
        chatViewModel$typingOnlineState$1.Z$1 = z2;
        return chatViewModel$typingOnlineState$1.invokeSuspend(Unit.INSTANCE);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object $result) {
        boolean isTyping = this.Z$0;
        boolean isOnline = this.Z$1;
        IntrinsicsKt.getCOROUTINE_SUSPENDED();
        switch (this.label) {
            case 0:
                ResultKt.throwOnFailure($result);
                return new Pair(Boxing.boxBoolean(isTyping), Boxing.boxBoolean(isOnline));
            default:
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }
    }
}
