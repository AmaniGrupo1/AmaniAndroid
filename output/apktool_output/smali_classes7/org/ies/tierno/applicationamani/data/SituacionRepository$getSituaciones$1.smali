.class final Lorg/ies/tierno/applicationamani/data/SituacionRepository$getSituaciones$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SituacionRepositoty.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/ies/tierno/applicationamani/data/SituacionRepository;->getSituaciones()Lkotlinx/coroutines/flow/Flow;
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
        "Lorg/ies/tierno/applicationamani/dto/situacionDTO/SituacionDTO;",
        ">;>;",
        "Lkotlin/coroutines/Continuation<",
        "-",
        "Lkotlin/Unit;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nSituacionRepositoty.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SituacionRepositoty.kt\norg/ies/tierno/applicationamani/data/SituacionRepository$getSituaciones$1\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,57:1\n1586#2:58\n1661#2,3:59\n*S KotlinDebug\n*F\n+ 1 SituacionRepositoty.kt\norg/ies/tierno/applicationamani/data/SituacionRepository$getSituaciones$1\n*L\n18#1:58\n18#1:59,3\n*E\n"
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
        "Lorg/ies/tierno/applicationamani/dto/situacionDTO/SituacionDTO;"
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
    c = "org.ies.tierno.applicationamani.data.SituacionRepository$getSituaciones$1"
    f = "SituacionRepositoty.kt"
    i = {
        0x0,
        0x1,
        0x1,
        0x1,
        0x2,
        0x2,
        0x3,
        0x3
    }
    l = {
        0x10,
        0x1a,
        0x1c,
        0x1f
    }
    m = "invokeSuspend"
    n = {
        "$this$flow",
        "$this$flow",
        "response",
        "situaciones",
        "$this$flow",
        "response",
        "$this$flow",
        "e"
    }
    s = {
        "L$0",
        "L$0",
        "L$1",
        "L$2",
        "L$0",
        "L$1",
        "L$0",
        "L$1"
    }
.end annotation


# instance fields
.field private synthetic L$0:Ljava/lang/Object;

.field L$1:Ljava/lang/Object;

.field L$2:Ljava/lang/Object;

.field label:I

.field final synthetic this$0:Lorg/ies/tierno/applicationamani/data/SituacionRepository;


