.class final Lio/grpc/internal/PickFirstLeafLoadBalancer;
.super Lio/grpc/LoadBalancer;
.source "PickFirstLeafLoadBalancer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/grpc/internal/PickFirstLeafLoadBalancer$PickFirstLeafLoadBalancerConfig;,
        Lio/grpc/internal/PickFirstLeafLoadBalancer$SubchannelData;,
        Lio/grpc/internal/PickFirstLeafLoadBalancer$Index;,
        Lio/grpc/internal/PickFirstLeafLoadBalancer$RequestConnectionPicker;,
        Lio/grpc/internal/PickFirstLeafLoadBalancer$Picker;,
        Lio/grpc/internal/PickFirstLeafLoadBalancer$HealthListener;
    }
.end annotation


# static fields
.field static final CONNECTION_DELAY_INTERVAL_MS:I = 0xfa

.field public static final GRPC_EXPERIMENTAL_XDS_DUALSTACK_ENDPOINTS:Ljava/lang/String; = "GRPC_EXPERIMENTAL_XDS_DUALSTACK_ENDPOINTS"

.field private static final log:Ljava/util/logging/Logger;


# instance fields
.field private addressIndex:Lio/grpc/internal/PickFirstLeafLoadBalancer$Index;

.field private concludedState:Lio/grpc/ConnectivityState;

.field private final enableHappyEyeballs:Z

.field private firstPass:Z

.field private final helper:Lio/grpc/LoadBalancer$Helper;

.field private numTf:I

.field private rawConnectivityState:Lio/grpc/ConnectivityState;

.field private scheduleConnectionTask:Lio/grpc/SynchronizationContext$ScheduledHandle;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private final subchannels:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/net/SocketAddress;",
            "Lio/grpc/internal/PickFirstLeafLoadBalancer$SubchannelData;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 60
    const-class v0, Lio/grpc/internal/PickFirstLeafLoadBalancer;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lio/grpc/internal/PickFirstLeafLoadBalancer;->log:Ljava/util/logging/Logger;

    return-void
.end method

