.class public final Lorg/ies/tierno/applicationamani/data/repositorio/ChatRepositoryImpl;
.super Ljava/lang/Object;
.source "ChatRepositoryImpl.kt"

# interfaces
.implements Lorg/ies/tierno/applicationamani/data/repositorio/ChatRepository;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000L\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\t\n\u0002\u0010\u000b\n\u0002\u0008\u0017\u0008\u0007\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0004\u0008\u0004\u0010\u0005J$\u0010\u0006\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\t0\u00080\u00072\u0006\u0010\n\u001a\u00020\u000b2\u0006\u0010\u000c\u001a\u00020\u000bH\u0016JL\u0010\r\u001a\u0008\u0012\u0004\u0012\u00020\u000f0\u000e2\u0006\u0010\u0010\u001a\u00020\u000b2\u0006\u0010\u0011\u001a\u00020\u000b2\u0006\u0010\u0012\u001a\u00020\u00132\u0008\u0010\u0014\u001a\u0004\u0018\u00010\u00132\u0008\u0010\u0015\u001a\u0004\u0018\u00010\u00162\u0008\u0010\u0017\u001a\u0004\u0018\u00010\u0013H\u0096@\u00a2\u0006\u0004\u0008\u0018\u0010\u0019J&\u0010\u001a\u001a\u0008\u0012\u0004\u0012\u00020\u000f0\u000e2\u0006\u0010\n\u001a\u00020\u000b2\u0006\u0010\u000c\u001a\u00020\u000bH\u0096@\u00a2\u0006\u0004\u0008\u001b\u0010\u001cJ,\u0010\u001d\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\t0\u00080\u000e2\u0006\u0010\n\u001a\u00020\u000b2\u0006\u0010\u000c\u001a\u00020\u000bH\u0096@\u00a2\u0006\u0004\u0008\u001e\u0010\u001cJ\u001e\u0010\u001f\u001a\u0008\u0012\u0004\u0012\u00020 0\u00072\u0006\u0010!\u001a\u00020\u000b2\u0006\u0010\"\u001a\u00020\u000bH\u0016J&\u0010#\u001a\u0008\u0012\u0004\u0012\u00020\u000f0\u000e2\u0006\u0010\u0010\u001a\u00020\u000b2\u0006\u0010\u0011\u001a\u00020\u000bH\u0096@\u00a2\u0006\u0004\u0008$\u0010\u001cJ&\u0010%\u001a\u0008\u0012\u0004\u0012\u00020\u000f0\u000e2\u0006\u0010\u0010\u001a\u00020\u000b2\u0006\u0010\u0011\u001a\u00020\u000bH\u0096@\u00a2\u0006\u0004\u0008&\u0010\u001cJ\u0016\u0010\'\u001a\u0008\u0012\u0004\u0012\u00020 0\u00072\u0006\u0010(\u001a\u00020\u000bH\u0016J&\u0010)\u001a\u0008\u0012\u0004\u0012\u00020\u000f0\u000e2\u0006\u0010(\u001a\u00020\u000b2\u0006\u0010*\u001a\u00020 H\u0096@\u00a2\u0006\u0004\u0008+\u0010,J&\u0010-\u001a\u0008\u0012\u0004\u0012\u00020\u000f0\u000e2\u0006\u0010(\u001a\u00020\u000b2\u0006\u0010.\u001a\u00020\u000bH\u0096@\u00a2\u0006\u0004\u0008/\u0010\u001cJ&\u00100\u001a\u0008\u0012\u0004\u0012\u00020\u000f0\u000e2\u0006\u00101\u001a\u00020\u000b2\u0006\u0010\u0011\u001a\u00020\u000bH\u0096@\u00a2\u0006\u0004\u00082\u0010\u001cJ&\u00103\u001a\u0008\u0012\u0004\u0012\u00020\u000f0\u000e2\u0006\u00101\u001a\u00020\u000b2\u0006\u0010\u0011\u001a\u00020\u000bH\u0096@\u00a2\u0006\u0004\u00084\u0010\u001cJ\u001e\u00105\u001a\u0008\u0012\u0004\u0012\u00020 0\u00072\u0006\u00101\u001a\u00020\u000b2\u0006\u0010\u0011\u001a\u00020\u000bH\u0016J\u001e\u00106\u001a\u0008\u0012\u0004\u0012\u00020 0\u00072\u0006\u00101\u001a\u00020\u000b2\u0006\u0010\u0011\u001a\u00020\u000bH\u0016R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u00067"
    }
    d2 = {
        "Lorg/ies/tierno/applicationamani/data/repositorio/ChatRepositoryImpl;",
        "Lorg/ies/tierno/applicationamani/data/repositorio/ChatRepository;",
        "chatFirebaseService",
        "Lorg/ies/tierno/applicationamani/data/remoto/ChatFirebaseService;",
        "<init>",
        "(Lorg/ies/tierno/applicationamani/data/remoto/ChatFirebaseService;)V",
        "observeMessages",
        "Lkotlinx/coroutines/flow/Flow;",
        "",
        "Lorg/ies/tierno/applicationamani/domain/models/Message;",
        "currentUserId",
        "",
        "otherUserId",
        "sendMessage",
        "Lkotlin/Result;",
        "",
        "senderId",
        "receiverId",
        "content",
        "",
        "attachmentUrl",
        "attachmentType",
        "Lorg/ies/tierno/applicationamani/domain/models/AttachmentType;",
        "attachmentName",
        "sendMessage-bMdYcbs",
        "(JJLjava/lang/String;Ljava/lang/String;Lorg/ies/tierno/applicationamani/domain/models/AttachmentType;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "markMessagesAsRead",
        "markMessagesAsRead-0E7RQCE",
        "(JJLkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "getMessages",
        "getMessages-0E7RQCE",
        "observeTyping",
        "",
        "userId1",
        "userId2",
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


# instance fields
.field private final chatFirebaseService:Lorg/ies/tierno/applicationamani/data/remoto/ChatFirebaseService;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x8

    sput v0, Lorg/ies/tierno/applicationamani/data/repositorio/ChatRepositoryImpl;->$stable:I

    return-void
.end method

.method public constructor <init>(Lorg/ies/tierno/applicationamani/data/remoto/ChatFirebaseService;)V
    .locals 1
    .param p1, "chatFirebaseService"    # Lorg/ies/tierno/applicationamani/data/remoto/ChatFirebaseService;

    const-string v0, "chatFirebaseService"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    iput-object p1, p0, Lorg/ies/tierno/applicationamani/data/repositorio/ChatRepositoryImpl;->chatFirebaseService:Lorg/ies/tierno/applicationamani/data/remoto/ChatFirebaseService;

    .line 7
    return-void
.end method


# virtual methods
.method public getMessages-0E7RQCE(JJLkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 8
    .param p1, "currentUserId"    # J
    .param p3, "otherUserId"    # J
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

    instance-of v0, p5, Lorg/ies/tierno/applicationamani/data/repositorio/ChatRepositoryImpl$getMessages$1;

    if-eqz v0, :cond_0

    move-object v0, p5

    check-cast v0, Lorg/ies/tierno/applicationamani/data/repositorio/ChatRepositoryImpl$getMessages$1;

    iget v1, v0, Lorg/ies/tierno/applicationamani/data/repositorio/ChatRepositoryImpl$getMessages$1;->label:I

    const/high16 v2, -0x80000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    iget v1, v0, Lorg/ies/tierno/applicationamani/data/repositorio/ChatRepositoryImpl$getMessages$1;->label:I

    sub-int/2addr v1, v2

    iput v1, v0, Lorg/ies/tierno/applicationamani/data/repositorio/ChatRepositoryImpl$getMessages$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lorg/ies/tierno/applicationamani/data/repositorio/ChatRepositoryImpl$getMessages$1;

    invoke-direct {v0, p0, p5}, Lorg/ies/tierno/applicationamani/data/repositorio/ChatRepositoryImpl$getMessages$1;-><init>(Lorg/ies/tierno/applicationamani/data/repositorio/ChatRepositoryImpl;Lkotlin/coroutines/Continuation;)V

    :goto_0
    move-object v6, v0

    .local v6, "$continuation":Lkotlin/coroutines/Continuation;
    iget-object v0, v6, Lorg/ies/tierno/applicationamani/data/repositorio/ChatRepositoryImpl$getMessages$1;->result:Ljava/lang/Object;

    .local v0, "$result":Ljava/lang/Object;
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v7

    .line 37
    iget v1, v6, Lorg/ies/tierno/applicationamani/data/repositorio/ChatRepositoryImpl$getMessages$1;->label:I

    packed-switch v1, :pswitch_data_0

    move-wide v2, p1

    .end local v0    # "$result":Ljava/lang/Object;
    .end local v6    # "$continuation":Lkotlin/coroutines/Continuation;
    .end local p1    # "currentUserId":J
    .local v2, "currentUserId":J
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .end local v2    # "currentUserId":J
    .restart local v0    # "$result":Ljava/lang/Object;
    .restart local v6    # "$continuation":Lkotlin/coroutines/Continuation;
    .restart local p1    # "currentUserId":J
    :pswitch_0
    iget-wide p3, v6, Lorg/ies/tierno/applicationamani/data/repositorio/ChatRepositoryImpl$getMessages$1;->J$1:J

    iget-wide p1, v6, Lorg/ies/tierno/applicationamani/data/repositorio/ChatRepositoryImpl$getMessages$1;->J$0:J

    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v1, v0

    check-cast v1, Lkotlin/Result;

    invoke-virtual {v1}, Lkotlin/Result;->unbox-impl()Ljava/lang/Object;

    move-result-object v1

    goto :goto_1

    :pswitch_1
    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 38
    iget-object v1, p0, Lorg/ies/tierno/applicationamani/data/repositorio/ChatRepositoryImpl;->chatFirebaseService:Lorg/ies/tierno/applicationamani/data/remoto/ChatFirebaseService;

    iput-wide p1, v6, Lorg/ies/tierno/applicationamani/data/repositorio/ChatRepositoryImpl$getMessages$1;->J$0:J

    iput-wide p3, v6, Lorg/ies/tierno/applicationamani/data/repositorio/ChatRepositoryImpl$getMessages$1;->J$1:J

    const/4 v2, 0x1

    iput v2, v6, Lorg/ies/tierno/applicationamani/data/repositorio/ChatRepositoryImpl$getMessages$1;->label:I

    move-wide v2, p1

    move-wide v4, p3

    .end local p1    # "currentUserId":J
    .end local p3    # "otherUserId":J
    .restart local v2    # "currentUserId":J
    .local v4, "otherUserId":J
    invoke-virtual/range {v1 .. v6}, Lorg/ies/tierno/applicationamani/data/remoto/ChatFirebaseService;->getMessages-0E7RQCE(JJLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v7, :cond_1

    .line 37
    return-object v7

    .line 38
    :cond_1
    move-wide p1, v2

    move-wide p3, v4

    .end local v2    # "currentUserId":J
    .end local v4    # "otherUserId":J
    .restart local p1    # "currentUserId":J
    .restart local p3    # "otherUserId":J
    :goto_1
    return-object v1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public markMessageAsRead-0E7RQCE(JJLkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 1
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

    .line 72
    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public markMessageDelivered-0E7RQCE(JJLkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 1
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

    .line 67
    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public markMessagesAsRead-0E7RQCE(JJLkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 8
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

    instance-of v0, p5, Lorg/ies/tierno/applicationamani/data/repositorio/ChatRepositoryImpl$markMessagesAsRead$1;

    if-eqz v0, :cond_0

    move-object v0, p5

    check-cast v0, Lorg/ies/tierno/applicationamani/data/repositorio/ChatRepositoryImpl$markMessagesAsRead$1;

    iget v1, v0, Lorg/ies/tierno/applicationamani/data/repositorio/ChatRepositoryImpl$markMessagesAsRead$1;->label:I

    const/high16 v2, -0x80000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    iget v1, v0, Lorg/ies/tierno/applicationamani/data/repositorio/ChatRepositoryImpl$markMessagesAsRead$1;->label:I

    sub-int/2addr v1, v2

    iput v1, v0, Lorg/ies/tierno/applicationamani/data/repositorio/ChatRepositoryImpl$markMessagesAsRead$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lorg/ies/tierno/applicationamani/data/repositorio/ChatRepositoryImpl$markMessagesAsRead$1;

    invoke-direct {v0, p0, p5}, Lorg/ies/tierno/applicationamani/data/repositorio/ChatRepositoryImpl$markMessagesAsRead$1;-><init>(Lorg/ies/tierno/applicationamani/data/repositorio/ChatRepositoryImpl;Lkotlin/coroutines/Continuation;)V

    :goto_0
    move-object v6, v0

    .local v6, "$continuation":Lkotlin/coroutines/Continuation;
    iget-object v0, v6, Lorg/ies/tierno/applicationamani/data/repositorio/ChatRepositoryImpl$markMessagesAsRead$1;->result:Ljava/lang/Object;

    .local v0, "$result":Ljava/lang/Object;
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v7

    .line 33
    iget v1, v6, Lorg/ies/tierno/applicationamani/data/repositorio/ChatRepositoryImpl$markMessagesAsRead$1;->label:I

    packed-switch v1, :pswitch_data_0

    move-wide v2, p1

    .end local v0    # "$result":Ljava/lang/Object;
    .end local v6    # "$continuation":Lkotlin/coroutines/Continuation;
    .end local p1    # "currentUserId":J
    .local v2, "currentUserId":J
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .end local v2    # "currentUserId":J
    .restart local v0    # "$result":Ljava/lang/Object;
    .restart local v6    # "$continuation":Lkotlin/coroutines/Continuation;
    .restart local p1    # "currentUserId":J
    :pswitch_0
    iget-wide p3, v6, Lorg/ies/tierno/applicationamani/data/repositorio/ChatRepositoryImpl$markMessagesAsRead$1;->J$1:J

    iget-wide p1, v6, Lorg/ies/tierno/applicationamani/data/repositorio/ChatRepositoryImpl$markMessagesAsRead$1;->J$0:J

    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v1, v0

    check-cast v1, Lkotlin/Result;

    invoke-virtual {v1}, Lkotlin/Result;->unbox-impl()Ljava/lang/Object;

    move-result-object v1

    goto :goto_1

    :pswitch_1
    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 34
    iget-object v1, p0, Lorg/ies/tierno/applicationamani/data/repositorio/ChatRepositoryImpl;->chatFirebaseService:Lorg/ies/tierno/applicationamani/data/remoto/ChatFirebaseService;

    iput-wide p1, v6, Lorg/ies/tierno/applicationamani/data/repositorio/ChatRepositoryImpl$markMessagesAsRead$1;->J$0:J

    iput-wide p3, v6, Lorg/ies/tierno/applicationamani/data/repositorio/ChatRepositoryImpl$markMessagesAsRead$1;->J$1:J

    const/4 v2, 0x1

    iput v2, v6, Lorg/ies/tierno/applicationamani/data/repositorio/ChatRepositoryImpl$markMessagesAsRead$1;->label:I

    move-wide v2, p1

    move-wide v4, p3

    .end local p1    # "currentUserId":J
    .end local p3    # "otherUserId":J
    .restart local v2    # "currentUserId":J
    .local v4, "otherUserId":J
    invoke-virtual/range {v1 .. v6}, Lorg/ies/tierno/applicationamani/data/remoto/ChatFirebaseService;->markMessagesAsRead-0E7RQCE(JJLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v7, :cond_1

    .line 33
    return-object v7

    .line 34
    :cond_1
    move-wide p1, v2

    move-wide p3, v4

    .end local v2    # "currentUserId":J
    .end local v4    # "otherUserId":J
    .restart local p1    # "currentUserId":J
    .restart local p3    # "otherUserId":J
    :goto_1
    return-object v1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public observeMessageDelivery(JJ)Lkotlinx/coroutines/flow/Flow;
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

    .line 77
    new-instance v0, Lorg/ies/tierno/applicationamani/data/repositorio/ChatRepositoryImpl$observeMessageDelivery$1;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/ies/tierno/applicationamani/data/repositorio/ChatRepositoryImpl$observeMessageDelivery$1;-><init>(Lkotlin/coroutines/Continuation;)V

    check-cast v0, Lkotlin/jvm/functions/Function2;

    invoke-static {v0}, Lkotlinx/coroutines/flow/FlowKt;->flow(Lkotlin/jvm/functions/Function2;)Lkotlinx/coroutines/flow/Flow;

    move-result-object v0

    return-object v0
.end method

.method public observeMessageRead(JJ)Lkotlinx/coroutines/flow/Flow;
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

    .line 82
    new-instance v0, Lorg/ies/tierno/applicationamani/data/repositorio/ChatRepositoryImpl$observeMessageRead$1;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/ies/tierno/applicationamani/data/repositorio/ChatRepositoryImpl$observeMessageRead$1;-><init>(Lkotlin/coroutines/Continuation;)V

    check-cast v0, Lkotlin/jvm/functions/Function2;

    invoke-static {v0}, Lkotlinx/coroutines/flow/FlowKt;->flow(Lkotlin/jvm/functions/Function2;)Lkotlinx/coroutines/flow/Flow;

    move-result-object v0

    return-object v0
.end method

.method public observeMessages(JJ)Lkotlinx/coroutines/flow/Flow;
    .locals 1
    .param p1, "currentUserId"    # J
    .param p3, "otherUserId"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJ)",
            "Lkotlinx/coroutines/flow/Flow<",
            "Ljava/util/List<",
            "Lorg/ies/tierno/applicationamani/domain/models/Message;",
            ">;>;"
        }
    .end annotation

    .line 12
    iget-object v0, p0, Lorg/ies/tierno/applicationamani/data/repositorio/ChatRepositoryImpl;->chatFirebaseService:Lorg/ies/tierno/applicationamani/data/remoto/ChatFirebaseService;

    invoke-virtual {v0, p1, p2, p3, p4}, Lorg/ies/tierno/applicationamani/data/remoto/ChatFirebaseService;->observeMessages(JJ)Lkotlinx/coroutines/flow/Flow;

    move-result-object v0

    return-object v0
.end method

.method public observeTyping(JJ)Lkotlinx/coroutines/flow/Flow;
    .locals 1
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

    .line 42
    iget-object v0, p0, Lorg/ies/tierno/applicationamani/data/repositorio/ChatRepositoryImpl;->chatFirebaseService:Lorg/ies/tierno/applicationamani/data/remoto/ChatFirebaseService;

    invoke-virtual {v0, p1, p2, p3, p4}, Lorg/ies/tierno/applicationamani/data/remoto/ChatFirebaseService;->observeTyping(JJ)Lkotlinx/coroutines/flow/Flow;

    move-result-object v0

    return-object v0
.end method

.method public observeUserOnline(J)Lkotlinx/coroutines/flow/Flow;
    .locals 1
    .param p1, "userId"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Lkotlinx/coroutines/flow/Flow<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 54
    iget-object v0, p0, Lorg/ies/tierno/applicationamani/data/repositorio/ChatRepositoryImpl;->chatFirebaseService:Lorg/ies/tierno/applicationamani/data/remoto/ChatFirebaseService;

    invoke-virtual {v0, p1, p2}, Lorg/ies/tierno/applicationamani/data/remoto/ChatFirebaseService;->observeUserOnline(J)Lkotlinx/coroutines/flow/Flow;

    move-result-object v0

    return-object v0
.end method

.method public sendMessage-bMdYcbs(JJLjava/lang/String;Ljava/lang/String;Lorg/ies/tierno/applicationamani/domain/models/AttachmentType;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 13
    .param p1, "senderId"    # J
    .param p3, "receiverId"    # J
    .param p5, "content"    # Ljava/lang/String;
    .param p6, "attachmentUrl"    # Ljava/lang/String;
    .param p7, "attachmentType"    # Lorg/ies/tierno/applicationamani/domain/models/AttachmentType;
    .param p8, "attachmentName"    # Ljava/lang/String;
    .param p9, "$completion"    # Lkotlin/coroutines/Continuation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJ",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lorg/ies/tierno/applicationamani/domain/models/AttachmentType;",
            "Ljava/lang/String;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Result<",
            "Lkotlin/Unit;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    move-object/from16 v0, p9

    instance-of v1, v0, Lorg/ies/tierno/applicationamani/data/repositorio/ChatRepositoryImpl$sendMessage$1;

    if-eqz v1, :cond_0

    move-object v1, v0

    check-cast v1, Lorg/ies/tierno/applicationamani/data/repositorio/ChatRepositoryImpl$sendMessage$1;

    iget v2, v1, Lorg/ies/tierno/applicationamani/data/repositorio/ChatRepositoryImpl$sendMessage$1;->label:I

    const/high16 v3, -0x80000000

    and-int/2addr v2, v3

    if-eqz v2, :cond_0

    iget v2, v1, Lorg/ies/tierno/applicationamani/data/repositorio/ChatRepositoryImpl$sendMessage$1;->label:I

    sub-int/2addr v2, v3

    iput v2, v1, Lorg/ies/tierno/applicationamani/data/repositorio/ChatRepositoryImpl$sendMessage$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v1, Lorg/ies/tierno/applicationamani/data/repositorio/ChatRepositoryImpl$sendMessage$1;

    invoke-direct {v1, p0, v0}, Lorg/ies/tierno/applicationamani/data/repositorio/ChatRepositoryImpl$sendMessage$1;-><init>(Lorg/ies/tierno/applicationamani/data/repositorio/ChatRepositoryImpl;Lkotlin/coroutines/Continuation;)V

    :goto_0
    move-object v11, v1

    .local v11, "$continuation":Lkotlin/coroutines/Continuation;
    iget-object v1, v11, Lorg/ies/tierno/applicationamani/data/repositorio/ChatRepositoryImpl$sendMessage$1;->result:Ljava/lang/Object;

    .local v1, "$result":Ljava/lang/Object;
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v12

    .line 15
    iget v2, v11, Lorg/ies/tierno/applicationamani/data/repositorio/ChatRepositoryImpl$sendMessage$1;->label:I

    packed-switch v2, :pswitch_data_0

    .end local v1    # "$result":Ljava/lang/Object;
    .end local v11    # "$continuation":Lkotlin/coroutines/Continuation;
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .restart local v1    # "$result":Ljava/lang/Object;
    .restart local v11    # "$continuation":Lkotlin/coroutines/Continuation;
    :pswitch_0
    iget-wide v2, v11, Lorg/ies/tierno/applicationamani/data/repositorio/ChatRepositoryImpl$sendMessage$1;->J$1:J

    .end local p3    # "receiverId":J
    .local v2, "receiverId":J
    iget-wide p1, v11, Lorg/ies/tierno/applicationamani/data/repositorio/ChatRepositoryImpl$sendMessage$1;->J$0:J

    iget-object v4, v11, Lorg/ies/tierno/applicationamani/data/repositorio/ChatRepositoryImpl$sendMessage$1;->L$3:Ljava/lang/Object;

    check-cast v4, Ljava/lang/String;

    .end local p8    # "attachmentName":Ljava/lang/String;
    .local v4, "attachmentName":Ljava/lang/String;
    iget-object v5, v11, Lorg/ies/tierno/applicationamani/data/repositorio/ChatRepositoryImpl$sendMessage$1;->L$2:Ljava/lang/Object;

    check-cast v5, Lorg/ies/tierno/applicationamani/domain/models/AttachmentType;

    .end local p7    # "attachmentType":Lorg/ies/tierno/applicationamani/domain/models/AttachmentType;
    .local v5, "attachmentType":Lorg/ies/tierno/applicationamani/domain/models/AttachmentType;
    iget-object v6, v11, Lorg/ies/tierno/applicationamani/data/repositorio/ChatRepositoryImpl$sendMessage$1;->L$1:Ljava/lang/Object;

    check-cast v6, Ljava/lang/String;

    .end local p6    # "attachmentUrl":Ljava/lang/String;
    .local v6, "attachmentUrl":Ljava/lang/String;
    iget-object v7, v11, Lorg/ies/tierno/applicationamani/data/repositorio/ChatRepositoryImpl$sendMessage$1;->L$0:Ljava/lang/Object;

    check-cast v7, Ljava/lang/String;

    .end local p5    # "content":Ljava/lang/String;
    .local v7, "content":Ljava/lang/String;
    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v8, v1

    check-cast v8, Lkotlin/Result;

    invoke-virtual {v8}, Lkotlin/Result;->unbox-impl()Ljava/lang/Object;

    move-result-object v8

    goto :goto_2

    .end local v2    # "receiverId":J
    .end local v4    # "attachmentName":Ljava/lang/String;
    .end local v5    # "attachmentType":Lorg/ies/tierno/applicationamani/domain/models/AttachmentType;
    .end local v6    # "attachmentUrl":Ljava/lang/String;
    .end local v7    # "content":Ljava/lang/String;
    .restart local p3    # "receiverId":J
    .restart local p5    # "content":Ljava/lang/String;
    .restart local p6    # "attachmentUrl":Ljava/lang/String;
    .restart local p7    # "attachmentType":Lorg/ies/tierno/applicationamani/domain/models/AttachmentType;
    .restart local p8    # "attachmentName":Ljava/lang/String;
    :pswitch_1
    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 23
    iget-object v2, p0, Lorg/ies/tierno/applicationamani/data/repositorio/ChatRepositoryImpl;->chatFirebaseService:Lorg/ies/tierno/applicationamani/data/remoto/ChatFirebaseService;

    .line 24
    nop

    .line 25
    nop

    .line 26
    nop

    .line 27
    nop

    .line 28
    if-eqz p7, :cond_1

    invoke-virtual/range {p7 .. p7}, Lorg/ies/tierno/applicationamani/domain/models/AttachmentType;->name()Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    :cond_1
    const/4 v3, 0x0

    :goto_1
    move-object v9, v3

    .line 29
    nop

    .line 23
    invoke-static/range {p5 .. p5}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    iput-object v3, v11, Lorg/ies/tierno/applicationamani/data/repositorio/ChatRepositoryImpl$sendMessage$1;->L$0:Ljava/lang/Object;

    invoke-static/range {p6 .. p6}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    iput-object v3, v11, Lorg/ies/tierno/applicationamani/data/repositorio/ChatRepositoryImpl$sendMessage$1;->L$1:Ljava/lang/Object;

    invoke-static/range {p7 .. p7}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    iput-object v3, v11, Lorg/ies/tierno/applicationamani/data/repositorio/ChatRepositoryImpl$sendMessage$1;->L$2:Ljava/lang/Object;

    invoke-static/range {p8 .. p8}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    iput-object v3, v11, Lorg/ies/tierno/applicationamani/data/repositorio/ChatRepositoryImpl$sendMessage$1;->L$3:Ljava/lang/Object;

    iput-wide p1, v11, Lorg/ies/tierno/applicationamani/data/repositorio/ChatRepositoryImpl$sendMessage$1;->J$0:J

    move-wide/from16 v5, p3

    iput-wide v5, v11, Lorg/ies/tierno/applicationamani/data/repositorio/ChatRepositoryImpl$sendMessage$1;->J$1:J

    const/4 v3, 0x1

    iput v3, v11, Lorg/ies/tierno/applicationamani/data/repositorio/ChatRepositoryImpl$sendMessage$1;->label:I

    move-wide v3, p1

    move-object/from16 v7, p5

    move-object/from16 v8, p6

    move-object/from16 v10, p8

    invoke-virtual/range {v2 .. v11}, Lorg/ies/tierno/applicationamani/data/remoto/ChatFirebaseService;->sendMessage-bMdYcbs(JJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v12, :cond_2

    .line 15
    return-object v12

    .line 23
    :cond_2
    move-object/from16 v7, p5

    move-object/from16 v6, p6

    move-object/from16 v5, p7

    move-object/from16 v4, p8

    move-object v8, v2

    move-wide/from16 v2, p3

    .end local p3    # "receiverId":J
    .end local p5    # "content":Ljava/lang/String;
    .end local p6    # "attachmentUrl":Ljava/lang/String;
    .end local p7    # "attachmentType":Lorg/ies/tierno/applicationamani/domain/models/AttachmentType;
    .end local p8    # "attachmentName":Ljava/lang/String;
    .restart local v2    # "receiverId":J
    .restart local v4    # "attachmentName":Ljava/lang/String;
    .restart local v5    # "attachmentType":Lorg/ies/tierno/applicationamani/domain/models/AttachmentType;
    .restart local v6    # "attachmentUrl":Ljava/lang/String;
    .restart local v7    # "content":Ljava/lang/String;
    :goto_2
    return-object v8

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public startTyping-0E7RQCE(JJLkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 8
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

    instance-of v0, p5, Lorg/ies/tierno/applicationamani/data/repositorio/ChatRepositoryImpl$startTyping$1;

    if-eqz v0, :cond_0

    move-object v0, p5

    check-cast v0, Lorg/ies/tierno/applicationamani/data/repositorio/ChatRepositoryImpl$startTyping$1;

    iget v1, v0, Lorg/ies/tierno/applicationamani/data/repositorio/ChatRepositoryImpl$startTyping$1;->label:I

    const/high16 v2, -0x80000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    iget v1, v0, Lorg/ies/tierno/applicationamani/data/repositorio/ChatRepositoryImpl$startTyping$1;->label:I

    sub-int/2addr v1, v2

    iput v1, v0, Lorg/ies/tierno/applicationamani/data/repositorio/ChatRepositoryImpl$startTyping$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lorg/ies/tierno/applicationamani/data/repositorio/ChatRepositoryImpl$startTyping$1;

    invoke-direct {v0, p0, p5}, Lorg/ies/tierno/applicationamani/data/repositorio/ChatRepositoryImpl$startTyping$1;-><init>(Lorg/ies/tierno/applicationamani/data/repositorio/ChatRepositoryImpl;Lkotlin/coroutines/Continuation;)V

    :goto_0
    move-object v6, v0

    .local v6, "$continuation":Lkotlin/coroutines/Continuation;
    iget-object v0, v6, Lorg/ies/tierno/applicationamani/data/repositorio/ChatRepositoryImpl$startTyping$1;->result:Ljava/lang/Object;

    .local v0, "$result":Ljava/lang/Object;
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v7

    .line 45
    iget v1, v6, Lorg/ies/tierno/applicationamani/data/repositorio/ChatRepositoryImpl$startTyping$1;->label:I

    packed-switch v1, :pswitch_data_0

    move-wide v2, p1

    .end local v0    # "$result":Ljava/lang/Object;
    .end local v6    # "$continuation":Lkotlin/coroutines/Continuation;
    .end local p1    # "senderId":J
    .local v2, "senderId":J
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .end local v2    # "senderId":J
    .restart local v0    # "$result":Ljava/lang/Object;
    .restart local v6    # "$continuation":Lkotlin/coroutines/Continuation;
    .restart local p1    # "senderId":J
    :pswitch_0
    iget-wide p3, v6, Lorg/ies/tierno/applicationamani/data/repositorio/ChatRepositoryImpl$startTyping$1;->J$1:J

    iget-wide p1, v6, Lorg/ies/tierno/applicationamani/data/repositorio/ChatRepositoryImpl$startTyping$1;->J$0:J

    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v1, v0

    check-cast v1, Lkotlin/Result;

    invoke-virtual {v1}, Lkotlin/Result;->unbox-impl()Ljava/lang/Object;

    move-result-object v1

    goto :goto_1

    :pswitch_1
    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 46
    iget-object v1, p0, Lorg/ies/tierno/applicationamani/data/repositorio/ChatRepositoryImpl;->chatFirebaseService:Lorg/ies/tierno/applicationamani/data/remoto/ChatFirebaseService;

    iput-wide p1, v6, Lorg/ies/tierno/applicationamani/data/repositorio/ChatRepositoryImpl$startTyping$1;->J$0:J

    iput-wide p3, v6, Lorg/ies/tierno/applicationamani/data/repositorio/ChatRepositoryImpl$startTyping$1;->J$1:J

    const/4 v2, 0x1

    iput v2, v6, Lorg/ies/tierno/applicationamani/data/repositorio/ChatRepositoryImpl$startTyping$1;->label:I

    move-wide v2, p1

    move-wide v4, p3

    .end local p1    # "senderId":J
    .end local p3    # "receiverId":J
    .restart local v2    # "senderId":J
    .local v4, "receiverId":J
    invoke-virtual/range {v1 .. v6}, Lorg/ies/tierno/applicationamani/data/remoto/ChatFirebaseService;->startTyping-0E7RQCE(JJLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v7, :cond_1

    .line 45
    return-object v7

    .line 46
    :cond_1
    move-wide p1, v2

    move-wide p3, v4

    .end local v2    # "senderId":J
    .end local v4    # "receiverId":J
    .restart local p1    # "senderId":J
    .restart local p3    # "receiverId":J
    :goto_1
    return-object v1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public stopTyping-0E7RQCE(JJLkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 8
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

    instance-of v0, p5, Lorg/ies/tierno/applicationamani/data/repositorio/ChatRepositoryImpl$stopTyping$1;

    if-eqz v0, :cond_0

    move-object v0, p5

    check-cast v0, Lorg/ies/tierno/applicationamani/data/repositorio/ChatRepositoryImpl$stopTyping$1;

    iget v1, v0, Lorg/ies/tierno/applicationamani/data/repositorio/ChatRepositoryImpl$stopTyping$1;->label:I

    const/high16 v2, -0x80000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    iget v1, v0, Lorg/ies/tierno/applicationamani/data/repositorio/ChatRepositoryImpl$stopTyping$1;->label:I

    sub-int/2addr v1, v2

    iput v1, v0, Lorg/ies/tierno/applicationamani/data/repositorio/ChatRepositoryImpl$stopTyping$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lorg/ies/tierno/applicationamani/data/repositorio/ChatRepositoryImpl$stopTyping$1;

    invoke-direct {v0, p0, p5}, Lorg/ies/tierno/applicationamani/data/repositorio/ChatRepositoryImpl$stopTyping$1;-><init>(Lorg/ies/tierno/applicationamani/data/repositorio/ChatRepositoryImpl;Lkotlin/coroutines/Continuation;)V

    :goto_0
    move-object v6, v0

    .local v6, "$continuation":Lkotlin/coroutines/Continuation;
    iget-object v0, v6, Lorg/ies/tierno/applicationamani/data/repositorio/ChatRepositoryImpl$stopTyping$1;->result:Ljava/lang/Object;

    .local v0, "$result":Ljava/lang/Object;
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v7

    .line 49
    iget v1, v6, Lorg/ies/tierno/applicationamani/data/repositorio/ChatRepositoryImpl$stopTyping$1;->label:I

    packed-switch v1, :pswitch_data_0

    move-wide v2, p1

    .end local v0    # "$result":Ljava/lang/Object;
    .end local v6    # "$continuation":Lkotlin/coroutines/Continuation;
    .end local p1    # "senderId":J
    .local v2, "senderId":J
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .end local v2    # "senderId":J
    .restart local v0    # "$result":Ljava/lang/Object;
    .restart local v6    # "$continuation":Lkotlin/coroutines/Continuation;
    .restart local p1    # "senderId":J
    :pswitch_0
    iget-wide p3, v6, Lorg/ies/tierno/applicationamani/data/repositorio/ChatRepositoryImpl$stopTyping$1;->J$1:J

    iget-wide p1, v6, Lorg/ies/tierno/applicationamani/data/repositorio/ChatRepositoryImpl$stopTyping$1;->J$0:J

    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v1, v0

    check-cast v1, Lkotlin/Result;

    invoke-virtual {v1}, Lkotlin/Result;->unbox-impl()Ljava/lang/Object;

    move-result-object v1

    goto :goto_1

    :pswitch_1
    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 50
    iget-object v1, p0, Lorg/ies/tierno/applicationamani/data/repositorio/ChatRepositoryImpl;->chatFirebaseService:Lorg/ies/tierno/applicationamani/data/remoto/ChatFirebaseService;

    iput-wide p1, v6, Lorg/ies/tierno/applicationamani/data/repositorio/ChatRepositoryImpl$stopTyping$1;->J$0:J

    iput-wide p3, v6, Lorg/ies/tierno/applicationamani/data/repositorio/ChatRepositoryImpl$stopTyping$1;->J$1:J

    const/4 v2, 0x1

    iput v2, v6, Lorg/ies/tierno/applicationamani/data/repositorio/ChatRepositoryImpl$stopTyping$1;->label:I

    move-wide v2, p1

    move-wide v4, p3

    .end local p1    # "senderId":J
    .end local p3    # "receiverId":J
    .restart local v2    # "senderId":J
    .local v4, "receiverId":J
    invoke-virtual/range {v1 .. v6}, Lorg/ies/tierno/applicationamani/data/remoto/ChatFirebaseService;->stopTyping-0E7RQCE(JJLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v7, :cond_1

    .line 49
    return-object v7

    .line 50
    :cond_1
    move-wide p1, v2

    move-wide p3, v4

    .end local v2    # "senderId":J
    .end local v4    # "receiverId":J
    .restart local p1    # "senderId":J
    .restart local p3    # "receiverId":J
    :goto_1
    return-object v1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public updateLastSeen-0E7RQCE(JJLkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 8
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

    instance-of v0, p5, Lorg/ies/tierno/applicationamani/data/repositorio/ChatRepositoryImpl$updateLastSeen$1;

    if-eqz v0, :cond_0

    move-object v0, p5

    check-cast v0, Lorg/ies/tierno/applicationamani/data/repositorio/ChatRepositoryImpl$updateLastSeen$1;

    iget v1, v0, Lorg/ies/tierno/applicationamani/data/repositorio/ChatRepositoryImpl$updateLastSeen$1;->label:I

    const/high16 v2, -0x80000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    iget v1, v0, Lorg/ies/tierno/applicationamani/data/repositorio/ChatRepositoryImpl$updateLastSeen$1;->label:I

    sub-int/2addr v1, v2

    iput v1, v0, Lorg/ies/tierno/applicationamani/data/repositorio/ChatRepositoryImpl$updateLastSeen$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lorg/ies/tierno/applicationamani/data/repositorio/ChatRepositoryImpl$updateLastSeen$1;

    invoke-direct {v0, p0, p5}, Lorg/ies/tierno/applicationamani/data/repositorio/ChatRepositoryImpl$updateLastSeen$1;-><init>(Lorg/ies/tierno/applicationamani/data/repositorio/ChatRepositoryImpl;Lkotlin/coroutines/Continuation;)V

    :goto_0
    move-object v6, v0

    .local v6, "$continuation":Lkotlin/coroutines/Continuation;
    iget-object v0, v6, Lorg/ies/tierno/applicationamani/data/repositorio/ChatRepositoryImpl$updateLastSeen$1;->result:Ljava/lang/Object;

    .local v0, "$result":Ljava/lang/Object;
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v7

    .line 61
    iget v1, v6, Lorg/ies/tierno/applicationamani/data/repositorio/ChatRepositoryImpl$updateLastSeen$1;->label:I

    packed-switch v1, :pswitch_data_0

    move-wide v2, p1

    .end local v0    # "$result":Ljava/lang/Object;
    .end local v6    # "$continuation":Lkotlin/coroutines/Continuation;
    .end local p1    # "userId":J
    .local v2, "userId":J
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .end local v2    # "userId":J
    .restart local v0    # "$result":Ljava/lang/Object;
    .restart local v6    # "$continuation":Lkotlin/coroutines/Continuation;
    .restart local p1    # "userId":J
    :pswitch_0
    iget-wide p3, v6, Lorg/ies/tierno/applicationamani/data/repositorio/ChatRepositoryImpl$updateLastSeen$1;->J$1:J

    iget-wide p1, v6, Lorg/ies/tierno/applicationamani/data/repositorio/ChatRepositoryImpl$updateLastSeen$1;->J$0:J

    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v1, v0

    check-cast v1, Lkotlin/Result;

    invoke-virtual {v1}, Lkotlin/Result;->unbox-impl()Ljava/lang/Object;

    move-result-object v1

    goto :goto_1

    :pswitch_1
    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 62
    iget-object v1, p0, Lorg/ies/tierno/applicationamani/data/repositorio/ChatRepositoryImpl;->chatFirebaseService:Lorg/ies/tierno/applicationamani/data/remoto/ChatFirebaseService;

    iput-wide p1, v6, Lorg/ies/tierno/applicationamani/data/repositorio/ChatRepositoryImpl$updateLastSeen$1;->J$0:J

    iput-wide p3, v6, Lorg/ies/tierno/applicationamani/data/repositorio/ChatRepositoryImpl$updateLastSeen$1;->J$1:J

    const/4 v2, 0x1

    iput v2, v6, Lorg/ies/tierno/applicationamani/data/repositorio/ChatRepositoryImpl$updateLastSeen$1;->label:I

    move-wide v2, p1

    move-wide v4, p3

    .end local p1    # "userId":J
    .end local p3    # "lastSeen":J
    .restart local v2    # "userId":J
    .local v4, "lastSeen":J
    invoke-virtual/range {v1 .. v6}, Lorg/ies/tierno/applicationamani/data/remoto/ChatFirebaseService;->updateLastSeen-0E7RQCE(JJLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v7, :cond_1

    .line 61
    return-object v7

    .line 62
    :cond_1
    move-wide p1, v2

    move-wide p3, v4

    .end local v2    # "userId":J
    .end local v4    # "lastSeen":J
    .restart local p1    # "userId":J
    .restart local p3    # "lastSeen":J
    :goto_1
    return-object v1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public updateUserOnline-0E7RQCE(JZLkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 5
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

    instance-of v0, p4, Lorg/ies/tierno/applicationamani/data/repositorio/ChatRepositoryImpl$updateUserOnline$1;

    if-eqz v0, :cond_0

    move-object v0, p4

    check-cast v0, Lorg/ies/tierno/applicationamani/data/repositorio/ChatRepositoryImpl$updateUserOnline$1;

    iget v1, v0, Lorg/ies/tierno/applicationamani/data/repositorio/ChatRepositoryImpl$updateUserOnline$1;->label:I

    const/high16 v2, -0x80000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    iget v1, v0, Lorg/ies/tierno/applicationamani/data/repositorio/ChatRepositoryImpl$updateUserOnline$1;->label:I

    sub-int/2addr v1, v2

    iput v1, v0, Lorg/ies/tierno/applicationamani/data/repositorio/ChatRepositoryImpl$updateUserOnline$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lorg/ies/tierno/applicationamani/data/repositorio/ChatRepositoryImpl$updateUserOnline$1;

    invoke-direct {v0, p0, p4}, Lorg/ies/tierno/applicationamani/data/repositorio/ChatRepositoryImpl$updateUserOnline$1;-><init>(Lorg/ies/tierno/applicationamani/data/repositorio/ChatRepositoryImpl;Lkotlin/coroutines/Continuation;)V

    .local v0, "$continuation":Lkotlin/coroutines/Continuation;
    :goto_0
    iget-object v1, v0, Lorg/ies/tierno/applicationamani/data/repositorio/ChatRepositoryImpl$updateUserOnline$1;->result:Ljava/lang/Object;

    .local v1, "$result":Ljava/lang/Object;
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v2

    .line 57
    iget v3, v0, Lorg/ies/tierno/applicationamani/data/repositorio/ChatRepositoryImpl$updateUserOnline$1;->label:I

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
    iget-boolean p3, v0, Lorg/ies/tierno/applicationamani/data/repositorio/ChatRepositoryImpl$updateUserOnline$1;->Z$0:Z

    iget-wide p1, v0, Lorg/ies/tierno/applicationamani/data/repositorio/ChatRepositoryImpl$updateUserOnline$1;->J$0:J

    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v2, v1

    check-cast v2, Lkotlin/Result;

    invoke-virtual {v2}, Lkotlin/Result;->unbox-impl()Ljava/lang/Object;

    move-result-object v2

    goto :goto_1

    :pswitch_1
    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 58
    iget-object v3, p0, Lorg/ies/tierno/applicationamani/data/repositorio/ChatRepositoryImpl;->chatFirebaseService:Lorg/ies/tierno/applicationamani/data/remoto/ChatFirebaseService;

    iput-wide p1, v0, Lorg/ies/tierno/applicationamani/data/repositorio/ChatRepositoryImpl$updateUserOnline$1;->J$0:J

    iput-boolean p3, v0, Lorg/ies/tierno/applicationamani/data/repositorio/ChatRepositoryImpl$updateUserOnline$1;->Z$0:Z

    const/4 v4, 0x1

    iput v4, v0, Lorg/ies/tierno/applicationamani/data/repositorio/ChatRepositoryImpl$updateUserOnline$1;->label:I

    invoke-virtual {v3, p1, p2, p3, v0}, Lorg/ies/tierno/applicationamani/data/remoto/ChatFirebaseService;->updateUserOnline-0E7RQCE(JZLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v3

    if-ne v3, v2, :cond_1

    .line 57
    return-object v2

    .line 58
    :cond_1
    move-object v2, v3

    :goto_1
    return-object v2

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
