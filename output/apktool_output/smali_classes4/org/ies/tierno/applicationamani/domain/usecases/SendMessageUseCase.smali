.class public final Lorg/ies/tierno/applicationamani/domain/usecases/SendMessageUseCase;
.super Ljava/lang/Object;
.source "SendMessageUseCase.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00004\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\t\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0008\u0007\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0004\u0008\u0004\u0010\u0005JR\u0010\u0006\u001a\u0008\u0012\u0004\u0012\u00020\u00080\u00072\u0006\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\n2\u0006\u0010\u000c\u001a\u00020\r2\n\u0008\u0002\u0010\u000e\u001a\u0004\u0018\u00010\r2\n\u0008\u0002\u0010\u000f\u001a\u0004\u0018\u00010\u00102\n\u0008\u0002\u0010\u0011\u001a\u0004\u0018\u00010\rH\u0086B\u00a2\u0006\u0004\u0008\u0012\u0010\u0013R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0014"
    }
    d2 = {
        "Lorg/ies/tierno/applicationamani/domain/usecases/SendMessageUseCase;",
        "",
        "chatRepository",
        "Lorg/ies/tierno/applicationamani/data/repositorio/ChatRepository;",
        "<init>",
        "(Lorg/ies/tierno/applicationamani/data/repositorio/ChatRepository;)V",
        "invoke",
        "Lkotlin/Result;",
        "",
        "senderId",
        "",
        "receiverId",
        "content",
        "",
        "attachmentUrl",
        "attachmentType",
        "Lorg/ies/tierno/applicationamani/domain/models/AttachmentType;",
        "attachmentName",
        "invoke-bMdYcbs",
        "(JJLjava/lang/String;Ljava/lang/String;Lorg/ies/tierno/applicationamani/domain/models/AttachmentType;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
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
.field private final chatRepository:Lorg/ies/tierno/applicationamani/data/repositorio/ChatRepository;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x8

    sput v0, Lorg/ies/tierno/applicationamani/domain/usecases/SendMessageUseCase;->$stable:I

    return-void
.end method

.method public constructor <init>(Lorg/ies/tierno/applicationamani/data/repositorio/ChatRepository;)V
    .locals 1
    .param p1, "chatRepository"    # Lorg/ies/tierno/applicationamani/data/repositorio/ChatRepository;

    const-string v0, "chatRepository"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/ies/tierno/applicationamani/domain/usecases/SendMessageUseCase;->chatRepository:Lorg/ies/tierno/applicationamani/data/repositorio/ChatRepository;

    return-void
.end method

.method public static synthetic invoke-bMdYcbs$default(Lorg/ies/tierno/applicationamani/domain/usecases/SendMessageUseCase;JJLjava/lang/String;Ljava/lang/String;Lorg/ies/tierno/applicationamani/domain/models/AttachmentType;Ljava/lang/String;Lkotlin/coroutines/Continuation;ILjava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 7
    and-int/lit8 p11, p10, 0x8

    const/4 v0, 0x0

    if-eqz p11, :cond_0

    .line 11
    move-object p6, v0

    .line 7
    :cond_0
    and-int/lit8 p11, p10, 0x10

    if-eqz p11, :cond_1

    .line 12
    move-object p7, v0

    .line 7
    :cond_1
    and-int/lit8 p10, p10, 0x20

    if-eqz p10, :cond_2

    .line 13
    move-object p8, v0

    .line 7
    :cond_2
    invoke-virtual/range {p0 .. p9}, Lorg/ies/tierno/applicationamani/domain/usecases/SendMessageUseCase;->invoke-bMdYcbs(JJLjava/lang/String;Ljava/lang/String;Lorg/ies/tierno/applicationamani/domain/models/AttachmentType;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final invoke-bMdYcbs(JJLjava/lang/String;Ljava/lang/String;Lorg/ies/tierno/applicationamani/domain/models/AttachmentType;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
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

    instance-of v1, v0, Lorg/ies/tierno/applicationamani/domain/usecases/SendMessageUseCase$invoke$1;

    if-eqz v1, :cond_0

    move-object v1, v0

    check-cast v1, Lorg/ies/tierno/applicationamani/domain/usecases/SendMessageUseCase$invoke$1;

    iget v2, v1, Lorg/ies/tierno/applicationamani/domain/usecases/SendMessageUseCase$invoke$1;->label:I

    const/high16 v3, -0x80000000

    and-int/2addr v2, v3

    if-eqz v2, :cond_0

    iget v2, v1, Lorg/ies/tierno/applicationamani/domain/usecases/SendMessageUseCase$invoke$1;->label:I

    sub-int/2addr v2, v3

    iput v2, v1, Lorg/ies/tierno/applicationamani/domain/usecases/SendMessageUseCase$invoke$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v1, Lorg/ies/tierno/applicationamani/domain/usecases/SendMessageUseCase$invoke$1;

    invoke-direct {v1, p0, v0}, Lorg/ies/tierno/applicationamani/domain/usecases/SendMessageUseCase$invoke$1;-><init>(Lorg/ies/tierno/applicationamani/domain/usecases/SendMessageUseCase;Lkotlin/coroutines/Continuation;)V

    :goto_0
    move-object v11, v1

    .local v11, "$continuation":Lkotlin/coroutines/Continuation;
    iget-object v1, v11, Lorg/ies/tierno/applicationamani/domain/usecases/SendMessageUseCase$invoke$1;->result:Ljava/lang/Object;

    .local v1, "$result":Ljava/lang/Object;
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v12

    .line 7
    iget v2, v11, Lorg/ies/tierno/applicationamani/domain/usecases/SendMessageUseCase$invoke$1;->label:I

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
    iget-wide v2, v11, Lorg/ies/tierno/applicationamani/domain/usecases/SendMessageUseCase$invoke$1;->J$1:J

    .end local p3    # "receiverId":J
    .local v2, "receiverId":J
    iget-wide p1, v11, Lorg/ies/tierno/applicationamani/domain/usecases/SendMessageUseCase$invoke$1;->J$0:J

    iget-object v4, v11, Lorg/ies/tierno/applicationamani/domain/usecases/SendMessageUseCase$invoke$1;->L$3:Ljava/lang/Object;

    check-cast v4, Ljava/lang/String;

    .end local p8    # "attachmentName":Ljava/lang/String;
    .local v4, "attachmentName":Ljava/lang/String;
    iget-object v5, v11, Lorg/ies/tierno/applicationamani/domain/usecases/SendMessageUseCase$invoke$1;->L$2:Ljava/lang/Object;

    check-cast v5, Lorg/ies/tierno/applicationamani/domain/models/AttachmentType;

    .end local p7    # "attachmentType":Lorg/ies/tierno/applicationamani/domain/models/AttachmentType;
    .local v5, "attachmentType":Lorg/ies/tierno/applicationamani/domain/models/AttachmentType;
    iget-object v6, v11, Lorg/ies/tierno/applicationamani/domain/usecases/SendMessageUseCase$invoke$1;->L$1:Ljava/lang/Object;

    check-cast v6, Ljava/lang/String;

    .end local p6    # "attachmentUrl":Ljava/lang/String;
    .local v6, "attachmentUrl":Ljava/lang/String;
    iget-object v7, v11, Lorg/ies/tierno/applicationamani/domain/usecases/SendMessageUseCase$invoke$1;->L$0:Ljava/lang/Object;

    check-cast v7, Ljava/lang/String;

    .end local p5    # "content":Ljava/lang/String;
    .local v7, "content":Ljava/lang/String;
    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v8, v1

    check-cast v8, Lkotlin/Result;

    invoke-virtual {v8}, Lkotlin/Result;->unbox-impl()Ljava/lang/Object;

    move-result-object v8

    goto :goto_1

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

    .line 15
    iget-object v2, p0, Lorg/ies/tierno/applicationamani/domain/usecases/SendMessageUseCase;->chatRepository:Lorg/ies/tierno/applicationamani/data/repositorio/ChatRepository;

    .line 16
    nop

    .line 17
    nop

    .line 18
    nop

    .line 19
    nop

    .line 20
    nop

    .line 21
    nop

    .line 15
    invoke-static/range {p5 .. p5}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    iput-object v3, v11, Lorg/ies/tierno/applicationamani/domain/usecases/SendMessageUseCase$invoke$1;->L$0:Ljava/lang/Object;

    invoke-static/range {p6 .. p6}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    iput-object v3, v11, Lorg/ies/tierno/applicationamani/domain/usecases/SendMessageUseCase$invoke$1;->L$1:Ljava/lang/Object;

    invoke-static/range {p7 .. p7}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    iput-object v3, v11, Lorg/ies/tierno/applicationamani/domain/usecases/SendMessageUseCase$invoke$1;->L$2:Ljava/lang/Object;

    invoke-static/range {p8 .. p8}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    iput-object v3, v11, Lorg/ies/tierno/applicationamani/domain/usecases/SendMessageUseCase$invoke$1;->L$3:Ljava/lang/Object;

    iput-wide p1, v11, Lorg/ies/tierno/applicationamani/domain/usecases/SendMessageUseCase$invoke$1;->J$0:J

    move-wide/from16 v5, p3

    iput-wide v5, v11, Lorg/ies/tierno/applicationamani/domain/usecases/SendMessageUseCase$invoke$1;->J$1:J

    const/4 v3, 0x1

    iput v3, v11, Lorg/ies/tierno/applicationamani/domain/usecases/SendMessageUseCase$invoke$1;->label:I

    move-wide v3, p1

    move-object/from16 v7, p5

    move-object/from16 v8, p6

    move-object/from16 v9, p7

    move-object/from16 v10, p8

    invoke-interface/range {v2 .. v11}, Lorg/ies/tierno/applicationamani/data/repositorio/ChatRepository;->sendMessage-bMdYcbs(JJLjava/lang/String;Ljava/lang/String;Lorg/ies/tierno/applicationamani/domain/models/AttachmentType;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v12, :cond_1

    .line 7
    return-object v12

    .line 15
    :cond_1
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
    :goto_1
    return-object v8

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
