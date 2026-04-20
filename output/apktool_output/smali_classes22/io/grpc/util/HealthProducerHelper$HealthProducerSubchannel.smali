.class final Lio/grpc/util/HealthProducerHelper$HealthProducerSubchannel;
.super Lio/grpc/util/ForwardingSubchannel;
.source "HealthProducerHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/grpc/util/HealthProducerHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "HealthProducerSubchannel"
.end annotation


# instance fields
.field private final delegate:Lio/grpc/LoadBalancer$Subchannel;

.field private final healthListener:Lio/grpc/LoadBalancer$SubchannelStateListener;


# direct methods
.method constructor <init>(Lio/grpc/LoadBalancer$Subchannel;Lio/grpc/LoadBalancer$SubchannelStateListener;)V
    .locals 1
    .param p1, "delegate"    # Lio/grpc/LoadBalancer$Subchannel;
    .param p2, "healthListener"    # Lio/grpc/LoadBalancer$SubchannelStateListener;

    .line 95
    invoke-direct {p0}, Lio/grpc/util/ForwardingSubchannel;-><init>()V

    .line 96
    const-string v0, "delegate"

    invoke-static {p1, v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/grpc/LoadBalancer$Subchannel;

    iput-object v0, p0, Lio/grpc/util/HealthProducerHelper$HealthProducerSubchannel;->delegate:Lio/grpc/LoadBalancer$Subchannel;

    .line 97
    const-string v0, "healthListener"

    invoke-static {p2, v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/grpc/LoadBalancer$SubchannelStateListener;

    iput-object v0, p0, Lio/grpc/util/HealthProducerHelper$HealthProducerSubchannel;->healthListener:Lio/grpc/LoadBalancer$SubchannelStateListener;

    .line 98
    return-void
.end method

.method static synthetic access$000(Lio/grpc/util/HealthProducerHelper$HealthProducerSubchannel;)Lio/grpc/LoadBalancer$SubchannelStateListener;
    .locals 1
    .param p0, "x0"    # Lio/grpc/util/HealthProducerHelper$HealthProducerSubchannel;

    .line 90
    iget-object v0, p0, Lio/grpc/util/HealthProducerHelper$HealthProducerSubchannel;->healthListener:Lio/grpc/LoadBalancer$SubchannelStateListener;

    return-object v0
.end method


# virtual methods
.method public delegate()Lio/grpc/LoadBalancer$Subchannel;
    .locals 1

    .line 102
    iget-object v0, p0, Lio/grpc/util/HealthProducerHelper$HealthProducerSubchannel;->delegate:Lio/grpc/LoadBalancer$Subchannel;

    return-object v0
.end method

.method public getAttributes()Lio/grpc/Attributes;
    .locals 3

    .line 118
    invoke-super {p0}, Lio/grpc/util/ForwardingSubchannel;->getAttributes()Lio/grpc/Attributes;

    move-result-object v0

    invoke-virtual {v0}, Lio/grpc/Attributes;->toBuilder()Lio/grpc/Attributes$Builder;

    move-result-object v0

    sget-object v1, Lio/grpc/LoadBalancer;->HAS_HEALTH_PRODUCER_LISTENER_KEY:Lio/grpc/Attributes$Key;

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1, v2}, Lio/grpc/Attributes$Builder;->set(Lio/grpc/Attributes$Key;Ljava/lang/Object;)Lio/grpc/Attributes$Builder;

    move-result-object v0

    .line 119
    invoke-virtual {v0}, Lio/grpc/Attributes$Builder;->build()Lio/grpc/Attributes;

    move-result-object v0

    .line 118
    return-object v0
.end method

.method public start(Lio/grpc/LoadBalancer$SubchannelStateListener;)V
    .locals 2
    .param p1, "listener"    # Lio/grpc/LoadBalancer$SubchannelStateListener;

    .line 107
    iget-object v0, p0, Lio/grpc/util/HealthProducerHelper$HealthProducerSubchannel;->delegate:Lio/grpc/LoadBalancer$Subchannel;

    new-instance v1, Lio/grpc/util/HealthProducerHelper$HealthProducerSubchannel$1;

    invoke-direct {v1, p0, p1}, Lio/grpc/util/HealthProducerHelper$HealthProducerSubchannel$1;-><init>(Lio/grpc/util/HealthProducerHelper$HealthProducerSubchannel;Lio/grpc/LoadBalancer$SubchannelStateListener;)V

    invoke-virtual {v0, v1}, Lio/grpc/LoadBalancer$Subchannel;->start(Lio/grpc/LoadBalancer$SubchannelStateListener;)V

    .line 114
    return-void
.end method
