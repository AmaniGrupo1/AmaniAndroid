package org.ies.tierno.applicationamani.domain.usecases;

import kotlin.Metadata;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.jvm.internal.Intrinsics;
import org.ies.tierno.applicationamani.data.repositorio.ChatRepository;

/* JADX INFO: compiled from: MarkMessageAsReadUseCase.kt */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\t\n\u0002\b\u0004\b\u0007\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0004\b\u0004\u0010\u0005J&\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\b0\u00072\u0006\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\nH\u0086B¢\u0006\u0004\b\f\u0010\rR\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\u000e"}, d2 = {"Lorg/ies/tierno/applicationamani/domain/usecases/MarkMessageAsReadUseCase;", "", "chatRepository", "Lorg/ies/tierno/applicationamani/data/repositorio/ChatRepository;", "<init>", "(Lorg/ies/tierno/applicationamani/data/repositorio/ChatRepository;)V", "invoke", "Lkotlin/Result;", "", "messageId", "", "receiverId", "invoke-0E7RQCE", "(JJLkotlin/coroutines/Continuation;)Ljava/lang/Object;", "app"}, k = 1, mv = {2, 2, 0}, xi = 48)
public final class MarkMessageAsReadUseCase {
    public static final int $stable = 8;
    private final ChatRepository chatRepository;

    public MarkMessageAsReadUseCase(ChatRepository chatRepository) {
        Intrinsics.checkNotNullParameter(chatRepository, "chatRepository");
        this.chatRepository = chatRepository;
    }

    /* JADX WARN: Removed duplicated region for block: B:7:0x0014  */
    /* JADX INFO: renamed from: invoke-0E7RQCE, reason: not valid java name */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final Object m10377invoke0E7RQCE(long messageId, long receiverId, Continuation<? super Result<Unit>> continuation) {
        MarkMessageAsReadUseCase$invoke$1 markMessageAsReadUseCase$invoke$1;
        if (continuation instanceof MarkMessageAsReadUseCase$invoke$1) {
            markMessageAsReadUseCase$invoke$1 = (MarkMessageAsReadUseCase$invoke$1) continuation;
            if ((markMessageAsReadUseCase$invoke$1.label & Integer.MIN_VALUE) != 0) {
                markMessageAsReadUseCase$invoke$1.label -= Integer.MIN_VALUE;
            } else {
                markMessageAsReadUseCase$invoke$1 = new MarkMessageAsReadUseCase$invoke$1(this, continuation);
            }
        }
        MarkMessageAsReadUseCase$invoke$1 markMessageAsReadUseCase$invoke$12 = markMessageAsReadUseCase$invoke$1;
        Object $result = markMessageAsReadUseCase$invoke$12.result;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        switch (markMessageAsReadUseCase$invoke$12.label) {
            case 0:
                ResultKt.throwOnFailure($result);
                ChatRepository chatRepository = this.chatRepository;
                markMessageAsReadUseCase$invoke$12.J$0 = messageId;
                markMessageAsReadUseCase$invoke$12.J$1 = receiverId;
                markMessageAsReadUseCase$invoke$12.label = 1;
                Object objMo10347markMessageAsRead0E7RQCE = chatRepository.mo10347markMessageAsRead0E7RQCE(messageId, receiverId, markMessageAsReadUseCase$invoke$12);
                return objMo10347markMessageAsRead0E7RQCE == coroutine_suspended ? coroutine_suspended : objMo10347markMessageAsRead0E7RQCE;
            case 1:
                long receiverId2 = markMessageAsReadUseCase$invoke$12.J$1;
                long messageId2 = markMessageAsReadUseCase$invoke$12.J$0;
                ResultKt.throwOnFailure($result);
                return ((Result) $result).getValue();
            default:
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }
    }
}
