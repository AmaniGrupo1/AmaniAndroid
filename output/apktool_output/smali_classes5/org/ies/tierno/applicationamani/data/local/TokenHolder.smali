.class public final Lorg/ies/tierno/applicationamani/data/local/TokenHolder;
.super Ljava/lang/Object;
.source "TokenHolder.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000&\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\u0008\u0007\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0004\u0008\u0004\u0010\u0005J\u0008\u0010\n\u001a\u0004\u0018\u00010\u0007J\u0006\u0010\u000b\u001a\u00020\u000cR\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0006\u001a\u0004\u0018\u00010\u0007X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0008\u001a\u00020\tX\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\r"
    }
    d2 = {
        "Lorg/ies/tierno/applicationamani/data/local/TokenHolder;",
        "",
        "tokenDataStore",
        "Lorg/ies/tierno/applicationamani/data/local/TokenDataStore;",
        "<init>",
        "(Lorg/ies/tierno/applicationamani/data/local/TokenDataStore;)V",
        "_token",
        "",
        "scope",
        "Lkotlinx/coroutines/CoroutineScope;",
        "getToken",
        "clearToken",
        "",
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
.field private volatile _token:Ljava/lang/String;

.field private final scope:Lkotlinx/coroutines/CoroutineScope;

.field private final tokenDataStore:Lorg/ies/tierno/applicationamani/data/local/TokenDataStore;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x8

    sput v0, Lorg/ies/tierno/applicationamani/data/local/TokenHolder;->$stable:I

    return-void
.end method

.method public constructor <init>(Lorg/ies/tierno/applicationamani/data/local/TokenDataStore;)V
    .locals 9
    .param p1, "tokenDataStore"    # Lorg/ies/tierno/applicationamani/data/local/TokenDataStore;

    const-string v0, "tokenDataStore"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/ies/tierno/applicationamani/data/local/TokenHolder;->tokenDataStore:Lorg/ies/tierno/applicationamani/data/local/TokenDataStore;

    .line 21
    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getIO()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {v2, v1, v2}, Lkotlinx/coroutines/SupervisorKt;->SupervisorJob$default(Lkotlinx/coroutines/Job;ILjava/lang/Object;)Lkotlinx/coroutines/CompletableJob;

    move-result-object v1

    check-cast v1, Lkotlin/coroutines/CoroutineContext;

    invoke-virtual {v0, v1}, Lkotlinx/coroutines/CoroutineDispatcher;->plus(Lkotlin/coroutines/CoroutineContext;)Lkotlin/coroutines/CoroutineContext;

    move-result-object v0

    invoke-static {v0}, Lkotlinx/coroutines/CoroutineScopeKt;->CoroutineScope(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/CoroutineScope;

    move-result-object v0

    iput-object v0, p0, Lorg/ies/tierno/applicationamani/data/local/TokenHolder;->scope:Lkotlinx/coroutines/CoroutineScope;

    .line 23
    nop

    .line 25
    iget-object v3, p0, Lorg/ies/tierno/applicationamani/data/local/TokenHolder;->scope:Lkotlinx/coroutines/CoroutineScope;

    new-instance v0, Lorg/ies/tierno/applicationamani/data/local/TokenHolder$1;

    invoke-direct {v0, p0, v2}, Lorg/ies/tierno/applicationamani/data/local/TokenHolder$1;-><init>(Lorg/ies/tierno/applicationamani/data/local/TokenHolder;Lkotlin/coroutines/Continuation;)V

    move-object v6, v0

    check-cast v6, Lkotlin/jvm/functions/Function2;

    const/4 v7, 0x3

    const/4 v8, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static/range {v3 .. v8}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    .line 35
    nop

    .line 16
    return-void
.end method

.method public static final synthetic access$getTokenDataStore$p(Lorg/ies/tierno/applicationamani/data/local/TokenHolder;)Lorg/ies/tierno/applicationamani/data/local/TokenDataStore;
    .locals 1
    .param p0, "$this"    # Lorg/ies/tierno/applicationamani/data/local/TokenHolder;

    .line 16
    iget-object v0, p0, Lorg/ies/tierno/applicationamani/data/local/TokenHolder;->tokenDataStore:Lorg/ies/tierno/applicationamani/data/local/TokenDataStore;

    return-object v0
.end method

.method public static final synthetic access$set_token$p(Lorg/ies/tierno/applicationamani/data/local/TokenHolder;Ljava/lang/String;)V
    .locals 0
    .param p0, "$this"    # Lorg/ies/tierno/applicationamani/data/local/TokenHolder;
    .param p1, "<set-?>"    # Ljava/lang/String;

    .line 16
    iput-object p1, p0, Lorg/ies/tierno/applicationamani/data/local/TokenHolder;->_token:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final clearToken()V
    .locals 1

    .line 48
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/ies/tierno/applicationamani/data/local/TokenHolder;->_token:Ljava/lang/String;

    .line 49
    return-void
.end method

.method public final getToken()Ljava/lang/String;
    .locals 1

    .line 41
    iget-object v0, p0, Lorg/ies/tierno/applicationamani/data/local/TokenHolder;->_token:Ljava/lang/String;

    return-object v0
.end method
