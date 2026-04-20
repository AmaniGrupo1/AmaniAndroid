.class final Lio/grpc/internal/PickFirstLeafLoadBalancer$SubchannelData;
.super Ljava/lang/Object;
.source "PickFirstLeafLoadBalancer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/grpc/internal/PickFirstLeafLoadBalancer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "SubchannelData"
.end annotation


# instance fields
.field private completedConnectivityAttempt:Z

.field private final healthListener:Lio/grpc/internal/PickFirstLeafLoadBalancer$HealthListener;

.field private state:Lio/grpc/ConnectivityState;

.field private final subchannel:Lio/grpc/LoadBalancer$Subchannel;


# direct methods
.method public constructor <init>(Lio/grpc/LoadBalancer$Subchannel;Lio/grpc/ConnectivityState;Lio/grpc/internal/PickFirstLeafLoadBalancer$HealthListener;)V
    .locals 1
    .param p1, "subchannel"    # Lio/grpc/LoadBalancer$Subchannel;
    .param p2, "state"    # Lio/grpc/ConnectivityState;
    .param p3, "subchannelHealthListener"    # Lio/grpc/internal/PickFirstLeafLoadBalancer$HealthListener;

    .line 624
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 621
    const/4 v0, 0x0

    iput-boolean v0, p0, Lio/grpc/internal/PickFirstLeafLoadBalancer$SubchannelData;->completedConnectivityAttempt:Z

    .line 625
    iput-object p1, p0, Lio/grpc/internal/PickFirstLeafLoadBalancer$SubchannelData;->subchannel:Lio/grpc/LoadBalancer$Subchannel;

    .line 626
    iput-object p2, p0, Lio/grpc/internal/PickFirstLeafLoadBalancer$SubchannelData;->state:Lio/grpc/ConnectivityState;

    .line 627
    iput-object p3, p0, Lio/grpc/internal/PickFirstLeafLoadBalancer$SubchannelData;->healthListener:Lio/grpc/internal/PickFirstLeafLoadBalancer$HealthListener;

    .line 628
    return-void
.end method

.method static synthetic access$000(Lio/grpc/internal/PickFirstLeafLoadBalancer$SubchannelData;Lio/grpc/ConnectivityState;)V
    .locals 0
    .param p0, "x0"    # Lio/grpc/internal/PickFirstLeafLoadBalancer$SubchannelData;
    .param p1, "x1"    # Lio/grpc/ConnectivityState;

    .line 617
    invoke-direct {p0, p1}, Lio/grpc/internal/PickFirstLeafLoadBalancer$SubchannelData;->updateState(Lio/grpc/ConnectivityState;)V

    return-void
.end method

.method static synthetic access$100(Lio/grpc/internal/PickFirstLeafLoadBalancer$SubchannelData;)Lio/grpc/ConnectivityState;
    .locals 1
    .param p0, "x0"    # Lio/grpc/internal/PickFirstLeafLoadBalancer$SubchannelData;

    .line 617
    iget-object v0, p0, Lio/grpc/internal/PickFirstLeafLoadBalancer$SubchannelData;->state:Lio/grpc/ConnectivityState;

    return-object v0
.end method

.method static synthetic access$200(Lio/grpc/internal/PickFirstLeafLoadBalancer$SubchannelData;)Lio/grpc/ConnectivityState;
    .locals 1
    .param p0, "x0"    # Lio/grpc/internal/PickFirstLeafLoadBalancer$SubchannelData;

    .line 617
    invoke-direct {p0}, Lio/grpc/internal/PickFirstLeafLoadBalancer$SubchannelData;->getHealthState()Lio/grpc/ConnectivityState;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300(Lio/grpc/internal/PickFirstLeafLoadBalancer$SubchannelData;)Lio/grpc/LoadBalancer$Subchannel;
    .locals 1
    .param p0, "x0"    # Lio/grpc/internal/PickFirstLeafLoadBalancer$SubchannelData;

    .line 617
    iget-object v0, p0, Lio/grpc/internal/PickFirstLeafLoadBalancer$SubchannelData;->subchannel:Lio/grpc/LoadBalancer$Subchannel;

    return-object v0
