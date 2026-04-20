.class Lio/grpc/internal/RetryingNameResolver$ResolutionResultListener;
.super Ljava/lang/Object;
.source "RetryingNameResolver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/grpc/internal/RetryingNameResolver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ResolutionResultListener"
.end annotation


# instance fields
.field final synthetic this$0:Lio/grpc/internal/RetryingNameResolver;


# direct methods
.method constructor <init>(Lio/grpc/internal/RetryingNameResolver;)V
    .locals 0
    .param p1, "this$0"    # Lio/grpc/internal/RetryingNameResolver;

    .line 116
    iput-object p1, p0, Lio/grpc/internal/RetryingNameResolver$ResolutionResultListener;->this$0:Lio/grpc/internal/RetryingNameResolver;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public resolutionAttempted(Lio/grpc/Status;)V
    .locals 3
    .param p1, "successStatus"    # Lio/grpc/Status;

    .line 118
    invoke-virtual {p1}, Lio/grpc/Status;->isOk()Z

    move-result v0

    .line 121
    iget-object v1, p0, Lio/grpc/internal/RetryingNameResolver$ResolutionResultListener;->this$0:Lio/grpc/internal/RetryingNameResolver;

    .line 118
    if-eqz v0, :cond_0

    .line 119
    invoke-static {v1}, Lio/grpc/internal/RetryingNameResolver;->access$100(Lio/grpc/internal/RetryingNameResolver;)Lio/grpc/internal/RetryScheduler;

    move-result-object v0

    invoke-interface {v0}, Lio/grpc/internal/RetryScheduler;->reset()V

    goto :goto_0

    .line 121
    :cond_0
    invoke-static {v1}, Lio/grpc/internal/RetryingNameResolver;->access$100(Lio/grpc/internal/RetryingNameResolver;)Lio/grpc/internal/RetryScheduler;

    move-result-object v0

    new-instance v1, Lio/grpc/internal/RetryingNameResolver$DelayedNameResolverRefresh;

    iget-object v2, p0, Lio/grpc/internal/RetryingNameResolver$ResolutionResultListener;->this$0:Lio/grpc/internal/RetryingNameResolver;

    invoke-direct {v1, v2}, Lio/grpc/internal/RetryingNameResolver$DelayedNameResolverRefresh;-><init>(Lio/grpc/internal/RetryingNameResolver;)V

    invoke-interface {v0, v1}, Lio/grpc/internal/RetryScheduler;->schedule(Ljava/lang/Runnable;)V

    .line 123
    :goto_0
    return-void
.end method
