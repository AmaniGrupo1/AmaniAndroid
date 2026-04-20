package org.ies.tierno.applicationamani.data.repositorio;

import java.util.List;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.Boxing;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SpillingKt;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.flow.Flow;
import kotlinx.coroutines.flow.FlowCollector;
import kotlinx.coroutines.flow.FlowKt;
import org.ies.tierno.applicationamani.data.remoto.ChatFirebaseService;
import org.ies.tierno.applicationamani.domain.models.AttachmentType;
import org.ies.tierno.applicationamani.domain.models.Message;

/* JADX INFO: compiled from: ChatRepositoryImpl.kt */
/* JADX INFO: loaded from: classes16.dex */
@Metadata(d1 = {"\u0000L\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\t\n\u0002\u0010\u000b\n\u0002\b\u0017\b\u0007\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0004\b\u0004\u0010\u0005J$\u0010\u0006\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\t0\b0\u00072\u0006\u0010\n\u001a\u00020\u000b2\u0006\u0010\f\u001a\u00020\u000bH\u0016JL\u0010\r\u001a\b\u0012\u0004\u0012\u00020\u000f0\u000e2\u0006\u0010\u0010\u001a\u00020\u000b2\u0006\u0010\u0011\u001a\u00020\u000b2\u0006\u0010\u0012\u001a\u00020\u00132\b\u0010\u0014\u001a\u0004\u0018\u00010\u00132\b\u0010\u0015\u001a\u0004\u0018\u00010\u00162\b\u0010\u0017\u001a\u0004\u0018\u00010\u0013H\u0096@¢\u0006\u0004\b\u0018\u0010\u0019J&\u0010\u001a\u001a\b\u0012\u0004\u0012\u00020\u000f0\u000e2\u0006\u0010\n\u001a\u00020\u000b2\u0006\u0010\f\u001a\u00020\u000bH\u0096@¢\u0006\u0004\b\u001b\u0010\u001cJ,\u0010\u001d\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\t0\b0\u000e2\u0006\u0010\n\u001a\u00020\u000b2\u0006\u0010\f\u001a\u00020\u000bH\u0096@¢\u0006\u0004\b\u001e\u0010\u001cJ\u001e\u0010\u001f\u001a\b\u0012\u0004\u0012\u00020 0\u00072\u0006\u0010!\u001a\u00020\u000b2\u0006\u0010\"\u001a\u00020\u000bH\u0016J&\u0010#\u001a\b\u0012\u0004\u0012\u00020\u000f0\u000e2\u0006\u0010\u0010\u001a\u00020\u000b2\u0006\u0010\u0011\u001a\u00020\u000bH\u0096@¢\u0006\u0004\b$\u0010\u001cJ&\u0010%\u001a\b\u0012\u0004\u0012\u00020\u000f0\u000e2\u0006\u0010\u0010\u001a\u00020\u000b2\u0006\u0010\u0011\u001a\u00020\u000bH\u0096@¢\u0006\u0004\b&\u0010\u001cJ\u0016\u0010'\u001a\b\u0012\u0004\u0012\u00020 0\u00072\u0006\u0010(\u001a\u00020\u000bH\u0016J&\u0010)\u001a\b\u0012\u0004\u0012\u00020\u000f0\u000e2\u0006\u0010(\u001a\u00020\u000b2\u0006\u0010*\u001a\u00020 H\u0096@¢\u0006\u0004\b+\u0010,J&\u0010-\u001a\b\u0012\u0004\u0012\u00020\u000f0\u000e2\u0006\u0010(\u001a\u00020\u000b2\u0006\u0010.\u001a\u00020\u000bH\u0096@¢\u0006\u0004\b/\u0010\u001cJ&\u00100\u001a\b\u0012\u0004\u0012\u00020\u000f0\u000e2\u0006\u00101\u001a\u00020\u000b2\u0006\u0010\u0011\u001a\u00020\u000bH\u0096@¢\u0006\u0004\b2\u0010\u001cJ&\u00103\u001a\b\u0012\u0004\u0012\u00020\u000f0\u000e2\u0006\u00101\u001a\u00020\u000b2\u0006\u0010\u0011\u001a\u00020\u000bH\u0096@¢\u0006\u0004\b4\u0010\u001cJ\u001e\u00105\u001a\b\u0012\u0004\u0012\u00020 0\u00072\u0006\u00101\u001a\u00020\u000b2\u0006\u0010\u0011\u001a\u00020\u000bH\u0016J\u001e\u00106\u001a\b\u0012\u0004\u0012\u00020 0\u00072\u0006\u00101\u001a\u00020\u000b2\u0006\u0010\u0011\u001a\u00020\u000bH\u0016R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000¨\u00067"}, d2 = {"Lorg/ies/tierno/applicationamani/data/repositorio/ChatRepositoryImpl;", "Lorg/ies/tierno/applicationamani/data/repositorio/ChatRepository;", "chatFirebaseService", "Lorg/ies/tierno/applicationamani/data/remoto/ChatFirebaseService;", "<init>", "(Lorg/ies/tierno/applicationamani/data/remoto/ChatFirebaseService;)V", "observeMessages", "Lkotlinx/coroutines/flow/Flow;", "", "Lorg/ies/tierno/applicationamani/domain/models/Message;", "currentUserId", "", "otherUserId", "sendMessage", "Lkotlin/Result;", "", "senderId", "receiverId", "content", "", "attachmentUrl", "attachmentType", "Lorg/ies/tierno/applicationamani/domain/models/AttachmentType;", "attachmentName", "sendMessage-bMdYcbs", "(JJLjava/lang/String;Ljava/lang/String;Lorg/ies/tierno/applicationamani/domain/models/AttachmentType;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "markMessagesAsRead", "markMessagesAsRead-0E7RQCE", "(JJLkotlin/coroutines/Continuation;)Ljava/lang/Object;", "getMessages", "getMessages-0E7RQCE", "observeTyping", "", "userId1", "userId2", "startTyping", "startTyping-0E7RQCE", "stopTyping", "stopTyping-0E7RQCE", "observeUserOnline", "userId", "updateUserOnline", "isOnline", "updateUserOnline-0E7RQCE", "(JZLkotlin/coroutines/Continuation;)Ljava/lang/Object;", "updateLastSeen", "lastSeen", "updateLastSeen-0E7RQCE", "markMessageDelivered", "messageId", "markMessageDelivered-0E7RQCE", "markMessageAsRead", "markMessageAsRead-0E7RQCE", "observeMessageDelivery", "observeMessageRead", "app"}, k = 1, mv = {2, 2, 0}, xi = 48)
public final class ChatRepositoryImpl implements ChatRepository {
    public static final int $stable = 8;
    private final ChatFirebaseService chatFirebaseService;

    public ChatRepositoryImpl(ChatFirebaseService chatFirebaseService) {
        Intrinsics.checkNotNullParameter(chatFirebaseService, "chatFirebaseService");
        this.chatFirebaseService = chatFirebaseService;
    }

    @Override // org.ies.tierno.applicationamani.data.repositorio.ChatRepository
    public Flow<List<Message>> observeMessages(long currentUserId, long otherUserId) {
        return this.chatFirebaseService.observeMessages(currentUserId, otherUserId);
    }

    /* JADX WARN: Removed duplicated region for block: B:7:0x0016  */
    @Override // org.ies.tierno.applicationamani.data.repositorio.ChatRepository
    /* JADX INFO: renamed from: sendMessage-bMdYcbs */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public Object mo10350sendMessagebMdYcbs(long senderId, long receiverId, String content, String attachmentUrl, AttachmentType attachmentType, String attachmentName, Continuation<? super Result<Unit>> continuation) {
        ChatRepositoryImpl$sendMessage$1 chatRepositoryImpl$sendMessage$1;
        if (continuation instanceof ChatRepositoryImpl$sendMessage$1) {
            chatRepositoryImpl$sendMessage$1 = (ChatRepositoryImpl$sendMessage$1) continuation;
            if ((chatRepositoryImpl$sendMessage$1.label & Integer.MIN_VALUE) != 0) {
                chatRepositoryImpl$sendMessage$1.label -= Integer.MIN_VALUE;
            } else {
                chatRepositoryImpl$sendMessage$1 = new ChatRepositoryImpl$sendMessage$1(this, continuation);
            }
        }
        ChatRepositoryImpl$sendMessage$1 chatRepositoryImpl$sendMessage$12 = chatRepositoryImpl$sendMessage$1;
        Object $result = chatRepositoryImpl$sendMessage$12.result;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        switch (chatRepositoryImpl$sendMessage$12.label) {
            case 0:
                ResultKt.throwOnFailure($result);
                ChatFirebaseService chatFirebaseService = this.chatFirebaseService;
                String strName = attachmentType != null ? attachmentType.name() : null;
                chatRepositoryImpl$sendMessage$12.L$0 = SpillingKt.nullOutSpilledVariable(content);
                chatRepositoryImpl$sendMessage$12.L$1 = SpillingKt.nullOutSpilledVariable(attachmentUrl);
                chatRepositoryImpl$sendMessage$12.L$2 = SpillingKt.nullOutSpilledVariable(attachmentType);
                chatRepositoryImpl$sendMessage$12.L$3 = SpillingKt.nullOutSpilledVariable(attachmentName);
                chatRepositoryImpl$sendMessage$12.J$0 = senderId;
                chatRepositoryImpl$sendMessage$12.J$1 = receiverId;
                chatRepositoryImpl$sendMessage$12.label = 1;
                Object objM10340sendMessagebMdYcbs = chatFirebaseService.m10340sendMessagebMdYcbs(senderId, receiverId, content, attachmentUrl, strName, attachmentName, chatRepositoryImpl$sendMessage$12);
                return objM10340sendMessagebMdYcbs == coroutine_suspended ? coroutine_suspended : objM10340sendMessagebMdYcbs;
            case 1:
                long j = chatRepositoryImpl$sendMessage$12.J$1;
                long senderId2 = chatRepositoryImpl$sendMessage$12.J$0;
                ResultKt.throwOnFailure($result);
                return ((Result) $result).getValue();
            default:
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:7:0x0014  */
    @Override // org.ies.tierno.applicationamani.data.repositorio.ChatRepository
    /* JADX INFO: renamed from: markMessagesAsRead-0E7RQCE */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public Object mo10349markMessagesAsRead0E7RQCE(long currentUserId, long otherUserId, Continuation<? super Result<Unit>> continuation) {
        ChatRepositoryImpl$markMessagesAsRead$1 chatRepositoryImpl$markMessagesAsRead$1;
        if (continuation instanceof ChatRepositoryImpl$markMessagesAsRead$1) {
            chatRepositoryImpl$markMessagesAsRead$1 = (ChatRepositoryImpl$markMessagesAsRead$1) continuation;
            if ((chatRepositoryImpl$markMessagesAsRead$1.label & Integer.MIN_VALUE) != 0) {
                chatRepositoryImpl$markMessagesAsRead$1.label -= Integer.MIN_VALUE;
            } else {
                chatRepositoryImpl$markMessagesAsRead$1 = new ChatRepositoryImpl$markMessagesAsRead$1(this, continuation);
            }
        }
        ChatRepositoryImpl$markMessagesAsRead$1 chatRepositoryImpl$markMessagesAsRead$12 = chatRepositoryImpl$markMessagesAsRead$1;
        Object $result = chatRepositoryImpl$markMessagesAsRead$12.result;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        switch (chatRepositoryImpl$markMessagesAsRead$12.label) {
            case 0:
                ResultKt.throwOnFailure($result);
                ChatFirebaseService chatFirebaseService = this.chatFirebaseService;
                chatRepositoryImpl$markMessagesAsRead$12.J$0 = currentUserId;
                chatRepositoryImpl$markMessagesAsRead$12.J$1 = otherUserId;
                chatRepositoryImpl$markMessagesAsRead$12.label = 1;
                Object objM10339markMessagesAsRead0E7RQCE = chatFirebaseService.m10339markMessagesAsRead0E7RQCE(currentUserId, otherUserId, chatRepositoryImpl$markMessagesAsRead$12);
                return objM10339markMessagesAsRead0E7RQCE == coroutine_suspended ? coroutine_suspended : objM10339markMessagesAsRead0E7RQCE;
            case 1:
                long otherUserId2 = chatRepositoryImpl$markMessagesAsRead$12.J$1;
                long currentUserId2 = chatRepositoryImpl$markMessagesAsRead$12.J$0;
                ResultKt.throwOnFailure($result);
                return ((Result) $result).getValue();
            default:
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:7:0x0014  */
    @Override // org.ies.tierno.applicationamani.data.repositorio.ChatRepository
    /* JADX INFO: renamed from: getMessages-0E7RQCE */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public Object mo10346getMessages0E7RQCE(long currentUserId, long otherUserId, Continuation<? super Result<? extends List<Message>>> continuation) {
        ChatRepositoryImpl$getMessages$1 chatRepositoryImpl$getMessages$1;
        if (continuation instanceof ChatRepositoryImpl$getMessages$1) {
            chatRepositoryImpl$getMessages$1 = (ChatRepositoryImpl$getMessages$1) continuation;
            if ((chatRepositoryImpl$getMessages$1.label & Integer.MIN_VALUE) != 0) {
                chatRepositoryImpl$getMessages$1.label -= Integer.MIN_VALUE;
            } else {
                chatRepositoryImpl$getMessages$1 = new ChatRepositoryImpl$getMessages$1(this, continuation);
            }
        }
        ChatRepositoryImpl$getMessages$1 chatRepositoryImpl$getMessages$12 = chatRepositoryImpl$getMessages$1;
        Object $result = chatRepositoryImpl$getMessages$12.result;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        switch (chatRepositoryImpl$getMessages$12.label) {
            case 0:
                ResultKt.throwOnFailure($result);
                ChatFirebaseService chatFirebaseService = this.chatFirebaseService;
                chatRepositoryImpl$getMessages$12.J$0 = currentUserId;
                chatRepositoryImpl$getMessages$12.J$1 = otherUserId;
                chatRepositoryImpl$getMessages$12.label = 1;
                Object objM10336getMessages0E7RQCE = chatFirebaseService.m10336getMessages0E7RQCE(currentUserId, otherUserId, chatRepositoryImpl$getMessages$12);
                return objM10336getMessages0E7RQCE == coroutine_suspended ? coroutine_suspended : objM10336getMessages0E7RQCE;
            case 1:
                long otherUserId2 = chatRepositoryImpl$getMessages$12.J$1;
                long currentUserId2 = chatRepositoryImpl$getMessages$12.J$0;
                ResultKt.throwOnFailure($result);
                return ((Result) $result).getValue();
            default:
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }
    }

    @Override // org.ies.tierno.applicationamani.data.repositorio.ChatRepository
    public Flow<Boolean> observeTyping(long userId1, long userId2) {
        return this.chatFirebaseService.observeTyping(userId1, userId2);
    }

    /* JADX WARN: Removed duplicated region for block: B:7:0x0014  */
    @Override // org.ies.tierno.applicationamani.data.repositorio.ChatRepository
    /* JADX INFO: renamed from: startTyping-0E7RQCE */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public Object mo10351startTyping0E7RQCE(long senderId, long receiverId, Continuation<? super Result<Unit>> continuation) {
        ChatRepositoryImpl$startTyping$1 chatRepositoryImpl$startTyping$1;
        if (continuation instanceof ChatRepositoryImpl$startTyping$1) {
            chatRepositoryImpl$startTyping$1 = (ChatRepositoryImpl$startTyping$1) continuation;
            if ((chatRepositoryImpl$startTyping$1.label & Integer.MIN_VALUE) != 0) {
                chatRepositoryImpl$startTyping$1.label -= Integer.MIN_VALUE;
            } else {
                chatRepositoryImpl$startTyping$1 = new ChatRepositoryImpl$startTyping$1(this, continuation);
            }
        }
        ChatRepositoryImpl$startTyping$1 chatRepositoryImpl$startTyping$12 = chatRepositoryImpl$startTyping$1;
        Object $result = chatRepositoryImpl$startTyping$12.result;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        switch (chatRepositoryImpl$startTyping$12.label) {
            case 0:
                ResultKt.throwOnFailure($result);
                ChatFirebaseService chatFirebaseService = this.chatFirebaseService;
                chatRepositoryImpl$startTyping$12.J$0 = senderId;
                chatRepositoryImpl$startTyping$12.J$1 = receiverId;
                chatRepositoryImpl$startTyping$12.label = 1;
                Object objM10341startTyping0E7RQCE = chatFirebaseService.m10341startTyping0E7RQCE(senderId, receiverId, chatRepositoryImpl$startTyping$12);
                return objM10341startTyping0E7RQCE == coroutine_suspended ? coroutine_suspended : objM10341startTyping0E7RQCE;
            case 1:
                long receiverId2 = chatRepositoryImpl$startTyping$12.J$1;
                long senderId2 = chatRepositoryImpl$startTyping$12.J$0;
                ResultKt.throwOnFailure($result);
                return ((Result) $result).getValue();
            default:
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:7:0x0014  */
    @Override // org.ies.tierno.applicationamani.data.repositorio.ChatRepository
    /* JADX INFO: renamed from: stopTyping-0E7RQCE */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public Object mo10352stopTyping0E7RQCE(long senderId, long receiverId, Continuation<? super Result<Unit>> continuation) {
        ChatRepositoryImpl$stopTyping$1 chatRepositoryImpl$stopTyping$1;
        if (continuation instanceof ChatRepositoryImpl$stopTyping$1) {
            chatRepositoryImpl$stopTyping$1 = (ChatRepositoryImpl$stopTyping$1) continuation;
            if ((chatRepositoryImpl$stopTyping$1.label & Integer.MIN_VALUE) != 0) {
                chatRepositoryImpl$stopTyping$1.label -= Integer.MIN_VALUE;
            } else {
                chatRepositoryImpl$stopTyping$1 = new ChatRepositoryImpl$stopTyping$1(this, continuation);
            }
        }
        ChatRepositoryImpl$stopTyping$1 chatRepositoryImpl$stopTyping$12 = chatRepositoryImpl$stopTyping$1;
        Object $result = chatRepositoryImpl$stopTyping$12.result;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        switch (chatRepositoryImpl$stopTyping$12.label) {
            case 0:
                ResultKt.throwOnFailure($result);
                ChatFirebaseService chatFirebaseService = this.chatFirebaseService;
                chatRepositoryImpl$stopTyping$12.J$0 = senderId;
                chatRepositoryImpl$stopTyping$12.J$1 = receiverId;
                chatRepositoryImpl$stopTyping$12.label = 1;
                Object objM10342stopTyping0E7RQCE = chatFirebaseService.m10342stopTyping0E7RQCE(senderId, receiverId, chatRepositoryImpl$stopTyping$12);
                return objM10342stopTyping0E7RQCE == coroutine_suspended ? coroutine_suspended : objM10342stopTyping0E7RQCE;
            case 1:
                long receiverId2 = chatRepositoryImpl$stopTyping$12.J$1;
                long senderId2 = chatRepositoryImpl$stopTyping$12.J$0;
                ResultKt.throwOnFailure($result);
                return ((Result) $result).getValue();
            default:
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }
    }

    @Override // org.ies.tierno.applicationamani.data.repositorio.ChatRepository
    public Flow<Boolean> observeUserOnline(long userId) {
        return this.chatFirebaseService.observeUserOnline(userId);
    }

    /* JADX WARN: Removed duplicated region for block: B:7:0x0014  */
    @Override // org.ies.tierno.applicationamani.data.repositorio.ChatRepository
    /* JADX INFO: renamed from: updateUserOnline-0E7RQCE */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public Object mo10354updateUserOnline0E7RQCE(long userId, boolean isOnline, Continuation<? super Result<Unit>> continuation) {
        ChatRepositoryImpl$updateUserOnline$1 chatRepositoryImpl$updateUserOnline$1;
        if (continuation instanceof ChatRepositoryImpl$updateUserOnline$1) {
            chatRepositoryImpl$updateUserOnline$1 = (ChatRepositoryImpl$updateUserOnline$1) continuation;
            if ((chatRepositoryImpl$updateUserOnline$1.label & Integer.MIN_VALUE) != 0) {
                chatRepositoryImpl$updateUserOnline$1.label -= Integer.MIN_VALUE;
            } else {
                chatRepositoryImpl$updateUserOnline$1 = new ChatRepositoryImpl$updateUserOnline$1(this, continuation);
            }
        }
        Object $result = chatRepositoryImpl$updateUserOnline$1.result;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        switch (chatRepositoryImpl$updateUserOnline$1.label) {
            case 0:
                ResultKt.throwOnFailure($result);
                ChatFirebaseService chatFirebaseService = this.chatFirebaseService;
                chatRepositoryImpl$updateUserOnline$1.J$0 = userId;
                chatRepositoryImpl$updateUserOnline$1.Z$0 = isOnline;
                chatRepositoryImpl$updateUserOnline$1.label = 1;
                Object objM10344updateUserOnline0E7RQCE = chatFirebaseService.m10344updateUserOnline0E7RQCE(userId, isOnline, chatRepositoryImpl$updateUserOnline$1);
                if (objM10344updateUserOnline0E7RQCE == coroutine_suspended) {
                    return coroutine_suspended;
                }
                return objM10344updateUserOnline0E7RQCE;
            case 1:
                boolean isOnline2 = chatRepositoryImpl$updateUserOnline$1.Z$0;
                long userId2 = chatRepositoryImpl$updateUserOnline$1.J$0;
                ResultKt.throwOnFailure($result);
                return ((Result) $result).getValue();
            default:
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:7:0x0014  */
    @Override // org.ies.tierno.applicationamani.data.repositorio.ChatRepository
    /* JADX INFO: renamed from: updateLastSeen-0E7RQCE */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public Object mo10353updateLastSeen0E7RQCE(long userId, long lastSeen, Continuation<? super Result<Unit>> continuation) {
        ChatRepositoryImpl$updateLastSeen$1 chatRepositoryImpl$updateLastSeen$1;
        if (continuation instanceof ChatRepositoryImpl$updateLastSeen$1) {
            chatRepositoryImpl$updateLastSeen$1 = (ChatRepositoryImpl$updateLastSeen$1) continuation;
            if ((chatRepositoryImpl$updateLastSeen$1.label & Integer.MIN_VALUE) != 0) {
                chatRepositoryImpl$updateLastSeen$1.label -= Integer.MIN_VALUE;
            } else {
                chatRepositoryImpl$updateLastSeen$1 = new ChatRepositoryImpl$updateLastSeen$1(this, continuation);
            }
        }
        ChatRepositoryImpl$updateLastSeen$1 chatRepositoryImpl$updateLastSeen$12 = chatRepositoryImpl$updateLastSeen$1;
        Object $result = chatRepositoryImpl$updateLastSeen$12.result;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        switch (chatRepositoryImpl$updateLastSeen$12.label) {
            case 0:
                ResultKt.throwOnFailure($result);
                ChatFirebaseService chatFirebaseService = this.chatFirebaseService;
                chatRepositoryImpl$updateLastSeen$12.J$0 = userId;
                chatRepositoryImpl$updateLastSeen$12.J$1 = lastSeen;
                chatRepositoryImpl$updateLastSeen$12.label = 1;
                Object objM10343updateLastSeen0E7RQCE = chatFirebaseService.m10343updateLastSeen0E7RQCE(userId, lastSeen, chatRepositoryImpl$updateLastSeen$12);
                return objM10343updateLastSeen0E7RQCE == coroutine_suspended ? coroutine_suspended : objM10343updateLastSeen0E7RQCE;
            case 1:
                long lastSeen2 = chatRepositoryImpl$updateLastSeen$12.J$1;
                long userId2 = chatRepositoryImpl$updateLastSeen$12.J$0;
                ResultKt.throwOnFailure($result);
                return ((Result) $result).getValue();
            default:
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }
    }

    @Override // org.ies.tierno.applicationamani.data.repositorio.ChatRepository
    /* JADX INFO: renamed from: markMessageDelivered-0E7RQCE */
    public Object mo10348markMessageDelivered0E7RQCE(long messageId, long receiverId, Continuation<? super Result<Unit>> continuation) {
        Result.Companion companion = Result.INSTANCE;
        return Result.m8542constructorimpl(Unit.INSTANCE);
    }

    @Override // org.ies.tierno.applicationamani.data.repositorio.ChatRepository
    /* JADX INFO: renamed from: markMessageAsRead-0E7RQCE */
    public Object mo10347markMessageAsRead0E7RQCE(long messageId, long receiverId, Continuation<? super Result<Unit>> continuation) {
        Result.Companion companion = Result.INSTANCE;
        return Result.m8542constructorimpl(Unit.INSTANCE);
    }

    /* JADX INFO: renamed from: org.ies.tierno.applicationamani.data.repositorio.ChatRepositoryImpl$observeMessageDelivery$1, reason: invalid class name */
    /* JADX INFO: compiled from: ChatRepositoryImpl.kt */
    @Metadata(d1 = {"\u0000\u000e\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000b\u0010\u0000\u001a\u00020\u0001*\b\u0012\u0004\u0012\u00020\u00030\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/flow/FlowCollector;", ""}, k = 3, mv = {2, 2, 0}, xi = 48)
    @DebugMetadata(c = "org.ies.tierno.applicationamani.data.repositorio.ChatRepositoryImpl$observeMessageDelivery$1", f = "ChatRepositoryImpl.kt", i = {0}, l = {77}, m = "invokeSuspend", n = {"$this$flow"}, s = {"L$0"})
    static final class AnonymousClass1 extends SuspendLambda implements Function2<FlowCollector<? super Boolean>, Continuation<? super Unit>, Object> {
        private /* synthetic */ Object L$0;
        int label;

        AnonymousClass1(Continuation<? super AnonymousClass1> continuation) {
            super(2, continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            AnonymousClass1 anonymousClass1 = new AnonymousClass1(continuation);
            anonymousClass1.L$0 = obj;
            return anonymousClass1;
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(FlowCollector<? super Boolean> flowCollector, Continuation<? super Unit> continuation) {
            return ((AnonymousClass1) create(flowCollector, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object $result) {
            FlowCollector $this$flow = (FlowCollector) this.L$0;
            Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
            switch (this.label) {
                case 0:
                    ResultKt.throwOnFailure($result);
                    this.L$0 = SpillingKt.nullOutSpilledVariable($this$flow);
                    this.label = 1;
                    if ($this$flow.emit(Boxing.boxBoolean(false), this) == coroutine_suspended) {
                        return coroutine_suspended;
                    }
                    break;
                case 1:
                    ResultKt.throwOnFailure($result);
                    break;
                default:
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            return Unit.INSTANCE;
        }
    }

    @Override // org.ies.tierno.applicationamani.data.repositorio.ChatRepository
    public Flow<Boolean> observeMessageDelivery(long messageId, long receiverId) {
        return FlowKt.flow(new AnonymousClass1(null));
    }

    /* JADX INFO: renamed from: org.ies.tierno.applicationamani.data.repositorio.ChatRepositoryImpl$observeMessageRead$1, reason: invalid class name and case insensitive filesystem */
    /* JADX INFO: compiled from: ChatRepositoryImpl.kt */
    @Metadata(d1 = {"\u0000\u000e\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000b\u0010\u0000\u001a\u00020\u0001*\b\u0012\u0004\u0012\u00020\u00030\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/flow/FlowCollector;", ""}, k = 3, mv = {2, 2, 0}, xi = 48)
    @DebugMetadata(c = "org.ies.tierno.applicationamani.data.repositorio.ChatRepositoryImpl$observeMessageRead$1", f = "ChatRepositoryImpl.kt", i = {0}, l = {82}, m = "invokeSuspend", n = {"$this$flow"}, s = {"L$0"})
    static final class C08031 extends SuspendLambda implements Function2<FlowCollector<? super Boolean>, Continuation<? super Unit>, Object> {
        private /* synthetic */ Object L$0;
        int label;

        C08031(Continuation<? super C08031> continuation) {
            super(2, continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            C08031 c08031 = new C08031(continuation);
            c08031.L$0 = obj;
            return c08031;
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(FlowCollector<? super Boolean> flowCollector, Continuation<? super Unit> continuation) {
            return ((C08031) create(flowCollector, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object $result) {
            FlowCollector $this$flow = (FlowCollector) this.L$0;
            Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
            switch (this.label) {
                case 0:
                    ResultKt.throwOnFailure($result);
                    this.L$0 = SpillingKt.nullOutSpilledVariable($this$flow);
                    this.label = 1;
                    if ($this$flow.emit(Boxing.boxBoolean(false), this) == coroutine_suspended) {
                        return coroutine_suspended;
                    }
                    break;
                case 1:
                    ResultKt.throwOnFailure($result);
                    break;
                default:
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            return Unit.INSTANCE;
        }
    }

    @Override // org.ies.tierno.applicationamani.data.repositorio.ChatRepository
    public Flow<Boolean> observeMessageRead(long messageId, long receiverId) {
        return FlowKt.flow(new C08031(null));
    }
}
