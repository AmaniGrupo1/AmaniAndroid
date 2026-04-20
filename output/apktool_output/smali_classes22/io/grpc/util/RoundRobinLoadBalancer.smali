.class public Lio/grpc/util/RoundRobinLoadBalancer;
.super Lio/grpc/util/MultiChildLoadBalancer;
.source "RoundRobinLoadBalancer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/grpc/util/RoundRobinLoadBalancer$EmptyPicker;,
        Lio/grpc/util/RoundRobinLoadBalancer$ReadyPicker;
    }
.end annotation


# instance fields
.field protected currentPicker:Lio/grpc/LoadBalancer$SubchannelPicker;

.field private final sequence:Ljava/util/concurrent/atomic/AtomicInteger;


# direct methods
.method public constructor <init>(Lio/grpc/LoadBalancer$Helper;)V
    .locals 2
    .param p1, "helper"    # Lio/grpc/LoadBalancer$Helper;

    .line 51
    invoke-direct {p0, p1}, Lio/grpc/util/MultiChildLoadBalancer;-><init>(Lio/grpc/LoadBalancer$Helper;)V

    .line 47
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    new-instance v1, Ljava/util/Random;

    invoke-direct {v1}, Ljava/util/Random;-><init>()V

    invoke-virtual {v1}, Ljava/util/Random;->nextInt()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lio/grpc/util/RoundRobinLoadBalancer;->sequence:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 48
    new-instance v0, Lio/grpc/util/RoundRobinLoadBalancer$EmptyPicker;

    invoke-direct {v0}, Lio/grpc/util/RoundRobinLoadBalancer$EmptyPicker;-><init>()V

    iput-object v0, p0, Lio/grpc/util/RoundRobinLoadBalancer;->currentPicker:Lio/grpc/LoadBalancer$SubchannelPicker;

    .line 52
    return-void
.end method

.method private updateBalancingState(Lio/grpc/ConnectivityState;Lio/grpc/LoadBalancer$SubchannelPicker;)V
    .locals 1
    .param p1, "state"    # Lio/grpc/ConnectivityState;
    .param p2, "picker"    # Lio/grpc/LoadBalancer$SubchannelPicker;

    .line 89
    iget-object v0, p0, Lio/grpc/util/RoundRobinLoadBalancer;->currentConnectivityState:Lio/grpc/ConnectivityState;

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lio/grpc/util/RoundRobinLoadBalancer;->currentPicker:Lio/grpc/LoadBalancer$SubchannelPicker;

    invoke-virtual {p2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 90
    :cond_0
    invoke-virtual {p0}, Lio/grpc/util/RoundRobinLoadBalancer;->getHelper()Lio/grpc/LoadBalancer$Helper;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lio/grpc/LoadBalancer$Helper;->updateBalancingState(Lio/grpc/ConnectivityState;Lio/grpc/LoadBalancer$SubchannelPicker;)V

    .line 91
    iput-object p1, p0, Lio/grpc/util/RoundRobinLoadBalancer;->currentConnectivityState:Lio/grpc/ConnectivityState;

    .line 92
    iput-object p2, p0, Lio/grpc/util/RoundRobinLoadBalancer;->currentPicker:Lio/grpc/LoadBalancer$SubchannelPicker;

    .line 94
    :cond_1
    return-void
.end method


# virtual methods
.method protected createReadyPicker(Ljava/util/Collection;)Lio/grpc/LoadBalancer$SubchannelPicker;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lio/grpc/util/MultiChildLoadBalancer$ChildLbState;",
            ">;)",
            "Lio/grpc/LoadBalancer$SubchannelPicker;"
        }
    .end annotation

    .line 97
    .local p1, "children":Ljava/util/Collection;, "Ljava/util/Collection<Lio/grpc/util/MultiChildLoadBalancer$ChildLbState;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 98
    .local v0, "pickerList":Ljava/util/List;, "Ljava/util/List<Lio/grpc/LoadBalancer$SubchannelPicker;>;"
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lio/grpc/util/MultiChildLoadBalancer$ChildLbState;

    .line 99
    .local v2, "child":Lio/grpc/util/MultiChildLoadBalancer$ChildLbState;
    invoke-virtual {v2}, Lio/grpc/util/MultiChildLoadBalancer$ChildLbState;->getCurrentPicker()Lio/grpc/LoadBalancer$SubchannelPicker;

    move-result-object v3

    .line 100
    .local v3, "picker":Lio/grpc/LoadBalancer$SubchannelPicker;
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 101
    .end local v2    # "child":Lio/grpc/util/MultiChildLoadBalancer$ChildLbState;
    .end local v3    # "picker":Lio/grpc/LoadBalancer$SubchannelPicker;
    goto :goto_0

    .line 103
    :cond_0
    new-instance v1, Lio/grpc/util/RoundRobinLoadBalancer$ReadyPicker;

    iget-object v2, p0, Lio/grpc/util/RoundRobinLoadBalancer;->sequence:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v1, v0, v2}, Lio/grpc/util/RoundRobinLoadBalancer$ReadyPicker;-><init>(Ljava/util/List;Ljava/util/concurrent/atomic/AtomicInteger;)V

    return-object v1