# direct methods
.method constructor <init>(Lorg/ies/tierno/applicationamani/data/SituacionRepository;Lkotlin/coroutines/Continuation;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/ies/tierno/applicationamani/data/SituacionRepository;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lorg/ies/tierno/applicationamani/data/SituacionRepository$getSituaciones$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lorg/ies/tierno/applicationamani/data/SituacionRepository$getSituaciones$1;->this$0:Lorg/ies/tierno/applicationamani/data/SituacionRepository;

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

    new-instance v0, Lorg/ies/tierno/applicationamani/data/SituacionRepository$getSituaciones$1;

    iget-object v1, p0, Lorg/ies/tierno/applicationamani/data/SituacionRepository$getSituaciones$1;->this$0:Lorg/ies/tierno/applicationamani/data/SituacionRepository;

    invoke-direct {v0, v1, p2}, Lorg/ies/tierno/applicationamani/data/SituacionRepository$getSituaciones$1;-><init>(Lorg/ies/tierno/applicationamani/data/SituacionRepository;Lkotlin/coroutines/Continuation;)V

    iput-object p1, v0, Lorg/ies/tierno/applicationamani/data/SituacionRepository$getSituaciones$1;->L$0:Ljava/lang/Object;

    check-cast v0, Lkotlin/coroutines/Continuation;

    return-object v0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, Lkotlinx/coroutines/flow/FlowCollector;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lorg/ies/tierno/applicationamani/data/SituacionRepository$getSituaciones$1;->invoke(Lkotlinx/coroutines/flow/FlowCollector;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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
            "Lorg/ies/tierno/applicationamani/dto/situacionDTO/SituacionDTO;",
            ">;>;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lorg/ies/tierno/applicationamani/data/SituacionRepository$getSituaciones$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object v0

    check-cast v0, Lorg/ies/tierno/applicationamani/data/SituacionRepository$getSituaciones$1;

    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {v0, v1}, Lorg/ies/tierno/applicationamani/data/SituacionRepository$getSituaciones$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 19
    .param p1, "$result"    # Ljava/lang/Object;

    move-object/from16 v1, p0

    iget-object v0, v1, Lorg/ies/tierno/applicationamani/data/SituacionRepository$getSituaciones$1;->L$0:Ljava/lang/Object;

    move-object v2, v0

    check-cast v2, Lkotlinx/coroutines/flow/FlowCollector;

    .local v2, "$this$flow":Lkotlinx/coroutines/flow/FlowCollector;
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v3

    .line 14
    iget v0, v1, Lorg/ies/tierno/applicationamani/data/SituacionRepository$getSituaciones$1;->label:I

    packed-switch v0, :pswitch_data_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v3, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    iget-object v0, v1, Lorg/ies/tierno/applicationamani/data/SituacionRepository$getSituaciones$1;->L$1:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Exception;

    .local v0, "e":Ljava/lang/Exception;
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_5

    .end local v0    # "e":Ljava/lang/Exception;
    :pswitch_1
    iget-object v0, v1, Lorg/ies/tierno/applicationamani/data/SituacionRepository$getSituaciones$1;->L$1:Ljava/lang/Object;

    check-cast v0, Lretrofit2/Response;

    .local v0, "response":Lretrofit2/Response;
    :try_start_0
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_3

    .end local v0    # "response":Lretrofit2/Response;
    :pswitch_2
    iget-object v0, v1, Lorg/ies/tierno/applicationamani/data/SituacionRepository$getSituaciones$1;->L$2:Ljava/lang/Object;

    check-cast v0, Ljava/util/List;

    .local v0, "situaciones":Ljava/util/List;
    iget-object v4, v1, Lorg/ies/tierno/applicationamani/data/SituacionRepository$getSituaciones$1;->L$1:Ljava/lang/Object;

    check-cast v4, Lretrofit2/Response;

    .local v4, "response":Lretrofit2/Response;
    :try_start_1
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_2

    .end local v0    # "situaciones":Ljava/util/List;
    .end local v4    # "response":Lretrofit2/Response;
    :pswitch_3
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-object/from16 v0, p1

    goto :goto_0

    .line 30
    :catch_0
    move-exception v0

    goto/16 :goto_4

    .line 14
    :pswitch_4
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 15
    nop

    .line 16
    :try_start_2
    iget-object v0, v1, Lorg/ies/tierno/applicationamani/data/SituacionRepository$getSituaciones$1;->this$0:Lorg/ies/tierno/applicationamani/data/SituacionRepository;

    invoke-static {v0}, Lorg/ies/tierno/applicationamani/data/SituacionRepository;->access$getApi$p(Lorg/ies/tierno/applicationamani/data/SituacionRepository;)Lorg/ies/tierno/applicationamani/data/remoto/SituacionApi;

    move-result-object v0

    move-object v4, v1

    check-cast v4, Lkotlin/coroutines/Continuation;

    iput-object v2, v1, Lorg/ies/tierno/applicationamani/data/SituacionRepository$getSituaciones$1;->L$0:Ljava/lang/Object;

    const/4 v5, 0x1

    iput v5, v1, Lorg/ies/tierno/applicationamani/data/SituacionRepository$getSituaciones$1;->label:I

    invoke-interface {v0, v4}, Lorg/ies/tierno/applicationamani/data/remoto/SituacionApi;->getSituaciones(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v3, :cond_0

    .line 14
    return-object v3

    :cond_0
    :goto_0
    check-cast v0, Lretrofit2/Response;

    .line 17
    .local v0, "response":Lretrofit2/Response;
    invoke-virtual {v0}, Lretrofit2/Response;->isSuccessful()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-virtual {v0}, Lretrofit2/Response;->body()Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_3

    .line 18
    invoke-virtual {v0}, Lretrofit2/Response;->body()Ljava/lang/Object;

    move-result-object v4

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast v4, Ljava/lang/Iterable;

    .local v4, "$this$map\\1":Ljava/lang/Iterable;
    const/4 v5, 0x0

    .line 58
    .local v5, "$i$f$map\\1\\18":I
    new-instance v6, Ljava/util/ArrayList;

    const/16 v7, 0xa

    invoke-static {v4, v7}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v7

    invoke-direct {v6, v7}, Ljava/util/ArrayList;-><init>(I)V

    check-cast v6, Ljava/util/Collection;

    .local v6, "destination\\2":Ljava/util/Collection;
    move-object v7, v4

    .local v7, "$this$mapTo\\2":Ljava/lang/Iterable;
    const/4 v8, 0x0

    .line 59
    .local v8, "$i$f$mapTo\\2\\58":I
    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_1
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_1

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    .line 60
    .local v10, "item\\2":Ljava/lang/Object;
    move-object v11, v10

    check-cast v11, Lorg/ies/tierno/applicationamani/dto/situacionDTO/SituacionDTO;

    .local v11, "dto\\3":Lorg/ies/tierno/applicationamani/dto/situacionDTO/SituacionDTO;
    const/4 v12, 0x0

    .line 19
    .local v12, "$i$a$-map-SituacionRepository$getSituaciones$1$situaciones$1\\3\\60\\0":I
    new-instance v13, Lorg/ies/tierno/applicationamani/dto/situacionDTO/SituacionDTO;

    .line 20
    invoke-virtual {v11}, Lorg/ies/tierno/applicationamani/dto/situacionDTO/SituacionDTO;->getIdSituacion()J

    move-result-wide v14

    .line 21
    invoke-virtual {v11}, Lorg/ies/tierno/applicationamani/dto/situacionDTO/SituacionDTO;->getNombre()Ljava/lang/String;

    move-result-object v16

    .line 22
    invoke-virtual {v11}, Lorg/ies/tierno/applicationamani/dto/situacionDTO/SituacionDTO;->getCategoria()Ljava/lang/String;

    move-result-object v17

    .line 23
    invoke-virtual {v11}, Lorg/ies/tierno/applicationamani/dto/situacionDTO/SituacionDTO;->getDescripcion()Ljava/lang/String;

    move-result-object v18

    .line 19
    invoke-direct/range {v13 .. v18}, Lorg/ies/tierno/applicationamani/dto/situacionDTO/SituacionDTO;-><init>(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 24
    nop

    .line 60
    .end local v11    # "dto\\3":Lorg/ies/tierno/applicationamani/dto/situacionDTO/SituacionDTO;
    .end local v12    # "$i$a$-map-SituacionRepository$getSituaciones$1$situaciones$1\\3\\60\\0":I
    invoke-interface {v6, v13}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 61
    .end local v10    # "item\\2":Ljava/lang/Object;
    :cond_1
    nop

    .end local v6    # "destination\\2":Ljava/util/Collection;
    .end local v7    # "$this$mapTo\\2":Ljava/lang/Iterable;
    .end local v8    # "$i$f$mapTo\\2\\58":I
    check-cast v6, Ljava/util/List;

    .line 58
    nop

    .line 18
    .end local v4    # "$this$map\\1":Ljava/lang/Iterable;
    .end local v5    # "$i$f$map\\1\\18":I
    nop

    .line 26
    .local v6, "situaciones":Ljava/util/List;
    move-object v4, v1

    check-cast v4, Lkotlin/coroutines/Continuation;

    iput-object v2, v1, Lorg/ies/tierno/applicationamani/data/SituacionRepository$getSituaciones$1;->L$0:Ljava/lang/Object;

    invoke-static {v0}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    iput-object v5, v1, Lorg/ies/tierno/applicationamani/data/SituacionRepository$getSituaciones$1;->L$1:Ljava/lang/Object;

    invoke-static {v6}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    iput-object v5, v1, Lorg/ies/tierno/applicationamani/data/SituacionRepository$getSituaciones$1;->L$2:Ljava/lang/Object;

    const/4 v5, 0x2

    iput v5, v1, Lorg/ies/tierno/applicationamani/data/SituacionRepository$getSituaciones$1;->label:I

    invoke-interface {v2, v6, v4}, Lkotlinx/coroutines/flow/FlowCollector;->emit(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v4

    if-ne v4, v3, :cond_2

    .line 14
    return-object v3

    .line 26
    :cond_2
    move-object v4, v0

    move-object v0, v6

    .end local v6    # "situaciones":Ljava/util/List;
    .local v0, "situaciones":Ljava/util/List;
    .local v4, "response":Lretrofit2/Response;
    :goto_2
    goto :goto_6

    .line 28
    .end local v4    # "response":Lretrofit2/Response;
    .local v0, "response":Lretrofit2/Response;
    :cond_3
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v4

    move-object v5, v1

    check-cast v5, Lkotlin/coroutines/Continuation;

    iput-object v2, v1, Lorg/ies/tierno/applicationamani/data/SituacionRepository$getSituaciones$1;->L$0:Ljava/lang/Object;

    invoke-static {v0}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    iput-object v6, v1, Lorg/ies/tierno/applicationamani/data/SituacionRepository$getSituaciones$1;->L$1:Ljava/lang/Object;

    const/4 v6, 0x3

    iput v6, v1, Lorg/ies/tierno/applicationamani/data/SituacionRepository$getSituaciones$1;->label:I

    invoke-interface {v2, v4, v5}, Lkotlinx/coroutines/flow/FlowCollector;->emit(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v4
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    if-ne v4, v3, :cond_4

    .line 14
    return-object v3

    .line 28
    :cond_4
    :goto_3
    goto :goto_6

    .line 31
    .local v0, "e":Ljava/lang/Exception;
    :goto_4
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v4

    move-object v5, v1

    check-cast v5, Lkotlin/coroutines/Continuation;

    invoke-static {v2}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    iput-object v6, v1, Lorg/ies/tierno/applicationamani/data/SituacionRepository$getSituaciones$1;->L$0:Ljava/lang/Object;

    invoke-static {v0}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    iput-object v6, v1, Lorg/ies/tierno/applicationamani/data/SituacionRepository$getSituaciones$1;->L$1:Ljava/lang/Object;

    const/4 v6, 0x0

    iput-object v6, v1, Lorg/ies/tierno/applicationamani/data/SituacionRepository$getSituaciones$1;->L$2:Ljava/lang/Object;

    const/4 v6, 0x4

    iput v6, v1, Lorg/ies/tierno/applicationamani/data/SituacionRepository$getSituaciones$1;->label:I

    invoke-interface {v2, v4, v5}, Lkotlinx/coroutines/flow/FlowCollector;->emit(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v4

    if-ne v4, v3, :cond_5

    .line 14
    return-object v3

    .line 33
    :cond_5
    :goto_5
    nop

    .end local v0    # "e":Ljava/lang/Exception;
    :goto_6
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
