.class public final Lorg/ies/tierno/applicationamani/data/remoto/TokenRefreshInterceptor;
.super Ljava/lang/Object;
.source "TokenRefreshInterceptor.kt"

# interfaces
.implements Lokhttp3/Interceptor;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0008\u0007\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0004\u0008\u0004\u0010\u0005J\u0010\u0010\u0008\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u000bH\u0016R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u000c"
    }
    d2 = {
        "Lorg/ies/tierno/applicationamani/data/remoto/TokenRefreshInterceptor;",
        "Lokhttp3/Interceptor;",
        "authEventChannel",
        "Lorg/ies/tierno/applicationamani/data/local/AuthEventChannel;",
        "<init>",
        "(Lorg/ies/tierno/applicationamani/data/local/AuthEventChannel;)V",
        "scope",
        "Lkotlinx/coroutines/CoroutineScope;",
        "intercept",
        "Lokhttp3/Response;",
        "chain",
        "Lokhttp3/Interceptor$Chain;",
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
.field private final authEventChannel:Lorg/ies/tierno/applicationamani/data/local/AuthEventChannel;

.field private final scope:Lkotlinx/coroutines/CoroutineScope;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x8

    sput v0, Lorg/ies/tierno/applicationamani/data/remoto/TokenRefreshInterceptor;->$stable:I

    return-void
.end method

.method public constructor <init>(Lorg/ies/tierno/applicationamani/data/local/AuthEventChannel;)V
    .locals 3
    .param p1, "authEventChannel"    # Lorg/ies/tierno/applicationamani/data/local/AuthEventChannel;

    const-string v0, "authEventChannel"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-object p1, p0, Lorg/ies/tierno/applicationamani/data/remoto/TokenRefreshInterceptor;->authEventChannel:Lorg/ies/tierno/applicationamani/data/local/AuthEventChannel;

    .line 24
    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getIO()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-static {v1, v2, v1}, Lkotlinx/coroutines/SupervisorKt;->SupervisorJob$default(Lkotlinx/coroutines/Job;ILjava/lang/Object;)Lkotlinx/coroutines/CompletableJob;

    move-result-object v1

    check-cast v1, Lkotlin/coroutines/CoroutineContext;

    invoke-virtual {v0, v1}, Lkotlinx/coroutines/CoroutineDispatcher;->plus(Lkotlin/coroutines/CoroutineContext;)Lkotlin/coroutines/CoroutineContext;

    move-result-object v0

    invoke-static {v0}, Lkotlinx/coroutines/CoroutineScopeKt;->CoroutineScope(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/CoroutineScope;

    move-result-object v0

    iput-object v0, p0, Lorg/ies/tierno/applicationamani/data/remoto/TokenRefreshInterceptor;->scope:Lkotlinx/coroutines/CoroutineScope;

    .line 20
    return-void
.end method

.method public static final synthetic access$getAuthEventChannel$p(Lorg/ies/tierno/applicationamani/data/remoto/TokenRefreshInterceptor;)Lorg/ies/tierno/applicationamani/data/local/AuthEventChannel;
    .locals 1
    .param p0, "$this"    # Lorg/ies/tierno/applicationamani/data/remoto/TokenRefreshInterceptor;

    .line 20
    iget-object v0, p0, Lorg/ies/tierno/applicationamani/data/remoto/TokenRefreshInterceptor;->authEventChannel:Lorg/ies/tierno/applicationamani/data/local/AuthEventChannel;

    return-object v0
.end method


# virtual methods
.method public intercept(Lokhttp3/Interceptor$Chain;)Lokhttp3/Response;
    .locals 11
    .param p1, "chain"    # Lokhttp3/Interceptor$Chain;

    const-string v0, "chain"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 27
    invoke-interface {p1}, Lokhttp3/Interceptor$Chain;->request()Lokhttp3/Request;

    move-result-object v0

    .line 28
    .local v0, "request":Lokhttp3/Request;
    invoke-interface {p1, v0}, Lokhttp3/Interceptor$Chain;->proceed(Lokhttp3/Request;)Lokhttp3/Response;

    move-result-object v1

    .line 31
    .local v1, "response":Lokhttp3/Response;
    invoke-virtual {v1}, Lokhttp3/Response;->code()I

    move-result v2

    const/16 v3, 0x191

    if-ne v2, v3, :cond_0

    .line 32
    sget-object v2, Ltimber/log/Timber;->Forest:Ltimber/log/Timber$Forest;

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    const-string v4, "HTTP 401 detected - token expired or invalid"

    invoke-virtual {v2, v4, v3}, Ltimber/log/Timber$Forest;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 35
    iget-object v5, p0, Lorg/ies/tierno/applicationamani/data/remoto/TokenRefreshInterceptor;->scope:Lkotlinx/coroutines/CoroutineScope;

    new-instance v2, Lorg/ies/tierno/applicationamani/data/remoto/TokenRefreshInterceptor$intercept$1;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lorg/ies/tierno/applicationamani/data/remoto/TokenRefreshInterceptor$intercept$1;-><init>(Lorg/ies/tierno/applicationamani/data/remoto/TokenRefreshInterceptor;Lkotlin/coroutines/Continuation;)V

    move-object v8, v2

    check-cast v8, Lkotlin/jvm/functions/Function2;

    const/4 v9, 0x3

    const/4 v10, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-static/range {v5 .. v10}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    .line 44
    :cond_0
    return-object v1
.end method
