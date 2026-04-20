.class final Lio/grpc/internal/PickFirstLeafLoadBalancer$RequestConnectionPicker;
.super Lio/grpc/LoadBalancer$SubchannelPicker;
.source "PickFirstLeafLoadBalancer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/grpc/internal/PickFirstLeafLoadBalancer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "RequestConnectionPicker"
.end annotation


# instance fields
.field private final connectionRequested:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final pickFirstLeafLoadBalancer:Lio/grpc/internal/PickFirstLeafLoadBalancer;

.field final synthetic this$0:Lio/grpc/internal/PickFirstLeafLoadBalancer;


# direct methods
.method constructor <init>(Lio/grpc/internal/PickFirstLeafLoadBalancer;Lio/grpc/internal/PickFirstLeafLoadBalancer;)V
    .locals 1
    .param p2, "pickFirstLeafLoadBalancer"    # Lio/grpc/internal/PickFirstLeafLoadBalancer;

    .line 511
    iput-object p1, p0, Lio/grpc/internal/PickFirstLeafLoadBalancer$RequestConnectionPicker;->this$0:Lio/grpc/internal/PickFirstLeafLoadBalancer;

    invoke-direct {p0}, Lio/grpc/LoadBalancer$SubchannelPicker;-><init>()V

    .line 509
    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x0

    invoke-direct {p1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object p1, p0, Lio/grpc/internal/PickFirstLeafLoadBalancer$RequestConnectionPicker;->connectionRequested:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 512
    nop

    .line 513
    const-string p1, "pickFirstLeafLoadBalancer"

    invoke-static {p2, p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/grpc/internal/PickFirstLeafLoadBalancer;

    iput-object p1, p0, Lio/grpc/internal/PickFirstLeafLoadBalancer$RequestConnectionPicker;->pickFirstLeafLoadBalancer:Lio/grpc/internal/PickFirstLeafLoadBalancer;

    .line 514
    return-void
.end method


# virtual methods
.method public pickSubchannel(Lio/grpc/LoadBalancer$PickSubchannelArgs;)Lio/grpc/LoadBalancer$PickResult;
    .locals 3
    .param p1, "args"    # Lio/grpc/LoadBalancer$PickSubchannelArgs;

    .line 518
    iget-object v0, p0, Lio/grpc/internal/PickFirstLeafLoadBalancer$RequestConnectionPicker;->connectionRequested:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 519
    iget-object v0, p0, Lio/grpc/internal/PickFirstLeafLoadBalancer$RequestConnectionPicker;->this$0:Lio/grpc/internal/PickFirstLeafLoadBalancer;

    invoke-static {v0}, Lio/grpc/internal/PickFirstLeafLoadBalancer;->access$1300(Lio/grpc/internal/PickFirstLeafLoadBalancer;)Lio/grpc/LoadBalancer$Helper;

    move-result-object v0

    invoke-virtual {v0}, Lio/grpc/LoadBalancer$Helper;->getSynchronizationContext()Lio/grpc/SynchronizationContext;

    move-result-object v0

    iget-object v1, p0, Lio/grpc/internal/PickFirstLeafLoadBalancer$RequestConnectionPicker;->pickFirstLeafLoadBalancer:Lio/grpc/internal/PickFirstLeafLoadBalancer;

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Lio/grpc/internal/PickFirstLeafLoadBalancer$RequestConnectionPicker$$ExternalSyntheticLambda0;

    invoke-direct {v2, v1}, Lio/grpc/internal/PickFirstLeafLoadBalancer$RequestConnectionPicker$$ExternalSyntheticLambda0;-><init>(Lio/grpc/internal/PickFirstLeafLoadBalancer;)V

    invoke-virtual {v0, v2}, Lio/grpc/SynchronizationContext;->execute(Ljava/lang/Runnable;)V

    .line 521
    :cond_0
    invoke-static {}, Lio/grpc/LoadBalancer$PickResult;->withNoResult()Lio/grpc/LoadBalancer$PickResult;

    move-result-object v0

    return-object v0
.end method
