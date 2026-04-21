.class public abstract Lio/grpc/util/MultiChildLoadBalancer;
.super Lio/grpc/LoadBalancer;
.source "MultiChildLoadBalancer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/grpc/util/MultiChildLoadBalancer$AcceptResolvedAddressRetVal;,
        Lio/grpc/util/MultiChildLoadBalancer$Endpoint;,
        Lio/grpc/util/MultiChildLoadBalancer$ChildLbState;
    }
.end annotation


# static fields
.field private static final logger:Ljava/util/logging/Logger;


# instance fields
.field private final childLbStates:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Object;",
            "Lio/grpc/util/MultiChildLoadBalancer$ChildLbState;",
            ">;"
        }
    .end annotation
.end field

.field protected currentConnectivityState:Lio/grpc/ConnectivityState;

.field private final helper:Lio/grpc/LoadBalancer$Helper;

.field protected final pickFirstLbProvider:Lio/grpc/LoadBalancerProvider;

.field protected resolvingAddresses:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 58
    const-class v0, Lio/grpc/util/MultiChildLoadBalancer;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lio/grpc/util/MultiChildLoadBalancer;->logger:Ljava/util/logging/Logger;

    return-void
.end method

.method protected constructor <init>(Lio/grpc/LoadBalancer$Helper;)V
    .locals 3
    .param p1, "helper"    # Lio/grpc/LoadBalancer$Helper;

    .line 69
    invoke-direct {p0}, Lio/grpc/LoadBalancer;-><init>()V

    .line 59
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lio/grpc/util/MultiChildLoadBalancer;->childLbStates:Ljava/util/Map;

    .line 64
    new-instance v0, Lio/grpc/internal/PickFirstLoadBalancerProvider;

    invoke-direct {v0}, Lio/grpc/internal/PickFirstLoadBalancerProvider;-><init>()V

    iput-object v0, p0, Lio/grpc/util/MultiChildLoadBalancer;->pickFirstLbProvider:Lio/grpc/LoadBalancerProvider;

    .line 70
    const-string v0, "helper"

    invoke-static {p1, v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/grpc/LoadBalancer$Helper;

    iput-object v0, p0, Lio/grpc/util/MultiChildLoadBalancer;->helper:Lio/grpc/LoadBalancer$Helper;

    .line 71
    sget-object v0, Lio/grpc/util/MultiChildLoadBalancer;->logger:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    const-string v2, "Created"

    invoke-virtual {v0, v1, v2}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    .line 72
    return-void
.end method

.method static synthetic access$600(Lio/grpc/util/MultiChildLoadBalancer;)Ljava/util/Map;
    .locals 1
    .param p0, "x0"    # Lio/grpc/util/MultiChildLoadBalancer;

    .line 56
    iget-object v0, p0, Lio/grpc/util/MultiChildLoadBalancer;->childLbStates:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$700()Ljava/util/logging/Logger;
    .locals 1

    .line 56
    sget-object v0, Lio/grpc/util/MultiChildLoadBalancer;->logger:Ljava/util/logging/Logger;

    return-object v0
.end method

.method static synthetic access$800(Lio/grpc/util/MultiChildLoadBalancer;)Lio/grpc/LoadBalancer$Helper;
    .locals 1
    .param p0, "x0"    # Lio/grpc/util/MultiChildLoadBalancer;

    .line 56
    iget-object v0, p0, Lio/grpc/util/MultiChildLoadBalancer;->helper:Lio/grpc/LoadBalancer$Helper;

    return-object v0
.end method

.method protected static aggregateState(Lio/grpc/ConnectivityState;Lio/grpc/ConnectivityState;)Lio/grpc/ConnectivityState;
    .locals 1
    .param p0, "overallState"    # Lio/grpc/ConnectivityState;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p1, "childState"    # Lio/grpc/ConnectivityState;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 327
    if-nez p0, :cond_0

    .line 328
    return-object p1

    .line 330
    :cond_0
    sget-object v0, Lio/grpc/ConnectivityState;->READY:Lio/grpc/ConnectivityState;

    if-eq p0, v0, :cond_6

    sget-object v0, Lio/grpc/ConnectivityState;->READY:Lio/grpc/ConnectivityState;

    if-ne p1, v0, :cond_1

    goto :goto_2

    .line 333
    :cond_1
    sget-object v0, Lio/grpc/ConnectivityState;->CONNECTING:Lio/grpc/ConnectivityState;

    if-eq p0, v0, :cond_5

    sget-object v0, Lio/grpc/ConnectivityState;->CONNECTING:Lio/grpc/ConnectivityState;

    if-ne p1, v0, :cond_2

    goto :goto_1

    .line 336
    :cond_2
    sget-object v0, Lio/grpc/ConnectivityState;->IDLE:Lio/grpc/ConnectivityState;

    if-eq p0, v0, :cond_4

    sget-object v0, Lio/grpc/ConnectivityState;->IDLE:Lio/grpc/ConnectivityState;

    if-ne p1, v0, :cond_3

    goto :goto_0

    .line 339
    :cond_3
    return-object p0

    .line 337
    :cond_4
    :goto_0
    sget-object v0, Lio/grpc/ConnectivityState;->IDLE:Lio/grpc/ConnectivityState;

    return-object v0

    .line 334
    :cond_5
    :goto_1
    sget-object v0, Lio/grpc/ConnectivityState;->CONNECTING:Lio/grpc/ConnectivityState;

    return-object v0

    .line 331
    :cond_6
    :goto_2
    sget-object v0, Lio/grpc/ConnectivityState;->READY:Lio/grpc/ConnectivityState;

    return-object v0
.end method


# virtual methods
.method public acceptResolvedAddresses(Lio/grpc/LoadBalancer$ResolvedAddresses;)Lio/grpc/Status;
    .locals 3
    .param p1, "resolvedAddresses"    # Lio/grpc/LoadBalancer$ResolvedAddresses;

    .line 153
    const/4 v0, 0x1

    const/4 v1, 0x0

    :try_start_0
    iput-boolean v0, p0, Lio/grpc/util/MultiChildLoadBalancer;->resolvingAddresses:Z

    .line 156
    nop

    .line 157
    invoke-virtual {p0, p1}, Lio/grpc/util/MultiChildLoadBalancer;->acceptResolvedAddressesInternal(Lio/grpc/LoadBalancer$ResolvedAddresses;)Lio/grpc/util/MultiChildLoadBalancer$AcceptResolvedAddressRetVal;

    move-result-object v0

    .line 158
    .local v0, "acceptRetVal":Lio/grpc/util/MultiChildLoadBalancer$AcceptResolvedAddressRetVal;
    iget-object v2, v0, Lio/grpc/util/MultiChildLoadBalancer$AcceptResolvedAddressRetVal;->status:Lio/grpc/Status;

    invoke-virtual {v2}, Lio/grpc/Status;->isOk()Z

    move-result v2

    if-nez v2, :cond_0

    .line 159
    iget-object v2, v0, Lio/grpc/util/MultiChildLoadBalancer$AcceptResolvedAddressRetVal;->status:Lio/grpc/Status;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 169
    iput-boolean v1, p0, Lio/grpc/util/MultiChildLoadBalancer;->resolvingAddresses:Z

    .line 159
    return-object v2

    .line 163
    :cond_0
    :try_start_1
    invoke-virtual {p0}, Lio/grpc/util/MultiChildLoadBalancer;->updateOverallBalancingState()V

    .line 166
    iget-object v2, v0, Lio/grpc/util/MultiChildLoadBalancer$AcceptResolvedAddressRetVal;->removedChildren:Ljava/util/List;

    invoke-virtual {p0, v2}, Lio/grpc/util/MultiChildLoadBalancer;->shutdownRemoved(Ljava/util/List;)V

    .line 167
    iget-object v2, v0, Lio/grpc/util/MultiChildLoadBalancer$AcceptResolvedAddressRetVal;->status:Lio/grpc/Status;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 169
    iput-boolean v1, p0, Lio/grpc/util/MultiChildLoadBalancer;->resolvingAddresses:Z

    .line 167
    return-object v2

    .line 169
    .end local v0    # "acceptRetVal":Lio/grpc/util/MultiChildLoadBalancer$AcceptResolvedAddressRetVal;
    :catchall_0
    move-exception v0

    iput-boolean v1, p0, Lio/grpc/util/MultiChildLoadBalancer;->resolvingAddresses:Z

    .line 170
    throw v0
.end method

.method protected acceptResolvedAddressesInternal(Lio/grpc/LoadBalancer$ResolvedAddresses;)Lio/grpc/util/MultiChildLoadBalancer$AcceptResolvedAddressRetVal;
    .locals 9
    .param p1, "resolvedAddresses"    # Lio/grpc/LoadBalancer$ResolvedAddresses;

    .line 215
    sget-object v0, Lio/grpc/util/MultiChildLoadBalancer;->logger:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    const-string v2, "Received resolution result: {0}"

    invoke-virtual {v0, v1, v2, p1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Object;)V

    .line 216
    invoke-virtual {p0, p1}, Lio/grpc/util/MultiChildLoadBalancer;->createChildLbMap(Lio/grpc/LoadBalancer$ResolvedAddresses;)Ljava/util/Map;

    move-result-object v0

    .line 218
    .local v0, "newChildren":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Object;Lio/grpc/util/MultiChildLoadBalancer$ChildLbState;>;"
    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 219
    sget-object v1, Lio/grpc/Status;->UNAVAILABLE:Lio/grpc/Status;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "NameResolver returned no usable address. "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/grpc/Status;->withDescription(Ljava/lang/String;)Lio/grpc/Status;

    move-result-object v1

    .line 221
    .local v1, "unavailableStatus":Lio/grpc/Status;
    invoke-virtual {p0, v1}, Lio/grpc/util/MultiChildLoadBalancer;->handleNameResolutionError(Lio/grpc/Status;)V

    .line 222
    new-instance v2, Lio/grpc/util/MultiChildLoadBalancer$AcceptResolvedAddressRetVal;

    const/4 v3, 0x0

    invoke-direct {v2, v1, v3}, Lio/grpc/util/MultiChildLoadBalancer$AcceptResolvedAddressRetVal;-><init>(Lio/grpc/Status;Ljava/util/List;)V

    return-object v2

    .line 226
    .end local v1    # "unavailableStatus":Lio/grpc/Status;
    :cond_0
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 227
    .local v2, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Object;Lio/grpc/util/MultiChildLoadBalancer$ChildLbState;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    .line 228
    .local v3, "key":Ljava/lang/Object;
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lio/grpc/util/MultiChildLoadBalancer$ChildLbState;

    invoke-virtual {v4}, Lio/grpc/util/MultiChildLoadBalancer$ChildLbState;->getPolicyProvider()Lio/grpc/LoadBalancerProvider;

    move-result-object v4

    .line 229
    .local v4, "childPolicyProvider":Lio/grpc/LoadBalancerProvider;
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lio/grpc/util/MultiChildLoadBalancer$ChildLbState;

    invoke-virtual {v5}, Lio/grpc/util/MultiChildLoadBalancer$ChildLbState;->getConfig()Ljava/lang/Object;

    move-result-object v5

    .line 230
    .local v5, "childConfig":Ljava/lang/Object;
    iget-object v6, p0, Lio/grpc/util/MultiChildLoadBalancer;->childLbStates:Ljava/util/Map;

    invoke-interface {v6, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    .line 234
    iget-object v7, p0, Lio/grpc/util/MultiChildLoadBalancer;->childLbStates:Ljava/util/Map;

    .line 230
    if-nez v6, :cond_1

    .line 231
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lio/grpc/util/MultiChildLoadBalancer$ChildLbState;

    invoke-interface {v7, v3, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 234
    :cond_1
    invoke-interface {v7, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lio/grpc/util/MultiChildLoadBalancer$ChildLbState;

    .line 235
    .local v6, "existingChildLbState":Lio/grpc/util/MultiChildLoadBalancer$ChildLbState;
    invoke-virtual {v6}, Lio/grpc/util/MultiChildLoadBalancer$ChildLbState;->isDeactivated()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-virtual {p0}, Lio/grpc/util/MultiChildLoadBalancer;->reactivateChildOnReuse()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 236
    invoke-virtual {v6, v4}, Lio/grpc/util/MultiChildLoadBalancer$ChildLbState;->reactivate(Lio/grpc/LoadBalancerProvider;)V

    .line 240
    .end local v6    # "existingChildLbState":Lio/grpc/util/MultiChildLoadBalancer$ChildLbState;
    :cond_2
    :goto_1
    iget-object v6, p0, Lio/grpc/util/MultiChildLoadBalancer;->childLbStates:Ljava/util/Map;

    invoke-interface {v6, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lio/grpc/util/MultiChildLoadBalancer$ChildLbState;

    .line 241
    .local v6, "childLbState":Lio/grpc/util/MultiChildLoadBalancer$ChildLbState;
    invoke-virtual {p0, v3, p1, v5}, Lio/grpc/util/MultiChildLoadBalancer;->getChildAddresses(Ljava/lang/Object;Lio/grpc/LoadBalancer$ResolvedAddresses;Ljava/lang/Object;)Lio/grpc/LoadBalancer$ResolvedAddresses;

    move-result-object v7

    .line 242
    .local v7, "childAddresses":Lio/grpc/LoadBalancer$ResolvedAddresses;
    iget-object v8, p0, Lio/grpc/util/MultiChildLoadBalancer;->childLbStates:Ljava/util/Map;

    invoke-interface {v8, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lio/grpc/util/MultiChildLoadBalancer$ChildLbState;

    invoke-virtual {v8, v7}, Lio/grpc/util/MultiChildLoadBalancer$ChildLbState;->setResolvedAddresses(Lio/grpc/LoadBalancer$ResolvedAddresses;)V

    .line 243
    invoke-static {v6}, Lio/grpc/util/MultiChildLoadBalancer$ChildLbState;->access$000(Lio/grpc/util/MultiChildLoadBalancer$ChildLbState;)Z

    move-result v8

    if-nez v8, :cond_3

    .line 244
    invoke-static {v6}, Lio/grpc/util/MultiChildLoadBalancer$ChildLbState;->access$100(Lio/grpc/util/MultiChildLoadBalancer$ChildLbState;)Lio/grpc/util/GracefulSwitchLoadBalancer;

    move-result-object v8

    invoke-virtual {v8, v7}, Lio/grpc/util/GracefulSwitchLoadBalancer;->handleResolvedAddresses(Lio/grpc/LoadBalancer$ResolvedAddresses;)V

    .line 246
    .end local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Object;Lio/grpc/util/MultiChildLoadBalancer$ChildLbState;>;"
    .end local v3    # "key":Ljava/lang/Object;
    .end local v4    # "childPolicyProvider":Lio/grpc/LoadBalancerProvider;
    .end local v5    # "childConfig":Ljava/lang/Object;
    .end local v6    # "childLbState":Lio/grpc/util/MultiChildLoadBalancer$ChildLbState;
    .end local v7    # "childAddresses":Lio/grpc/LoadBalancer$ResolvedAddresses;
    :cond_3
    goto :goto_0

    .line 248
    :cond_4
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 250
    .local v1, "removedChildren":Ljava/util/List;, "Ljava/util/List<Lio/grpc/util/MultiChildLoadBalancer$ChildLbState;>;"
    iget-object v2, p0, Lio/grpc/util/MultiChildLoadBalancer;->childLbStates:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-static {v2}, Lcom/google/common/collect/ImmutableList;->copyOf(Ljava/util/Collection;)Lcom/google/common/collect/ImmutableList;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/common/collect/ImmutableList;->iterator()Lcom/google/common/collect/UnmodifiableIterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 251
    .restart local v3    # "key":Ljava/lang/Object;
    invoke-interface {v0, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_5

    .line 252
    iget-object v4, p0, Lio/grpc/util/MultiChildLoadBalancer;->childLbStates:Ljava/util/Map;

    invoke-interface {v4, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lio/grpc/util/MultiChildLoadBalancer$ChildLbState;

    .line 253
    .local v4, "childLbState":Lio/grpc/util/MultiChildLoadBalancer$ChildLbState;
    invoke-virtual {v4}, Lio/grpc/util/MultiChildLoadBalancer$ChildLbState;->deactivate()V

    .line 254
    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 256
    .end local v3    # "key":Ljava/lang/Object;
    .end local v4    # "childLbState":Lio/grpc/util/MultiChildLoadBalancer$ChildLbState;
    :cond_5
    goto :goto_2

    .line 258
    :cond_6
    new-instance v2, Lio/grpc/util/MultiChildLoadBalancer$AcceptResolvedAddressRetVal;

    sget-object v3, Lio/grpc/Status;->OK:Lio/grpc/Status;

    invoke-direct {v2, v3, v1}, Lio/grpc/util/MultiChildLoadBalancer$AcceptResolvedAddressRetVal;-><init>(Lio/grpc/Status;Ljava/util/List;)V

    return-object v2
.end method

.method protected createChildLbMap(Lio/grpc/LoadBalancer$ResolvedAddresses;)Ljava/util/Map;
    .locals 8
    .param p1, "resolvedAddresses"    # Lio/grpc/LoadBalancer$ResolvedAddresses;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/grpc/LoadBalancer$ResolvedAddresses;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/Object;",
            "Lio/grpc/util/MultiChildLoadBalancer$ChildLbState;",
            ">;"
        }
    .end annotation

    .line 124
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 125
    .local v0, "childLbMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Object;Lio/grpc/util/MultiChildLoadBalancer$ChildLbState;>;"
    invoke-virtual {p1}, Lio/grpc/LoadBalancer$ResolvedAddresses;->getAddresses()Ljava/util/List;

    move-result-object v1

    .line 126
    .local v1, "addresses":Ljava/util/List;, "Ljava/util/List<Lio/grpc/EquivalentAddressGroup;>;"
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lio/grpc/EquivalentAddressGroup;

    .line 127
    .local v3, "eag":Lio/grpc/EquivalentAddressGroup;
    new-instance v4, Lio/grpc/util/MultiChildLoadBalancer$Endpoint;

    invoke-direct {v4, v3}, Lio/grpc/util/MultiChildLoadBalancer$Endpoint;-><init>(Lio/grpc/EquivalentAddressGroup;)V

    .line 128
    .local v4, "endpoint":Lio/grpc/util/MultiChildLoadBalancer$Endpoint;
    iget-object v5, p0, Lio/grpc/util/MultiChildLoadBalancer;->childLbStates:Ljava/util/Map;

    invoke-interface {v5, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lio/grpc/util/MultiChildLoadBalancer$ChildLbState;

    .line 129
    .local v5, "existingChildLbState":Lio/grpc/util/MultiChildLoadBalancer$ChildLbState;
    if-eqz v5, :cond_0

    .line 130
    invoke-interface {v0, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 132
    :cond_0
    nop

    .line 133
    invoke-virtual {p0}, Lio/grpc/util/MultiChildLoadBalancer;->getInitialPicker()Lio/grpc/LoadBalancer$SubchannelPicker;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {p0, v4, v7, v6, p1}, Lio/grpc/util/MultiChildLoadBalancer;->createChildLbState(Ljava/lang/Object;Ljava/lang/Object;Lio/grpc/LoadBalancer$SubchannelPicker;Lio/grpc/LoadBalancer$ResolvedAddresses;)Lio/grpc/util/MultiChildLoadBalancer$ChildLbState;

    move-result-object v6

    .line 132
    invoke-interface {v0, v4, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 135
    .end local v3    # "eag":Lio/grpc/EquivalentAddressGroup;
    .end local v4    # "endpoint":Lio/grpc/util/MultiChildLoadBalancer$Endpoint;
    .end local v5    # "existingChildLbState":Lio/grpc/util/MultiChildLoadBalancer$ChildLbState;
    :goto_1
    goto :goto_0

    .line 136
    :cond_1
    return-object v0
.end method

.method protected createChildLbState(Ljava/lang/Object;Ljava/lang/Object;Lio/grpc/LoadBalancer$SubchannelPicker;Lio/grpc/LoadBalancer$ResolvedAddresses;)Lio/grpc/util/MultiChildLoadBalancer$ChildLbState;
    .locals 6
    .param p1, "key"    # Ljava/lang/Object;
    .param p2, "policyConfig"    # Ljava/lang/Object;
    .param p3, "initialPicker"    # Lio/grpc/LoadBalancer$SubchannelPicker;
    .param p4, "resolvedAddresses"    # Lio/grpc/LoadBalancer$ResolvedAddresses;

    .line 144
    new-instance v0, Lio/grpc/util/MultiChildLoadBalancer$ChildLbState;

    iget-object v3, p0, Lio/grpc/util/MultiChildLoadBalancer;->pickFirstLbProvider:Lio/grpc/LoadBalancerProvider;

    move-object v1, p0

    move-object v2, p1

    move-object v4, p2

    move-object v5, p3

    .end local p1    # "key":Ljava/lang/Object;
    .end local p2    # "policyConfig":Ljava/lang/Object;
    .end local p3    # "initialPicker":Lio/grpc/LoadBalancer$SubchannelPicker;
    .local v2, "key":Ljava/lang/Object;
    .local v4, "policyConfig":Ljava/lang/Object;
    .local v5, "initialPicker":Lio/grpc/LoadBalancer$SubchannelPicker;
    invoke-direct/range {v0 .. v5}, Lio/grpc/util/MultiChildLoadBalancer$ChildLbState;-><init>(Lio/grpc/util/MultiChildLoadBalancer;Ljava/lang/Object;Lio/grpc/LoadBalancerProvider;Ljava/lang/Object;Lio/grpc/LoadBalancer$SubchannelPicker;)V

    return-object v0
.end method

.method protected getChildAddresses(Ljava/lang/Object;Lio/grpc/LoadBalancer$ResolvedAddresses;Ljava/lang/Object;)Lio/grpc/LoadBalancer$ResolvedAddresses;
    .locals 6
    .param p1, "key"    # Ljava/lang/Object;
    .param p2, "resolvedAddresses"    # Lio/grpc/LoadBalancer$ResolvedAddresses;
    .param p3, "childConfig"    # Ljava/lang/Object;

    .line 183
    instance-of v0, p1, Lio/grpc/EquivalentAddressGroup;

    if-eqz v0, :cond_0

    .line 184
    new-instance v0, Lio/grpc/util/MultiChildLoadBalancer$Endpoint;

    move-object v1, p1

    check-cast v1, Lio/grpc/EquivalentAddressGroup;

    invoke-direct {v0, v1}, Lio/grpc/util/MultiChildLoadBalancer$Endpoint;-><init>(Lio/grpc/EquivalentAddressGroup;)V

    .local v0, "endpointKey":Lio/grpc/util/MultiChildLoadBalancer$Endpoint;
    goto :goto_0

    .line 186
    .end local v0    # "endpointKey":Lio/grpc/util/MultiChildLoadBalancer$Endpoint;
    :cond_0
    instance-of v0, p1, Lio/grpc/util/MultiChildLoadBalancer$Endpoint;

    const-string v1, "key is wrong type"

    invoke-static {v0, v1}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 187
    move-object v0, p1

    check-cast v0, Lio/grpc/util/MultiChildLoadBalancer$Endpoint;

    .line 191
    .restart local v0    # "endpointKey":Lio/grpc/util/MultiChildLoadBalancer$Endpoint;
    :goto_0
    const/4 v1, 0x0

    .line 192
    .local v1, "eagToUse":Lio/grpc/EquivalentAddressGroup;
    invoke-virtual {p2}, Lio/grpc/LoadBalancer$ResolvedAddresses;->getAddresses()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lio/grpc/EquivalentAddressGroup;

    .line 193
    .local v3, "currEag":Lio/grpc/EquivalentAddressGroup;
    new-instance v4, Lio/grpc/util/MultiChildLoadBalancer$Endpoint;

    invoke-direct {v4, v3}, Lio/grpc/util/MultiChildLoadBalancer$Endpoint;-><init>(Lio/grpc/EquivalentAddressGroup;)V

    invoke-virtual {v0, v4}, Lio/grpc/util/MultiChildLoadBalancer$Endpoint;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 194
    move-object v1, v3

    .line 195
    goto :goto_2

    .line 197
    .end local v3    # "currEag":Lio/grpc/EquivalentAddressGroup;
    :cond_1
    goto :goto_1

    .line 199
    :cond_2
    :goto_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " no longer present in load balancer children"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 201
    invoke-virtual {p2}, Lio/grpc/LoadBalancer$ResolvedAddresses;->toBuilder()Lio/grpc/LoadBalancer$ResolvedAddresses$Builder;

    move-result-object v2

    .line 202
    invoke-static {v1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-virtual {v2, v3}, Lio/grpc/LoadBalancer$ResolvedAddresses$Builder;->setAddresses(Ljava/util/List;)Lio/grpc/LoadBalancer$ResolvedAddresses$Builder;

    move-result-object v2

    .line 203
    invoke-static {}, Lio/grpc/Attributes;->newBuilder()Lio/grpc/Attributes$Builder;

    move-result-object v3

    sget-object v4, Lio/grpc/util/MultiChildLoadBalancer;->IS_PETIOLE_POLICY:Lio/grpc/Attributes$Key;

    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lio/grpc/Attributes$Builder;->set(Lio/grpc/Attributes$Key;Ljava/lang/Object;)Lio/grpc/Attributes$Builder;

    move-result-object v3

    invoke-virtual {v3}, Lio/grpc/Attributes$Builder;->build()Lio/grpc/Attributes;

    move-result-object v3

    invoke-virtual {v2, v3}, Lio/grpc/LoadBalancer$ResolvedAddresses$Builder;->setAttributes(Lio/grpc/Attributes;)Lio/grpc/LoadBalancer$ResolvedAddresses$Builder;

    move-result-object v2

    .line 204
    invoke-virtual {v2, p3}, Lio/grpc/LoadBalancer$ResolvedAddresses$Builder;->setLoadBalancingPolicyConfig(Ljava/lang/Object;)Lio/grpc/LoadBalancer$ResolvedAddresses$Builder;

    move-result-object v2

    .line 205
    invoke-virtual {v2}, Lio/grpc/LoadBalancer$ResolvedAddresses$Builder;->build()Lio/grpc/LoadBalancer$ResolvedAddresses;

    move-result-object v2

    .line 201
    return-object v2
.end method

.method protected getChildLbState(Ljava/lang/Object;)Lio/grpc/util/MultiChildLoadBalancer$ChildLbState;
    .locals 2
    .param p1, "key"    # Ljava/lang/Object;

    .line 103
    if-nez p1, :cond_0

    .line 104
    const/4 v0, 0x0

    return-object v0

    .line 106
    :cond_0
    instance-of v0, p1, Lio/grpc/EquivalentAddressGroup;

    if-eqz v0, :cond_1

    .line 107
    new-instance v0, Lio/grpc/util/MultiChildLoadBalancer$Endpoint;

    move-object v1, p1

    check-cast v1, Lio/grpc/EquivalentAddressGroup;

    invoke-direct {v0, v1}, Lio/grpc/util/MultiChildLoadBalancer$Endpoint;-><init>(Lio/grpc/EquivalentAddressGroup;)V

    move-object p1, v0

    .line 109
    :cond_1
    iget-object v0, p0, Lio/grpc/util/MultiChildLoadBalancer;->childLbStates:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/grpc/util/MultiChildLoadBalancer$ChildLbState;

    return-object v0
.end method

.method protected getChildLbStateEag(Lio/grpc/EquivalentAddressGroup;)Lio/grpc/util/MultiChildLoadBalancer$ChildLbState;
    .locals 1
    .param p1, "eag"    # Lio/grpc/EquivalentAddressGroup;

    .line 117
    new-instance v0, Lio/grpc/util/MultiChildLoadBalancer$Endpoint;

    invoke-direct {v0, p1}, Lio/grpc/util/MultiChildLoadBalancer$Endpoint;-><init>(Lio/grpc/EquivalentAddressGroup;)V

    invoke-virtual {p0, v0}, Lio/grpc/util/MultiChildLoadBalancer;->getChildLbState(Ljava/lang/Object;)Lio/grpc/util/MultiChildLoadBalancer$ChildLbState;

    move-result-object v0

    return-object v0
.end method

.method protected getChildLbStates()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Lio/grpc/util/MultiChildLoadBalancer$ChildLbState;",
            ">;"
        }
    .end annotation

    .line 95
    iget-object v0, p0, Lio/grpc/util/MultiChildLoadBalancer;->childLbStates:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method protected getErrorPicker(Lio/grpc/Status;)Lio/grpc/LoadBalancer$SubchannelPicker;
    .locals 2
    .param p1, "error"    # Lio/grpc/Status;

    .line 82
    new-instance v0, Lio/grpc/LoadBalancer$FixedResultPicker;

    invoke-static {p1}, Lio/grpc/LoadBalancer$PickResult;->withError(Lio/grpc/Status;)Lio/grpc/LoadBalancer$PickResult;

    move-result-object v1

    invoke-direct {v0, v1}, Lio/grpc/LoadBalancer$FixedResultPicker;-><init>(Lio/grpc/LoadBalancer$PickResult;)V

    return-object v0
.end method

.method protected getHelper()Lio/grpc/LoadBalancer$Helper;
    .locals 1

    .line 343
    iget-object v0, p0, Lio/grpc/util/MultiChildLoadBalancer;->helper:Lio/grpc/LoadBalancer$Helper;

    return-object v0
.end method

.method protected getImmutableChildMap()Lcom/google/common/collect/ImmutableMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/ImmutableMap<",
            "Ljava/lang/Object;",
            "Lio/grpc/util/MultiChildLoadBalancer$ChildLbState;",
            ">;"
        }
    .end annotation

    .line 90
    iget-object v0, p0, Lio/grpc/util/MultiChildLoadBalancer;->childLbStates:Ljava/util/Map;

    invoke-static {v0}, Lcom/google/common/collect/ImmutableMap;->copyOf(Ljava/util/Map;)Lcom/google/common/collect/ImmutableMap;

    move-result-object v0

    return-object v0
.end method

.method protected getInitialPicker()Lio/grpc/LoadBalancer$SubchannelPicker;
    .locals 2

    .line 78
    new-instance v0, Lio/grpc/LoadBalancer$FixedResultPicker;

    invoke-static {}, Lio/grpc/LoadBalancer$PickResult;->withNoResult()Lio/grpc/LoadBalancer$PickResult;

    move-result-object v1

    invoke-direct {v0, v1}, Lio/grpc/LoadBalancer$FixedResultPicker;-><init>(Lio/grpc/LoadBalancer$PickResult;)V

    return-object v0
.end method

.method protected getReadyChildren()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lio/grpc/util/MultiChildLoadBalancer$ChildLbState;",
            ">;"
        }
    .end annotation

    .line 354
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 355
    .local v0, "activeChildren":Ljava/util/List;, "Ljava/util/List<Lio/grpc/util/MultiChildLoadBalancer$ChildLbState;>;"
    invoke-virtual {p0}, Lio/grpc/util/MultiChildLoadBalancer;->getChildLbStates()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lio/grpc/util/MultiChildLoadBalancer$ChildLbState;

    .line 356
    .local v2, "child":Lio/grpc/util/MultiChildLoadBalancer$ChildLbState;
    invoke-virtual {v2}, Lio/grpc/util/MultiChildLoadBalancer$ChildLbState;->isDeactivated()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {v2}, Lio/grpc/util/MultiChildLoadBalancer$ChildLbState;->getCurrentState()Lio/grpc/ConnectivityState;

    move-result-object v3

    sget-object v4, Lio/grpc/ConnectivityState;->READY:Lio/grpc/ConnectivityState;

    if-ne v3, v4, :cond_0

    .line 357
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 359
    .end local v2    # "child":Lio/grpc/util/MultiChildLoadBalancer$ChildLbState;
    :cond_0
    goto :goto_0

    .line 360
    :cond_1
    return-object v0
.end method

.method protected abstract getSubchannelPicker(Ljava/util/Map;)Lio/grpc/LoadBalancer$SubchannelPicker;
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
.end method

.method public handleNameResolutionError(Lio/grpc/Status;)V
    .locals 3
    .param p1, "error"    # Lio/grpc/Status;

    .line 271
    iget-object v0, p0, Lio/grpc/util/MultiChildLoadBalancer;->currentConnectivityState:Lio/grpc/ConnectivityState;

    sget-object v1, Lio/grpc/ConnectivityState;->READY:Lio/grpc/ConnectivityState;

    if-eq v0, v1, :cond_0

    .line 272
    iget-object v0, p0, Lio/grpc/util/MultiChildLoadBalancer;->helper:Lio/grpc/LoadBalancer$Helper;

    sget-object v1, Lio/grpc/ConnectivityState;->TRANSIENT_FAILURE:Lio/grpc/ConnectivityState;

    invoke-virtual {p0, p1}, Lio/grpc/util/MultiChildLoadBalancer;->getErrorPicker(Lio/grpc/Status;)Lio/grpc/LoadBalancer$SubchannelPicker;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lio/grpc/LoadBalancer$Helper;->updateBalancingState(Lio/grpc/ConnectivityState;Lio/grpc/LoadBalancer$SubchannelPicker;)V

    .line 274
    :cond_0
    return-void
.end method

.method protected handleNameResolutionError(Lio/grpc/util/MultiChildLoadBalancer$ChildLbState;Lio/grpc/Status;)V
    .locals 1
    .param p1, "child"    # Lio/grpc/util/MultiChildLoadBalancer$ChildLbState;
    .param p2, "error"    # Lio/grpc/Status;

    .line 277
    invoke-static {p1}, Lio/grpc/util/MultiChildLoadBalancer$ChildLbState;->access$100(Lio/grpc/util/MultiChildLoadBalancer$ChildLbState;)Lio/grpc/util/GracefulSwitchLoadBalancer;

    move-result-object v0

    invoke-virtual {v0, p2}, Lio/grpc/util/GracefulSwitchLoadBalancer;->handleNameResolutionError(Lio/grpc/Status;)V

    .line 278
    return-void
.end method

.method protected reactivateChildOnReuse()Z
    .locals 1

    .line 295
    const/4 v0, 0x1

    return v0
.end method

.method protected reconnectOnIdle()Z
    .locals 1

    .line 286
    const/4 v0, 0x1

    return v0
.end method

.method protected removeChild(Ljava/lang/Object;)V
    .locals 1
    .param p1, "key"    # Ljava/lang/Object;

    .line 347
    iget-object v0, p0, Lio/grpc/util/MultiChildLoadBalancer;->childLbStates:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 348
    return-void
.end method

.method public shutdown()V
    .locals 3

    .line 300
    sget-object v0, Lio/grpc/util/MultiChildLoadBalancer;->logger:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    const-string v2, "Shutdown"

    invoke-virtual {v0, v1, v2}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    .line 301
    iget-object v0, p0, Lio/grpc/util/MultiChildLoadBalancer;->childLbStates:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/grpc/util/MultiChildLoadBalancer$ChildLbState;

    .line 302
    .local v1, "state":Lio/grpc/util/MultiChildLoadBalancer$ChildLbState;
    invoke-virtual {v1}, Lio/grpc/util/MultiChildLoadBalancer$ChildLbState;->shutdown()V

    .line 303
    .end local v1    # "state":Lio/grpc/util/MultiChildLoadBalancer$ChildLbState;
    goto :goto_0

    .line 304
    :cond_0
    iget-object v0, p0, Lio/grpc/util/MultiChildLoadBalancer;->childLbStates:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 305
    return-void
.end method

.method protected shutdownRemoved(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lio/grpc/util/MultiChildLoadBalancer$ChildLbState;",
            ">;)V"
        }
    .end annotation

    .line 264
    .local p1, "removedChildren":Ljava/util/List;, "Ljava/util/List<Lio/grpc/util/MultiChildLoadBalancer$ChildLbState;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/grpc/util/MultiChildLoadBalancer$ChildLbState;

    .line 265
    .local v1, "childLbState":Lio/grpc/util/MultiChildLoadBalancer$ChildLbState;
    invoke-virtual {v1}, Lio/grpc/util/MultiChildLoadBalancer$ChildLbState;->shutdown()V

    .line 266
    .end local v1    # "childLbState":Lio/grpc/util/MultiChildLoadBalancer$ChildLbState;
    goto :goto_0

    .line 267
    :cond_0
    return-void
.end method

.method protected updateOverallBalancingState()V
    .locals 6

    .line 308
    const/4 v0, 0x0

    .line 309
    .local v0, "overallState":Lio/grpc/ConnectivityState;
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 310
    .local v1, "childPickers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Object;Lio/grpc/LoadBalancer$SubchannelPicker;>;"
    invoke-virtual {p0}, Lio/grpc/util/MultiChildLoadBalancer;->getChildLbStates()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lio/grpc/util/MultiChildLoadBalancer$ChildLbState;

    .line 311
    .local v3, "childLbState":Lio/grpc/util/MultiChildLoadBalancer$ChildLbState;
    invoke-static {v3}, Lio/grpc/util/MultiChildLoadBalancer$ChildLbState;->access$000(Lio/grpc/util/MultiChildLoadBalancer$ChildLbState;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 312
    goto :goto_0

    .line 314
    :cond_0
    invoke-static {v3}, Lio/grpc/util/MultiChildLoadBalancer$ChildLbState;->access$200(Lio/grpc/util/MultiChildLoadBalancer$ChildLbState;)Ljava/lang/Object;

    move-result-object v4

    invoke-static {v3}, Lio/grpc/util/MultiChildLoadBalancer$ChildLbState;->access$300(Lio/grpc/util/MultiChildLoadBalancer$ChildLbState;)Lio/grpc/LoadBalancer$SubchannelPicker;

    move-result-object v5

    invoke-interface {v1, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 315
    invoke-static {v3}, Lio/grpc/util/MultiChildLoadBalancer$ChildLbState;->access$400(Lio/grpc/util/MultiChildLoadBalancer$ChildLbState;)Lio/grpc/ConnectivityState;

    move-result-object v4

    invoke-static {v0, v4}, Lio/grpc/util/MultiChildLoadBalancer;->aggregateState(Lio/grpc/ConnectivityState;Lio/grpc/ConnectivityState;)Lio/grpc/ConnectivityState;

    move-result-object v0

    .line 316
    .end local v3    # "childLbState":Lio/grpc/util/MultiChildLoadBalancer$ChildLbState;
    goto :goto_0

    .line 318
    :cond_1
    if-eqz v0, :cond_2

    .line 319
    iget-object v2, p0, Lio/grpc/util/MultiChildLoadBalancer;->helper:Lio/grpc/LoadBalancer$Helper;

    invoke-virtual {p0, v1}, Lio/grpc/util/MultiChildLoadBalancer;->getSubchannelPicker(Ljava/util/Map;)Lio/grpc/LoadBalancer$SubchannelPicker;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Lio/grpc/LoadBalancer$Helper;->updateBalancingState(Lio/grpc/ConnectivityState;Lio/grpc/LoadBalancer$SubchannelPicker;)V

    .line 320
    iput-object v0, p0, Lio/grpc/util/MultiChildLoadBalancer;->currentConnectivityState:Lio/grpc/ConnectivityState;

    .line 322
    :cond_2
    return-void
.end method
