.class public abstract Lio/grpc/ManagedChannelBuilder;
.super Ljava/lang/Object;
.source "ManagedChannelBuilder.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lio/grpc/ManagedChannelBuilder<",
        "TT;>;>",
        "Ljava/lang/Object;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 31
    .local p0, "this":Lio/grpc/ManagedChannelBuilder;, "Lio/grpc/ManagedChannelBuilder<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static forAddress(Ljava/lang/String;I)Lio/grpc/ManagedChannelBuilder;
    .locals 1
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

    .line 44
    invoke-static {}, Lio/grpc/ManagedChannelProvider;->provider()Lio/grpc/ManagedChannelProvider;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lio/grpc/ManagedChannelProvider;->builderForAddress(Ljava/lang/String;I)Lio/grpc/ManagedChannelBuilder;

    move-result-object v0

    return-object v0
.end method

.method public static forTarget(Ljava/lang/String;)Lio/grpc/ManagedChannelBuilder;
    .locals 1
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

    .line 86
    invoke-static {}, Lio/grpc/ManagedChannelProvider;->provider()Lio/grpc/ManagedChannelProvider;

    move-result-object v0

    invoke-virtual {v0, p0}, Lio/grpc/ManagedChannelProvider;->builderForTarget(Ljava/lang/String;)Lio/grpc/ManagedChannelBuilder;

    move-result-object v0

    return-object v0
.end method

.method private thisT()Lio/grpc/ManagedChannelBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 622
    .local p0, "this":Lio/grpc/ManagedChannelBuilder;, "Lio/grpc/ManagedChannelBuilder<TT;>;"
    move-object v0, p0

    .line 623
    .local v0, "thisT":Lio/grpc/ManagedChannelBuilder;, "TT;"
    return-object v0
.end method


# virtual methods
.method public addTransportFilter(Lio/grpc/ClientTransportFilter;)Lio/grpc/ManagedChannelBuilder;
    .locals 1
    .param p1, "filter"    # Lio/grpc/ClientTransportFilter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/grpc/ClientTransportFilter;",
            ")TT;"
        }
    .end annotation

    .line 171
    .local p0, "this":Lio/grpc/ManagedChannelBuilder;, "Lio/grpc/ManagedChannelBuilder<TT;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public abstract build()Lio/grpc/ManagedChannel;
.end method

.method public abstract compressorRegistry(Lio/grpc/CompressorRegistry;)Lio/grpc/ManagedChannelBuilder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/grpc/CompressorRegistry;",
            ")TT;"
        }
    .end annotation
.end method

.method public abstract decompressorRegistry(Lio/grpc/DecompressorRegistry;)Lio/grpc/ManagedChannelBuilder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/grpc/DecompressorRegistry;",
            ")TT;"
        }
    .end annotation
.end method

.method public defaultLoadBalancingPolicy(Ljava/lang/String;)Lio/grpc/ManagedChannelBuilder;
    .locals 1
    .param p1, "policy"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .line 270
    .local p0, "this":Lio/grpc/ManagedChannelBuilder;, "Lio/grpc/ManagedChannelBuilder<TT;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public defaultServiceConfig(Ljava/util/Map;)Lio/grpc/ManagedChannelBuilder;
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
            "*>;)TT;"
        }
    .end annotation

    .line 596
    .local p0, "this":Lio/grpc/ManagedChannelBuilder;, "Lio/grpc/ManagedChannelBuilder<TT;>;"
    .local p1, "serviceConfig":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;*>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public abstract directExecutor()Lio/grpc/ManagedChannelBuilder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation
.end method

.method public disableRetry()Lio/grpc/ManagedChannelBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 486
    .local p0, "this":Lio/grpc/ManagedChannelBuilder;, "Lio/grpc/ManagedChannelBuilder<TT;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public disableServiceConfigLookUp()Lio/grpc/ManagedChannelBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 607
    .local p0, "this":Lio/grpc/ManagedChannelBuilder;, "Lio/grpc/ManagedChannelBuilder<TT;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public enableRetry()Lio/grpc/ManagedChannelBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 500
    .local p0, "this":Lio/grpc/ManagedChannelBuilder;, "Lio/grpc/ManagedChannelBuilder<TT;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public abstract executor(Ljava/util/concurrent/Executor;)Lio/grpc/ManagedChannelBuilder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Executor;",
            ")TT;"
        }
    .end annotation
.end method

.method public abstract idleTimeout(JLjava/util/concurrent/TimeUnit;)Lio/grpc/ManagedChannelBuilder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            ")TT;"
        }
    .end annotation
.end method

.method public abstract intercept(Ljava/util/List;)Lio/grpc/ManagedChannelBuilder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lio/grpc/ClientInterceptor;",
            ">;)TT;"
        }
    .end annotation
.end method

.method public varargs abstract intercept([Lio/grpc/ClientInterceptor;)Lio/grpc/ManagedChannelBuilder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lio/grpc/ClientInterceptor;",
            ")TT;"
        }
    .end annotation
.end method

