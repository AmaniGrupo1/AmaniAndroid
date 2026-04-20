package org.ies.tierno.applicationamani.data.repositorio;

import java.util.List;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlinx.coroutines.flow.Flow;
import org.ies.tierno.applicationamani.domain.models.AttachmentType;
import org.ies.tierno.applicationamani.domain.models.Message;

/* JADX INFO: compiled from: ChatRepository.kt */
/* JADX INFO: loaded from: classes16.dex */
@Metadata(d1 = {"\u0000D\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\t\n\u0002\u0010\u000b\n\u0002\b\u0017\bf\u0018\u00002\u00020\u0001J$\u0010\u0002\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00050\u00040\u00032\u0006\u0010\u0006\u001a\u00020\u00072\u0006\u0010\b\u001a\u00020\u0007H&JR\u0010\t\u001a\b\u0012\u0004\u0012\u00020\u000b0\n2\u0006\u0010\f\u001a\u00020\u00072\u0006\u0010\r\u001a\u00020\u00072\u0006\u0010\u000e\u001a\u00020\u000f2\n\b\u0002\u0010\u0010\u001a\u0004\u0018\u00010\u000f2\n\b\u0002\u0010\u0011\u001a\u0004\u0018\u00010\u00122\n\b\u0002\u0010\u0013\u001a\u0004\u0018\u00010\u000fH¦@¢\u0006\u0004\b\u0014\u0010\u0015J&\u0010\u0016\u001a\b\u0012\u0004\u0012\u00020\u000b0\n2\u0006\u0010\u0006\u001a\u00020\u00072\u0006\u0010\b\u001a\u00020\u0007H¦@¢\u0006\u0004\b\u0017\u0010\u0018J,\u0010\u0019\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00050\u00040\n2\u0006\u0010\u0006\u001a\u00020\u00072\u0006\u0010\b\u001a\u00020\u0007H¦@¢\u0006\u0004\b\u001a\u0010\u0018J\u001e\u0010\u001b\u001a\b\u0012\u0004\u0012\u00020\u001c0\u00032\u0006\u0010\u001d\u001a\u00020\u00072\u0006\u0010\u001e\u001a\u00020\u0007H&J&\u0010\u001f\u001a\b\u0012\u0004\u0012\u00020\u000b0\n2\u0006\u0010\f\u001a\u00020\u00072\u0006\u0010\r\u001a\u00020\u0007H¦@¢\u0006\u0004\b \u0010\u0018J&\u0010!\u001a\b\u0012\u0004\u0012\u00020\u000b0\n2\u0006\u0010\f\u001a\u00020\u00072\u0006\u0010\r\u001a\u00020\u0007H¦@¢\u0006\u0004\b\"\u0010\u0018J\u0016\u0010#\u001a\b\u0012\u0004\u0012\u00020\u001c0\u00032\u0006\u0010$\u001a\u00020\u0007H&J&\u0010%\u001a\b\u0012\u0004\u0012\u00020\u000b0\n2\u0006\u0010$\u001a\u00020\u00072\u0006\u0010&\u001a\u00020\u001cH¦@¢\u0006\u0004\b'\u0010(J&\u0010)\u001a\b\u0012\u0004\u0012\u00020\u000b0\n2\u0006\u0010$\u001a\u00020\u00072\u0006\u0010*\u001a\u00020\u0007H¦@¢\u0006\u0004\b+\u0010\u0018J&\u0010,\u001a\b\u0012\u0004\u0012\u00020\u000b0\n2\u0006\u0010-\u001a\u00020\u00072\u0006\u0010\r\u001a\u00020\u0007H¦@¢\u0006\u0004\b.\u0010\u0018J&\u0010/\u001a\b\u0012\u0004\u0012\u00020\u000b0\n2\u0006\u0010-\u001a\u00020\u00072\u0006\u0010\r\u001a\u00020\u0007H¦@¢\u0006\u0004\b0\u0010\u0018J\u001e\u00101\u001a\b\u0012\u0004\u0012\u00020\u001c0\u00032\u0006\u0010-\u001a\u00020\u00072\u0006\u0010\r\u001a\u00020\u0007H&J\u001e\u00102\u001a\b\u0012\u0004\u0012\u00020\u001c0\u00032\u0006\u0010-\u001a\u00020\u00072\u0006\u0010\r\u001a\u00020\u0007H&¨\u00063À\u0006\u0003"}, d2 = {"Lorg/ies/tierno/applicationamani/data/repositorio/ChatRepository;", "", "observeMessages", "Lkotlinx/coroutines/flow/Flow;", "", "Lorg/ies/tierno/applicationamani/domain/models/Message;", "currentUserId", "", "otherUserId", "sendMessage", "Lkotlin/Result;", "", "senderId", "receiverId", "content", "", "attachmentUrl", "attachmentType", "Lorg/ies/tierno/applicationamani/domain/models/AttachmentType;", "attachmentName", "sendMessage-bMdYcbs", "(JJLjava/lang/String;Ljava/lang/String;Lorg/ies/tierno/applicationamani/domain/models/AttachmentType;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "markMessagesAsRead", "markMessagesAsRead-0E7RQCE", "(JJLkotlin/coroutines/Continuation;)Ljava/lang/Object;", "getMessages", "getMessages-0E7RQCE", "observeTyping", "", "userId1", "userId2", "startTyping", "startTyping-0E7RQCE", "stopTyping", "stopTyping-0E7RQCE", "observeUserOnline", "userId", "updateUserOnline", "isOnline", "updateUserOnline-0E7RQCE", "(JZLkotlin/coroutines/Continuation;)Ljava/lang/Object;", "updateLastSeen", "lastSeen", "updateLastSeen-0E7RQCE", "markMessageDelivered", "messageId", "markMessageDelivered-0E7RQCE", "markMessageAsRead", "markMessageAsRead-0E7RQCE", "observeMessageDelivery", "observeMessageRead", "app"}, k = 1, mv = {2, 2, 0}, xi = 48)
public interface ChatRepository {
    /* JADX INFO: renamed from: getMessages-0E7RQCE, reason: not valid java name */
    Object mo10346getMessages0E7RQCE(long j, long j2, Continuation<? super Result<? extends List<Message>>> continuation);

    /* JADX INFO: renamed from: markMessageAsRead-0E7RQCE, reason: not valid java name */
    Object mo10347markMessageAsRead0E7RQCE(long j, long j2, Continuation<? super Result<Unit>> continuation);

    /* JADX INFO: renamed from: markMessageDelivered-0E7RQCE, reason: not valid java name */
    Object mo10348markMessageDelivered0E7RQCE(long j, long j2, Continuation<? super Result<Unit>> continuation);

    /* JADX INFO: renamed from: markMessagesAsRead-0E7RQCE, reason: not valid java name */
    Object mo10349markMessagesAsRead0E7RQCE(long j, long j2, Continuation<? super Result<Unit>> continuation);

    Flow<Boolean> observeMessageDelivery(long messageId, long receiverId);

    Flow<Boolean> observeMessageRead(long messageId, long receiverId);

    Flow<List<Message>> observeMessages(long currentUserId, long otherUserId);

    Flow<Boolean> observeTyping(long userId1, long userId2);

    Flow<Boolean> observeUserOnline(long userId);

    /* JADX INFO: renamed from: sendMessage-bMdYcbs, reason: not valid java name */
    Object mo10350sendMessagebMdYcbs(long j, long j2, String str, String str2, AttachmentType attachmentType, String str3, Continuation<? super Result<Unit>> continuation);

    /* JADX INFO: renamed from: startTyping-0E7RQCE, reason: not valid java name */
    Object mo10351startTyping0E7RQCE(long j, long j2, Continuation<? super Result<Unit>> continuation);

    /* JADX INFO: renamed from: stopTyping-0E7RQCE, reason: not valid java name */
    Object mo10352stopTyping0E7RQCE(long j, long j2, Continuation<? super Result<Unit>> continuation);

    /* JADX INFO: renamed from: updateLastSeen-0E7RQCE, reason: not valid java name */
    Object mo10353updateLastSeen0E7RQCE(long j, long j2, Continuation<? super Result<Unit>> continuation);

    /* JADX INFO: renamed from: updateUserOnline-0E7RQCE, reason: not valid java name */
    Object mo10354updateUserOnline0E7RQCE(long j, boolean z, Continuation<? super Result<Unit>> continuation);

    /* JADX INFO: compiled from: ChatRepository.kt */
    @Metadata(k = 3, mv = {2, 2, 0}, xi = 48)
    public static final class DefaultImpls {
    }

    /* JADX INFO: renamed from: sendMessage-bMdYcbs$default, reason: not valid java name */
    static /* synthetic */ Object m10345sendMessagebMdYcbs$default(ChatRepository chatRepository, long j, long j2, String str, String str2, AttachmentType attachmentType, String str3, Continuation continuation, int i, Object obj) {
        if (obj != null) {
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: sendMessage-bMdYcbs");
        }
        if ((i & 8) != 0) {
            str2 = null;
        }
        if ((i & 16) != 0) {
            attachmentType = null;
        }
        if ((i & 32) != 0) {
            str3 = null;
        }
        return chatRepository.mo10350sendMessagebMdYcbs(j, j2, str, str2, attachmentType, str3, continuation);
    }
}
