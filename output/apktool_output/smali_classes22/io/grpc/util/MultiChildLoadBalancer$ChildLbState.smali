.class public Lio/grpc/util/MultiChildLoadBalancer$ChildLbState;
.super Ljava/lang/Object;
.source "MultiChildLoadBalancer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/grpc/util/MultiChildLoadBalancer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ChildLbState"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/grpc/util/MultiChildLoadBalancer$ChildLbState$ChildLbStateHelper;
    }
.end annotation


# instance fields
.field private final config:Ljava/lang/Object;

.field private currentPicker:Lio/grpc/LoadBalancer$SubchannelPicker;

.field private currentState:Lio/grpc/ConnectivityState;

.field private deactivated:Z

.field private final key:Ljava/lang/Object;

.field private final lb:Lio/grpc/util/GracefulSwitchLoadBalancer;

.field private final policyProvider:Lio/grpc/LoadBalancerProvider;

.field private resolvedAddresses:Lio/grpc/LoadBalancer$ResolvedAddresses;

.field final synthetic this$0:Lio/grpc/util/MultiChildLoadBalancer;


# direct methods
.method public constructor <init>(Lio/grpc/util/MultiChildLoadBalancer;Ljava/lang/Object;Lio/grpc/LoadBalancerProvider;Ljava/lang/Object;Lio/grpc/LoadBalancer$SubchannelPicker;)V
    .locals 8
    .param p1, "this$0"    # Lio/grpc/util/MultiChildLoadBalancer;
    .param p2, "key"    # Ljava/lang/Object;
    .param p3, "policyProvider"    # Lio/grpc/LoadBalancerProvider;
    .param p4, "childConfig"    # Ljava/lang/Object;
    .param p5, "initialPicker"    # Lio/grpc/LoadBalancer$SubchannelPicker;

    .line 389
    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    .end local p1    # "this$0":Lio/grpc/util/MultiChildLoadBalancer;
    .end local p2    # "key":Ljava/lang/Object;
    .end local p3    # "policyProvider":Lio/grpc/LoadBalancerProvider;
    .end local p4    # "childConfig":Ljava/lang/Object;
    .end local p5    # "initialPicker":Lio/grpc/LoadBalancer$SubchannelPicker;
    .local v1, "this$0":Lio/grpc/util/MultiChildLoadBalancer;
    .local v2, "key":Ljava/lang/Object;
    .local v3, "policyProvider":Lio/grpc/LoadBalancerProvider;
    .local v4, "childConfig":Ljava/lang/Object;
    .local v5, "initialPicker":Lio/grpc/LoadBalancer$SubchannelPicker;
    invoke-direct/range {v0 .. v7}, Lio/grpc/util/MultiChildLoadBalancer$ChildLbState;-><init>(Lio/grpc/util/MultiChildLoadBalancer;Ljava/lang/Object;Lio/grpc/LoadBalancerProvider;Ljava/lang/Object;Lio/grpc/LoadBalancer$SubchannelPicker;Lio/grpc/LoadBalancer$ResolvedAddresses;Z)V

    .line 390
    return-void
.end method

