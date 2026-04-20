.class final Lio/grpc/internal/RetryingNameResolver;
.super Lio/grpc/internal/ForwardingNameResolver;
.source "RetryingNameResolver.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/grpc/internal/RetryingNameResolver$ResolutionResultListener;,
        Lio/grpc/internal/RetryingNameResolver$RetryingListener;,
        Lio/grpc/internal/RetryingNameResolver$DelayedNameResolverRefresh;
    }
.end annotation


# static fields
.field static final RESOLUTION_RESULT_LISTENER_KEY:Lio/grpc/Attributes$Key;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/grpc/Attributes$Key<",
            "Lio/grpc/internal/RetryingNameResolver$ResolutionResultListener;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final retriedNameResolver:Lio/grpc/NameResolver;

.field private final retryScheduler:Lio/grpc/internal/RetryScheduler;

.field private final syncContext:Lio/grpc/SynchronizationContext;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 37
    nop

    .line 38
    const-string v0, "io.grpc.internal.RetryingNameResolver.RESOLUTION_RESULT_LISTENER_KEY"

    invoke-static {v0}, Lio/grpc/Attributes$Key;->create(Ljava/lang/String;)Lio/grpc/Attributes$Key;

    move-result-object v0

    sput-object v0, Lio/grpc/internal/RetryingNameResolver;->RESOLUTION_RESULT_LISTENER_KEY:Lio/grpc/Attributes$Key;

    .line 37
    return-void
.end method

.method constructor <init>(Lio/grpc/NameResolver;Lio/grpc/internal/RetryScheduler;Lio/grpc/SynchronizationContext;)V
    .locals 0
    .param p1, "retriedNameResolver"    # Lio/grpc/NameResolver;
    .param p2, "retryScheduler"    # Lio/grpc/internal/RetryScheduler;
    .param p3, "syncContext"    # Lio/grpc/SynchronizationContext;

    .line 49
    invoke-direct {p0, p1}, Lio/grpc/internal/ForwardingNameResolver;-><init>(Lio/grpc/NameResolver;)V

    .line 50
    iput-object p1, p0, Lio/grpc/internal/RetryingNameResolver;->retriedNameResolver:Lio/grpc/NameResolver;

    .line 51
    iput-object p2, p0, Lio/grpc/internal/RetryingNameResolver;->retryScheduler:Lio/grpc/internal/RetryScheduler;

    .line 52
    iput-object p3, p0, Lio/grpc/internal/RetryingNameResolver;->syncContext:Lio/grpc/SynchronizationContext;

    .line 53
    return-void
.end method

.method static synthetic access$000(Lio/grpc/internal/RetryingNameResolver;)Lio/grpc/SynchronizationContext;
    .locals 1
    .param p0, "x0"    # Lio/grpc/internal/RetryingNameResolver;

    .line 31
    iget-object v0, p0, Lio/grpc/internal/RetryingNameResolver;->syncContext:Lio/grpc/SynchronizationContext;

    return-object v0
.end method

.method static synthetic access$100(Lio/grpc/internal/RetryingNameResolver;)Lio/grpc/internal/RetryScheduler;
    .locals 1
    .param p0, "x0"    # Lio/grpc/internal/RetryingNameResolver;

    .line 31
    iget-object v0, p0, Lio/grpc/internal/RetryingNameResolver;->retryScheduler:Lio/grpc/internal/RetryScheduler;

    return-object v0
.end method


# virtual methods
.method getRetriedNameResolver()Lio/grpc/NameResolver;
    .locals 1

    .line 71
    iget-object v0, p0, Lio/grpc/internal/RetryingNameResolver;->retriedNameResolver:Lio/grpc/NameResolver;

    return-object v0
.end method

.method public shutdown()V
    .locals 1

    .line 62
    invoke-super {p0}, Lio/grpc/internal/ForwardingNameResolver;->shutdown()V

    .line 63
    iget-object v0, p0, Lio/grpc/internal/RetryingNameResolver;->retryScheduler:Lio/grpc/internal/RetryScheduler;

    invoke-interface {v0}, Lio/grpc/internal/RetryScheduler;->reset()V

    .line 64
    return-void
.end method

.method public start(Lio/grpc/NameResolver$Listener2;)V
    .locals 1
    .param p1, "listener"    # Lio/grpc/NameResolver$Listener2;

    .line 57
    new-instance v0, Lio/grpc/internal/RetryingNameResolver$RetryingListener;

    invoke-direct {v0, p0, p1}, Lio/grpc/internal/RetryingNameResolver$RetryingListener;-><init>(Lio/grpc/internal/RetryingNameResolver;Lio/grpc/NameResolver$Listener2;)V

    invoke-super {p0, v0}, Lio/grpc/internal/ForwardingNameResolver;->start(Lio/grpc/NameResolver$Listener2;)V

    .line 58
    return-void
.end method