.method constructor <init>(Lio/grpc/LoadBalancer$Helper;)V
    .locals 2
    .param p1, "helper"    # Lio/grpc/LoadBalancer$Helper;

    .line 77
    invoke-direct {p0}, Lio/grpc/LoadBalancer;-><init>()V

    .line 66
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lio/grpc/internal/PickFirstLeafLoadBalancer;->subchannels:Ljava/util/Map;

    .line 68
    const/4 v0, 0x0

    iput v0, p0, Lio/grpc/internal/PickFirstLeafLoadBalancer;->numTf:I

    .line 69
    const/4 v1, 0x1

    iput-boolean v1, p0, Lio/grpc/internal/PickFirstLeafLoadBalancer;->firstPass:Z

    .line 72
    sget-object v1, Lio/grpc/ConnectivityState;->IDLE:Lio/grpc/ConnectivityState;

    iput-object v1, p0, Lio/grpc/internal/PickFirstLeafLoadBalancer;->rawConnectivityState:Lio/grpc/ConnectivityState;

    .line 73
    sget-object v1, Lio/grpc/ConnectivityState;->IDLE:Lio/grpc/ConnectivityState;

    iput-object v1, p0, Lio/grpc/internal/PickFirstLeafLoadBalancer;->concludedState:Lio/grpc/ConnectivityState;

    .line 74
    nop

    .line 75
    const-string v1, "GRPC_EXPERIMENTAL_XDS_DUALSTACK_ENDPOINTS"

    invoke-static {v1, v0}, Lio/grpc/internal/GrpcUtil;->getFlag(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lio/grpc/internal/PickFirstLeafLoadBalancer;->enableHappyEyeballs:Z

    .line 78
    const-string v0, "helper"

    invoke-static {p1, v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/grpc/LoadBalancer$Helper;

    iput-object v0, p0, Lio/grpc/internal/PickFirstLeafLoadBalancer;->helper:Lio/grpc/LoadBalancer$Helper;

    .line 79
    return-void
.end method

.method static synthetic access$1000()Ljava/util/logging/Logger;
    .locals 1

    .line 59
    sget-object v0, Lio/grpc/internal/PickFirstLeafLoadBalancer;->log:Ljava/util/logging/Logger;

    return-object v0
.end method

.method static synthetic access$1100(Lio/grpc/internal/PickFirstLeafLoadBalancer;)Ljava/util/Map;
    .locals 1
    .param p0, "x0"    # Lio/grpc/internal/PickFirstLeafLoadBalancer;

    .line 59
    iget-object v0, p0, Lio/grpc/internal/PickFirstLeafLoadBalancer;->subchannels:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$1200(Lio/grpc/internal/PickFirstLeafLoadBalancer;Lio/grpc/internal/PickFirstLeafLoadBalancer$SubchannelData;)V
    .locals 0
    .param p0, "x0"    # Lio/grpc/internal/PickFirstLeafLoadBalancer;
    .param p1, "x1"    # Lio/grpc/internal/PickFirstLeafLoadBalancer$SubchannelData;

    .line 59
    invoke-direct {p0, p1}, Lio/grpc/internal/PickFirstLeafLoadBalancer;->updateHealthCheckedState(Lio/grpc/internal/PickFirstLeafLoadBalancer$SubchannelData;)V

    return-void
.end method

.method static synthetic access$1300(Lio/grpc/internal/PickFirstLeafLoadBalancer;)Lio/grpc/LoadBalancer$Helper;
    .locals 1
    .param p0, "x0"    # Lio/grpc/internal/PickFirstLeafLoadBalancer;

    .line 59
    iget-object v0, p0, Lio/grpc/internal/PickFirstLeafLoadBalancer;->helper:Lio/grpc/LoadBalancer$Helper;

    return-object v0
.end method

.method static synthetic access$602(Lio/grpc/internal/PickFirstLeafLoadBalancer;Lio/grpc/SynchronizationContext$ScheduledHandle;)Lio/grpc/SynchronizationContext$ScheduledHandle;
    .locals 0
    .param p0, "x0"    # Lio/grpc/internal/PickFirstLeafLoadBalancer;
    .param p1, "x1"    # Lio/grpc/SynchronizationContext$ScheduledHandle;

    .line 59
    iput-object p1, p0, Lio/grpc/internal/PickFirstLeafLoadBalancer;->scheduleConnectionTask:Lio/grpc/SynchronizationContext$ScheduledHandle;

    return-object p1
.end method

.method static synthetic access$700(Lio/grpc/internal/PickFirstLeafLoadBalancer;)Lio/grpc/internal/PickFirstLeafLoadBalancer$Index;
    .locals 1
    .param p0, "x0"    # Lio/grpc/internal/PickFirstLeafLoadBalancer;

    .line 59
    iget-object v0, p0, Lio/grpc/internal/PickFirstLeafLoadBalancer;->addressIndex:Lio/grpc/internal/PickFirstLeafLoadBalancer$Index;

    return-object v0
.end method

.method private cancelScheduleTask()V
    .locals 1

    .line 415
    iget-object v0, p0, Lio/grpc/internal/PickFirstLeafLoadBalancer;->scheduleConnectionTask:Lio/grpc/SynchronizationContext$ScheduledHandle;

    if-eqz v0, :cond_0

    .line 416
    iget-object v0, p0, Lio/grpc/internal/PickFirstLeafLoadBalancer;->scheduleConnectionTask:Lio/grpc/SynchronizationContext$ScheduledHandle;

    invoke-virtual {v0}, Lio/grpc/SynchronizationContext$ScheduledHandle;->cancel()V

    .line 417
    const/4 v0, 0x0

    iput-object v0, p0, Lio/grpc/internal/PickFirstLeafLoadBalancer;->scheduleConnectionTask:Lio/grpc/SynchronizationContext$ScheduledHandle;

    .line 419
    :cond_0
    return-void
.end method

.method private createNewSubchannel(Ljava/net/SocketAddress;)Lio/grpc/LoadBalancer$Subchannel;
    .locals 6
    .param p1, "addr"    # Ljava/net/SocketAddress;

    .line 422
    new-instance v0, Lio/grpc/internal/PickFirstLeafLoadBalancer$HealthListener;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lio/grpc/internal/PickFirstLeafLoadBalancer$HealthListener;-><init>(Lio/grpc/internal/PickFirstLeafLoadBalancer;Lio/grpc/internal/PickFirstLeafLoadBalancer$1;)V

    .line 423
    .local v0, "hcListener":Lio/grpc/internal/PickFirstLeafLoadBalancer$HealthListener;
    iget-object v1, p0, Lio/grpc/internal/PickFirstLeafLoadBalancer;->helper:Lio/grpc/LoadBalancer$Helper;

    .line 424
    invoke-static {}, Lio/grpc/LoadBalancer$CreateSubchannelArgs;->newBuilder()Lio/grpc/LoadBalancer$CreateSubchannelArgs$Builder;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Lio/grpc/EquivalentAddressGroup;

    new-instance v4, Lio/grpc/EquivalentAddressGroup;

    invoke-direct {v4, p1}, Lio/grpc/EquivalentAddressGroup;-><init>(Ljava/net/SocketAddress;)V

    const/4 v5, 0x0

    aput-object v4, v3, v5

    .line 425
    invoke-static {v3}, Lcom/google/common/collect/Lists;->newArrayList([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v2, v3}, Lio/grpc/LoadBalancer$CreateSubchannelArgs$Builder;->setAddresses(Ljava/util/List;)Lio/grpc/LoadBalancer$CreateSubchannelArgs$Builder;

    move-result-object v2

    sget-object v3, Lio/grpc/internal/PickFirstLeafLoadBalancer;->HEALTH_CONSUMER_LISTENER_ARG_KEY:Lio/grpc/LoadBalancer$CreateSubchannelArgs$Key;

    .line 427
    invoke-virtual {v2, v3, v0}, Lio/grpc/LoadBalancer$CreateSubchannelArgs$Builder;->addOption(Lio/grpc/LoadBalancer$CreateSubchannelArgs$Key;Ljava/lang/Object;)Lio/grpc/LoadBalancer$CreateSubchannelArgs$Builder;

    move-result-object v2

    .line 428
    invoke-virtual {v2}, Lio/grpc/LoadBalancer$CreateSubchannelArgs$Builder;->build()Lio/grpc/LoadBalancer$CreateSubchannelArgs;

    move-result-object v2

    .line 423
    invoke-virtual {v1, v2}, Lio/grpc/LoadBalancer$Helper;->createSubchannel(Lio/grpc/LoadBalancer$CreateSubchannelArgs;)Lio/grpc/LoadBalancer$Subchannel;

    move-result-object v1

    .line 429
    .local v1, "subchannel":Lio/grpc/LoadBalancer$Subchannel;
    if-eqz v1, :cond_1

    .line 433
    new-instance v2, Lio/grpc/internal/PickFirstLeafLoadBalancer$SubchannelData;

    sget-object v3, Lio/grpc/ConnectivityState;->IDLE:Lio/grpc/ConnectivityState;

    invoke-direct {v2, v1, v3, v0}, Lio/grpc/internal/PickFirstLeafLoadBalancer$SubchannelData;-><init>(Lio/grpc/LoadBalancer$Subchannel;Lio/grpc/ConnectivityState;Lio/grpc/internal/PickFirstLeafLoadBalancer$HealthListener;)V

    .line 434
    .local v2, "subchannelData":Lio/grpc/internal/PickFirstLeafLoadBalancer$SubchannelData;
    invoke-static {v0, v2}, Lio/grpc/internal/PickFirstLeafLoadBalancer$HealthListener;->access$902(Lio/grpc/internal/PickFirstLeafLoadBalancer$HealthListener;Lio/grpc/internal/PickFirstLeafLoadBalancer$SubchannelData;)Lio/grpc/internal/PickFirstLeafLoadBalancer$SubchannelData;

    .line 435
    iget-object v3, p0, Lio/grpc/internal/PickFirstLeafLoadBalancer;->subchannels:Ljava/util/Map;

    invoke-interface {v3, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 436
    invoke-virtual {v1}, Lio/grpc/LoadBalancer$Subchannel;->getAttributes()Lio/grpc/Attributes;

    move-result-object v3

    .line 437
    .local v3, "attrs":Lio/grpc/Attributes;
    sget-object v4, Lio/grpc/LoadBalancer;->HAS_HEALTH_PRODUCER_LISTENER_KEY:Lio/grpc/Attributes$Key;

    invoke-virtual {v3, v4}, Lio/grpc/Attributes;->get(Lio/grpc/Attributes$Key;)Ljava/lang/Object;

    move-result-object v4

    if-nez v4, :cond_0

    .line 438
    sget-object v4, Lio/grpc/ConnectivityState;->READY:Lio/grpc/ConnectivityState;

    invoke-static {v4}, Lio/grpc/ConnectivityStateInfo;->forNonError(Lio/grpc/ConnectivityState;)Lio/grpc/ConnectivityStateInfo;

    move-result-object v4

    invoke-static {v0, v4}, Lio/grpc/internal/PickFirstLeafLoadBalancer$HealthListener;->access$502(Lio/grpc/internal/PickFirstLeafLoadBalancer$HealthListener;Lio/grpc/ConnectivityStateInfo;)Lio/grpc/ConnectivityStateInfo;

    .line 440
    :cond_0
    new-instance v4, Lio/grpc/internal/PickFirstLeafLoadBalancer$$ExternalSyntheticLambda0;

    invoke-direct {v4, p0, v1}, Lio/grpc/internal/PickFirstLeafLoadBalancer$$ExternalSyntheticLambda0;-><init>(Lio/grpc/internal/PickFirstLeafLoadBalancer;Lio/grpc/LoadBalancer$Subchannel;)V

    invoke-virtual {v1, v4}, Lio/grpc/LoadBalancer$Subchannel;->start(Lio/grpc/LoadBalancer$SubchannelStateListener;)V

    .line 441
    return-object v1

    .line 430
    .end local v2    # "subchannelData":Lio/grpc/internal/PickFirstLeafLoadBalancer$SubchannelData;
    .end local v3    # "attrs":Lio/grpc/Attributes;
    :cond_1
    sget-object v2, Lio/grpc/internal/PickFirstLeafLoadBalancer;->log:Ljava/util/logging/Logger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Was not able to create subchannel for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    .line 431
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "Can\'t create subchannel"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method private getAddress(Lio/grpc/LoadBalancer$Subchannel;)Ljava/net/SocketAddress;
    .locals 2
    .param p1, "subchannel"    # Lio/grpc/LoadBalancer$Subchannel;

    .line 474
    invoke-virtual {p1}, Lio/grpc/LoadBalancer$Subchannel;->getAddresses()Lio/grpc/EquivalentAddressGroup;

    move-result-object v0

    invoke-virtual {v0}, Lio/grpc/EquivalentAddressGroup;->getAddresses()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/net/SocketAddress;

    return-object v0
.end method

.method private isPassComplete()Z
    .locals 4

    .line 445
    iget-object v0, p0, Lio/grpc/internal/PickFirstLeafLoadBalancer;->addressIndex:Lio/grpc/internal/PickFirstLeafLoadBalancer$Index;

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lio/grpc/internal/PickFirstLeafLoadBalancer;->addressIndex:Lio/grpc/internal/PickFirstLeafLoadBalancer$Index;

    invoke-virtual {v0}, Lio/grpc/internal/PickFirstLeafLoadBalancer$Index;->isValid()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lio/grpc/internal/PickFirstLeafLoadBalancer;->subchannels:Ljava/util/Map;

    .line 446
    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    iget-object v2, p0, Lio/grpc/internal/PickFirstLeafLoadBalancer;->addressIndex:Lio/grpc/internal/PickFirstLeafLoadBalancer$Index;

    invoke-virtual {v2}, Lio/grpc/internal/PickFirstLeafLoadBalancer$Index;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    goto :goto_1

    .line 449
    :cond_0
    iget-object v0, p0, Lio/grpc/internal/PickFirstLeafLoadBalancer;->subchannels:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lio/grpc/internal/PickFirstLeafLoadBalancer$SubchannelData;

    .line 450
    .local v2, "sc":Lio/grpc/internal/PickFirstLeafLoadBalancer$SubchannelData;
    invoke-virtual {v2}, Lio/grpc/internal/PickFirstLeafLoadBalancer$SubchannelData;->isCompletedConnectivityAttempt()Z

    move-result v3

    if-nez v3, :cond_1

    .line 451
    return v1

    .line 453
    .end local v2    # "sc":Lio/grpc/internal/PickFirstLeafLoadBalancer$SubchannelData;
    :cond_1
    goto :goto_0

    .line 454
    :cond_2
    const/4 v0, 0x1

    return v0

    .line 447
    :cond_3
    :goto_1
    return v1
.end method

.method private scheduleNextConnection()V
    .locals 7

    .line 392
    iget-boolean v0, p0, Lio/grpc/internal/PickFirstLeafLoadBalancer;->enableHappyEyeballs:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lio/grpc/internal/PickFirstLeafLoadBalancer;->scheduleConnectionTask:Lio/grpc/SynchronizationContext$ScheduledHandle;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lio/grpc/internal/PickFirstLeafLoadBalancer;->scheduleConnectionTask:Lio/grpc/SynchronizationContext$ScheduledHandle;

    .line 393
    invoke-virtual {v0}, Lio/grpc/SynchronizationContext$ScheduledHandle;->isPending()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 407
    :cond_0
    iget-object v0, p0, Lio/grpc/internal/PickFirstLeafLoadBalancer;->helper:Lio/grpc/LoadBalancer$Helper;

    invoke-virtual {v0}, Lio/grpc/LoadBalancer$Helper;->getSynchronizationContext()Lio/grpc/SynchronizationContext;

    move-result-object v1

    new-instance v2, Lio/grpc/internal/PickFirstLeafLoadBalancer$1StartNextConnection;

    invoke-direct {v2, p0}, Lio/grpc/internal/PickFirstLeafLoadBalancer$1StartNextConnection;-><init>(Lio/grpc/internal/PickFirstLeafLoadBalancer;)V

    sget-object v5, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    iget-object v0, p0, Lio/grpc/internal/PickFirstLeafLoadBalancer;->helper:Lio/grpc/LoadBalancer$Helper;

    .line 411
    invoke-virtual {v0}, Lio/grpc/LoadBalancer$Helper;->getScheduledExecutorService()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v6

    .line 407
    const-wide/16 v3, 0xfa

    invoke-virtual/range {v1 .. v6}, Lio/grpc/SynchronizationContext;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/ScheduledExecutorService;)Lio/grpc/SynchronizationContext$ScheduledHandle;

    move-result-object v0

    iput-object v0, p0, Lio/grpc/internal/PickFirstLeafLoadBalancer;->scheduleConnectionTask:Lio/grpc/SynchronizationContext$ScheduledHandle;

    .line 412
    return-void

    .line 394
    :cond_1
    :goto_0
    return-void
.end method

.method private shutdownRemaining(Lio/grpc/internal/PickFirstLeafLoadBalancer$SubchannelData;)V
    .locals 4
    .param p1, "activeSubchannelData"    # Lio/grpc/internal/PickFirstLeafLoadBalancer$SubchannelData;

    .line 328
    invoke-direct {p0}, Lio/grpc/internal/PickFirstLeafLoadBalancer;->cancelScheduleTask()V

    .line 329
    iget-object v0, p0, Lio/grpc/internal/PickFirstLeafLoadBalancer;->subchannels:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/grpc/internal/PickFirstLeafLoadBalancer$SubchannelData;

    .line 330
    .local v1, "subchannelData":Lio/grpc/internal/PickFirstLeafLoadBalancer$SubchannelData;
    invoke-virtual {v1}, Lio/grpc/internal/PickFirstLeafLoadBalancer$SubchannelData;->getSubchannel()Lio/grpc/LoadBalancer$Subchannel;

    move-result-object v2

    invoke-static {p1}, Lio/grpc/internal/PickFirstLeafLoadBalancer$SubchannelData;->access$300(Lio/grpc/internal/PickFirstLeafLoadBalancer$SubchannelData;)Lio/grpc/LoadBalancer$Subchannel;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 331
    invoke-virtual {v1}, Lio/grpc/internal/PickFirstLeafLoadBalancer$SubchannelData;->getSubchannel()Lio/grpc/LoadBalancer$Subchannel;

    move-result-object v2

    invoke-virtual {v2}, Lio/grpc/LoadBalancer$Subchannel;->shutdown()V

    .line 333
    .end local v1    # "subchannelData":Lio/grpc/internal/PickFirstLeafLoadBalancer$SubchannelData;
    :cond_0
    goto :goto_0

    .line 334
    :cond_1
    iget-object v0, p0, Lio/grpc/internal/PickFirstLeafLoadBalancer;->subchannels:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 335
    sget-object v0, Lio/grpc/ConnectivityState;->READY:Lio/grpc/ConnectivityState;

    invoke-static {p1, v0}, Lio/grpc/internal/PickFirstLeafLoadBalancer$SubchannelData;->access$000(Lio/grpc/internal/PickFirstLeafLoadBalancer$SubchannelData;Lio/grpc/ConnectivityState;)V

    .line 336
    iget-object v0, p0, Lio/grpc/internal/PickFirstLeafLoadBalancer;->subchannels:Ljava/util/Map;

    invoke-static {p1}, Lio/grpc/internal/PickFirstLeafLoadBalancer$SubchannelData;->access$300(Lio/grpc/internal/PickFirstLeafLoadBalancer$SubchannelData;)Lio/grpc/LoadBalancer$Subchannel;

    move-result-object v1

    invoke-direct {p0, v1}, Lio/grpc/internal/PickFirstLeafLoadBalancer;->getAddress(Lio/grpc/LoadBalancer$Subchannel;)Ljava/net/SocketAddress;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 337
    return-void
.end method

.method private updateBalancingState(Lio/grpc/ConnectivityState;Lio/grpc/LoadBalancer$SubchannelPicker;)V
    .locals 1
    .param p1, "state"    # Lio/grpc/ConnectivityState;
    .param p2, "picker"    # Lio/grpc/LoadBalancer$SubchannelPicker;

    .line 301
    iget-object v0, p0, Lio/grpc/internal/PickFirstLeafLoadBalancer;->concludedState:Lio/grpc/ConnectivityState;

    if-ne p1, v0, :cond_1

    sget-object v0, Lio/grpc/ConnectivityState;->IDLE:Lio/grpc/ConnectivityState;

    if-eq p1, v0, :cond_0

    sget-object v0, Lio/grpc/ConnectivityState;->CONNECTING:Lio/grpc/ConnectivityState;

    if-ne p1, v0, :cond_1

    .line 302
    :cond_0
    return-void

    .line 304
    :cond_1
    iput-object p1, p0, Lio/grpc/internal/PickFirstLeafLoadBalancer;->concludedState:Lio/grpc/ConnectivityState;

    .line 305
    iget-object v0, p0, Lio/grpc/internal/PickFirstLeafLoadBalancer;->helper:Lio/grpc/LoadBalancer$Helper;

    invoke-virtual {v0, p1, p2}, Lio/grpc/LoadBalancer$Helper;->updateBalancingState(Lio/grpc/ConnectivityState;Lio/grpc/LoadBalancer$SubchannelPicker;)V

    .line 306
    return-void
.end method

.method private updateHealthCheckedState(Lio/grpc/internal/PickFirstLeafLoadBalancer$SubchannelData;)V
    .locals 3
    .param p1, "subchannelData"    # Lio/grpc/internal/PickFirstLeafLoadBalancer$SubchannelData;

    .line 284
    invoke-static {p1}, Lio/grpc/internal/PickFirstLeafLoadBalancer$SubchannelData;->access$100(Lio/grpc/internal/PickFirstLeafLoadBalancer$SubchannelData;)Lio/grpc/ConnectivityState;

    move-result-object v0

    sget-object v1, Lio/grpc/ConnectivityState;->READY:Lio/grpc/ConnectivityState;

    if-eq v0, v1, :cond_0

    .line 285
    return-void

    .line 287
    :cond_0
    invoke-static {p1}, Lio/grpc/internal/PickFirstLeafLoadBalancer$SubchannelData;->access$200(Lio/grpc/internal/PickFirstLeafLoadBalancer$SubchannelData;)Lio/grpc/ConnectivityState;

    move-result-object v0

    sget-object v1, Lio/grpc/ConnectivityState;->READY:Lio/grpc/ConnectivityState;

    if-ne v0, v1, :cond_1

    .line 288
    sget-object v0, Lio/grpc/ConnectivityState;->READY:Lio/grpc/ConnectivityState;

    new-instance v1, Lio/grpc/LoadBalancer$FixedResultPicker;

    .line 289
    invoke-static {p1}, Lio/grpc/internal/PickFirstLeafLoadBalancer$SubchannelData;->access$300(Lio/grpc/internal/PickFirstLeafLoadBalancer$SubchannelData;)Lio/grpc/LoadBalancer$Subchannel;

    move-result-object v2

    invoke-static {v2}, Lio/grpc/LoadBalancer$PickResult;->withSubchannel(Lio/grpc/LoadBalancer$Subchannel;)Lio/grpc/LoadBalancer$PickResult;

    move-result-object v2

    invoke-direct {v1, v2}, Lio/grpc/LoadBalancer$FixedResultPicker;-><init>(Lio/grpc/LoadBalancer$PickResult;)V

    .line 288
    invoke-direct {p0, v0, v1}, Lio/grpc/internal/PickFirstLeafLoadBalancer;->updateBalancingState(Lio/grpc/ConnectivityState;Lio/grpc/LoadBalancer$SubchannelPicker;)V

    goto :goto_0

    .line 290
    :cond_1
    invoke-static {p1}, Lio/grpc/internal/PickFirstLeafLoadBalancer$SubchannelData;->access$200(Lio/grpc/internal/PickFirstLeafLoadBalancer$SubchannelData;)Lio/grpc/ConnectivityState;

    move-result-object v0

    sget-object v1, Lio/grpc/ConnectivityState;->TRANSIENT_FAILURE:Lio/grpc/ConnectivityState;

    if-ne v0, v1, :cond_2

    .line 291
    sget-object v0, Lio/grpc/ConnectivityState;->TRANSIENT_FAILURE:Lio/grpc/ConnectivityState;

    new-instance v1, Lio/grpc/internal/PickFirstLeafLoadBalancer$Picker;

    .line 292
    invoke-static {p1}, Lio/grpc/internal/PickFirstLeafLoadBalancer$SubchannelData;->access$400(Lio/grpc/internal/PickFirstLeafLoadBalancer$SubchannelData;)Lio/grpc/internal/PickFirstLeafLoadBalancer$HealthListener;

    move-result-object v2

    invoke-static {v2}, Lio/grpc/internal/PickFirstLeafLoadBalancer$HealthListener;->access$500(Lio/grpc/internal/PickFirstLeafLoadBalancer$HealthListener;)Lio/grpc/ConnectivityStateInfo;

    move-result-object v2

    invoke-virtual {v2}, Lio/grpc/ConnectivityStateInfo;->getStatus()Lio/grpc/Status;

    move-result-object v2

    .line 291
    invoke-static {v2}, Lio/grpc/LoadBalancer$PickResult;->withError(Lio/grpc/Status;)Lio/grpc/LoadBalancer$PickResult;

    move-result-object v2

    invoke-direct {v1, v2}, Lio/grpc/internal/PickFirstLeafLoadBalancer$Picker;-><init>(Lio/grpc/LoadBalancer$PickResult;)V

    invoke-direct {p0, v0, v1}, Lio/grpc/internal/PickFirstLeafLoadBalancer;->updateBalancingState(Lio/grpc/ConnectivityState;Lio/grpc/LoadBalancer$SubchannelPicker;)V

    goto :goto_0

    .line 293
    :cond_2
    iget-object v0, p0, Lio/grpc/internal/PickFirstLeafLoadBalancer;->concludedState:Lio/grpc/ConnectivityState;

    sget-object v1, Lio/grpc/ConnectivityState;->TRANSIENT_FAILURE:Lio/grpc/ConnectivityState;

    if-eq v0, v1, :cond_3

    .line 294
    invoke-static {p1}, Lio/grpc/internal/PickFirstLeafLoadBalancer$SubchannelData;->access$200(Lio/grpc/internal/PickFirstLeafLoadBalancer$SubchannelData;)Lio/grpc/ConnectivityState;

    move-result-object v0

    new-instance v1, Lio/grpc/internal/PickFirstLeafLoadBalancer$Picker;

    .line 295
    invoke-static {}, Lio/grpc/LoadBalancer$PickResult;->withNoResult()Lio/grpc/LoadBalancer$PickResult;

    move-result-object v2

    invoke-direct {v1, v2}, Lio/grpc/internal/PickFirstLeafLoadBalancer$Picker;-><init>(Lio/grpc/LoadBalancer$PickResult;)V

    .line 294
    invoke-direct {p0, v0, v1}, Lio/grpc/internal/PickFirstLeafLoadBalancer;->updateBalancingState(Lio/grpc/ConnectivityState;Lio/grpc/LoadBalancer$SubchannelPicker;)V

    .line 297
    :cond_3
    :goto_0
    return-void
.end method


# virtual methods
.method public acceptResolvedAddresses(Lio/grpc/LoadBalancer$ResolvedAddresses;)Lio/grpc/Status;
    .locals 7
    .param p1, "resolvedAddresses"    # Lio/grpc/LoadBalancer$ResolvedAddresses;

    .line 83
    iget-object v0, p0, Lio/grpc/internal/PickFirstLeafLoadBalancer;->rawConnectivityState:Lio/grpc/ConnectivityState;

    sget-object v1, Lio/grpc/ConnectivityState;->SHUTDOWN:Lio/grpc/ConnectivityState;

    if-ne v0, v1, :cond_0

    .line 84
    sget-object v0, Lio/grpc/Status;->FAILED_PRECONDITION:Lio/grpc/Status;

    const-string v1, "Already shut down"

    invoke-virtual {v0, v1}, Lio/grpc/Status;->withDescription(Ljava/lang/String;)Lio/grpc/Status;

    move-result-object v0

    return-object v0

    .line 87
    :cond_0
    invoke-virtual {p1}, Lio/grpc/LoadBalancer$ResolvedAddresses;->getAddresses()Ljava/util/List;

    move-result-object v0

    .line 90
    .local v0, "servers":Ljava/util/List;, "Ljava/util/List<Lio/grpc/EquivalentAddressGroup;>;"
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    const-string v2, ", attrs="

    if-eqz v1, :cond_1

    .line 91
    sget-object v1, Lio/grpc/Status;->UNAVAILABLE:Lio/grpc/Status;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "NameResolver returned no usable address. addrs="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 92
    invoke-virtual {p1}, Lio/grpc/LoadBalancer$ResolvedAddresses;->getAddresses()Ljava/util/List;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 93
    invoke-virtual {p1}, Lio/grpc/LoadBalancer$ResolvedAddresses;->getAttributes()Lio/grpc/Attributes;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 91
    invoke-virtual {v1, v2}, Lio/grpc/Status;->withDescription(Ljava/lang/String;)Lio/grpc/Status;

    move-result-object v1

    .line 94
    .local v1, "unavailableStatus":Lio/grpc/Status;
    invoke-virtual {p0, v1}, Lio/grpc/internal/PickFirstLeafLoadBalancer;->handleNameResolutionError(Lio/grpc/Status;)V

    .line 95
    return-object v1

    .line 97
    .end local v1    # "unavailableStatus":Lio/grpc/Status;
    :cond_1
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lio/grpc/EquivalentAddressGroup;

    .line 98
    .local v3, "eag":Lio/grpc/EquivalentAddressGroup;
    if-nez v3, :cond_2

    .line 99
    sget-object v1, Lio/grpc/Status;->UNAVAILABLE:Lio/grpc/Status;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "NameResolver returned address list with null endpoint. addrs="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 101
    invoke-virtual {p1}, Lio/grpc/LoadBalancer$ResolvedAddresses;->getAddresses()Ljava/util/List;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 102
    invoke-virtual {p1}, Lio/grpc/LoadBalancer$ResolvedAddresses;->getAttributes()Lio/grpc/Attributes;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 99
    invoke-virtual {v1, v2}, Lio/grpc/Status;->withDescription(Ljava/lang/String;)Lio/grpc/Status;

    move-result-object v1

    .line 103
    .restart local v1    # "unavailableStatus":Lio/grpc/Status;
    invoke-virtual {p0, v1}, Lio/grpc/internal/PickFirstLeafLoadBalancer;->handleNameResolutionError(Lio/grpc/Status;)V

    .line 104
    return-object v1

    .line 106
    .end local v1    # "unavailableStatus":Lio/grpc/Status;
    .end local v3    # "eag":Lio/grpc/EquivalentAddressGroup;
    :cond_2
    goto :goto_0

    .line 109
    :cond_3
    const/4 v1, 0x1

    iput-boolean v1, p0, Lio/grpc/internal/PickFirstLeafLoadBalancer;->firstPass:Z

    .line 113
    invoke-virtual {p1}, Lio/grpc/LoadBalancer$ResolvedAddresses;->getLoadBalancingPolicyConfig()Ljava/lang/Object;

    move-result-object v1

    instance-of v1, v1, Lio/grpc/internal/PickFirstLeafLoadBalancer$PickFirstLeafLoadBalancerConfig;

    if-eqz v1, :cond_5

    .line 115
    nop

    .line 116
    invoke-virtual {p1}, Lio/grpc/LoadBalancer$ResolvedAddresses;->getLoadBalancingPolicyConfig()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/grpc/internal/PickFirstLeafLoadBalancer$PickFirstLeafLoadBalancerConfig;

    .line 117
    .local v1, "config":Lio/grpc/internal/PickFirstLeafLoadBalancer$PickFirstLeafLoadBalancerConfig;
    iget-object v2, v1, Lio/grpc/internal/PickFirstLeafLoadBalancer$PickFirstLeafLoadBalancerConfig;->shuffleAddressList:Ljava/lang/Boolean;

    if-eqz v2, :cond_5

    iget-object v2, v1, Lio/grpc/internal/PickFirstLeafLoadBalancer$PickFirstLeafLoadBalancerConfig;->shuffleAddressList:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 118
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    move-object v0, v2

    .line 119
    nop

    .line 120
    iget-object v2, v1, Lio/grpc/internal/PickFirstLeafLoadBalancer$PickFirstLeafLoadBalancerConfig;->randomSeed:Ljava/lang/Long;

    if-eqz v2, :cond_4

    new-instance v2, Ljava/util/Random;

    iget-object v3, v1, Lio/grpc/internal/PickFirstLeafLoadBalancer$PickFirstLeafLoadBalancerConfig;->randomSeed:Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-direct {v2, v3, v4}, Ljava/util/Random;-><init>(J)V

    goto :goto_1

    :cond_4
    new-instance v2, Ljava/util/Random;

    invoke-direct {v2}, Ljava/util/Random;-><init>()V

    .line 119
    :goto_1
    invoke-static {v0, v2}, Ljava/util/Collections;->shuffle(Ljava/util/List;Ljava/util/Random;)V

    .line 126
    .end local v1    # "config":Lio/grpc/internal/PickFirstLeafLoadBalancer$PickFirstLeafLoadBalancerConfig;
    :cond_5
    invoke-static {}, Lcom/google/common/collect/ImmutableList;->builder()Lcom/google/common/collect/ImmutableList$Builder;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/common/collect/ImmutableList$Builder;->addAll(Ljava/lang/Iterable;)Lcom/google/common/collect/ImmutableList$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/common/collect/ImmutableList$Builder;->build()Lcom/google/common/collect/ImmutableList;

    move-result-object v1

    .line 128
    .local v1, "newImmutableAddressGroups":Lcom/google/common/collect/ImmutableList;, "Lcom/google/common/collect/ImmutableList<Lio/grpc/EquivalentAddressGroup;>;"
    iget-object v2, p0, Lio/grpc/internal/PickFirstLeafLoadBalancer;->addressIndex:Lio/grpc/internal/PickFirstLeafLoadBalancer$Index;

    if-nez v2, :cond_6

    .line 129
    new-instance v2, Lio/grpc/internal/PickFirstLeafLoadBalancer$Index;

    invoke-direct {v2, v1}, Lio/grpc/internal/PickFirstLeafLoadBalancer$Index;-><init>(Ljava/util/List;)V

    iput-object v2, p0, Lio/grpc/internal/PickFirstLeafLoadBalancer;->addressIndex:Lio/grpc/internal/PickFirstLeafLoadBalancer$Index;

    goto :goto_2

    .line 130
    :cond_6
    iget-object v2, p0, Lio/grpc/internal/PickFirstLeafLoadBalancer;->rawConnectivityState:Lio/grpc/ConnectivityState;

    sget-object v3, Lio/grpc/ConnectivityState;->READY:Lio/grpc/ConnectivityState;

    .line 141
    iget-object v4, p0, Lio/grpc/internal/PickFirstLeafLoadBalancer;->addressIndex:Lio/grpc/internal/PickFirstLeafLoadBalancer$Index;

    .line 130
    if-ne v2, v3, :cond_8

    .line 133
    invoke-virtual {v4}, Lio/grpc/internal/PickFirstLeafLoadBalancer$Index;->getCurrentAddress()Ljava/net/SocketAddress;

    move-result-object v2

    .line 134
    .local v2, "previousAddress":Ljava/net/SocketAddress;
    iget-object v3, p0, Lio/grpc/internal/PickFirstLeafLoadBalancer;->addressIndex:Lio/grpc/internal/PickFirstLeafLoadBalancer$Index;

    invoke-virtual {v3, v1}, Lio/grpc/internal/PickFirstLeafLoadBalancer$Index;->updateGroups(Lcom/google/common/collect/ImmutableList;)V

    .line 135
    iget-object v3, p0, Lio/grpc/internal/PickFirstLeafLoadBalancer;->addressIndex:Lio/grpc/internal/PickFirstLeafLoadBalancer$Index;

    invoke-virtual {v3, v2}, Lio/grpc/internal/PickFirstLeafLoadBalancer$Index;->seekTo(Ljava/net/SocketAddress;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 136
    sget-object v3, Lio/grpc/Status;->OK:Lio/grpc/Status;

    return-object v3

    .line 138
    :cond_7
    iget-object v3, p0, Lio/grpc/internal/PickFirstLeafLoadBalancer;->addressIndex:Lio/grpc/internal/PickFirstLeafLoadBalancer$Index;

    invoke-virtual {v3}, Lio/grpc/internal/PickFirstLeafLoadBalancer$Index;->reset()V

    .line 140
    .end local v2    # "previousAddress":Ljava/net/SocketAddress;
    goto :goto_2

    .line 141
    :cond_8
    invoke-virtual {v4, v1}, Lio/grpc/internal/PickFirstLeafLoadBalancer$Index;->updateGroups(Lcom/google/common/collect/ImmutableList;)V

    .line 145
    :goto_2
    new-instance v2, Ljava/util/HashSet;

    iget-object v3, p0, Lio/grpc/internal/PickFirstLeafLoadBalancer;->subchannels:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 148
    .local v2, "oldAddrs":Ljava/util/Set;, "Ljava/util/Set<Ljava/net/SocketAddress;>;"
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    .line 149
    .local v3, "newAddrs":Ljava/util/Set;, "Ljava/util/Set<Ljava/net/SocketAddress;>;"
    invoke-virtual {v1}, Lcom/google/common/collect/ImmutableList;->iterator()Lcom/google/common/collect/UnmodifiableIterator;

    move-result-object v4

    :goto_3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_9

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lio/grpc/EquivalentAddressGroup;

    .line 150
    .local v5, "endpoint":Lio/grpc/EquivalentAddressGroup;
    invoke-virtual {v5}, Lio/grpc/EquivalentAddressGroup;->getAddresses()Ljava/util/List;

    move-result-object v6

    invoke-interface {v3, v6}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 151
    .end local v5    # "endpoint":Lio/grpc/EquivalentAddressGroup;
    goto :goto_3

    .line 154
    :cond_9
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_4
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_b

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/net/SocketAddress;

    .line 155
    .local v5, "oldAddr":Ljava/net/SocketAddress;
    invoke-interface {v3, v5}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_a

    .line 156
    iget-object v6, p0, Lio/grpc/internal/PickFirstLeafLoadBalancer;->subchannels:Ljava/util/Map;

    invoke-interface {v6, v5}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lio/grpc/internal/PickFirstLeafLoadBalancer$SubchannelData;

    invoke-virtual {v6}, Lio/grpc/internal/PickFirstLeafLoadBalancer$SubchannelData;->getSubchannel()Lio/grpc/LoadBalancer$Subchannel;

    move-result-object v6

    invoke-virtual {v6}, Lio/grpc/LoadBalancer$Subchannel;->shutdown()V

    .line 158
    .end local v5    # "oldAddr":Ljava/net/SocketAddress;
    :cond_a
    goto :goto_4

    .line 160
    :cond_b
    invoke-interface {v2}, Ljava/util/Set;->size()I

    move-result v4

    if-eqz v4, :cond_f

    iget-object v4, p0, Lio/grpc/internal/PickFirstLeafLoadBalancer;->rawConnectivityState:Lio/grpc/ConnectivityState;

    sget-object v5, Lio/grpc/ConnectivityState;->CONNECTING:Lio/grpc/ConnectivityState;

    if-eq v4, v5, :cond_f

    iget-object v4, p0, Lio/grpc/internal/PickFirstLeafLoadBalancer;->rawConnectivityState:Lio/grpc/ConnectivityState;

    sget-object v5, Lio/grpc/ConnectivityState;->READY:Lio/grpc/ConnectivityState;

    if-ne v4, v5, :cond_c

    goto :goto_6

    .line 168
    :cond_c
    iget-object v4, p0, Lio/grpc/internal/PickFirstLeafLoadBalancer;->rawConnectivityState:Lio/grpc/ConnectivityState;

    sget-object v5, Lio/grpc/ConnectivityState;->IDLE:Lio/grpc/ConnectivityState;

    if-ne v4, v5, :cond_d

    .line 170
    new-instance v4, Lio/grpc/internal/PickFirstLeafLoadBalancer$RequestConnectionPicker;

    invoke-direct {v4, p0, p0}, Lio/grpc/internal/PickFirstLeafLoadBalancer$RequestConnectionPicker;-><init>(Lio/grpc/internal/PickFirstLeafLoadBalancer;Lio/grpc/internal/PickFirstLeafLoadBalancer;)V

    .line 171
    .local v4, "picker":Lio/grpc/LoadBalancer$SubchannelPicker;
    sget-object v5, Lio/grpc/ConnectivityState;->IDLE:Lio/grpc/ConnectivityState;

    invoke-direct {p0, v5, v4}, Lio/grpc/internal/PickFirstLeafLoadBalancer;->updateBalancingState(Lio/grpc/ConnectivityState;Lio/grpc/LoadBalancer$SubchannelPicker;)V

    .end local v4    # "picker":Lio/grpc/LoadBalancer$SubchannelPicker;
    goto :goto_5

    .line 173
    :cond_d
    iget-object v4, p0, Lio/grpc/internal/PickFirstLeafLoadBalancer;->rawConnectivityState:Lio/grpc/ConnectivityState;

    sget-object v5, Lio/grpc/ConnectivityState;->TRANSIENT_FAILURE:Lio/grpc/ConnectivityState;

    if-ne v4, v5, :cond_e

    .line 175
    invoke-direct {p0}, Lio/grpc/internal/PickFirstLeafLoadBalancer;->cancelScheduleTask()V

    .line 176
    invoke-virtual {p0}, Lio/grpc/internal/PickFirstLeafLoadBalancer;->requestConnection()V

    goto :goto_7

    .line 173
    :cond_e
    :goto_5
    goto :goto_7

    .line 163
    :cond_f
    :goto_6
    sget-object v4, Lio/grpc/ConnectivityState;->CONNECTING:Lio/grpc/ConnectivityState;

    iput-object v4, p0, Lio/grpc/internal/PickFirstLeafLoadBalancer;->rawConnectivityState:Lio/grpc/ConnectivityState;

    .line 164
    sget-object v4, Lio/grpc/ConnectivityState;->CONNECTING:Lio/grpc/ConnectivityState;

    new-instance v5, Lio/grpc/internal/PickFirstLeafLoadBalancer$Picker;

    invoke-static {}, Lio/grpc/LoadBalancer$PickResult;->withNoResult()Lio/grpc/LoadBalancer$PickResult;

    move-result-object v6

    invoke-direct {v5, v6}, Lio/grpc/internal/PickFirstLeafLoadBalancer$Picker;-><init>(Lio/grpc/LoadBalancer$PickResult;)V

    invoke-direct {p0, v4, v5}, Lio/grpc/internal/PickFirstLeafLoadBalancer;->updateBalancingState(Lio/grpc/ConnectivityState;Lio/grpc/LoadBalancer$SubchannelPicker;)V

    .line 165
    invoke-direct {p0}, Lio/grpc/internal/PickFirstLeafLoadBalancer;->cancelScheduleTask()V

    .line 166
    invoke-virtual {p0}, Lio/grpc/internal/PickFirstLeafLoadBalancer;->requestConnection()V

    .line 179
    :goto_7
    sget-object v4, Lio/grpc/Status;->OK:Lio/grpc/Status;

    return-object v4
.end method

.method getConcludedConnectivityState()Lio/grpc/ConnectivityState;
    .locals 1

    .line 479
    iget-object v0, p0, Lio/grpc/internal/PickFirstLeafLoadBalancer;->concludedState:Lio/grpc/ConnectivityState;

    return-object v0
.end method

.method public handleNameResolutionError(Lio/grpc/Status;)V
    .locals 3
    .param p1, "error"    # Lio/grpc/Status;

    .line 184
    iget-object v0, p0, Lio/grpc/internal/PickFirstLeafLoadBalancer;->subchannels:Ljava/util/Map;

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

    check-cast v1, Lio/grpc/internal/PickFirstLeafLoadBalancer$SubchannelData;

    .line 185
    .local v1, "subchannelData":Lio/grpc/internal/PickFirstLeafLoadBalancer$SubchannelData;
    invoke-virtual {v1}, Lio/grpc/internal/PickFirstLeafLoadBalancer$SubchannelData;->getSubchannel()Lio/grpc/LoadBalancer$Subchannel;

    move-result-object v2

    invoke-virtual {v2}, Lio/grpc/LoadBalancer$Subchannel;->shutdown()V

    .line 186
    .end local v1    # "subchannelData":Lio/grpc/internal/PickFirstLeafLoadBalancer$SubchannelData;
    goto :goto_0

    .line 187
    :cond_0
    iget-object v0, p0, Lio/grpc/internal/PickFirstLeafLoadBalancer;->subchannels:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 188
    sget-object v0, Lio/grpc/ConnectivityState;->TRANSIENT_FAILURE:Lio/grpc/ConnectivityState;

    new-instance v1, Lio/grpc/internal/PickFirstLeafLoadBalancer$Picker;

    invoke-static {p1}, Lio/grpc/LoadBalancer$PickResult;->withError(Lio/grpc/Status;)Lio/grpc/LoadBalancer$PickResult;

    move-result-object v2

    invoke-direct {v1, v2}, Lio/grpc/internal/PickFirstLeafLoadBalancer$Picker;-><init>(Lio/grpc/LoadBalancer$PickResult;)V

    invoke-direct {p0, v0, v1}, Lio/grpc/internal/PickFirstLeafLoadBalancer;->updateBalancingState(Lio/grpc/ConnectivityState;Lio/grpc/LoadBalancer$SubchannelPicker;)V

    .line 189
    return-void
.end method

.method synthetic lambda$createNewSubchannel$0$io-grpc-internal-PickFirstLeafLoadBalancer(Lio/grpc/LoadBalancer$Subchannel;Lio/grpc/ConnectivityStateInfo;)V
    .locals 0
    .param p1, "subchannel"    # Lio/grpc/LoadBalancer$Subchannel;
    .param p2, "stateInfo"    # Lio/grpc/ConnectivityStateInfo;

    .line 440
    invoke-virtual {p0, p1, p2}, Lio/grpc/internal/PickFirstLeafLoadBalancer;->processSubchannelState(Lio/grpc/LoadBalancer$Subchannel;Lio/grpc/ConnectivityStateInfo;)V

    return-void
.end method

.method processSubchannelState(Lio/grpc/LoadBalancer$Subchannel;Lio/grpc/ConnectivityStateInfo;)V
    .locals 5
    .param p1, "subchannel"    # Lio/grpc/LoadBalancer$Subchannel;
    .param p2, "stateInfo"    # Lio/grpc/ConnectivityStateInfo;

    .line 192
    invoke-virtual {p2}, Lio/grpc/ConnectivityStateInfo;->getState()Lio/grpc/ConnectivityState;

    move-result-object v0

    .line 196
    .local v0, "newState":Lio/grpc/ConnectivityState;
    iget-object v1, p0, Lio/grpc/internal/PickFirstLeafLoadBalancer;->subchannels:Ljava/util/Map;

    invoke-direct {p0, p1}, Lio/grpc/internal/PickFirstLeafLoadBalancer;->getAddress(Lio/grpc/LoadBalancer$Subchannel;)Ljava/net/SocketAddress;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/grpc/internal/PickFirstLeafLoadBalancer$SubchannelData;

    .line 197
    .local v1, "subchannelData":Lio/grpc/internal/PickFirstLeafLoadBalancer$SubchannelData;
    if-eqz v1, :cond_9

    invoke-virtual {v1}, Lio/grpc/internal/PickFirstLeafLoadBalancer$SubchannelData;->getSubchannel()Lio/grpc/LoadBalancer$Subchannel;

    move-result-object v2

    if-eq v2, p1, :cond_0

    goto/16 :goto_1

    .line 200
    :cond_0
    sget-object v2, Lio/grpc/ConnectivityState;->SHUTDOWN:Lio/grpc/ConnectivityState;

    if-ne v0, v2, :cond_1

    .line 201
    return-void

    .line 204
    :cond_1
    sget-object v2, Lio/grpc/ConnectivityState;->IDLE:Lio/grpc/ConnectivityState;

    if-ne v0, v2, :cond_2

    .line 205
    iget-object v2, p0, Lio/grpc/internal/PickFirstLeafLoadBalancer;->helper:Lio/grpc/LoadBalancer$Helper;

    invoke-virtual {v2}, Lio/grpc/LoadBalancer$Helper;->refreshNameResolution()V

    .line 218
    :cond_2
    invoke-static {v1, v0}, Lio/grpc/internal/PickFirstLeafLoadBalancer$SubchannelData;->access$000(Lio/grpc/internal/PickFirstLeafLoadBalancer$SubchannelData;Lio/grpc/ConnectivityState;)V

    .line 219
    iget-object v2, p0, Lio/grpc/internal/PickFirstLeafLoadBalancer;->rawConnectivityState:Lio/grpc/ConnectivityState;

    sget-object v3, Lio/grpc/ConnectivityState;->TRANSIENT_FAILURE:Lio/grpc/ConnectivityState;

    if-eq v2, v3, :cond_3

    iget-object v2, p0, Lio/grpc/internal/PickFirstLeafLoadBalancer;->concludedState:Lio/grpc/ConnectivityState;

    sget-object v3, Lio/grpc/ConnectivityState;->TRANSIENT_FAILURE:Lio/grpc/ConnectivityState;

    if-ne v2, v3, :cond_5

    .line 220
    :cond_3
    sget-object v2, Lio/grpc/ConnectivityState;->CONNECTING:Lio/grpc/ConnectivityState;

    if-ne v0, v2, :cond_4

    .line 222
    return-void

    .line 223
    :cond_4
    sget-object v2, Lio/grpc/ConnectivityState;->IDLE:Lio/grpc/ConnectivityState;

    if-ne v0, v2, :cond_5

    .line 224
    invoke-virtual {p0}, Lio/grpc/internal/PickFirstLeafLoadBalancer;->requestConnection()V

    .line 225
    return-void

    .line 229
    :cond_5
    sget-object v2, Lio/grpc/internal/PickFirstLeafLoadBalancer$1;->$SwitchMap$io$grpc$ConnectivityState:[I

    invoke-virtual {v0}, Lio/grpc/ConnectivityState;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    .line 279
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unsupported state:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 251
    :pswitch_0
    iget-object v2, p0, Lio/grpc/internal/PickFirstLeafLoadBalancer;->addressIndex:Lio/grpc/internal/PickFirstLeafLoadBalancer$Index;

    invoke-virtual {v2}, Lio/grpc/internal/PickFirstLeafLoadBalancer$Index;->isValid()Z

    move-result v2

    if-eqz v2, :cond_6

    iget-object v2, p0, Lio/grpc/internal/PickFirstLeafLoadBalancer;->subchannels:Ljava/util/Map;

    iget-object v3, p0, Lio/grpc/internal/PickFirstLeafLoadBalancer;->addressIndex:Lio/grpc/internal/PickFirstLeafLoadBalancer$Index;

    .line 252
    invoke-virtual {v3}, Lio/grpc/internal/PickFirstLeafLoadBalancer$Index;->getCurrentAddress()Ljava/net/SocketAddress;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lio/grpc/internal/PickFirstLeafLoadBalancer$SubchannelData;

    invoke-virtual {v2}, Lio/grpc/internal/PickFirstLeafLoadBalancer$SubchannelData;->getSubchannel()Lio/grpc/LoadBalancer$Subchannel;

    move-result-object v2

    if-ne v2, p1, :cond_6

    .line 253
    iget-object v2, p0, Lio/grpc/internal/PickFirstLeafLoadBalancer;->addressIndex:Lio/grpc/internal/PickFirstLeafLoadBalancer$Index;

    invoke-virtual {v2}, Lio/grpc/internal/PickFirstLeafLoadBalancer$Index;->increment()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 254
    invoke-direct {p0}, Lio/grpc/internal/PickFirstLeafLoadBalancer;->cancelScheduleTask()V

    .line 255
    invoke-virtual {p0}, Lio/grpc/internal/PickFirstLeafLoadBalancer;->requestConnection()V

    .line 259
    :cond_6
    invoke-direct {p0}, Lio/grpc/internal/PickFirstLeafLoadBalancer;->isPassComplete()Z

    move-result v2

    if-eqz v2, :cond_8

    .line 260
    sget-object v2, Lio/grpc/ConnectivityState;->TRANSIENT_FAILURE:Lio/grpc/ConnectivityState;

    iput-object v2, p0, Lio/grpc/internal/PickFirstLeafLoadBalancer;->rawConnectivityState:Lio/grpc/ConnectivityState;

    .line 261
    sget-object v2, Lio/grpc/ConnectivityState;->TRANSIENT_FAILURE:Lio/grpc/ConnectivityState;

    new-instance v3, Lio/grpc/internal/PickFirstLeafLoadBalancer$Picker;

    .line 262
    invoke-virtual {p2}, Lio/grpc/ConnectivityStateInfo;->getStatus()Lio/grpc/Status;

    move-result-object v4

    invoke-static {v4}, Lio/grpc/LoadBalancer$PickResult;->withError(Lio/grpc/Status;)Lio/grpc/LoadBalancer$PickResult;

    move-result-object v4

    invoke-direct {v3, v4}, Lio/grpc/internal/PickFirstLeafLoadBalancer$Picker;-><init>(Lio/grpc/LoadBalancer$PickResult;)V

    .line 261
    invoke-direct {p0, v2, v3}, Lio/grpc/internal/PickFirstLeafLoadBalancer;->updateBalancingState(Lio/grpc/ConnectivityState;Lio/grpc/LoadBalancer$SubchannelPicker;)V

    .line 270
    iget v2, p0, Lio/grpc/internal/PickFirstLeafLoadBalancer;->numTf:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lio/grpc/internal/PickFirstLeafLoadBalancer;->numTf:I

    iget-object v3, p0, Lio/grpc/internal/PickFirstLeafLoadBalancer;->addressIndex:Lio/grpc/internal/PickFirstLeafLoadBalancer$Index;

    invoke-virtual {v3}, Lio/grpc/internal/PickFirstLeafLoadBalancer$Index;->size()I

    move-result v3

    if-ge v2, v3, :cond_7

    iget-boolean v2, p0, Lio/grpc/internal/PickFirstLeafLoadBalancer;->firstPass:Z

    if-eqz v2, :cond_8

    .line 271
    :cond_7
    const/4 v2, 0x0

    iput-boolean v2, p0, Lio/grpc/internal/PickFirstLeafLoadBalancer;->firstPass:Z

    .line 272
    iput v2, p0, Lio/grpc/internal/PickFirstLeafLoadBalancer;->numTf:I

    .line 273
    iget-object v2, p0, Lio/grpc/internal/PickFirstLeafLoadBalancer;->helper:Lio/grpc/LoadBalancer$Helper;

    invoke-virtual {v2}, Lio/grpc/LoadBalancer$Helper;->refreshNameResolution()V

    goto :goto_0

    .line 243
    :pswitch_1
    invoke-direct {p0, v1}, Lio/grpc/internal/PickFirstLeafLoadBalancer;->shutdownRemaining(Lio/grpc/internal/PickFirstLeafLoadBalancer$SubchannelData;)V

    .line 244
    iget-object v2, p0, Lio/grpc/internal/PickFirstLeafLoadBalancer;->addressIndex:Lio/grpc/internal/PickFirstLeafLoadBalancer$Index;

    invoke-direct {p0, p1}, Lio/grpc/internal/PickFirstLeafLoadBalancer;->getAddress(Lio/grpc/LoadBalancer$Subchannel;)Ljava/net/SocketAddress;

    move-result-object v3

    invoke-virtual {v2, v3}, Lio/grpc/internal/PickFirstLeafLoadBalancer$Index;->seekTo(Ljava/net/SocketAddress;)Z

    .line 245
    sget-object v2, Lio/grpc/ConnectivityState;->READY:Lio/grpc/ConnectivityState;

    iput-object v2, p0, Lio/grpc/internal/PickFirstLeafLoadBalancer;->rawConnectivityState:Lio/grpc/ConnectivityState;

    .line 246
    invoke-direct {p0, v1}, Lio/grpc/internal/PickFirstLeafLoadBalancer;->updateHealthCheckedState(Lio/grpc/internal/PickFirstLeafLoadBalancer$SubchannelData;)V

    .line 247
    goto :goto_0

    .line 238
    :pswitch_2
    sget-object v2, Lio/grpc/ConnectivityState;->CONNECTING:Lio/grpc/ConnectivityState;

    iput-object v2, p0, Lio/grpc/internal/PickFirstLeafLoadBalancer;->rawConnectivityState:Lio/grpc/ConnectivityState;

    .line 239
    sget-object v2, Lio/grpc/ConnectivityState;->CONNECTING:Lio/grpc/ConnectivityState;

    new-instance v3, Lio/grpc/internal/PickFirstLeafLoadBalancer$Picker;

    invoke-static {}, Lio/grpc/LoadBalancer$PickResult;->withNoResult()Lio/grpc/LoadBalancer$PickResult;

    move-result-object v4

    invoke-direct {v3, v4}, Lio/grpc/internal/PickFirstLeafLoadBalancer$Picker;-><init>(Lio/grpc/LoadBalancer$PickResult;)V

    invoke-direct {p0, v2, v3}, Lio/grpc/internal/PickFirstLeafLoadBalancer;->updateBalancingState(Lio/grpc/ConnectivityState;Lio/grpc/LoadBalancer$SubchannelPicker;)V

    .line 240
    goto :goto_0

    .line 232
    :pswitch_3
    iget-object v2, p0, Lio/grpc/internal/PickFirstLeafLoadBalancer;->addressIndex:Lio/grpc/internal/PickFirstLeafLoadBalancer$Index;

    invoke-virtual {v2}, Lio/grpc/internal/PickFirstLeafLoadBalancer$Index;->reset()V

    .line 233
    sget-object v2, Lio/grpc/ConnectivityState;->IDLE:Lio/grpc/ConnectivityState;

    iput-object v2, p0, Lio/grpc/internal/PickFirstLeafLoadBalancer;->rawConnectivityState:Lio/grpc/ConnectivityState;

    .line 234
    sget-object v2, Lio/grpc/ConnectivityState;->IDLE:Lio/grpc/ConnectivityState;

    new-instance v3, Lio/grpc/internal/PickFirstLeafLoadBalancer$RequestConnectionPicker;

    invoke-direct {v3, p0, p0}, Lio/grpc/internal/PickFirstLeafLoadBalancer$RequestConnectionPicker;-><init>(Lio/grpc/internal/PickFirstLeafLoadBalancer;Lio/grpc/internal/PickFirstLeafLoadBalancer;)V

    invoke-direct {p0, v2, v3}, Lio/grpc/internal/PickFirstLeafLoadBalancer;->updateBalancingState(Lio/grpc/ConnectivityState;Lio/grpc/LoadBalancer$SubchannelPicker;)V

    .line 235
    nop

    .line 281
    :cond_8
    :goto_0
    return-void

    .line 198
    :cond_9
    :goto_1
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public requestConnection()V
    .locals 5

    .line 348
    iget-object v0, p0, Lio/grpc/internal/PickFirstLeafLoadBalancer;->addressIndex:Lio/grpc/internal/PickFirstLeafLoadBalancer$Index;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lio/grpc/internal/PickFirstLeafLoadBalancer;->addressIndex:Lio/grpc/internal/PickFirstLeafLoadBalancer$Index;

    invoke-virtual {v0}, Lio/grpc/internal/PickFirstLeafLoadBalancer$Index;->isValid()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lio/grpc/internal/PickFirstLeafLoadBalancer;->rawConnectivityState:Lio/grpc/ConnectivityState;

    sget-object v1, Lio/grpc/ConnectivityState;->SHUTDOWN:Lio/grpc/ConnectivityState;

    if-ne v0, v1, :cond_0

    goto :goto_2

    .line 354
    :cond_0
    iget-object v0, p0, Lio/grpc/internal/PickFirstLeafLoadBalancer;->addressIndex:Lio/grpc/internal/PickFirstLeafLoadBalancer$Index;

    invoke-virtual {v0}, Lio/grpc/internal/PickFirstLeafLoadBalancer$Index;->getCurrentAddress()Ljava/net/SocketAddress;

    move-result-object v0

    .line 355
    .local v0, "currentAddress":Ljava/net/SocketAddress;
    iget-object v1, p0, Lio/grpc/internal/PickFirstLeafLoadBalancer;->subchannels:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 356
    iget-object v1, p0, Lio/grpc/internal/PickFirstLeafLoadBalancer;->subchannels:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/grpc/internal/PickFirstLeafLoadBalancer$SubchannelData;

    invoke-virtual {v1}, Lio/grpc/internal/PickFirstLeafLoadBalancer$SubchannelData;->getSubchannel()Lio/grpc/LoadBalancer$Subchannel;

    move-result-object v1

    goto :goto_0

    .line 357
    :cond_1
    invoke-direct {p0, v0}, Lio/grpc/internal/PickFirstLeafLoadBalancer;->createNewSubchannel(Ljava/net/SocketAddress;)Lio/grpc/LoadBalancer$Subchannel;

    move-result-object v1

    :goto_0
    nop

    .line 359
    .local v1, "subchannel":Lio/grpc/LoadBalancer$Subchannel;
    iget-object v2, p0, Lio/grpc/internal/PickFirstLeafLoadBalancer;->subchannels:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lio/grpc/internal/PickFirstLeafLoadBalancer$SubchannelData;

    invoke-virtual {v2}, Lio/grpc/internal/PickFirstLeafLoadBalancer$SubchannelData;->getState()Lio/grpc/ConnectivityState;

    move-result-object v2

    .line 360
    .local v2, "subchannelState":Lio/grpc/ConnectivityState;
    sget-object v3, Lio/grpc/internal/PickFirstLeafLoadBalancer$1;->$SwitchMap$io$grpc$ConnectivityState:[I

    invoke-virtual {v2}, Lio/grpc/ConnectivityState;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_0

    goto :goto_1

    .line 374
    :pswitch_0
    iget-object v3, p0, Lio/grpc/internal/PickFirstLeafLoadBalancer;->addressIndex:Lio/grpc/internal/PickFirstLeafLoadBalancer$Index;

    invoke-virtual {v3}, Lio/grpc/internal/PickFirstLeafLoadBalancer$Index;->increment()Z

    .line 375
    invoke-virtual {p0}, Lio/grpc/internal/PickFirstLeafLoadBalancer;->requestConnection()V

    .line 376
    goto :goto_1

    .line 378
    :pswitch_1
    sget-object v3, Lio/grpc/internal/PickFirstLeafLoadBalancer;->log:Ljava/util/logging/Logger;

    const-string v4, "Requesting a connection even though we have a READY subchannel"

    invoke-virtual {v3, v4}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    .line 379
    goto :goto_1

    .line 367
    :pswitch_2
    iget-boolean v3, p0, Lio/grpc/internal/PickFirstLeafLoadBalancer;->enableHappyEyeballs:Z

    if-eqz v3, :cond_2

    .line 368
    invoke-direct {p0}, Lio/grpc/internal/PickFirstLeafLoadBalancer;->scheduleNextConnection()V

    goto :goto_1

    .line 370
    :cond_2
    invoke-virtual {v1}, Lio/grpc/LoadBalancer$Subchannel;->requestConnection()V

    .line 372
    goto :goto_1

    .line 362
    :pswitch_3
    invoke-virtual {v1}, Lio/grpc/LoadBalancer$Subchannel;->requestConnection()V

    .line 363
    iget-object v3, p0, Lio/grpc/internal/PickFirstLeafLoadBalancer;->subchannels:Ljava/util/Map;

    invoke-interface {v3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lio/grpc/internal/PickFirstLeafLoadBalancer$SubchannelData;

    sget-object v4, Lio/grpc/ConnectivityState;->CONNECTING:Lio/grpc/ConnectivityState;

    invoke-static {v3, v4}, Lio/grpc/internal/PickFirstLeafLoadBalancer$SubchannelData;->access$000(Lio/grpc/internal/PickFirstLeafLoadBalancer$SubchannelData;Lio/grpc/ConnectivityState;)V

    .line 364
    invoke-direct {p0}, Lio/grpc/internal/PickFirstLeafLoadBalancer;->scheduleNextConnection()V

    .line 365
    nop

    .line 384
    :goto_1
    return-void

    .line 349
    .end local v0    # "currentAddress":Ljava/net/SocketAddress;
    .end local v1    # "subchannel":Lio/grpc/LoadBalancer$Subchannel;
    .end local v2    # "subchannelState":Lio/grpc/ConnectivityState;
    :cond_3
    :goto_2
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public shutdown()V
    .locals 4

    .line 310
    sget-object v0, Lio/grpc/internal/PickFirstLeafLoadBalancer;->log:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    iget-object v2, p0, Lio/grpc/internal/PickFirstLeafLoadBalancer;->subchannels:Ljava/util/Map;

    .line 311
    invoke-interface {v2}, Ljava/util/Map;->size()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 310
    const-string v3, "Shutting down, currently have {} subchannels created"

    invoke-virtual {v0, v1, v3, v2}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Object;)V

    .line 312
    sget-object v0, Lio/grpc/ConnectivityState;->SHUTDOWN:Lio/grpc/ConnectivityState;

    iput-object v0, p0, Lio/grpc/internal/PickFirstLeafLoadBalancer;->rawConnectivityState:Lio/grpc/ConnectivityState;

    .line 313
    sget-object v0, Lio/grpc/ConnectivityState;->SHUTDOWN:Lio/grpc/ConnectivityState;

    iput-object v0, p0, Lio/grpc/internal/PickFirstLeafLoadBalancer;->concludedState:Lio/grpc/ConnectivityState;

    .line 314
    invoke-direct {p0}, Lio/grpc/internal/PickFirstLeafLoadBalancer;->cancelScheduleTask()V

    .line 316
    iget-object v0, p0, Lio/grpc/internal/PickFirstLeafLoadBalancer;->subchannels:Ljava/util/Map;

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

    check-cast v1, Lio/grpc/internal/PickFirstLeafLoadBalancer$SubchannelData;

    .line 317
    .local v1, "subchannelData":Lio/grpc/internal/PickFirstLeafLoadBalancer$SubchannelData;
    invoke-virtual {v1}, Lio/grpc/internal/PickFirstLeafLoadBalancer$SubchannelData;->getSubchannel()Lio/grpc/LoadBalancer$Subchannel;

    move-result-object v2

    invoke-virtual {v2}, Lio/grpc/LoadBalancer$Subchannel;->shutdown()V

    .line 318
    .end local v1    # "subchannelData":Lio/grpc/internal/PickFirstLeafLoadBalancer$SubchannelData;
    goto :goto_0

    .line 320
    :cond_0
    iget-object v0, p0, Lio/grpc/internal/PickFirstLeafLoadBalancer;->subchannels:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 321
    return-void
.end method
