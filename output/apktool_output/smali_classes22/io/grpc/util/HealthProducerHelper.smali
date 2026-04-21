.class public final Lio/grpc/util/HealthProducerHelper;
.super Lio/grpc/util/ForwardingLoadBalancerHelper;
.source "HealthProducerHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/grpc/util/HealthProducerHelper$HealthProducerSubchannel;
    }
.end annotation


# instance fields
.field private final delegate:Lio/grpc/LoadBalancer$Helper;


# direct methods
.method public constructor <init>(Lio/grpc/LoadBalancer$Helper;)V
    .locals 1
    .param p1, "helper"    # Lio/grpc/LoadBalancer$Helper;

    .line 65
    invoke-direct {p0}, Lio/grpc/util/ForwardingLoadBalancerHelper;-><init>()V

    .line 66
    const-string v0, "helper"

    invoke-static {p1, v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/grpc/LoadBalancer$Helper;

    iput-object v0, p0, Lio/grpc/util/HealthProducerHelper;->delegate:Lio/grpc/LoadBalancer$Helper;

    .line 67
    return-void
.end method


# virtual methods
.method public createSubchannel(Lio/grpc/LoadBalancer$CreateSubchannelArgs;)Lio/grpc/LoadBalancer$Subchannel;
    .locals 4
    .param p1, "args"    # Lio/grpc/LoadBalancer$CreateSubchannelArgs;

    .line 71
    sget-object v0, Lio/grpc/LoadBalancer;->HEALTH_CONSUMER_LISTENER_ARG_KEY:Lio/grpc/LoadBalancer$CreateSubchannelArgs$Key;

    .line 72
    invoke-virtual {p1, v0}, Lio/grpc/LoadBalancer$CreateSubchannelArgs;->getOption(Lio/grpc/LoadBalancer$CreateSubchannelArgs$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/grpc/LoadBalancer$SubchannelStateListener;

    .line 73
    .local v0, "healthConsumerListener":Lio/grpc/LoadBalancer$SubchannelStateListener;
    invoke-super {p0, p1}, Lio/grpc/util/ForwardingLoadBalancerHelper;->createSubchannel(Lio/grpc/LoadBalancer$CreateSubchannelArgs;)Lio/grpc/LoadBalancer$Subchannel;

    move-result-object v1

    .line 74
    .local v1, "delegateSubchannel":Lio/grpc/LoadBalancer$Subchannel;
    if-eqz v0, :cond_0

    .line 75
    invoke-virtual {v1}, Lio/grpc/LoadBalancer$Subchannel;->getAttributes()Lio/grpc/Attributes;

    move-result-object v2

    sget-object v3, Lio/grpc/LoadBalancer;->HAS_HEALTH_PRODUCER_LISTENER_KEY:Lio/grpc/Attributes$Key;

    invoke-virtual {v2, v3}, Lio/grpc/Attributes;->get(Lio/grpc/Attributes$Key;)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 76
    .local v2, "alreadyParent":Z
    :goto_0
    if-nez v2, :cond_1

    .line 77
    return-object v1

    .line 79
    :cond_1
    new-instance v3, Lio/grpc/util/HealthProducerHelper$HealthProducerSubchannel;

    invoke-direct {v3, v1, v0}, Lio/grpc/util/HealthProducerHelper$HealthProducerSubchannel;-><init>(Lio/grpc/LoadBalancer$Subchannel;Lio/grpc/LoadBalancer$SubchannelStateListener;)V

    return-object v3
.end method

.method protected delegate()Lio/grpc/LoadBalancer$Helper;
    .locals 1

    .line 84
    iget-object v0, p0, Lio/grpc/util/HealthProducerHelper;->delegate:Lio/grpc/LoadBalancer$Helper;

    return-object v0
.end method
