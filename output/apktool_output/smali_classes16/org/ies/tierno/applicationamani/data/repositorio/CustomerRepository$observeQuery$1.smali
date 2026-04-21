.class final Lorg/ies/tierno/applicationamani/data/repositorio/CustomerRepository$observeQuery$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "CustomerRepository.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/ies/tierno/applicationamani/data/repositorio/CustomerRepository;->observeQuery(JLkotlin/jvm/functions/Function1;)Lkotlinx/coroutines/flow/Flow;
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
        "+TT;>;>;",
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
        "\u0000\u0010\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010 \u0010\u0000\u001a\u00020\u0001\"\u0004\u0008\u0000\u0010\u0002*\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u0002H\u00020\u00040\u0003H\n"
    }
    d2 = {
        "<anonymous>",
        "",
        "T",
        "Lkotlinx/coroutines/flow/FlowCollector;",
        ""
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
    c = "org.ies.tierno.applicationamani.data.repositorio.CustomerRepository$observeQuery$1"
    f = "CustomerRepository.kt"
    i = {
        0x0,
        0x0,
        0x1,
        0x1,
        0x1,
        0x2,
        0x2
    }
    l = {
        0x22,
        0x25,
        0x2a
    }
    m = "invokeSuspend"
    n = {
        "$this$flow",
        "lastResult",
        "$this$flow",
        "lastResult",
        "newResult",
        "$this$flow",
        "lastResult"
    }
    s = {
        "L$0",
        "L$1",
        "L$0",
        "L$1",
        "L$2",
        "L$0",
        "L$1"
    }
.end annotation


# instance fields
.field final synthetic $query:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Ljava/util/List<",
            "+TT;>;>;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $retryTime:J

.field private synthetic L$0:Ljava/lang/Object;

.field L$1:Ljava/lang/Object;

.field L$2:Ljava/lang/Object;

.field label:I


# direct methods
.method constructor <init>(Lkotlin/jvm/functions/Function1;JLkotlin/coroutines/Continuation;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Ljava/util/List<",
            "+TT;>;>;+",
            "Ljava/lang/Object;",
            ">;J",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lorg/ies/tierno/applicationamani/data/repositorio/CustomerRepository$observeQuery$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lorg/ies/tierno/applicationamani/data/repositorio/CustomerRepository$observeQuery$1;->$query:Lkotlin/jvm/functions/Function1;

    iput-wide p2, p0, Lorg/ies/tierno/applicationamani/data/repositorio/CustomerRepository$observeQuery$1;->$retryTime:J

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

    new-instance v0, Lorg/ies/tierno/applicationamani/data/repositorio/CustomerRepository$observeQuery$1;

    iget-object v1, p0, Lorg/ies/tierno/applicationamani/data/repositorio/CustomerRepository$observeQuery$1;->$query:Lkotlin/jvm/functions/Function1;

    iget-wide v2, p0, Lorg/ies/tierno/applicationamani/data/repositorio/CustomerRepository$observeQuery$1;->$retryTime:J

    invoke-direct {v0, v1, v2, v3, p2}, Lorg/ies/tierno/applicationamani/data/repositorio/CustomerRepository$observeQuery$1;-><init>(Lkotlin/jvm/functions/Function1;JLkotlin/coroutines/Continuation;)V

    iput-object p1, v0, Lorg/ies/tierno/applicationamani/data/repositorio/CustomerRepository$observeQuery$1;->L$0:Ljava/lang/Object;

    check-cast v0, Lkotlin/coroutines/Continuation;

    return-object v0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, Lkotlinx/coroutines/flow/FlowCollector;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lorg/ies/tierno/applicationamani/data/repositorio/CustomerRepository$observeQuery$1;->invoke(Lkotlinx/coroutines/flow/FlowCollector;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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
            "+TT;>;>;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lorg/ies/tierno/applicationamani/data/repositorio/CustomerRepository$observeQuery$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object v0

    check-cast v0, Lorg/ies/tierno/applicationamani/data/repositorio/CustomerRepository$observeQuery$1;

    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {v0, v1}, Lorg/ies/tierno/applicationamani/data/repositorio/CustomerRepository$observeQuery$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 10
    .param p1, "$result"    # Ljava/lang/Object;

    iget-object v0, p0, Lorg/ies/tierno/applicationamani/data/repositorio/CustomerRepository$observeQuery$1;->L$0:Ljava/lang/Object;

    check-cast v0, Lkotlinx/coroutines/flow/FlowCollector;

    .local v0, "$this$flow":Lkotlinx/coroutines/flow/FlowCollector;
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 30
    iget v2, p0, Lorg/ies/tierno/applicationamani/data/repositorio/CustomerRepository$observeQuery$1;->label:I

    packed-switch v2, :pswitch_data_0

    .end local p0    # "this":Lorg/ies/tierno/applicationamani/data/repositorio/CustomerRepository$observeQuery$1;
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .restart local p0    # "this":Lorg/ies/tierno/applicationamani/data/repositorio/CustomerRepository$observeQuery$1;
    :pswitch_0
    iget-object v2, p0, Lorg/ies/tierno/applicationamani/data/repositorio/CustomerRepository$observeQuery$1;->L$1:Ljava/lang/Object;

    check-cast v2, Ljava/util/List;

    .local v2, "lastResult":Ljava/util/List;
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v3, v2

    move-object v2, p0

    goto/16 :goto_5

    .end local v2    # "lastResult":Ljava/util/List;
    :pswitch_1
    iget-object v2, p0, Lorg/ies/tierno/applicationamani/data/repositorio/CustomerRepository$observeQuery$1;->L$2:Ljava/lang/Object;

    check-cast v2, Ljava/util/List;

    .local v2, "newResult":Ljava/util/List;
    iget-object v3, p0, Lorg/ies/tierno/applicationamani/data/repositorio/CustomerRepository$observeQuery$1;->L$1:Ljava/lang/Object;

    check-cast v3, Ljava/util/List;

    .local v3, "lastResult":Ljava/util/List;
    :try_start_0
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v4, v3

    move-object v3, p0

    goto/16 :goto_2

    .end local v2    # "newResult":Ljava/util/List;
    .end local v3    # "lastResult":Ljava/util/List;
    :pswitch_2
    iget-object v2, p0, Lorg/ies/tierno/applicationamani/data/repositorio/CustomerRepository$observeQuery$1;->L$1:Ljava/lang/Object;

    move-object v3, v2

    check-cast v3, Ljava/util/List;

    .restart local v3    # "lastResult":Ljava/util/List;
    :try_start_1
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-object v2, v1

    move-object v4, v3

    move-object v3, p0

    move-object v1, v0

    move-object v0, p1

    goto :goto_1

    .line 39
    :catch_0
    move-exception v2

    move-object v4, v3

    move-object v3, p0

    goto/16 :goto_3

    .line 30
    .end local v3    # "lastResult":Ljava/util/List;
    :pswitch_3
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 31
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v2

    move-object v3, v2

    move-object v2, p0

    .line 32
    .end local p0    # "this":Lorg/ies/tierno/applicationamani/data/repositorio/CustomerRepository$observeQuery$1;
    .local v2, "this":Lorg/ies/tierno/applicationamani/data/repositorio/CustomerRepository$observeQuery$1;
    .restart local v3    # "lastResult":Ljava/util/List;
    :goto_0
    nop

    .line 33
    nop

    .line 34
    :try_start_2
    iget-object v4, v2, Lorg/ies/tierno/applicationamani/data/repositorio/CustomerRepository$observeQuery$1;->$query:Lkotlin/jvm/functions/Function1;

    iput-object v0, v2, Lorg/ies/tierno/applicationamani/data/repositorio/CustomerRepository$observeQuery$1;->L$0:Ljava/lang/Object;

    iput-object v3, v2, Lorg/ies/tierno/applicationamani/data/repositorio/CustomerRepository$observeQuery$1;->L$1:Ljava/lang/Object;

    const/4 v5, 0x1

    iput v5, v2, Lorg/ies/tierno/applicationamani/data/repositorio/CustomerRepository$observeQuery$1;->label:I

    invoke-interface {v4, v2}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    if-ne v4, v1, :cond_0

    .line 30
    return-object v1

    .line 34
    :cond_0
    move-object v9, v0

    move-object v0, p1

    move-object p1, v4

    move-object v4, v3

    move-object v3, v2

    move-object v2, v1

    move-object v1, v9

    .line 30
    .end local v2    # "this":Lorg/ies/tierno/applicationamani/data/repositorio/CustomerRepository$observeQuery$1;
    .end local p1    # "$result":Ljava/lang/Object;
    .local v0, "$result":Ljava/lang/Object;
    .local v1, "$this$flow":Lkotlinx/coroutines/flow/FlowCollector;
    .local v3, "this":Lorg/ies/tierno/applicationamani/data/repositorio/CustomerRepository$observeQuery$1;
    .local v4, "lastResult":Ljava/util/List;
    :goto_1
    :try_start_3
    check-cast p1, Ljava/util/List;

    .line 35
    .local p1, "newResult":Ljava/util/List;
    invoke-static {p1, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 36
    move-object v4, p1

    .line 37
    move-object v5, v3

    check-cast v5, Lkotlin/coroutines/Continuation;

    iput-object v1, v3, Lorg/ies/tierno/applicationamani/data/repositorio/CustomerRepository$observeQuery$1;->L$0:Ljava/lang/Object;

    iput-object v4, v3, Lorg/ies/tierno/applicationamani/data/repositorio/CustomerRepository$observeQuery$1;->L$1:Ljava/lang/Object;

    invoke-static {p1}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    iput-object v6, v3, Lorg/ies/tierno/applicationamani/data/repositorio/CustomerRepository$observeQuery$1;->L$2:Ljava/lang/Object;

    const/4 v6, 0x2

    iput v6, v3, Lorg/ies/tierno/applicationamani/data/repositorio/CustomerRepository$observeQuery$1;->label:I

    invoke-interface {v1, p1, v5}, Lkotlinx/coroutines/flow/FlowCollector;->emit(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v5
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    if-ne v5, v2, :cond_1

    .line 30
    return-object v2

    .line 37
    :cond_1
    move-object v9, v2

    move-object v2, p1

    move-object p1, v0

    move-object v0, v1

    move-object v1, v9

    .end local v1    # "$this$flow":Lkotlinx/coroutines/flow/FlowCollector;
    .local v0, "$this$flow":Lkotlinx/coroutines/flow/FlowCollector;
    .local v2, "newResult":Ljava/util/List;
    .local p1, "$result":Ljava/lang/Object;
    :goto_2
    move-object v2, v1

    move-object v1, v0

    goto :goto_4

    .line 35
    .end local v2    # "newResult":Ljava/util/List;
    .local v0, "$result":Ljava/lang/Object;
    .restart local v1    # "$this$flow":Lkotlinx/coroutines/flow/FlowCollector;
    .local p1, "newResult":Ljava/util/List;
    :cond_2
    move-object p1, v0

    goto :goto_4

    .line 39
    .end local p1    # "newResult":Ljava/util/List;
    :catch_1
    move-exception p1

    move-object v9, v2

    move-object v2, p1

    move-object p1, v0

    move-object v0, v1

    move-object v1, v9

    goto :goto_3

    .end local v1    # "$this$flow":Lkotlinx/coroutines/flow/FlowCollector;
    .end local v4    # "lastResult":Ljava/util/List;
    .local v0, "$this$flow":Lkotlinx/coroutines/flow/FlowCollector;
    .local v2, "this":Lorg/ies/tierno/applicationamani/data/repositorio/CustomerRepository$observeQuery$1;
    .local v3, "lastResult":Ljava/util/List;
    .local p1, "$result":Ljava/lang/Object;
    :catch_2
    move-exception v4

    move-object v9, v3

    move-object v3, v2

    move-object v2, v4

    move-object v4, v9

    .line 40
    .local v2, "e":Ljava/lang/Exception;
    .local v3, "this":Lorg/ies/tierno/applicationamani/data/repositorio/CustomerRepository$observeQuery$1;
    .restart local v4    # "lastResult":Ljava/util/List;
    :goto_3
    sget-object v5, Ltimber/log/Timber;->Forest:Ltimber/log/Timber$Forest;

    move-object v6, v2

    check-cast v6, Ljava/lang/Throwable;

    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Object;

    const-string v8, "Error en observeQuery durante polling"

    invoke-virtual {v5, v6, v8, v7}, Ltimber/log/Timber$Forest;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    move-object v2, v1

    move-object v1, v0

    .line 42
    .end local v0    # "$this$flow":Lkotlinx/coroutines/flow/FlowCollector;
    .end local v2    # "e":Ljava/lang/Exception;
    .restart local v1    # "$this$flow":Lkotlinx/coroutines/flow/FlowCollector;
    :goto_4
    iget-wide v5, v3, Lorg/ies/tierno/applicationamani/data/repositorio/CustomerRepository$observeQuery$1;->$retryTime:J

    move-object v0, v3

    check-cast v0, Lkotlin/coroutines/Continuation;

    iput-object v1, v3, Lorg/ies/tierno/applicationamani/data/repositorio/CustomerRepository$observeQuery$1;->L$0:Ljava/lang/Object;

    iput-object v4, v3, Lorg/ies/tierno/applicationamani/data/repositorio/CustomerRepository$observeQuery$1;->L$1:Ljava/lang/Object;

    const/4 v7, 0x0

    iput-object v7, v3, Lorg/ies/tierno/applicationamani/data/repositorio/CustomerRepository$observeQuery$1;->L$2:Ljava/lang/Object;

    const/4 v7, 0x3

    iput v7, v3, Lorg/ies/tierno/applicationamani/data/repositorio/CustomerRepository$observeQuery$1;->label:I

    invoke-static {v5, v6, v0}, Lkotlinx/coroutines/DelayKt;->delay(JLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v2, :cond_3

    .line 30
    return-object v2

    .line 42
    :cond_3
    move-object v0, v1

    move-object v1, v2

    move-object v2, v3

    move-object v3, v4

    .end local v1    # "$this$flow":Lkotlinx/coroutines/flow/FlowCollector;
    .end local v4    # "lastResult":Ljava/util/List;
    .restart local v0    # "$this$flow":Lkotlinx/coroutines/flow/FlowCollector;
    .local v2, "this":Lorg/ies/tierno/applicationamani/data/repositorio/CustomerRepository$observeQuery$1;
    .local v3, "lastResult":Ljava/util/List;
    :goto_5
    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
