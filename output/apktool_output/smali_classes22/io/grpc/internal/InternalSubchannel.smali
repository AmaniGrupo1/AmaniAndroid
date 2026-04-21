.class final Lio/grpc/internal/InternalSubchannel;
.super Ljava/lang/Object;
.source "InternalSubchannel.java"

# interfaces
.implements Lio/grpc/InternalInstrumented;
.implements Lio/grpc/internal/TransportProvider;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/grpc/internal/InternalSubchannel$TransportLogger;,
        Lio/grpc/internal/InternalSubchannel$Index;,
        Lio/grpc/internal/InternalSubchannel$CallTracingTransport;,
        Lio/grpc/internal/InternalSubchannel$Callback;,
        Lio/grpc/internal/InternalSubchannel$TransportListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/grpc/InternalInstrumented<",
        "Lio/grpc/InternalChannelz$ChannelStats;",
        ">;",
        "Lio/grpc/internal/TransportProvider;"
    }
.end annotation


# instance fields
.field private volatile activeTransport:Lio/grpc/internal/ManagedClientTransport;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private volatile addressGroups:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lio/grpc/EquivalentAddressGroup;",
            ">;"
        }
    .end annotation
.end field

.field private final addressIndex:Lio/grpc/internal/InternalSubchannel$Index;

.field private final authority:Ljava/lang/String;

.field private final backoffPolicyProvider:Lio/grpc/internal/BackoffPolicy$Provider;

.field private final callback:Lio/grpc/internal/InternalSubchannel$Callback;

.field private final callsTracer:Lio/grpc/internal/CallTracer;

.field private final channelLogger:Lio/grpc/ChannelLogger;

.field private final channelTracer:Lio/grpc/internal/ChannelTracer;

.field private final channelz:Lio/grpc/InternalChannelz;

.field private final connectingTimer:Lcom/google/common/base/Stopwatch;

.field private final inUseStateAggregator:Lio/grpc/internal/InUseStateAggregator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/grpc/internal/InUseStateAggregator<",
            "Lio/grpc/internal/ConnectionClientTransport;",
            ">;"
        }
    .end annotation
.end field

.field private final logId:Lio/grpc/InternalLogId;

.field private pendingTransport:Lio/grpc/internal/ConnectionClientTransport;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private reconnectPolicy:Lio/grpc/internal/BackoffPolicy;

.field private reconnectTask:Lio/grpc/SynchronizationContext$ScheduledHandle;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private final scheduledExecutor:Ljava/util/concurrent/ScheduledExecutorService;

.field private shutdownDueToUpdateTask:Lio/grpc/SynchronizationContext$ScheduledHandle;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private shutdownDueToUpdateTransport:Lio/grpc/internal/ManagedClientTransport;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private shutdownReason:Lio/grpc/Status;

.field private volatile state:Lio/grpc/ConnectivityStateInfo;

.field private final syncContext:Lio/grpc/SynchronizationContext;

.field private final transportFactory:Lio/grpc/internal/ClientTransportFactory;

.field private final transportFilters:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lio/grpc/ClientTransportFilter;",
            ">;"
        }
    .end annotation
.end field

.field private final transports:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection<",
            "Lio/grpc/internal/ConnectionClientTransport;",
            ">;"
        }
    .end annotation
.end field

