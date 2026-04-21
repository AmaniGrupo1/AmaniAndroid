.class public final Lio/grpc/internal/ManagedChannelImplBuilder;
.super Lio/grpc/ManagedChannelBuilder;
.source "ManagedChannelImplBuilder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/grpc/internal/ManagedChannelImplBuilder$DirectAddressNameResolverProvider;,
        Lio/grpc/internal/ManagedChannelImplBuilder$ManagedChannelDefaultPortProvider;,
        Lio/grpc/internal/ManagedChannelImplBuilder$FixedPortProvider;,
        Lio/grpc/internal/ManagedChannelImplBuilder$ChannelBuilderDefaultPortProvider;,
        Lio/grpc/internal/ManagedChannelImplBuilder$UnsupportedClientTransportFactoryBuilder;,
        Lio/grpc/internal/ManagedChannelImplBuilder$ClientTransportFactoryBuilder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lio/grpc/ManagedChannelBuilder<",
        "Lio/grpc/internal/ManagedChannelImplBuilder;",
        ">;"
    }
.end annotation


# static fields
.field private static final DEFAULT_COMPRESSOR_REGISTRY:Lio/grpc/CompressorRegistry;

.field private static final DEFAULT_DECOMPRESSOR_REGISTRY:Lio/grpc/DecompressorRegistry;

.field private static final DEFAULT_EXECUTOR_POOL:Lio/grpc/internal/ObjectPool;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/grpc/internal/ObjectPool<",
            "+",
            "Ljava/util/concurrent/Executor;",
            ">;"
        }
    .end annotation
.end field

.field private static final DEFAULT_PER_RPC_BUFFER_LIMIT_IN_BYTES:J = 0x100000L

.field private static final DEFAULT_RETRY_BUFFER_SIZE_IN_BYTES:J = 0x1000000L

.field private static final DIRECT_ADDRESS_SCHEME:Ljava/lang/String; = "directaddress"

.field private static final GET_CLIENT_INTERCEPTOR_METHOD:Ljava/lang/reflect/Method;

.field static final IDLE_MODE_DEFAULT_TIMEOUT_MILLIS:J

.field static final IDLE_MODE_MAX_TIMEOUT_DAYS:J = 0x1eL

.field static final IDLE_MODE_MIN_TIMEOUT_MILLIS:J

.field private static final log:Ljava/util/logging/Logger;


# instance fields
.field private authorityCheckerDisabled:Z

.field authorityOverride:Ljava/lang/String;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field binlog:Lio/grpc/BinaryLog;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field final callCredentials:Lio/grpc/CallCredentials;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private final channelBuilderDefaultPortProvider:Lio/grpc/internal/ManagedChannelImplBuilder$ChannelBuilderDefaultPortProvider;

.field final channelCredentials:Lio/grpc/ChannelCredentials;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field channelz:Lio/grpc/InternalChannelz;

.field private final clientTransportFactoryBuilder:Lio/grpc/internal/ManagedChannelImplBuilder$ClientTransportFactoryBuilder;

.field compressorRegistry:Lio/grpc/CompressorRegistry;

.field decompressorRegistry:Lio/grpc/DecompressorRegistry;

.field defaultLbPolicy:Ljava/lang/String;

.field defaultServiceConfig:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "*>;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private final directServerAddress:Ljava/net/SocketAddress;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field executorPool:Lio/grpc/internal/ObjectPool;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/grpc/internal/ObjectPool<",
            "+",
            "Ljava/util/concurrent/Executor;",
            ">;"
        }
    .end annotation
.end field

.field fullStreamDecompression:Z

.field idleTimeoutMillis:J

.field private final interceptors:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lio/grpc/ClientInterceptor;",
            ">;"
        }
    .end annotation
.end field

.field lookUpServiceConfig:Z

.field maxHedgedAttempts:I

.field maxRetryAttempts:I

.field maxTraceEvents:I

.field nameResolverRegistry:Lio/grpc/NameResolverRegistry;

.field offloadExecutorPool:Lio/grpc/internal/ObjectPool;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/grpc/internal/ObjectPool<",
            "+",
            "Ljava/util/concurrent/Executor;",
            ">;"
        }
    .end annotation
.end field

.field perRpcBufferLimit:J

.field proxyDetector:Lio/grpc/ProxyDetector;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private recordFinishedRpcs:Z

.field private recordRealTimeMetrics:Z

.field private recordRetryMetrics:Z

.field private recordStartedRpcs:Z

.field retryBufferSize:J

.field retryEnabled:Z

.field private statsEnabled:Z

.field final target:Ljava/lang/String;

.field private tracingEnabled:Z

.field final transportFilters:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lio/grpc/ClientTransportFilter;",
            ">;"
        }
    .end annotation
.end field