.method public keepAliveTime(JLjava/util/concurrent/TimeUnit;)Lio/grpc/ManagedChannelBuilder;
    .locals 1
    .param p1, "keepAliveTime"    # J
    .param p3, "timeUnit"    # Ljava/util/concurrent/TimeUnit;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            ")TT;"
        }
    .end annotation

    .line 368
    .local p0, "this":Lio/grpc/ManagedChannelBuilder;, "Lio/grpc/ManagedChannelBuilder<TT;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public keepAliveTimeout(JLjava/util/concurrent/TimeUnit;)Lio/grpc/ManagedChannelBuilder;
    .locals 1
    .param p1, "keepAliveTimeout"    # J
    .param p3, "timeUnit"    # Ljava/util/concurrent/TimeUnit;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            ")TT;"
        }
    .end annotation

    .line 384
    .local p0, "this":Lio/grpc/ManagedChannelBuilder;, "Lio/grpc/ManagedChannelBuilder<TT;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public keepAliveWithoutCalls(Z)Lio/grpc/ManagedChannelBuilder;
    .locals 1
    .param p1, "enable"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)TT;"
        }
    .end annotation

    .line 403
    .local p0, "this":Lio/grpc/ManagedChannelBuilder;, "Lio/grpc/ManagedChannelBuilder<TT;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public maxHedgedAttempts(I)Lio/grpc/ManagedChannelBuilder;
    .locals 1
    .param p1, "maxHedgedAttempts"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    .line 438
    .local p0, "this":Lio/grpc/ManagedChannelBuilder;, "Lio/grpc/ManagedChannelBuilder<TT;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public maxInboundMessageSize(I)Lio/grpc/ManagedChannelBuilder;
    .locals 2
    .param p1, "bytes"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    .line 326
    .local p0, "this":Lio/grpc/ManagedChannelBuilder;, "Lio/grpc/ManagedChannelBuilder<TT;>;"
    if-ltz p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "bytes must be >= 0"

    invoke-static {v0, v1}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 327
    invoke-direct {p0}, Lio/grpc/ManagedChannelBuilder;->thisT()Lio/grpc/ManagedChannelBuilder;

    move-result-object v0

    return-object v0
.end method

.method public maxInboundMetadataSize(I)Lio/grpc/ManagedChannelBuilder;
    .locals 2
    .param p1, "bytes"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    .line 347
    .local p0, "this":Lio/grpc/ManagedChannelBuilder;, "Lio/grpc/ManagedChannelBuilder<TT;>;"
    if-lez p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "maxInboundMetadataSize must be > 0"

    invoke-static {v0, v1}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 349
    invoke-direct {p0}, Lio/grpc/ManagedChannelBuilder;->thisT()Lio/grpc/ManagedChannelBuilder;

    move-result-object v0

    return-object v0
.end method

.method public maxRetryAttempts(I)Lio/grpc/ManagedChannelBuilder;
    .locals 1
    .param p1, "maxRetryAttempts"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    .line 423
    .local p0, "this":Lio/grpc/ManagedChannelBuilder;, "Lio/grpc/ManagedChannelBuilder<TT;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public maxTraceEvents(I)Lio/grpc/ManagedChannelBuilder;
    .locals 1
    .param p1, "maxTraceEvents"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    .line 525
    .local p0, "this":Lio/grpc/ManagedChannelBuilder;, "Lio/grpc/ManagedChannelBuilder<TT;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public abstract nameResolverFactory(Lio/grpc/NameResolver$Factory;)Lio/grpc/ManagedChannelBuilder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/grpc/NameResolver$Factory;",
            ")TT;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public offloadExecutor(Ljava/util/concurrent/Executor;)Lio/grpc/ManagedChannelBuilder;
    .locals 1
    .param p1, "executor"    # Ljava/util/concurrent/Executor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Executor;",
            ")TT;"
        }
    .end annotation

    .line 135
    .local p0, "this":Lio/grpc/ManagedChannelBuilder;, "Lio/grpc/ManagedChannelBuilder<TT;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public abstract overrideAuthority(Ljava/lang/String;)Lio/grpc/ManagedChannelBuilder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation
.end method

.method public perRpcBufferLimit(J)Lio/grpc/ManagedChannelBuilder;
    .locals 1
    .param p1, "bytes"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)TT;"
        }
    .end annotation

    .line 473
    .local p0, "this":Lio/grpc/ManagedChannelBuilder;, "Lio/grpc/ManagedChannelBuilder<TT;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public proxyDetector(Lio/grpc/ProxyDetector;)Lio/grpc/ManagedChannelBuilder;
    .locals 1
    .param p1, "proxyDetector"    # Lio/grpc/ProxyDetector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/grpc/ProxyDetector;",
            ")TT;"
        }
    .end annotation

    .line 537
    .local p0, "this":Lio/grpc/ManagedChannelBuilder;, "Lio/grpc/ManagedChannelBuilder<TT;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public retryBufferSize(J)Lio/grpc/ManagedChannelBuilder;
    .locals 1
    .param p1, "bytes"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)TT;"
        }
    .end annotation

    .line 456
    .local p0, "this":Lio/grpc/ManagedChannelBuilder;, "Lio/grpc/ManagedChannelBuilder<TT;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public setBinaryLog(Lio/grpc/BinaryLog;)Lio/grpc/ManagedChannelBuilder;
    .locals 1
    .param p1, "binaryLog"    # Lio/grpc/BinaryLog;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/grpc/BinaryLog;",
            ")TT;"
        }
    .end annotation

    .line 513
    .local p0, "this":Lio/grpc/ManagedChannelBuilder;, "Lio/grpc/ManagedChannelBuilder<TT;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public usePlaintext()Lio/grpc/ManagedChannelBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 216
    .local p0, "this":Lio/grpc/ManagedChannelBuilder;, "Lio/grpc/ManagedChannelBuilder<TT;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public useTransportSecurity()Lio/grpc/ManagedChannelBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 231
    .local p0, "this":Lio/grpc/ManagedChannelBuilder;, "Lio/grpc/ManagedChannelBuilder<TT;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public abstract userAgent(Ljava/lang/String;)Lio/grpc/ManagedChannelBuilder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation
.end method