.field private final userAgent:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Lio/grpc/internal/BackoffPolicy$Provider;Lio/grpc/internal/ClientTransportFactory;Ljava/util/concurrent/ScheduledExecutorService;Lcom/google/common/base/Supplier;Lio/grpc/SynchronizationContext;Lio/grpc/internal/InternalSubchannel$Callback;Lio/grpc/InternalChannelz;Lio/grpc/internal/CallTracer;Lio/grpc/internal/ChannelTracer;Lio/grpc/InternalLogId;Lio/grpc/ChannelLogger;Ljava/util/List;)V
    .locals 16
    .param p2, "authority"    # Ljava/lang/String;
    .param p3, "userAgent"    # Ljava/lang/String;
    .param p4, "backoffPolicyProvider"    # Lio/grpc/internal/BackoffPolicy$Provider;
    .param p5, "transportFactory"    # Lio/grpc/internal/ClientTransportFactory;
    .param p6, "scheduledExecutor"    # Ljava/util/concurrent/ScheduledExecutorService;
    .param p8, "syncContext"    # Lio/grpc/SynchronizationContext;
    .param p9, "callback"    # Lio/grpc/internal/InternalSubchannel$Callback;
    .param p10, "channelz"    # Lio/grpc/InternalChannelz;
    .param p11, "callsTracer"    # Lio/grpc/internal/CallTracer;
    .param p12, "channelTracer"    # Lio/grpc/internal/ChannelTracer;
    .param p13, "logId"    # Lio/grpc/InternalLogId;
    .param p14, "channelLogger"    # Lio/grpc/ChannelLogger;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lio/grpc/EquivalentAddressGroup;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lio/grpc/internal/BackoffPolicy$Provider;",
            "Lio/grpc/internal/ClientTransportFactory;",
            "Ljava/util/concurrent/ScheduledExecutorService;",
            "Lcom/google/common/base/Supplier<",
            "Lcom/google/common/base/Stopwatch;",
            ">;",
            "Lio/grpc/SynchronizationContext;",
            "Lio/grpc/internal/InternalSubchannel$Callback;",
            "Lio/grpc/InternalChannelz;",
            "Lio/grpc/internal/CallTracer;",
            "Lio/grpc/internal/ChannelTracer;",
            "Lio/grpc/InternalLogId;",
            "Lio/grpc/ChannelLogger;",
            "Ljava/util/List<",
            "Lio/grpc/ClientTransportFilter;",
            ">;)V"
        }
    .end annotation

    .line 166
    .local p1, "addressGroups":Ljava/util/List;, "Ljava/util/List<Lio/grpc/EquivalentAddressGroup;>;"
    .local p7, "stopwatchSupplier":Lcom/google/common/base/Supplier;, "Lcom/google/common/base/Supplier<Lcom/google/common/base/Stopwatch;>;"
    .local p15, "transportFilters":Ljava/util/List;, "Ljava/util/List<Lio/grpc/ClientTransportFilter;>;"
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 128
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, v0, Lio/grpc/internal/InternalSubchannel;->transports:Ljava/util/Collection;

    .line 131
    new-instance v2, Lio/grpc/internal/InternalSubchannel$1;

    invoke-direct {v2, v0}, Lio/grpc/internal/InternalSubchannel$1;-><init>(Lio/grpc/internal/InternalSubchannel;)V

    iput-object v2, v0, Lio/grpc/internal/InternalSubchannel;->inUseStateAggregator:Lio/grpc/internal/InUseStateAggregator;

    .line 156
    sget-object v2, Lio/grpc/ConnectivityState;->IDLE:Lio/grpc/ConnectivityState;

    invoke-static {v2}, Lio/grpc/ConnectivityStateInfo;->forNonError(Lio/grpc/ConnectivityState;)Lio/grpc/ConnectivityStateInfo;

    move-result-object v2

    iput-object v2, v0, Lio/grpc/internal/InternalSubchannel;->state:Lio/grpc/ConnectivityStateInfo;

    .line 167
    const-string v2, "addressGroups"

    invoke-static {v1, v2}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 168
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    const-string v3, "addressGroups is empty"

    invoke-static {v2, v3}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 169
    const-string v2, "addressGroups contains null entry"

    invoke-static {v1, v2}, Lio/grpc/internal/InternalSubchannel;->checkListHasNoNulls(Ljava/util/List;Ljava/lang/String;)V

    .line 170
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 171
    invoke-static {v2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    .line 172
    .local v2, "unmodifiableAddressGroups":Ljava/util/List;, "Ljava/util/List<Lio/grpc/EquivalentAddressGroup;>;"
    iput-object v2, v0, Lio/grpc/internal/InternalSubchannel;->addressGroups:Ljava/util/List;

    .line 173
    new-instance v3, Lio/grpc/internal/InternalSubchannel$Index;

    invoke-direct {v3, v2}, Lio/grpc/internal/InternalSubchannel$Index;-><init>(Ljava/util/List;)V

    iput-object v3, v0, Lio/grpc/internal/InternalSubchannel;->addressIndex:Lio/grpc/internal/InternalSubchannel$Index;

    .line 174
    move-object/from16 v3, p2

    iput-object v3, v0, Lio/grpc/internal/InternalSubchannel;->authority:Ljava/lang/String;

    .line 175
    move-object/from16 v4, p3

    iput-object v4, v0, Lio/grpc/internal/InternalSubchannel;->userAgent:Ljava/lang/String;

    .line 176
    move-object/from16 v5, p4

    iput-object v5, v0, Lio/grpc/internal/InternalSubchannel;->backoffPolicyProvider:Lio/grpc/internal/BackoffPolicy$Provider;

    .line 177
    move-object/from16 v6, p5

    iput-object v6, v0, Lio/grpc/internal/InternalSubchannel;->transportFactory:Lio/grpc/internal/ClientTransportFactory;

    .line 178
    move-object/from16 v7, p6

    iput-object v7, v0, Lio/grpc/internal/InternalSubchannel;->scheduledExecutor:Ljava/util/concurrent/ScheduledExecutorService;

    .line 179
    invoke-interface/range {p7 .. p7}, Lcom/google/common/base/Supplier;->get()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/google/common/base/Stopwatch;

    iput-object v8, v0, Lio/grpc/internal/InternalSubchannel;->connectingTimer:Lcom/google/common/base/Stopwatch;

    .line 180
    move-object/from16 v8, p8

    iput-object v8, v0, Lio/grpc/internal/InternalSubchannel;->syncContext:Lio/grpc/SynchronizationContext;

    .line 181
    move-object/from16 v9, p9

    iput-object v9, v0, Lio/grpc/internal/InternalSubchannel;->callback:Lio/grpc/internal/InternalSubchannel$Callback;

    .line 182
    move-object/from16 v10, p10

    iput-object v10, v0, Lio/grpc/internal/InternalSubchannel;->channelz:Lio/grpc/InternalChannelz;

    .line 183
    move-object/from16 v11, p11

    iput-object v11, v0, Lio/grpc/internal/InternalSubchannel;->callsTracer:Lio/grpc/internal/CallTracer;

    .line 184
    const-string v12, "channelTracer"

    move-object/from16 v13, p12

    invoke-static {v13, v12}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lio/grpc/internal/ChannelTracer;

    iput-object v12, v0, Lio/grpc/internal/InternalSubchannel;->channelTracer:Lio/grpc/internal/ChannelTracer;

    .line 185
    const-string v12, "logId"

    move-object/from16 v14, p13

    invoke-static {v14, v12}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lio/grpc/InternalLogId;

    iput-object v12, v0, Lio/grpc/internal/InternalSubchannel;->logId:Lio/grpc/InternalLogId;

    .line 186
    const-string v12, "channelLogger"

    move-object/from16 v15, p14

    invoke-static {v15, v12}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lio/grpc/ChannelLogger;

    iput-object v12, v0, Lio/grpc/internal/InternalSubchannel;->channelLogger:Lio/grpc/ChannelLogger;

    .line 187
    move-object/from16 v12, p15

    iput-object v12, v0, Lio/grpc/internal/InternalSubchannel;->transportFilters:Ljava/util/List;

    .line 188
    return-void
.end method

.method static synthetic access$000(Lio/grpc/internal/InternalSubchannel;)Lio/grpc/internal/InternalSubchannel$Callback;
    .locals 1
    .param p0, "x0"    # Lio/grpc/internal/InternalSubchannel;

    .line 67
    iget-object v0, p0, Lio/grpc/internal/InternalSubchannel;->callback:Lio/grpc/internal/InternalSubchannel$Callback;

    return-object v0
.end method

.method static synthetic access$100(Lio/grpc/internal/InternalSubchannel;)Lio/grpc/ConnectivityStateInfo;
    .locals 1
    .param p0, "x0"    # Lio/grpc/internal/InternalSubchannel;

    .line 67
    iget-object v0, p0, Lio/grpc/internal/InternalSubchannel;->state:Lio/grpc/ConnectivityStateInfo;

    return-object v0
.end method

.method static synthetic access$1000(Lio/grpc/internal/InternalSubchannel;)Lio/grpc/internal/ManagedClientTransport;
    .locals 1
    .param p0, "x0"    # Lio/grpc/internal/InternalSubchannel;

    .line 67
    iget-object v0, p0, Lio/grpc/internal/InternalSubchannel;->activeTransport:Lio/grpc/internal/ManagedClientTransport;

    return-object v0
.end method

.method static synthetic access$1002(Lio/grpc/internal/InternalSubchannel;Lio/grpc/internal/ManagedClientTransport;)Lio/grpc/internal/ManagedClientTransport;
    .locals 0
    .param p0, "x0"    # Lio/grpc/internal/InternalSubchannel;
    .param p1, "x1"    # Lio/grpc/internal/ManagedClientTransport;

    .line 67
    iput-object p1, p0, Lio/grpc/internal/InternalSubchannel;->activeTransport:Lio/grpc/internal/ManagedClientTransport;

    return-object p1
.end method

.method static synthetic access$1100(Lio/grpc/internal/InternalSubchannel;)Lio/grpc/internal/ConnectionClientTransport;
    .locals 1
    .param p0, "x0"    # Lio/grpc/internal/InternalSubchannel;

    .line 67
    iget-object v0, p0, Lio/grpc/internal/InternalSubchannel;->pendingTransport:Lio/grpc/internal/ConnectionClientTransport;

    return-object v0
.end method

.method static synthetic access$1102(Lio/grpc/internal/InternalSubchannel;Lio/grpc/internal/ConnectionClientTransport;)Lio/grpc/internal/ConnectionClientTransport;
    .locals 0
    .param p0, "x0"    # Lio/grpc/internal/InternalSubchannel;
    .param p1, "x1"    # Lio/grpc/internal/ConnectionClientTransport;

    .line 67
    iput-object p1, p0, Lio/grpc/internal/InternalSubchannel;->pendingTransport:Lio/grpc/internal/ConnectionClientTransport;

    return-object p1
.end method

.method static synthetic access$1200(Lio/grpc/internal/InternalSubchannel;)Lio/grpc/SynchronizationContext$ScheduledHandle;
    .locals 1
    .param p0, "x0"    # Lio/grpc/internal/InternalSubchannel;

    .line 67
    iget-object v0, p0, Lio/grpc/internal/InternalSubchannel;->shutdownDueToUpdateTask:Lio/grpc/SynchronizationContext$ScheduledHandle;

    return-object v0
.end method

.method static synthetic access$1202(Lio/grpc/internal/InternalSubchannel;Lio/grpc/SynchronizationContext$ScheduledHandle;)Lio/grpc/SynchronizationContext$ScheduledHandle;
    .locals 0
    .param p0, "x0"    # Lio/grpc/internal/InternalSubchannel;
    .param p1, "x1"    # Lio/grpc/SynchronizationContext$ScheduledHandle;

    .line 67
    iput-object p1, p0, Lio/grpc/internal/InternalSubchannel;->shutdownDueToUpdateTask:Lio/grpc/SynchronizationContext$ScheduledHandle;

    return-object p1
.end method

.method static synthetic access$1300(Lio/grpc/internal/InternalSubchannel;)Lio/grpc/internal/ManagedClientTransport;
    .locals 1
    .param p0, "x0"    # Lio/grpc/internal/InternalSubchannel;

    .line 67
    iget-object v0, p0, Lio/grpc/internal/InternalSubchannel;->shutdownDueToUpdateTransport:Lio/grpc/internal/ManagedClientTransport;

    return-object v0
.end method

.method static synthetic access$1302(Lio/grpc/internal/InternalSubchannel;Lio/grpc/internal/ManagedClientTransport;)Lio/grpc/internal/ManagedClientTransport;
    .locals 0
    .param p0, "x0"    # Lio/grpc/internal/InternalSubchannel;
    .param p1, "x1"    # Lio/grpc/internal/ManagedClientTransport;

    .line 67
    iput-object p1, p0, Lio/grpc/internal/InternalSubchannel;->shutdownDueToUpdateTransport:Lio/grpc/internal/ManagedClientTransport;

    return-object p1
.end method

.method static synthetic access$1400(Lio/grpc/internal/InternalSubchannel;)Ljava/util/concurrent/ScheduledExecutorService;
    .locals 1
    .param p0, "x0"    # Lio/grpc/internal/InternalSubchannel;

    .line 67
    iget-object v0, p0, Lio/grpc/internal/InternalSubchannel;->scheduledExecutor:Ljava/util/concurrent/ScheduledExecutorService;

    return-object v0
.end method

.method static synthetic access$1500(Lio/grpc/internal/InternalSubchannel;)Lio/grpc/SynchronizationContext;
    .locals 1
    .param p0, "x0"    # Lio/grpc/internal/InternalSubchannel;

    .line 67
    iget-object v0, p0, Lio/grpc/internal/InternalSubchannel;->syncContext:Lio/grpc/SynchronizationContext;

    return-object v0
.end method

.method static synthetic access$1600(Lio/grpc/internal/InternalSubchannel;)Lio/grpc/Status;
    .locals 1
    .param p0, "x0"    # Lio/grpc/internal/InternalSubchannel;

    .line 67
    iget-object v0, p0, Lio/grpc/internal/InternalSubchannel;->shutdownReason:Lio/grpc/Status;

    return-object v0
.end method

.method static synthetic access$1602(Lio/grpc/internal/InternalSubchannel;Lio/grpc/Status;)Lio/grpc/Status;
    .locals 0
    .param p0, "x0"    # Lio/grpc/internal/InternalSubchannel;
    .param p1, "x1"    # Lio/grpc/Status;

    .line 67
    iput-object p1, p0, Lio/grpc/internal/InternalSubchannel;->shutdownReason:Lio/grpc/Status;

    return-object p1
.end method

.method static synthetic access$1700(Lio/grpc/internal/InternalSubchannel;)Ljava/util/Collection;
    .locals 1
    .param p0, "x0"    # Lio/grpc/internal/InternalSubchannel;

    .line 67
    iget-object v0, p0, Lio/grpc/internal/InternalSubchannel;->transports:Ljava/util/Collection;

    return-object v0
.end method

.method static synthetic access$1800(Lio/grpc/internal/InternalSubchannel;)V
    .locals 0
    .param p0, "x0"    # Lio/grpc/internal/InternalSubchannel;

    .line 67
    invoke-direct {p0}, Lio/grpc/internal/InternalSubchannel;->handleTermination()V

    return-void
.end method

.method static synthetic access$1900(Lio/grpc/internal/InternalSubchannel;)Lio/grpc/internal/InUseStateAggregator;
    .locals 1
    .param p0, "x0"    # Lio/grpc/internal/InternalSubchannel;

    .line 67
    iget-object v0, p0, Lio/grpc/internal/InternalSubchannel;->inUseStateAggregator:Lio/grpc/internal/InUseStateAggregator;

    return-object v0
.end method

.method static synthetic access$200(Lio/grpc/internal/InternalSubchannel;)Lio/grpc/ChannelLogger;
    .locals 1
    .param p0, "x0"    # Lio/grpc/internal/InternalSubchannel;

    .line 67
    iget-object v0, p0, Lio/grpc/internal/InternalSubchannel;->channelLogger:Lio/grpc/ChannelLogger;

    return-object v0
.end method

.method static synthetic access$2000(Lio/grpc/internal/InternalSubchannel;)Lio/grpc/internal/CallTracer;
    .locals 1
    .param p0, "x0"    # Lio/grpc/internal/InternalSubchannel;

    .line 67
    iget-object v0, p0, Lio/grpc/internal/InternalSubchannel;->callsTracer:Lio/grpc/internal/CallTracer;

    return-object v0
.end method

.method static synthetic access$2100(Lio/grpc/internal/InternalSubchannel;)Lio/grpc/internal/ChannelTracer;
    .locals 1
    .param p0, "x0"    # Lio/grpc/internal/InternalSubchannel;

    .line 67
    iget-object v0, p0, Lio/grpc/internal/InternalSubchannel;->channelTracer:Lio/grpc/internal/ChannelTracer;

    return-object v0
.end method

.method static synthetic access$2200(Lio/grpc/internal/InternalSubchannel;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lio/grpc/internal/InternalSubchannel;

    .line 67
    iget-object v0, p0, Lio/grpc/internal/InternalSubchannel;->transportFilters:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$2302(Lio/grpc/internal/InternalSubchannel;Lio/grpc/internal/BackoffPolicy;)Lio/grpc/internal/BackoffPolicy;
    .locals 0
    .param p0, "x0"    # Lio/grpc/internal/InternalSubchannel;
    .param p1, "x1"    # Lio/grpc/internal/BackoffPolicy;

    .line 67
    iput-object p1, p0, Lio/grpc/internal/InternalSubchannel;->reconnectPolicy:Lio/grpc/internal/BackoffPolicy;

    return-object p1
.end method

.method static synthetic access$2400(Lio/grpc/internal/InternalSubchannel;Lio/grpc/internal/ConnectionClientTransport;Z)V
    .locals 0
    .param p0, "x0"    # Lio/grpc/internal/InternalSubchannel;
    .param p1, "x1"    # Lio/grpc/internal/ConnectionClientTransport;
    .param p2, "x2"    # Z

    .line 67
    invoke-direct {p0, p1, p2}, Lio/grpc/internal/InternalSubchannel;->handleTransportInUseState(Lio/grpc/internal/ConnectionClientTransport;Z)V

    return-void
.end method

.method static synthetic access$2500(Lio/grpc/internal/InternalSubchannel;Lio/grpc/Status;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lio/grpc/internal/InternalSubchannel;
    .param p1, "x1"    # Lio/grpc/Status;

    .line 67
    invoke-direct {p0, p1}, Lio/grpc/internal/InternalSubchannel;->printShortStatus(Lio/grpc/Status;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2600(Lio/grpc/internal/InternalSubchannel;Lio/grpc/Status;)V
    .locals 0
    .param p0, "x0"    # Lio/grpc/internal/InternalSubchannel;
    .param p1, "x1"    # Lio/grpc/Status;

    .line 67
    invoke-direct {p0, p1}, Lio/grpc/internal/InternalSubchannel;->scheduleBackoff(Lio/grpc/Status;)V

    return-void
.end method

.method static synthetic access$2700(Lio/grpc/internal/InternalSubchannel;)Lio/grpc/InternalChannelz;
    .locals 1
    .param p0, "x0"    # Lio/grpc/internal/InternalSubchannel;

    .line 67
    iget-object v0, p0, Lio/grpc/internal/InternalSubchannel;->channelz:Lio/grpc/InternalChannelz;

    return-object v0
.end method

.method static synthetic access$300(Lio/grpc/internal/InternalSubchannel;Lio/grpc/ConnectivityState;)V
    .locals 0
    .param p0, "x0"    # Lio/grpc/internal/InternalSubchannel;
    .param p1, "x1"    # Lio/grpc/ConnectivityState;

    .line 67
    invoke-direct {p0, p1}, Lio/grpc/internal/InternalSubchannel;->gotoNonErrorState(Lio/grpc/ConnectivityState;)V

    return-void
.end method

.method static synthetic access$400(Lio/grpc/internal/InternalSubchannel;)V
    .locals 0
    .param p0, "x0"    # Lio/grpc/internal/InternalSubchannel;

    .line 67
    invoke-direct {p0}, Lio/grpc/internal/InternalSubchannel;->startNewTransport()V

    return-void
.end method

.method static synthetic access$602(Lio/grpc/internal/InternalSubchannel;Lio/grpc/SynchronizationContext$ScheduledHandle;)Lio/grpc/SynchronizationContext$ScheduledHandle;
    .locals 0
    .param p0, "x0"    # Lio/grpc/internal/InternalSubchannel;
    .param p1, "x1"    # Lio/grpc/SynchronizationContext$ScheduledHandle;

    .line 67
    iput-object p1, p0, Lio/grpc/internal/InternalSubchannel;->reconnectTask:Lio/grpc/SynchronizationContext$ScheduledHandle;

    return-object p1
.end method

.method static synthetic access$700(Lio/grpc/internal/InternalSubchannel;)V
    .locals 0
    .param p0, "x0"    # Lio/grpc/internal/InternalSubchannel;

    .line 67
    invoke-direct {p0}, Lio/grpc/internal/InternalSubchannel;->cancelReconnectTask()V

    return-void
.end method

.method static synthetic access$800(Lio/grpc/internal/InternalSubchannel;)Lio/grpc/internal/InternalSubchannel$Index;
    .locals 1
    .param p0, "x0"    # Lio/grpc/internal/InternalSubchannel;

    .line 67
    iget-object v0, p0, Lio/grpc/internal/InternalSubchannel;->addressIndex:Lio/grpc/internal/InternalSubchannel$Index;

    return-object v0
.end method

.method static synthetic access$902(Lio/grpc/internal/InternalSubchannel;Ljava/util/List;)Ljava/util/List;
    .locals 0
    .param p0, "x0"    # Lio/grpc/internal/InternalSubchannel;
    .param p1, "x1"    # Ljava/util/List;

    .line 67
    iput-object p1, p0, Lio/grpc/internal/InternalSubchannel;->addressGroups:Ljava/util/List;

    return-object p1
.end method

.method private cancelReconnectTask()V
    .locals 1

    .line 495
    iget-object v0, p0, Lio/grpc/internal/InternalSubchannel;->syncContext:Lio/grpc/SynchronizationContext;

    invoke-virtual {v0}, Lio/grpc/SynchronizationContext;->throwIfNotInThisSynchronizationContext()V

    .line 497
    iget-object v0, p0, Lio/grpc/internal/InternalSubchannel;->reconnectTask:Lio/grpc/SynchronizationContext$ScheduledHandle;

    if-eqz v0, :cond_0

    .line 498
    iget-object v0, p0, Lio/grpc/internal/InternalSubchannel;->reconnectTask:Lio/grpc/SynchronizationContext$ScheduledHandle;

    invoke-virtual {v0}, Lio/grpc/SynchronizationContext$ScheduledHandle;->cancel()V

    .line 499
    const/4 v0, 0x0

    iput-object v0, p0, Lio/grpc/internal/InternalSubchannel;->reconnectTask:Lio/grpc/SynchronizationContext$ScheduledHandle;

    .line 500
    iput-object v0, p0, Lio/grpc/internal/InternalSubchannel;->reconnectPolicy:Lio/grpc/internal/BackoffPolicy;

    .line 502
    :cond_0
    return-void
.end method

.method private static checkListHasNoNulls(Ljava/util/List;Ljava/lang/String;)V
    .locals 2
    .param p1, "msg"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "*>;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 533
    .local p0, "list":Ljava/util/List;, "Ljava/util/List<*>;"
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 534
    .local v1, "item":Ljava/lang/Object;
    invoke-static {v1, p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 535
    .end local v1    # "item":Ljava/lang/Object;
    goto :goto_0

    .line 536
    :cond_0
    return-void
.end method

.method private gotoNonErrorState(Lio/grpc/ConnectivityState;)V
    .locals 1
    .param p1, "newState"    # Lio/grpc/ConnectivityState;

    .line 327
    iget-object v0, p0, Lio/grpc/internal/InternalSubchannel;->syncContext:Lio/grpc/SynchronizationContext;

    invoke-virtual {v0}, Lio/grpc/SynchronizationContext;->throwIfNotInThisSynchronizationContext()V

    .line 329
    invoke-static {p1}, Lio/grpc/ConnectivityStateInfo;->forNonError(Lio/grpc/ConnectivityState;)Lio/grpc/ConnectivityStateInfo;

    move-result-object v0

    invoke-direct {p0, v0}, Lio/grpc/internal/InternalSubchannel;->gotoState(Lio/grpc/ConnectivityStateInfo;)V

    .line 330
    return-void
.end method

.method private gotoState(Lio/grpc/ConnectivityStateInfo;)V
    .locals 3
    .param p1, "newState"    # Lio/grpc/ConnectivityStateInfo;

    .line 333
    iget-object v0, p0, Lio/grpc/internal/InternalSubchannel;->syncContext:Lio/grpc/SynchronizationContext;

    invoke-virtual {v0}, Lio/grpc/SynchronizationContext;->throwIfNotInThisSynchronizationContext()V

    .line 335
    iget-object v0, p0, Lio/grpc/internal/InternalSubchannel;->state:Lio/grpc/ConnectivityStateInfo;

    invoke-virtual {v0}, Lio/grpc/ConnectivityStateInfo;->getState()Lio/grpc/ConnectivityState;

    move-result-object v0

    invoke-virtual {p1}, Lio/grpc/ConnectivityStateInfo;->getState()Lio/grpc/ConnectivityState;

    move-result-object v1

    if-eq v0, v1, :cond_1

    .line 336
    iget-object v0, p0, Lio/grpc/internal/InternalSubchannel;->state:Lio/grpc/ConnectivityStateInfo;

    invoke-virtual {v0}, Lio/grpc/ConnectivityStateInfo;->getState()Lio/grpc/ConnectivityState;

    move-result-object v0

    sget-object v1, Lio/grpc/ConnectivityState;->SHUTDOWN:Lio/grpc/ConnectivityState;

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot transition out of SHUTDOWN to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/common/base/Preconditions;->checkState(ZLjava/lang/Object;)V

    .line 338
    iput-object p1, p0, Lio/grpc/internal/InternalSubchannel;->state:Lio/grpc/ConnectivityStateInfo;

    .line 339
    iget-object v0, p0, Lio/grpc/internal/InternalSubchannel;->callback:Lio/grpc/internal/InternalSubchannel$Callback;

    invoke-virtual {v0, p0, p1}, Lio/grpc/internal/InternalSubchannel$Callback;->onStateChange(Lio/grpc/internal/InternalSubchannel;Lio/grpc/ConnectivityStateInfo;)V

    .line 341
    :cond_1
    return-void
.end method

.method private handleTermination()V
    .locals 2

    .line 456
    iget-object v0, p0, Lio/grpc/internal/InternalSubchannel;->syncContext:Lio/grpc/SynchronizationContext;

    new-instance v1, Lio/grpc/internal/InternalSubchannel$6;

    invoke-direct {v1, p0}, Lio/grpc/internal/InternalSubchannel$6;-><init>(Lio/grpc/internal/InternalSubchannel;)V

    invoke-virtual {v0, v1}, Lio/grpc/SynchronizationContext;->execute(Ljava/lang/Runnable;)V

    .line 463
    return-void
.end method

.method private handleTransportInUseState(Lio/grpc/internal/ConnectionClientTransport;Z)V
    .locals 2
    .param p1, "transport"    # Lio/grpc/internal/ConnectionClientTransport;
    .param p2, "inUse"    # Z

    .line 467
    iget-object v0, p0, Lio/grpc/internal/InternalSubchannel;->syncContext:Lio/grpc/SynchronizationContext;

    new-instance v1, Lio/grpc/internal/InternalSubchannel$7;

    invoke-direct {v1, p0, p1, p2}, Lio/grpc/internal/InternalSubchannel$7;-><init>(Lio/grpc/internal/InternalSubchannel;Lio/grpc/internal/ConnectionClientTransport;Z)V

    invoke-virtual {v0, v1}, Lio/grpc/SynchronizationContext;->execute(Ljava/lang/Runnable;)V

    .line 473
    return-void
.end method

.method private printShortStatus(Lio/grpc/Status;)Ljava/lang/String;
    .locals 3
    .param p1, "status"    # Lio/grpc/Status;

    .line 785
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 786
    .local v0, "buffer":Ljava/lang/StringBuilder;
    invoke-virtual {p1}, Lio/grpc/Status;->getCode()Lio/grpc/Status$Code;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 787
    invoke-virtual {p1}, Lio/grpc/Status;->getDescription()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 788
    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lio/grpc/Status;->getDescription()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 790
    :cond_0
    invoke-virtual {p1}, Lio/grpc/Status;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 791
    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lio/grpc/Status;->getCause()Ljava/lang/Throwable;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 793
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private scheduleBackoff(Lio/grpc/Status;)V
    .locals 10
    .param p1, "status"    # Lio/grpc/Status;

    .line 277
    iget-object v0, p0, Lio/grpc/internal/InternalSubchannel;->syncContext:Lio/grpc/SynchronizationContext;

    invoke-virtual {v0}, Lio/grpc/SynchronizationContext;->throwIfNotInThisSynchronizationContext()V

    .line 289
    invoke-static {p1}, Lio/grpc/ConnectivityStateInfo;->forTransientFailure(Lio/grpc/Status;)Lio/grpc/ConnectivityStateInfo;

    move-result-object v0

    invoke-direct {p0, v0}, Lio/grpc/internal/InternalSubchannel;->gotoState(Lio/grpc/ConnectivityStateInfo;)V

    .line 290
    iget-object v0, p0, Lio/grpc/internal/InternalSubchannel;->reconnectPolicy:Lio/grpc/internal/BackoffPolicy;

    if-nez v0, :cond_0

    .line 291
    iget-object v0, p0, Lio/grpc/internal/InternalSubchannel;->backoffPolicyProvider:Lio/grpc/internal/BackoffPolicy$Provider;

    invoke-interface {v0}, Lio/grpc/internal/BackoffPolicy$Provider;->get()Lio/grpc/internal/BackoffPolicy;

    move-result-object v0

    iput-object v0, p0, Lio/grpc/internal/InternalSubchannel;->reconnectPolicy:Lio/grpc/internal/BackoffPolicy;

    .line 293
    :cond_0
    iget-object v0, p0, Lio/grpc/internal/InternalSubchannel;->reconnectPolicy:Lio/grpc/internal/BackoffPolicy;

    .line 294
    invoke-interface {v0}, Lio/grpc/internal/BackoffPolicy;->nextBackoffNanos()J

    move-result-wide v0

    iget-object v2, p0, Lio/grpc/internal/InternalSubchannel;->connectingTimer:Lcom/google/common/base/Stopwatch;

    sget-object v3, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v2, v3}, Lcom/google/common/base/Stopwatch;->elapsed(Ljava/util/concurrent/TimeUnit;)J

    move-result-wide v2

    sub-long v6, v0, v2

    .line 295
    .local v6, "delayNanos":J
    iget-object v0, p0, Lio/grpc/internal/InternalSubchannel;->channelLogger:Lio/grpc/ChannelLogger;

    sget-object v1, Lio/grpc/ChannelLogger$ChannelLogLevel;->INFO:Lio/grpc/ChannelLogger$ChannelLogLevel;

    .line 298
    invoke-direct {p0, p1}, Lio/grpc/internal/InternalSubchannel;->printShortStatus(Lio/grpc/Status;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    filled-new-array {v2, v3}, [Ljava/lang/Object;

    move-result-object v2

    .line 295
    const-string v3, "TRANSIENT_FAILURE ({0}). Will reconnect after {1} ns"

    invoke-virtual {v0, v1, v3, v2}, Lio/grpc/ChannelLogger;->log(Lio/grpc/ChannelLogger$ChannelLogLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 299
    iget-object v0, p0, Lio/grpc/internal/InternalSubchannel;->reconnectTask:Lio/grpc/SynchronizationContext$ScheduledHandle;

    if-nez v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    const-string v1, "previous reconnectTask is not done"

    invoke-static {v0, v1}, Lcom/google/common/base/Preconditions;->checkState(ZLjava/lang/Object;)V

    .line 300
    iget-object v4, p0, Lio/grpc/internal/InternalSubchannel;->syncContext:Lio/grpc/SynchronizationContext;

    new-instance v5, Lio/grpc/internal/InternalSubchannel$1EndOfCurrentBackoff;

    invoke-direct {v5, p0}, Lio/grpc/internal/InternalSubchannel$1EndOfCurrentBackoff;-><init>(Lio/grpc/internal/InternalSubchannel;)V

    sget-object v8, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    iget-object v9, p0, Lio/grpc/internal/InternalSubchannel;->scheduledExecutor:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-virtual/range {v4 .. v9}, Lio/grpc/SynchronizationContext;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/ScheduledExecutorService;)Lio/grpc/SynchronizationContext$ScheduledHandle;

    move-result-object v0

    iput-object v0, p0, Lio/grpc/internal/InternalSubchannel;->reconnectTask:Lio/grpc/SynchronizationContext$ScheduledHandle;

    .line 305
    return-void
.end method

.method private startNewTransport()V
    .locals 12

    .line 229
    iget-object v0, p0, Lio/grpc/internal/InternalSubchannel;->syncContext:Lio/grpc/SynchronizationContext;

    invoke-virtual {v0}, Lio/grpc/SynchronizationContext;->throwIfNotInThisSynchronizationContext()V

    .line 231
    iget-object v0, p0, Lio/grpc/internal/InternalSubchannel;->reconnectTask:Lio/grpc/SynchronizationContext$ScheduledHandle;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "Should have no reconnectTask scheduled"

    invoke-static {v0, v1}, Lcom/google/common/base/Preconditions;->checkState(ZLjava/lang/Object;)V

    .line 233
    iget-object v0, p0, Lio/grpc/internal/InternalSubchannel;->addressIndex:Lio/grpc/internal/InternalSubchannel$Index;

    invoke-virtual {v0}, Lio/grpc/internal/InternalSubchannel$Index;->isAtBeginning()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 234
    iget-object v0, p0, Lio/grpc/internal/InternalSubchannel;->connectingTimer:Lcom/google/common/base/Stopwatch;

    invoke-virtual {v0}, Lcom/google/common/base/Stopwatch;->reset()Lcom/google/common/base/Stopwatch;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/base/Stopwatch;->start()Lcom/google/common/base/Stopwatch;

    .line 236
    :cond_1
    iget-object v0, p0, Lio/grpc/internal/InternalSubchannel;->addressIndex:Lio/grpc/internal/InternalSubchannel$Index;

    invoke-virtual {v0}, Lio/grpc/internal/InternalSubchannel$Index;->getCurrentAddress()Ljava/net/SocketAddress;

    move-result-object v0

    .line 238
    .local v0, "address":Ljava/net/SocketAddress;
    const/4 v1, 0x0

    .line 239
    .local v1, "proxiedAddr":Lio/grpc/HttpConnectProxiedSocketAddress;
    instance-of v2, v0, Lio/grpc/HttpConnectProxiedSocketAddress;

    if-eqz v2, :cond_2

    .line 240
    move-object v1, v0

    check-cast v1, Lio/grpc/HttpConnectProxiedSocketAddress;

    .line 241
    invoke-virtual {v1}, Lio/grpc/HttpConnectProxiedSocketAddress;->getTargetAddress()Ljava/net/InetSocketAddress;

    move-result-object v0

    .line 244
    :cond_2
    iget-object v2, p0, Lio/grpc/internal/InternalSubchannel;->addressIndex:Lio/grpc/internal/InternalSubchannel$Index;

    invoke-virtual {v2}, Lio/grpc/internal/InternalSubchannel$Index;->getCurrentEagAttributes()Lio/grpc/Attributes;

    move-result-object v2

    .line 245
    .local v2, "currentEagAttributes":Lio/grpc/Attributes;
    sget-object v3, Lio/grpc/EquivalentAddressGroup;->ATTR_AUTHORITY_OVERRIDE:Lio/grpc/Attributes$Key;

    .line 246
    invoke-virtual {v2, v3}, Lio/grpc/Attributes;->get(Lio/grpc/Attributes$Key;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 247
    .local v3, "eagChannelAuthority":Ljava/lang/String;
    new-instance v4, Lio/grpc/internal/ClientTransportFactory$ClientTransportOptions;

    invoke-direct {v4}, Lio/grpc/internal/ClientTransportFactory$ClientTransportOptions;-><init>()V

    .line 249
    if-eqz v3, :cond_3

    move-object v5, v3

    goto :goto_1

    :cond_3
    iget-object v5, p0, Lio/grpc/internal/InternalSubchannel;->authority:Ljava/lang/String;

    :goto_1
    invoke-virtual {v4, v5}, Lio/grpc/internal/ClientTransportFactory$ClientTransportOptions;->setAuthority(Ljava/lang/String;)Lio/grpc/internal/ClientTransportFactory$ClientTransportOptions;

    move-result-object v4

    .line 250
    invoke-virtual {v4, v2}, Lio/grpc/internal/ClientTransportFactory$ClientTransportOptions;->setEagAttributes(Lio/grpc/Attributes;)Lio/grpc/internal/ClientTransportFactory$ClientTransportOptions;

    move-result-object v4

    iget-object v5, p0, Lio/grpc/internal/InternalSubchannel;->userAgent:Ljava/lang/String;

    .line 251
    invoke-virtual {v4, v5}, Lio/grpc/internal/ClientTransportFactory$ClientTransportOptions;->setUserAgent(Ljava/lang/String;)Lio/grpc/internal/ClientTransportFactory$ClientTransportOptions;

    move-result-object v4

    .line 252
    invoke-virtual {v4, v1}, Lio/grpc/internal/ClientTransportFactory$ClientTransportOptions;->setHttpConnectProxiedSocketAddress(Lio/grpc/HttpConnectProxiedSocketAddress;)Lio/grpc/internal/ClientTransportFactory$ClientTransportOptions;

    move-result-object v4

    .line 253
    .local v4, "options":Lio/grpc/internal/ClientTransportFactory$ClientTransportOptions;
    new-instance v5, Lio/grpc/internal/InternalSubchannel$TransportLogger;

    invoke-direct {v5}, Lio/grpc/internal/InternalSubchannel$TransportLogger;-><init>()V

    .line 255
    .local v5, "transportLogger":Lio/grpc/internal/InternalSubchannel$TransportLogger;
    invoke-virtual {p0}, Lio/grpc/internal/InternalSubchannel;->getLogId()Lio/grpc/InternalLogId;

    move-result-object v6

    iput-object v6, v5, Lio/grpc/internal/InternalSubchannel$TransportLogger;->logId:Lio/grpc/InternalLogId;

    .line 256
    new-instance v6, Lio/grpc/internal/InternalSubchannel$CallTracingTransport;

    iget-object v7, p0, Lio/grpc/internal/InternalSubchannel;->transportFactory:Lio/grpc/internal/ClientTransportFactory;

    .line 259
    invoke-interface {v7, v0, v4, v5}, Lio/grpc/internal/ClientTransportFactory;->newClientTransport(Ljava/net/SocketAddress;Lio/grpc/internal/ClientTransportFactory$ClientTransportOptions;Lio/grpc/ChannelLogger;)Lio/grpc/internal/ConnectionClientTransport;

    move-result-object v7

    iget-object v8, p0, Lio/grpc/internal/InternalSubchannel;->callsTracer:Lio/grpc/internal/CallTracer;

    const/4 v9, 0x0

    invoke-direct {v6, v7, v8, v9}, Lio/grpc/internal/InternalSubchannel$CallTracingTransport;-><init>(Lio/grpc/internal/ConnectionClientTransport;Lio/grpc/internal/CallTracer;Lio/grpc/internal/InternalSubchannel$1;)V

    .line 260
    .local v6, "transport":Lio/grpc/internal/ConnectionClientTransport;
    invoke-interface {v6}, Lio/grpc/internal/ConnectionClientTransport;->getLogId()Lio/grpc/InternalLogId;

    move-result-object v7

    iput-object v7, v5, Lio/grpc/internal/InternalSubchannel$TransportLogger;->logId:Lio/grpc/InternalLogId;

    .line 261
    iget-object v7, p0, Lio/grpc/internal/InternalSubchannel;->channelz:Lio/grpc/InternalChannelz;

    invoke-virtual {v7, v6}, Lio/grpc/InternalChannelz;->addClientSocket(Lio/grpc/InternalInstrumented;)V

    .line 262
    iput-object v6, p0, Lio/grpc/internal/InternalSubchannel;->pendingTransport:Lio/grpc/internal/ConnectionClientTransport;

    .line 263
    iget-object v7, p0, Lio/grpc/internal/InternalSubchannel;->transports:Ljava/util/Collection;

    invoke-interface {v7, v6}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 264
    new-instance v7, Lio/grpc/internal/InternalSubchannel$TransportListener;

    invoke-direct {v7, p0, v6}, Lio/grpc/internal/InternalSubchannel$TransportListener;-><init>(Lio/grpc/internal/InternalSubchannel;Lio/grpc/internal/ConnectionClientTransport;)V

    invoke-interface {v6, v7}, Lio/grpc/internal/ConnectionClientTransport;->start(Lio/grpc/internal/ManagedClientTransport$Listener;)Ljava/lang/Runnable;

    move-result-object v7

    .line 265
    .local v7, "runnable":Ljava/lang/Runnable;
    if-eqz v7, :cond_4

    .line 266
    iget-object v8, p0, Lio/grpc/internal/InternalSubchannel;->syncContext:Lio/grpc/SynchronizationContext;

    invoke-virtual {v8, v7}, Lio/grpc/SynchronizationContext;->executeLater(Ljava/lang/Runnable;)V

    .line 268
    :cond_4
    iget-object v8, p0, Lio/grpc/internal/InternalSubchannel;->channelLogger:Lio/grpc/ChannelLogger;

    sget-object v9, Lio/grpc/ChannelLogger$ChannelLogLevel;->INFO:Lio/grpc/ChannelLogger$ChannelLogLevel;

    iget-object v10, v5, Lio/grpc/internal/InternalSubchannel$TransportLogger;->logId:Lio/grpc/InternalLogId;

    filled-new-array {v10}, [Ljava/lang/Object;

    move-result-object v10

    const-string v11, "Started transport {0}"

    invoke-virtual {v8, v9, v11, v10}, Lio/grpc/ChannelLogger;->log(Lio/grpc/ChannelLogger$ChannelLogLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 269
    return-void
.end method


# virtual methods
.method getAddressGroups()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lio/grpc/EquivalentAddressGroup;",
            ">;"
        }
    .end annotation

    .line 491
    iget-object v0, p0, Lio/grpc/internal/InternalSubchannel;->addressGroups:Ljava/util/List;

    return-object v0
.end method

.method getAuthority()Ljava/lang/String;
    .locals 1

    .line 225
    iget-object v0, p0, Lio/grpc/internal/InternalSubchannel;->authority:Ljava/lang/String;

    return-object v0
.end method

.method getChannelLogger()Lio/grpc/ChannelLogger;
    .locals 1

    .line 191
    iget-object v0, p0, Lio/grpc/internal/InternalSubchannel;->channelLogger:Lio/grpc/ChannelLogger;

    return-object v0
.end method

.method public getLogId()Lio/grpc/InternalLogId;
    .locals 1

    .line 506
    iget-object v0, p0, Lio/grpc/internal/InternalSubchannel;->logId:Lio/grpc/InternalLogId;

    return-object v0
.end method

.method getState()Lio/grpc/ConnectivityState;
    .locals 1

    .line 529
    iget-object v0, p0, Lio/grpc/internal/InternalSubchannel;->state:Lio/grpc/ConnectivityStateInfo;

    invoke-virtual {v0}, Lio/grpc/ConnectivityStateInfo;->getState()Lio/grpc/ConnectivityState;

    move-result-object v0

    return-object v0
.end method

.method public getStats()Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/util/concurrent/ListenableFuture<",
            "Lio/grpc/InternalChannelz$ChannelStats;",
            ">;"
        }
    .end annotation

    .line 511
    invoke-static {}, Lcom/google/common/util/concurrent/SettableFuture;->create()Lcom/google/common/util/concurrent/SettableFuture;

    move-result-object v0

    .line 512
    .local v0, "channelStatsFuture":Lcom/google/common/util/concurrent/SettableFuture;, "Lcom/google/common/util/concurrent/SettableFuture<Lio/grpc/InternalChannelz$ChannelStats;>;"
    iget-object v1, p0, Lio/grpc/internal/InternalSubchannel;->syncContext:Lio/grpc/SynchronizationContext;

    new-instance v2, Lio/grpc/internal/InternalSubchannel$9;

    invoke-direct {v2, p0, v0}, Lio/grpc/internal/InternalSubchannel$9;-><init>(Lio/grpc/internal/InternalSubchannel;Lcom/google/common/util/concurrent/SettableFuture;)V

    invoke-virtual {v1, v2}, Lio/grpc/SynchronizationContext;->execute(Ljava/lang/Runnable;)V

    .line 525
    return-object v0
.end method

.method getTransport()Lio/grpc/internal/ClientTransport;
    .locals 1
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 218
    iget-object v0, p0, Lio/grpc/internal/InternalSubchannel;->activeTransport:Lio/grpc/internal/ManagedClientTransport;

    return-object v0
.end method

.method public obtainActiveTransport()Lio/grpc/internal/ClientTransport;
    .locals 3

    .line 196
    iget-object v0, p0, Lio/grpc/internal/InternalSubchannel;->activeTransport:Lio/grpc/internal/ManagedClientTransport;

    .line 197
    .local v0, "savedTransport":Lio/grpc/internal/ClientTransport;
    if-eqz v0, :cond_0

    .line 198
    return-object v0

    .line 200
    :cond_0
    iget-object v1, p0, Lio/grpc/internal/InternalSubchannel;->syncContext:Lio/grpc/SynchronizationContext;

    new-instance v2, Lio/grpc/internal/InternalSubchannel$2;

    invoke-direct {v2, p0}, Lio/grpc/internal/InternalSubchannel$2;-><init>(Lio/grpc/internal/InternalSubchannel;)V

    invoke-virtual {v1, v2}, Lio/grpc/SynchronizationContext;->execute(Ljava/lang/Runnable;)V

    .line 210
    const/4 v1, 0x0

    return-object v1
.end method

.method resetConnectBackoff()V
    .locals 2

    .line 312
    iget-object v0, p0, Lio/grpc/internal/InternalSubchannel;->syncContext:Lio/grpc/SynchronizationContext;

    new-instance v1, Lio/grpc/internal/InternalSubchannel$3;

    invoke-direct {v1, p0}, Lio/grpc/internal/InternalSubchannel$3;-><init>(Lio/grpc/internal/InternalSubchannel;)V

    invoke-virtual {v0, v1}, Lio/grpc/SynchronizationContext;->execute(Ljava/lang/Runnable;)V

    .line 324
    return-void
.end method

.method public shutdown(Lio/grpc/Status;)V
    .locals 2
    .param p1, "reason"    # Lio/grpc/Status;

    .line 410
    iget-object v0, p0, Lio/grpc/internal/InternalSubchannel;->syncContext:Lio/grpc/SynchronizationContext;

    new-instance v1, Lio/grpc/internal/InternalSubchannel$5;

    invoke-direct {v1, p0, p1}, Lio/grpc/internal/InternalSubchannel$5;-><init>(Lio/grpc/internal/InternalSubchannel;Lio/grpc/Status;)V

    invoke-virtual {v0, v1}, Lio/grpc/SynchronizationContext;->execute(Ljava/lang/Runnable;)V

    .line 443
    return-void
.end method

.method shutdownNow(Lio/grpc/Status;)V
    .locals 2
    .param p1, "reason"    # Lio/grpc/Status;

    .line 476
    invoke-virtual {p0, p1}, Lio/grpc/internal/InternalSubchannel;->shutdown(Lio/grpc/Status;)V

    .line 477
    iget-object v0, p0, Lio/grpc/internal/InternalSubchannel;->syncContext:Lio/grpc/SynchronizationContext;

    new-instance v1, Lio/grpc/internal/InternalSubchannel$8;

    invoke-direct {v1, p0, p1}, Lio/grpc/internal/InternalSubchannel$8;-><init>(Lio/grpc/internal/InternalSubchannel;Lio/grpc/Status;)V

    invoke-virtual {v0, v1}, Lio/grpc/SynchronizationContext;->execute(Ljava/lang/Runnable;)V

    .line 488
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 449
    invoke-static {p0}, Lcom/google/common/base/MoreObjects;->toStringHelper(Ljava/lang/Object;)Lcom/google/common/base/MoreObjects$ToStringHelper;

    move-result-object v0

    iget-object v1, p0, Lio/grpc/internal/InternalSubchannel;->logId:Lio/grpc/InternalLogId;

    .line 450
    invoke-virtual {v1}, Lio/grpc/InternalLogId;->getId()J

    move-result-wide v1

    const-string v3, "logId"

    invoke-virtual {v0, v3, v1, v2}, Lcom/google/common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;J)Lcom/google/common/base/MoreObjects$ToStringHelper;

    move-result-object v0

    iget-object v1, p0, Lio/grpc/internal/InternalSubchannel;->addressGroups:Ljava/util/List;

    .line 451
    const-string v2, "addressGroups"

    invoke-virtual {v0, v2, v1}, Lcom/google/common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/MoreObjects$ToStringHelper;

    move-result-object v0

    .line 452
    invoke-virtual {v0}, Lcom/google/common/base/MoreObjects$ToStringHelper;->toString()Ljava/lang/String;

    move-result-object v0

    .line 449
    return-object v0
.end method

.method public updateAddresses(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lio/grpc/EquivalentAddressGroup;",
            ">;)V"
        }
    .end annotation

    .line 345
    .local p1, "newAddressGroups":Ljava/util/List;, "Ljava/util/List<Lio/grpc/EquivalentAddressGroup;>;"
    const-string v0, "newAddressGroups"

    invoke-static {p1, v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 346
    const-string v0, "newAddressGroups contains null entry"

    invoke-static {p1, v0}, Lio/grpc/internal/InternalSubchannel;->checkListHasNoNulls(Ljava/util/List;Ljava/lang/String;)V

    .line 347
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    const-string v1, "newAddressGroups is empty"

    invoke-static {v0, v1}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 348
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 349
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 351
    .local v0, "newImmutableAddressGroups":Ljava/util/List;, "Ljava/util/List<Lio/grpc/EquivalentAddressGroup;>;"
    iget-object v1, p0, Lio/grpc/internal/InternalSubchannel;->syncContext:Lio/grpc/SynchronizationContext;

    new-instance v2, Lio/grpc/internal/InternalSubchannel$4;

    invoke-direct {v2, p0, v0}, Lio/grpc/internal/InternalSubchannel$4;-><init>(Lio/grpc/internal/InternalSubchannel;Ljava/util/List;)V

    invoke-virtual {v1, v2}, Lio/grpc/SynchronizationContext;->execute(Ljava/lang/Runnable;)V

    .line 407
    return-void
.end method