.field userAgent:Ljava/lang/String;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 68
    const-string v0, "Unable to apply census stats"

    const-class v1, Lio/grpc/internal/ManagedChannelImplBuilder;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v1

    sput-object v1, Lio/grpc/internal/ManagedChannelImplBuilder;->log:Ljava/util/logging/Logger;

    .line 92
    sget-object v1, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, 0x1e

    invoke-virtual {v1, v2, v3}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v1

    sput-wide v1, Lio/grpc/internal/ManagedChannelImplBuilder;->IDLE_MODE_DEFAULT_TIMEOUT_MILLIS:J

    .line 97
    sget-object v1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, 0x1

    invoke-virtual {v1, v2, v3}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v1

    sput-wide v1, Lio/grpc/internal/ManagedChannelImplBuilder;->IDLE_MODE_MIN_TIMEOUT_MILLIS:J

    .line 99
    sget-object v1, Lio/grpc/internal/GrpcUtil;->SHARED_CHANNEL_EXECUTOR:Lio/grpc/internal/SharedResourceHolder$Resource;

    .line 100
    invoke-static {v1}, Lio/grpc/internal/SharedResourcePool;->forResource(Lio/grpc/internal/SharedResourceHolder$Resource;)Lio/grpc/internal/SharedResourcePool;

    move-result-object v1

    sput-object v1, Lio/grpc/internal/ManagedChannelImplBuilder;->DEFAULT_EXECUTOR_POOL:Lio/grpc/internal/ObjectPool;

    .line 103
    invoke-static {}, Lio/grpc/DecompressorRegistry;->getDefaultInstance()Lio/grpc/DecompressorRegistry;

    move-result-object v1

    sput-object v1, Lio/grpc/internal/ManagedChannelImplBuilder;->DEFAULT_DECOMPRESSOR_REGISTRY:Lio/grpc/DecompressorRegistry;

    .line 106
    invoke-static {}, Lio/grpc/CompressorRegistry;->getDefaultInstance()Lio/grpc/CompressorRegistry;

    move-result-object v1

    sput-object v1, Lio/grpc/internal/ManagedChannelImplBuilder;->DEFAULT_COMPRESSOR_REGISTRY:Lio/grpc/CompressorRegistry;

    .line 114
    const/4 v1, 0x0

    .line 116
    .local v1, "getClientInterceptorMethod":Ljava/lang/reflect/Method;
    :try_start_0
    const-string v2, "io.grpc.census.InternalCensusStatsAccessor"

    .line 117
    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    .line 118
    .local v2, "censusStatsAccessor":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string v3, "getClientInterceptor"

    const/4 v4, 0x4

    new-array v4, v4, [Ljava/lang/Class;

    sget-object v5, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const/4 v6, 0x0

    aput-object v5, v4, v6

    sget-object v5, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const/4 v6, 0x1

    aput-object v5, v4, v6

    sget-object v5, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const/4 v6, 0x2

    aput-object v5, v4, v6

    sget-object v5, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const/4 v6, 0x3

    aput-object v5, v4, v6

    .line 119
    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v1, v0

    .line 130
    .end local v2    # "censusStatsAccessor":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :goto_0
    goto :goto_1

    .line 128
    :catch_0
    move-exception v2

    .line 129
    .local v2, "e":Ljava/lang/NoSuchMethodException;
    sget-object v3, Lio/grpc/internal/ManagedChannelImplBuilder;->log:Ljava/util/logging/Logger;

    sget-object v4, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v3, v4, v0, v2}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 125
    .end local v2    # "e":Ljava/lang/NoSuchMethodException;
    :catch_1
    move-exception v2

    .line 127
    .local v2, "e":Ljava/lang/ClassNotFoundException;
    sget-object v3, Lio/grpc/internal/ManagedChannelImplBuilder;->log:Ljava/util/logging/Logger;

    sget-object v4, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v3, v4, v0, v2}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .end local v2    # "e":Ljava/lang/ClassNotFoundException;
    goto :goto_0

    .line 131
    :goto_1
    sput-object v1, Lio/grpc/internal/ManagedChannelImplBuilder;->GET_CLIENT_INTERCEPTOR_METHOD:Ljava/lang/reflect/Method;

    .line 132
    .end local v1    # "getClientInterceptorMethod":Ljava/lang/reflect/Method;
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lio/grpc/ChannelCredentials;Lio/grpc/CallCredentials;Lio/grpc/internal/ManagedChannelImplBuilder$ClientTransportFactoryBuilder;Lio/grpc/internal/ManagedChannelImplBuilder$ChannelBuilderDefaultPortProvider;)V
    .locals 2
    .param p1, "target"    # Ljava/lang/String;
    .param p2, "channelCreds"    # Lio/grpc/ChannelCredentials;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p3, "callCreds"    # Lio/grpc/CallCredentials;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p4, "clientTransportFactoryBuilder"    # Lio/grpc/internal/ManagedChannelImplBuilder$ClientTransportFactoryBuilder;
    .param p5, "channelBuilderDefaultPortProvider"    # Lio/grpc/internal/ManagedChannelImplBuilder$ChannelBuilderDefaultPortProvider;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 273
    invoke-direct {p0}, Lio/grpc/ManagedChannelBuilder;-><init>()V

    .line 135
    sget-object v0, Lio/grpc/internal/ManagedChannelImplBuilder;->DEFAULT_EXECUTOR_POOL:Lio/grpc/internal/ObjectPool;

    iput-object v0, p0, Lio/grpc/internal/ManagedChannelImplBuilder;->executorPool:Lio/grpc/internal/ObjectPool;

    .line 137
    sget-object v0, Lio/grpc/internal/ManagedChannelImplBuilder;->DEFAULT_EXECUTOR_POOL:Lio/grpc/internal/ObjectPool;

    iput-object v0, p0, Lio/grpc/internal/ManagedChannelImplBuilder;->offloadExecutorPool:Lio/grpc/internal/ObjectPool;

    .line 139
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lio/grpc/internal/ManagedChannelImplBuilder;->interceptors:Ljava/util/List;

    .line 140
    invoke-static {}, Lio/grpc/NameResolverRegistry;->getDefaultRegistry()Lio/grpc/NameResolverRegistry;

    move-result-object v0

    iput-object v0, p0, Lio/grpc/internal/ManagedChannelImplBuilder;->nameResolverRegistry:Lio/grpc/NameResolverRegistry;

    .line 142
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lio/grpc/internal/ManagedChannelImplBuilder;->transportFilters:Ljava/util/List;

    .line 159
    const-string v0, "pick_first"

    iput-object v0, p0, Lio/grpc/internal/ManagedChannelImplBuilder;->defaultLbPolicy:Ljava/lang/String;

    .line 163
    sget-object v0, Lio/grpc/internal/ManagedChannelImplBuilder;->DEFAULT_DECOMPRESSOR_REGISTRY:Lio/grpc/DecompressorRegistry;

    iput-object v0, p0, Lio/grpc/internal/ManagedChannelImplBuilder;->decompressorRegistry:Lio/grpc/DecompressorRegistry;

    .line 165
    sget-object v0, Lio/grpc/internal/ManagedChannelImplBuilder;->DEFAULT_COMPRESSOR_REGISTRY:Lio/grpc/CompressorRegistry;

    iput-object v0, p0, Lio/grpc/internal/ManagedChannelImplBuilder;->compressorRegistry:Lio/grpc/CompressorRegistry;

    .line 167
    sget-wide v0, Lio/grpc/internal/ManagedChannelImplBuilder;->IDLE_MODE_DEFAULT_TIMEOUT_MILLIS:J

    iput-wide v0, p0, Lio/grpc/internal/ManagedChannelImplBuilder;->idleTimeoutMillis:J

    .line 169
    const/4 v0, 0x5

    iput v0, p0, Lio/grpc/internal/ManagedChannelImplBuilder;->maxRetryAttempts:I

    .line 170
    iput v0, p0, Lio/grpc/internal/ManagedChannelImplBuilder;->maxHedgedAttempts:I

    .line 171
    const-wide/32 v0, 0x1000000

    iput-wide v0, p0, Lio/grpc/internal/ManagedChannelImplBuilder;->retryBufferSize:J

    .line 172
    const-wide/32 v0, 0x100000

    iput-wide v0, p0, Lio/grpc/internal/ManagedChannelImplBuilder;->perRpcBufferLimit:J

    .line 173
    const/4 v0, 0x1

    iput-boolean v0, p0, Lio/grpc/internal/ManagedChannelImplBuilder;->retryEnabled:Z

    .line 175
    invoke-static {}, Lio/grpc/InternalChannelz;->instance()Lio/grpc/InternalChannelz;

    move-result-object v1

    iput-object v1, p0, Lio/grpc/internal/ManagedChannelImplBuilder;->channelz:Lio/grpc/InternalChannelz;

    .line 180
    iput-boolean v0, p0, Lio/grpc/internal/ManagedChannelImplBuilder;->lookUpServiceConfig:Z

    .line 189
    iput-boolean v0, p0, Lio/grpc/internal/ManagedChannelImplBuilder;->statsEnabled:Z

    .line 190
    iput-boolean v0, p0, Lio/grpc/internal/ManagedChannelImplBuilder;->recordStartedRpcs:Z

    .line 191
    iput-boolean v0, p0, Lio/grpc/internal/ManagedChannelImplBuilder;->recordFinishedRpcs:Z

    .line 192
    const/4 v1, 0x0

    iput-boolean v1, p0, Lio/grpc/internal/ManagedChannelImplBuilder;->recordRealTimeMetrics:Z

    .line 193
    iput-boolean v0, p0, Lio/grpc/internal/ManagedChannelImplBuilder;->recordRetryMetrics:Z

    .line 194
    iput-boolean v0, p0, Lio/grpc/internal/ManagedChannelImplBuilder;->tracingEnabled:Z

    .line 274
    const-string v0, "target"

    invoke-static {p1, v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lio/grpc/internal/ManagedChannelImplBuilder;->target:Ljava/lang/String;

    .line 275
    iput-object p2, p0, Lio/grpc/internal/ManagedChannelImplBuilder;->channelCredentials:Lio/grpc/ChannelCredentials;

    .line 276
    iput-object p3, p0, Lio/grpc/internal/ManagedChannelImplBuilder;->callCredentials:Lio/grpc/CallCredentials;

    .line 277
    const-string v0, "clientTransportFactoryBuilder"

    invoke-static {p4, v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/grpc/internal/ManagedChannelImplBuilder$ClientTransportFactoryBuilder;

    iput-object v0, p0, Lio/grpc/internal/ManagedChannelImplBuilder;->clientTransportFactoryBuilder:Lio/grpc/internal/ManagedChannelImplBuilder$ClientTransportFactoryBuilder;

    .line 279
    const/4 v0, 0x0

    iput-object v0, p0, Lio/grpc/internal/ManagedChannelImplBuilder;->directServerAddress:Ljava/net/SocketAddress;

    .line 281
    if-eqz p5, :cond_0

    .line 282
    iput-object p5, p0, Lio/grpc/internal/ManagedChannelImplBuilder;->channelBuilderDefaultPortProvider:Lio/grpc/internal/ManagedChannelImplBuilder$ChannelBuilderDefaultPortProvider;

    goto :goto_0

    .line 284
    :cond_0
    new-instance v1, Lio/grpc/internal/ManagedChannelImplBuilder$ManagedChannelDefaultPortProvider;

    invoke-direct {v1, v0}, Lio/grpc/internal/ManagedChannelImplBuilder$ManagedChannelDefaultPortProvider;-><init>(Lio/grpc/internal/ManagedChannelImplBuilder$1;)V

    iput-object v1, p0, Lio/grpc/internal/ManagedChannelImplBuilder;->channelBuilderDefaultPortProvider:Lio/grpc/internal/ManagedChannelImplBuilder$ChannelBuilderDefaultPortProvider;

    .line 286
    :goto_0
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lio/grpc/internal/ManagedChannelImplBuilder$ClientTransportFactoryBuilder;Lio/grpc/internal/ManagedChannelImplBuilder$ChannelBuilderDefaultPortProvider;)V
    .locals 6
    .param p1, "target"    # Ljava/lang/String;
    .param p2, "clientTransportFactoryBuilder"    # Lio/grpc/internal/ManagedChannelImplBuilder$ClientTransportFactoryBuilder;
    .param p3, "channelBuilderDefaultPortProvider"    # Lio/grpc/internal/ManagedChannelImplBuilder$ChannelBuilderDefaultPortProvider;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 259
    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v4, p2

    move-object v5, p3

    .end local p1    # "target":Ljava/lang/String;
    .end local p2    # "clientTransportFactoryBuilder":Lio/grpc/internal/ManagedChannelImplBuilder$ClientTransportFactoryBuilder;
    .end local p3    # "channelBuilderDefaultPortProvider":Lio/grpc/internal/ManagedChannelImplBuilder$ChannelBuilderDefaultPortProvider;
    .local v1, "target":Ljava/lang/String;
    .local v4, "clientTransportFactoryBuilder":Lio/grpc/internal/ManagedChannelImplBuilder$ClientTransportFactoryBuilder;
    .local v5, "channelBuilderDefaultPortProvider":Lio/grpc/internal/ManagedChannelImplBuilder$ChannelBuilderDefaultPortProvider;
    invoke-direct/range {v0 .. v5}, Lio/grpc/internal/ManagedChannelImplBuilder;-><init>(Ljava/lang/String;Lio/grpc/ChannelCredentials;Lio/grpc/CallCredentials;Lio/grpc/internal/ManagedChannelImplBuilder$ClientTransportFactoryBuilder;Lio/grpc/internal/ManagedChannelImplBuilder$ChannelBuilderDefaultPortProvider;)V

    .line 260
    return-void
.end method

.method public constructor <init>(Ljava/net/SocketAddress;Ljava/lang/String;Lio/grpc/ChannelCredentials;Lio/grpc/CallCredentials;Lio/grpc/internal/ManagedChannelImplBuilder$ClientTransportFactoryBuilder;Lio/grpc/internal/ManagedChannelImplBuilder$ChannelBuilderDefaultPortProvider;)V
    .locals 3
    .param p1, "directServerAddress"    # Ljava/net/SocketAddress;
    .param p2, "authority"    # Ljava/lang/String;
    .param p3, "channelCreds"    # Lio/grpc/ChannelCredentials;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p4, "callCreds"    # Lio/grpc/CallCredentials;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p5, "clientTransportFactoryBuilder"    # Lio/grpc/internal/ManagedChannelImplBuilder$ClientTransportFactoryBuilder;
    .param p6, "channelBuilderDefaultPortProvider"    # Lio/grpc/internal/ManagedChannelImplBuilder$ChannelBuilderDefaultPortProvider;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 326
    invoke-direct {p0}, Lio/grpc/ManagedChannelBuilder;-><init>()V

    .line 135
    sget-object v0, Lio/grpc/internal/ManagedChannelImplBuilder;->DEFAULT_EXECUTOR_POOL:Lio/grpc/internal/ObjectPool;

    iput-object v0, p0, Lio/grpc/internal/ManagedChannelImplBuilder;->executorPool:Lio/grpc/internal/ObjectPool;

    .line 137
    sget-object v0, Lio/grpc/internal/ManagedChannelImplBuilder;->DEFAULT_EXECUTOR_POOL:Lio/grpc/internal/ObjectPool;

    iput-object v0, p0, Lio/grpc/internal/ManagedChannelImplBuilder;->offloadExecutorPool:Lio/grpc/internal/ObjectPool;

    .line 139
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lio/grpc/internal/ManagedChannelImplBuilder;->interceptors:Ljava/util/List;

    .line 140
    invoke-static {}, Lio/grpc/NameResolverRegistry;->getDefaultRegistry()Lio/grpc/NameResolverRegistry;

    move-result-object v0

    iput-object v0, p0, Lio/grpc/internal/ManagedChannelImplBuilder;->nameResolverRegistry:Lio/grpc/NameResolverRegistry;

    .line 142
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lio/grpc/internal/ManagedChannelImplBuilder;->transportFilters:Ljava/util/List;

    .line 159
    const-string v0, "pick_first"

    iput-object v0, p0, Lio/grpc/internal/ManagedChannelImplBuilder;->defaultLbPolicy:Ljava/lang/String;

    .line 163
    sget-object v0, Lio/grpc/internal/ManagedChannelImplBuilder;->DEFAULT_DECOMPRESSOR_REGISTRY:Lio/grpc/DecompressorRegistry;

    iput-object v0, p0, Lio/grpc/internal/ManagedChannelImplBuilder;->decompressorRegistry:Lio/grpc/DecompressorRegistry;

    .line 165
    sget-object v0, Lio/grpc/internal/ManagedChannelImplBuilder;->DEFAULT_COMPRESSOR_REGISTRY:Lio/grpc/CompressorRegistry;

    iput-object v0, p0, Lio/grpc/internal/ManagedChannelImplBuilder;->compressorRegistry:Lio/grpc/CompressorRegistry;

    .line 167
    sget-wide v0, Lio/grpc/internal/ManagedChannelImplBuilder;->IDLE_MODE_DEFAULT_TIMEOUT_MILLIS:J

    iput-wide v0, p0, Lio/grpc/internal/ManagedChannelImplBuilder;->idleTimeoutMillis:J

    .line 169
    const/4 v0, 0x5

    iput v0, p0, Lio/grpc/internal/ManagedChannelImplBuilder;->maxRetryAttempts:I

    .line 170
    iput v0, p0, Lio/grpc/internal/ManagedChannelImplBuilder;->maxHedgedAttempts:I

    .line 171
    const-wide/32 v0, 0x1000000

    iput-wide v0, p0, Lio/grpc/internal/ManagedChannelImplBuilder;->retryBufferSize:J

    .line 172
    const-wide/32 v0, 0x100000

    iput-wide v0, p0, Lio/grpc/internal/ManagedChannelImplBuilder;->perRpcBufferLimit:J

    .line 173
    const/4 v0, 0x1

    iput-boolean v0, p0, Lio/grpc/internal/ManagedChannelImplBuilder;->retryEnabled:Z

    .line 175
    invoke-static {}, Lio/grpc/InternalChannelz;->instance()Lio/grpc/InternalChannelz;

    move-result-object v1

    iput-object v1, p0, Lio/grpc/internal/ManagedChannelImplBuilder;->channelz:Lio/grpc/InternalChannelz;

    .line 180
    iput-boolean v0, p0, Lio/grpc/internal/ManagedChannelImplBuilder;->lookUpServiceConfig:Z

    .line 189
    iput-boolean v0, p0, Lio/grpc/internal/ManagedChannelImplBuilder;->statsEnabled:Z

    .line 190
    iput-boolean v0, p0, Lio/grpc/internal/ManagedChannelImplBuilder;->recordStartedRpcs:Z

    .line 191
    iput-boolean v0, p0, Lio/grpc/internal/ManagedChannelImplBuilder;->recordFinishedRpcs:Z

    .line 192
    const/4 v1, 0x0

    iput-boolean v1, p0, Lio/grpc/internal/ManagedChannelImplBuilder;->recordRealTimeMetrics:Z

    .line 193
    iput-boolean v0, p0, Lio/grpc/internal/ManagedChannelImplBuilder;->recordRetryMetrics:Z

    .line 194
    iput-boolean v0, p0, Lio/grpc/internal/ManagedChannelImplBuilder;->tracingEnabled:Z

    .line 327
    invoke-static {p1}, Lio/grpc/internal/ManagedChannelImplBuilder;->makeTargetStringForDirectAddress(Ljava/net/SocketAddress;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lio/grpc/internal/ManagedChannelImplBuilder;->target:Ljava/lang/String;

    .line 328
    iput-object p3, p0, Lio/grpc/internal/ManagedChannelImplBuilder;->channelCredentials:Lio/grpc/ChannelCredentials;

    .line 329
    iput-object p4, p0, Lio/grpc/internal/ManagedChannelImplBuilder;->callCredentials:Lio/grpc/CallCredentials;

    .line 330
    const-string v0, "clientTransportFactoryBuilder"

    invoke-static {p5, v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/grpc/internal/ManagedChannelImplBuilder$ClientTransportFactoryBuilder;

    iput-object v0, p0, Lio/grpc/internal/ManagedChannelImplBuilder;->clientTransportFactoryBuilder:Lio/grpc/internal/ManagedChannelImplBuilder$ClientTransportFactoryBuilder;

    .line 332
    iput-object p1, p0, Lio/grpc/internal/ManagedChannelImplBuilder;->directServerAddress:Ljava/net/SocketAddress;

    .line 333
    new-instance v0, Lio/grpc/NameResolverRegistry;

    invoke-direct {v0}, Lio/grpc/NameResolverRegistry;-><init>()V

    .line 334
    .local v0, "reg":Lio/grpc/NameResolverRegistry;
    new-instance v1, Lio/grpc/internal/ManagedChannelImplBuilder$DirectAddressNameResolverProvider;

    invoke-direct {v1, p1, p2}, Lio/grpc/internal/ManagedChannelImplBuilder$DirectAddressNameResolverProvider;-><init>(Ljava/net/SocketAddress;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lio/grpc/NameResolverRegistry;->register(Lio/grpc/NameResolverProvider;)V

    .line 336
    iput-object v0, p0, Lio/grpc/internal/ManagedChannelImplBuilder;->nameResolverRegistry:Lio/grpc/NameResolverRegistry;

    .line 338
    if-eqz p6, :cond_0

    .line 339
    iput-object p6, p0, Lio/grpc/internal/ManagedChannelImplBuilder;->channelBuilderDefaultPortProvider:Lio/grpc/internal/ManagedChannelImplBuilder$ChannelBuilderDefaultPortProvider;

    goto :goto_0

    .line 341
    :cond_0
    new-instance v1, Lio/grpc/internal/ManagedChannelImplBuilder$ManagedChannelDefaultPortProvider;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lio/grpc/internal/ManagedChannelImplBuilder$ManagedChannelDefaultPortProvider;-><init>(Lio/grpc/internal/ManagedChannelImplBuilder$1;)V

    iput-object v1, p0, Lio/grpc/internal/ManagedChannelImplBuilder;->channelBuilderDefaultPortProvider:Lio/grpc/internal/ManagedChannelImplBuilder$ChannelBuilderDefaultPortProvider;

    .line 343
    :goto_0
    return-void
.end method

.method public constructor <init>(Ljava/net/SocketAddress;Ljava/lang/String;Lio/grpc/internal/ManagedChannelImplBuilder$ClientTransportFactoryBuilder;Lio/grpc/internal/ManagedChannelImplBuilder$ChannelBuilderDefaultPortProvider;)V
    .locals 7
    .param p1, "directServerAddress"    # Ljava/net/SocketAddress;
    .param p2, "authority"    # Ljava/lang/String;
    .param p3, "clientTransportFactoryBuilder"    # Lio/grpc/internal/ManagedChannelImplBuilder$ClientTransportFactoryBuilder;
    .param p4, "channelBuilderDefaultPortProvider"    # Lio/grpc/internal/ManagedChannelImplBuilder$ChannelBuilderDefaultPortProvider;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 311
    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v5, p3

    move-object v6, p4

    .end local p1    # "directServerAddress":Ljava/net/SocketAddress;
    .end local p2    # "authority":Ljava/lang/String;
    .end local p3    # "clientTransportFactoryBuilder":Lio/grpc/internal/ManagedChannelImplBuilder$ClientTransportFactoryBuilder;
    .end local p4    # "channelBuilderDefaultPortProvider":Lio/grpc/internal/ManagedChannelImplBuilder$ChannelBuilderDefaultPortProvider;
    .local v1, "directServerAddress":Ljava/net/SocketAddress;
    .local v2, "authority":Ljava/lang/String;
    .local v5, "clientTransportFactoryBuilder":Lio/grpc/internal/ManagedChannelImplBuilder$ClientTransportFactoryBuilder;
    .local v6, "channelBuilderDefaultPortProvider":Lio/grpc/internal/ManagedChannelImplBuilder$ChannelBuilderDefaultPortProvider;
    invoke-direct/range {v0 .. v6}, Lio/grpc/internal/ManagedChannelImplBuilder;-><init>(Ljava/net/SocketAddress;Ljava/lang/String;Lio/grpc/ChannelCredentials;Lio/grpc/CallCredentials;Lio/grpc/internal/ManagedChannelImplBuilder$ClientTransportFactoryBuilder;Lio/grpc/internal/ManagedChannelImplBuilder$ChannelBuilderDefaultPortProvider;)V

    .line 313
    return-void
.end method

.method private static checkListEntryTypes(Ljava/util/List;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "*>;)",
            "Ljava/util/List<",
            "*>;"
        }
    .end annotation

    .line 567
    .local p0, "list":Ljava/util/List;, "Ljava/util/List<*>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 568
    .local v0, "parsedList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 569
    .local v2, "value":Ljava/lang/Object;
    if-nez v2, :cond_0

    .line 570
    const/4 v3, 0x0

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 571
    :cond_0
    instance-of v3, v2, Ljava/util/Map;

    if-eqz v3, :cond_1

    .line 572
    move-object v3, v2

    check-cast v3, Ljava/util/Map;

    invoke-static {v3}, Lio/grpc/internal/ManagedChannelImplBuilder;->checkMapEntryTypes(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 573
    :cond_1
    instance-of v3, v2, Ljava/util/List;

    if-eqz v3, :cond_2

    .line 574
    move-object v3, v2

    check-cast v3, Ljava/util/List;

    invoke-static {v3}, Lio/grpc/internal/ManagedChannelImplBuilder;->checkListEntryTypes(Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 575
    :cond_2
    instance-of v3, v2, Ljava/lang/String;

    if-eqz v3, :cond_3

    .line 576
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 577
    :cond_3
    instance-of v3, v2, Ljava/lang/Double;

    if-eqz v3, :cond_4

    .line 578
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 579
    :cond_4
    instance-of v3, v2, Ljava/lang/Boolean;

    if-eqz v3, :cond_5

    .line 580
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 586
    .end local v2    # "value":Ljava/lang/Object;
    :goto_1
    goto :goto_0

    .line 582
    .restart local v2    # "value":Ljava/lang/Object;
    :cond_5
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "The entry \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\' is of type \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 583
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\', which is not supported"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 587
    .end local v2    # "value":Ljava/lang/Object;
    :cond_6
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    return-object v1
.end method

.method private static checkMapEntryTypes(Ljava/util/Map;)Ljava/util/Map;
    .locals 7
    .param p0    # Ljava/util/Map;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "**>;)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "*>;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 533
    .local p0, "map":Ljava/util/Map;, "Ljava/util/Map<**>;"
    const/4 v0, 0x0

    if-nez p0, :cond_0

    .line 534
    return-object v0

    .line 537
    :cond_0
    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    .line 538
    .local v1, "parsedMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_7

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 539
    .local v3, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<**>;"
    nop

    .line 540
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    instance-of v4, v4, Ljava/lang/String;

    .line 539
    const-string v5, "The key of the entry \'%s\' is not of String type"

    invoke-static {v4, v5, v3}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/String;Ljava/lang/Object;)V

    .line 543
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 544
    .local v4, "key":Ljava/lang/String;
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    .line 545
    .local v5, "value":Ljava/lang/Object;
    if-nez v5, :cond_1

    .line 546
    invoke-interface {v1, v4, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 547
    :cond_1
    instance-of v6, v5, Ljava/util/Map;

    if-eqz v6, :cond_2

    .line 548
    move-object v6, v5

    check-cast v6, Ljava/util/Map;

    invoke-static {v6}, Lio/grpc/internal/ManagedChannelImplBuilder;->checkMapEntryTypes(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v6

    invoke-interface {v1, v4, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 549
    :cond_2
    instance-of v6, v5, Ljava/util/List;

    if-eqz v6, :cond_3

    .line 550
    move-object v6, v5

    check-cast v6, Ljava/util/List;

    invoke-static {v6}, Lio/grpc/internal/ManagedChannelImplBuilder;->checkListEntryTypes(Ljava/util/List;)Ljava/util/List;

    move-result-object v6

    invoke-interface {v1, v4, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 551
    :cond_3
    instance-of v6, v5, Ljava/lang/String;

    if-eqz v6, :cond_4

    .line 552
    invoke-interface {v1, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 553
    :cond_4
    instance-of v6, v5, Ljava/lang/Double;

    if-eqz v6, :cond_5

    .line 554
    invoke-interface {v1, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 555
    :cond_5
    instance-of v6, v5, Ljava/lang/Boolean;

    if-eqz v6, :cond_6

    .line 556
    invoke-interface {v1, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 562
    .end local v3    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<**>;"
    .end local v4    # "key":Ljava/lang/String;
    .end local v5    # "value":Ljava/lang/Object;
    :goto_1
    goto :goto_0

    .line 558
    .restart local v3    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<**>;"
    .restart local v4    # "key":Ljava/lang/String;
    .restart local v5    # "value":Ljava/lang/Object;
    :cond_6
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "The value of the map entry \'"

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v6, "\' is of type \'"

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 559
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v6, "\', which is not supported"

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 563
    .end local v3    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<**>;"
    .end local v4    # "key":Ljava/lang/String;
    .end local v5    # "value":Ljava/lang/Object;
    :cond_7
    invoke-static {v1}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public static forAddress(Ljava/lang/String;I)Lio/grpc/ManagedChannelBuilder;
    .locals 2
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "port"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Lio/grpc/ManagedChannelBuilder<",
            "*>;"
        }
    .end annotation

    .line 72
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "ClientTransportFactoryBuilder is required, use a constructor"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static forTarget(Ljava/lang/String;)Lio/grpc/ManagedChannelBuilder;
    .locals 2
    .param p0, "target"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lio/grpc/ManagedChannelBuilder<",
            "*>;"
        }
    .end annotation

    .line 78
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "ClientTransportFactoryBuilder is required, use a constructor"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static makeTargetStringForDirectAddress(Ljava/net/SocketAddress;)Ljava/lang/String;
    .locals 5
    .param p0, "address"    # Ljava/net/SocketAddress;

    .line 296
    :try_start_0
    new-instance v0, Ljava/net/URI;

    const-string v1, "directaddress"

    const-string v2, ""

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Ljava/net/URI;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 297
    :catch_0
    move-exception v0

    .line 299
    .local v0, "e":Ljava/net/URISyntaxException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method


# virtual methods
.method public bridge synthetic addTransportFilter(Lio/grpc/ClientTransportFilter;)Lio/grpc/ManagedChannelBuilder;
    .locals 0

    .line 64
    invoke-virtual {p0, p1}, Lio/grpc/internal/ManagedChannelImplBuilder;->addTransportFilter(Lio/grpc/ClientTransportFilter;)Lio/grpc/internal/ManagedChannelImplBuilder;

    move-result-object p1

    return-object p1
.end method

.method public addTransportFilter(Lio/grpc/ClientTransportFilter;)Lio/grpc/internal/ManagedChannelImplBuilder;
    .locals 2
    .param p1, "hook"    # Lio/grpc/ClientTransportFilter;

    .line 383
    iget-object v0, p0, Lio/grpc/internal/ManagedChannelImplBuilder;->transportFilters:Ljava/util/List;

    const-string v1, "transport filter"

    invoke-static {p1, v1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/grpc/ClientTransportFilter;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 384
    return-object p0
.end method

.method public build()Lio/grpc/ManagedChannel;
    .locals 9

    .line 666
    new-instance v0, Lio/grpc/internal/ManagedChannelOrphanWrapper;

    new-instance v1, Lio/grpc/internal/ManagedChannelImpl;

    iget-object v2, p0, Lio/grpc/internal/ManagedChannelImplBuilder;->clientTransportFactoryBuilder:Lio/grpc/internal/ManagedChannelImplBuilder$ClientTransportFactoryBuilder;

    .line 668
    invoke-interface {v2}, Lio/grpc/internal/ManagedChannelImplBuilder$ClientTransportFactoryBuilder;->buildClientTransportFactory()Lio/grpc/internal/ClientTransportFactory;

    move-result-object v3

    new-instance v4, Lio/grpc/internal/ExponentialBackoffPolicy$Provider;

    invoke-direct {v4}, Lio/grpc/internal/ExponentialBackoffPolicy$Provider;-><init>()V

    sget-object v2, Lio/grpc/internal/GrpcUtil;->SHARED_CHANNEL_EXECUTOR:Lio/grpc/internal/SharedResourceHolder$Resource;

    .line 670
    invoke-static {v2}, Lio/grpc/internal/SharedResourcePool;->forResource(Lio/grpc/internal/SharedResourceHolder$Resource;)Lio/grpc/internal/SharedResourcePool;

    move-result-object v5

    sget-object v6, Lio/grpc/internal/GrpcUtil;->STOPWATCH_SUPPLIER:Lcom/google/common/base/Supplier;

    .line 672
    invoke-virtual {p0}, Lio/grpc/internal/ManagedChannelImplBuilder;->getEffectiveInterceptors()Ljava/util/List;

    move-result-object v7

    sget-object v8, Lio/grpc/internal/TimeProvider;->SYSTEM_TIME_PROVIDER:Lio/grpc/internal/TimeProvider;

    move-object v2, p0

    invoke-direct/range {v1 .. v8}, Lio/grpc/internal/ManagedChannelImpl;-><init>(Lio/grpc/internal/ManagedChannelImplBuilder;Lio/grpc/internal/ClientTransportFactory;Lio/grpc/internal/BackoffPolicy$Provider;Lio/grpc/internal/ObjectPool;Lcom/google/common/base/Supplier;Ljava/util/List;Lio/grpc/internal/TimeProvider;)V

    invoke-direct {v0, v1}, Lio/grpc/internal/ManagedChannelOrphanWrapper;-><init>(Lio/grpc/ManagedChannel;)V

    .line 666
    return-object v0
.end method

.method checkAuthority(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "authority"    # Ljava/lang/String;

    .line 646
    iget-boolean v0, p0, Lio/grpc/internal/ManagedChannelImplBuilder;->authorityCheckerDisabled:Z

    if-eqz v0, :cond_0

    .line 647
    return-object p1

    .line 649
    :cond_0
    invoke-static {p1}, Lio/grpc/internal/GrpcUtil;->checkAuthority(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic compressorRegistry(Lio/grpc/CompressorRegistry;)Lio/grpc/ManagedChannelBuilder;
    .locals 0

    .line 64
    invoke-virtual {p0, p1}, Lio/grpc/internal/ManagedChannelImplBuilder;->compressorRegistry(Lio/grpc/CompressorRegistry;)Lio/grpc/internal/ManagedChannelImplBuilder;

    move-result-object p1

    return-object p1
.end method

.method public compressorRegistry(Lio/grpc/CompressorRegistry;)Lio/grpc/internal/ManagedChannelImplBuilder;
    .locals 1
    .param p1, "registry"    # Lio/grpc/CompressorRegistry;

    .line 434
    if-eqz p1, :cond_0

    .line 435
    iput-object p1, p0, Lio/grpc/internal/ManagedChannelImplBuilder;->compressorRegistry:Lio/grpc/CompressorRegistry;

    goto :goto_0

    .line 437
    :cond_0
    sget-object v0, Lio/grpc/internal/ManagedChannelImplBuilder;->DEFAULT_COMPRESSOR_REGISTRY:Lio/grpc/CompressorRegistry;

    iput-object v0, p0, Lio/grpc/internal/ManagedChannelImplBuilder;->compressorRegistry:Lio/grpc/CompressorRegistry;

    .line 439
    :goto_0
    return-object p0
.end method

.method public bridge synthetic decompressorRegistry(Lio/grpc/DecompressorRegistry;)Lio/grpc/ManagedChannelBuilder;
    .locals 0

    .line 64
    invoke-virtual {p0, p1}, Lio/grpc/internal/ManagedChannelImplBuilder;->decompressorRegistry(Lio/grpc/DecompressorRegistry;)Lio/grpc/internal/ManagedChannelImplBuilder;

    move-result-object p1

    return-object p1
.end method

.method public decompressorRegistry(Lio/grpc/DecompressorRegistry;)Lio/grpc/internal/ManagedChannelImplBuilder;
    .locals 1
    .param p1, "registry"    # Lio/grpc/DecompressorRegistry;

    .line 424
    if-eqz p1, :cond_0

    .line 425
    iput-object p1, p0, Lio/grpc/internal/ManagedChannelImplBuilder;->decompressorRegistry:Lio/grpc/DecompressorRegistry;

    goto :goto_0

    .line 427
    :cond_0
    sget-object v0, Lio/grpc/internal/ManagedChannelImplBuilder;->DEFAULT_DECOMPRESSOR_REGISTRY:Lio/grpc/DecompressorRegistry;

    iput-object v0, p0, Lio/grpc/internal/ManagedChannelImplBuilder;->decompressorRegistry:Lio/grpc/DecompressorRegistry;

    .line 429
    :goto_0
    return-object p0
.end method

.method public bridge synthetic defaultLoadBalancingPolicy(Ljava/lang/String;)Lio/grpc/ManagedChannelBuilder;
    .locals 0

    .line 64
    invoke-virtual {p0, p1}, Lio/grpc/internal/ManagedChannelImplBuilder;->defaultLoadBalancingPolicy(Ljava/lang/String;)Lio/grpc/internal/ManagedChannelImplBuilder;

    move-result-object p1

    return-object p1
.end method

.method public defaultLoadBalancingPolicy(Ljava/lang/String;)Lio/grpc/internal/ManagedChannelImplBuilder;
    .locals 5
    .param p1, "policy"    # Ljava/lang/String;

    .line 414
    iget-object v0, p0, Lio/grpc/internal/ManagedChannelImplBuilder;->directServerAddress:Ljava/net/SocketAddress;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    const-string v3, "directServerAddress is set (%s), which forbids the use of load-balancing policy"

    iget-object v4, p0, Lio/grpc/internal/ManagedChannelImplBuilder;->directServerAddress:Ljava/net/SocketAddress;

    invoke-static {v0, v3, v4}, Lcom/google/common/base/Preconditions;->checkState(ZLjava/lang/String;Ljava/lang/Object;)V

    .line 417
    if-eqz p1, :cond_1

    goto :goto_1

    :cond_1
    move v1, v2

    :goto_1
    const-string v0, "policy cannot be null"

    invoke-static {v1, v0}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 418
    iput-object p1, p0, Lio/grpc/internal/ManagedChannelImplBuilder;->defaultLbPolicy:Ljava/lang/String;

    .line 419
    return-object p0
.end method

.method public bridge synthetic defaultServiceConfig(Ljava/util/Map;)Lio/grpc/ManagedChannelBuilder;
    .locals 0
    .param p1    # Ljava/util/Map;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 64
    invoke-virtual {p0, p1}, Lio/grpc/internal/ManagedChannelImplBuilder;->defaultServiceConfig(Ljava/util/Map;)Lio/grpc/internal/ManagedChannelImplBuilder;

    move-result-object p1

    return-object p1
.end method

.method public defaultServiceConfig(Ljava/util/Map;)Lio/grpc/internal/ManagedChannelImplBuilder;
    .locals 1
    .param p1    # Ljava/util/Map;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "*>;)",
            "Lio/grpc/internal/ManagedChannelImplBuilder;"
        }
    .end annotation

    .line 527
    .local p1, "serviceConfig":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;*>;"
    invoke-static {p1}, Lio/grpc/internal/ManagedChannelImplBuilder;->checkMapEntryTypes(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lio/grpc/internal/ManagedChannelImplBuilder;->defaultServiceConfig:Ljava/util/Map;

    .line 528
    return-object p0
.end method

.method public bridge synthetic directExecutor()Lio/grpc/ManagedChannelBuilder;
    .locals 1

    .line 64
    invoke-virtual {p0}, Lio/grpc/internal/ManagedChannelImplBuilder;->directExecutor()Lio/grpc/internal/ManagedChannelImplBuilder;

    move-result-object v0

    return-object v0
.end method

.method public directExecutor()Lio/grpc/internal/ManagedChannelImplBuilder;
    .locals 1

    .line 347
    invoke-static {}, Lcom/google/common/util/concurrent/MoreExecutors;->directExecutor()Ljava/util/concurrent/Executor;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/grpc/internal/ManagedChannelImplBuilder;->executor(Ljava/util/concurrent/Executor;)Lio/grpc/internal/ManagedChannelImplBuilder;

    move-result-object v0

    return-object v0
.end method

.method public disableCheckAuthority()Lio/grpc/internal/ManagedChannelImplBuilder;
    .locals 1

    .line 654
    const/4 v0, 0x1

    iput-boolean v0, p0, Lio/grpc/internal/ManagedChannelImplBuilder;->authorityCheckerDisabled:Z

    .line 655
    return-object p0
.end method

.method public bridge synthetic disableRetry()Lio/grpc/ManagedChannelBuilder;
    .locals 1

    .line 64
    invoke-virtual {p0}, Lio/grpc/internal/ManagedChannelImplBuilder;->disableRetry()Lio/grpc/internal/ManagedChannelImplBuilder;

    move-result-object v0

    return-object v0
.end method

.method public disableRetry()Lio/grpc/internal/ManagedChannelImplBuilder;
    .locals 1

    .line 495
    const/4 v0, 0x0

    iput-boolean v0, p0, Lio/grpc/internal/ManagedChannelImplBuilder;->retryEnabled:Z

    .line 496
    return-object p0
.end method

.method public bridge synthetic disableServiceConfigLookUp()Lio/grpc/ManagedChannelBuilder;
    .locals 1

    .line 64
    invoke-virtual {p0}, Lio/grpc/internal/ManagedChannelImplBuilder;->disableServiceConfigLookUp()Lio/grpc/internal/ManagedChannelImplBuilder;

    move-result-object v0

    return-object v0
.end method

.method public disableServiceConfigLookUp()Lio/grpc/internal/ManagedChannelImplBuilder;
    .locals 1

    .line 592
    const/4 v0, 0x0

    iput-boolean v0, p0, Lio/grpc/internal/ManagedChannelImplBuilder;->lookUpServiceConfig:Z

    .line 593
    return-object p0
.end method

.method public enableCheckAuthority()Lio/grpc/internal/ManagedChannelImplBuilder;
    .locals 1

    .line 660
    const/4 v0, 0x0

    iput-boolean v0, p0, Lio/grpc/internal/ManagedChannelImplBuilder;->authorityCheckerDisabled:Z

    .line 661
    return-object p0
.end method

.method public bridge synthetic enableRetry()Lio/grpc/ManagedChannelBuilder;
    .locals 1

    .line 64
    invoke-virtual {p0}, Lio/grpc/internal/ManagedChannelImplBuilder;->enableRetry()Lio/grpc/internal/ManagedChannelImplBuilder;

    move-result-object v0

    return-object v0
.end method

.method public enableRetry()Lio/grpc/internal/ManagedChannelImplBuilder;
    .locals 1

    .line 501
    const/4 v0, 0x1

    iput-boolean v0, p0, Lio/grpc/internal/ManagedChannelImplBuilder;->retryEnabled:Z

    .line 502
    return-object p0
.end method

.method public bridge synthetic executor(Ljava/util/concurrent/Executor;)Lio/grpc/ManagedChannelBuilder;
    .locals 0

    .line 64
    invoke-virtual {p0, p1}, Lio/grpc/internal/ManagedChannelImplBuilder;->executor(Ljava/util/concurrent/Executor;)Lio/grpc/internal/ManagedChannelImplBuilder;

    move-result-object p1

    return-object p1
.end method

.method public executor(Ljava/util/concurrent/Executor;)Lio/grpc/internal/ManagedChannelImplBuilder;
    .locals 1
    .param p1, "executor"    # Ljava/util/concurrent/Executor;

    .line 352
    if-eqz p1, :cond_0

    .line 353
    new-instance v0, Lio/grpc/internal/FixedObjectPool;

    invoke-direct {v0, p1}, Lio/grpc/internal/FixedObjectPool;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lio/grpc/internal/ManagedChannelImplBuilder;->executorPool:Lio/grpc/internal/ObjectPool;

    goto :goto_0

    .line 355
    :cond_0
    sget-object v0, Lio/grpc/internal/ManagedChannelImplBuilder;->DEFAULT_EXECUTOR_POOL:Lio/grpc/internal/ObjectPool;

    iput-object v0, p0, Lio/grpc/internal/ManagedChannelImplBuilder;->executorPool:Lio/grpc/internal/ObjectPool;

    .line 357
    :goto_0
    return-object p0
.end method

.method getDefaultPort()I
    .locals 1

    .line 745
    iget-object v0, p0, Lio/grpc/internal/ManagedChannelImplBuilder;->channelBuilderDefaultPortProvider:Lio/grpc/internal/ManagedChannelImplBuilder$ChannelBuilderDefaultPortProvider;

    invoke-interface {v0}, Lio/grpc/internal/ManagedChannelImplBuilder$ChannelBuilderDefaultPortProvider;->getDefaultPort()I

    move-result v0

    return v0
.end method

.method getEffectiveInterceptors()Ljava/util/List;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lio/grpc/ClientInterceptor;",
            ">;"
        }
    .end annotation

    .line 681
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lio/grpc/internal/ManagedChannelImplBuilder;->interceptors:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 682
    .local v0, "effectiveInterceptors":Ljava/util/List;, "Ljava/util/List<Lio/grpc/ClientInterceptor;>;"
    const/4 v1, 0x0

    .line 684
    .local v1, "isGlobalInterceptorsSet":Z
    invoke-static {}, Lio/grpc/InternalGlobalInterceptors;->getClientInterceptors()Ljava/util/List;

    move-result-object v2

    .line 685
    .local v2, "globalClientInterceptors":Ljava/util/List;, "Ljava/util/List<Lio/grpc/ClientInterceptor;>;"
    if-eqz v2, :cond_0

    .line 686
    invoke-interface {v0, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 687
    const/4 v1, 0x1

    .line 689
    :cond_0
    const/4 v3, 0x0

    const/4 v4, 0x0

    const-string v5, "Unable to apply census stats"

    if-nez v1, :cond_2

    iget-boolean v6, p0, Lio/grpc/internal/ManagedChannelImplBuilder;->statsEnabled:Z

    if-eqz v6, :cond_2

    .line 690
    const/4 v6, 0x0

    .line 692
    .local v6, "statsInterceptor":Lio/grpc/ClientInterceptor;
    sget-object v7, Lio/grpc/internal/ManagedChannelImplBuilder;->GET_CLIENT_INTERCEPTOR_METHOD:Ljava/lang/reflect/Method;

    if-eqz v7, :cond_1

    .line 694
    :try_start_0
    sget-object v7, Lio/grpc/internal/ManagedChannelImplBuilder;->GET_CLIENT_INTERCEPTOR_METHOD:Ljava/lang/reflect/Method;

    iget-boolean v8, p0, Lio/grpc/internal/ManagedChannelImplBuilder;->recordStartedRpcs:Z

    .line 698
    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    iget-boolean v9, p0, Lio/grpc/internal/ManagedChannelImplBuilder;->recordFinishedRpcs:Z

    .line 699
    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    iget-boolean v10, p0, Lio/grpc/internal/ManagedChannelImplBuilder;->recordRealTimeMetrics:Z

    .line 700
    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    iget-boolean v11, p0, Lio/grpc/internal/ManagedChannelImplBuilder;->recordRetryMetrics:Z

    .line 701
    invoke-static {v11}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    filled-new-array {v8, v9, v10, v11}, [Ljava/lang/Object;

    move-result-object v8

    .line 696
    invoke-virtual {v7, v3, v8}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lio/grpc/ClientInterceptor;
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v6, v7

    .line 706
    :goto_0
    goto :goto_1

    .line 704
    :catch_0
    move-exception v7

    .line 705
    .local v7, "e":Ljava/lang/reflect/InvocationTargetException;
    sget-object v8, Lio/grpc/internal/ManagedChannelImplBuilder;->log:Ljava/util/logging/Logger;

    sget-object v9, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v8, v9, v5, v7}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 702
    .end local v7    # "e":Ljava/lang/reflect/InvocationTargetException;
    :catch_1
    move-exception v7

    .line 703
    .local v7, "e":Ljava/lang/IllegalAccessException;
    sget-object v8, Lio/grpc/internal/ManagedChannelImplBuilder;->log:Ljava/util/logging/Logger;

    sget-object v9, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v8, v9, v5, v7}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .end local v7    # "e":Ljava/lang/IllegalAccessException;
    goto :goto_0

    .line 709
    :cond_1
    :goto_1
    if-eqz v6, :cond_2

    .line 712
    invoke-interface {v0, v4, v6}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 715
    .end local v6    # "statsInterceptor":Lio/grpc/ClientInterceptor;
    :cond_2
    if-nez v1, :cond_3

    iget-boolean v6, p0, Lio/grpc/internal/ManagedChannelImplBuilder;->tracingEnabled:Z

    if-eqz v6, :cond_3

    .line 716
    const/4 v6, 0x0

    .line 718
    .local v6, "tracingInterceptor":Lio/grpc/ClientInterceptor;
    :try_start_1
    const-string v7, "io.grpc.census.InternalCensusTracingAccessor"

    .line 719
    invoke-static {v7}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v7

    .line 720
    .local v7, "censusTracingAccessor":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string v8, "getClientInterceptor"

    new-array v9, v4, [Ljava/lang/Class;

    .line 721
    invoke-virtual {v7, v8, v9}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v8

    .line 722
    .local v8, "getClientInterceptroMethod":Ljava/lang/reflect/Method;
    new-array v9, v4, [Ljava/lang/Object;

    invoke-virtual {v8, v3, v9}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lio/grpc/ClientInterceptor;
    :try_end_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_5
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_1} :catch_2

    move-object v6, v3

    .line 732
    .end local v7    # "censusTracingAccessor":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v8    # "getClientInterceptroMethod":Ljava/lang/reflect/Method;
    :goto_2
    goto :goto_3

    .line 730
    :catch_2
    move-exception v3

    .line 731
    .local v3, "e":Ljava/lang/reflect/InvocationTargetException;
    sget-object v7, Lio/grpc/internal/ManagedChannelImplBuilder;->log:Ljava/util/logging/Logger;

    sget-object v8, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v7, v8, v5, v3}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_3

    .line 728
    .end local v3    # "e":Ljava/lang/reflect/InvocationTargetException;
    :catch_3
    move-exception v3

    .line 729
    .local v3, "e":Ljava/lang/IllegalAccessException;
    sget-object v7, Lio/grpc/internal/ManagedChannelImplBuilder;->log:Ljava/util/logging/Logger;

    sget-object v8, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v7, v8, v5, v3}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .end local v3    # "e":Ljava/lang/IllegalAccessException;
    goto :goto_2

    .line 726
    :catch_4
    move-exception v3

    .line 727
    .local v3, "e":Ljava/lang/NoSuchMethodException;
    sget-object v7, Lio/grpc/internal/ManagedChannelImplBuilder;->log:Ljava/util/logging/Logger;

    sget-object v8, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v7, v8, v5, v3}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .end local v3    # "e":Ljava/lang/NoSuchMethodException;
    goto :goto_2

    .line 723
    :catch_5
    move-exception v3

    .line 725
    .local v3, "e":Ljava/lang/ClassNotFoundException;
    sget-object v7, Lio/grpc/internal/ManagedChannelImplBuilder;->log:Ljava/util/logging/Logger;

    sget-object v8, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v7, v8, v5, v3}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .end local v3    # "e":Ljava/lang/ClassNotFoundException;
    goto :goto_2

    .line 733
    :goto_3
    if-eqz v6, :cond_3

    .line 734
    invoke-interface {v0, v4, v6}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 737
    .end local v6    # "tracingInterceptor":Lio/grpc/ClientInterceptor;
    :cond_3
    return-object v0
.end method

.method public getOffloadExecutorPool()Lio/grpc/internal/ObjectPool;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/grpc/internal/ObjectPool<",
            "+",
            "Ljava/util/concurrent/Executor;",
            ">;"
        }
    .end annotation

    .line 807
    iget-object v0, p0, Lio/grpc/internal/ManagedChannelImplBuilder;->offloadExecutorPool:Lio/grpc/internal/ObjectPool;

    return-object v0
.end method

.method public bridge synthetic idleTimeout(JLjava/util/concurrent/TimeUnit;)Lio/grpc/ManagedChannelBuilder;
    .locals 0

    .line 64
    invoke-virtual {p0, p1, p2, p3}, Lio/grpc/internal/ManagedChannelImplBuilder;->idleTimeout(JLjava/util/concurrent/TimeUnit;)Lio/grpc/internal/ManagedChannelImplBuilder;

    move-result-object p1

    return-object p1
.end method

.method public idleTimeout(JLjava/util/concurrent/TimeUnit;)Lio/grpc/internal/ManagedChannelImplBuilder;
    .locals 4
    .param p1, "value"    # J
    .param p3, "unit"    # Ljava/util/concurrent/TimeUnit;

    .line 456
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "idle timeout is %s, but must be positive"

    invoke-static {v0, v1, p1, p2}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/String;J)V

    .line 458
    invoke-virtual {p3, p1, p2}, Ljava/util/concurrent/TimeUnit;->toDays(J)J

    move-result-wide v0

    const-wide/16 v2, 0x1e

    cmp-long v0, v0, v2

    if-ltz v0, :cond_1

    .line 460
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lio/grpc/internal/ManagedChannelImplBuilder;->idleTimeoutMillis:J

    goto :goto_1

    .line 462
    :cond_1
    invoke-virtual {p3, p1, p2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sget-wide v2, Lio/grpc/internal/ManagedChannelImplBuilder;->IDLE_MODE_MIN_TIMEOUT_MILLIS:J

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    iput-wide v0, p0, Lio/grpc/internal/ManagedChannelImplBuilder;->idleTimeoutMillis:J

    .line 464
    :goto_1
    return-object p0
.end method

.method public bridge synthetic intercept(Ljava/util/List;)Lio/grpc/ManagedChannelBuilder;
    .locals 0

    .line 64
    invoke-virtual {p0, p1}, Lio/grpc/internal/ManagedChannelImplBuilder;->intercept(Ljava/util/List;)Lio/grpc/internal/ManagedChannelImplBuilder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic intercept([Lio/grpc/ClientInterceptor;)Lio/grpc/ManagedChannelBuilder;
    .locals 0

    .line 64
    invoke-virtual {p0, p1}, Lio/grpc/internal/ManagedChannelImplBuilder;->intercept([Lio/grpc/ClientInterceptor;)Lio/grpc/internal/ManagedChannelImplBuilder;

    move-result-object p1

    return-object p1
.end method

.method public intercept(Ljava/util/List;)Lio/grpc/internal/ManagedChannelImplBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lio/grpc/ClientInterceptor;",
            ">;)",
            "Lio/grpc/internal/ManagedChannelImplBuilder;"
        }
    .end annotation

    .line 372
    .local p1, "interceptors":Ljava/util/List;, "Ljava/util/List<Lio/grpc/ClientInterceptor;>;"
    iget-object v0, p0, Lio/grpc/internal/ManagedChannelImplBuilder;->interceptors:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 373
    return-object p0
.end method

.method public varargs intercept([Lio/grpc/ClientInterceptor;)Lio/grpc/internal/ManagedChannelImplBuilder;
    .locals 1
    .param p1, "interceptors"    # [Lio/grpc/ClientInterceptor;

    .line 378
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/grpc/internal/ManagedChannelImplBuilder;->intercept(Ljava/util/List;)Lio/grpc/internal/ManagedChannelImplBuilder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic maxHedgedAttempts(I)Lio/grpc/ManagedChannelBuilder;
    .locals 0

    .line 64
    invoke-virtual {p0, p1}, Lio/grpc/internal/ManagedChannelImplBuilder;->maxHedgedAttempts(I)Lio/grpc/internal/ManagedChannelImplBuilder;

    move-result-object p1

    return-object p1
.end method

.method public maxHedgedAttempts(I)Lio/grpc/internal/ManagedChannelImplBuilder;
    .locals 0
    .param p1, "maxHedgedAttempts"    # I

    .line 475
    iput p1, p0, Lio/grpc/internal/ManagedChannelImplBuilder;->maxHedgedAttempts:I

    .line 476
    return-object p0
.end method

.method public bridge synthetic maxRetryAttempts(I)Lio/grpc/ManagedChannelBuilder;
    .locals 0

    .line 64
    invoke-virtual {p0, p1}, Lio/grpc/internal/ManagedChannelImplBuilder;->maxRetryAttempts(I)Lio/grpc/internal/ManagedChannelImplBuilder;

    move-result-object p1

    return-object p1
.end method

.method public maxRetryAttempts(I)Lio/grpc/internal/ManagedChannelImplBuilder;
    .locals 0
    .param p1, "maxRetryAttempts"    # I

    .line 469
    iput p1, p0, Lio/grpc/internal/ManagedChannelImplBuilder;->maxRetryAttempts:I

    .line 470
    return-object p0
.end method

.method public bridge synthetic maxTraceEvents(I)Lio/grpc/ManagedChannelBuilder;
    .locals 0

    .line 64
    invoke-virtual {p0, p1}, Lio/grpc/internal/ManagedChannelImplBuilder;->maxTraceEvents(I)Lio/grpc/internal/ManagedChannelImplBuilder;

    move-result-object p1

    return-object p1
.end method

.method public maxTraceEvents(I)Lio/grpc/internal/ManagedChannelImplBuilder;
    .locals 2
    .param p1, "maxTraceEvents"    # I

    .line 513
    if-ltz p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "maxTraceEvents must be non-negative"

    invoke-static {v0, v1}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 514
    iput p1, p0, Lio/grpc/internal/ManagedChannelImplBuilder;->maxTraceEvents:I

    .line 515
    return-object p0
.end method

.method public bridge synthetic nameResolverFactory(Lio/grpc/NameResolver$Factory;)Lio/grpc/ManagedChannelBuilder;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 64
    invoke-virtual {p0, p1}, Lio/grpc/internal/ManagedChannelImplBuilder;->nameResolverFactory(Lio/grpc/NameResolver$Factory;)Lio/grpc/internal/ManagedChannelImplBuilder;

    move-result-object p1

    return-object p1
.end method

.method public nameResolverFactory(Lio/grpc/NameResolver$Factory;)Lio/grpc/internal/ManagedChannelImplBuilder;
    .locals 3
    .param p1, "resolverFactory"    # Lio/grpc/NameResolver$Factory;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 390
    iget-object v0, p0, Lio/grpc/internal/ManagedChannelImplBuilder;->directServerAddress:Ljava/net/SocketAddress;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "directServerAddress is set (%s), which forbids the use of NameResolverFactory"

    iget-object v2, p0, Lio/grpc/internal/ManagedChannelImplBuilder;->directServerAddress:Ljava/net/SocketAddress;

    invoke-static {v0, v1, v2}, Lcom/google/common/base/Preconditions;->checkState(ZLjava/lang/String;Ljava/lang/Object;)V

    .line 393
    if-eqz p1, :cond_2

    .line 394
    new-instance v0, Lio/grpc/NameResolverRegistry;

    invoke-direct {v0}, Lio/grpc/NameResolverRegistry;-><init>()V

    .line 395
    .local v0, "reg":Lio/grpc/NameResolverRegistry;
    instance-of v1, p1, Lio/grpc/NameResolverProvider;

    if-eqz v1, :cond_1

    .line 396
    move-object v1, p1

    check-cast v1, Lio/grpc/NameResolverProvider;

    invoke-virtual {v0, v1}, Lio/grpc/NameResolverRegistry;->register(Lio/grpc/NameResolverProvider;)V

    goto :goto_1

    .line 398
    :cond_1
    new-instance v1, Lio/grpc/internal/NameResolverFactoryToProviderFacade;

    invoke-direct {v1, p1}, Lio/grpc/internal/NameResolverFactoryToProviderFacade;-><init>(Lio/grpc/NameResolver$Factory;)V

    invoke-virtual {v0, v1}, Lio/grpc/NameResolverRegistry;->register(Lio/grpc/NameResolverProvider;)V

    .line 400
    :goto_1
    iput-object v0, p0, Lio/grpc/internal/ManagedChannelImplBuilder;->nameResolverRegistry:Lio/grpc/NameResolverRegistry;

    .line 401
    .end local v0    # "reg":Lio/grpc/NameResolverRegistry;
    goto :goto_2

    .line 402
    :cond_2
    invoke-static {}, Lio/grpc/NameResolverRegistry;->getDefaultRegistry()Lio/grpc/NameResolverRegistry;

    move-result-object v0

    iput-object v0, p0, Lio/grpc/internal/ManagedChannelImplBuilder;->nameResolverRegistry:Lio/grpc/NameResolverRegistry;

    .line 404
    :goto_2
    return-object p0
.end method

.method nameResolverRegistry(Lio/grpc/NameResolverRegistry;)Lio/grpc/internal/ManagedChannelImplBuilder;
    .locals 0
    .param p1, "resolverRegistry"    # Lio/grpc/NameResolverRegistry;

    .line 408
    iput-object p1, p0, Lio/grpc/internal/ManagedChannelImplBuilder;->nameResolverRegistry:Lio/grpc/NameResolverRegistry;

    .line 409
    return-object p0
.end method

.method public bridge synthetic offloadExecutor(Ljava/util/concurrent/Executor;)Lio/grpc/ManagedChannelBuilder;
    .locals 0

    .line 64
    invoke-virtual {p0, p1}, Lio/grpc/internal/ManagedChannelImplBuilder;->offloadExecutor(Ljava/util/concurrent/Executor;)Lio/grpc/internal/ManagedChannelImplBuilder;

    move-result-object p1

    return-object p1
.end method

.method public offloadExecutor(Ljava/util/concurrent/Executor;)Lio/grpc/internal/ManagedChannelImplBuilder;
    .locals 1
    .param p1, "executor"    # Ljava/util/concurrent/Executor;

    .line 362
    if-eqz p1, :cond_0

    .line 363
    new-instance v0, Lio/grpc/internal/FixedObjectPool;

    invoke-direct {v0, p1}, Lio/grpc/internal/FixedObjectPool;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lio/grpc/internal/ManagedChannelImplBuilder;->offloadExecutorPool:Lio/grpc/internal/ObjectPool;

    goto :goto_0

    .line 365
    :cond_0
    sget-object v0, Lio/grpc/internal/ManagedChannelImplBuilder;->DEFAULT_EXECUTOR_POOL:Lio/grpc/internal/ObjectPool;

    iput-object v0, p0, Lio/grpc/internal/ManagedChannelImplBuilder;->offloadExecutorPool:Lio/grpc/internal/ObjectPool;

    .line 367
    :goto_0
    return-object p0
.end method

.method public bridge synthetic overrideAuthority(Ljava/lang/String;)Lio/grpc/ManagedChannelBuilder;
    .locals 0

    .line 64
    invoke-virtual {p0, p1}, Lio/grpc/internal/ManagedChannelImplBuilder;->overrideAuthority(Ljava/lang/String;)Lio/grpc/internal/ManagedChannelImplBuilder;

    move-result-object p1

    return-object p1
.end method

.method public overrideAuthority(Ljava/lang/String;)Lio/grpc/internal/ManagedChannelImplBuilder;
    .locals 1
    .param p1, "authority"    # Ljava/lang/String;

    .line 450
    invoke-virtual {p0, p1}, Lio/grpc/internal/ManagedChannelImplBuilder;->checkAuthority(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lio/grpc/internal/ManagedChannelImplBuilder;->authorityOverride:Ljava/lang/String;

    .line 451
    return-object p0
.end method

.method public bridge synthetic perRpcBufferLimit(J)Lio/grpc/ManagedChannelBuilder;
    .locals 0

    .line 64
    invoke-virtual {p0, p1, p2}, Lio/grpc/internal/ManagedChannelImplBuilder;->perRpcBufferLimit(J)Lio/grpc/internal/ManagedChannelImplBuilder;

    move-result-object p1

    return-object p1
.end method

.method public perRpcBufferLimit(J)Lio/grpc/internal/ManagedChannelImplBuilder;
    .locals 2
    .param p1, "bytes"    # J

    .line 488
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "per RPC buffer limit must be positive"

    invoke-static {v0, v1}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 489
    iput-wide p1, p0, Lio/grpc/internal/ManagedChannelImplBuilder;->perRpcBufferLimit:J

    .line 490
    return-object p0
.end method

.method public bridge synthetic proxyDetector(Lio/grpc/ProxyDetector;)Lio/grpc/ManagedChannelBuilder;
    .locals 0
    .param p1    # Lio/grpc/ProxyDetector;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 64
    invoke-virtual {p0, p1}, Lio/grpc/internal/ManagedChannelImplBuilder;->proxyDetector(Lio/grpc/ProxyDetector;)Lio/grpc/internal/ManagedChannelImplBuilder;

    move-result-object p1

    return-object p1
.end method

.method public proxyDetector(Lio/grpc/ProxyDetector;)Lio/grpc/internal/ManagedChannelImplBuilder;
    .locals 0
    .param p1, "proxyDetector"    # Lio/grpc/ProxyDetector;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 520
    iput-object p1, p0, Lio/grpc/internal/ManagedChannelImplBuilder;->proxyDetector:Lio/grpc/ProxyDetector;

    .line 521
    return-object p0
.end method

.method public bridge synthetic retryBufferSize(J)Lio/grpc/ManagedChannelBuilder;
    .locals 0

    .line 64
    invoke-virtual {p0, p1, p2}, Lio/grpc/internal/ManagedChannelImplBuilder;->retryBufferSize(J)Lio/grpc/internal/ManagedChannelImplBuilder;

    move-result-object p1

    return-object p1
.end method

.method public retryBufferSize(J)Lio/grpc/internal/ManagedChannelImplBuilder;
    .locals 2
    .param p1, "bytes"    # J

    .line 481
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "retry buffer size must be positive"

    invoke-static {v0, v1}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 482
    iput-wide p1, p0, Lio/grpc/internal/ManagedChannelImplBuilder;->retryBufferSize:J

    .line 483
    return-object p0
.end method

.method public bridge synthetic setBinaryLog(Lio/grpc/BinaryLog;)Lio/grpc/ManagedChannelBuilder;
    .locals 0

    .line 64
    invoke-virtual {p0, p1}, Lio/grpc/internal/ManagedChannelImplBuilder;->setBinaryLog(Lio/grpc/BinaryLog;)Lio/grpc/internal/ManagedChannelImplBuilder;

    move-result-object p1

    return-object p1
.end method

.method public setBinaryLog(Lio/grpc/BinaryLog;)Lio/grpc/internal/ManagedChannelImplBuilder;
    .locals 0
    .param p1, "binlog"    # Lio/grpc/BinaryLog;

    .line 507
    iput-object p1, p0, Lio/grpc/internal/ManagedChannelImplBuilder;->binlog:Lio/grpc/BinaryLog;

    .line 508
    return-object p0
.end method

.method public setStatsEnabled(Z)V
    .locals 0
    .param p1, "value"    # Z

    .line 603
    iput-boolean p1, p0, Lio/grpc/internal/ManagedChannelImplBuilder;->statsEnabled:Z

    .line 604
    return-void
.end method

.method public setStatsRecordFinishedRpcs(Z)V
    .locals 0
    .param p1, "value"    # Z

    .line 619
    iput-boolean p1, p0, Lio/grpc/internal/ManagedChannelImplBuilder;->recordFinishedRpcs:Z

    .line 620
    return-void
.end method

.method public setStatsRecordRealTimeMetrics(Z)V
    .locals 0
    .param p1, "value"    # Z

    .line 627
    iput-boolean p1, p0, Lio/grpc/internal/ManagedChannelImplBuilder;->recordRealTimeMetrics:Z

    .line 628
    return-void
.end method

.method public setStatsRecordRetryMetrics(Z)V
    .locals 0
    .param p1, "value"    # Z

    .line 631
    iput-boolean p1, p0, Lio/grpc/internal/ManagedChannelImplBuilder;->recordRetryMetrics:Z

    .line 632
    return-void
.end method

.method public setStatsRecordStartedRpcs(Z)V
    .locals 0
    .param p1, "value"    # Z

    .line 611
    iput-boolean p1, p0, Lio/grpc/internal/ManagedChannelImplBuilder;->recordStartedRpcs:Z

    .line 612
    return-void
.end method

.method public setTracingEnabled(Z)V
    .locals 0
    .param p1, "value"    # Z

    .line 638
    iput-boolean p1, p0, Lio/grpc/internal/ManagedChannelImplBuilder;->tracingEnabled:Z

    .line 639
    return-void
.end method

.method public bridge synthetic userAgent(Ljava/lang/String;)Lio/grpc/ManagedChannelBuilder;
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 64
    invoke-virtual {p0, p1}, Lio/grpc/internal/ManagedChannelImplBuilder;->userAgent(Ljava/lang/String;)Lio/grpc/internal/ManagedChannelImplBuilder;

    move-result-object p1

    return-object p1
.end method

.method public userAgent(Ljava/lang/String;)Lio/grpc/internal/ManagedChannelImplBuilder;
    .locals 0
    .param p1, "userAgent"    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 444
    iput-object p1, p0, Lio/grpc/internal/ManagedChannelImplBuilder;->userAgent:Ljava/lang/String;

    .line 445
    return-object p0
.end method
