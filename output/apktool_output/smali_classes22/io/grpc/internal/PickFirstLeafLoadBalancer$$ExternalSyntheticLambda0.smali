.class public final synthetic Lio/grpc/internal/PickFirstLeafLoadBalancer$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lio/grpc/LoadBalancer$SubchannelStateListener;


# annotations
.annotation runtime Lcom/android/tools/r8/annotations/LambdaMethod;
    holder = "Lio/grpc/internal/PickFirstLeafLoadBalancer;"
    method = "lambda$createNewSubchannel$0"
    proto = "(Lio/grpc/LoadBalancer$Subchannel;Lio/grpc/ConnectivityStateInfo;)V"
.end annotation

.annotation build Lcom/android/tools/r8/annotations/SynthesizedClassV2;
    apiLevel = -0x2
    kind = 0x13
    versionHash = "9aaf5f34c4c84da429ef7f8f6217a1817876f2618cfcf539aba3d7d5a0c703e0"
.end annotation


# instance fields
.field public final synthetic f$0:Lio/grpc/internal/PickFirstLeafLoadBalancer;

.field public final synthetic f$1:Lio/grpc/LoadBalancer$Subchannel;


# direct methods
.method public synthetic constructor <init>(Lio/grpc/internal/PickFirstLeafLoadBalancer;Lio/grpc/LoadBalancer$Subchannel;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/grpc/internal/PickFirstLeafLoadBalancer$$ExternalSyntheticLambda0;->f$0:Lio/grpc/internal/PickFirstLeafLoadBalancer;

    iput-object p2, p0, Lio/grpc/internal/PickFirstLeafLoadBalancer$$ExternalSyntheticLambda0;->f$1:Lio/grpc/LoadBalancer$Subchannel;

    return-void
.end method


# virtual methods
.method public final onSubchannelState(Lio/grpc/ConnectivityStateInfo;)V
    .locals 2

    .line 0
    iget-object v0, p0, Lio/grpc/internal/PickFirstLeafLoadBalancer$$ExternalSyntheticLambda0;->f$0:Lio/grpc/internal/PickFirstLeafLoadBalancer;

    iget-object v1, p0, Lio/grpc/internal/PickFirstLeafLoadBalancer$$ExternalSyntheticLambda0;->f$1:Lio/grpc/LoadBalancer$Subchannel;

    invoke-virtual {v0, v1, p1}, Lio/grpc/internal/PickFirstLeafLoadBalancer;->lambda$createNewSubchannel$0$io-grpc-internal-PickFirstLeafLoadBalancer(Lio/grpc/LoadBalancer$Subchannel;Lio/grpc/ConnectivityStateInfo;)V

    return-void
.end method
