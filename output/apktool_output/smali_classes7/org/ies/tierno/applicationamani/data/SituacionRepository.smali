.class public final Lorg/ies/tierno/applicationamani/data/SituacionRepository;
.super Ljava/lang/Object;
.source "SituacionRepositoty.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000.\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\u0008\u0003\u0008\u0007\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0004\u0008\u0004\u0010\u0005J\u0012\u0010\u0006\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\t0\u00080\u0007J\u001e\u0010\n\u001a\u0008\u0012\u0004\u0012\u00020\t0\u000b2\u0006\u0010\u000c\u001a\u00020\rH\u0086@\u00a2\u0006\u0004\u0008\u000e\u0010\u000fR\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0010"
    }
    d2 = {
        "Lorg/ies/tierno/applicationamani/data/SituacionRepository;",
        "",
        "api",
        "Lorg/ies/tierno/applicationamani/data/remoto/SituacionApi;",
        "<init>",
        "(Lorg/ies/tierno/applicationamani/data/remoto/SituacionApi;)V",
        "getSituaciones",
        "Lkotlinx/coroutines/flow/Flow;",
        "",
        "Lorg/ies/tierno/applicationamani/dto/situacionDTO/SituacionDTO;",
        "getSituacionById",
        "Lkotlin/Result;",
        "id",
        "",
        "getSituacionById-gIAlu-s",
        "(JLkotlin/coroutines/Continuation;)Ljava/lang/Object;",
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
.field private final api:Lorg/ies/tierno/applicationamani/data/remoto/SituacionApi;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x8

    sput v0, Lorg/ies/tierno/applicationamani/data/SituacionRepository;->$stable:I

    return-void
.end method

.method public constructor <init>(Lorg/ies/tierno/applicationamani/data/remoto/SituacionApi;)V
    .locals 1
    .param p1, "api"    # Lorg/ies/tierno/applicationamani/data/remoto/SituacionApi;

    const-string v0, "api"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/ies/tierno/applicationamani/data/SituacionRepository;->api:Lorg/ies/tierno/applicationamani/data/remoto/SituacionApi;

    return-void
.end method

.method public static final synthetic access$getApi$p(Lorg/ies/tierno/applicationamani/data/SituacionRepository;)Lorg/ies/tierno/applicationamani/data/remoto/SituacionApi;
    .locals 1
    .param p0, "$this"    # Lorg/ies/tierno/applicationamani/data/SituacionRepository;

    .line 12
    iget-object v0, p0, Lorg/ies/tierno/applicationamani/data/SituacionRepository;->api:Lorg/ies/tierno/applicationamani/data/remoto/SituacionApi;

    return-object v0
.end method


# virtual methods
.method public final getSituacionById-gIAlu-s(JLkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 6
    .param p1, "id"    # J
    .param p3, "$completion"    # Lkotlin/coroutines/Continuation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Result<",
            "Lorg/ies/tierno/applicationamani/dto/situacionDTO/SituacionDTO;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p3, Lorg/ies/tierno/applicationamani/data/SituacionRepository$getSituacionById$1;

    if-eqz v0, :cond_0

    move-object v0, p3

    check-cast v0, Lorg/ies/tierno/applicationamani/data/SituacionRepository$getSituacionById$1;

    iget v1, v0, Lorg/ies/tierno/applicationamani/data/SituacionRepository$getSituacionById$1;->label:I

    const/high16 v2, -0x80000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    iget v1, v0, Lorg/ies/tierno/applicationamani/data/SituacionRepository$getSituacionById$1;->label:I

    sub-int/2addr v1, v2

    iput v1, v0, Lorg/ies/tierno/applicationamani/data/SituacionRepository$getSituacionById$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lorg/ies/tierno/applicationamani/data/SituacionRepository$getSituacionById$1;

    invoke-direct {v0, p0, p3}, Lorg/ies/tierno/applicationamani/data/SituacionRepository$getSituacionById$1;-><init>(Lorg/ies/tierno/applicationamani/data/SituacionRepository;Lkotlin/coroutines/Continuation;)V

    .local v0, "$continuation":Lkotlin/coroutines/Continuation;
    :goto_0
    iget-object v1, v0, Lorg/ies/tierno/applicationamani/data/SituacionRepository$getSituacionById$1;->result:Ljava/lang/Object;

    .local v1, "$result":Ljava/lang/Object;
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v2

    .line 35
    iget v3, v0, Lorg/ies/tierno/applicationamani/data/SituacionRepository$getSituacionById$1;->label:I

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
    iget-wide p1, v0, Lorg/ies/tierno/applicationamani/data/SituacionRepository$getSituacionById$1;->J$0:J

    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v3, v1

    goto :goto_1

    :pswitch_1
    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 36
    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getIO()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object v3

    check-cast v3, Lkotlin/coroutines/CoroutineContext;

    new-instance v4, Lorg/ies/tierno/applicationamani/data/SituacionRepository$getSituacionById$2;

    const/4 v5, 0x0

    invoke-direct {v4, p0, p1, p2, v5}, Lorg/ies/tierno/applicationamani/data/SituacionRepository$getSituacionById$2;-><init>(Lorg/ies/tierno/applicationamani/data/SituacionRepository;JLkotlin/coroutines/Continuation;)V

    check-cast v4, Lkotlin/jvm/functions/Function2;

    iput-wide p1, v0, Lorg/ies/tierno/applicationamani/data/SituacionRepository$getSituacionById$1;->J$0:J

    const/4 v5, 0x1

    iput v5, v0, Lorg/ies/tierno/applicationamani/data/SituacionRepository$getSituacionById$1;->label:I

    invoke-static {v3, v4, v0}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v3

    if-ne v3, v2, :cond_1

    .line 35
    return-object v2

    .line 36
    :cond_1
    :goto_1
    check-cast v3, Lkotlin/Result;

    invoke-virtual {v3}, Lkotlin/Result;->unbox-impl()Ljava/lang/Object;

    move-result-object v2

    return-object v2

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final getSituaciones()Lkotlinx/coroutines/flow/Flow;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlinx/coroutines/flow/Flow<",
            "Ljava/util/List<",
            "Lorg/ies/tierno/applicationamani/dto/situacionDTO/SituacionDTO;",
            ">;>;"
        }
    .end annotation

    .line 14
    new-instance v0, Lorg/ies/tierno/applicationamani/data/SituacionRepository$getSituaciones$1;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lorg/ies/tierno/applicationamani/data/SituacionRepository$getSituaciones$1;-><init>(Lorg/ies/tierno/applicationamani/data/SituacionRepository;Lkotlin/coroutines/Continuation;)V

    check-cast v0, Lkotlin/jvm/functions/Function2;

    invoke-static {v0}, Lkotlinx/coroutines/flow/FlowKt;->flow(Lkotlin/jvm/functions/Function2;)Lkotlinx/coroutines/flow/Flow;

    move-result-object v0

    .line 33
    return-object v0
.end method
