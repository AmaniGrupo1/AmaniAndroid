.class final Lorg/ies/tierno/applicationamani/data/remoto/ChatFirebaseService$sendMessage$1;
.super Lkotlin/coroutines/jvm/internal/ContinuationImpl;
.source "ChatFirebaseService.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/ies/tierno/applicationamani/data/remoto/ChatFirebaseService;->sendMessage-bMdYcbs(JJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    k = 0x3
    mv = {
        0x2,
        0x2,
        0x0
    }
    xi = 0x30
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "org.ies.tierno.applicationamani.data.remoto.ChatFirebaseService"
    f = "ChatFirebaseService.kt"
    i = {
        0x0,
        0x0,
        0x0,
        0x0,
        0x0,
        0x0,
        0x0,
        0x0,
        0x0,
        0x0,
        0x0
    }
    l = {
        0x6f
    }
    m = "sendMessage-bMdYcbs"
    n = {
        "content",
        "attachmentUrl",
        "attachmentType",
        "attachmentName",
        "roomId",
        "messagesRef",
        "messageRef",
        "messageMap",
        "senderId",
        "receiverId",
        "messageId"
    }
    s = {
        "L$0",
        "L$1",
        "L$2",
        "L$3",
        "L$4",
        "L$5",
        "L$6",
        "L$7",
        "J$0",
        "J$1",
        "J$2"
    }
.end annotation


# instance fields
.field J$0:J

.field J$1:J

.field J$2:J

.field L$0:Ljava/lang/Object;

.field L$1:Ljava/lang/Object;

.field L$2:Ljava/lang/Object;

.field L$3:Ljava/lang/Object;

.field L$4:Ljava/lang/Object;

.field L$5:Ljava/lang/Object;

.field L$6:Ljava/lang/Object;

.field L$7:Ljava/lang/Object;

.field label:I

.field synthetic result:Ljava/lang/Object;

.field final synthetic this$0:Lorg/ies/tierno/applicationamani/data/remoto/ChatFirebaseService;


# direct methods
.method constructor <init>(Lorg/ies/tierno/applicationamani/data/remoto/ChatFirebaseService;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/ies/tierno/applicationamani/data/remoto/ChatFirebaseService;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lorg/ies/tierno/applicationamani/data/remoto/ChatFirebaseService$sendMessage$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lorg/ies/tierno/applicationamani/data/remoto/ChatFirebaseService$sendMessage$1;->this$0:Lorg/ies/tierno/applicationamani/data/remoto/ChatFirebaseService;

    invoke-direct {p0, p2}, Lkotlin/coroutines/jvm/internal/ContinuationImpl;-><init>(Lkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 11

    iput-object p1, p0, Lorg/ies/tierno/applicationamani/data/remoto/ChatFirebaseService$sendMessage$1;->result:Ljava/lang/Object;

    iget v0, p0, Lorg/ies/tierno/applicationamani/data/remoto/ChatFirebaseService$sendMessage$1;->label:I

    const/high16 v1, -0x80000000

    or-int/2addr v0, v1

    iput v0, p0, Lorg/ies/tierno/applicationamani/data/remoto/ChatFirebaseService$sendMessage$1;->label:I

    iget-object v1, p0, Lorg/ies/tierno/applicationamani/data/remoto/ChatFirebaseService$sendMessage$1;->this$0:Lorg/ies/tierno/applicationamani/data/remoto/ChatFirebaseService;

    const/4 v9, 0x0

    move-object v10, p0

    check-cast v10, Lkotlin/coroutines/Continuation;

    const-wide/16 v2, 0x0

    const-wide/16 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v1 .. v10}, Lorg/ies/tierno/applicationamani/data/remoto/ChatFirebaseService;->sendMessage-bMdYcbs(JJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    if-ne v0, v1, :cond_0

    return-object v0

    :cond_0
    invoke-static {v0}, Lkotlin/Result;->box-impl(Ljava/lang/Object;)Lkotlin/Result;

    move-result-object v0

    return-object v0
.end method
