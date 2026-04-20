.class final Lorg/ies/tierno/applicationamani/data/SituacionRepository$getSituacionById$2;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SituacionRepositoty.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/ies/tierno/applicationamani/data/SituacionRepository;->getSituacionById-gIAlu-s(JLkotlin/coroutines/Continuation;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/SuspendLambda;",
        "Lkotlin/jvm/functions/Function2<",
        "Lkotlinx/coroutines/CoroutineScope;",
        "Lkotlin/coroutines/Continuation<",
        "-",
        "Lkotlin/Result<",
        "+",
        "Lorg/ies/tierno/applicationamani/dto/situacionDTO/SituacionDTO;",
        ">;>;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u0008\u0012\u0004\u0012\u00020\u00020\u0001*\u00020\u0003H\n"
    }
    d2 = {
        "<anonymous>",
        "Lkotlin/Result;",
        "Lorg/ies/tierno/applicationamani/dto/situacionDTO/SituacionDTO;",
        "Lkotlinx/coroutines/CoroutineScope;"
    }
    k = 0x3
    mv = {
        0x2,
        0x2,
        0x0
    }
    xi = 0x30
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "org.ies.tierno.applicationamani.data.SituacionRepository$getSituacionById$2"
    f = "SituacionRepositoty.kt"
    i = {}
    l = {
        0x26
    }
    m = "invokeSuspend"
    n = {}
    s = {}
.end annotation


# instance fields
.field final synthetic $id:J

.field label:I

.field final synthetic this$0:Lorg/ies/tierno/applicationamani/data/SituacionRepository;