.method public constructor <init>(Lio/grpc/util/MultiChildLoadBalancer;Ljava/lang/Object;Lio/grpc/LoadBalancerProvider;Ljava/lang/Object;Lio/grpc/LoadBalancer$SubchannelPicker;Lio/grpc/LoadBalancer$ResolvedAddresses;Z)V
    .locals 3
    .param p1, "this$0"    # Lio/grpc/util/MultiChildLoadBalancer;
    .param p2, "key"    # Ljava/lang/Object;
    .param p3, "policyProvider"    # Lio/grpc/LoadBalancerProvider;
    .param p4, "childConfig"    # Ljava/lang/Object;
    .param p5, "initialPicker"    # Lio/grpc/LoadBalancer$SubchannelPicker;
    .param p6, "resolvedAddrs"    # Lio/grpc/LoadBalancer$ResolvedAddresses;
    .param p7, "deactivated"    # Z

    .line 393
    iput-object p1, p0, Lio/grpc/util/MultiChildLoadBalancer$ChildLbState;->this$0:Lio/grpc/util/MultiChildLoadBalancer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 394
    iput-object p2, p0, Lio/grpc/util/MultiChildLoadBalancer$ChildLbState;->key:Ljava/lang/Object;

    .line 395
    iput-object p3, p0, Lio/grpc/util/MultiChildLoadBalancer$ChildLbState;->policyProvider:Lio/grpc/LoadBalancerProvider;

    .line 396
    iput-boolean p7, p0, Lio/grpc/util/MultiChildLoadBalancer$ChildLbState;->deactivated:Z

    .line 397
    iput-object p5, p0, Lio/grpc/util/MultiChildLoadBalancer$ChildLbState;->currentPicker:Lio/grpc/LoadBalancer$SubchannelPicker;

    .line 398
    iput-object p4, p0, Lio/grpc/util/MultiChildLoadBalancer$ChildLbState;->config:Ljava/lang/Object;

    .line 399
    new-instance v0, Lio/grpc/util/GracefulSwitchLoadBalancer;

    new-instance v1, Lio/grpc/util/MultiChildLoadBalancer$ChildLbState$ChildLbStateHelper;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lio/grpc/util/MultiChildLoadBalancer$ChildLbState$ChildLbStateHelper;-><init>(Lio/grpc/util/MultiChildLoadBalancer$ChildLbState;Lio/grpc/util/MultiChildLoadBalancer$1;)V

    invoke-direct {v0, v1}, Lio/grpc/util/GracefulSwitchLoadBalancer;-><init>(Lio/grpc/LoadBalancer$Helper;)V

    iput-object v0, p0, Lio/grpc/util/MultiChildLoadBalancer$ChildLbState;->lb:Lio/grpc/util/GracefulSwitchLoadBalancer;

    .line 400
    if-eqz p7, :cond_0

    sget-object v0, Lio/grpc/ConnectivityState;->IDLE:Lio/grpc/ConnectivityState;

    goto :goto_0

    :cond_0
    sget-object v0, Lio/grpc/ConnectivityState;->CONNECTING:Lio/grpc/ConnectivityState;

    :goto_0
    iput-object v0, p0, Lio/grpc/util/MultiChildLoadBalancer$ChildLbState;->currentState:Lio/grpc/ConnectivityState;

    .line 401
    iput-object p6, p0, Lio/grpc/util/MultiChildLoadBalancer$ChildLbState;->resolvedAddresses:Lio/grpc/LoadBalancer$ResolvedAddresses;

    .line 402
    if-nez p7, :cond_1

    .line 403
    iget-object v0, p0, Lio/grpc/util/MultiChildLoadBalancer$ChildLbState;->lb:Lio/grpc/util/GracefulSwitchLoadBalancer;

    invoke-virtual {v0, p3}, Lio/grpc/util/GracefulSwitchLoadBalancer;->switchTo(Lio/grpc/LoadBalancer$Factory;)V

    .line 405
    :cond_1
    return-void
.end method

.method static synthetic access$000(Lio/grpc/util/MultiChildLoadBalancer$ChildLbState;)Z
    .locals 1
    .param p0, "x0"    # Lio/grpc/util/MultiChildLoadBalancer$ChildLbState;

    .line 376
    iget-boolean v0, p0, Lio/grpc/util/MultiChildLoadBalancer$ChildLbState;->deactivated:Z

    return v0
.end method

.method static synthetic access$100(Lio/grpc/util/MultiChildLoadBalancer$ChildLbState;)Lio/grpc/util/GracefulSwitchLoadBalancer;
    .locals 1
    .param p0, "x0"    # Lio/grpc/util/MultiChildLoadBalancer$ChildLbState;

    .line 376
    iget-object v0, p0, Lio/grpc/util/MultiChildLoadBalancer$ChildLbState;->lb:Lio/grpc/util/GracefulSwitchLoadBalancer;

    return-object v0
.end method

