.class final Lorg/ies/tierno/applicationamani/data/remoto/TokenRefreshInterceptor$intercept$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "TokenRefreshInterceptor.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/ies/tierno/applicationamani/data/remoto/TokenRefreshInterceptor;->intercept(Lokhttp3/Interceptor$Chain;)Lokhttp3/Response;
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
        "Lkotlin/Unit;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"
    }
    d2 = {
        "<anonymous>",
        "",
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
    c = "org.ies.tierno.applicationamani.data.remoto.TokenRefreshInterceptor$intercept$1"
    f = "TokenRefreshInterceptor.kt"
    i = {}
    l = {
        0x25
    }
    m = "invokeSuspend"
    n = {}
    s = {}
.end annotation


# instance fields
.field label:I

.field final synthetic this$0:Lorg/ies/tierno/applicationamani/data/remoto/TokenRefreshInterceptor;


# direct methods
.method constructor <init>(Lorg/ies/tierno/applicationamani/data/remoto/TokenRefreshInterceptor;Lkotlin/coroutines/Continuation;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/ies/tierno/applicationamani/data/remoto/TokenRefreshInterceptor;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lorg/ies/tierno/applicationamani/data/remoto/TokenRefreshInterceptor$intercept$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lorg/ies/tierno/applicationamani/data/remoto/TokenRefreshInterceptor$intercept$1;->this$0:Lorg/ies/tierno/applicationamani/data/remoto/TokenRefreshInterceptor;

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

    new-instance v0, Lorg/ies/tierno/applicationamani/data/remoto/TokenRefreshInterceptor$intercept$1;

    iget-object v1, p0, Lorg/ies/tierno/applicationamani/data/remoto/TokenRefreshInterceptor$intercept$1;->this$0:Lorg/ies/tierno/applicationamani/data/remoto/TokenRefreshInterceptor;

    invoke-direct {v0, v1, p2}, Lorg/ies/tierno/applicationamani/data/remoto/TokenRefreshInterceptor$intercept$1;-><init>(Lorg/ies/tierno/applicationamani/data/remoto/TokenRefreshInterceptor;Lkotlin/coroutines/Continuation;)V

    check-cast v0, Lkotlin/coroutines/Continuation;

    return-object v0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lorg/ies/tierno/applicationamani/data/remoto/TokenRefreshInterceptor$intercept$1;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lorg/ies/tierno/applicationamani/data/remoto/TokenRefreshInterceptor$intercept$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object v0

    check-cast v0, Lorg/ies/tierno/applicationamani/data/remoto/TokenRefreshInterceptor$intercept$1;

    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {v0, v1}, Lorg/ies/tierno/applicationamani/data/remoto/TokenRefreshInterceptor$intercept$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5
    .param p1, "$result"    # Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 35
    iget v1, p0, Lorg/ies/tierno/applicationamani/data/remoto/TokenRefreshInterceptor$intercept$1;->label:I

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

    goto :goto_0

    .line 38
    :catch_0
    move-exception v0

    goto :goto_1

    .line 35
    :pswitch_1
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 36
    nop

    .line 37
    :try_start_1
    iget-object v1, p0, Lorg/ies/tierno/applicationamani/data/remoto/TokenRefreshInterceptor$intercept$1;->this$0:Lorg/ies/tierno/applicationamani/data/remoto/TokenRefreshInterceptor;

    invoke-static {v1}, Lorg/ies/tierno/applicationamani/data/remoto/TokenRefreshInterceptor;->access$getAuthEventChannel$p(Lorg/ies/tierno/applicationamani/data/remoto/TokenRefreshInterceptor;)Lorg/ies/tierno/applicationamani/data/local/AuthEventChannel;

    move-result-object v1

    sget-object v2, Lorg/ies/tierno/applicationamani/data/local/AuthEvent$Unauthorized;->INSTANCE:Lorg/ies/tierno/applicationamani/data/local/AuthEvent$Unauthorized;

    check-cast v2, Lorg/ies/tierno/applicationamani/data/local/AuthEvent;

    move-object v3, p0

    check-cast v3, Lkotlin/coroutines/Continuation;

    const/4 v4, 0x1

    iput v4, p0, Lorg/ies/tierno/applicationamani/data/remoto/TokenRefreshInterceptor$intercept$1;->label:I

    invoke-virtual {v1, v2, v3}, Lorg/ies/tierno/applicationamani/data/local/AuthEventChannel;->sendEvent(Lorg/ies/tierno/applicationamani/data/local/AuthEvent;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    if-ne v1, v0, :cond_0

    .line 35
    return-object v0

    .line 37
    :cond_0
    :goto_0
    goto :goto_2

    .line 39
    .local v0, "e":Ljava/lang/Exception;
    :goto_1
    sget-object v1, Ltimber/log/Timber;->Forest:Ltimber/log/Timber$Forest;

    move-object v2, v0

    check-cast v2, Ljava/lang/Throwable;

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    const-string v4, "Failed to send unauthorized event"

    invoke-virtual {v1, v2, v4, v3}, Ltimber/log/Timber$Forest;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 41
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_2
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
