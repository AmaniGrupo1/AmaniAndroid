.class Lio/grpc/internal/PickFirstLeafLoadBalancer$1StartNextConnection;
.super Ljava/lang/Object;
.source "PickFirstLeafLoadBalancer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/grpc/internal/PickFirstLeafLoadBalancer;->scheduleNextConnection()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "StartNextConnection"
.end annotation


# instance fields
.field final synthetic this$0:Lio/grpc/internal/PickFirstLeafLoadBalancer;


# direct methods
.method constructor <init>(Lio/grpc/internal/PickFirstLeafLoadBalancer;)V
    .locals 0
    .param p1, "this$0"    # Lio/grpc/internal/PickFirstLeafLoadBalancer;

    .line 397
    iput-object p1, p0, Lio/grpc/internal/PickFirstLeafLoadBalancer$1StartNextConnection;->this$0:Lio/grpc/internal/PickFirstLeafLoadBalancer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 400
    iget-object v0, p0, Lio/grpc/internal/PickFirstLeafLoadBalancer$1StartNextConnection;->this$0:Lio/grpc/internal/PickFirstLeafLoadBalancer;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lio/grpc/internal/PickFirstLeafLoadBalancer;->access$602(Lio/grpc/internal/PickFirstLeafLoadBalancer;Lio/grpc/SynchronizationContext$ScheduledHandle;)Lio/grpc/SynchronizationContext$ScheduledHandle;

    .line 401
    iget-object v0, p0, Lio/grpc/internal/PickFirstLeafLoadBalancer$1StartNextConnection;->this$0:Lio/grpc/internal/PickFirstLeafLoadBalancer;

    invoke-static {v0}, Lio/grpc/internal/PickFirstLeafLoadBalancer;->access$700(Lio/grpc/internal/PickFirstLeafLoadBalancer;)Lio/grpc/internal/PickFirstLeafLoadBalancer$Index;

    move-result-object v0

    invoke-virtual {v0}, Lio/grpc/internal/PickFirstLeafLoadBalancer$Index;->increment()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 402
    iget-object v0, p0, Lio/grpc/internal/PickFirstLeafLoadBalancer$1StartNextConnection;->this$0:Lio/grpc/internal/PickFirstLeafLoadBalancer;

    invoke-virtual {v0}, Lio/grpc/internal/PickFirstLeafLoadBalancer;->requestConnection()V

    .line 404
    :cond_0
    return-void
.end method