.method static synthetic access$200(Lio/grpc/util/MultiChildLoadBalancer$ChildLbState;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lio/grpc/util/MultiChildLoadBalancer$ChildLbState;

    .line 376
    iget-object v0, p0, Lio/grpc/util/MultiChildLoadBalancer$ChildLbState;->key:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$300(Lio/grpc/util/MultiChildLoadBalancer$ChildLbState;)Lio/grpc/LoadBalancer$SubchannelPicker;
    .locals 1
    .param p0, "x0"    # Lio/grpc/util/MultiChildLoadBalancer$ChildLbState;

    .line 376
    iget-object v0, p0, Lio/grpc/util/MultiChildLoadBalancer$ChildLbState;->currentPicker:Lio/grpc/LoadBalancer$SubchannelPicker;

    return-object v0
.end method

.method static synthetic access$302(Lio/grpc/util/MultiChildLoadBalancer$ChildLbState;Lio/grpc/LoadBalancer$SubchannelPicker;)Lio/grpc/LoadBalancer$SubchannelPicker;
    .locals 0
    .param p0, "x0"    # Lio/grpc/util/MultiChildLoadBalancer$ChildLbState;
    .param p1, "x1"    # Lio/grpc/LoadBalancer$SubchannelPicker;

    .line 376
    iput-object p1, p0, Lio/grpc/util/MultiChildLoadBalancer$ChildLbState;->currentPicker:Lio/grpc/LoadBalancer$SubchannelPicker;

    return-object p1
.end method

.method static synthetic access$400(Lio/grpc/util/MultiChildLoadBalancer$ChildLbState;)Lio/grpc/ConnectivityState;
    .locals 1
    .param p0, "x0"    # Lio/grpc/util/MultiChildLoadBalancer$ChildLbState;

    .line 376
    iget-object v0, p0, Lio/grpc/util/MultiChildLoadBalancer$ChildLbState;->currentState:Lio/grpc/ConnectivityState;

    return-object v0
.end method

.method static synthetic access$402(Lio/grpc/util/MultiChildLoadBalancer$ChildLbState;Lio/grpc/ConnectivityState;)Lio/grpc/ConnectivityState;
    .locals 0
    .param p0, "x0"    # Lio/grpc/util/MultiChildLoadBalancer$ChildLbState;
    .param p1, "x1"    # Lio/grpc/ConnectivityState;

    .line 376
    iput-object p1, p0, Lio/grpc/util/MultiChildLoadBalancer$ChildLbState;->currentState:Lio/grpc/ConnectivityState;

    return-object p1
.end method


# virtual methods
.method protected deactivate()V
    .locals 4

    .line 483
    iget-boolean v0, p0, Lio/grpc/util/MultiChildLoadBalancer$ChildLbState;->deactivated:Z

    if-eqz v0, :cond_0

    .line 484
    return-void

    .line 487
    :cond_0
    iget-object v0, p0, Lio/grpc/util/MultiChildLoadBalancer$ChildLbState;->this$0:Lio/grpc/util/MultiChildLoadBalancer;

    invoke-static {v0}, Lio/grpc/util/MultiChildLoadBalancer;->access$600(Lio/grpc/util/MultiChildLoadBalancer;)Ljava/util/Map;

    move-result-object v0

    iget-object v1, p0, Lio/grpc/util/MultiChildLoadBalancer$ChildLbState;->key:Ljava/lang/Object;

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 488
    const/4 v0, 0x1

    iput-boolean v0, p0, Lio/grpc/util/MultiChildLoadBalancer$ChildLbState;->deactivated:Z

    .line 489
    invoke-static {}, Lio/grpc/util/MultiChildLoadBalancer;->access$700()Ljava/util/logging/Logger;

    move-result-object v0

    sget-object v1, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    const-string v2, "Child balancer {0} deactivated"

    iget-object v3, p0, Lio/grpc/util/MultiChildLoadBalancer$ChildLbState;->key:Ljava/lang/Object;

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Object;)V

    .line 490
    return-void
.end method

.method getConfig()Ljava/lang/Object;
    .locals 1

    .line 421
    iget-object v0, p0, Lio/grpc/util/MultiChildLoadBalancer$ChildLbState;->config:Ljava/lang/Object;

    return-object v0