.end method

.method protected getSubchannelPicker(Ljava/util/Map;)Lio/grpc/LoadBalancer$SubchannelPicker;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/Object;",
            "Lio/grpc/LoadBalancer$SubchannelPicker;",
            ">;)",
            "Lio/grpc/LoadBalancer$SubchannelPicker;"
        }
    .end annotation

    .line 56
    .local p1, "childPickers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Object;Lio/grpc/LoadBalancer$SubchannelPicker;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method protected updateOverallBalancingState()V
    .locals 6

    .line 64
    invoke-virtual {p0}, Lio/grpc/util/RoundRobinLoadBalancer;->getReadyChildren()Ljava/util/List;

    move-result-object v0

    .line 65
    .local v0, "activeList":Ljava/util/List;, "Ljava/util/List<Lio/grpc/util/MultiChildLoadBalancer$ChildLbState;>;"
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 69
    const/4 v1, 0x0

    .line 70
    .local v1, "isConnecting":Z
    invoke-virtual {p0}, Lio/grpc/util/RoundRobinLoadBalancer;->getChildLbStates()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lio/grpc/util/MultiChildLoadBalancer$ChildLbState;

    .line 71
    .local v3, "childLbState":Lio/grpc/util/MultiChildLoadBalancer$ChildLbState;
    invoke-virtual {v3}, Lio/grpc/util/MultiChildLoadBalancer$ChildLbState;->getCurrentState()Lio/grpc/ConnectivityState;

    move-result-object v4

    .line 72
    .local v4, "state":Lio/grpc/ConnectivityState;
    sget-object v5, Lio/grpc/ConnectivityState;->CONNECTING:Lio/grpc/ConnectivityState;

    if-eq v4, v5, :cond_1

    sget-object v5, Lio/grpc/ConnectivityState;->IDLE:Lio/grpc/ConnectivityState;

    if-ne v4, v5, :cond_0

    goto :goto_1

    .line 76
    .end local v3    # "childLbState":Lio/grpc/util/MultiChildLoadBalancer$ChildLbState;
    .end local v4    # "state":Lio/grpc/ConnectivityState;
    :cond_0
    goto :goto_0

    .line 73
    .restart local v3    # "childLbState":Lio/grpc/util/MultiChildLoadBalancer$ChildLbState;
    .restart local v4    # "state":Lio/grpc/ConnectivityState;
    :cond_1
    :goto_1
    const/4 v1, 0x1

    .line 74
    nop

    .line 78
    .end local v3    # "childLbState":Lio/grpc/util/MultiChildLoadBalancer$ChildLbState;
    .end local v4    # "state":Lio/grpc/ConnectivityState;
    :cond_2
    if-eqz v1, :cond_3

    .line 79
    sget-object v2, Lio/grpc/ConnectivityState;->CONNECTING:Lio/grpc/ConnectivityState;

    new-instance v3, Lio/grpc/util/RoundRobinLoadBalancer$EmptyPicker;

    invoke-direct {v3}, Lio/grpc/util/RoundRobinLoadBalancer$EmptyPicker;-><init>()V

    invoke-direct {p0, v2, v3}, Lio/grpc/util/RoundRobinLoadBalancer;->updateBalancingState(Lio/grpc/ConnectivityState;Lio/grpc/LoadBalancer$SubchannelPicker;)V

    goto :goto_2

    .line 81
    :cond_3
    sget-object v2, Lio/grpc/ConnectivityState;->TRANSIENT_FAILURE:Lio/grpc/ConnectivityState;

    invoke-virtual {p0}, Lio/grpc/util/RoundRobinLoadBalancer;->getChildLbStates()Ljava/util/Collection;

    move-result-object v3

    invoke-virtual {p0, v3}, Lio/grpc/util/RoundRobinLoadBalancer;->createReadyPicker(Ljava/util/Collection;)Lio/grpc/LoadBalancer$SubchannelPicker;

    move-result-object v3

    invoke-direct {p0, v2, v3}, Lio/grpc/util/RoundRobinLoadBalancer;->updateBalancingState(Lio/grpc/ConnectivityState;Lio/grpc/LoadBalancer$SubchannelPicker;)V

    .line 83
    .end local v1    # "isConnecting":Z
    :goto_2
    goto :goto_3

    .line 84
    :cond_4
    sget-object v1, Lio/grpc/ConnectivityState;->READY:Lio/grpc/ConnectivityState;

    invoke-virtual {p0, v0}, Lio/grpc/util/RoundRobinLoadBalancer;->createReadyPicker(Ljava/util/Collection;)Lio/grpc/LoadBalancer$SubchannelPicker;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lio/grpc/util/RoundRobinLoadBalancer;->updateBalancingState(Lio/grpc/ConnectivityState;Lio/grpc/LoadBalancer$SubchannelPicker;)V

    .line 86
    :goto_3
    return-void
.end method
