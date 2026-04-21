.class public final Lorg/ies/tierno/applicationamani/presentation/viewmodels/LoginViewModel$special$$inlined$combine$1$3;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "Zip.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function3;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/ies/tierno/applicationamani/presentation/viewmodels/LoginViewModel$special$$inlined$combine$1;->collect(Lkotlinx/coroutines/flow/FlowCollector;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
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
        "Ljava/lang/String;",
        "Lkotlin/coroutines/Continuation<",
        "-",
        "Lkotlin/Unit;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nZip.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Zip.kt\nkotlinx/coroutines/flow/FlowKt__ZipKt$combine$5$2\n+ 2 LoginViewModel.kt\norg/ies/tierno/applicationamani/presentation/viewmodels/LoginViewModel\n*L\n1#1,234:1\n325#2:235\n*E\n"
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
        "kotlinx/coroutines/flow/FlowKt__ZipKt$combine$5$2"
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
    c = "org.ies.tierno.applicationamani.presentation.viewmodels.LoginViewModel$special$$inlined$combine$1$3"
    f = "LoginViewModel.kt"
    i = {
        0x0,
        0x0
    }
    l = {
        0xea
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

    invoke-virtual {p0, p1, p2, p3}, Lorg/ies/tierno/applicationamani/presentation/viewmodels/LoginViewModel$special$$inlined$combine$1$3;->invoke(Lkotlinx/coroutines/flow/FlowCollector;[Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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
            "Ljava/lang/String;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    new-instance v0, Lorg/ies/tierno/applicationamani/presentation/viewmodels/LoginViewModel$special$$inlined$combine$1$3;

    invoke-direct {v0, p3}, Lorg/ies/tierno/applicationamani/presentation/viewmodels/LoginViewModel$special$$inlined$combine$1$3;-><init>(Lkotlin/coroutines/Continuation;)V

    iput-object p1, v0, Lorg/ies/tierno/applicationamani/presentation/viewmodels/LoginViewModel$special$$inlined$combine$1$3;->L$0:Ljava/lang/Object;

    iput-object p2, v0, Lorg/ies/tierno/applicationamani/presentation/viewmodels/LoginViewModel$special$$inlined$combine$1$3;->L$1:Ljava/lang/Object;

    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {v0, v1}, Lorg/ies/tierno/applicationamani/presentation/viewmodels/LoginViewModel$special$$inlined$combine$1$3;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8
    .param p1, "$result"    # Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 323
    iget v1, p0, Lorg/ies/tierno/applicationamani/presentation/viewmodels/LoginViewModel$special$$inlined$combine$1$3;->label:I

    packed-switch v1, :pswitch_data_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    iget-object v0, p0, Lorg/ies/tierno/applicationamani/presentation/viewmodels/LoginViewModel$special$$inlined$combine$1$3;->L$1:Ljava/lang/Object;

    check-cast v0, [Ljava/lang/Object;

    .local v0, "it":[Ljava/lang/Object;
    iget-object v1, p0, Lorg/ies/tierno/applicationamani/presentation/viewmodels/LoginViewModel$special$$inlined$combine$1$3;->L$0:Ljava/lang/Object;

    check-cast v1, Lkotlinx/coroutines/flow/FlowCollector;

    .local v1, "$this$combineInternal":Lkotlinx/coroutines/flow/FlowCollector;
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_0

    .end local v0    # "it":[Ljava/lang/Object;
    .end local v1    # "$this$combineInternal":Lkotlinx/coroutines/flow/FlowCollector;
    :pswitch_1
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object v1, p0, Lorg/ies/tierno/applicationamani/presentation/viewmodels/LoginViewModel$special$$inlined$combine$1$3;->L$0:Ljava/lang/Object;

    check-cast v1, Lkotlinx/coroutines/flow/FlowCollector;

    .restart local v1    # "$this$combineInternal":Lkotlinx/coroutines/flow/FlowCollector;
    iget-object v2, p0, Lorg/ies/tierno/applicationamani/presentation/viewmodels/LoginViewModel$special$$inlined$combine$1$3;->L$1:Ljava/lang/Object;

    check-cast v2, [Ljava/lang/Object;

    .line 234
    .local v2, "it":[Ljava/lang/Object;
    move-object v3, p0

    check-cast v3, Lkotlin/coroutines/Continuation;

    .local v3, "$completion\\1":Lkotlin/coroutines/Continuation;
    move-object v4, v2

    check-cast v4, [Ljava/lang/String;

    .local v4, "array\\1":[Ljava/lang/String;
    const/4 v5, 0x0

    .line 235
    .local v5, "$i$a$-combine-LoginViewModel$direccionValida$1\\1\\234\\0":I
    const/4 v6, 0x0

    aget-object v6, v4, v6

    check-cast v6, Ljava/lang/CharSequence;

    invoke-static {v6}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v6

    const/4 v7, 0x1

    xor-int/2addr v6, v7

    invoke-static {v6}, Lkotlin/coroutines/jvm/internal/Boxing;->boxBoolean(Z)Ljava/lang/Boolean;

    move-result-object v6

    .line 234
    .end local v3    # "$completion\\1":Lkotlin/coroutines/Continuation;
    .end local v4    # "array\\1":[Ljava/lang/String;
    .end local v5    # "$i$a$-combine-LoginViewModel$direccionValida$1\\1\\234\\0":I
    move-object v3, p0

    check-cast v3, Lkotlin/coroutines/Continuation;

    invoke-static {v1}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    iput-object v4, p0, Lorg/ies/tierno/applicationamani/presentation/viewmodels/LoginViewModel$special$$inlined$combine$1$3;->L$0:Ljava/lang/Object;

    invoke-static {v2}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    iput-object v4, p0, Lorg/ies/tierno/applicationamani/presentation/viewmodels/LoginViewModel$special$$inlined$combine$1$3;->L$1:Ljava/lang/Object;

    iput v7, p0, Lorg/ies/tierno/applicationamani/presentation/viewmodels/LoginViewModel$special$$inlined$combine$1$3;->label:I

    invoke-interface {v1, v6, v3}, Lkotlinx/coroutines/flow/FlowCollector;->emit(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v3

    if-ne v3, v0, :cond_0

    .line 323
    return-object v0

    .line 234
    :cond_0
    move-object v0, v2

    .end local v2    # "it":[Ljava/lang/Object;
    .restart local v0    # "it":[Ljava/lang/Object;
    :goto_0
    sget-object v2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v2

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
