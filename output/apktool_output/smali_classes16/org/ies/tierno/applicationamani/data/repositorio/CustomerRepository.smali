.class public final Lorg/ies/tierno/applicationamani/data/repositorio/CustomerRepository;
.super Ljava/lang/Object;
.source "CustomerRepository.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\u0008\u0002\n\u0002\u0010\t\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008\u0007\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0004\u0008\u0004\u0010\u0005JK\u0010\u0008\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u0002H\u000b0\n0\t\"\u0004\u0008\u0000\u0010\u000b2\u0008\u0008\u0002\u0010\u000c\u001a\u00020\r2\"\u0010\u000e\u001a\u001e\u0008\u0001\u0012\u0010\u0012\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u0002H\u000b0\n0\u0010\u0012\u0006\u0012\u0004\u0018\u00010\u00010\u000f\u00a2\u0006\u0002\u0010\u0011R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0006\u0010\u0007\u00a8\u0006\u0012"
    }
    d2 = {
        "Lorg/ies/tierno/applicationamani/data/repositorio/CustomerRepository;",
        "",
        "customerClient",
        "Lorg/ies/tierno/applicationamani/data/remoto/CustomerClient;",
        "<init>",
        "(Lorg/ies/tierno/applicationamani/data/remoto/CustomerClient;)V",
        "getCustomerClient",
        "()Lorg/ies/tierno/applicationamani/data/remoto/CustomerClient;",
        "observeQuery",
        "Lkotlinx/coroutines/flow/Flow;",
        "",
        "T",
        "retryTime",
        "",
        "query",
        "Lkotlin/Function1;",
        "Lkotlin/coroutines/Continuation;",
        "(JLkotlin/jvm/functions/Function1;)Lkotlinx/coroutines/flow/Flow;",
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
.field private final customerClient:Lorg/ies/tierno/applicationamani/data/remoto/CustomerClient;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x8

    sput v0, Lorg/ies/tierno/applicationamani/data/repositorio/CustomerRepository;->$stable:I

    return-void
.end method

.method public constructor <init>(Lorg/ies/tierno/applicationamani/data/remoto/CustomerClient;)V
    .locals 1
    .param p1, "customerClient"    # Lorg/ies/tierno/applicationamani/data/remoto/CustomerClient;

    const-string v0, "customerClient"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput-object p1, p0, Lorg/ies/tierno/applicationamani/data/repositorio/CustomerRepository;->customerClient:Lorg/ies/tierno/applicationamani/data/remoto/CustomerClient;

    .line 23
    return-void
.end method

.method public static synthetic observeQuery$default(Lorg/ies/tierno/applicationamani/data/repositorio/CustomerRepository;JLkotlin/jvm/functions/Function1;ILjava/lang/Object;)Lkotlinx/coroutines/flow/Flow;
    .locals 0

    .line 26
    and-int/lit8 p4, p4, 0x1

    if-eqz p4, :cond_0

    .line 27
    const-wide/16 p1, 0x1388

    .line 26
    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lorg/ies/tierno/applicationamani/data/repositorio/CustomerRepository;->observeQuery(JLkotlin/jvm/functions/Function1;)Lkotlinx/coroutines/flow/Flow;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final getCustomerClient()Lorg/ies/tierno/applicationamani/data/remoto/CustomerClient;
    .locals 1

    .line 24
    iget-object v0, p0, Lorg/ies/tierno/applicationamani/data/repositorio/CustomerRepository;->customerClient:Lorg/ies/tierno/applicationamani/data/remoto/CustomerClient;

    return-object v0
.end method

.method public final observeQuery(JLkotlin/jvm/functions/Function1;)Lkotlinx/coroutines/flow/Flow;
    .locals 2
    .param p1, "retryTime"    # J
    .param p3, "query"    # Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(J",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Ljava/util/List<",
            "+TT;>;>;+",
            "Ljava/lang/Object;",
            ">;)",
            "Lkotlinx/coroutines/flow/Flow<",
            "Ljava/util/List<",
            "TT;>;>;"
        }
    .end annotation

    const-string v0, "query"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 30
    new-instance v0, Lorg/ies/tierno/applicationamani/data/repositorio/CustomerRepository$observeQuery$1;

    const/4 v1, 0x0

    invoke-direct {v0, p3, p1, p2, v1}, Lorg/ies/tierno/applicationamani/data/repositorio/CustomerRepository$observeQuery$1;-><init>(Lkotlin/jvm/functions/Function1;JLkotlin/coroutines/Continuation;)V

    check-cast v0, Lkotlin/jvm/functions/Function2;

    invoke-static {v0}, Lkotlinx/coroutines/flow/FlowKt;->flow(Lkotlin/jvm/functions/Function2;)Lkotlinx/coroutines/flow/Flow;

    move-result-object v0

    .line 44
    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getIO()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object v1

    check-cast v1, Lkotlin/coroutines/CoroutineContext;

    invoke-static {v0, v1}, Lkotlinx/coroutines/flow/FlowKt;->flowOn(Lkotlinx/coroutines/flow/Flow;Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/flow/Flow;

    move-result-object v0

    return-object v0
.end method
