.class final Lorg/ies/tierno/applicationamani/data/repositorio/TestRepositoryApi$getPreguntasFlow$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "TestRepositoryApi.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/ies/tierno/applicationamani/data/repositorio/TestRepositoryApi;->getPreguntasFlow()Lkotlinx/coroutines/flow/Flow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/SuspendLambda;",
        "Lkotlin/jvm/functions/Function2<",
        "Lkotlinx/coroutines/flow/FlowCollector<",
        "-",
        "Ljava/util/List<",
        "+",
        "Lorg/ies/tierno/applicationamani/dto/opcionAdminDTO/OpcionAdminDTO;",
        ">;>;",
        "Lkotlin/coroutines/Continuation<",
        "-",
        "Lkotlin/Unit;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0012\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00040\u00030\u0002H\n"
    }
    d2 = {
        "<anonymous>",
        "",
        "Lkotlinx/coroutines/flow/FlowCollector;",
        "",
        "Lorg/ies/tierno/applicationamani/dto/opcionAdminDTO/OpcionAdminDTO;"
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
    c = "org.ies.tierno.applicationamani.data.repositorio.TestRepositoryApi$getPreguntasFlow$1"
    f = "TestRepositoryApi.kt"
    i = {
        0x0,
        0x1,
        0x1
    }
    l = {
        0x33,
        0x34
    }
    m = "invokeSuspend"
    n = {
        "$this$flow",
        "$this$flow",
        "preguntas"
    }
    s = {
        "L$0",
        "L$0",
        "L$1"
    }
.end annotation


# instance fields
.field private synthetic L$0:Ljava/lang/Object;

.field L$1:Ljava/lang/Object;

.field label:I

.field final synthetic this$0:Lorg/ies/tierno/applicationamani/data/repositorio/TestRepositoryApi;


# direct methods
.method constructor <init>(Lorg/ies/tierno/applicationamani/data/repositorio/TestRepositoryApi;Lkotlin/coroutines/Continuation;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/ies/tierno/applicationamani/data/repositorio/TestRepositoryApi;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lorg/ies/tierno/applicationamani/data/repositorio/TestRepositoryApi$getPreguntasFlow$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lorg/ies/tierno/applicationamani/data/repositorio/TestRepositoryApi$getPreguntasFlow$1;->this$0:Lorg/ies/tierno/applicationamani/data/repositorio/TestRepositoryApi;

    const/4 v0, 0x2

    invoke-direct {p0, v0, p2}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 2
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

    new-instance v0, Lorg/ies/tierno/applicationamani/data/repositorio/TestRepositoryApi$getPreguntasFlow$1;

    iget-object v1, p0, Lorg/ies/tierno/applicationamani/data/repositorio/TestRepositoryApi$getPreguntasFlow$1;->this$0:Lorg/ies/tierno/applicationamani/data/repositorio/TestRepositoryApi;

    invoke-direct {v0, v1, p2}, Lorg/ies/tierno/applicationamani/data/repositorio/TestRepositoryApi$getPreguntasFlow$1;-><init>(Lorg/ies/tierno/applicationamani/data/repositorio/TestRepositoryApi;Lkotlin/coroutines/Continuation;)V

    iput-object p1, v0, Lorg/ies/tierno/applicationamani/data/repositorio/TestRepositoryApi$getPreguntasFlow$1;->L$0:Ljava/lang/Object;

    check-cast v0, Lkotlin/coroutines/Continuation;

    return-object v0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, Lkotlinx/coroutines/flow/FlowCollector;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lorg/ies/tierno/applicationamani/data/repositorio/TestRepositoryApi$getPreguntasFlow$1;->invoke(Lkotlinx/coroutines/flow/FlowCollector;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final invoke(Lkotlinx/coroutines/flow/FlowCollector;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/flow/FlowCollector<",
            "-",
            "Ljava/util/List<",
            "Lorg/ies/tierno/applicationamani/dto/opcionAdminDTO/OpcionAdminDTO;",
            ">;>;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lorg/ies/tierno/applicationamani/data/repositorio/TestRepositoryApi$getPreguntasFlow$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object v0

    check-cast v0, Lorg/ies/tierno/applicationamani/data/repositorio/TestRepositoryApi$getPreguntasFlow$1;

    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {v0, v1}, Lorg/ies/tierno/applicationamani/data/repositorio/TestRepositoryApi$getPreguntasFlow$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5
    .param p1, "$result"    # Ljava/lang/Object;

    iget-object v0, p0, Lorg/ies/tierno/applicationamani/data/repositorio/TestRepositoryApi$getPreguntasFlow$1;->L$0:Ljava/lang/Object;

    check-cast v0, Lkotlinx/coroutines/flow/FlowCollector;

    .local v0, "$this$flow":Lkotlinx/coroutines/flow/FlowCollector;
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 50
    iget v2, p0, Lorg/ies/tierno/applicationamani/data/repositorio/TestRepositoryApi$getPreguntasFlow$1;->label:I

    packed-switch v2, :pswitch_data_0

    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :pswitch_0
    iget-object v1, p0, Lorg/ies/tierno/applicationamani/data/repositorio/TestRepositoryApi$getPreguntasFlow$1;->L$1:Ljava/lang/Object;

    check-cast v1, Ljava/util/List;

    .local v1, "preguntas":Ljava/util/List;
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_1

    .end local v1    # "preguntas":Ljava/util/List;
    :pswitch_1
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v2, p1

    goto :goto_0

    :pswitch_2
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 51
    iget-object v2, p0, Lorg/ies/tierno/applicationamani/data/repositorio/TestRepositoryApi$getPreguntasFlow$1;->this$0:Lorg/ies/tierno/applicationamani/data/repositorio/TestRepositoryApi;

    invoke-static {v2}, Lorg/ies/tierno/applicationamani/data/repositorio/TestRepositoryApi;->access$getTestApi$p(Lorg/ies/tierno/applicationamani/data/repositorio/TestRepositoryApi;)Lorg/ies/tierno/applicationamani/data/remoto/TestApi;

    move-result-object v2

    move-object v3, p0

    check-cast v3, Lkotlin/coroutines/Continuation;

    iput-object v0, p0, Lorg/ies/tierno/applicationamani/data/repositorio/TestRepositoryApi$getPreguntasFlow$1;->L$0:Ljava/lang/Object;

    const/4 v4, 0x1

    iput v4, p0, Lorg/ies/tierno/applicationamani/data/repositorio/TestRepositoryApi$getPreguntasFlow$1;->label:I

    invoke-interface {v2, v3}, Lorg/ies/tierno/applicationamani/data/remoto/TestApi;->getPreguntas(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v1, :cond_0

    .line 50
    return-object v1

    :cond_0
    :goto_0
    check-cast v2, Ljava/util/List;

    .line 52
    .local v2, "preguntas":Ljava/util/List;
    move-object v3, p0

    check-cast v3, Lkotlin/coroutines/Continuation;

    invoke-static {v0}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    iput-object v4, p0, Lorg/ies/tierno/applicationamani/data/repositorio/TestRepositoryApi$getPreguntasFlow$1;->L$0:Ljava/lang/Object;

    invoke-static {v2}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    iput-object v4, p0, Lorg/ies/tierno/applicationamani/data/repositorio/TestRepositoryApi$getPreguntasFlow$1;->L$1:Ljava/lang/Object;

    const/4 v4, 0x2

    iput v4, p0, Lorg/ies/tierno/applicationamani/data/repositorio/TestRepositoryApi$getPreguntasFlow$1;->label:I

    invoke-interface {v0, v2, v3}, Lkotlinx/coroutines/flow/FlowCollector;->emit(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v3

    if-ne v3, v1, :cond_1

    .line 50
    return-object v1

    .line 52
    :cond_1
    move-object v1, v2

    .line 53
    .end local v2    # "preguntas":Ljava/util/List;
    .restart local v1    # "preguntas":Ljava/util/List;
    :goto_1
    sget-object v2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v2

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
