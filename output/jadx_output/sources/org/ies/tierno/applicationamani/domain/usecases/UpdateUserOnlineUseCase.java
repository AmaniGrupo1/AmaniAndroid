package org.ies.tierno.applicationamani.domain.usecases;

import kotlin.Metadata;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.jvm.internal.Intrinsics;
import org.ies.tierno.applicationamani.data.repositorio.ChatRepository;

/* JADX INFO: compiled from: UpdateUserOnlineUseCase.kt */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000*\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0003\b\u0007\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0004\b\u0004\u0010\u0005J&\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\b0\u00072\u0006\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\fH\u0086B¢\u0006\u0004\b\r\u0010\u000eR\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\u000f"}, d2 = {"Lorg/ies/tierno/applicationamani/domain/usecases/UpdateUserOnlineUseCase;", "", "chatRepository", "Lorg/ies/tierno/applicationamani/data/repositorio/ChatRepository;", "<init>", "(Lorg/ies/tierno/applicationamani/data/repositorio/ChatRepository;)V", "invoke", "Lkotlin/Result;", "", "userId", "", "isOnline", "", "invoke-0E7RQCE", "(JZLkotlin/coroutines/Continuation;)Ljava/lang/Object;", "app"}, k = 1, mv = {2, 2, 0}, xi = 48)
public final class UpdateUserOnlineUseCase {
    public static final int $stable = 8;
    private final ChatRepository chatRepository;

    public UpdateUserOnlineUseCase(ChatRepository chatRepository) {
        Intrinsics.checkNotNullParameter(chatRepository, "chatRepository");
        this.chatRepository = chatRepository;
    }

    /* JADX WARN: Removed duplicated region for block: B:7:0x0014  */
    /* JADX INFO: renamed from: invoke-0E7RQCE, reason: not valid java name */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final Object m10384invoke0E7RQCE(long userId, boolean isOnline, Continuation<? super Result<Unit>> continuation) {
        UpdateUserOnlineUseCase$invoke$1 updateUserOnlineUseCase$invoke$1;
        if (continuation instanceof UpdateUserOnlineUseCase$invoke$1) {
            updateUserOnlineUseCase$invoke$1 = (UpdateUserOnlineUseCase$invoke$1) continuation;
            if ((updateUserOnlineUseCase$invoke$1.label & Integer.MIN_VALUE) != 0) {
                updateUserOnlineUseCase$invoke$1.label -= Integer.MIN_VALUE;
            } else {
                updateUserOnlineUseCase$invoke$1 = new UpdateUserOnlineUseCase$invoke$1(this, continuation);
            }
        }
        Object $result = updateUserOnlineUseCase$invoke$1.result;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        switch (updateUserOnlineUseCase$invoke$1.label) {
            case 0:
                ResultKt.throwOnFailure($result);
                ChatRepository chatRepository = this.chatRepository;
                updateUserOnlineUseCase$invoke$1.J$0 = userId;
                updateUserOnlineUseCase$invoke$1.Z$0 = isOnline;
                updateUserOnlineUseCase$invoke$1.label = 1;
                Object objMo10354updateUserOnline0E7RQCE = chatRepository.mo10354updateUserOnline0E7RQCE(userId, isOnline, updateUserOnlineUseCase$invoke$1);
                if (objMo10354updateUserOnline0E7RQCE == coroutine_suspended) {
                    return coroutine_suspended;
                }
                return objMo10354updateUserOnline0E7RQCE;
            case 1:
                boolean isOnline2 = updateUserOnlineUseCase$invoke$1.Z$0;
                long userId2 = updateUserOnlineUseCase$invoke$1.J$0;
                ResultKt.throwOnFailure($result);
                return ((Result) $result).getValue();
            default:
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }
    }
}
