.class Lio/grpc/util/RoundRobinLoadBalancer$ReadyPicker;
.super Lio/grpc/LoadBalancer$SubchannelPicker;
.source "RoundRobinLoadBalancer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/grpc/util/RoundRobinLoadBalancer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ReadyPicker"
.end annotation


# instance fields
.field private final hashCode:I

.field private final index:Ljava/util/concurrent/atomic/AtomicInteger;

.field private final subchannelPickers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lio/grpc/LoadBalancer$SubchannelPicker;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/List;Ljava/util/concurrent/atomic/AtomicInteger;)V
    .locals 4
    .param p2, "index"    # Ljava/util/concurrent/atomic/AtomicInteger;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lio/grpc/LoadBalancer$SubchannelPicker;",
            ">;",
            "Ljava/util/concurrent/atomic/AtomicInteger;",
            ")V"
        }
    .end annotation

    .line 112
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Lio/grpc/LoadBalancer$SubchannelPicker;>;"
    invoke-direct {p0}, Lio/grpc/LoadBalancer$SubchannelPicker;-><init>()V

    .line 113
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    const-string v1, "empty list"

    invoke-static {v0, v1}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 114
    iput-object p1, p0, Lio/grpc/util/RoundRobinLoadBalancer$ReadyPicker;->subchannelPickers:Ljava/util/List;

    .line 115
    const-string v0, "index"

    invoke-static {p2, v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/atomic/AtomicInteger;

    iput-object v0, p0, Lio/grpc/util/RoundRobinLoadBalancer$ReadyPicker;->index:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 122
    const/4 v0, 0x0

    .line 123
    .local v0, "sum":I
    iget-object v1, p0, Lio/grpc/util/RoundRobinLoadBalancer$ReadyPicker;->subchannelPickers:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lio/grpc/LoadBalancer$SubchannelPicker;

    .line 124
    .local v2, "picker":Lio/grpc/LoadBalancer$SubchannelPicker;
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v3

    add-int/2addr v0, v3

    .line 125
    .end local v2    # "picker":Lio/grpc/LoadBalancer$SubchannelPicker;
    goto :goto_0

    .line 126
    :cond_0
    iput v0, p0, Lio/grpc/util/RoundRobinLoadBalancer$ReadyPicker;->hashCode:I

    .line 127
    return-void
.end method

.method private nextIndex()I
    .locals 2

    .line 142
    iget-object v0, p0, Lio/grpc/util/RoundRobinLoadBalancer$ReadyPicker;->index:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v0

    const v1, 0x7fffffff

    and-int/2addr v0, v1

    .line 143
    .local v0, "i":I
    iget-object v1, p0, Lio/grpc/util/RoundRobinLoadBalancer$ReadyPicker;->subchannelPickers:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    rem-int v1, v0, v1

    return v1
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;

    .line 158
    instance-of v0, p1, Lio/grpc/util/RoundRobinLoadBalancer$ReadyPicker;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 159
    return v1

    .line 161
    :cond_0
    move-object v0, p1

    check-cast v0, Lio/grpc/util/RoundRobinLoadBalancer$ReadyPicker;

    .line 162
    .local v0, "other":Lio/grpc/util/RoundRobinLoadBalancer$ReadyPicker;
    const/4 v2, 0x1

    if-ne v0, p0, :cond_1

    .line 163
    return v2

    .line 166
    :cond_1
    iget v3, p0, Lio/grpc/util/RoundRobinLoadBalancer$ReadyPicker;->hashCode:I

    iget v4, v0, Lio/grpc/util/RoundRobinLoadBalancer$ReadyPicker;->hashCode:I

    if-ne v3, v4, :cond_2

    iget-object v3, p0, Lio/grpc/util/RoundRobinLoadBalancer$ReadyPicker;->index:Ljava/util/concurrent/atomic/AtomicInteger;

    iget-object v4, v0, Lio/grpc/util/RoundRobinLoadBalancer$ReadyPicker;->index:Ljava/util/concurrent/atomic/AtomicInteger;

    if-ne v3, v4, :cond_2

    iget-object v3, p0, Lio/grpc/util/RoundRobinLoadBalancer$ReadyPicker;->subchannelPickers:Ljava/util/List;

    .line 168
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    iget-object v4, v0, Lio/grpc/util/RoundRobinLoadBalancer$ReadyPicker;->subchannelPickers:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ne v3, v4, :cond_2

    new-instance v3, Ljava/util/HashSet;

    iget-object v4, p0, Lio/grpc/util/RoundRobinLoadBalancer$ReadyPicker;->subchannelPickers:Ljava/util/List;

    invoke-direct {v3, v4}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    iget-object v4, v0, Lio/grpc/util/RoundRobinLoadBalancer$ReadyPicker;->subchannelPickers:Ljava/util/List;

    .line 169
    invoke-virtual {v3, v4}, Ljava/util/HashSet;->containsAll(Ljava/util/Collection;)Z

    move-result v3

    if-eqz v3, :cond_2

    move v1, v2

    goto :goto_0

    :cond_2
    nop

    .line 166
    :goto_0
    return v1
.end method

.method getSubchannelPickers()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lio/grpc/LoadBalancer$SubchannelPicker;",
            ">;"
        }
    .end annotation

    .line 148
    iget-object v0, p0, Lio/grpc/util/RoundRobinLoadBalancer$ReadyPicker;->subchannelPickers:Ljava/util/List;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .line 153
    iget v0, p0, Lio/grpc/util/RoundRobinLoadBalancer$ReadyPicker;->hashCode:I

    return v0
.end method

.method public pickSubchannel(Lio/grpc/LoadBalancer$PickSubchannelArgs;)Lio/grpc/LoadBalancer$PickResult;
    .locals 2
    .param p1, "args"    # Lio/grpc/LoadBalancer$PickSubchannelArgs;

    .line 131
    iget-object v0, p0, Lio/grpc/util/RoundRobinLoadBalancer$ReadyPicker;->subchannelPickers:Ljava/util/List;

    invoke-direct {p0}, Lio/grpc/util/RoundRobinLoadBalancer$ReadyPicker;->nextIndex()I

    move-result v1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/grpc/LoadBalancer$SubchannelPicker;

    invoke-virtual {v0, p1}, Lio/grpc/LoadBalancer$SubchannelPicker;->pickSubchannel(Lio/grpc/LoadBalancer$PickSubchannelArgs;)Lio/grpc/LoadBalancer$PickResult;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 136
    const-class v0, Lio/grpc/util/RoundRobinLoadBalancer$ReadyPicker;

    invoke-static {v0}, Lcom/google/common/base/MoreObjects;->toStringHelper(Ljava/lang/Class;)Lcom/google/common/base/MoreObjects$ToStringHelper;

    move-result-object v0

    iget-object v1, p0, Lio/grpc/util/RoundRobinLoadBalancer$ReadyPicker;->subchannelPickers:Ljava/util/List;

    .line 137
    const-string v2, "subchannelPickers"

    invoke-virtual {v0, v2, v1}, Lcom/google/common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/MoreObjects$ToStringHelper;

    move-result-object v0

    .line 138
    invoke-virtual {v0}, Lcom/google/common/base/MoreObjects$ToStringHelper;->toString()Ljava/lang/String;

    move-result-object v0

    .line 136
    return-object v0
.end method
