.class public interface abstract Lorg/ies/tierno/applicationamani/data/repositorio/ChatRepository;
.super Ljava/lang/Object;
.source "ChatRepository.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/ies/tierno/applicationamani/data/repositorio/ChatRepository$DefaultImpls;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000D\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\t\n\u0002\u0010\u000b\n\u0002\u0008\u0017\u0008f\u0018\u00002\u00020\u0001J$\u0010\u0002\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00050\u00040\u00032\u0006\u0010\u0006\u001a\u00020\u00072\u0006\u0010\u0008\u001a\u00020\u0007H&JR\u0010\t\u001a\u0008\u0012\u0004\u0012\u00020\u000b0\n2\u0006\u0010\u000c\u001a\u00020\u00072\u0006\u0010\r\u001a\u00020\u00072\u0006\u0010\u000e\u001a\u00020\u000f2\n\u0008\u0002\u0010\u0010\u001a\u0004\u0018\u00010\u000f2\n\u0008\u0002\u0010\u0011\u001a\u0004\u0018\u00010\u00122\n\u0008\u0002\u0010\u0013\u001a\u0004\u0018\u00010\u000fH\u00a6@\u00a2\u0006\u0004\u0008\u0014\u0010\u0015J&\u0010\u0016\u001a\u0008\u0012\u0004\u0012\u00020\u000b0\n2\u0006\u0010\u0006\u001a\u00020\u00072\u0006\u0010\u0008\u001a\u00020\u0007H\u00a6@\u00a2\u0006\u0004\u0008\u0017\u0010\u0018J,\u0010\u0019\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00050\u00040\n2\u0006\u0010\u0006\u001a\u00020\u00072\u0006\u0010\u0008\u001a\u00020\u0007H\u00a6@\u00a2\u0006\u0004\u0008\u001a\u0010\u0018J\u001e\u0010\u001b\u001a\u0008\u0012\u0004\u0012\u00020\u001c0\u00032\u0006\u0010\u001d\u001a\u00020\u00072\u0006\u0010\u001e\u001a\u00020\u0007H&J&\u0010\u001f\u001a\u0008\u0012\u0004\u0012\u00020\u000b0\n2\u0006\u0010\u000c\u001a\u00020\u00072\u0006\u0010\r\u001a\u00020\u0007H\u00a6@\u00a2\u0006\u0004\u0008 \u0010\u0018J&\u0010!\u001a\u0008\u0012\u0004\u0012\u00020\u000b0\n2\u0006\u0010\u000c\u001a\u00020\u00072\u0006\u0010\r\u001a\u00020\u0007H\u00a6@\u00a2\u0006\u0004\u0008\"\u0010\u0018J\u0016\u0010#\u001a\u0008\u0012\u0004\u0012\u00020\u001c0\u00032\u0006\u0010$\u001a\u00020\u0007H&J&\u0010%\u001a\u0008\u0012\u0004\u0012\u00020\u000b0\n2\u0006\u0010$\u001a\u00020\u00072\u0006\u0010&\u001a\u00020\u001cH\u00a6@\u00a2\u0006\u0004\u0008\'\u0010(J&\u0010)\u001a\u0008\u0012\u0004\u0012\u00020\u000b0\n2\u0006\u0010$\u001a\u00020\u00072\u0006\u0010*\u001a\u00020\u0007H\u00a6@\u00a2\u0006\u0004\u0008+\u0010\u0018J&\u0010,\u001a\u0008\u0012\u0004\u0012\u00020\u000b0\n2\u0006\u0010-\u001a\u00020\u00072\u0006\u0010\r\u001a\u00020\u0007H\u00a6@\u00a2\u0006\u0004\u0008.\u0010\u0018J&\u0010/\u001a\u0008\u0012\u0004\u0012\u00020\u000b0\n2\u0006\u0010-\u001a\u00020\u00072\u0006\u0010\r\u001a\u00020\u0007H\u00a6@\u00a2\u0006\u0004\u00080\u0010\u0018J\u001e\u00101\u001a\u0008\u0012\u0004\u0012\u00020\u001c0\u00032\u0006\u0010-\u001a\u00020\u00072\u0006\u0010\r\u001a\u00020\u0007H&J\u001e\u00102\u001a\u0008\u0012\u0004\u0012\u00020\u001c0\u00032\u0006\u0010-\u001a\u00020\u00072\u0006\u0010\r\u001a\u00020\u0007H&\u00a8\u00063\u00c0\u0006\u0003"
    }
    d2 = {
        "Lorg/ies/tierno/applicationamani/data/repositorio/ChatRepository;",
        "",
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


# direct methods
.method public static synthetic sendMessage-bMdYcbs$default(Lorg/ies/tierno/applicationamani/data/repositorio/ChatRepository;JJLjava/lang/String;Ljava/lang/String;Lorg/ies/tierno/applicationamani/domain/models/AttachmentType;Ljava/lang/String;Lkotlin/coroutines/Continuation;ILjava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 9
    if-nez p11, :cond_3

    and-int/lit8 p11, p10, 0x8

    const/4 v0, 0x0

    if-eqz p11, :cond_0

    .line 13
    move-object p6, v0

    .line 9
    :cond_0
    and-int/lit8 p11, p10, 0x10

    if-eqz p11, :cond_1

    .line 14
    move-object p7, v0

    .line 9
    :cond_1
    and-int/lit8 p10, p10, 0x20

    if-eqz p10, :cond_2

    .line 15
    move-object p8, v0

    .line 9
    :cond_2
    invoke-interface/range {p0 .. p9}, Lorg/ies/tierno/applicationamani/data/repositorio/ChatRepository;->sendMessage-bMdYcbs(JJLjava/lang/String;Ljava/lang/String;Lorg/ies/tierno/applicationamani/domain/models/AttachmentType;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_3
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Super calls with default arguments not supported in this target, function: sendMessage-bMdYcbs"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public abstract getMessages-0E7RQCE(JJLkotlin/coroutines/Continuation;)Ljava/lang/Object;
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
.end method

.method public abstract markMessageAsRead-0E7RQCE(JJLkotlin/coroutines/Continuation;)Ljava/lang/Object;
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
.end method

.method public abstract markMessageDelivered-0E7RQCE(JJLkotlin/coroutines/Continuation;)Ljava/lang/Object;
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
.end method

.method public abstract markMessagesAsRead-0E7RQCE(JJLkotlin/coroutines/Continuation;)Ljava/lang/Object;
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
.end method

.method public abstract observeMessageDelivery(JJ)Lkotlinx/coroutines/flow/Flow;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJ)",
            "Lkotlinx/coroutines/flow/Flow<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end method

.method public abstract observeMessageRead(JJ)Lkotlinx/coroutines/flow/Flow;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJ)",
            "Lkotlinx/coroutines/flow/Flow<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end method

.method public abstract observeMessages(JJ)Lkotlinx/coroutines/flow/Flow;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJ)",
            "Lkotlinx/coroutines/flow/Flow<",
            "Ljava/util/List<",
            "Lorg/ies/tierno/applicationamani/domain/models/Message;",
            ">;>;"
        }
    .end annotation
.end method

.method public abstract observeTyping(JJ)Lkotlinx/coroutines/flow/Flow;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJ)",
            "Lkotlinx/coroutines/flow/Flow<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end method

.method public abstract observeUserOnline(J)Lkotlinx/coroutines/flow/Flow;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Lkotlinx/coroutines/flow/Flow<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end method

.method public abstract sendMessage-bMdYcbs(JJLjava/lang/String;Ljava/lang/String;Lorg/ies/tierno/applicationamani/domain/models/AttachmentType;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
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
.end method

.method public abstract startTyping-0E7RQCE(JJLkotlin/coroutines/Continuation;)Ljava/lang/Object;
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
.end method

.method public abstract stopTyping-0E7RQCE(JJLkotlin/coroutines/Continuation;)Ljava/lang/Object;
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
.end method

.method public abstract updateLastSeen-0E7RQCE(JJLkotlin/coroutines/Continuation;)Ljava/lang/Object;
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
.end method

.method public abstract updateUserOnline-0E7RQCE(JZLkotlin/coroutines/Continuation;)Ljava/lang/Object;
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
.end method
