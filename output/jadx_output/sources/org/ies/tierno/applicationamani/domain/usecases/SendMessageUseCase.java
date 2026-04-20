package org.ies.tierno.applicationamani.domain.usecases;

import kotlin.Metadata;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.SpillingKt;
import kotlin.jvm.internal.Intrinsics;
import org.ies.tierno.applicationamani.data.repositorio.ChatRepository;
import org.ies.tierno.applicationamani.domain.models.AttachmentType;

/* JADX INFO: compiled from: SendMessageUseCase.kt */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u00004\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0007\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0004\b\u0004\u0010\u0005JR\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\b0\u00072\u0006\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\n2\u0006\u0010\f\u001a\u00020\r2\n\b\u0002\u0010\u000e\u001a\u0004\u0018\u00010\r2\n\b\u0002\u0010\u000f\u001a\u0004\u0018\u00010\u00102\n\b\u0002\u0010\u0011\u001a\u0004\u0018\u00010\rH\u0086B¢\u0006\u0004\b\u0012\u0010\u0013R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\u0014"}, d2 = {"Lorg/ies/tierno/applicationamani/domain/usecases/SendMessageUseCase;", "", "chatRepository", "Lorg/ies/tierno/applicationamani/data/repositorio/ChatRepository;", "<init>", "(Lorg/ies/tierno/applicationamani/data/repositorio/ChatRepository;)V", "invoke", "Lkotlin/Result;", "", "senderId", "", "receiverId", "content", "", "attachmentUrl", "attachmentType", "Lorg/ies/tierno/applicationamani/domain/models/AttachmentType;", "attachmentName", "invoke-bMdYcbs", "(JJLjava/lang/String;Ljava/lang/String;Lorg/ies/tierno/applicationamani/domain/models/AttachmentType;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "app"}, k = 1, mv = {2, 2, 0}, xi = 48)
public final class SendMessageUseCase {
    public static final int $stable = 8;
    private final ChatRepository chatRepository;

    public SendMessageUseCase(ChatRepository chatRepository) {
        Intrinsics.checkNotNullParameter(chatRepository, "chatRepository");
        this.chatRepository = chatRepository;
    }

    /* JADX INFO: renamed from: invoke-bMdYcbs$default, reason: not valid java name */
    public static /* synthetic */ Object m10380invokebMdYcbs$default(SendMessageUseCase sendMessageUseCase, long j, long j2, String str, String str2, AttachmentType attachmentType, String str3, Continuation continuation, int i, Object obj) {
        if ((i & 8) != 0) {
            str2 = null;
        }
        if ((i & 16) != 0) {
            attachmentType = null;
        }
        if ((i & 32) != 0) {
            str3 = null;
        }
        return sendMessageUseCase.m10381invokebMdYcbs(j, j2, str, str2, attachmentType, str3, continuation);
    }

    /* JADX WARN: Removed duplicated region for block: B:7:0x0016  */
    /* JADX INFO: renamed from: invoke-bMdYcbs, reason: not valid java name */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final Object m10381invokebMdYcbs(long senderId, long receiverId, String content, String attachmentUrl, AttachmentType attachmentType, String attachmentName, Continuation<? super Result<Unit>> continuation) {
        SendMessageUseCase$invoke$1 sendMessageUseCase$invoke$1;
        if (continuation instanceof SendMessageUseCase$invoke$1) {
            sendMessageUseCase$invoke$1 = (SendMessageUseCase$invoke$1) continuation;
            if ((sendMessageUseCase$invoke$1.label & Integer.MIN_VALUE) != 0) {
                sendMessageUseCase$invoke$1.label -= Integer.MIN_VALUE;
            } else {
                sendMessageUseCase$invoke$1 = new SendMessageUseCase$invoke$1(this, continuation);
            }
        }
        SendMessageUseCase$invoke$1 sendMessageUseCase$invoke$12 = sendMessageUseCase$invoke$1;
        Object $result = sendMessageUseCase$invoke$12.result;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        switch (sendMessageUseCase$invoke$12.label) {
            case 0:
                ResultKt.throwOnFailure($result);
                ChatRepository chatRepository = this.chatRepository;
                sendMessageUseCase$invoke$12.L$0 = SpillingKt.nullOutSpilledVariable(content);
                sendMessageUseCase$invoke$12.L$1 = SpillingKt.nullOutSpilledVariable(attachmentUrl);
                sendMessageUseCase$invoke$12.L$2 = SpillingKt.nullOutSpilledVariable(attachmentType);
                sendMessageUseCase$invoke$12.L$3 = SpillingKt.nullOutSpilledVariable(attachmentName);
                sendMessageUseCase$invoke$12.J$0 = senderId;
                sendMessageUseCase$invoke$12.J$1 = receiverId;
                sendMessageUseCase$invoke$12.label = 1;
                Object objMo10350sendMessagebMdYcbs = chatRepository.mo10350sendMessagebMdYcbs(senderId, receiverId, content, attachmentUrl, attachmentType, attachmentName, sendMessageUseCase$invoke$12);
                return objMo10350sendMessagebMdYcbs == coroutine_suspended ? coroutine_suspended : objMo10350sendMessagebMdYcbs;
            case 1:
                long j = sendMessageUseCase$invoke$12.J$1;
                long senderId2 = sendMessageUseCase$invoke$12.J$0;
                ResultKt.throwOnFailure($result);
                return ((Result) $result).getValue();
            default:
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }
    }
}