.end method

.method public getCurrentPicker()Lio/grpc/LoadBalancer$SubchannelPicker;
    .locals 1

    .line 444
    iget-object v0, p0, Lio/grpc/util/MultiChildLoadBalancer$ChildLbState;->currentPicker:Lio/grpc/LoadBalancer$SubchannelPicker;

    return-object v0
.end method

.method public getCurrentState()Lio/grpc/ConnectivityState;
    .locals 1

    .line 440
    iget-object v0, p0, Lio/grpc/util/MultiChildLoadBalancer$ChildLbState;->currentState:Lio/grpc/ConnectivityState;

    return-object v0
.end method

.method public getEag()Lio/grpc/EquivalentAddressGroup;
    .locals 2

    .line 448
    iget-object v0, p0, Lio/grpc/util/MultiChildLoadBalancer$ChildLbState;->resolvedAddresses:Lio/grpc/LoadBalancer$ResolvedAddresses;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lio/grpc/util/MultiChildLoadBalancer$ChildLbState;->resolvedAddresses:Lio/grpc/LoadBalancer$ResolvedAddresses;

    invoke-virtual {v0}, Lio/grpc/LoadBalancer$ResolvedAddresses;->getAddresses()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 451
    :cond_0
    iget-object v0, p0, Lio/grpc/util/MultiChildLoadBalancer$ChildLbState;->resolvedAddresses:Lio/grpc/LoadBalancer$ResolvedAddresses;

    invoke-virtual {v0}, Lio/grpc/LoadBalancer$ResolvedAddresses;->getAddresses()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/grpc/EquivalentAddressGroup;

    return-object v0

    .line 449
    :cond_1
    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getKey()Ljava/lang/Object;
    .locals 1

    .line 417
    iget-object v0, p0, Lio/grpc/util/MultiChildLoadBalancer$ChildLbState;->key:Ljava/lang/Object;

    return-object v0
.end method

.method protected getLb()Lio/grpc/util/GracefulSwitchLoadBalancer;
    .locals 1

    .line 425
    iget-object v0, p0, Lio/grpc/util/MultiChildLoadBalancer$ChildLbState;->lb:Lio/grpc/util/GracefulSwitchLoadBalancer;

    return-object v0
.end method

.method public getPolicyProvider()Lio/grpc/LoadBalancerProvider;
    .locals 1

    .line 429
    iget-object v0, p0, Lio/grpc/util/MultiChildLoadBalancer$ChildLbState;->policyProvider:Lio/grpc/LoadBalancerProvider;

    return-object v0
.end method

.method public getResolvedAddresses()Lio/grpc/LoadBalancer$ResolvedAddresses;
    .locals 1

    .line 515
    iget-object v0, p0, Lio/grpc/util/MultiChildLoadBalancer$ChildLbState;->resolvedAddresses:Lio/grpc/LoadBalancer$ResolvedAddresses;

    return-object v0
.end method

.method protected getSubchannels(Lio/grpc/LoadBalancer$PickSubchannelArgs;)Lio/grpc/LoadBalancer$Subchannel;
    .locals 1
    .param p1, "args"    # Lio/grpc/LoadBalancer$PickSubchannelArgs;

    .line 433
    invoke-virtual {p0}, Lio/grpc/util/MultiChildLoadBalancer$ChildLbState;->getCurrentPicker()Lio/grpc/LoadBalancer$SubchannelPicker;

    move-result-object v0

    if-nez v0, :cond_0

    .line 434
    const/4 v0, 0x0

    return-object v0

    .line 436
    :cond_0
    invoke-virtual {p0}, Lio/grpc/util/MultiChildLoadBalancer$ChildLbState;->getCurrentPicker()Lio/grpc/LoadBalancer$SubchannelPicker;

    move-result-object v0

    invoke-virtual {v0, p1}, Lio/grpc/LoadBalancer$SubchannelPicker;->pickSubchannel(Lio/grpc/LoadBalancer$PickSubchannelArgs;)Lio/grpc/LoadBalancer$PickResult;

    move-result-object v0

    invoke-virtual {v0}, Lio/grpc/LoadBalancer$PickResult;->getSubchannel()Lio/grpc/LoadBalancer$Subchannel;

    move-result-object v0

    return-object v0
