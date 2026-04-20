.class public final Lorg/ies/tierno/applicationamani/data/remoto/ChatFirebaseService;
.super Ljava/lang/Object;
.source "ChatFirebaseService.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/ies/tierno/applicationamani/data/remoto/ChatFirebaseService$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nChatFirebaseService.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ChatFirebaseService.kt\norg/ies/tierno/applicationamani/data/remoto/ChatFirebaseService\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 Maps.kt\nkotlin/collections/MapsKt__MapsKt\n+ 4 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,305:1\n1#2:306\n508#3:307\n454#3:308\n1266#4,4:309\n1068#4:313\n*S KotlinDebug\n*F\n+ 1 ChatFirebaseService.kt\norg/ies/tierno/applicationamani/data/remoto/ChatFirebaseService\n*L\n165#1:307\n165#1:308\n165#1:309,4\n186#1:313\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000L\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0002\u0008\r\n\u0002\u0010\u000b\n\u0002\u0008\u0016\u0008\u0007\u0018\u0000 :2\u00020\u0001:\u0001:B\u000f\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0004\u0008\u0004\u0010\u0005J\"\u0010\n\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\r0\u000c0\u000b2\u0006\u0010\u000e\u001a\u00020\u000f2\u0006\u0010\u0010\u001a\u00020\u000fJR\u0010\u0011\u001a\u0008\u0012\u0004\u0012\u00020\u00130\u00122\u0006\u0010\u0014\u001a\u00020\u000f2\u0006\u0010\u0015\u001a\u00020\u000f2\u0006\u0010\u0016\u001a\u00020\u00172\n\u0008\u0002\u0010\u0018\u001a\u0004\u0018\u00010\u00172\n\u0008\u0002\u0010\u0019\u001a\u0004\u0018\u00010\u00172\n\u0008\u0002\u0010\u001a\u001a\u0004\u0018\u00010\u0017H\u0086@\u00a2\u0006\u0004\u0008\u001b\u0010\u001cJ&\u0010\u001d\u001a\u0008\u0012\u0004\u0012\u00020\u00130\u00122\u0006\u0010\u001e\u001a\u00020\u000f2\u0006\u0010\u001f\u001a\u00020\u000fH\u0086@\u00a2\u0006\u0004\u0008 \u0010!J,\u0010\"\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\r0\u000c0\u00122\u0006\u0010\u000e\u001a\u00020\u000f2\u0006\u0010\u0010\u001a\u00020\u000fH\u0086@\u00a2\u0006\u0004\u0008#\u0010!J\u001c\u0010$\u001a\u0008\u0012\u0004\u0012\u00020%0\u000b2\u0006\u0010\u000e\u001a\u00020\u000f2\u0006\u0010\u0010\u001a\u00020\u000fJ&\u0010&\u001a\u0008\u0012\u0004\u0012\u00020\u00130\u00122\u0006\u0010\u0014\u001a\u00020\u000f2\u0006\u0010\u0015\u001a\u00020\u000fH\u0086@\u00a2\u0006\u0004\u0008\'\u0010!J&\u0010(\u001a\u0008\u0012\u0004\u0012\u00020\u00130\u00122\u0006\u0010\u0014\u001a\u00020\u000f2\u0006\u0010\u0015\u001a\u00020\u000fH\u0086@\u00a2\u0006\u0004\u0008)\u0010!J\u0014\u0010*\u001a\u0008\u0012\u0004\u0012\u00020%0\u000b2\u0006\u0010+\u001a\u00020\u000fJ&\u0010,\u001a\u0008\u0012\u0004\u0012\u00020\u00130\u00122\u0006\u0010+\u001a\u00020\u000f2\u0006\u0010-\u001a\u00020%H\u0086@\u00a2\u0006\u0004\u0008.\u0010/J&\u00100\u001a\u0008\u0012\u0004\u0012\u00020\u00130\u00122\u0006\u0010+\u001a\u00020\u000f2\u0006\u00101\u001a\u00020\u000fH\u0086@\u00a2\u0006\u0004\u00082\u0010!J&\u00103\u001a\u0008\u0012\u0004\u0012\u00020\u00130\u00122\u0006\u00104\u001a\u00020\u000f2\u0006\u0010\u0015\u001a\u00020\u000fH\u0086@\u00a2\u0006\u0004\u00085\u0010!J&\u00106\u001a\u0008\u0012\u0004\u0012\u00020\u00130\u00122\u0006\u00104\u001a\u00020\u000f2\u0006\u0010\u0015\u001a\u00020\u000fH\u0086@\u00a2\u0006\u0004\u00087\u0010!J\u001c\u00108\u001a\u0008\u0012\u0004\u0012\u00020%0\u000b2\u0006\u00104\u001a\u00020\u000f2\u0006\u0010\u0015\u001a\u00020\u000fJ\u001c\u00109\u001a\u0008\u0012\u0004\u0012\u00020%0\u000b2\u0006\u00104\u001a\u00020\u000f2\u0006\u0010\u0015\u001a\u00020\u000fR\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0008\u001a\u00020\u0007X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\u0007X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006;"
    }
    d2 = {
        "Lorg/ies/tierno/applicationamani/data/remoto/ChatFirebaseService;",
        "",
        "firebaseInstance",
        "Lorg/ies/tierno/applicationamani/data/remoto/FirebaseInstance;",
        "<init>",
        "(Lorg/ies/tierno/applicationamani/data/remoto/FirebaseInstance;)V",
        "chatsRef",
        "Lcom/google/firebase/database/DatabaseReference;",
        "usersRef",
        "typingRef",
        "observeMessages",
        "Lkotlinx/coroutines/flow/Flow;",
        "",
        "Lorg/ies/tierno/applicationamani/domain/models/Message;",
        "userId1",
        "",
        "userId2",
        "sendMessage",
        "Lkotlin/Result;",
        "",
        "senderId",
        "receiverId",
        "content",
        "",
        "attachmentUrl",
        "attachmentType",
        "attachmentName",
        "sendMessage-bMdYcbs",
        "(JJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "markMessagesAsRead",
        "currentUserId",
        "otherUserId",
        "markMessagesAsRead-0E7RQCE",
        "(JJLkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "getMessages",
        "getMessages-0E7RQCE",
        "observeTyping",
        "",
        "startTyping",
        "startTyping-0E7RQCE",
        "stopTyping",
        "stopTyping-0E7RQCE",
        "observeUserOnline",
        "userId",
        "updateUserOnline",
        "isOnline",
        "updateUserOnline-0E7RQCE",
        "(JZLkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "updateLastSeen",
        "lastSeen",
        "updateLastSeen-0E7RQCE",
        "markMessageDelivered",
        "messageId",
        "markMessageDelivered-0E7RQCE",
        "markMessageAsRead",
        "markMessageAsRead-0E7RQCE",
        "observeMessageDelivery",
        "observeMessageRead",
        "Companion",
        "app"
    }
    k = 0x1
    mv = {
        0x2,
        0x2,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final $stable:I

.field public static final Companion:Lorg/ies/tierno/applicationamani/data/remoto/ChatFirebaseService$Companion;


# instance fields
.field private final chatsRef:Lcom/google/firebase/database/DatabaseReference;

.field private final firebaseInstance:Lorg/ies/tierno/applicationamani/data/remoto/FirebaseInstance;

.field private final typingRef:Lcom/google/firebase/database/DatabaseReference;

.field private final usersRef:Lcom/google/firebase/database/DatabaseReference;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lorg/ies/tierno/applicationamani/data/remoto/ChatFirebaseService$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/ies/tierno/applicationamani/data/remoto/ChatFirebaseService$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lorg/ies/tierno/applicationamani/data/remoto/ChatFirebaseService;->Companion:Lorg/ies/tierno/applicationamani/data/remoto/ChatFirebaseService$Companion;

    const/16 v0, 0x8

    sput v0, Lorg/ies/tierno/applicationamani/data/remoto/ChatFirebaseService;->$stable:I

    return-void
.end method

.method public constructor <init>(Lorg/ies/tierno/applicationamani/data/remoto/FirebaseInstance;)V
    .locals 2
    .param p1, "firebaseInstance"    # Lorg/ies/tierno/applicationamani/data/remoto/FirebaseInstance;

    const-string v0, "firebaseInstance"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/ies/tierno/applicationamani/data/remoto/ChatFirebaseService;->firebaseInstance:Lorg/ies/tierno/applicationamani/data/remoto/FirebaseInstance;

    .line 14
    iget-object v0, p0, Lorg/ies/tierno/applicationamani/data/remoto/ChatFirebaseService;->firebaseInstance:Lorg/ies/tierno/applicationamani/data/remoto/FirebaseInstance;

    const-string v1, "chats"

    invoke-virtual {v0, v1}, Lorg/ies/tierno/applicationamani/data/remoto/FirebaseInstance;->getReference(Ljava/lang/String;)Lcom/google/firebase/database/DatabaseReference;

    move-result-object v0

    iput-object v0, p0, Lorg/ies/tierno/applicationamani/data/remoto/ChatFirebaseService;->chatsRef:Lcom/google/firebase/database/DatabaseReference;

    .line 15
    iget-object v0, p0, Lorg/ies/tierno/applicationamani/data/remoto/ChatFirebaseService;->firebaseInstance:Lorg/ies/tierno/applicationamani/data/remoto/FirebaseInstance;

    const-string v1, "users"

    invoke-virtual {v0, v1}, Lorg/ies/tierno/applicationamani/data/remoto/FirebaseInstance;->getReference(Ljava/lang/String;)Lcom/google/firebase/database/DatabaseReference;

    move-result-object v0

    iput-object v0, p0, Lorg/ies/tierno/applicationamani/data/remoto/ChatFirebaseService;->usersRef:Lcom/google/firebase/database/DatabaseReference;

    .line 16
    iget-object v0, p0, Lorg/ies/tierno/applicationamani/data/remoto/ChatFirebaseService;->firebaseInstance:Lorg/ies/tierno/applicationamani/data/remoto/FirebaseInstance;

    const-string v1, "typing"

    invoke-virtual {v0, v1}, Lorg/ies/tierno/applicationamani/data/remoto/FirebaseInstance;->getReference(Ljava/lang/String;)Lcom/google/firebase/database/DatabaseReference;

    move-result-object v0

    iput-object v0, p0, Lorg/ies/tierno/applicationamani/data/remoto/ChatFirebaseService;->typingRef:Lcom/google/firebase/database/DatabaseReference;

    .line 12
    return-void
.end method

.method public static final synthetic access$getChatsRef$p(Lorg/ies/tierno/applicationamani/data/remoto/ChatFirebaseService;)Lcom/google/firebase/database/DatabaseReference;
    .locals 1
    .param p0, "$this"    # Lorg/ies/tierno/applicationamani/data/remoto/ChatFirebaseService;

    .line 12
    iget-object v0, p0, Lorg/ies/tierno/applicationamani/data/remoto/ChatFirebaseService;->chatsRef:Lcom/google/firebase/database/DatabaseReference;

    return-object v0
.end method

.method public static final synthetic access$getTypingRef$p(Lorg/ies/tierno/applicationamani/data/remoto/ChatFirebaseService;)Lcom/google/firebase/database/DatabaseReference;
    .locals 1
    .param p0, "$this"    # Lorg/ies/tierno/applicationamani/data/remoto/ChatFirebaseService;

    .line 12
    iget-object v0, p0, Lorg/ies/tierno/applicationamani/data/remoto/ChatFirebaseService;->typingRef:Lcom/google/firebase/database/DatabaseReference;

    return-object v0
.end method

.method public static final synthetic access$getUsersRef$p(Lorg/ies/tierno/applicationamani/data/remoto/ChatFirebaseService;)Lcom/google/firebase/database/DatabaseReference;
    .locals 1
    .param p0, "$this"    # Lorg/ies/tierno/applicationamani/data/remoto/ChatFirebaseService;

    .line 12
    iget-object v0, p0, Lorg/ies/tierno/applicationamani/data/remoto/ChatFirebaseService;->usersRef:Lcom/google/firebase/database/DatabaseReference;

    return-object v0
.end method

.method public static synthetic sendMessage-bMdYcbs$default(Lorg/ies/tierno/applicationamani/data/remoto/ChatFirebaseService;JJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;ILjava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 84
    and-int/lit8 p11, p10, 0x8

    const/4 v0, 0x0

    if-eqz p11, :cond_0

    .line 88
    move-object p6, v0

    .line 84
    :cond_0
    and-int/lit8 p11, p10, 0x10

    if-eqz p11, :cond_1

    .line 89
    move-object p7, v0

    .line 84
    :cond_1
    and-int/lit8 p10, p10, 0x20

    if-eqz p10, :cond_2

    .line 90
    move-object p8, v0

    .line 84
    :cond_2
    invoke-virtual/range {p0 .. p9}, Lorg/ies/tierno/applicationamani/data/remoto/ChatFirebaseService;->sendMessage-bMdYcbs(JJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final getMessages-0E7RQCE(JJLkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 38
    .param p1, "userId1"    # J
    .param p3, "userId2"    # J
    .param p5, "$completion"    # Lkotlin/coroutines/Continuation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJ",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Result<",
            "+",
            "Ljava/util/List<",
            "Lorg/ies/tierno/applicationamani/domain/models/Message;",
            ">;>;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    move-object/from16 v1, p0

    move-wide/from16 v2, p1

    move-wide/from16 v4, p3

    move-object/from16 v6, p5

    instance-of v0, v6, Lorg/ies/tierno/applicationamani/data/remoto/ChatFirebaseService$getMessages$1;

    if-eqz v0, :cond_0

    move-object v0, v6

    check-cast v0, Lorg/ies/tierno/applicationamani/data/remoto/ChatFirebaseService$getMessages$1;

    iget v7, v0, Lorg/ies/tierno/applicationamani/data/remoto/ChatFirebaseService$getMessages$1;->label:I

    const/high16 v8, -0x80000000

    and-int/2addr v7, v8

    if-eqz v7, :cond_0

    iget v7, v0, Lorg/ies/tierno/applicationamani/data/remoto/ChatFirebaseService$getMessages$1;->label:I

    sub-int/2addr v7, v8

    iput v7, v0, Lorg/ies/tierno/applicationamani/data/remoto/ChatFirebaseService$getMessages$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lorg/ies/tierno/applicationamani/data/remoto/ChatFirebaseService$getMessages$1;

    invoke-direct {v0, v1, v6}, Lorg/ies/tierno/applicationamani/data/remoto/ChatFirebaseService$getMessages$1;-><init>(Lorg/ies/tierno/applicationamani/data/remoto/ChatFirebaseService;Lkotlin/coroutines/Continuation;)V

    :goto_0
    move-object v7, v0

    .local v7, "$continuation":Lkotlin/coroutines/Continuation;
    iget-object v8, v7, Lorg/ies/tierno/applicationamani/data/remoto/ChatFirebaseService$getMessages$1;->result:Ljava/lang/Object;

    .local v8, "$result":Ljava/lang/Object;
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 140
    iget v9, v7, Lorg/ies/tierno/applicationamani/data/remoto/ChatFirebaseService$getMessages$1;->label:I

    const/4 v10, 0x1

    packed-switch v9, :pswitch_data_0

    .end local v7    # "$continuation":Lkotlin/coroutines/Continuation;
    .end local v8    # "$result":Ljava/lang/Object;
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .restart local v7    # "$continuation":Lkotlin/coroutines/Continuation;
    .restart local v8    # "$result":Ljava/lang/Object;
    :pswitch_0
    iget-wide v4, v7, Lorg/ies/tierno/applicationamani/data/remoto/ChatFirebaseService$getMessages$1;->J$1:J

    .end local p3    # "userId2":J
    .local v4, "userId2":J
    iget-wide v2, v7, Lorg/ies/tierno/applicationamani/data/remoto/ChatFirebaseService$getMessages$1;->J$0:J

    .end local p1    # "userId1":J
    .local v2, "userId1":J
    iget-object v0, v7, Lorg/ies/tierno/applicationamani/data/remoto/ChatFirebaseService$getMessages$1;->L$1:Ljava/lang/Object;

    check-cast v0, Lcom/google/firebase/database/DatabaseReference;

    .local v0, "messagesRef":Lcom/google/firebase/database/DatabaseReference;
    iget-object v9, v7, Lorg/ies/tierno/applicationamani/data/remoto/ChatFirebaseService$getMessages$1;->L$0:Ljava/lang/Object;

    check-cast v9, Ljava/lang/String;

    .local v9, "roomId":Ljava/lang/String;
    :try_start_0
    invoke-static {v8}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v11, v0

    move-object v12, v8

    goto :goto_1

    .line 187
    .end local v0    # "messagesRef":Lcom/google/firebase/database/DatabaseReference;
    .end local v9    # "roomId":Ljava/lang/String;
    :catch_0
    move-exception v0

    move-wide/from16 v36, v2

    goto/16 :goto_12

    .line 140
    .end local v2    # "userId1":J
    .end local v4    # "userId2":J
    .restart local p1    # "userId1":J
    .restart local p3    # "userId2":J
    :pswitch_1
    invoke-static {v8}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 141
    nop

    .line 142
    :try_start_1
    sget-object v9, Lorg/ies/tierno/applicationamani/data/remoto/ChatFirebaseService;->Companion:Lorg/ies/tierno/applicationamani/data/remoto/ChatFirebaseService$Companion;

    invoke-virtual {v9, v2, v3, v4, v5}, Lorg/ies/tierno/applicationamani/data/remoto/ChatFirebaseService$Companion;->generateRoomId(JJ)Ljava/lang/String;

    move-result-object v9

    .line 143
    .restart local v9    # "roomId":Ljava/lang/String;
    iget-object v11, v1, Lorg/ies/tierno/applicationamani/data/remoto/ChatFirebaseService;->chatsRef:Lcom/google/firebase/database/DatabaseReference;

    invoke-virtual {v11, v9}, Lcom/google/firebase/database/DatabaseReference;->child(Ljava/lang/String;)Lcom/google/firebase/database/DatabaseReference;

    move-result-object v11

    const-string v12, "messages"

    invoke-virtual {v11, v12}, Lcom/google/firebase/database/DatabaseReference;->child(Ljava/lang/String;)Lcom/google/firebase/database/DatabaseReference;

    move-result-object v11

    const-string v12, "child(...)"

    invoke-static {v11, v12}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 144
    .local v11, "messagesRef":Lcom/google/firebase/database/DatabaseReference;
    invoke-virtual {v11}, Lcom/google/firebase/database/DatabaseReference;->get()Lcom/google/android/gms/tasks/Task;

    move-result-object v12

    const-string v13, "get(...)"

    invoke-static {v12, v13}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v9}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    iput-object v13, v7, Lorg/ies/tierno/applicationamani/data/remoto/ChatFirebaseService$getMessages$1;->L$0:Ljava/lang/Object;

    invoke-static {v11}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    iput-object v13, v7, Lorg/ies/tierno/applicationamani/data/remoto/ChatFirebaseService$getMessages$1;->L$1:Ljava/lang/Object;

    iput-wide v2, v7, Lorg/ies/tierno/applicationamani/data/remoto/ChatFirebaseService$getMessages$1;->J$0:J

    iput-wide v4, v7, Lorg/ies/tierno/applicationamani/data/remoto/ChatFirebaseService$getMessages$1;->J$1:J

    iput v10, v7, Lorg/ies/tierno/applicationamani/data/remoto/ChatFirebaseService$getMessages$1;->label:I

    invoke-static {v12, v7}, Lkotlinx/coroutines/tasks/TasksKt;->await(Lcom/google/android/gms/tasks/Task;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v12
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4

    if-ne v12, v0, :cond_1

    .line 140
    return-object v0

    .end local p1    # "userId1":J
    .end local p3    # "userId2":J
    .restart local v2    # "userId1":J
    .restart local v4    # "userId2":J
    :cond_1
    :goto_1
    :try_start_2
    check-cast v12, Lcom/google/firebase/database/DataSnapshot;

    .line 146
    .local v12, "snapshot":Lcom/google/firebase/database/DataSnapshot;
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    check-cast v0, Ljava/util/List;

    move-object v13, v0

    .line 147
    .local v13, "messages":Ljava/util/List;
    invoke-virtual {v12}, Lcom/google/firebase/database/DataSnapshot;->getChildren()Ljava/lang/Iterable;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v14

    :goto_2
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_11

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/firebase/database/DataSnapshot;

    move-object v15, v0

    .line 148
    .local v15, "child":Lcom/google/firebase/database/DataSnapshot;
    const-string v0, "idMensaje"

    invoke-virtual {v15, v0}, Lcom/google/firebase/database/DataSnapshot;->child(Ljava/lang/String;)Lcom/google/firebase/database/DataSnapshot;

    move-result-object v0

    sget-object v10, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    invoke-virtual {v0, v10}, Lcom/google/firebase/database/DataSnapshot;->getValue(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3

    if-eqz v0, :cond_2

    :try_start_3
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v16
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_3

    :cond_2
    const-wide/16 v16, 0x0

    .line 149
    .local v16, "idMensaje":J
    :goto_3
    :try_start_4
    const-string v0, "idSender"

    invoke-virtual {v15, v0}, Lcom/google/firebase/database/DataSnapshot;->child(Ljava/lang/String;)Lcom/google/firebase/database/DataSnapshot;

    move-result-object v0

    sget-object v10, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    invoke-virtual {v0, v10}, Lcom/google/firebase/database/DataSnapshot;->getValue(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    move-object v10, v0

    .line 150
    .local v10, "senderId":Ljava/lang/Long;
    const-string v0, "mensaje"

    invoke-virtual {v15, v0}, Lcom/google/firebase/database/DataSnapshot;->child(Ljava/lang/String;)Lcom/google/firebase/database/DataSnapshot;

    move-result-object v0

    const-class v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/firebase/database/DataSnapshot;->getValue(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    const-string v1, ""

    if-nez v0, :cond_3

    move-object v0, v1

    :cond_3
    move-object/from16 v22, v0

    .line 151
    .local v22, "mensaje":Ljava/lang/String;
    :try_start_5
    const-string v0, "leido"

    invoke-virtual {v15, v0}, Lcom/google/firebase/database/DataSnapshot;->child(Ljava/lang/String;)Lcom/google/firebase/database/DataSnapshot;

    move-result-object v0

    move-object/from16 p1, v1

    sget-object v1, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-virtual {v0, v1}, Lcom/google/firebase/database/DataSnapshot;->getValue(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    if-eqz v0, :cond_4

    :try_start_6
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0

    goto :goto_4

    :cond_4
    const/4 v0, 0x0

    :goto_4
    move/from16 v33, v0

    .line 152
    .local v33, "leido":Z
    :try_start_7
    const-string v0, "enviadoEn"

    invoke-virtual {v15, v0}, Lcom/google/firebase/database/DataSnapshot;->child(Ljava/lang/String;)Lcom/google/firebase/database/DataSnapshot;

    move-result-object v0

    const-class v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/firebase/database/DataSnapshot;->getValue(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    move-object v1, v0

    .line 153
    .local v1, "enviadoEn":Ljava/lang/String;
    const-string v0, "attachmentUrl"

    invoke-virtual {v15, v0}, Lcom/google/firebase/database/DataSnapshot;->child(Ljava/lang/String;)Lcom/google/firebase/database/DataSnapshot;

    move-result-object v0

    move-object/from16 p3, v1

    .end local v1    # "enviadoEn":Ljava/lang/String;
    .local p3, "enviadoEn":Ljava/lang/String;
    const-class v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/firebase/database/DataSnapshot;->getValue(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v23, v0

    check-cast v23, Ljava/lang/String;

    .line 154
    .local v23, "attachmentUrl":Ljava/lang/String;
    const-string v0, "attachmentType"

    invoke-virtual {v15, v0}, Lcom/google/firebase/database/DataSnapshot;->child(Ljava/lang/String;)Lcom/google/firebase/database/DataSnapshot;

    move-result-object v0

    const-class v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/firebase/database/DataSnapshot;->getValue(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_3

    if-eqz v0, :cond_5

    move-object/from16 v18, v0

    .local v18, "it\\1":Ljava/lang/String;
    const/16 v19, 0x0

    .line 155
    .local v19, "$i$a$-let-ChatFirebaseService$getMessages$attachmentType$1\\1\\154\\0":I
    nop

    .line 156
    :try_start_8
    invoke-static/range {v18 .. v18}, Lorg/ies/tierno/applicationamani/domain/models/AttachmentType;->valueOf(Ljava/lang/String;)Lorg/ies/tierno/applicationamani/domain/models/AttachmentType;

    move-result-object v0
    :try_end_8
    .catch Ljava/lang/IllegalArgumentException; {:try_start_8 .. :try_end_8} :catch_1
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_0

    goto :goto_5

    .line 157
    :catch_1
    move-exception v0

    .line 158
    .local v0, "e\\1":Ljava/lang/IllegalArgumentException;
    const/4 v0, 0x0

    .line 159
    .end local v0    # "e\\1":Ljava/lang/IllegalArgumentException;
    :goto_5
    nop

    .line 154
    .end local v18    # "it\\1":Ljava/lang/String;
    .end local v19    # "$i$a$-let-ChatFirebaseService$getMessages$attachmentType$1\\1\\154\\0":I
    move-object/from16 v24, v0

    goto :goto_6

    :cond_5
    const/16 v24, 0x0

    .line 161
    .local v24, "attachmentType":Lorg/ies/tierno/applicationamani/domain/models/AttachmentType;
    :goto_6
    :try_start_9
    const-string v0, "attachmentName"

    invoke-virtual {v15, v0}, Lcom/google/firebase/database/DataSnapshot;->child(Ljava/lang/String;)Lcom/google/firebase/database/DataSnapshot;

    move-result-object v0

    const-class v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/firebase/database/DataSnapshot;->getValue(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v25, v0

    check-cast v25, Ljava/lang/String;

    .line 164
    .local v25, "attachmentName":Ljava/lang/String;
    const-string v0, "readBy"

    invoke-virtual {v15, v0}, Lcom/google/firebase/database/DataSnapshot;->child(Ljava/lang/String;)Lcom/google/firebase/database/DataSnapshot;

    move-result-object v0

    const-class v1, Ljava/util/Map;

    invoke-virtual {v0, v1}, Lcom/google/firebase/database/DataSnapshot;->getValue(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    instance-of v1, v0, Ljava/util/Map;
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_3

    if-eqz v1, :cond_6

    :try_start_a
    check-cast v0, Ljava/util/Map;
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_0

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    .line 165
    .local v0, "readByData":Ljava/util/Map;
    :goto_7
    if-eqz v0, :cond_8

    move-object v1, v0

    .local v1, "$this$mapKeys\\2":Ljava/util/Map;
    const/16 v18, 0x0

    .line 307
    .local v18, "$i$f$mapKeys\\2\\165":I
    move-object/from16 v34, v0

    .end local v0    # "readByData":Ljava/util/Map;
    .local v34, "readByData":Ljava/util/Map;
    :try_start_b
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v19

    move-object/from16 v20, v1

    .end local v1    # "$this$mapKeys\\2":Ljava/util/Map;
    .local v20, "$this$mapKeys\\2":Ljava/util/Map;
    invoke-static/range {v19 .. v19}, Lkotlin/collections/MapsKt;->mapCapacity(I)I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/LinkedHashMap;-><init>(I)V

    check-cast v0, Ljava/util/Map;

    .local v0, "destination\\3":Ljava/util/Map;
    move-object/from16 v1, v20

    .local v1, "$this$mapKeysTo\\3":Ljava/util/Map;
    const/16 v19, 0x0

    .line 308
    .local v19, "$i$f$mapKeysTo\\3\\307":I
    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v21

    check-cast v21, Ljava/lang/Iterable;

    move-object/from16 v26, v0

    .local v21, "$this$associateByTo\\4":Ljava/lang/Iterable;
    .local v26, "destination\\4":Ljava/util/Map;
    move-object/from16 v27, v26

    .end local v26    # "destination\\4":Ljava/util/Map;
    .local v27, "destination\\4":Ljava/util/Map;
    const/16 v26, 0x0

    .line 309
    .local v26, "$i$f$associateByTo\\4\\308":I
    invoke-interface/range {v21 .. v21}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v28

    :goto_8
    invoke-interface/range {v28 .. v28}, Ljava/util/Iterator;->hasNext()Z

    move-result v29

    if-eqz v29, :cond_7

    invoke-interface/range {v28 .. v28}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v29

    .line 310
    .local v29, "element\\4":Ljava/lang/Object;
    move-object/from16 v30, v29

    check-cast v30, Ljava/util/Map$Entry;

    .local v30, "it\\6":Ljava/util/Map$Entry;
    const/16 v31, 0x0

    .line 165
    .local v31, "$i$a$-mapKeys-ChatFirebaseService$getMessages$readBy$1\\6\\310\\0":I
    invoke-interface/range {v30 .. v30}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v32

    move-object/from16 v35, v0

    .end local v0    # "destination\\3":Ljava/util/Map;
    .local v35, "destination\\3":Ljava/util/Map;
    move-object/from16 v0, v32

    check-cast v0, Ljava/lang/String;

    .line 310
    .end local v30    # "it\\6":Ljava/util/Map$Entry;
    .end local v31    # "$i$a$-mapKeys-ChatFirebaseService$getMessages$readBy$1\\6\\310\\0":I
    move-object/from16 v30, v29

    check-cast v30, Ljava/util/Map$Entry;

    .local v30, "it\\5":Ljava/util/Map$Entry;
    const/16 v31, 0x0

    .line 308
    .local v31, "$i$a$-associateByTo-MapsKt__MapsKt$mapKeysTo$1\\5\\310\\3":I
    move-object/from16 v32, v1

    .end local v1    # "$this$mapKeysTo\\3":Ljava/util/Map;
    .local v32, "$this$mapKeysTo\\3":Ljava/util/Map;
    invoke-interface/range {v30 .. v30}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_3

    .line 310
    .end local v30    # "it\\5":Ljava/util/Map$Entry;
    .end local v31    # "$i$a$-associateByTo-MapsKt__MapsKt$mapKeysTo$1\\5\\310\\3":I
    move-wide/from16 v36, v2

    move-object/from16 v2, v27

    .end local v27    # "destination\\4":Ljava/util/Map;
    .local v2, "destination\\4":Ljava/util/Map;
    .local v36, "userId1":J
    :try_start_c
    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v27, v2

    move-object/from16 v1, v32

    move-object/from16 v0, v35

    move-wide/from16 v2, v36

    goto :goto_8

    .line 312
    .end local v29    # "element\\4":Ljava/lang/Object;
    .end local v32    # "$this$mapKeysTo\\3":Ljava/util/Map;
    .end local v35    # "destination\\3":Ljava/util/Map;
    .end local v36    # "userId1":J
    .restart local v0    # "destination\\3":Ljava/util/Map;
    .restart local v1    # "$this$mapKeysTo\\3":Ljava/util/Map;
    .local v2, "userId1":J
    .restart local v27    # "destination\\4":Ljava/util/Map;
    :cond_7
    move-object/from16 v35, v0

    move-object/from16 v32, v1

    move-wide/from16 v36, v2

    move-object/from16 v2, v27

    .line 308
    .end local v0    # "destination\\3":Ljava/util/Map;
    .end local v1    # "$this$mapKeysTo\\3":Ljava/util/Map;
    .end local v2    # "userId1":J
    .end local v21    # "$this$associateByTo\\4":Ljava/lang/Iterable;
    .end local v26    # "$i$f$associateByTo\\4\\308":I
    .end local v27    # "destination\\4":Ljava/util/Map;
    .restart local v32    # "$this$mapKeysTo\\3":Ljava/util/Map;
    .restart local v35    # "destination\\3":Ljava/util/Map;
    .restart local v36    # "userId1":J
    nop

    .line 307
    .end local v19    # "$i$f$mapKeysTo\\3\\307":I
    .end local v32    # "$this$mapKeysTo\\3":Ljava/util/Map;
    .end local v35    # "destination\\3":Ljava/util/Map;
    nop

    .end local v18    # "$i$f$mapKeys\\2\\165":I
    .end local v20    # "$this$mapKeys\\2":Ljava/util/Map;
    goto :goto_9

    .line 165
    .end local v34    # "readByData":Ljava/util/Map;
    .end local v36    # "userId1":J
    .local v0, "readByData":Ljava/util/Map;
    .restart local v2    # "userId1":J
    :cond_8
    move-object/from16 v34, v0

    move-wide/from16 v36, v2

    .end local v0    # "readByData":Ljava/util/Map;
    .end local v2    # "userId1":J
    .restart local v34    # "readByData":Ljava/util/Map;
    .restart local v36    # "userId1":J
    const/4 v2, 0x0

    :goto_9
    instance-of v0, v2, Ljava/util/Map;

    if-eqz v0, :cond_9

    move-object/from16 v30, v2

    goto :goto_a

    :cond_9
    const/16 v30, 0x0

    .line 168
    .local v30, "readBy":Ljava/util/Map;
    :goto_a
    const-string v0, "deliveredTo"

    invoke-virtual {v15, v0}, Lcom/google/firebase/database/DataSnapshot;->child(Ljava/lang/String;)Lcom/google/firebase/database/DataSnapshot;

    move-result-object v0

    const-class v1, Ljava/util/Map;

    invoke-virtual {v0, v1}, Lcom/google/firebase/database/DataSnapshot;->getValue(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    instance-of v1, v0, Ljava/util/Map;

    if-eqz v1, :cond_a

    check-cast v0, Ljava/util/Map;

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    .line 169
    .local v0, "deliveredToData":Ljava/util/Map;
    :goto_b
    if-eqz v0, :cond_b

    invoke-static/range {v36 .. v37}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    goto :goto_c

    :cond_b
    const/4 v1, 0x0

    :goto_c
    instance-of v2, v1, Ljava/lang/Long;

    if-eqz v2, :cond_c

    check-cast v1, Ljava/lang/Long;

    move-object/from16 v29, v1

    goto :goto_d

    :cond_c
    const/16 v29, 0x0

    .line 171
    .local v29, "deliveredAt":Ljava/lang/Long;
    :goto_d
    nop

    .line 173
    invoke-static/range {v16 .. v17}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v19

    .line 174
    if-eqz v10, :cond_e

    invoke-virtual {v10}, Ljava/lang/Long;->toString()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_d

    goto :goto_e

    :cond_d
    move-object/from16 v21, v1

    goto :goto_f

    :cond_e
    :goto_e
    move-object/from16 v21, p1

    .line 176
    :goto_f
    if-eqz p3, :cond_f

    invoke-static/range {p3 .. p3}, Lkotlin/text/StringsKt;->toLongOrNull(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v1

    if-eqz v1, :cond_f

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    goto :goto_10

    :cond_f
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    :goto_10
    move-wide/from16 v26, v1

    .line 172
    new-instance v18, Lorg/ies/tierno/applicationamani/domain/models/Message;

    .line 173
    nop

    .line 172
    nop

    .line 174
    nop

    .line 175
    nop

    .line 178
    nop

    .line 179
    nop

    .line 180
    nop

    .line 176
    nop

    .line 177
    if-eqz v33, :cond_10

    const/16 v28, 0x1

    goto :goto_11

    :cond_10
    const/16 v28, 0x0

    .line 181
    :goto_11
    nop

    .line 182
    nop

    .line 172
    const/16 v31, 0x2

    const/16 v32, 0x0

    const/16 v20, 0x0

    invoke-direct/range {v18 .. v32}, Lorg/ies/tierno/applicationamani/domain/models/Message;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/ies/tierno/applicationamani/domain/models/AttachmentType;Ljava/lang/String;JZLjava/lang/Long;Ljava/util/Map;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    move-object/from16 v1, v18

    .line 171
    invoke-interface {v13, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v10, 0x1

    move-object/from16 v1, p0

    move-wide/from16 v2, v36

    .end local v0    # "deliveredToData":Ljava/util/Map;
    .end local v10    # "senderId":Ljava/lang/Long;
    .end local v16    # "idMensaje":J
    .end local v22    # "mensaje":Ljava/lang/String;
    .end local v23    # "attachmentUrl":Ljava/lang/String;
    .end local v24    # "attachmentType":Lorg/ies/tierno/applicationamani/domain/models/AttachmentType;
    .end local v25    # "attachmentName":Ljava/lang/String;
    .end local v29    # "deliveredAt":Ljava/lang/Long;
    .end local v30    # "readBy":Ljava/util/Map;
    .end local v33    # "leido":Z
    .end local v34    # "readByData":Ljava/util/Map;
    .end local p3    # "enviadoEn":Ljava/lang/String;
    goto/16 :goto_2

    .line 186
    .end local v15    # "child":Lcom/google/firebase/database/DataSnapshot;
    .end local v36    # "userId1":J
    .restart local v2    # "userId1":J
    :cond_11
    move-wide/from16 v36, v2

    .end local v2    # "userId1":J
    .restart local v36    # "userId1":J
    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    move-object v0, v13

    check-cast v0, Ljava/lang/Iterable;

    .local v0, "$this$sortedBy\\7":Ljava/lang/Iterable;
    const/4 v1, 0x0

    .line 313
    .local v1, "$i$f$sortedBy\\7\\186":I
    new-instance v2, Lorg/ies/tierno/applicationamani/data/remoto/ChatFirebaseService$getMessages-0E7RQCE$$inlined$sortedBy$1;

    invoke-direct {v2}, Lorg/ies/tierno/applicationamani/data/remoto/ChatFirebaseService$getMessages-0E7RQCE$$inlined$sortedBy$1;-><init>()V

    check-cast v2, Ljava/util/Comparator;

    invoke-static {v0, v2}, Lkotlin/collections/CollectionsKt;->sortedWith(Ljava/lang/Iterable;Ljava/util/Comparator;)Ljava/util/List;

    move-result-object v2

    .line 186
    .end local v0    # "$this$sortedBy\\7":Ljava/lang/Iterable;
    .end local v1    # "$i$f$sortedBy\\7\\186":I
    invoke-static {v2}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_2

    move-wide/from16 v2, v36

    .end local v9    # "roomId":Ljava/lang/String;
    .end local v11    # "messagesRef":Lcom/google/firebase/database/DatabaseReference;
    .end local v12    # "snapshot":Lcom/google/firebase/database/DataSnapshot;
    .end local v13    # "messages":Ljava/util/List;
    goto :goto_13

    .line 187
    :catch_2
    move-exception v0

    goto :goto_12

    .end local v36    # "userId1":J
    .restart local v2    # "userId1":J
    :catch_3
    move-exception v0

    move-wide/from16 v36, v2

    .end local v2    # "userId1":J
    .restart local v36    # "userId1":J
    goto :goto_12

    .end local v4    # "userId2":J
    .end local v36    # "userId1":J
    .restart local p1    # "userId1":J
    .local p3, "userId2":J
    :catch_4
    move-exception v0

    move-wide/from16 v36, v2

    .line 188
    .end local p1    # "userId1":J
    .end local p3    # "userId2":J
    .local v0, "e":Ljava/lang/Exception;
    .restart local v4    # "userId2":J
    .restart local v36    # "userId1":J
    :goto_12
    sget-object v1, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    move-object v1, v0

    check-cast v1, Ljava/lang/Throwable;

    invoke-static {v1}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    move-wide/from16 v2, v36

    .line 141
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v36    # "userId1":J
    .restart local v2    # "userId1":J
    :goto_13
    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final markMessageAsRead-0E7RQCE(JJLkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 2
    .param p1, "messageId"    # J
    .param p3, "receiverId"    # J
    .param p5, "$completion"    # Lkotlin/coroutines/Continuation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJ",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Result<",
            "Lkotlin/Unit;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 286
    nop

    .line 287
    :try_start_0
    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 288
    :catch_0
    move-exception v0

    .line 289
    .local v0, "e":Ljava/lang/Exception;
    sget-object v1, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    move-object v1, v0

    check-cast v1, Ljava/lang/Throwable;

    invoke-static {v1}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    .line 286
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-object v0
.end method

.method public final markMessageDelivered-0E7RQCE(JJLkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 2
    .param p1, "messageId"    # J
    .param p3, "receiverId"    # J
    .param p5, "$completion"    # Lkotlin/coroutines/Continuation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJ",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Result<",
            "Lkotlin/Unit;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 276
    nop

    .line 279
    :try_start_0
    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 280
    :catch_0
    move-exception v0

    .line 281
    .local v0, "e":Ljava/lang/Exception;
    sget-object v1, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    move-object v1, v0

    check-cast v1, Ljava/lang/Throwable;

    invoke-static {v1}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    .line 276
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-object v0
.end method

.method public final markMessagesAsRead-0E7RQCE(JJLkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 19
    .param p1, "currentUserId"    # J
    .param p3, "otherUserId"    # J
    .param p5, "$completion"    # Lkotlin/coroutines/Continuation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJ",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Result<",
            "Lkotlin/Unit;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    move-object/from16 v1, p0

    move-wide/from16 v2, p1

    move-wide/from16 v4, p3

    move-object/from16 v6, p5

    const-string v0, "leido"

    instance-of v7, v6, Lorg/ies/tierno/applicationamani/data/remoto/ChatFirebaseService$markMessagesAsRead$1;

    if-eqz v7, :cond_0

    move-object v7, v6

    check-cast v7, Lorg/ies/tierno/applicationamani/data/remoto/ChatFirebaseService$markMessagesAsRead$1;

    iget v8, v7, Lorg/ies/tierno/applicationamani/data/remoto/ChatFirebaseService$markMessagesAsRead$1;->label:I

    const/high16 v9, -0x80000000

    and-int/2addr v8, v9

    if-eqz v8, :cond_0

    iget v8, v7, Lorg/ies/tierno/applicationamani/data/remoto/ChatFirebaseService$markMessagesAsRead$1;->label:I

    sub-int/2addr v8, v9

    iput v8, v7, Lorg/ies/tierno/applicationamani/data/remoto/ChatFirebaseService$markMessagesAsRead$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v7, Lorg/ies/tierno/applicationamani/data/remoto/ChatFirebaseService$markMessagesAsRead$1;

    invoke-direct {v7, v1, v6}, Lorg/ies/tierno/applicationamani/data/remoto/ChatFirebaseService$markMessagesAsRead$1;-><init>(Lorg/ies/tierno/applicationamani/data/remoto/ChatFirebaseService;Lkotlin/coroutines/Continuation;)V

    .local v7, "$continuation":Lkotlin/coroutines/Continuation;
    :goto_0
    iget-object v8, v7, Lorg/ies/tierno/applicationamani/data/remoto/ChatFirebaseService$markMessagesAsRead$1;->result:Ljava/lang/Object;

    .local v8, "$result":Ljava/lang/Object;
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v9

    .line 118
    iget v10, v7, Lorg/ies/tierno/applicationamani/data/remoto/ChatFirebaseService$markMessagesAsRead$1;->label:I

    packed-switch v10, :pswitch_data_0

    .end local v7    # "$continuation":Lkotlin/coroutines/Continuation;
    .end local v8    # "$result":Ljava/lang/Object;
    .end local p0    # "this":Lorg/ies/tierno/applicationamani/data/remoto/ChatFirebaseService;
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .restart local v7    # "$continuation":Lkotlin/coroutines/Continuation;
    .restart local v8    # "$result":Ljava/lang/Object;
    .restart local p0    # "this":Lorg/ies/tierno/applicationamani/data/remoto/ChatFirebaseService;
    :pswitch_0
    iget v10, v7, Lorg/ies/tierno/applicationamani/data/remoto/ChatFirebaseService$markMessagesAsRead$1;->I$0:I

    .local v10, "leido":Z
    iget-wide v12, v7, Lorg/ies/tierno/applicationamani/data/remoto/ChatFirebaseService$markMessagesAsRead$1;->J$2:J

    .local v12, "senderIdValue":J
    iget-wide v4, v7, Lorg/ies/tierno/applicationamani/data/remoto/ChatFirebaseService$markMessagesAsRead$1;->J$1:J

    .end local p3    # "otherUserId":J
    .local v4, "otherUserId":J
    iget-wide v2, v7, Lorg/ies/tierno/applicationamani/data/remoto/ChatFirebaseService$markMessagesAsRead$1;->J$0:J

    .end local p1    # "currentUserId":J
    .local v2, "currentUserId":J
    iget-object v14, v7, Lorg/ies/tierno/applicationamani/data/remoto/ChatFirebaseService$markMessagesAsRead$1;->L$4:Ljava/lang/Object;

    check-cast v14, Lcom/google/firebase/database/DataSnapshot;

    .local v14, "child":Lcom/google/firebase/database/DataSnapshot;
    iget-object v15, v7, Lorg/ies/tierno/applicationamani/data/remoto/ChatFirebaseService$markMessagesAsRead$1;->L$3:Ljava/lang/Object;

    check-cast v15, Ljava/util/Iterator;

    iget-object v11, v7, Lorg/ies/tierno/applicationamani/data/remoto/ChatFirebaseService$markMessagesAsRead$1;->L$2:Ljava/lang/Object;

    check-cast v11, Lcom/google/firebase/database/DataSnapshot;

    move-wide/from16 p1, v2

    .end local v2    # "currentUserId":J
    .local v11, "snapshot":Lcom/google/firebase/database/DataSnapshot;
    .restart local p1    # "currentUserId":J
    iget-object v2, v7, Lorg/ies/tierno/applicationamani/data/remoto/ChatFirebaseService$markMessagesAsRead$1;->L$1:Ljava/lang/Object;

    check-cast v2, Lcom/google/firebase/database/DatabaseReference;

    .local v2, "messagesRef":Lcom/google/firebase/database/DatabaseReference;
    iget-object v3, v7, Lorg/ies/tierno/applicationamani/data/remoto/ChatFirebaseService$markMessagesAsRead$1;->L$0:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    .local v3, "roomId":Ljava/lang/String;
    :try_start_0
    invoke-static {v8}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object/from16 v17, v0

    move-object v0, v2

    move-object/from16 v18, v15

    const/16 v16, 0x1

    move-object v15, v14

    move-object v14, v1

    move-object v1, v11

    move-object v11, v3

    move-wide/from16 v2, p1

    goto/16 :goto_5

    .line 135
    .end local v2    # "messagesRef":Lcom/google/firebase/database/DatabaseReference;
    .end local v3    # "roomId":Ljava/lang/String;
    .end local v10    # "leido":Z
    .end local v11    # "snapshot":Lcom/google/firebase/database/DataSnapshot;
    .end local v12    # "senderIdValue":J
    .end local v14    # "child":Lcom/google/firebase/database/DataSnapshot;
    :catch_0
    move-exception v0

    move-wide/from16 v2, p1

    move-object v13, v1

    goto/16 :goto_6

    .line 118
    .end local v4    # "otherUserId":J
    .restart local p3    # "otherUserId":J
    :pswitch_1
    iget-wide v4, v7, Lorg/ies/tierno/applicationamani/data/remoto/ChatFirebaseService$markMessagesAsRead$1;->J$1:J

    .end local p3    # "otherUserId":J
    .restart local v4    # "otherUserId":J
    iget-wide v2, v7, Lorg/ies/tierno/applicationamani/data/remoto/ChatFirebaseService$markMessagesAsRead$1;->J$0:J

    .end local p1    # "currentUserId":J
    .local v2, "currentUserId":J
    iget-object v10, v7, Lorg/ies/tierno/applicationamani/data/remoto/ChatFirebaseService$markMessagesAsRead$1;->L$1:Ljava/lang/Object;

    check-cast v10, Lcom/google/firebase/database/DatabaseReference;

    .local v10, "messagesRef":Lcom/google/firebase/database/DatabaseReference;
    iget-object v11, v7, Lorg/ies/tierno/applicationamani/data/remoto/ChatFirebaseService$markMessagesAsRead$1;->L$0:Ljava/lang/Object;

    check-cast v11, Ljava/lang/String;

    .local v11, "roomId":Ljava/lang/String;
    :try_start_1
    invoke-static {v8}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-object v12, v8

    goto :goto_1

    .line 135
    .end local v10    # "messagesRef":Lcom/google/firebase/database/DatabaseReference;
    .end local v11    # "roomId":Ljava/lang/String;
    :catch_1
    move-exception v0

    move-object v13, v1

    goto/16 :goto_6

    .line 118
    .end local v2    # "currentUserId":J
    .end local v4    # "otherUserId":J
    .restart local p1    # "currentUserId":J
    .restart local p3    # "otherUserId":J
    :pswitch_2
    invoke-static {v8}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 119
    nop

    .line 120
    :try_start_2
    sget-object v10, Lorg/ies/tierno/applicationamani/data/remoto/ChatFirebaseService;->Companion:Lorg/ies/tierno/applicationamani/data/remoto/ChatFirebaseService$Companion;

    invoke-virtual {v10, v2, v3, v4, v5}, Lorg/ies/tierno/applicationamani/data/remoto/ChatFirebaseService$Companion;->generateRoomId(JJ)Ljava/lang/String;

    move-result-object v10

    move-object v11, v10

    .line 121
    .restart local v11    # "roomId":Ljava/lang/String;
    iget-object v10, v1, Lorg/ies/tierno/applicationamani/data/remoto/ChatFirebaseService;->chatsRef:Lcom/google/firebase/database/DatabaseReference;

    invoke-virtual {v10, v11}, Lcom/google/firebase/database/DatabaseReference;->child(Ljava/lang/String;)Lcom/google/firebase/database/DatabaseReference;

    move-result-object v10

    const-string v12, "messages"

    invoke-virtual {v10, v12}, Lcom/google/firebase/database/DatabaseReference;->child(Ljava/lang/String;)Lcom/google/firebase/database/DatabaseReference;

    move-result-object v10

    const-string v12, "child(...)"

    invoke-static {v10, v12}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 122
    .restart local v10    # "messagesRef":Lcom/google/firebase/database/DatabaseReference;
    invoke-virtual {v10}, Lcom/google/firebase/database/DatabaseReference;->get()Lcom/google/android/gms/tasks/Task;

    move-result-object v12

    const-string v13, "get(...)"

    invoke-static {v12, v13}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v11}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    iput-object v13, v7, Lorg/ies/tierno/applicationamani/data/remoto/ChatFirebaseService$markMessagesAsRead$1;->L$0:Ljava/lang/Object;

    iput-object v10, v7, Lorg/ies/tierno/applicationamani/data/remoto/ChatFirebaseService$markMessagesAsRead$1;->L$1:Ljava/lang/Object;

    iput-wide v2, v7, Lorg/ies/tierno/applicationamani/data/remoto/ChatFirebaseService$markMessagesAsRead$1;->J$0:J

    iput-wide v4, v7, Lorg/ies/tierno/applicationamani/data/remoto/ChatFirebaseService$markMessagesAsRead$1;->J$1:J

    const/4 v13, 0x1

    iput v13, v7, Lorg/ies/tierno/applicationamani/data/remoto/ChatFirebaseService$markMessagesAsRead$1;->label:I

    invoke-static {v12, v7}, Lkotlinx/coroutines/tasks/TasksKt;->await(Lcom/google/android/gms/tasks/Task;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v12
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_7

    if-ne v12, v9, :cond_1

    .line 118
    return-object v9

    .end local p1    # "currentUserId":J
    .end local p3    # "otherUserId":J
    .restart local v2    # "currentUserId":J
    .restart local v4    # "otherUserId":J
    :cond_1
    :goto_1
    :try_start_3
    check-cast v12, Lcom/google/firebase/database/DataSnapshot;

    .line 124
    .local v12, "snapshot":Lcom/google/firebase/database/DataSnapshot;
    invoke-virtual {v12}, Lcom/google/firebase/database/DataSnapshot;->getChildren()Ljava/lang/Iterable;

    move-result-object v13

    invoke-interface {v13}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v13
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_6

    move-object v15, v13

    move-object v13, v1

    .end local p0    # "this":Lorg/ies/tierno/applicationamani/data/remoto/ChatFirebaseService;
    .end local p5    # "$completion":Lkotlin/coroutines/Continuation;
    .local v6, "$completion":Lkotlin/coroutines/Continuation;
    .local v13, "this":Lorg/ies/tierno/applicationamani/data/remoto/ChatFirebaseService;
    :goto_2
    :try_start_4
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_7

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/google/firebase/database/DataSnapshot;

    .line 125
    .restart local v14    # "child":Lcom/google/firebase/database/DataSnapshot;
    nop

    .restart local p0    # "this":Lorg/ies/tierno/applicationamani/data/remoto/ChatFirebaseService;
    const-string v1, "idSender"

    .end local p0    # "this":Lorg/ies/tierno/applicationamani/data/remoto/ChatFirebaseService;
    invoke-virtual {v14, v1}, Lcom/google/firebase/database/DataSnapshot;->child(Ljava/lang/String;)Lcom/google/firebase/database/DataSnapshot;

    move-result-object v1
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_5

    move-object/from16 p1, v6

    .end local v6    # "$completion":Lkotlin/coroutines/Continuation;
    .local p1, "$completion":Lkotlin/coroutines/Continuation;
    :try_start_5
    sget-object v6, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    invoke-virtual {v1, v6}, Lcom/google/firebase/database/DataSnapshot;->getValue(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    if-eqz v1, :cond_2

    :try_start_6
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v17
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2

    goto :goto_3

    .line 135
    .end local v10    # "messagesRef":Lcom/google/firebase/database/DatabaseReference;
    .end local v11    # "roomId":Ljava/lang/String;
    .end local v12    # "snapshot":Lcom/google/firebase/database/DataSnapshot;
    .end local v14    # "child":Lcom/google/firebase/database/DataSnapshot;
    :catch_2
    move-exception v0

    move-object/from16 v6, p1

    goto/16 :goto_6

    .line 125
    .restart local v10    # "messagesRef":Lcom/google/firebase/database/DatabaseReference;
    .restart local v11    # "roomId":Ljava/lang/String;
    .restart local v12    # "snapshot":Lcom/google/firebase/database/DataSnapshot;
    .restart local v14    # "child":Lcom/google/firebase/database/DataSnapshot;
    :cond_2
    const-wide/16 v17, 0x0

    :goto_3
    move-wide/from16 p2, v17

    .line 126
    .local p2, "senderIdValue":J
    :try_start_7
    invoke-virtual {v14, v0}, Lcom/google/firebase/database/DataSnapshot;->child(Ljava/lang/String;)Lcom/google/firebase/database/DataSnapshot;

    move-result-object v1

    sget-object v6, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-virtual {v1, v6}, Lcom/google/firebase/database/DataSnapshot;->getValue(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_3

    if-eqz v1, :cond_3

    :try_start_8
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_2

    goto :goto_4

    :cond_3
    const/4 v1, 0x0

    .line 130
    .local v1, "leido":Z
    :goto_4
    cmp-long v6, p2, v2

    if-eqz v6, :cond_6

    if-nez v1, :cond_6

    .line 131
    :try_start_9
    invoke-virtual {v14}, Lcom/google/firebase/database/DataSnapshot;->getKey()Ljava/lang/String;

    move-result-object v6
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_3

    if-nez v6, :cond_4

    :try_start_a
    const-string v6, ""
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_2

    :cond_4
    :try_start_b
    invoke-virtual {v10, v6}, Lcom/google/firebase/database/DatabaseReference;->child(Ljava/lang/String;)Lcom/google/firebase/database/DatabaseReference;

    move-result-object v6

    invoke-virtual {v6, v0}, Lcom/google/firebase/database/DatabaseReference;->child(Ljava/lang/String;)Lcom/google/firebase/database/DatabaseReference;

    move-result-object v6

    move-object/from16 v17, v0

    const/16 v16, 0x1

    invoke-static/range {v16 .. v16}, Lkotlin/coroutines/jvm/internal/Boxing;->boxBoolean(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v6, v0}, Lcom/google/firebase/database/DatabaseReference;->setValue(Ljava/lang/Object;)Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    const-string v6, "setValue(...)"

    invoke-static {v0, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v11}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    iput-object v6, v7, Lorg/ies/tierno/applicationamani/data/remoto/ChatFirebaseService$markMessagesAsRead$1;->L$0:Ljava/lang/Object;

    iput-object v10, v7, Lorg/ies/tierno/applicationamani/data/remoto/ChatFirebaseService$markMessagesAsRead$1;->L$1:Ljava/lang/Object;

    invoke-static {v12}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    iput-object v6, v7, Lorg/ies/tierno/applicationamani/data/remoto/ChatFirebaseService$markMessagesAsRead$1;->L$2:Ljava/lang/Object;

    iput-object v15, v7, Lorg/ies/tierno/applicationamani/data/remoto/ChatFirebaseService$markMessagesAsRead$1;->L$3:Ljava/lang/Object;

    invoke-static {v14}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    iput-object v6, v7, Lorg/ies/tierno/applicationamani/data/remoto/ChatFirebaseService$markMessagesAsRead$1;->L$4:Ljava/lang/Object;

    iput-wide v2, v7, Lorg/ies/tierno/applicationamani/data/remoto/ChatFirebaseService$markMessagesAsRead$1;->J$0:J

    iput-wide v4, v7, Lorg/ies/tierno/applicationamani/data/remoto/ChatFirebaseService$markMessagesAsRead$1;->J$1:J
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_3

    move-wide/from16 p4, v2

    move-wide/from16 v2, p2

    .end local p2    # "senderIdValue":J
    .local v2, "senderIdValue":J
    .local p4, "currentUserId":J
    :try_start_c
    iput-wide v2, v7, Lorg/ies/tierno/applicationamani/data/remoto/ChatFirebaseService$markMessagesAsRead$1;->J$2:J

    iput v1, v7, Lorg/ies/tierno/applicationamani/data/remoto/ChatFirebaseService$markMessagesAsRead$1;->I$0:I

    const/4 v6, 0x2

    iput v6, v7, Lorg/ies/tierno/applicationamani/data/remoto/ChatFirebaseService$markMessagesAsRead$1;->label:I

    invoke-static {v0, v7}, Lkotlinx/coroutines/tasks/TasksKt;->await(Lcom/google/android/gms/tasks/Task;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v9, :cond_5

    .line 118
    return-object v9

    .line 131
    :cond_5
    move-object/from16 v6, p1

    move-object v0, v10

    move-object/from16 v18, v15

    move v10, v1

    move-object v1, v12

    move-object v15, v14

    move-object v14, v13

    move-wide v12, v2

    move-wide/from16 v2, p4

    .end local v13    # "this":Lorg/ies/tierno/applicationamani/data/remoto/ChatFirebaseService;
    .end local p1    # "$completion":Lkotlin/coroutines/Continuation;
    .end local p4    # "currentUserId":J
    .local v0, "messagesRef":Lcom/google/firebase/database/DatabaseReference;
    .local v1, "snapshot":Lcom/google/firebase/database/DataSnapshot;
    .local v2, "currentUserId":J
    .restart local v6    # "$completion":Lkotlin/coroutines/Continuation;
    .local v10, "leido":Z
    .local v12, "senderIdValue":J
    .local v14, "this":Lorg/ies/tierno/applicationamani/data/remoto/ChatFirebaseService;
    .local v15, "child":Lcom/google/firebase/database/DataSnapshot;
    :goto_5
    move-object v10, v0

    move-object v12, v1

    move-object v13, v14

    move-object/from16 v0, v17

    move-object/from16 v15, v18

    move-object/from16 v1, p0

    goto/16 :goto_2

    .line 130
    .end local v0    # "messagesRef":Lcom/google/firebase/database/DatabaseReference;
    .end local v6    # "$completion":Lkotlin/coroutines/Continuation;
    .end local v15    # "child":Lcom/google/firebase/database/DataSnapshot;
    .local v1, "leido":Z
    .local v10, "messagesRef":Lcom/google/firebase/database/DatabaseReference;
    .local v12, "snapshot":Lcom/google/firebase/database/DataSnapshot;
    .restart local v13    # "this":Lorg/ies/tierno/applicationamani/data/remoto/ChatFirebaseService;
    .local v14, "child":Lcom/google/firebase/database/DataSnapshot;
    .restart local p1    # "$completion":Lkotlin/coroutines/Continuation;
    .restart local p2    # "senderIdValue":J
    :cond_6
    move-object/from16 v17, v0

    move-wide/from16 p4, v2

    const/16 v16, 0x1

    move-wide/from16 v2, p2

    .line 124
    .end local v1    # "leido":Z
    .end local v2    # "currentUserId":J
    .end local v14    # "child":Lcom/google/firebase/database/DataSnapshot;
    .end local p2    # "senderIdValue":J
    .restart local p4    # "currentUserId":J
    move-object/from16 v1, p0

    move-object/from16 v6, p1

    move-wide/from16 v2, p4

    move-object/from16 v0, v17

    goto/16 :goto_2

    .line 135
    .end local v10    # "messagesRef":Lcom/google/firebase/database/DatabaseReference;
    .end local v11    # "roomId":Ljava/lang/String;
    .end local v12    # "snapshot":Lcom/google/firebase/database/DataSnapshot;
    .end local p4    # "currentUserId":J
    .restart local v2    # "currentUserId":J
    :catch_3
    move-exception v0

    move-wide/from16 p4, v2

    move-object/from16 v6, p1

    .end local v2    # "currentUserId":J
    .restart local p4    # "currentUserId":J
    goto :goto_6

    .line 134
    .end local p1    # "$completion":Lkotlin/coroutines/Continuation;
    .end local p4    # "currentUserId":J
    .restart local v2    # "currentUserId":J
    .restart local v6    # "$completion":Lkotlin/coroutines/Continuation;
    .restart local v10    # "messagesRef":Lcom/google/firebase/database/DatabaseReference;
    .restart local v11    # "roomId":Ljava/lang/String;
    .restart local v12    # "snapshot":Lcom/google/firebase/database/DataSnapshot;
    :cond_7
    move-wide/from16 p4, v2

    move-object/from16 p1, v6

    .end local v2    # "currentUserId":J
    .end local v6    # "$completion":Lkotlin/coroutines/Continuation;
    .restart local p1    # "$completion":Lkotlin/coroutines/Continuation;
    .restart local p4    # "currentUserId":J
    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_4

    move-object/from16 v6, p1

    move-wide/from16 v2, p4

    .end local v10    # "messagesRef":Lcom/google/firebase/database/DatabaseReference;
    .end local v11    # "roomId":Ljava/lang/String;
    .end local v12    # "snapshot":Lcom/google/firebase/database/DataSnapshot;
    goto :goto_7

    .line 135
    :catch_4
    move-exception v0

    move-object/from16 v6, p1

    move-wide/from16 v2, p4

    goto :goto_6

    .end local p1    # "$completion":Lkotlin/coroutines/Continuation;
    .end local p4    # "currentUserId":J
    .restart local v2    # "currentUserId":J
    .restart local v6    # "$completion":Lkotlin/coroutines/Continuation;
    :catch_5
    move-exception v0

    move-wide/from16 p4, v2

    move-object/from16 p1, v6

    .end local v2    # "currentUserId":J
    .end local v6    # "$completion":Lkotlin/coroutines/Continuation;
    .restart local p1    # "$completion":Lkotlin/coroutines/Continuation;
    .restart local p4    # "currentUserId":J
    goto :goto_6

    .end local v13    # "this":Lorg/ies/tierno/applicationamani/data/remoto/ChatFirebaseService;
    .end local p1    # "$completion":Lkotlin/coroutines/Continuation;
    .end local p4    # "currentUserId":J
    .restart local v2    # "currentUserId":J
    .restart local p5    # "$completion":Lkotlin/coroutines/Continuation;
    :catch_6
    move-exception v0

    move-object/from16 v13, p0

    goto :goto_6

    .end local v2    # "currentUserId":J
    .end local v4    # "otherUserId":J
    .local p1, "currentUserId":J
    .restart local p3    # "otherUserId":J
    :catch_7
    move-exception v0

    move-object/from16 v13, p0

    .line 136
    .end local p1    # "currentUserId":J
    .end local p3    # "otherUserId":J
    .end local p5    # "$completion":Lkotlin/coroutines/Continuation;
    .local v0, "e":Ljava/lang/Exception;
    .restart local v2    # "currentUserId":J
    .restart local v4    # "otherUserId":J
    .restart local v6    # "$completion":Lkotlin/coroutines/Continuation;
    .restart local v13    # "this":Lorg/ies/tierno/applicationamani/data/remoto/ChatFirebaseService;
    :goto_6
    sget-object v1, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    move-object v1, v0

    check-cast v1, Ljava/lang/Throwable;

    invoke-static {v1}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    .line 119
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_7
    return-object v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final observeMessageDelivery(JJ)Lkotlinx/coroutines/flow/Flow;
    .locals 2
    .param p1, "messageId"    # J
    .param p3, "receiverId"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJ)",
            "Lkotlinx/coroutines/flow/Flow<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 293
    new-instance v0, Lorg/ies/tierno/applicationamani/data/remoto/ChatFirebaseService$observeMessageDelivery$1;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/ies/tierno/applicationamani/data/remoto/ChatFirebaseService$observeMessageDelivery$1;-><init>(Lkotlin/coroutines/Continuation;)V

    check-cast v0, Lkotlin/jvm/functions/Function2;

    invoke-static {v0}, Lkotlinx/coroutines/flow/FlowKt;->callbackFlow(Lkotlin/jvm/functions/Function2;)Lkotlinx/coroutines/flow/Flow;

    move-result-object v0

    .line 297
    return-object v0
.end method

.method public final observeMessageRead(JJ)Lkotlinx/coroutines/flow/Flow;
    .locals 2
    .param p1, "messageId"    # J
    .param p3, "receiverId"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJ)",
            "Lkotlinx/coroutines/flow/Flow<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 299
    new-instance v0, Lorg/ies/tierno/applicationamani/data/remoto/ChatFirebaseService$observeMessageRead$1;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/ies/tierno/applicationamani/data/remoto/ChatFirebaseService$observeMessageRead$1;-><init>(Lkotlin/coroutines/Continuation;)V

    check-cast v0, Lkotlin/jvm/functions/Function2;

    invoke-static {v0}, Lkotlinx/coroutines/flow/FlowKt;->callbackFlow(Lkotlin/jvm/functions/Function2;)Lkotlinx/coroutines/flow/Flow;

    move-result-object v0

    .line 303
    return-object v0
.end method

.method public final observeMessages(JJ)Lkotlinx/coroutines/flow/Flow;
    .locals 7
    .param p1, "userId1"    # J
    .param p3, "userId2"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJ)",
            "Lkotlinx/coroutines/flow/Flow<",
            "Ljava/util/List<",
            "Lorg/ies/tierno/applicationamani/domain/models/Message;",
            ">;>;"
        }
    .end annotation

    .line 26
    new-instance v0, Lorg/ies/tierno/applicationamani/data/remoto/ChatFirebaseService$observeMessages$1;

    const/4 v6, 0x0

    move-object v5, p0

    move-wide v1, p1

    move-wide v3, p3

    .end local p1    # "userId1":J
    .end local p3    # "userId2":J
    .local v1, "userId1":J
    .local v3, "userId2":J
    invoke-direct/range {v0 .. v6}, Lorg/ies/tierno/applicationamani/data/remoto/ChatFirebaseService$observeMessages$1;-><init>(JJLorg/ies/tierno/applicationamani/data/remoto/ChatFirebaseService;Lkotlin/coroutines/Continuation;)V

    check-cast v0, Lkotlin/jvm/functions/Function2;

    invoke-static {v0}, Lkotlinx/coroutines/flow/FlowKt;->callbackFlow(Lkotlin/jvm/functions/Function2;)Lkotlinx/coroutines/flow/Flow;

    move-result-object p1

    .line 82
    return-object p1
.end method

.method public final observeTyping(JJ)Lkotlinx/coroutines/flow/Flow;
    .locals 7
    .param p1, "userId1"    # J
    .param p3, "userId2"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJ)",
            "Lkotlinx/coroutines/flow/Flow<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 194
    new-instance v0, Lorg/ies/tierno/applicationamani/data/remoto/ChatFirebaseService$observeTyping$1;

    const/4 v6, 0x0

    move-object v5, p0

    move-wide v1, p1

    move-wide v3, p3

    .end local p1    # "userId1":J
    .end local p3    # "userId2":J
    .local v1, "userId1":J
    .local v3, "userId2":J
    invoke-direct/range {v0 .. v6}, Lorg/ies/tierno/applicationamani/data/remoto/ChatFirebaseService$observeTyping$1;-><init>(JJLorg/ies/tierno/applicationamani/data/remoto/ChatFirebaseService;Lkotlin/coroutines/Continuation;)V

    check-cast v0, Lkotlin/jvm/functions/Function2;

    invoke-static {v0}, Lkotlinx/coroutines/flow/FlowKt;->callbackFlow(Lkotlin/jvm/functions/Function2;)Lkotlinx/coroutines/flow/Flow;

    move-result-object p1

    .line 213
    return-object p1
.end method

.method public final observeUserOnline(J)Lkotlinx/coroutines/flow/Flow;
    .locals 2
    .param p1, "userId"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Lkotlinx/coroutines/flow/Flow<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 237
    new-instance v0, Lorg/ies/tierno/applicationamani/data/remoto/ChatFirebaseService$observeUserOnline$1;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, p2, v1}, Lorg/ies/tierno/applicationamani/data/remoto/ChatFirebaseService$observeUserOnline$1;-><init>(Lorg/ies/tierno/applicationamani/data/remoto/ChatFirebaseService;JLkotlin/coroutines/Continuation;)V

    check-cast v0, Lkotlin/jvm/functions/Function2;

    invoke-static {v0}, Lkotlinx/coroutines/flow/FlowKt;->callbackFlow(Lkotlin/jvm/functions/Function2;)Lkotlinx/coroutines/flow/Flow;

    move-result-object v0

    .line 253
    return-object v0
.end method

.method public final sendMessage-bMdYcbs(JJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 19
    .param p1, "senderId"    # J
    .param p3, "receiverId"    # J
    .param p5, "content"    # Ljava/lang/String;
    .param p6, "attachmentUrl"    # Ljava/lang/String;
    .param p7, "attachmentType"    # Ljava/lang/String;
    .param p8, "attachmentName"    # Ljava/lang/String;
    .param p9, "$completion"    # Lkotlin/coroutines/Continuation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJ",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Result<",
            "Lkotlin/Unit;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    move-object/from16 v1, p0

    move-wide/from16 v2, p1

    move-wide/from16 v4, p3

    move-object/from16 v6, p9

    instance-of v0, v6, Lorg/ies/tierno/applicationamani/data/remoto/ChatFirebaseService$sendMessage$1;

    if-eqz v0, :cond_0

    move-object v0, v6

    check-cast v0, Lorg/ies/tierno/applicationamani/data/remoto/ChatFirebaseService$sendMessage$1;

    iget v7, v0, Lorg/ies/tierno/applicationamani/data/remoto/ChatFirebaseService$sendMessage$1;->label:I

    const/high16 v8, -0x80000000

    and-int/2addr v7, v8

    if-eqz v7, :cond_0

    iget v7, v0, Lorg/ies/tierno/applicationamani/data/remoto/ChatFirebaseService$sendMessage$1;->label:I

    sub-int/2addr v7, v8

    iput v7, v0, Lorg/ies/tierno/applicationamani/data/remoto/ChatFirebaseService$sendMessage$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lorg/ies/tierno/applicationamani/data/remoto/ChatFirebaseService$sendMessage$1;

    invoke-direct {v0, v1, v6}, Lorg/ies/tierno/applicationamani/data/remoto/ChatFirebaseService$sendMessage$1;-><init>(Lorg/ies/tierno/applicationamani/data/remoto/ChatFirebaseService;Lkotlin/coroutines/Continuation;)V

    :goto_0
    move-object v7, v0

    .local v7, "$continuation":Lkotlin/coroutines/Continuation;
    iget-object v8, v7, Lorg/ies/tierno/applicationamani/data/remoto/ChatFirebaseService$sendMessage$1;->result:Ljava/lang/Object;

    .local v8, "$result":Ljava/lang/Object;
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 84
    iget v9, v7, Lorg/ies/tierno/applicationamani/data/remoto/ChatFirebaseService$sendMessage$1;->label:I

    packed-switch v9, :pswitch_data_0

    .end local v7    # "$continuation":Lkotlin/coroutines/Continuation;
    .end local v8    # "$result":Ljava/lang/Object;
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .restart local v7    # "$continuation":Lkotlin/coroutines/Continuation;
    .restart local v8    # "$result":Ljava/lang/Object;
    :pswitch_0
    iget-wide v9, v7, Lorg/ies/tierno/applicationamani/data/remoto/ChatFirebaseService$sendMessage$1;->J$2:J

    .local v9, "messageId":J
    iget-wide v4, v7, Lorg/ies/tierno/applicationamani/data/remoto/ChatFirebaseService$sendMessage$1;->J$1:J

    .end local p3    # "receiverId":J
    .local v4, "receiverId":J
    iget-wide v2, v7, Lorg/ies/tierno/applicationamani/data/remoto/ChatFirebaseService$sendMessage$1;->J$0:J

    .end local p1    # "senderId":J
    .local v2, "senderId":J
    iget-object v0, v7, Lorg/ies/tierno/applicationamani/data/remoto/ChatFirebaseService$sendMessage$1;->L$7:Ljava/lang/Object;

    check-cast v0, Ljava/util/Map;

    .local v0, "messageMap":Ljava/util/Map;
    iget-object v11, v7, Lorg/ies/tierno/applicationamani/data/remoto/ChatFirebaseService$sendMessage$1;->L$6:Ljava/lang/Object;

    check-cast v11, Lcom/google/firebase/database/DatabaseReference;

    .local v11, "messageRef":Lcom/google/firebase/database/DatabaseReference;
    iget-object v12, v7, Lorg/ies/tierno/applicationamani/data/remoto/ChatFirebaseService$sendMessage$1;->L$5:Ljava/lang/Object;

    check-cast v12, Lcom/google/firebase/database/DatabaseReference;

    .local v12, "messagesRef":Lcom/google/firebase/database/DatabaseReference;
    iget-object v13, v7, Lorg/ies/tierno/applicationamani/data/remoto/ChatFirebaseService$sendMessage$1;->L$4:Ljava/lang/Object;

    check-cast v13, Ljava/lang/String;

    .local v13, "roomId":Ljava/lang/String;
    iget-object v14, v7, Lorg/ies/tierno/applicationamani/data/remoto/ChatFirebaseService$sendMessage$1;->L$3:Ljava/lang/Object;

    check-cast v14, Ljava/lang/String;

    .end local p8    # "attachmentName":Ljava/lang/String;
    .local v14, "attachmentName":Ljava/lang/String;
    iget-object v15, v7, Lorg/ies/tierno/applicationamani/data/remoto/ChatFirebaseService$sendMessage$1;->L$2:Ljava/lang/Object;

    check-cast v15, Ljava/lang/String;

    move-object/from16 p1, v0

    .end local v0    # "messageMap":Ljava/util/Map;
    .end local p7    # "attachmentType":Ljava/lang/String;
    .local v15, "attachmentType":Ljava/lang/String;
    .local p1, "messageMap":Ljava/util/Map;
    iget-object v0, v7, Lorg/ies/tierno/applicationamani/data/remoto/ChatFirebaseService$sendMessage$1;->L$1:Ljava/lang/Object;

    move-object/from16 v16, v0

    check-cast v16, Ljava/lang/String;

    .end local p6    # "attachmentUrl":Ljava/lang/String;
    .local v16, "attachmentUrl":Ljava/lang/String;
    iget-object v0, v7, Lorg/ies/tierno/applicationamani/data/remoto/ChatFirebaseService$sendMessage$1;->L$0:Ljava/lang/Object;

    move-object/from16 v17, v0

    check-cast v17, Ljava/lang/String;

    .end local p5    # "content":Ljava/lang/String;
    .local v17, "content":Ljava/lang/String;
    :try_start_0
    invoke-static {v8}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object/from16 v0, p1

    move-object v6, v15

    move-object/from16 v1, v16

    move-object/from16 v15, v17

    move-object/from16 v16, v8

    goto/16 :goto_2

    .line 113
    .end local v9    # "messageId":J
    .end local v11    # "messageRef":Lcom/google/firebase/database/DatabaseReference;
    .end local v12    # "messagesRef":Lcom/google/firebase/database/DatabaseReference;
    .end local v13    # "roomId":Ljava/lang/String;
    .end local p1    # "messageMap":Ljava/util/Map;
    :catch_0
    move-exception v0

    move-object v6, v15

    move-object/from16 v1, v16

    move-object/from16 v15, v17

    move-object/from16 v16, v8

    goto/16 :goto_4

    .line 84
    .end local v2    # "senderId":J
    .end local v4    # "receiverId":J
    .end local v14    # "attachmentName":Ljava/lang/String;
    .end local v15    # "attachmentType":Ljava/lang/String;
    .end local v16    # "attachmentUrl":Ljava/lang/String;
    .end local v17    # "content":Ljava/lang/String;
    .local p1, "senderId":J
    .restart local p3    # "receiverId":J
    .restart local p5    # "content":Ljava/lang/String;
    .restart local p6    # "attachmentUrl":Ljava/lang/String;
    .restart local p7    # "attachmentType":Ljava/lang/String;
    .restart local p8    # "attachmentName":Ljava/lang/String;
    :pswitch_1
    invoke-static {v8}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 92
    nop

    .line 93
    :try_start_1
    sget-object v9, Lorg/ies/tierno/applicationamani/data/remoto/ChatFirebaseService;->Companion:Lorg/ies/tierno/applicationamani/data/remoto/ChatFirebaseService$Companion;

    invoke-virtual {v9, v2, v3, v4, v5}, Lorg/ies/tierno/applicationamani/data/remoto/ChatFirebaseService$Companion;->generateRoomId(JJ)Ljava/lang/String;

    move-result-object v9

    move-object v13, v9

    .line 94
    .restart local v13    # "roomId":Ljava/lang/String;
    iget-object v9, v1, Lorg/ies/tierno/applicationamani/data/remoto/ChatFirebaseService;->chatsRef:Lcom/google/firebase/database/DatabaseReference;

    invoke-virtual {v9, v13}, Lcom/google/firebase/database/DatabaseReference;->child(Ljava/lang/String;)Lcom/google/firebase/database/DatabaseReference;

    move-result-object v9

    const-string v10, "messages"

    invoke-virtual {v9, v10}, Lcom/google/firebase/database/DatabaseReference;->child(Ljava/lang/String;)Lcom/google/firebase/database/DatabaseReference;

    move-result-object v9

    const-string v10, "child(...)"

    invoke-static {v9, v10}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v12, v9

    .line 95
    .restart local v12    # "messagesRef":Lcom/google/firebase/database/DatabaseReference;
    invoke-virtual {v12}, Lcom/google/firebase/database/DatabaseReference;->push()Lcom/google/firebase/database/DatabaseReference;

    move-result-object v9

    const-string v10, "push(...)"

    invoke-static {v9, v10}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v11, v9

    .line 96
    .restart local v11    # "messageRef":Lcom/google/firebase/database/DatabaseReference;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    .line 99
    .restart local v9    # "messageId":J
    const/4 v14, 0x6

    new-array v14, v14, [Lkotlin/Pair;

    const-string v15, "idMensaje"

    invoke-static {v9, v10}, Lkotlin/coroutines/jvm/internal/Boxing;->boxLong(J)Ljava/lang/Long;

    move-result-object v1

    invoke-static {v15, v1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    const/4 v15, 0x0

    aput-object v1, v14, v15

    .line 100
    const-string v1, "idSender"

    move/from16 v16, v15

    invoke-static {v2, v3}, Lkotlin/coroutines/jvm/internal/Boxing;->boxLong(J)Ljava/lang/Long;

    move-result-object v15

    invoke-static {v1, v15}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    const/4 v15, 0x1

    aput-object v1, v14, v15

    .line 99
    nop

    .line 101
    const-string v1, "idReceiver"

    invoke-static {v4, v5}, Lkotlin/coroutines/jvm/internal/Boxing;->boxLong(J)Ljava/lang/Long;

    move-result-object v15

    invoke-static {v1, v15}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    const/4 v15, 0x2

    aput-object v1, v14, v15

    .line 99
    nop

    .line 102
    const-string v1, "mensaje"
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4

    move-object/from16 v15, p5

    :try_start_2
    invoke-static {v1, v15}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    const/16 v18, 0x3

    aput-object v1, v14, v18

    .line 99
    nop

    .line 103
    const-string v1, "enviadoEn"

    invoke-static {v9, v10}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    invoke-static {v1, v6}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    const/4 v6, 0x4

    aput-object v1, v14, v6

    .line 99
    nop

    .line 104
    const-string v1, "leido"

    invoke-static/range {v16 .. v16}, Lkotlin/coroutines/jvm/internal/Boxing;->boxBoolean(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-static {v1, v6}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    const/4 v6, 0x5

    aput-object v1, v14, v6

    .line 99
    nop

    .line 98
    invoke-static {v14}, Lkotlin/collections/MapsKt;->mutableMapOf([Lkotlin/Pair;)Ljava/util/Map;

    move-result-object v1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3

    .line 107
    .local v1, "messageMap":Ljava/util/Map;
    if-eqz p6, :cond_1

    move-object/from16 v6, p6

    .line 306
    .local v6, "it\\1":Ljava/lang/String;
    const/4 v14, 0x0

    .line 107
    .local v14, "$i$a$-let-ChatFirebaseService$sendMessage$2\\1\\107\\0":I
    move-object/from16 v16, v8

    .end local v8    # "$result":Ljava/lang/Object;
    .local v16, "$result":Ljava/lang/Object;
    :try_start_3
    const-string v8, "attachmentUrl"

    invoke-interface {v1, v8, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .end local v6    # "it\\1":Ljava/lang/String;
    .end local v14    # "$i$a$-let-ChatFirebaseService$sendMessage$2\\1\\107\\0":I
    goto :goto_1

    .line 113
    .end local v1    # "messageMap":Ljava/util/Map;
    .end local v9    # "messageId":J
    .end local v11    # "messageRef":Lcom/google/firebase/database/DatabaseReference;
    .end local v12    # "messagesRef":Lcom/google/firebase/database/DatabaseReference;
    .end local v13    # "roomId":Ljava/lang/String;
    :catch_1
    move-exception v0

    move-object/from16 v1, p6

    move-object/from16 v6, p7

    move-object/from16 v14, p8

    goto/16 :goto_4

    .line 107
    .end local v16    # "$result":Ljava/lang/Object;
    .restart local v1    # "messageMap":Ljava/util/Map;
    .restart local v8    # "$result":Ljava/lang/Object;
    .restart local v9    # "messageId":J
    .restart local v11    # "messageRef":Lcom/google/firebase/database/DatabaseReference;
    .restart local v12    # "messagesRef":Lcom/google/firebase/database/DatabaseReference;
    .restart local v13    # "roomId":Ljava/lang/String;
    :cond_1
    move-object/from16 v16, v8

    .line 108
    .end local v8    # "$result":Ljava/lang/Object;
    .restart local v16    # "$result":Ljava/lang/Object;
    :goto_1
    if-eqz p7, :cond_2

    move-object/from16 v6, p7

    .line 306
    .local v6, "it\\2":Ljava/lang/String;
    const/4 v8, 0x0

    .line 108
    .local v8, "$i$a$-let-ChatFirebaseService$sendMessage$3\\2\\108\\0":I
    const-string v14, "attachmentType"

    invoke-interface {v1, v14, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 109
    .end local v6    # "it\\2":Ljava/lang/String;
    .end local v8    # "$i$a$-let-ChatFirebaseService$sendMessage$3\\2\\108\\0":I
    :cond_2
    if-eqz p8, :cond_3

    move-object/from16 v6, p8

    .line 306
    .local v6, "it\\3":Ljava/lang/String;
    const/4 v8, 0x0

    .line 109
    .local v8, "$i$a$-let-ChatFirebaseService$sendMessage$4\\3\\109\\0":I
    const-string v14, "attachmentName"

    invoke-interface {v1, v14, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 111
    .end local v6    # "it\\3":Ljava/lang/String;
    .end local v8    # "$i$a$-let-ChatFirebaseService$sendMessage$4\\3\\109\\0":I
    :cond_3
    invoke-virtual {v11, v1}, Lcom/google/firebase/database/DatabaseReference;->setValue(Ljava/lang/Object;)Lcom/google/android/gms/tasks/Task;

    move-result-object v6

    const-string v8, "setValue(...)"

    invoke-static {v6, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v15}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    iput-object v8, v7, Lorg/ies/tierno/applicationamani/data/remoto/ChatFirebaseService$sendMessage$1;->L$0:Ljava/lang/Object;

    invoke-static/range {p6 .. p6}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    iput-object v8, v7, Lorg/ies/tierno/applicationamani/data/remoto/ChatFirebaseService$sendMessage$1;->L$1:Ljava/lang/Object;

    invoke-static/range {p7 .. p7}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    iput-object v8, v7, Lorg/ies/tierno/applicationamani/data/remoto/ChatFirebaseService$sendMessage$1;->L$2:Ljava/lang/Object;

    invoke-static/range {p8 .. p8}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    iput-object v8, v7, Lorg/ies/tierno/applicationamani/data/remoto/ChatFirebaseService$sendMessage$1;->L$3:Ljava/lang/Object;

    invoke-static {v13}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    iput-object v8, v7, Lorg/ies/tierno/applicationamani/data/remoto/ChatFirebaseService$sendMessage$1;->L$4:Ljava/lang/Object;

    invoke-static {v12}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    iput-object v8, v7, Lorg/ies/tierno/applicationamani/data/remoto/ChatFirebaseService$sendMessage$1;->L$5:Ljava/lang/Object;

    invoke-static {v11}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    iput-object v8, v7, Lorg/ies/tierno/applicationamani/data/remoto/ChatFirebaseService$sendMessage$1;->L$6:Ljava/lang/Object;

    invoke-static {v1}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    iput-object v8, v7, Lorg/ies/tierno/applicationamani/data/remoto/ChatFirebaseService$sendMessage$1;->L$7:Ljava/lang/Object;

    iput-wide v2, v7, Lorg/ies/tierno/applicationamani/data/remoto/ChatFirebaseService$sendMessage$1;->J$0:J

    iput-wide v4, v7, Lorg/ies/tierno/applicationamani/data/remoto/ChatFirebaseService$sendMessage$1;->J$1:J

    iput-wide v9, v7, Lorg/ies/tierno/applicationamani/data/remoto/ChatFirebaseService$sendMessage$1;->J$2:J

    const/4 v8, 0x1

    iput v8, v7, Lorg/ies/tierno/applicationamani/data/remoto/ChatFirebaseService$sendMessage$1;->label:I

    invoke-static {v6, v7}, Lkotlinx/coroutines/tasks/TasksKt;->await(Lcom/google/android/gms/tasks/Task;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v6
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    if-ne v6, v0, :cond_4

    .line 84
    return-object v0

    .line 111
    :cond_4
    move-object/from16 v6, p7

    move-object/from16 v14, p8

    move-object v0, v1

    move-object/from16 v1, p6

    .line 112
    .end local p1    # "senderId":J
    .end local p3    # "receiverId":J
    .end local p5    # "content":Ljava/lang/String;
    .end local p6    # "attachmentUrl":Ljava/lang/String;
    .end local p7    # "attachmentType":Ljava/lang/String;
    .end local p8    # "attachmentName":Ljava/lang/String;
    .restart local v0    # "messageMap":Ljava/util/Map;
    .local v1, "attachmentUrl":Ljava/lang/String;
    .restart local v2    # "senderId":J
    .restart local v4    # "receiverId":J
    .local v6, "attachmentType":Ljava/lang/String;
    .local v14, "attachmentName":Ljava/lang/String;
    .local v15, "content":Ljava/lang/String;
    :goto_2
    :try_start_4
    sget-object v8, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    sget-object v8, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-static {v8}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    .end local v0    # "messageMap":Ljava/util/Map;
    .end local v9    # "messageId":J
    .end local v11    # "messageRef":Lcom/google/firebase/database/DatabaseReference;
    .end local v12    # "messagesRef":Lcom/google/firebase/database/DatabaseReference;
    .end local v13    # "roomId":Ljava/lang/String;
    goto :goto_5

    .line 113
    :catch_2
    move-exception v0

    goto :goto_4

    .end local v1    # "attachmentUrl":Ljava/lang/String;
    .end local v2    # "senderId":J
    .end local v4    # "receiverId":J
    .end local v6    # "attachmentType":Ljava/lang/String;
    .end local v14    # "attachmentName":Ljava/lang/String;
    .end local v15    # "content":Ljava/lang/String;
    .end local v16    # "$result":Ljava/lang/Object;
    .local v8, "$result":Ljava/lang/Object;
    .restart local p1    # "senderId":J
    .restart local p3    # "receiverId":J
    .restart local p5    # "content":Ljava/lang/String;
    .restart local p6    # "attachmentUrl":Ljava/lang/String;
    .restart local p7    # "attachmentType":Ljava/lang/String;
    .restart local p8    # "attachmentName":Ljava/lang/String;
    :catch_3
    move-exception v0

    goto :goto_3

    :catch_4
    move-exception v0

    move-object/from16 v15, p5

    :goto_3
    move-object/from16 v16, v8

    move-object/from16 v1, p6

    move-object/from16 v6, p7

    move-object/from16 v14, p8

    .line 114
    .end local v8    # "$result":Ljava/lang/Object;
    .end local p1    # "senderId":J
    .end local p3    # "receiverId":J
    .end local p5    # "content":Ljava/lang/String;
    .end local p6    # "attachmentUrl":Ljava/lang/String;
    .end local p7    # "attachmentType":Ljava/lang/String;
    .end local p8    # "attachmentName":Ljava/lang/String;
    .local v0, "e":Ljava/lang/Exception;
    .restart local v1    # "attachmentUrl":Ljava/lang/String;
    .restart local v2    # "senderId":J
    .restart local v4    # "receiverId":J
    .restart local v6    # "attachmentType":Ljava/lang/String;
    .restart local v14    # "attachmentName":Ljava/lang/String;
    .restart local v15    # "content":Ljava/lang/String;
    .restart local v16    # "$result":Ljava/lang/Object;
    :goto_4
    sget-object v8, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    move-object v8, v0

    check-cast v8, Ljava/lang/Throwable;

    invoke-static {v8}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v8

    invoke-static {v8}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    .line 92
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_5
    return-object v8

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final startTyping-0E7RQCE(JJLkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 7
    .param p1, "senderId"    # J
    .param p3, "receiverId"    # J
    .param p5, "$completion"    # Lkotlin/coroutines/Continuation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJ",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Result<",
            "Lkotlin/Unit;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p5, Lorg/ies/tierno/applicationamani/data/remoto/ChatFirebaseService$startTyping$1;

    if-eqz v0, :cond_0

    move-object v0, p5

    check-cast v0, Lorg/ies/tierno/applicationamani/data/remoto/ChatFirebaseService$startTyping$1;

    iget v1, v0, Lorg/ies/tierno/applicationamani/data/remoto/ChatFirebaseService$startTyping$1;->label:I

    const/high16 v2, -0x80000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    iget v1, v0, Lorg/ies/tierno/applicationamani/data/remoto/ChatFirebaseService$startTyping$1;->label:I

    sub-int/2addr v1, v2

    iput v1, v0, Lorg/ies/tierno/applicationamani/data/remoto/ChatFirebaseService$startTyping$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lorg/ies/tierno/applicationamani/data/remoto/ChatFirebaseService$startTyping$1;

    invoke-direct {v0, p0, p5}, Lorg/ies/tierno/applicationamani/data/remoto/ChatFirebaseService$startTyping$1;-><init>(Lorg/ies/tierno/applicationamani/data/remoto/ChatFirebaseService;Lkotlin/coroutines/Continuation;)V

    .local v0, "$continuation":Lkotlin/coroutines/Continuation;
    :goto_0
    iget-object v1, v0, Lorg/ies/tierno/applicationamani/data/remoto/ChatFirebaseService$startTyping$1;->result:Ljava/lang/Object;

    .local v1, "$result":Ljava/lang/Object;
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v2

    .line 215
    iget v3, v0, Lorg/ies/tierno/applicationamani/data/remoto/ChatFirebaseService$startTyping$1;->label:I

    packed-switch v3, :pswitch_data_0

    .end local v0    # "$continuation":Lkotlin/coroutines/Continuation;
    .end local v1    # "$result":Ljava/lang/Object;
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .restart local v0    # "$continuation":Lkotlin/coroutines/Continuation;
    .restart local v1    # "$result":Ljava/lang/Object;
    :pswitch_0
    iget-wide p3, v0, Lorg/ies/tierno/applicationamani/data/remoto/ChatFirebaseService$startTyping$1;->J$1:J

    iget-wide p1, v0, Lorg/ies/tierno/applicationamani/data/remoto/ChatFirebaseService$startTyping$1;->J$0:J

    iget-object v2, v0, Lorg/ies/tierno/applicationamani/data/remoto/ChatFirebaseService$startTyping$1;->L$0:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    .local v2, "roomId":Ljava/lang/String;
    :try_start_0
    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .end local v2    # "roomId":Ljava/lang/String;
    :pswitch_1
    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 216
    nop

    .line 217
    :try_start_1
    sget-object v3, Lorg/ies/tierno/applicationamani/data/remoto/ChatFirebaseService;->Companion:Lorg/ies/tierno/applicationamani/data/remoto/ChatFirebaseService$Companion;

    invoke-virtual {v3, p1, p2, p3, p4}, Lorg/ies/tierno/applicationamani/data/remoto/ChatFirebaseService$Companion;->generateRoomId(JJ)Ljava/lang/String;

    move-result-object v3

    .line 218
    .local v3, "roomId":Ljava/lang/String;
    iget-object v4, p0, Lorg/ies/tierno/applicationamani/data/remoto/ChatFirebaseService;->typingRef:Lcom/google/firebase/database/DatabaseReference;

    invoke-virtual {v4, v3}, Lcom/google/firebase/database/DatabaseReference;->child(Ljava/lang/String;)Lcom/google/firebase/database/DatabaseReference;

    move-result-object v4

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/google/firebase/database/DatabaseReference;->child(Ljava/lang/String;)Lcom/google/firebase/database/DatabaseReference;

    move-result-object v4

    const/4 v5, 0x1

    invoke-static {v5}, Lkotlin/coroutines/jvm/internal/Boxing;->boxBoolean(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v4, v6}, Lcom/google/firebase/database/DatabaseReference;->setValue(Ljava/lang/Object;)Lcom/google/android/gms/tasks/Task;

    move-result-object v4

    const-string v6, "setValue(...)"

    invoke-static {v4, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v3}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    iput-object v6, v0, Lorg/ies/tierno/applicationamani/data/remoto/ChatFirebaseService$startTyping$1;->L$0:Ljava/lang/Object;

    iput-wide p1, v0, Lorg/ies/tierno/applicationamani/data/remoto/ChatFirebaseService$startTyping$1;->J$0:J

    iput-wide p3, v0, Lorg/ies/tierno/applicationamani/data/remoto/ChatFirebaseService$startTyping$1;->J$1:J

    iput v5, v0, Lorg/ies/tierno/applicationamani/data/remoto/ChatFirebaseService$startTyping$1;->label:I

    invoke-static {v4, v0}, Lkotlinx/coroutines/tasks/TasksKt;->await(Lcom/google/android/gms/tasks/Task;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v4

    if-ne v4, v2, :cond_1

    .line 215
    return-object v2

    .line 218
    :cond_1
    move-object v2, v3

    .line 219
    .end local v3    # "roomId":Ljava/lang/String;
    .restart local v2    # "roomId":Ljava/lang/String;
    :goto_1
    sget-object v3, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    sget-object v3, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-static {v3}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .end local v2    # "roomId":Ljava/lang/String;
    goto :goto_2

    .line 220
    :catch_0
    move-exception v2

    .line 221
    .local v2, "e":Ljava/lang/Exception;
    sget-object v3, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    move-object v3, v2

    check-cast v3, Ljava/lang/Throwable;

    invoke-static {v3}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 216
    .end local v2    # "e":Ljava/lang/Exception;
    :goto_2
    return-object v3

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final stopTyping-0E7RQCE(JJLkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 6
    .param p1, "senderId"    # J
    .param p3, "receiverId"    # J
    .param p5, "$completion"    # Lkotlin/coroutines/Continuation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJ",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Result<",
            "Lkotlin/Unit;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p5, Lorg/ies/tierno/applicationamani/data/remoto/ChatFirebaseService$stopTyping$1;

    if-eqz v0, :cond_0

    move-object v0, p5

    check-cast v0, Lorg/ies/tierno/applicationamani/data/remoto/ChatFirebaseService$stopTyping$1;

    iget v1, v0, Lorg/ies/tierno/applicationamani/data/remoto/ChatFirebaseService$stopTyping$1;->label:I

    const/high16 v2, -0x80000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    iget v1, v0, Lorg/ies/tierno/applicationamani/data/remoto/ChatFirebaseService$stopTyping$1;->label:I

    sub-int/2addr v1, v2

    iput v1, v0, Lorg/ies/tierno/applicationamani/data/remoto/ChatFirebaseService$stopTyping$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lorg/ies/tierno/applicationamani/data/remoto/ChatFirebaseService$stopTyping$1;

    invoke-direct {v0, p0, p5}, Lorg/ies/tierno/applicationamani/data/remoto/ChatFirebaseService$stopTyping$1;-><init>(Lorg/ies/tierno/applicationamani/data/remoto/ChatFirebaseService;Lkotlin/coroutines/Continuation;)V

    .local v0, "$continuation":Lkotlin/coroutines/Continuation;
    :goto_0
    iget-object v1, v0, Lorg/ies/tierno/applicationamani/data/remoto/ChatFirebaseService$stopTyping$1;->result:Ljava/lang/Object;

    .local v1, "$result":Ljava/lang/Object;
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v2

    .line 225
    iget v3, v0, Lorg/ies/tierno/applicationamani/data/remoto/ChatFirebaseService$stopTyping$1;->label:I

    packed-switch v3, :pswitch_data_0

    .end local v0    # "$continuation":Lkotlin/coroutines/Continuation;
    .end local v1    # "$result":Ljava/lang/Object;
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .restart local v0    # "$continuation":Lkotlin/coroutines/Continuation;
    .restart local v1    # "$result":Ljava/lang/Object;
    :pswitch_0
    iget-wide p3, v0, Lorg/ies/tierno/applicationamani/data/remoto/ChatFirebaseService$stopTyping$1;->J$1:J

    iget-wide p1, v0, Lorg/ies/tierno/applicationamani/data/remoto/ChatFirebaseService$stopTyping$1;->J$0:J

    iget-object v2, v0, Lorg/ies/tierno/applicationamani/data/remoto/ChatFirebaseService$stopTyping$1;->L$0:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    .local v2, "roomId":Ljava/lang/String;
    :try_start_0
    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .end local v2    # "roomId":Ljava/lang/String;
    :pswitch_1
    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 226
    nop

    .line 227
    :try_start_1
    sget-object v3, Lorg/ies/tierno/applicationamani/data/remoto/ChatFirebaseService;->Companion:Lorg/ies/tierno/applicationamani/data/remoto/ChatFirebaseService$Companion;

    invoke-virtual {v3, p1, p2, p3, p4}, Lorg/ies/tierno/applicationamani/data/remoto/ChatFirebaseService$Companion;->generateRoomId(JJ)Ljava/lang/String;

    move-result-object v3

    .line 228
    .local v3, "roomId":Ljava/lang/String;
    iget-object v4, p0, Lorg/ies/tierno/applicationamani/data/remoto/ChatFirebaseService;->typingRef:Lcom/google/firebase/database/DatabaseReference;

    invoke-virtual {v4, v3}, Lcom/google/firebase/database/DatabaseReference;->child(Ljava/lang/String;)Lcom/google/firebase/database/DatabaseReference;

    move-result-object v4

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/google/firebase/database/DatabaseReference;->child(Ljava/lang/String;)Lcom/google/firebase/database/DatabaseReference;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/firebase/database/DatabaseReference;->removeValue()Lcom/google/android/gms/tasks/Task;

    move-result-object v4

    const-string v5, "removeValue(...)"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v3}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    iput-object v5, v0, Lorg/ies/tierno/applicationamani/data/remoto/ChatFirebaseService$stopTyping$1;->L$0:Ljava/lang/Object;

    iput-wide p1, v0, Lorg/ies/tierno/applicationamani/data/remoto/ChatFirebaseService$stopTyping$1;->J$0:J

    iput-wide p3, v0, Lorg/ies/tierno/applicationamani/data/remoto/ChatFirebaseService$stopTyping$1;->J$1:J

    const/4 v5, 0x1

    iput v5, v0, Lorg/ies/tierno/applicationamani/data/remoto/ChatFirebaseService$stopTyping$1;->label:I

    invoke-static {v4, v0}, Lkotlinx/coroutines/tasks/TasksKt;->await(Lcom/google/android/gms/tasks/Task;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v4

    if-ne v4, v2, :cond_1

    .line 225
    return-object v2

    .line 228
    :cond_1
    move-object v2, v3

    .line 229
    .end local v3    # "roomId":Ljava/lang/String;
    .restart local v2    # "roomId":Ljava/lang/String;
    :goto_1
    sget-object v3, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    sget-object v3, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-static {v3}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .end local v2    # "roomId":Ljava/lang/String;
    goto :goto_2

    .line 230
    :catch_0
    move-exception v2

    .line 231
    .local v2, "e":Ljava/lang/Exception;
    sget-object v3, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    move-object v3, v2

    check-cast v3, Ljava/lang/Throwable;

    invoke-static {v3}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 226
    .end local v2    # "e":Ljava/lang/Exception;
    :goto_2
    return-object v3

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final updateLastSeen-0E7RQCE(JJLkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 5
    .param p1, "userId"    # J
    .param p3, "lastSeen"    # J
    .param p5, "$completion"    # Lkotlin/coroutines/Continuation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJ",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Result<",
            "Lkotlin/Unit;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p5, Lorg/ies/tierno/applicationamani/data/remoto/ChatFirebaseService$updateLastSeen$1;

    if-eqz v0, :cond_0

    move-object v0, p5

    check-cast v0, Lorg/ies/tierno/applicationamani/data/remoto/ChatFirebaseService$updateLastSeen$1;

    iget v1, v0, Lorg/ies/tierno/applicationamani/data/remoto/ChatFirebaseService$updateLastSeen$1;->label:I

    const/high16 v2, -0x80000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    iget v1, v0, Lorg/ies/tierno/applicationamani/data/remoto/ChatFirebaseService$updateLastSeen$1;->label:I

    sub-int/2addr v1, v2

    iput v1, v0, Lorg/ies/tierno/applicationamani/data/remoto/ChatFirebaseService$updateLastSeen$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lorg/ies/tierno/applicationamani/data/remoto/ChatFirebaseService$updateLastSeen$1;

    invoke-direct {v0, p0, p5}, Lorg/ies/tierno/applicationamani/data/remoto/ChatFirebaseService$updateLastSeen$1;-><init>(Lorg/ies/tierno/applicationamani/data/remoto/ChatFirebaseService;Lkotlin/coroutines/Continuation;)V

    .local v0, "$continuation":Lkotlin/coroutines/Continuation;
    :goto_0
    iget-object v1, v0, Lorg/ies/tierno/applicationamani/data/remoto/ChatFirebaseService$updateLastSeen$1;->result:Ljava/lang/Object;

    .local v1, "$result":Ljava/lang/Object;
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v2

    .line 264
    iget v3, v0, Lorg/ies/tierno/applicationamani/data/remoto/ChatFirebaseService$updateLastSeen$1;->label:I

    packed-switch v3, :pswitch_data_0

    .end local v0    # "$continuation":Lkotlin/coroutines/Continuation;
    .end local v1    # "$result":Ljava/lang/Object;
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .restart local v0    # "$continuation":Lkotlin/coroutines/Continuation;
    .restart local v1    # "$result":Ljava/lang/Object;
    :pswitch_0
    iget-wide p3, v0, Lorg/ies/tierno/applicationamani/data/remoto/ChatFirebaseService$updateLastSeen$1;->J$1:J

    iget-wide p1, v0, Lorg/ies/tierno/applicationamani/data/remoto/ChatFirebaseService$updateLastSeen$1;->J$0:J

    :try_start_0
    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :pswitch_1
    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 265
    nop

    .line 266
    :try_start_1
    iget-object v3, p0, Lorg/ies/tierno/applicationamani/data/remoto/ChatFirebaseService;->usersRef:Lcom/google/firebase/database/DatabaseReference;

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/google/firebase/database/DatabaseReference;->child(Ljava/lang/String;)Lcom/google/firebase/database/DatabaseReference;

    move-result-object v3

    const-string v4, "lastSeen"

    invoke-virtual {v3, v4}, Lcom/google/firebase/database/DatabaseReference;->child(Ljava/lang/String;)Lcom/google/firebase/database/DatabaseReference;

    move-result-object v3

    invoke-static {p3, p4}, Lkotlin/coroutines/jvm/internal/Boxing;->boxLong(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/google/firebase/database/DatabaseReference;->setValue(Ljava/lang/Object;)Lcom/google/android/gms/tasks/Task;

    move-result-object v3

    const-string v4, "setValue(...)"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-wide p1, v0, Lorg/ies/tierno/applicationamani/data/remoto/ChatFirebaseService$updateLastSeen$1;->J$0:J

    iput-wide p3, v0, Lorg/ies/tierno/applicationamani/data/remoto/ChatFirebaseService$updateLastSeen$1;->J$1:J

    const/4 v4, 0x1

    iput v4, v0, Lorg/ies/tierno/applicationamani/data/remoto/ChatFirebaseService$updateLastSeen$1;->label:I

    invoke-static {v3, v0}, Lkotlinx/coroutines/tasks/TasksKt;->await(Lcom/google/android/gms/tasks/Task;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v3

    if-ne v3, v2, :cond_1

    .line 264
    return-object v2

    .line 267
    :cond_1
    :goto_1
    sget-object v2, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    sget-object v2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-static {v2}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    .line 268
    :catch_0
    move-exception v2

    .line 269
    .local v2, "e":Ljava/lang/Exception;
    sget-object v3, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    move-object v3, v2

    check-cast v3, Ljava/lang/Throwable;

    invoke-static {v3}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object v2, v3

    .line 265
    .end local v2    # "e":Ljava/lang/Exception;
    :goto_2
    return-object v2

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final updateUserOnline-0E7RQCE(JZLkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 6
    .param p1, "userId"    # J
    .param p3, "isOnline"    # Z
    .param p4, "$completion"    # Lkotlin/coroutines/Continuation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JZ",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Result<",
            "Lkotlin/Unit;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p4, Lorg/ies/tierno/applicationamani/data/remoto/ChatFirebaseService$updateUserOnline$1;

    if-eqz v0, :cond_0

    move-object v0, p4

    check-cast v0, Lorg/ies/tierno/applicationamani/data/remoto/ChatFirebaseService$updateUserOnline$1;

    iget v1, v0, Lorg/ies/tierno/applicationamani/data/remoto/ChatFirebaseService$updateUserOnline$1;->label:I

    const/high16 v2, -0x80000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    iget v1, v0, Lorg/ies/tierno/applicationamani/data/remoto/ChatFirebaseService$updateUserOnline$1;->label:I

    sub-int/2addr v1, v2

    iput v1, v0, Lorg/ies/tierno/applicationamani/data/remoto/ChatFirebaseService$updateUserOnline$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lorg/ies/tierno/applicationamani/data/remoto/ChatFirebaseService$updateUserOnline$1;

    invoke-direct {v0, p0, p4}, Lorg/ies/tierno/applicationamani/data/remoto/ChatFirebaseService$updateUserOnline$1;-><init>(Lorg/ies/tierno/applicationamani/data/remoto/ChatFirebaseService;Lkotlin/coroutines/Continuation;)V

    .local v0, "$continuation":Lkotlin/coroutines/Continuation;
    :goto_0
    iget-object v1, v0, Lorg/ies/tierno/applicationamani/data/remoto/ChatFirebaseService$updateUserOnline$1;->result:Ljava/lang/Object;

    .local v1, "$result":Ljava/lang/Object;
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v2

    .line 255
    iget v3, v0, Lorg/ies/tierno/applicationamani/data/remoto/ChatFirebaseService$updateUserOnline$1;->label:I

    packed-switch v3, :pswitch_data_0

    .end local v0    # "$continuation":Lkotlin/coroutines/Continuation;
    .end local v1    # "$result":Ljava/lang/Object;
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .restart local v0    # "$continuation":Lkotlin/coroutines/Continuation;
    .restart local v1    # "$result":Ljava/lang/Object;
    :pswitch_0
    iget-boolean p3, v0, Lorg/ies/tierno/applicationamani/data/remoto/ChatFirebaseService$updateUserOnline$1;->Z$0:Z

    iget-wide p1, v0, Lorg/ies/tierno/applicationamani/data/remoto/ChatFirebaseService$updateUserOnline$1;->J$0:J

    :try_start_0
    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :pswitch_1
    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 256
    nop

    .line 257
    :try_start_1
    iget-object v3, p0, Lorg/ies/tierno/applicationamani/data/remoto/ChatFirebaseService;->usersRef:Lcom/google/firebase/database/DatabaseReference;

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/google/firebase/database/DatabaseReference;->child(Ljava/lang/String;)Lcom/google/firebase/database/DatabaseReference;

    move-result-object v3

    const-string v4, "isOnline"

    invoke-virtual {v3, v4}, Lcom/google/firebase/database/DatabaseReference;->child(Ljava/lang/String;)Lcom/google/firebase/database/DatabaseReference;

    move-result-object v3

    const/4 v4, 0x1

    if-eqz p3, :cond_1

    move v5, v4

    goto :goto_1

    :cond_1
    const/4 v5, 0x0

    :goto_1
    invoke-static {v5}, Lkotlin/coroutines/jvm/internal/Boxing;->boxBoolean(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/google/firebase/database/DatabaseReference;->setValue(Ljava/lang/Object;)Lcom/google/android/gms/tasks/Task;

    move-result-object v3

    const-string v5, "setValue(...)"

    invoke-static {v3, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-wide p1, v0, Lorg/ies/tierno/applicationamani/data/remoto/ChatFirebaseService$updateUserOnline$1;->J$0:J

    iput-boolean p3, v0, Lorg/ies/tierno/applicationamani/data/remoto/ChatFirebaseService$updateUserOnline$1;->Z$0:Z

    iput v4, v0, Lorg/ies/tierno/applicationamani/data/remoto/ChatFirebaseService$updateUserOnline$1;->label:I

    invoke-static {v3, v0}, Lkotlinx/coroutines/tasks/TasksKt;->await(Lcom/google/android/gms/tasks/Task;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v3

    if-ne v3, v2, :cond_2

    .line 255
    return-object v2

    .line 258
    :cond_2
    :goto_2
    sget-object v2, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    sget-object v2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-static {v2}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_3

    .line 259
    :catch_0
    move-exception v2

    .line 260
    .local v2, "e":Ljava/lang/Exception;
    sget-object v3, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    move-object v3, v2

    check-cast v3, Ljava/lang/Throwable;

    invoke-static {v3}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object v2, v3

    .line 256
    .end local v2    # "e":Ljava/lang/Exception;
    :goto_3
    return-object v2

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
