package org.ies.tierno.applicationamani.data.remoto;

import com.google.android.gms.common.internal.ServiceSpecificExtraArgs;
import com.google.android.gms.tasks.Task;
import com.google.firebase.database.DataSnapshot;
import com.google.firebase.database.DatabaseError;
import com.google.firebase.database.DatabaseReference;
import com.google.firebase.database.ValueEventListener;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Comparator;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.TuplesKt;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.collections.MapsKt;
import kotlin.comparisons.ComparisonsKt;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.Boxing;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SpillingKt;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;
import kotlinx.coroutines.channels.ProduceKt;
import kotlinx.coroutines.channels.ProducerScope;
import kotlinx.coroutines.flow.Flow;
import kotlinx.coroutines.flow.FlowKt;
import kotlinx.coroutines.tasks.TasksKt;
import org.ies.tierno.applicationamani.data.remoto.ChatFirebaseService;
import org.ies.tierno.applicationamani.domain.models.AttachmentType;
import org.ies.tierno.applicationamani.domain.models.Message;
import org.ies.tierno.applicationamani.utils.CitaNotificationWorker;

/* JADX INFO: compiled from: ChatFirebaseService.kt */
/* JADX INFO: loaded from: classes10.dex */
@Metadata(d1 = {"\u0000L\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\r\n\u0002\u0010\u000b\n\u0002\b\u0016\b\u0007\u0018\u0000 :2\u00020\u0001:\u0001:B\u000f\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0004\b\u0004\u0010\u0005J\"\u0010\n\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\r0\f0\u000b2\u0006\u0010\u000e\u001a\u00020\u000f2\u0006\u0010\u0010\u001a\u00020\u000fJR\u0010\u0011\u001a\b\u0012\u0004\u0012\u00020\u00130\u00122\u0006\u0010\u0014\u001a\u00020\u000f2\u0006\u0010\u0015\u001a\u00020\u000f2\u0006\u0010\u0016\u001a\u00020\u00172\n\b\u0002\u0010\u0018\u001a\u0004\u0018\u00010\u00172\n\b\u0002\u0010\u0019\u001a\u0004\u0018\u00010\u00172\n\b\u0002\u0010\u001a\u001a\u0004\u0018\u00010\u0017H\u0086@¢\u0006\u0004\b\u001b\u0010\u001cJ&\u0010\u001d\u001a\b\u0012\u0004\u0012\u00020\u00130\u00122\u0006\u0010\u001e\u001a\u00020\u000f2\u0006\u0010\u001f\u001a\u00020\u000fH\u0086@¢\u0006\u0004\b \u0010!J,\u0010\"\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\r0\f0\u00122\u0006\u0010\u000e\u001a\u00020\u000f2\u0006\u0010\u0010\u001a\u00020\u000fH\u0086@¢\u0006\u0004\b#\u0010!J\u001c\u0010$\u001a\b\u0012\u0004\u0012\u00020%0\u000b2\u0006\u0010\u000e\u001a\u00020\u000f2\u0006\u0010\u0010\u001a\u00020\u000fJ&\u0010&\u001a\b\u0012\u0004\u0012\u00020\u00130\u00122\u0006\u0010\u0014\u001a\u00020\u000f2\u0006\u0010\u0015\u001a\u00020\u000fH\u0086@¢\u0006\u0004\b'\u0010!J&\u0010(\u001a\b\u0012\u0004\u0012\u00020\u00130\u00122\u0006\u0010\u0014\u001a\u00020\u000f2\u0006\u0010\u0015\u001a\u00020\u000fH\u0086@¢\u0006\u0004\b)\u0010!J\u0014\u0010*\u001a\b\u0012\u0004\u0012\u00020%0\u000b2\u0006\u0010+\u001a\u00020\u000fJ&\u0010,\u001a\b\u0012\u0004\u0012\u00020\u00130\u00122\u0006\u0010+\u001a\u00020\u000f2\u0006\u0010-\u001a\u00020%H\u0086@¢\u0006\u0004\b.\u0010/J&\u00100\u001a\b\u0012\u0004\u0012\u00020\u00130\u00122\u0006\u0010+\u001a\u00020\u000f2\u0006\u00101\u001a\u00020\u000fH\u0086@¢\u0006\u0004\b2\u0010!J&\u00103\u001a\b\u0012\u0004\u0012\u00020\u00130\u00122\u0006\u00104\u001a\u00020\u000f2\u0006\u0010\u0015\u001a\u00020\u000fH\u0086@¢\u0006\u0004\b5\u0010!J&\u00106\u001a\b\u0012\u0004\u0012\u00020\u00130\u00122\u0006\u00104\u001a\u00020\u000f2\u0006\u0010\u0015\u001a\u00020\u000fH\u0086@¢\u0006\u0004\b7\u0010!J\u001c\u00108\u001a\b\u0012\u0004\u0012\u00020%0\u000b2\u0006\u00104\u001a\u00020\u000f2\u0006\u0010\u0015\u001a\u00020\u000fJ\u001c\u00109\u001a\b\u0012\u0004\u0012\u00020%0\u000b2\u0006\u00104\u001a\u00020\u000f2\u0006\u0010\u0015\u001a\u00020\u000fR\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\b\u001a\u00020\u0007X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\u0007X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006;"}, d2 = {"Lorg/ies/tierno/applicationamani/data/remoto/ChatFirebaseService;", "", "firebaseInstance", "Lorg/ies/tierno/applicationamani/data/remoto/FirebaseInstance;", "<init>", "(Lorg/ies/tierno/applicationamani/data/remoto/FirebaseInstance;)V", "chatsRef", "Lcom/google/firebase/database/DatabaseReference;", "usersRef", "typingRef", "observeMessages", "Lkotlinx/coroutines/flow/Flow;", "", "Lorg/ies/tierno/applicationamani/domain/models/Message;", "userId1", "", "userId2", "sendMessage", "Lkotlin/Result;", "", "senderId", "receiverId", "content", "", "attachmentUrl", "attachmentType", "attachmentName", "sendMessage-bMdYcbs", "(JJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "markMessagesAsRead", "currentUserId", "otherUserId", "markMessagesAsRead-0E7RQCE", "(JJLkotlin/coroutines/Continuation;)Ljava/lang/Object;", "getMessages", "getMessages-0E7RQCE", "observeTyping", "", "startTyping", "startTyping-0E7RQCE", "stopTyping", "stopTyping-0E7RQCE", "observeUserOnline", "userId", "updateUserOnline", "isOnline", "updateUserOnline-0E7RQCE", "(JZLkotlin/coroutines/Continuation;)Ljava/lang/Object;", "updateLastSeen", "lastSeen", "updateLastSeen-0E7RQCE", "markMessageDelivered", "messageId", "markMessageDelivered-0E7RQCE", "markMessageAsRead", "markMessageAsRead-0E7RQCE", "observeMessageDelivery", "observeMessageRead", "Companion", "app"}, k = 1, mv = {2, 2, 0}, xi = 48)
public final class ChatFirebaseService {
    private final DatabaseReference chatsRef;
    private final FirebaseInstance firebaseInstance;
    private final DatabaseReference typingRef;
    private final DatabaseReference usersRef;

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    public static final int $stable = 8;

    public ChatFirebaseService(FirebaseInstance firebaseInstance) {
        Intrinsics.checkNotNullParameter(firebaseInstance, "firebaseInstance");
        this.firebaseInstance = firebaseInstance;
        this.chatsRef = this.firebaseInstance.getReference("chats");
        this.usersRef = this.firebaseInstance.getReference("users");
        this.typingRef = this.firebaseInstance.getReference("typing");
    }

    /* JADX INFO: compiled from: ChatFirebaseService.kt */
    @Metadata(d1 = {"\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\t\n\u0002\b\u0002\b\u0086\u0003\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J\u0016\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u00072\u0006\u0010\b\u001a\u00020\u0007¨\u0006\t"}, d2 = {"Lorg/ies/tierno/applicationamani/data/remoto/ChatFirebaseService$Companion;", "", "<init>", "()V", "generateRoomId", "", "userId1", "", "userId2", "app"}, k = 1, mv = {2, 2, 0}, xi = 48)
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        public final String generateRoomId(long userId1, long userId2) {
            long minId = Math.min(userId1, userId2);
            long maxId = Math.max(userId1, userId2);
            return minId + "_" + maxId;
        }
    }

    /* JADX INFO: renamed from: org.ies.tierno.applicationamani.data.remoto.ChatFirebaseService$observeMessages$1, reason: invalid class name and case insensitive filesystem */
    /* JADX INFO: compiled from: ChatFirebaseService.kt */
    @Metadata(d1 = {"\u0000\u0012\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00040\u00030\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/channels/ProducerScope;", "", "Lorg/ies/tierno/applicationamani/domain/models/Message;"}, k = 3, mv = {2, 2, 0}, xi = 48)
    @DebugMetadata(c = "org.ies.tierno.applicationamani.data.remoto.ChatFirebaseService$observeMessages$1", f = "ChatFirebaseService.kt", i = {0, 0, 0, 0}, l = {81}, m = "invokeSuspend", n = {"$this$callbackFlow", "roomId", "messagesRef", ServiceSpecificExtraArgs.CastExtraArgs.LISTENER}, s = {"L$0", "L$1", "L$2", "L$3"})
    static final class C07991 extends SuspendLambda implements Function2<ProducerScope<? super List<? extends Message>>, Continuation<? super Unit>, Object> {
        final /* synthetic */ long $userId1;
        final /* synthetic */ long $userId2;
        private /* synthetic */ Object L$0;
        Object L$1;
        Object L$2;
        Object L$3;
        int label;
        final /* synthetic */ ChatFirebaseService this$0;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        C07991(long j, long j2, ChatFirebaseService chatFirebaseService, Continuation<? super C07991> continuation) {
            super(2, continuation);
            this.$userId1 = j;
            this.$userId2 = j2;
            this.this$0 = chatFirebaseService;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            C07991 c07991 = new C07991(this.$userId1, this.$userId2, this.this$0, continuation);
            c07991.L$0 = obj;
            return c07991;
        }

        @Override // kotlin.jvm.functions.Function2
        public /* bridge */ /* synthetic */ Object invoke(ProducerScope<? super List<? extends Message>> producerScope, Continuation<? super Unit> continuation) {
            return invoke2((ProducerScope<? super List<Message>>) producerScope, continuation);
        }

        /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
        public final Object invoke2(ProducerScope<? super List<Message>> producerScope, Continuation<? super Unit> continuation) {
            return ((C07991) create(producerScope, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        /* JADX WARN: Type inference failed for: r4v2, types: [java.lang.Object, org.ies.tierno.applicationamani.data.remoto.ChatFirebaseService$observeMessages$1$listener$1] */
        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object $result) {
            final ProducerScope $this$callbackFlow = (ProducerScope) this.L$0;
            Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
            switch (this.label) {
                case 0:
                    ResultKt.throwOnFailure($result);
                    String roomId = ChatFirebaseService.INSTANCE.generateRoomId(this.$userId1, this.$userId2);
                    final DatabaseReference messagesRef = this.this$0.chatsRef.child(roomId).child("messages");
                    Intrinsics.checkNotNullExpressionValue(messagesRef, "child(...)");
                    final long j = this.$userId1;
                    final ?? r4 = new ValueEventListener() { // from class: org.ies.tierno.applicationamani.data.remoto.ChatFirebaseService$observeMessages$1$listener$1
                        @Override // com.google.firebase.database.ValueEventListener
                        public void onDataChange(DataSnapshot snapshot) {
                            AttachmentType attachmentType;
                            Iterator<DataSnapshot> it;
                            Map map;
                            Long longOrNull;
                            AttachmentType attachmentTypeValueOf;
                            Intrinsics.checkNotNullParameter(snapshot, "snapshot");
                            List messages = new ArrayList();
                            Iterator<DataSnapshot> it2 = snapshot.getChildren().iterator();
                            while (it2.hasNext()) {
                                DataSnapshot child = it2.next();
                                Long l = (Long) child.child("idMensaje").getValue(Long.TYPE);
                                long idMensaje = l != null ? l.longValue() : 0L;
                                Long l2 = (Long) child.child("idSender").getValue(Long.TYPE);
                                long senderId = l2 != null ? l2.longValue() : 0L;
                                String str = (String) child.child(CitaNotificationWorker.KEY_MENSAJE).getValue(String.class);
                                if (str == null) {
                                    str = "";
                                }
                                String mensaje = str;
                                String enviadoEn = (String) child.child("enviadoEn").getValue(String.class);
                                Boolean bool = (Boolean) child.child("leido").getValue(Boolean.TYPE);
                                boolean leido = bool != null ? bool.booleanValue() : false;
                                String attachmentUrl = (String) child.child("attachmentUrl").getValue(String.class);
                                String str2 = (String) child.child("attachmentType").getValue(String.class);
                                if (str2 != null) {
                                    try {
                                        attachmentTypeValueOf = AttachmentType.valueOf(str2);
                                    } catch (IllegalArgumentException e) {
                                        attachmentTypeValueOf = null;
                                    }
                                    attachmentType = attachmentTypeValueOf;
                                } else {
                                    attachmentType = null;
                                }
                                String attachmentName = (String) child.child("attachmentName").getValue(String.class);
                                Object value = child.child("readBy").getValue((Class<Object>) Map.class);
                                Map readByData = value instanceof Map ? (Map) value : null;
                                if (readByData != null) {
                                    Map map2 = readByData;
                                    Map linkedHashMap = new LinkedHashMap(MapsKt.mapCapacity(map2.size()));
                                    for (Object obj : map2.entrySet()) {
                                        linkedHashMap.put((String) ((Map.Entry) obj).getKey(), ((Map.Entry) obj).getValue());
                                        it2 = it2;
                                        readByData = readByData;
                                    }
                                    it = it2;
                                    map = linkedHashMap;
                                } else {
                                    it = it2;
                                    map = null;
                                }
                                Map readBy = map instanceof Map ? map : null;
                                Object value2 = child.child("deliveredTo").getValue((Class<Object>) Map.class);
                                Map deliveredToData = value2 instanceof Map ? (Map) value2 : null;
                                Object obj2 = deliveredToData != null ? deliveredToData.get(String.valueOf(j)) : null;
                                Long deliveredAt = obj2 instanceof Long ? (Long) obj2 : null;
                                messages.add(new Message(String.valueOf(idMensaje), null, String.valueOf(senderId), mensaje, attachmentUrl, attachmentType, attachmentName, (enviadoEn == null || (longOrNull = StringsKt.toLongOrNull(enviadoEn)) == null) ? System.currentTimeMillis() : longOrNull.longValue(), leido, deliveredAt, readBy, 2, null));
                                it2 = it;
                            }
                            $this$callbackFlow.mo10050trySendJP2dKIU(CollectionsKt.sortedWith(messages, new Comparator() { // from class: org.ies.tierno.applicationamani.data.remoto.ChatFirebaseService$observeMessages$1$listener$1$onDataChange$$inlined$sortedBy$1
                                /* JADX WARN: Multi-variable type inference failed */
                                @Override // java.util.Comparator
                                public final int compare(T t, T t2) {
                                    return ComparisonsKt.compareValues(Long.valueOf(((Message) t).getTimestamp()), Long.valueOf(((Message) t2).getTimestamp()));
                                }
                            }));
                        }

                        @Override // com.google.firebase.database.ValueEventListener
                        public void onCancelled(DatabaseError error) {
                            Intrinsics.checkNotNullParameter(error, "error");
                            $this$callbackFlow.close(error.toException());
                        }
                    };
                    messagesRef.addValueEventListener((ValueEventListener) r4);
                    this.L$0 = SpillingKt.nullOutSpilledVariable($this$callbackFlow);
                    this.L$1 = SpillingKt.nullOutSpilledVariable(roomId);
                    this.L$2 = SpillingKt.nullOutSpilledVariable(messagesRef);
                    this.L$3 = SpillingKt.nullOutSpilledVariable(r4);
                    this.label = 1;
                    if (ProduceKt.awaitClose($this$callbackFlow, new Function0() { // from class: org.ies.tierno.applicationamani.data.remoto.ChatFirebaseService$observeMessages$1$$ExternalSyntheticLambda0
                        @Override // kotlin.jvm.functions.Function0
                        public final Object invoke() {
                            return ChatFirebaseService.C07991.invokeSuspend$lambda$0(messagesRef, r4);
                        }
                    }, this) == coroutine_suspended) {
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

        static final Unit invokeSuspend$lambda$0(DatabaseReference $messagesRef, ChatFirebaseService$observeMessages$1$listener$1 $listener) {
            $messagesRef.removeEventListener($listener);
            return Unit.INSTANCE;
        }
    }

    public final Flow<List<Message>> observeMessages(long userId1, long userId2) {
        return FlowKt.callbackFlow(new C07991(userId1, userId2, this, null));
    }

    /* JADX INFO: renamed from: sendMessage-bMdYcbs$default, reason: not valid java name */
    public static /* synthetic */ Object m10335sendMessagebMdYcbs$default(ChatFirebaseService chatFirebaseService, long j, long j2, String str, String str2, String str3, String str4, Continuation continuation, int i, Object obj) {
        if ((i & 8) != 0) {
            str2 = null;
        }
        if ((i & 16) != 0) {
            str3 = null;
        }
        if ((i & 32) != 0) {
            str4 = null;
        }
        return chatFirebaseService.m10340sendMessagebMdYcbs(j, j2, str, str2, str3, str4, continuation);
    }

    /* JADX WARN: Removed duplicated region for block: B:7:0x001c  */
    /* JADX INFO: renamed from: sendMessage-bMdYcbs, reason: not valid java name */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final Object m10340sendMessagebMdYcbs(long senderId, long receiverId, String content, String attachmentUrl, String attachmentType, String attachmentName, Continuation<? super Result<Unit>> continuation) {
        ChatFirebaseService$sendMessage$1 chatFirebaseService$sendMessage$1;
        String roomId;
        DatabaseReference messagesRef;
        DatabaseReference messageRef;
        long messageId;
        Pair[] pairArr;
        if (continuation instanceof ChatFirebaseService$sendMessage$1) {
            chatFirebaseService$sendMessage$1 = (ChatFirebaseService$sendMessage$1) continuation;
            if ((chatFirebaseService$sendMessage$1.label & Integer.MIN_VALUE) != 0) {
                chatFirebaseService$sendMessage$1.label -= Integer.MIN_VALUE;
            } else {
                chatFirebaseService$sendMessage$1 = new ChatFirebaseService$sendMessage$1(this, continuation);
            }
        }
        ChatFirebaseService$sendMessage$1 chatFirebaseService$sendMessage$12 = chatFirebaseService$sendMessage$1;
        Object $result = chatFirebaseService$sendMessage$12.result;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        switch (chatFirebaseService$sendMessage$12.label) {
            case 0:
                ResultKt.throwOnFailure($result);
                try {
                    roomId = INSTANCE.generateRoomId(senderId, receiverId);
                    messagesRef = this.chatsRef.child(roomId).child("messages");
                    Intrinsics.checkNotNullExpressionValue(messagesRef, "child(...)");
                    messageRef = messagesRef.push();
                    Intrinsics.checkNotNullExpressionValue(messageRef, "push(...)");
                    messageId = System.currentTimeMillis();
                    pairArr = new Pair[6];
                    pairArr[0] = TuplesKt.to("idMensaje", Boxing.boxLong(messageId));
                    pairArr[1] = TuplesKt.to("idSender", Boxing.boxLong(senderId));
                    pairArr[2] = TuplesKt.to("idReceiver", Boxing.boxLong(receiverId));
                } catch (Exception e) {
                    e = e;
                }
                try {
                    pairArr[3] = TuplesKt.to(CitaNotificationWorker.KEY_MENSAJE, content);
                    pairArr[4] = TuplesKt.to("enviadoEn", String.valueOf(messageId));
                    pairArr[5] = TuplesKt.to("leido", Boxing.boxBoolean(false));
                    Map messageMap = MapsKt.mutableMapOf(pairArr);
                    if (attachmentUrl != null) {
                        try {
                            messageMap.put("attachmentUrl", attachmentUrl);
                        } catch (Exception e2) {
                            e = e2;
                            Object $result2 = Result.INSTANCE;
                            return Result.m8542constructorimpl(ResultKt.createFailure(e));
                        }
                    }
                    if (attachmentType != null) {
                        messageMap.put("attachmentType", attachmentType);
                    }
                    if (attachmentName != null) {
                        messageMap.put("attachmentName", attachmentName);
                    }
                    Task<Void> value = messageRef.setValue(messageMap);
                    Intrinsics.checkNotNullExpressionValue(value, "setValue(...)");
                    chatFirebaseService$sendMessage$12.L$0 = SpillingKt.nullOutSpilledVariable(content);
                    chatFirebaseService$sendMessage$12.L$1 = SpillingKt.nullOutSpilledVariable(attachmentUrl);
                    chatFirebaseService$sendMessage$12.L$2 = SpillingKt.nullOutSpilledVariable(attachmentType);
                    chatFirebaseService$sendMessage$12.L$3 = SpillingKt.nullOutSpilledVariable(attachmentName);
                    chatFirebaseService$sendMessage$12.L$4 = SpillingKt.nullOutSpilledVariable(roomId);
                    chatFirebaseService$sendMessage$12.L$5 = SpillingKt.nullOutSpilledVariable(messagesRef);
                    chatFirebaseService$sendMessage$12.L$6 = SpillingKt.nullOutSpilledVariable(messageRef);
                    chatFirebaseService$sendMessage$12.L$7 = SpillingKt.nullOutSpilledVariable(messageMap);
                    chatFirebaseService$sendMessage$12.J$0 = senderId;
                    chatFirebaseService$sendMessage$12.J$1 = receiverId;
                    chatFirebaseService$sendMessage$12.J$2 = messageId;
                    chatFirebaseService$sendMessage$12.label = 1;
                    if (TasksKt.await(value, chatFirebaseService$sendMessage$12) == coroutine_suspended) {
                        return coroutine_suspended;
                    }
                    try {
                        Result.Companion companion = Result.INSTANCE;
                        return Result.m8542constructorimpl(Unit.INSTANCE);
                    } catch (Exception e3) {
                        e = e3;
                        Object $result22 = Result.INSTANCE;
                        return Result.m8542constructorimpl(ResultKt.createFailure(e));
                    }
                } catch (Exception e4) {
                    e = e4;
                    Object $result222 = Result.INSTANCE;
                    return Result.m8542constructorimpl(ResultKt.createFailure(e));
                }
            case 1:
                long j = chatFirebaseService$sendMessage$12.J$2;
                long j2 = chatFirebaseService$sendMessage$12.J$1;
                long j3 = chatFirebaseService$sendMessage$12.J$0;
                try {
                    ResultKt.throwOnFailure($result);
                    Result.Companion companion2 = Result.INSTANCE;
                    return Result.m8542constructorimpl(Unit.INSTANCE);
                } catch (Exception e5) {
                    e = e5;
                    Object $result2222 = Result.INSTANCE;
                    return Result.m8542constructorimpl(ResultKt.createFailure(e));
                }
            default:
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:30:0x00ce A[Catch: Exception -> 0x01a2, TRY_LEAVE, TryCatch #7 {Exception -> 0x01a2, blocks: (B:28:0x00c8, B:30:0x00ce), top: B:87:0x00c8 }] */
    /* JADX WARN: Removed duplicated region for block: B:7:0x001e  */
    /* JADX WARN: Removed duplicated region for block: B:90:0x018b A[SYNTHETIC] */
    /* JADX WARN: Type inference failed for: r10v10 */
    /* JADX WARN: Type inference failed for: r1v13 */
    /* JADX WARN: Type inference failed for: r1v14, types: [int] */
    /* JADX WARN: Type inference failed for: r1v21 */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:56:0x015c -> B:57:0x0168). Please report as a decompilation issue!!! */
    /* JADX INFO: renamed from: markMessagesAsRead-0E7RQCE, reason: not valid java name */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final Object m10339markMessagesAsRead0E7RQCE(long j, long j2, Continuation<? super Result<Unit>> continuation) {
        ChatFirebaseService$markMessagesAsRead$1 chatFirebaseService$markMessagesAsRead$1;
        String strGenerateRoomId;
        DatabaseReference databaseReferenceChild;
        Object objAwait;
        DataSnapshot dataSnapshot;
        Iterator<DataSnapshot> it;
        ChatFirebaseService chatFirebaseService;
        long j3;
        Continuation<? super Result<Unit>> continuation2;
        long jLongValue;
        String str;
        DatabaseReference databaseReference;
        Iterator<DataSnapshot> it2;
        DataSnapshot dataSnapshot2;
        ChatFirebaseService chatFirebaseService2;
        long j4 = j;
        long j5 = j2;
        Continuation<? super Result<Unit>> continuation3 = continuation;
        String str2 = "leido";
        if (continuation3 instanceof ChatFirebaseService$markMessagesAsRead$1) {
            chatFirebaseService$markMessagesAsRead$1 = (ChatFirebaseService$markMessagesAsRead$1) continuation3;
            if ((chatFirebaseService$markMessagesAsRead$1.label & Integer.MIN_VALUE) != 0) {
                chatFirebaseService$markMessagesAsRead$1.label -= Integer.MIN_VALUE;
            } else {
                chatFirebaseService$markMessagesAsRead$1 = new ChatFirebaseService$markMessagesAsRead$1(this, continuation3);
            }
        }
        Object obj = chatFirebaseService$markMessagesAsRead$1.result;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        switch (chatFirebaseService$markMessagesAsRead$1.label) {
            case 0:
                ResultKt.throwOnFailure(obj);
                try {
                    strGenerateRoomId = INSTANCE.generateRoomId(j4, j5);
                    databaseReferenceChild = this.chatsRef.child(strGenerateRoomId).child("messages");
                    Intrinsics.checkNotNullExpressionValue(databaseReferenceChild, "child(...)");
                    Task<DataSnapshot> task = databaseReferenceChild.get();
                    Intrinsics.checkNotNullExpressionValue(task, "get(...)");
                    chatFirebaseService$markMessagesAsRead$1.L$0 = SpillingKt.nullOutSpilledVariable(strGenerateRoomId);
                    chatFirebaseService$markMessagesAsRead$1.L$1 = databaseReferenceChild;
                    chatFirebaseService$markMessagesAsRead$1.J$0 = j4;
                    chatFirebaseService$markMessagesAsRead$1.J$1 = j5;
                    chatFirebaseService$markMessagesAsRead$1.label = 1;
                    objAwait = TasksKt.await(task, chatFirebaseService$markMessagesAsRead$1);
                    if (objAwait == coroutine_suspended) {
                        return coroutine_suspended;
                    }
                } catch (Exception e) {
                    e = e;
                    Result.Companion companion = Result.INSTANCE;
                    return Result.m8542constructorimpl(ResultKt.createFailure(e));
                }
                try {
                    dataSnapshot = (DataSnapshot) objAwait;
                    it = dataSnapshot.getChildren().iterator();
                    chatFirebaseService = this;
                    while (true) {
                        try {
                            if (!it.hasNext()) {
                                j3 = j4;
                                continuation2 = continuation3;
                                Result.Companion companion2 = Result.INSTANCE;
                                return Result.m8542constructorimpl(Unit.INSTANCE);
                            }
                            try {
                                DataSnapshot next = it.next();
                                Long l = (Long) next.child("idSender").getValue(Long.TYPE);
                                if (l != null) {
                                    try {
                                        jLongValue = l.longValue();
                                    } catch (Exception e2) {
                                        e = e2;
                                        Result.Companion companion3 = Result.INSTANCE;
                                        return Result.m8542constructorimpl(ResultKt.createFailure(e));
                                    }
                                } else {
                                    jLongValue = 0;
                                }
                                long j6 = jLongValue;
                                Boolean bool = (Boolean) next.child(str2).getValue(Boolean.TYPE);
                                ?? BooleanValue = bool != null ? bool.booleanValue() : 0;
                                if (j6 == j4 || BooleanValue != 0) {
                                    continuation3 = continuation2;
                                    j4 = j4;
                                    str2 = str2;
                                } else {
                                    try {
                                        String key = next.getKey();
                                        if (key == null) {
                                            key = "";
                                        }
                                        str = str2;
                                        Task<Void> value = databaseReferenceChild.child(key).child(str2).setValue(Boxing.boxBoolean(true));
                                        Intrinsics.checkNotNullExpressionValue(value, "setValue(...)");
                                        chatFirebaseService$markMessagesAsRead$1.L$0 = SpillingKt.nullOutSpilledVariable(strGenerateRoomId);
                                        chatFirebaseService$markMessagesAsRead$1.L$1 = databaseReferenceChild;
                                        chatFirebaseService$markMessagesAsRead$1.L$2 = SpillingKt.nullOutSpilledVariable(dataSnapshot);
                                        chatFirebaseService$markMessagesAsRead$1.L$3 = it;
                                        chatFirebaseService$markMessagesAsRead$1.L$4 = SpillingKt.nullOutSpilledVariable(next);
                                        chatFirebaseService$markMessagesAsRead$1.J$0 = j4;
                                        chatFirebaseService$markMessagesAsRead$1.J$1 = j5;
                                        chatFirebaseService$markMessagesAsRead$1.J$2 = j6;
                                        chatFirebaseService$markMessagesAsRead$1.I$0 = BooleanValue;
                                        chatFirebaseService$markMessagesAsRead$1.label = 2;
                                        if (TasksKt.await(value, chatFirebaseService$markMessagesAsRead$1) == coroutine_suspended) {
                                            return coroutine_suspended;
                                        }
                                        continuation3 = continuation2;
                                        databaseReference = databaseReferenceChild;
                                        it2 = it;
                                        dataSnapshot2 = dataSnapshot;
                                        chatFirebaseService2 = chatFirebaseService;
                                        j4 = j3;
                                    } catch (Exception e3) {
                                        e = e3;
                                        Result.Companion companion32 = Result.INSTANCE;
                                        return Result.m8542constructorimpl(ResultKt.createFailure(e));
                                    }
                                    j3 = j4;
                                }
                            } catch (Exception e4) {
                                e = e4;
                            }
                            continuation2 = continuation3;
                        } catch (Exception e5) {
                            e = e5;
                        }
                    }
                } catch (Exception e6) {
                    e = e6;
                    Result.Companion companion322 = Result.INSTANCE;
                    return Result.m8542constructorimpl(ResultKt.createFailure(e));
                }
            case 1:
                j5 = chatFirebaseService$markMessagesAsRead$1.J$1;
                j4 = chatFirebaseService$markMessagesAsRead$1.J$0;
                databaseReferenceChild = (DatabaseReference) chatFirebaseService$markMessagesAsRead$1.L$1;
                strGenerateRoomId = (String) chatFirebaseService$markMessagesAsRead$1.L$0;
                try {
                    ResultKt.throwOnFailure(obj);
                    objAwait = obj;
                    dataSnapshot = (DataSnapshot) objAwait;
                    it = dataSnapshot.getChildren().iterator();
                    chatFirebaseService = this;
                    while (true) {
                        if (!it.hasNext()) {
                        }
                        continuation3 = continuation2;
                        j4 = j4;
                        str2 = str2;
                    }
                } catch (Exception e7) {
                    e = e7;
                    Result.Companion companion3222 = Result.INSTANCE;
                    return Result.m8542constructorimpl(ResultKt.createFailure(e));
                }
                break;
            case 2:
                int i = chatFirebaseService$markMessagesAsRead$1.I$0;
                long j7 = chatFirebaseService$markMessagesAsRead$1.J$2;
                j5 = chatFirebaseService$markMessagesAsRead$1.J$1;
                long j8 = chatFirebaseService$markMessagesAsRead$1.J$0;
                Iterator<DataSnapshot> it3 = (Iterator) chatFirebaseService$markMessagesAsRead$1.L$3;
                DataSnapshot dataSnapshot3 = (DataSnapshot) chatFirebaseService$markMessagesAsRead$1.L$2;
                DatabaseReference databaseReference2 = (DatabaseReference) chatFirebaseService$markMessagesAsRead$1.L$1;
                String str3 = (String) chatFirebaseService$markMessagesAsRead$1.L$0;
                try {
                    ResultKt.throwOnFailure(obj);
                    str = "leido";
                    databaseReference = databaseReference2;
                    it2 = it3;
                    chatFirebaseService2 = this;
                    dataSnapshot2 = dataSnapshot3;
                    strGenerateRoomId = str3;
                    j4 = j8;
                    databaseReferenceChild = databaseReference;
                    dataSnapshot = dataSnapshot2;
                    chatFirebaseService = chatFirebaseService2;
                    str2 = str;
                    it = it2;
                    while (true) {
                        if (!it.hasNext()) {
                        }
                        continuation3 = continuation2;
                        j4 = j4;
                        str2 = str2;
                    }
                } catch (Exception e8) {
                    e = e8;
                    Result.Companion companion32222 = Result.INSTANCE;
                    return Result.m8542constructorimpl(ResultKt.createFailure(e));
                }
                break;
            default:
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:24:0x00a2 A[Catch: Exception -> 0x0275, TRY_LEAVE, TryCatch #2 {Exception -> 0x0275, blocks: (B:21:0x008a, B:22:0x009c, B:24:0x00a2, B:29:0x00c0, B:34:0x00e4, B:40:0x00fe, B:49:0x0141, B:56:0x016c, B:57:0x0191, B:59:0x0197), top: B:110:0x008a }] */
    /* JADX WARN: Removed duplicated region for block: B:7:0x001c  */
    /* JADX INFO: renamed from: getMessages-0E7RQCE, reason: not valid java name */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final Object m10336getMessages0E7RQCE(long userId1, long userId2, Continuation<? super Result<? extends List<Message>>> continuation) {
        ChatFirebaseService$getMessages$1 chatFirebaseService$getMessages$1;
        long userId12;
        Object objAwait;
        AttachmentType attachmentType;
        long userId13;
        Map map;
        Long longOrNull;
        String string;
        AttachmentType attachmentTypeValueOf;
        long userId14 = userId1;
        if (continuation instanceof ChatFirebaseService$getMessages$1) {
            chatFirebaseService$getMessages$1 = (ChatFirebaseService$getMessages$1) continuation;
            if ((chatFirebaseService$getMessages$1.label & Integer.MIN_VALUE) != 0) {
                chatFirebaseService$getMessages$1.label -= Integer.MIN_VALUE;
            } else {
                chatFirebaseService$getMessages$1 = new ChatFirebaseService$getMessages$1(this, continuation);
            }
        }
        ChatFirebaseService$getMessages$1 chatFirebaseService$getMessages$12 = chatFirebaseService$getMessages$1;
        Object $result = chatFirebaseService$getMessages$12.result;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        switch (chatFirebaseService$getMessages$12.label) {
            case 0:
                ResultKt.throwOnFailure($result);
                try {
                    String roomId = INSTANCE.generateRoomId(userId14, userId2);
                    DatabaseReference messagesRef = this.chatsRef.child(roomId).child("messages");
                    Intrinsics.checkNotNullExpressionValue(messagesRef, "child(...)");
                    Task<DataSnapshot> task = messagesRef.get();
                    Intrinsics.checkNotNullExpressionValue(task, "get(...)");
                    chatFirebaseService$getMessages$12.L$0 = SpillingKt.nullOutSpilledVariable(roomId);
                    chatFirebaseService$getMessages$12.L$1 = SpillingKt.nullOutSpilledVariable(messagesRef);
                    chatFirebaseService$getMessages$12.J$0 = userId14;
                    chatFirebaseService$getMessages$12.J$1 = userId2;
                    chatFirebaseService$getMessages$12.label = 1;
                    objAwait = TasksKt.await(task, chatFirebaseService$getMessages$12);
                    if (objAwait == coroutine_suspended) {
                        return coroutine_suspended;
                    }
                    try {
                        DataSnapshot snapshot = (DataSnapshot) objAwait;
                        List messages = new ArrayList();
                        for (DataSnapshot child : snapshot.getChildren()) {
                            Long l = (Long) child.child("idMensaje").getValue(Long.TYPE);
                            long idMensaje = l != null ? l.longValue() : 0L;
                            Long senderId = (Long) child.child("idSender").getValue(Long.TYPE);
                            String str = (String) child.child(CitaNotificationWorker.KEY_MENSAJE).getValue(String.class);
                            if (str == null) {
                                str = "";
                            }
                            String mensaje = str;
                            Boolean bool = (Boolean) child.child("leido").getValue(Boolean.TYPE);
                            boolean leido = bool != null ? bool.booleanValue() : false;
                            String enviadoEn = (String) child.child("enviadoEn").getValue(String.class);
                            String attachmentUrl = (String) child.child("attachmentUrl").getValue(String.class);
                            String str2 = (String) child.child("attachmentType").getValue(String.class);
                            if (str2 != null) {
                                try {
                                    attachmentTypeValueOf = AttachmentType.valueOf(str2);
                                } catch (IllegalArgumentException e) {
                                    attachmentTypeValueOf = null;
                                }
                                attachmentType = attachmentTypeValueOf;
                            } else {
                                attachmentType = null;
                            }
                            String attachmentName = (String) child.child("attachmentName").getValue(String.class);
                            Object value = child.child("readBy").getValue((Class<Object>) Map.class);
                            Map readByData = value instanceof Map ? (Map) value : null;
                            if (readByData != null) {
                                Map map2 = readByData;
                                Map linkedHashMap = new LinkedHashMap(MapsKt.mapCapacity(map2.size()));
                                Map map3 = map2;
                                Map map4 = linkedHashMap;
                                for (Object obj : map3.entrySet()) {
                                    Map map5 = linkedHashMap;
                                    Map map6 = map3;
                                    userId12 = userId14;
                                    Map map7 = map4;
                                    try {
                                        map7.put((String) ((Map.Entry) obj).getKey(), ((Map.Entry) obj).getValue());
                                        map4 = map7;
                                        map3 = map6;
                                        linkedHashMap = map5;
                                        userId14 = userId12;
                                    } catch (Exception e2) {
                                        e = e2;
                                        Result.Companion companion = Result.INSTANCE;
                                        return Result.m8542constructorimpl(ResultKt.createFailure(e));
                                    }
                                }
                                userId13 = userId14;
                                map = map4;
                            } else {
                                userId13 = userId14;
                                map = null;
                            }
                            Map readBy = map instanceof Map ? map : null;
                            Object value2 = child.child("deliveredTo").getValue((Class<Object>) Map.class);
                            Map deliveredToData = value2 instanceof Map ? (Map) value2 : null;
                            Object obj2 = deliveredToData != null ? deliveredToData.get(String.valueOf(userId13)) : null;
                            Long deliveredAt = obj2 instanceof Long ? (Long) obj2 : null;
                            messages.add(new Message(String.valueOf(idMensaje), null, (senderId == null || (string = senderId.toString()) == null) ? "" : string, mensaje, attachmentUrl, attachmentType, attachmentName, (enviadoEn == null || (longOrNull = StringsKt.toLongOrNull(enviadoEn)) == null) ? System.currentTimeMillis() : longOrNull.longValue(), leido, deliveredAt, readBy, 2, null));
                            userId14 = userId13;
                            break;
                        }
                        userId12 = userId14;
                        Result.Companion companion2 = Result.INSTANCE;
                        return Result.m8542constructorimpl(CollectionsKt.sortedWith(messages, new Comparator() { // from class: org.ies.tierno.applicationamani.data.remoto.ChatFirebaseService$getMessages-0E7RQCE$$inlined$sortedBy$1
                            /* JADX WARN: Multi-variable type inference failed */
                            @Override // java.util.Comparator
                            public final int compare(T t, T t2) {
                                return ComparisonsKt.compareValues(Long.valueOf(((Message) t).getTimestamp()), Long.valueOf(((Message) t2).getTimestamp()));
                            }
                        }));
                    } catch (Exception e3) {
                        e = e3;
                        userId12 = userId14;
                    }
                } catch (Exception e4) {
                    e = e4;
                    userId12 = userId14;
                    Result.Companion companion3 = Result.INSTANCE;
                    return Result.m8542constructorimpl(ResultKt.createFailure(e));
                }
                break;
            case 1:
                long j = chatFirebaseService$getMessages$12.J$1;
                userId14 = chatFirebaseService$getMessages$12.J$0;
                try {
                    ResultKt.throwOnFailure($result);
                    objAwait = $result;
                    DataSnapshot snapshot2 = (DataSnapshot) objAwait;
                    List messages2 = new ArrayList();
                    while (r14.hasNext()) {
                        break;
                    }
                    userId12 = userId14;
                    Result.Companion companion22 = Result.INSTANCE;
                    return Result.m8542constructorimpl(CollectionsKt.sortedWith(messages2, new Comparator() { // from class: org.ies.tierno.applicationamani.data.remoto.ChatFirebaseService$getMessages-0E7RQCE$$inlined$sortedBy$1
                        /* JADX WARN: Multi-variable type inference failed */
                        @Override // java.util.Comparator
                        public final int compare(T t, T t2) {
                            return ComparisonsKt.compareValues(Long.valueOf(((Message) t).getTimestamp()), Long.valueOf(((Message) t2).getTimestamp()));
                        }
                    }));
                } catch (Exception e5) {
                    e = e5;
                    userId12 = userId14;
                    Result.Companion companion32 = Result.INSTANCE;
                    return Result.m8542constructorimpl(ResultKt.createFailure(e));
                }
            default:
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }
    }

    /* JADX INFO: renamed from: org.ies.tierno.applicationamani.data.remoto.ChatFirebaseService$observeTyping$1, reason: invalid class name and case insensitive filesystem */
    /* JADX INFO: compiled from: ChatFirebaseService.kt */
    @Metadata(d1 = {"\u0000\u000e\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000b\u0010\u0000\u001a\u00020\u0001*\b\u0012\u0004\u0012\u00020\u00030\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/channels/ProducerScope;", ""}, k = 3, mv = {2, 2, 0}, xi = 48)
    @DebugMetadata(c = "org.ies.tierno.applicationamani.data.remoto.ChatFirebaseService$observeTyping$1", f = "ChatFirebaseService.kt", i = {0, 0, 0, 0}, l = {212}, m = "invokeSuspend", n = {"$this$callbackFlow", "roomId", "typingRefChild", ServiceSpecificExtraArgs.CastExtraArgs.LISTENER}, s = {"L$0", "L$1", "L$2", "L$3"})
    static final class C08001 extends SuspendLambda implements Function2<ProducerScope<? super Boolean>, Continuation<? super Unit>, Object> {
        final /* synthetic */ long $userId1;
        final /* synthetic */ long $userId2;
        private /* synthetic */ Object L$0;
        Object L$1;
        Object L$2;
        Object L$3;
        int label;
        final /* synthetic */ ChatFirebaseService this$0;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        C08001(long j, long j2, ChatFirebaseService chatFirebaseService, Continuation<? super C08001> continuation) {
            super(2, continuation);
            this.$userId1 = j;
            this.$userId2 = j2;
            this.this$0 = chatFirebaseService;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            C08001 c08001 = new C08001(this.$userId1, this.$userId2, this.this$0, continuation);
            c08001.L$0 = obj;
            return c08001;
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(ProducerScope<? super Boolean> producerScope, Continuation<? super Unit> continuation) {
            return ((C08001) create(producerScope, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        /* JADX WARN: Type inference failed for: r4v1, types: [java.lang.Object, org.ies.tierno.applicationamani.data.remoto.ChatFirebaseService$observeTyping$1$listener$1] */
        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object $result) {
            final ProducerScope $this$callbackFlow = (ProducerScope) this.L$0;
            Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
            switch (this.label) {
                case 0:
                    ResultKt.throwOnFailure($result);
                    String roomId = ChatFirebaseService.INSTANCE.generateRoomId(this.$userId1, this.$userId2);
                    final DatabaseReference typingRefChild = this.this$0.typingRef.child(roomId);
                    Intrinsics.checkNotNullExpressionValue(typingRefChild, "child(...)");
                    final ?? r4 = new ValueEventListener() { // from class: org.ies.tierno.applicationamani.data.remoto.ChatFirebaseService$observeTyping$1$listener$1
                        @Override // com.google.firebase.database.ValueEventListener
                        public void onDataChange(DataSnapshot snapshot) {
                            Intrinsics.checkNotNullParameter(snapshot, "snapshot");
                            Iterable<DataSnapshot> children = snapshot.getChildren();
                            Intrinsics.checkNotNullExpressionValue(children, "getChildren(...)");
                            boolean hasTyping = false;
                            if (!(children instanceof Collection) || !((Collection) children).isEmpty()) {
                                Iterator<DataSnapshot> it = children.iterator();
                                while (true) {
                                    if (!it.hasNext()) {
                                        break;
                                    } else if (Intrinsics.areEqual(((DataSnapshot) it.next()).getValue(Boolean.TYPE), (Object) true)) {
                                        hasTyping = true;
                                        break;
                                    }
                                }
                            }
                            $this$callbackFlow.mo10050trySendJP2dKIU(Boolean.valueOf(hasTyping));
                        }

                        @Override // com.google.firebase.database.ValueEventListener
                        public void onCancelled(DatabaseError error) {
                            Intrinsics.checkNotNullParameter(error, "error");
                            $this$callbackFlow.close(error.toException());
                        }
                    };
                    typingRefChild.addValueEventListener((ValueEventListener) r4);
                    this.L$0 = SpillingKt.nullOutSpilledVariable($this$callbackFlow);
                    this.L$1 = SpillingKt.nullOutSpilledVariable(roomId);
                    this.L$2 = SpillingKt.nullOutSpilledVariable(typingRefChild);
                    this.L$3 = SpillingKt.nullOutSpilledVariable(r4);
                    this.label = 1;
                    if (ProduceKt.awaitClose($this$callbackFlow, new Function0() { // from class: org.ies.tierno.applicationamani.data.remoto.ChatFirebaseService$observeTyping$1$$ExternalSyntheticLambda0
                        @Override // kotlin.jvm.functions.Function0
                        public final Object invoke() {
                            return ChatFirebaseService.C08001.invokeSuspend$lambda$0(typingRefChild, r4);
                        }
                    }, this) == coroutine_suspended) {
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

        static final Unit invokeSuspend$lambda$0(DatabaseReference $typingRefChild, ChatFirebaseService$observeTyping$1$listener$1 $listener) {
            $typingRefChild.removeEventListener($listener);
            return Unit.INSTANCE;
        }
    }

    public final Flow<Boolean> observeTyping(long userId1, long userId2) {
        return FlowKt.callbackFlow(new C08001(userId1, userId2, this, null));
    }

    /* JADX WARN: Removed duplicated region for block: B:7:0x0014  */
    /* JADX INFO: renamed from: startTyping-0E7RQCE, reason: not valid java name */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final Object m10341startTyping0E7RQCE(long senderId, long receiverId, Continuation<? super Result<Unit>> continuation) {
        ChatFirebaseService$startTyping$1 chatFirebaseService$startTyping$1;
        if (continuation instanceof ChatFirebaseService$startTyping$1) {
            chatFirebaseService$startTyping$1 = (ChatFirebaseService$startTyping$1) continuation;
            if ((chatFirebaseService$startTyping$1.label & Integer.MIN_VALUE) != 0) {
                chatFirebaseService$startTyping$1.label -= Integer.MIN_VALUE;
            } else {
                chatFirebaseService$startTyping$1 = new ChatFirebaseService$startTyping$1(this, continuation);
            }
        }
        Object $result = chatFirebaseService$startTyping$1.result;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        try {
            switch (chatFirebaseService$startTyping$1.label) {
                case 0:
                    ResultKt.throwOnFailure($result);
                    String roomId = INSTANCE.generateRoomId(senderId, receiverId);
                    Task<Void> value = this.typingRef.child(roomId).child(String.valueOf(senderId)).setValue(Boxing.boxBoolean(true));
                    Intrinsics.checkNotNullExpressionValue(value, "setValue(...)");
                    chatFirebaseService$startTyping$1.L$0 = SpillingKt.nullOutSpilledVariable(roomId);
                    chatFirebaseService$startTyping$1.J$0 = senderId;
                    chatFirebaseService$startTyping$1.J$1 = receiverId;
                    chatFirebaseService$startTyping$1.label = 1;
                    if (TasksKt.await(value, chatFirebaseService$startTyping$1) == coroutine_suspended) {
                        return coroutine_suspended;
                    }
                    break;
                case 1:
                    long receiverId2 = chatFirebaseService$startTyping$1.J$1;
                    long senderId2 = chatFirebaseService$startTyping$1.J$0;
                    ResultKt.throwOnFailure($result);
                    break;
                default:
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            Result.Companion companion = Result.INSTANCE;
            return Result.m8542constructorimpl(Unit.INSTANCE);
        } catch (Exception e) {
            Result.Companion companion2 = Result.INSTANCE;
            return Result.m8542constructorimpl(ResultKt.createFailure(e));
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:7:0x0014  */
    /* JADX INFO: renamed from: stopTyping-0E7RQCE, reason: not valid java name */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final Object m10342stopTyping0E7RQCE(long senderId, long receiverId, Continuation<? super Result<Unit>> continuation) {
        ChatFirebaseService$stopTyping$1 chatFirebaseService$stopTyping$1;
        if (continuation instanceof ChatFirebaseService$stopTyping$1) {
            chatFirebaseService$stopTyping$1 = (ChatFirebaseService$stopTyping$1) continuation;
            if ((chatFirebaseService$stopTyping$1.label & Integer.MIN_VALUE) != 0) {
                chatFirebaseService$stopTyping$1.label -= Integer.MIN_VALUE;
            } else {
                chatFirebaseService$stopTyping$1 = new ChatFirebaseService$stopTyping$1(this, continuation);
            }
        }
        Object $result = chatFirebaseService$stopTyping$1.result;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        try {
            switch (chatFirebaseService$stopTyping$1.label) {
                case 0:
                    ResultKt.throwOnFailure($result);
                    String roomId = INSTANCE.generateRoomId(senderId, receiverId);
                    Task<Void> taskRemoveValue = this.typingRef.child(roomId).child(String.valueOf(senderId)).removeValue();
                    Intrinsics.checkNotNullExpressionValue(taskRemoveValue, "removeValue(...)");
                    chatFirebaseService$stopTyping$1.L$0 = SpillingKt.nullOutSpilledVariable(roomId);
                    chatFirebaseService$stopTyping$1.J$0 = senderId;
                    chatFirebaseService$stopTyping$1.J$1 = receiverId;
                    chatFirebaseService$stopTyping$1.label = 1;
                    if (TasksKt.await(taskRemoveValue, chatFirebaseService$stopTyping$1) == coroutine_suspended) {
                        return coroutine_suspended;
                    }
                    break;
                case 1:
                    long receiverId2 = chatFirebaseService$stopTyping$1.J$1;
                    long senderId2 = chatFirebaseService$stopTyping$1.J$0;
                    ResultKt.throwOnFailure($result);
                    break;
                default:
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            Result.Companion companion = Result.INSTANCE;
            return Result.m8542constructorimpl(Unit.INSTANCE);
        } catch (Exception e) {
            Result.Companion companion2 = Result.INSTANCE;
            return Result.m8542constructorimpl(ResultKt.createFailure(e));
        }
    }

    /* JADX INFO: renamed from: org.ies.tierno.applicationamani.data.remoto.ChatFirebaseService$observeUserOnline$1, reason: invalid class name and case insensitive filesystem */
    /* JADX INFO: compiled from: ChatFirebaseService.kt */
    @Metadata(d1 = {"\u0000\u000e\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000b\u0010\u0000\u001a\u00020\u0001*\b\u0012\u0004\u0012\u00020\u00030\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/channels/ProducerScope;", ""}, k = 3, mv = {2, 2, 0}, xi = 48)
    @DebugMetadata(c = "org.ies.tierno.applicationamani.data.remoto.ChatFirebaseService$observeUserOnline$1", f = "ChatFirebaseService.kt", i = {0, 0, 0}, l = {252}, m = "invokeSuspend", n = {"$this$callbackFlow", "userRef", ServiceSpecificExtraArgs.CastExtraArgs.LISTENER}, s = {"L$0", "L$1", "L$2"})
    static final class C08011 extends SuspendLambda implements Function2<ProducerScope<? super Boolean>, Continuation<? super Unit>, Object> {
        final /* synthetic */ long $userId;
        private /* synthetic */ Object L$0;
        Object L$1;
        Object L$2;
        int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        C08011(long j, Continuation<? super C08011> continuation) {
            super(2, continuation);
            this.$userId = j;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            C08011 c08011 = ChatFirebaseService.this.new C08011(this.$userId, continuation);
            c08011.L$0 = obj;
            return c08011;
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(ProducerScope<? super Boolean> producerScope, Continuation<? super Unit> continuation) {
            return ((C08011) create(producerScope, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        /* JADX WARN: Type inference failed for: r3v4, types: [java.lang.Object, org.ies.tierno.applicationamani.data.remoto.ChatFirebaseService$observeUserOnline$1$listener$1] */
        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object $result) {
            final ProducerScope $this$callbackFlow = (ProducerScope) this.L$0;
            Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
            switch (this.label) {
                case 0:
                    ResultKt.throwOnFailure($result);
                    final DatabaseReference userRef = ChatFirebaseService.this.usersRef.child(String.valueOf(this.$userId)).child("isOnline");
                    Intrinsics.checkNotNullExpressionValue(userRef, "child(...)");
                    final ?? r3 = new ValueEventListener() { // from class: org.ies.tierno.applicationamani.data.remoto.ChatFirebaseService$observeUserOnline$1$listener$1
                        @Override // com.google.firebase.database.ValueEventListener
                        public void onDataChange(DataSnapshot snapshot) {
                            Intrinsics.checkNotNullParameter(snapshot, "snapshot");
                            Boolean bool = (Boolean) snapshot.getValue(Boolean.TYPE);
                            boolean isOnline = bool != null ? bool.booleanValue() : false;
                            $this$callbackFlow.mo10050trySendJP2dKIU(Boolean.valueOf(isOnline));
                        }

                        @Override // com.google.firebase.database.ValueEventListener
                        public void onCancelled(DatabaseError error) {
                            Intrinsics.checkNotNullParameter(error, "error");
                            $this$callbackFlow.close(error.toException());
                        }
                    };
                    userRef.addValueEventListener((ValueEventListener) r3);
                    this.L$0 = SpillingKt.nullOutSpilledVariable($this$callbackFlow);
                    this.L$1 = SpillingKt.nullOutSpilledVariable(userRef);
                    this.L$2 = SpillingKt.nullOutSpilledVariable(r3);
                    this.label = 1;
                    if (ProduceKt.awaitClose($this$callbackFlow, new Function0() { // from class: org.ies.tierno.applicationamani.data.remoto.ChatFirebaseService$observeUserOnline$1$$ExternalSyntheticLambda0
                        @Override // kotlin.jvm.functions.Function0
                        public final Object invoke() {
                            return ChatFirebaseService.C08011.invokeSuspend$lambda$0(userRef, r3);
                        }
                    }, this) == coroutine_suspended) {
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

        static final Unit invokeSuspend$lambda$0(DatabaseReference $userRef, ChatFirebaseService$observeUserOnline$1$listener$1 $listener) {
            $userRef.removeEventListener($listener);
            return Unit.INSTANCE;
        }
    }

    public final Flow<Boolean> observeUserOnline(long userId) {
        return FlowKt.callbackFlow(new C08011(userId, null));
    }

    /* JADX WARN: Removed duplicated region for block: B:7:0x0014  */
    /* JADX INFO: renamed from: updateUserOnline-0E7RQCE, reason: not valid java name */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final Object m10344updateUserOnline0E7RQCE(long userId, boolean isOnline, Continuation<? super Result<Unit>> continuation) {
        ChatFirebaseService$updateUserOnline$1 chatFirebaseService$updateUserOnline$1;
        if (continuation instanceof ChatFirebaseService$updateUserOnline$1) {
            chatFirebaseService$updateUserOnline$1 = (ChatFirebaseService$updateUserOnline$1) continuation;
            if ((chatFirebaseService$updateUserOnline$1.label & Integer.MIN_VALUE) != 0) {
                chatFirebaseService$updateUserOnline$1.label -= Integer.MIN_VALUE;
            } else {
                chatFirebaseService$updateUserOnline$1 = new ChatFirebaseService$updateUserOnline$1(this, continuation);
            }
        }
        Object $result = chatFirebaseService$updateUserOnline$1.result;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        try {
            switch (chatFirebaseService$updateUserOnline$1.label) {
                case 0:
                    ResultKt.throwOnFailure($result);
                    Task<Void> value = this.usersRef.child(String.valueOf(userId)).child("isOnline").setValue(Boxing.boxBoolean(isOnline));
                    Intrinsics.checkNotNullExpressionValue(value, "setValue(...)");
                    chatFirebaseService$updateUserOnline$1.J$0 = userId;
                    chatFirebaseService$updateUserOnline$1.Z$0 = isOnline;
                    chatFirebaseService$updateUserOnline$1.label = 1;
                    if (TasksKt.await(value, chatFirebaseService$updateUserOnline$1) == coroutine_suspended) {
                        return coroutine_suspended;
                    }
                    break;
                case 1:
                    boolean isOnline2 = chatFirebaseService$updateUserOnline$1.Z$0;
                    long userId2 = chatFirebaseService$updateUserOnline$1.J$0;
                    ResultKt.throwOnFailure($result);
                    break;
                default:
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            Result.Companion companion = Result.INSTANCE;
            return Result.m8542constructorimpl(Unit.INSTANCE);
        } catch (Exception e) {
            Result.Companion companion2 = Result.INSTANCE;
            return Result.m8542constructorimpl(ResultKt.createFailure(e));
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:7:0x0014  */
    /* JADX INFO: renamed from: updateLastSeen-0E7RQCE, reason: not valid java name */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final Object m10343updateLastSeen0E7RQCE(long userId, long lastSeen, Continuation<? super Result<Unit>> continuation) {
        ChatFirebaseService$updateLastSeen$1 chatFirebaseService$updateLastSeen$1;
        if (continuation instanceof ChatFirebaseService$updateLastSeen$1) {
            chatFirebaseService$updateLastSeen$1 = (ChatFirebaseService$updateLastSeen$1) continuation;
            if ((chatFirebaseService$updateLastSeen$1.label & Integer.MIN_VALUE) != 0) {
                chatFirebaseService$updateLastSeen$1.label -= Integer.MIN_VALUE;
            } else {
                chatFirebaseService$updateLastSeen$1 = new ChatFirebaseService$updateLastSeen$1(this, continuation);
            }
        }
        Object $result = chatFirebaseService$updateLastSeen$1.result;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        try {
            switch (chatFirebaseService$updateLastSeen$1.label) {
                case 0:
                    ResultKt.throwOnFailure($result);
                    Task<Void> value = this.usersRef.child(String.valueOf(userId)).child("lastSeen").setValue(Boxing.boxLong(lastSeen));
                    Intrinsics.checkNotNullExpressionValue(value, "setValue(...)");
                    chatFirebaseService$updateLastSeen$1.J$0 = userId;
                    chatFirebaseService$updateLastSeen$1.J$1 = lastSeen;
                    chatFirebaseService$updateLastSeen$1.label = 1;
                    if (TasksKt.await(value, chatFirebaseService$updateLastSeen$1) == coroutine_suspended) {
                        return coroutine_suspended;
                    }
                    break;
                case 1:
                    long lastSeen2 = chatFirebaseService$updateLastSeen$1.J$1;
                    long userId2 = chatFirebaseService$updateLastSeen$1.J$0;
                    ResultKt.throwOnFailure($result);
                    break;
                default:
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            Result.Companion companion = Result.INSTANCE;
            return Result.m8542constructorimpl(Unit.INSTANCE);
        } catch (Exception e) {
            Result.Companion companion2 = Result.INSTANCE;
            return Result.m8542constructorimpl(ResultKt.createFailure(e));
        }
    }

    /* JADX INFO: renamed from: markMessageDelivered-0E7RQCE, reason: not valid java name */
    public final Object m10338markMessageDelivered0E7RQCE(long messageId, long receiverId, Continuation<? super Result<Unit>> continuation) {
        try {
            Result.Companion companion = Result.INSTANCE;
            return Result.m8542constructorimpl(Unit.INSTANCE);
        } catch (Exception e) {
            Result.Companion companion2 = Result.INSTANCE;
            return Result.m8542constructorimpl(ResultKt.createFailure(e));
        }
    }

    /* JADX INFO: renamed from: markMessageAsRead-0E7RQCE, reason: not valid java name */
    public final Object m10337markMessageAsRead0E7RQCE(long messageId, long receiverId, Continuation<? super Result<Unit>> continuation) {
        try {
            Result.Companion companion = Result.INSTANCE;
            return Result.m8542constructorimpl(Unit.INSTANCE);
        } catch (Exception e) {
            Result.Companion companion2 = Result.INSTANCE;
            return Result.m8542constructorimpl(ResultKt.createFailure(e));
        }
    }

    /* JADX INFO: renamed from: org.ies.tierno.applicationamani.data.remoto.ChatFirebaseService$observeMessageDelivery$1, reason: invalid class name */
    /* JADX INFO: compiled from: ChatFirebaseService.kt */
    @Metadata(d1 = {"\u0000\u000e\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000b\u0010\u0000\u001a\u00020\u0001*\b\u0012\u0004\u0012\u00020\u00030\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/channels/ProducerScope;", ""}, k = 3, mv = {2, 2, 0}, xi = 48)
    @DebugMetadata(c = "org.ies.tierno.applicationamani.data.remoto.ChatFirebaseService$observeMessageDelivery$1", f = "ChatFirebaseService.kt", i = {0}, l = {296}, m = "invokeSuspend", n = {"$this$callbackFlow"}, s = {"L$0"})
    static final class AnonymousClass1 extends SuspendLambda implements Function2<ProducerScope<? super Boolean>, Continuation<? super Unit>, Object> {
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
        public final Object invoke(ProducerScope<? super Boolean> producerScope, Continuation<? super Unit> continuation) {
            return ((AnonymousClass1) create(producerScope, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object $result) {
            ProducerScope $this$callbackFlow = (ProducerScope) this.L$0;
            Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
            switch (this.label) {
                case 0:
                    ResultKt.throwOnFailure($result);
                    $this$callbackFlow.mo10050trySendJP2dKIU(Boxing.boxBoolean(false));
                    this.L$0 = SpillingKt.nullOutSpilledVariable($this$callbackFlow);
                    this.label = 1;
                    if (ProduceKt.awaitClose($this$callbackFlow, new Function0() { // from class: org.ies.tierno.applicationamani.data.remoto.ChatFirebaseService$observeMessageDelivery$1$$ExternalSyntheticLambda0
                        @Override // kotlin.jvm.functions.Function0
                        public final Object invoke() {
                            return Unit.INSTANCE;
                        }
                    }, this) == coroutine_suspended) {
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

    public final Flow<Boolean> observeMessageDelivery(long messageId, long receiverId) {
        return FlowKt.callbackFlow(new AnonymousClass1(null));
    }

    /* JADX INFO: renamed from: org.ies.tierno.applicationamani.data.remoto.ChatFirebaseService$observeMessageRead$1, reason: invalid class name and case insensitive filesystem */
    /* JADX INFO: compiled from: ChatFirebaseService.kt */
    @Metadata(d1 = {"\u0000\u000e\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000b\u0010\u0000\u001a\u00020\u0001*\b\u0012\u0004\u0012\u00020\u00030\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/channels/ProducerScope;", ""}, k = 3, mv = {2, 2, 0}, xi = 48)
    @DebugMetadata(c = "org.ies.tierno.applicationamani.data.remoto.ChatFirebaseService$observeMessageRead$1", f = "ChatFirebaseService.kt", i = {0}, l = {302}, m = "invokeSuspend", n = {"$this$callbackFlow"}, s = {"L$0"})
    static final class C07981 extends SuspendLambda implements Function2<ProducerScope<? super Boolean>, Continuation<? super Unit>, Object> {
        private /* synthetic */ Object L$0;
        int label;

        C07981(Continuation<? super C07981> continuation) {
            super(2, continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            C07981 c07981 = new C07981(continuation);
            c07981.L$0 = obj;
            return c07981;
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(ProducerScope<? super Boolean> producerScope, Continuation<? super Unit> continuation) {
            return ((C07981) create(producerScope, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object $result) {
            ProducerScope $this$callbackFlow = (ProducerScope) this.L$0;
            Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
            switch (this.label) {
                case 0:
                    ResultKt.throwOnFailure($result);
                    $this$callbackFlow.mo10050trySendJP2dKIU(Boxing.boxBoolean(false));
                    this.L$0 = SpillingKt.nullOutSpilledVariable($this$callbackFlow);
                    this.label = 1;
                    if (ProduceKt.awaitClose($this$callbackFlow, new Function0() { // from class: org.ies.tierno.applicationamani.data.remoto.ChatFirebaseService$observeMessageRead$1$$ExternalSyntheticLambda0
                        @Override // kotlin.jvm.functions.Function0
                        public final Object invoke() {
                            return Unit.INSTANCE;
                        }
                    }, this) == coroutine_suspended) {
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

    public final Flow<Boolean> observeMessageRead(long messageId, long receiverId) {
        return FlowKt.callbackFlow(new C07981(null));
    }
}