.end method

.method public isDeactivated()Z
    .locals 1

    .line 455
    iget-boolean v0, p0, Lio/grpc/util/MultiChildLoadBalancer$ChildLbState;->deactivated:Z

    return v0
.end method

.method protected markReactivated()V
    .locals 1

    .line 463
    const/4 v0, 0x0

    iput-boolean v0, p0, Lio/grpc/util/MultiChildLoadBalancer$ChildLbState;->deactivated:Z

    .line 464
    return-void
.end method

.method protected reactivate(Lio/grpc/LoadBalancerProvider;)V
    .locals 1
    .param p1, "policyProvider"    # Lio/grpc/LoadBalancerProvider;

    .line 497
    const/4 v0, 0x0

    iput-boolean v0, p0, Lio/grpc/util/MultiChildLoadBalancer$ChildLbState;->deactivated:Z

    .line 498
    return-void
.end method

.method protected setDeactivated()V
    .locals 1

    .line 459
    const/4 v0, 0x1

    iput-boolean v0, p0, Lio/grpc/util/MultiChildLoadBalancer$ChildLbState;->deactivated:Z

    .line 460
    return-void
.end method

.method protected setResolvedAddresses(Lio/grpc/LoadBalancer$ResolvedAddresses;)V
    .locals 1
    .param p1, "newAddresses"    # Lio/grpc/LoadBalancer$ResolvedAddresses;

    .line 467
    const-string v0, "Missing address list for child"

    invoke-static {p1, v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 468
    iput-object p1, p0, Lio/grpc/util/MultiChildLoadBalancer$ChildLbState;->resolvedAddresses:Lio/grpc/LoadBalancer$ResolvedAddresses;

    .line 469
    return-void
.end method

.method protected shutdown()V
    .locals 4

    .line 501
    iget-object v0, p0, Lio/grpc/util/MultiChildLoadBalancer$ChildLbState;->lb:Lio/grpc/util/GracefulSwitchLoadBalancer;

    invoke-virtual {v0}, Lio/grpc/util/GracefulSwitchLoadBalancer;->shutdown()V

    .line 502
    sget-object v0, Lio/grpc/ConnectivityState;->SHUTDOWN:Lio/grpc/ConnectivityState;

    iput-object v0, p0, Lio/grpc/util/MultiChildLoadBalancer$ChildLbState;->currentState:Lio/grpc/ConnectivityState;

    .line 503
    invoke-static {}, Lio/grpc/util/MultiChildLoadBalancer;->access$700()Ljava/util/logging/Logger;

    move-result-object v0

    sget-object v1, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    const-string v2, "Child balancer {0} deleted"

    iget-object v3, p0, Lio/grpc/util/MultiChildLoadBalancer$ChildLbState;->key:Ljava/lang/Object;

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Object;)V

    .line 504
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 409
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Address = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lio/grpc/util/MultiChildLoadBalancer$ChildLbState;->key:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", state = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lio/grpc/util/MultiChildLoadBalancer$ChildLbState;->currentState:Lio/grpc/ConnectivityState;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", picker type: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lio/grpc/util/MultiChildLoadBalancer$ChildLbState;->currentPicker:Lio/grpc/LoadBalancer$SubchannelPicker;

    .line 411
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", lb: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lio/grpc/util/MultiChildLoadBalancer$ChildLbState;->lb:Lio/grpc/util/GracefulSwitchLoadBalancer;

    .line 412
    invoke-virtual {v1}, Lio/grpc/util/GracefulSwitchLoadBalancer;->delegate()Lio/grpc/LoadBalancer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 413
    iget-boolean v1, p0, Lio/grpc/util/MultiChildLoadBalancer$ChildLbState;->deactivated:Z

    if-eqz v1, :cond_0

    const-string v1, ", deactivated"

    goto :goto_0

    :cond_0
    const-string v1, ""

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 409
    return-object v0
.end method
