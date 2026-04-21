.class public final Lorg/ies/tierno/applicationamani/presentation/viewmodels/LoginViewModel$special$$inlined$combine$2$3;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "Zip.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function3;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/ies/tierno/applicationamani/presentation/viewmodels/LoginViewModel$special$$inlined$combine$2;->collect(Lkotlinx/coroutines/flow/FlowCollector;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/SuspendLambda;",
        "Lkotlin/jvm/functions/Function3<",
        "Lkotlinx/coroutines/flow/FlowCollector<",
        "-",
        "Ljava/lang/Boolean;",
        ">;[",
        "Ljava/lang/Object;",
        "Lkotlin/coroutines/Continuation<",
        "-",
        "Lkotlin/Unit;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nZip.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Zip.kt\nkotlinx/coroutines/flow/FlowKt__ZipKt$combine$6$2\n+ 2 LoginViewModel.kt\norg/ies/tierno/applicationamani/presentation/viewmodels/LoginViewModel\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,288:1\n332#2,11:289\n343#2,2:303\n1786#3,3:300\n*S KotlinDebug\n*F\n+ 1 LoginViewModel.kt\norg/ies/tierno/applicationamani/presentation/viewmodels/LoginViewModel\n*L\n342#1:300,3\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0016\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0011\n\u0000\u0010\u0000\u001a\u00020\u0001\"\u0004\u0008\u0000\u0010\u0002\"\u0006\u0008\u0001\u0010\u0003\u0018\u0001*\u0008\u0012\u0004\u0012\u0002H\u00020\u00042\u000c\u0010\u0005\u001a\u0008\u0012\u0004\u0012\u0002H\u00030\u0006H\n\u00a8\u0006\u0007"
    }
    d2 = {
        "<anonymous>",
        "",
        "R",
        "T",
        "Lkotlinx/coroutines/flow/FlowCollector;",
        "it",
        "",
        "kotlinx/coroutines/flow/FlowKt__ZipKt$combine$6$2"
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
    c = "org.ies.tierno.applicationamani.presentation.viewmodels.LoginViewModel$special$$inlined$combine$2$3"
    f = "LoginViewModel.kt"
    i = {
        0x0,
        0x0
    }
    l = {
        0x120
    }
    m = "invokeSuspend"
    n = {
        "$this$combineInternal",
        "it"
    }
    s = {
        "L$0",
        "L$1"
    }
.end annotation


# instance fields
.field private synthetic L$0:Ljava/lang/Object;

.field synthetic L$1:Ljava/lang/Object;

.field label:I


# direct methods
.method public constructor <init>(Lkotlin/coroutines/Continuation;)V
    .locals 1

    const/4 v0, 0x3

    invoke-direct {p0, v0, p1}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, Lkotlinx/coroutines/flow/FlowCollector;

    check-cast p2, [Ljava/lang/Object;

    check-cast p3, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2, p3}, Lorg/ies/tierno/applicationamani/presentation/viewmodels/LoginViewModel$special$$inlined$combine$2$3;->invoke(Lkotlinx/coroutines/flow/FlowCollector;[Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final invoke(Lkotlinx/coroutines/flow/FlowCollector;[Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/flow/FlowCollector<",
            "-",
            "Ljava/lang/Boolean;",
            ">;[",
            "Ljava/lang/Object;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    new-instance v0, Lorg/ies/tierno/applicationamani/presentation/viewmodels/LoginViewModel$special$$inlined$combine$2$3;

    invoke-direct {v0, p3}, Lorg/ies/tierno/applicationamani/presentation/viewmodels/LoginViewModel$special$$inlined$combine$2$3;-><init>(Lkotlin/coroutines/Continuation;)V

    iput-object p1, v0, Lorg/ies/tierno/applicationamani/presentation/viewmodels/LoginViewModel$special$$inlined$combine$2$3;->L$0:Ljava/lang/Object;

    iput-object p2, v0, Lorg/ies/tierno/applicationamani/presentation/viewmodels/LoginViewModel$special$$inlined$combine$2$3;->L$1:Ljava/lang/Object;

    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {v0, v1}, Lorg/ies/tierno/applicationamani/presentation/viewmodels/LoginViewModel$special$$inlined$combine$2$3;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 24
    .param p1, "$result"    # Ljava/lang/Object;

    move-object/from16 v0, p0

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 328
    iget v2, v0, Lorg/ies/tierno/applicationamani/presentation/viewmodels/LoginViewModel$special$$inlined$combine$2$3;->label:I

    packed-switch v2, :pswitch_data_0

    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :pswitch_0
    iget-object v1, v0, Lorg/ies/tierno/applicationamani/presentation/viewmodels/LoginViewModel$special$$inlined$combine$2$3;->L$1:Ljava/lang/Object;

    check-cast v1, [Ljava/lang/Object;

    .local v1, "it":[Ljava/lang/Object;
    iget-object v2, v0, Lorg/ies/tierno/applicationamani/presentation/viewmodels/LoginViewModel$special$$inlined$combine$2$3;->L$0:Ljava/lang/Object;

    check-cast v2, Lkotlinx/coroutines/flow/FlowCollector;

    .local v2, "$this$combineInternal":Lkotlinx/coroutines/flow/FlowCollector;
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_2

    .end local v1    # "it":[Ljava/lang/Object;
    .end local v2    # "$this$combineInternal":Lkotlinx/coroutines/flow/FlowCollector;
    :pswitch_1
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object v2, v0, Lorg/ies/tierno/applicationamani/presentation/viewmodels/LoginViewModel$special$$inlined$combine$2$3;->L$0:Ljava/lang/Object;

    check-cast v2, Lkotlinx/coroutines/flow/FlowCollector;

    .restart local v2    # "$this$combineInternal":Lkotlinx/coroutines/flow/FlowCollector;
    iget-object v3, v0, Lorg/ies/tierno/applicationamani/presentation/viewmodels/LoginViewModel$special$$inlined$combine$2$3;->L$1:Ljava/lang/Object;

    check-cast v3, [Ljava/lang/Object;

    .line 288
    .local v3, "it":[Ljava/lang/Object;
    move-object v4, v0

    check-cast v4, Lkotlin/coroutines/Continuation;

    .local v4, "$completion\\1":Lkotlin/coroutines/Continuation;
    move-object v5, v3

    .local v5, "values\\1":[Ljava/lang/Object;
    const/4 v6, 0x0

    .line 289
    .local v6, "$i$a$-combine-LoginViewModel$formularioValido$1\\1\\288\\0":I
    const/4 v7, 0x0

    aget-object v8, v5, v7

    const-string v9, "null cannot be cast to non-null type kotlin.String"

    invoke-static {v8, v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v10, v8

    check-cast v10, Ljava/lang/String;

    .line 290
    .local v10, "n\\1":Ljava/lang/String;
    const/4 v8, 0x1

    aget-object v11, v5, v8

    invoke-static {v11, v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v11, Ljava/lang/String;

    .line 291
    .local v11, "a\\1":Ljava/lang/String;
    const/4 v12, 0x2

    aget-object v12, v5, v12

    invoke-static {v12, v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v12, Ljava/lang/String;

    .line 292
    .local v12, "d\\1":Ljava/lang/String;
    const/4 v13, 0x3

    aget-object v13, v5, v13

    invoke-static {v13, v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v13, Ljava/lang/String;

    .line 293
    .local v13, "e\\1":Ljava/lang/String;
    const/4 v14, 0x4

    aget-object v14, v5, v14

    invoke-static {v14, v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v14, Ljava/lang/String;

    .line 294
    .local v14, "p\\1":Ljava/lang/String;
    const/4 v15, 0x5

    aget-object v15, v5, v15

    invoke-static {v15, v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v15, Ljava/lang/String;

    .line 295
    .local v15, "t\\1":Ljava/lang/String;
    const/16 v16, 0x6

    aget-object v7, v5, v16

    invoke-static {v7, v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    move-object/from16 v16, v7

    check-cast v16, Ljava/lang/String;

    .line 296
    .local v16, "g\\1":Ljava/lang/String;
    const/4 v7, 0x7

    aget-object v7, v5, v7

    invoke-static {v7, v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    move-object/from16 v17, v7

    check-cast v17, Ljava/lang/String;

    .line 297
    .local v17, "f\\1":Ljava/lang/String;
    const/16 v7, 0x8

    aget-object v7, v5, v7

    const-string v9, "null cannot be cast to non-null type kotlin.Boolean"

    invoke-static {v7, v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v7, Ljava/lang/Boolean;

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    .line 299
    .local v7, "term\\1":Z
    filled-new-array/range {v10 .. v17}, [Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v9

    check-cast v9, Ljava/lang/Iterable;

    .local v9, "$this$all\\2":Ljava/lang/Iterable;
    const/16 v19, 0x0

    .line 300
    .local v19, "$i$f$all\\2\\299":I
    instance-of v8, v9, Ljava/util/Collection;

    if-eqz v8, :cond_0

    move-object v8, v9

    check-cast v8, Ljava/util/Collection;

    invoke-interface {v8}, Ljava/util/Collection;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_0

    const/4 v8, 0x1

    goto :goto_0

    .line 301
    :cond_0
    invoke-interface {v9}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v20

    if-eqz v20, :cond_2

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v20

    .local v20, "element\\2":Ljava/lang/Object;
    move-object/from16 v21, v20

    check-cast v21, Ljava/lang/String;

    .local v21, "it\\3":Ljava/lang/String;
    const/16 v22, 0x0

    .line 299
    .local v22, "$i$a$-all-LoginViewModel$formularioValido$1$camposCompletos$1\\3\\301\\1":I
    move-object/from16 v23, v21

    check-cast v23, Ljava/lang/CharSequence;

    invoke-static/range {v23 .. v23}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v23

    .line 301
    .end local v21    # "it\\3":Ljava/lang/String;
    .end local v22    # "$i$a$-all-LoginViewModel$formularioValido$1$camposCompletos$1\\3\\301\\1":I
    if-eqz v23, :cond_1

    const/4 v8, 0x0

    goto :goto_0

    .line 302
    .end local v20    # "element\\2":Ljava/lang/Object;
    :cond_2
    const/4 v8, 0x1

    .line 299
    .end local v9    # "$this$all\\2":Ljava/lang/Iterable;
    .end local v19    # "$i$f$all\\2\\299":I
    :goto_0
    nop

    .line 303
    .local v8, "camposCompletos\\1":Z
    move-object/from16 v9, v17

    check-cast v9, Ljava/lang/CharSequence;

    move-object/from16 v19, v3

    .end local v3    # "it":[Ljava/lang/Object;
    .local v19, "it":[Ljava/lang/Object;
    new-instance v3, Lkotlin/text/Regex;

    move-object/from16 v20, v4

    .end local v4    # "$completion\\1":Lkotlin/coroutines/Continuation;
    .local v20, "$completion\\1":Lkotlin/coroutines/Continuation;
    const-string v4, "\\d{4}-\\d{2}-\\d{2}"

    invoke-direct {v3, v4}, Lkotlin/text/Regex;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v9}, Lkotlin/text/Regex;->matches(Ljava/lang/CharSequence;)Z

    move-result v3

    .line 304
    .local v3, "fechaValida\\1":Z
    if-eqz v8, :cond_3

    if-eqz v3, :cond_3

    if-eqz v7, :cond_3

    const/16 v18, 0x1

    goto :goto_1

    :cond_3
    const/16 v18, 0x0

    :goto_1
    invoke-static/range {v18 .. v18}, Lkotlin/coroutines/jvm/internal/Boxing;->boxBoolean(Z)Ljava/lang/Boolean;

    move-result-object v3

    .line 288
    .end local v3    # "fechaValida\\1":Z
    .end local v5    # "values\\1":[Ljava/lang/Object;
    .end local v6    # "$i$a$-combine-LoginViewModel$formularioValido$1\\1\\288\\0":I
    .end local v7    # "term\\1":Z
    .end local v8    # "camposCompletos\\1":Z
    .end local v10    # "n\\1":Ljava/lang/String;
    .end local v11    # "a\\1":Ljava/lang/String;
    .end local v12    # "d\\1":Ljava/lang/String;
    .end local v13    # "e\\1":Ljava/lang/String;
    .end local v14    # "p\\1":Ljava/lang/String;
    .end local v15    # "t\\1":Ljava/lang/String;
    .end local v16    # "g\\1":Ljava/lang/String;
    .end local v17    # "f\\1":Ljava/lang/String;
    .end local v20    # "$completion\\1":Lkotlin/coroutines/Continuation;
    move-object v4, v0

    check-cast v4, Lkotlin/coroutines/Continuation;

    invoke-static {v2}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    iput-object v5, v0, Lorg/ies/tierno/applicationamani/presentation/viewmodels/LoginViewModel$special$$inlined$combine$2$3;->L$0:Ljava/lang/Object;

    invoke-static/range {v19 .. v19}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    iput-object v5, v0, Lorg/ies/tierno/applicationamani/presentation/viewmodels/LoginViewModel$special$$inlined$combine$2$3;->L$1:Ljava/lang/Object;

    const/4 v5, 0x1

    iput v5, v0, Lorg/ies/tierno/applicationamani/presentation/viewmodels/LoginViewModel$special$$inlined$combine$2$3;->label:I

    invoke-interface {v2, v3, v4}, Lkotlinx/coroutines/flow/FlowCollector;->emit(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v3

    if-ne v3, v1, :cond_4

    .line 328
    return-object v1

    .line 288
    :cond_4
    move-object/from16 v1, v19

    .end local v19    # "it":[Ljava/lang/Object;
    .restart local v1    # "it":[Ljava/lang/Object;
    :goto_2
    sget-object v3, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v3

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
