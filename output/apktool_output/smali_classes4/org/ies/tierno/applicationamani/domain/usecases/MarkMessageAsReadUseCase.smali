.class public final Lorg/ies/tierno/applicationamani/domain/usecases/MarkMessageAsReadUseCase;
.super Ljava/lang/Object;
.source "MarkMessageAsReadUseCase.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000$\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\t\n\u0002\u0008\u0004\u0008\u0007\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0004\u0008\u0004\u0010\u0005J&\u0010\u0006\u001a\u0008\u0012\u0004\u0012\u00020\u00080\u00072\u0006\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\nH\u0086B\u00a2\u0006\u0004\u0008\u000c\u0010\rR\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u000e"
    }
    d2 = {
        "Lorg/ies/tierno/applicationamani/domain/usecases/MarkMessageAsReadUseCase;",
        "",
        "chatRepository",
        "Lorg/ies/tierno/applicationamani/data/repositorio/ChatRepository;",
        "<init>",
        "(Lorg/ies/tierno/applicationamani/data/repositorio/ChatRepository;)V",
        "invoke",
        "Lkotlin/Result;",
        "",
        "messageId",
        "",
        "receiverId",
        "invoke-0E7RQCE",
        "(JJLkotlin/coroutines/Continuation;)Ljava/lang/Object;",
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

    sput v0, Lorg/ies/tierno/applicationamani/domain/usecases/MarkMessageAsReadUseCase;->$stable:I

    return-void
.end method

.method public constructor <init>(Lorg/ies/tierno/applicationamani/data/repositorio/ChatRepository;)V
    .locals 1
    .param p1, "chatRepository"    # Lorg/ies/tierno/applicationamani/data/repositorio/ChatRepository;

    const-string v0, "chatRepository"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/ies/tierno/applicationamani/domain/usecases/MarkMessageAsReadUseCase;->chatRepository:Lorg/ies/tierno/applicationamani/data/repositorio/ChatRepository;

    return-void
.end method


# virtual methods
.method public final invoke-0E7RQCE(JJLkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 8
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

    instance-of v0, p5, Lorg/ies/tierno/applicationamani/domain/usecases/MarkMessageAsReadUseCase$invoke$1;

    if-eqz v0, :cond_0

    move-object v0, p5

    check-cast v0, Lorg/ies/tierno/applicationamani/domain/usecases/MarkMessageAsReadUseCase$invoke$1;

    iget v1, v0, Lorg/ies/tierno/applicationamani/domain/usecases/MarkMessageAsReadUseCase$invoke$1;->label:I

    const/high16 v2, -0x80000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    iget v1, v0, Lorg/ies/tierno/applicationamani/domain/usecases/MarkMessageAsReadUseCase$invoke$1;->label:I

    sub-int/2addr v1, v2

    iput v1, v0, Lorg/ies/tierno/applicationamani/domain/usecases/MarkMessageAsReadUseCase$invoke$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lorg/ies/tierno/applicationamani/domain/usecases/MarkMessageAsReadUseCase$invoke$1;

    invoke-direct {v0, p0, p5}, Lorg/ies/tierno/applicationamani/domain/usecases/MarkMessageAsReadUseCase$invoke$1;-><init>(Lorg/ies/tierno/applicationamani/domain/usecases/MarkMessageAsReadUseCase;Lkotlin/coroutines/Continuation;)V

    :goto_0
    move-object v6, v0

    .local v6, "$continuation":Lkotlin/coroutines/Continuation;
    iget-object v0, v6, Lorg/ies/tierno/applicationamani/domain/usecases/MarkMessageAsReadUseCase$invoke$1;->result:Ljava/lang/Object;

    .local v0, "$result":Ljava/lang/Object;
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v7

    .line 6
    iget v1, v6, Lorg/ies/tierno/applicationamani/domain/usecases/MarkMessageAsReadUseCase$invoke$1;->label:I

    packed-switch v1, :pswitch_data_0

    move-wide v2, p1

    .end local v0    # "$result":Ljava/lang/Object;
    .end local v6    # "$continuation":Lkotlin/coroutines/Continuation;
    .end local p1    # "messageId":J
    .local v2, "messageId":J
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .end local v2    # "messageId":J
    .restart local v0    # "$result":Ljava/lang/Object;
    .restart local v6    # "$continuation":Lkotlin/coroutines/Continuation;
    .restart local p1    # "messageId":J
    :pswitch_0
    iget-wide p3, v6, Lorg/ies/tierno/applicationamani/domain/usecases/MarkMessageAsReadUseCase$invoke$1;->J$1:J

    iget-wide p1, v6, Lorg/ies/tierno/applicationamani/domain/usecases/MarkMessageAsReadUseCase$invoke$1;->J$0:J

    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v1, v0

    check-cast v1, Lkotlin/Result;

    invoke-virtual {v1}, Lkotlin/Result;->unbox-impl()Ljava/lang/Object;

    move-result-object v1

    goto :goto_1

    :pswitch_1
    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 7
    iget-object v1, p0, Lorg/ies/tierno/applicationamani/domain/usecases/MarkMessageAsReadUseCase;->chatRepository:Lorg/ies/tierno/applicationamani/data/repositorio/ChatRepository;

    iput-wide p1, v6, Lorg/ies/tierno/applicationamani/domain/usecases/MarkMessageAsReadUseCase$invoke$1;->J$0:J

    iput-wide p3, v6, Lorg/ies/tierno/applicationamani/domain/usecases/MarkMessageAsReadUseCase$invoke$1;->J$1:J

    const/4 v2, 0x1

    iput v2, v6, Lorg/ies/tierno/applicationamani/domain/usecases/MarkMessageAsReadUseCase$invoke$1;->label:I

    move-wide v2, p1

    move-wide v4, p3

    .end local p1    # "messageId":J
    .end local p3    # "receiverId":J
    .restart local v2    # "messageId":J
    .local v4, "receiverId":J
    invoke-interface/range {v1 .. v6}, Lorg/ies/tierno/applicationamani/data/repositorio/ChatRepository;->markMessageAsRead-0E7RQCE(JJLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v7, :cond_1

    .line 6
    return-object v7

    .line 7
    :cond_1
    move-wide p1, v2

    move-wide p3, v4

    .end local v2    # "messageId":J
    .end local v4    # "receiverId":J
    .restart local p1    # "messageId":J
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