# direct methods
.method constructor <init>(Lorg/ies/tierno/applicationamani/data/SituacionRepository;JLkotlin/coroutines/Continuation;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/ies/tierno/applicationamani/data/SituacionRepository;",
            "J",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lorg/ies/tierno/applicationamani/data/SituacionRepository$getSituacionById$2;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lorg/ies/tierno/applicationamani/data/SituacionRepository$getSituacionById$2;->this$0:Lorg/ies/tierno/applicationamani/data/SituacionRepository;

    iput-wide p2, p0, Lorg/ies/tierno/applicationamani/data/SituacionRepository$getSituacionById$2;->$id:J

    const/4 v0, 0x2

    invoke-direct {p0, v0, p4}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lkotlin/coroutines/Continuation<",
            "*>;)",
            "Lkotlin/coroutines/Continuation<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    new-instance v0, Lorg/ies/tierno/applicationamani/data/SituacionRepository$getSituacionById$2;

    iget-object v1, p0, Lorg/ies/tierno/applicationamani/data/SituacionRepository$getSituacionById$2;->this$0:Lorg/ies/tierno/applicationamani/data/SituacionRepository;

    iget-wide v2, p0, Lorg/ies/tierno/applicationamani/data/SituacionRepository$getSituacionById$2;->$id:J

    invoke-direct {v0, v1, v2, v3, p2}, Lorg/ies/tierno/applicationamani/data/SituacionRepository$getSituacionById$2;-><init>(Lorg/ies/tierno/applicationamani/data/SituacionRepository;JLkotlin/coroutines/Continuation;)V

    check-cast v0, Lkotlin/coroutines/Continuation;

    return-object v0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lorg/ies/tierno/applicationamani/data/SituacionRepository$getSituacionById$2;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/CoroutineScope;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Result<",
            "Lorg/ies/tierno/applicationamani/dto/situacionDTO/SituacionDTO;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lorg/ies/tierno/applicationamani/data/SituacionRepository$getSituacionById$2;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object v0

    check-cast v0, Lorg/ies/tierno/applicationamani/data/SituacionRepository$getSituacionById$2;

    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {v0, v1}, Lorg/ies/tierno/applicationamani/data/SituacionRepository$getSituacionById$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 9
    .param p1, "$result"    # Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 36
    iget v1, p0, Lorg/ies/tierno/applicationamani/data/SituacionRepository$getSituacionById$2;->label:I

    packed-switch v1, :pswitch_data_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    :try_start_0
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v1, p1

    goto :goto_0

    .line 52
    :catch_0
    move-exception v0

    goto :goto_2

    .line 36
    :pswitch_1
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 37
    nop

    .line 38
    :try_start_1
    iget-object v1, p0, Lorg/ies/tierno/applicationamani/data/SituacionRepository$getSituacionById$2;->this$0:Lorg/ies/tierno/applicationamani/data/SituacionRepository;

    invoke-static {v1}, Lorg/ies/tierno/applicationamani/data/SituacionRepository;->access$getApi$p(Lorg/ies/tierno/applicationamani/data/SituacionRepository;)Lorg/ies/tierno/applicationamani/data/remoto/SituacionApi;

    move-result-object v1

    iget-wide v2, p0, Lorg/ies/tierno/applicationamani/data/SituacionRepository$getSituacionById$2;->$id:J

    move-object v4, p0

    check-cast v4, Lkotlin/coroutines/Continuation;

    const/4 v5, 0x1

    iput v5, p0, Lorg/ies/tierno/applicationamani/data/SituacionRepository$getSituacionById$2;->label:I

    invoke-interface {v1, v2, v3, v4}, Lorg/ies/tierno/applicationamani/data/remoto/SituacionApi;->getSituacionById(JLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v0, :cond_0

    .line 36
    return-object v0

    :cond_0
    :goto_0
    check-cast v1, Lretrofit2/Response;

    .line 39
    .local v1, "response":Lretrofit2/Response;
    invoke-virtual {v1}, Lretrofit2/Response;->isSuccessful()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {v1}, Lretrofit2/Response;->body()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 40
    invoke-virtual {v1}, Lretrofit2/Response;->body()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast v0, Lorg/ies/tierno/applicationamani/dto/situacionDTO/SituacionDTO;

    .line 41
    .local v0, "dto":Lorg/ies/tierno/applicationamani/dto/situacionDTO/SituacionDTO;
    sget-object v2, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    .line 42
    new-instance v3, Lorg/ies/tierno/applicationamani/dto/situacionDTO/SituacionDTO;

    .line 43
    invoke-virtual {v0}, Lorg/ies/tierno/applicationamani/dto/situacionDTO/SituacionDTO;->getIdSituacion()J

    move-result-wide v4

    .line 44
    invoke-virtual {v0}, Lorg/ies/tierno/applicationamani/dto/situacionDTO/SituacionDTO;->getNombre()Ljava/lang/String;

    move-result-object v6

    .line 45
    invoke-virtual {v0}, Lorg/ies/tierno/applicationamani/dto/situacionDTO/SituacionDTO;->getCategoria()Ljava/lang/String;

    move-result-object v7

    .line 46
    invoke-virtual {v0}, Lorg/ies/tierno/applicationamani/dto/situacionDTO/SituacionDTO;->getDescripcion()Ljava/lang/String;

    move-result-object v8

    .line 42
    invoke-direct/range {v3 .. v8}, Lorg/ies/tierno/applicationamani/dto/situacionDTO/SituacionDTO;-><init>(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 41
    invoke-static {v3}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .end local v0    # "dto":Lorg/ies/tierno/applicationamani/dto/situacionDTO/SituacionDTO;
    goto :goto_1

    .line 50
    :cond_1
    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    new-instance v0, Lretrofit2/HttpException;

    invoke-direct {v0, v1}, Lretrofit2/HttpException;-><init>(Lretrofit2/Response;)V

    check-cast v0, Ljava/lang/Throwable;

    invoke-static {v0}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .end local v1    # "response":Lretrofit2/Response;
    :goto_1
    goto :goto_3

    .line 53
    .local v0, "e":Ljava/lang/Exception;
    :goto_2
    sget-object v1, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    move-object v1, v0

    check-cast v1, Ljava/lang/Throwable;

    invoke-static {v1}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .end local v0    # "e":Ljava/lang/Exception;
    :goto_3
    invoke-static {v2}, Lkotlin/Result;->box-impl(Ljava/lang/Object;)Lkotlin/Result;

    move-result-object v0

    .line 54
    return-object v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