.end method

.method static synthetic access$400(Lio/grpc/internal/PickFirstLeafLoadBalancer$SubchannelData;)Lio/grpc/internal/PickFirstLeafLoadBalancer$HealthListener;
    .locals 1
    .param p0, "x0"    # Lio/grpc/internal/PickFirstLeafLoadBalancer$SubchannelData;

    .line 617
    iget-object v0, p0, Lio/grpc/internal/PickFirstLeafLoadBalancer$SubchannelData;->healthListener:Lio/grpc/internal/PickFirstLeafLoadBalancer$HealthListener;

    return-object v0
.end method

.method private getHealthState()Lio/grpc/ConnectivityState;
    .locals 1

    .line 652
    iget-object v0, p0, Lio/grpc/internal/PickFirstLeafLoadBalancer$SubchannelData;->healthListener:Lio/grpc/internal/PickFirstLeafLoadBalancer$HealthListener;

    invoke-static {v0}, Lio/grpc/internal/PickFirstLeafLoadBalancer$HealthListener;->access$500(Lio/grpc/internal/PickFirstLeafLoadBalancer$HealthListener;)Lio/grpc/ConnectivityStateInfo;

    move-result-object v0

    invoke-virtual {v0}, Lio/grpc/ConnectivityStateInfo;->getState()Lio/grpc/ConnectivityState;

    move-result-object v0

    return-object v0
.end method

.method private updateState(Lio/grpc/ConnectivityState;)V
    .locals 1
    .param p1, "newState"    # Lio/grpc/ConnectivityState;

    .line 643
    iput-object p1, p0, Lio/grpc/internal/PickFirstLeafLoadBalancer$SubchannelData;->state:Lio/grpc/ConnectivityState;

    .line 644
    sget-object v0, Lio/grpc/ConnectivityState;->READY:Lio/grpc/ConnectivityState;

    if-eq p1, v0, :cond_1

    sget-object v0, Lio/grpc/ConnectivityState;->TRANSIENT_FAILURE:Lio/grpc/ConnectivityState;

    if-ne p1, v0, :cond_0

    goto :goto_0

    .line 646
    :cond_0
    sget-object v0, Lio/grpc/ConnectivityState;->IDLE:Lio/grpc/ConnectivityState;

    if-ne p1, v0, :cond_2

    .line 647
    const/4 v0, 0x0

    iput-boolean v0, p0, Lio/grpc/internal/PickFirstLeafLoadBalancer$SubchannelData;->completedConnectivityAttempt:Z

    goto :goto_1

    .line 645
    :cond_1
    :goto_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lio/grpc/internal/PickFirstLeafLoadBalancer$SubchannelData;->completedConnectivityAttempt:Z

    .line 649
    :cond_2
    :goto_1
    return-void
.end method


# virtual methods
.method public getState()Lio/grpc/ConnectivityState;
    .locals 1

    .line 635
    iget-object v0, p0, Lio/grpc/internal/PickFirstLeafLoadBalancer$SubchannelData;->state:Lio/grpc/ConnectivityState;

    return-object v0
.end method

.method public getSubchannel()Lio/grpc/LoadBalancer$Subchannel;
    .locals 1

    .line 631
    iget-object v0, p0, Lio/grpc/internal/PickFirstLeafLoadBalancer$SubchannelData;->subchannel:Lio/grpc/LoadBalancer$Subchannel;

    return-object v0
.end method

.method public isCompletedConnectivityAttempt()Z
    .locals 1

    .line 639
    iget-boolean v0, p0, Lio/grpc/internal/PickFirstLeafLoadBalancer$SubchannelData;->completedConnectivityAttempt:Z

    return v0
.end method
