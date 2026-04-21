.class public abstract Lio/grpc/ForwardingChannelBuilder2;
.super Lio/grpc/ManagedChannelBuilder;
.source "ForwardingChannelBuilder2.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lio/grpc/ManagedChannelBuilder<",
        "TT;>;>",
        "Lio/grpc/ManagedChannelBuilder<",
        "TT;>;"
    }
.end annotation


# direct methods
.method protected constructor <init>()V
    .locals 0

    .line 43
    .local p0, "this":Lio/grpc/ForwardingChannelBuilder2;, "Lio/grpc/ForwardingChannelBuilder2<TT;>;"
    invoke-direct {p0}, Lio/grpc/ManagedChannelBuilder;-><init>()V

    .line 44
    return-void
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

    .line 51
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Subclass failed to hide static factory"

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

    .line 59
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Subclass failed to hide static factory"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private thisT()Lio/grpc/ManagedChannelBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 273
    .local p0, "this":Lio/grpc/ForwardingChannelBuilder2;, "Lio/grpc/ForwardingChannelBuilder2<TT;>;"
    move-object v0, p0

    .line 274
    .local v0, "thisT":Lio/grpc/ManagedChannelBuilder;, "TT;"
    return-object v0
.end method


# virtual methods
.method public addTransportFilter(Lio/grpc/ClientTransportFilter;)Lio/grpc/ManagedChannelBuilder;
    .locals 1
    .param p1, "transportFilter"    # Lio/grpc/ClientTransportFilter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/grpc/ClientTransportFilter;",
            ")TT;"
        }
    .end annotation

    .line 99
    .local p0, "this":Lio/grpc/ForwardingChannelBuilder2;, "Lio/grpc/ForwardingChannelBuilder2<TT;>;"
    invoke-virtual {p0}, Lio/grpc/ForwardingChannelBuilder2;->delegate()Lio/grpc/ManagedChannelBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lio/grpc/ManagedChannelBuilder;->addTransportFilter(Lio/grpc/ClientTransportFilter;)Lio/grpc/ManagedChannelBuilder;

    .line 100
    invoke-direct {p0}, Lio/grpc/ForwardingChannelBuilder2;->thisT()Lio/grpc/ManagedChannelBuilder;

    move-result-object v0

    return-object v0
.end method

.method public build()Lio/grpc/ManagedChannel;
    .locals 1

    .line 260
    .local p0, "this":Lio/grpc/ForwardingChannelBuilder2;, "Lio/grpc/ForwardingChannelBuilder2<TT;>;"
    invoke-virtual {p0}, Lio/grpc/ForwardingChannelBuilder2;->delegate()Lio/grpc/ManagedChannelBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lio/grpc/ManagedChannelBuilder;->build()Lio/grpc/ManagedChannel;

    move-result-object v0

    return-object v0
.end method

.method public compressorRegistry(Lio/grpc/CompressorRegistry;)Lio/grpc/ManagedChannelBuilder;
    .locals 1
    .param p1, "registry"    # Lio/grpc/CompressorRegistry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/grpc/CompressorRegistry;",
            ")TT;"
        }
    .end annotation

    .line 148
    .local p0, "this":Lio/grpc/ForwardingChannelBuilder2;, "Lio/grpc/ForwardingChannelBuilder2<TT;>;"
    invoke-virtual {p0}, Lio/grpc/ForwardingChannelBuilder2;->delegate()Lio/grpc/ManagedChannelBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lio/grpc/ManagedChannelBuilder;->compressorRegistry(Lio/grpc/CompressorRegistry;)Lio/grpc/ManagedChannelBuilder;

    .line 149
    invoke-direct {p0}, Lio/grpc/ForwardingChannelBuilder2;->thisT()Lio/grpc/ManagedChannelBuilder;

    move-result-object v0

    return-object v0
.end method

.method public decompressorRegistry(Lio/grpc/DecompressorRegistry;)Lio/grpc/ManagedChannelBuilder;
    .locals 1
    .param p1, "registry"    # Lio/grpc/DecompressorRegistry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/grpc/DecompressorRegistry;",
            ")TT;"
        }
    .end annotation

    .line 142
    .local p0, "this":Lio/grpc/ForwardingChannelBuilder2;, "Lio/grpc/ForwardingChannelBuilder2<TT;>;"
    invoke-virtual {p0}, Lio/grpc/ForwardingChannelBuilder2;->delegate()Lio/grpc/ManagedChannelBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lio/grpc/ManagedChannelBuilder;->decompressorRegistry(Lio/grpc/DecompressorRegistry;)Lio/grpc/ManagedChannelBuilder;

    .line 143
    invoke-direct {p0}, Lio/grpc/ForwardingChannelBuilder2;->thisT()Lio/grpc/ManagedChannelBuilder;

    move-result-object v0

    return-object v0
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

    .line 136
    .local p0, "this":Lio/grpc/ForwardingChannelBuilder2;, "Lio/grpc/ForwardingChannelBuilder2<TT;>;"
    invoke-virtual {p0}, Lio/grpc/ForwardingChannelBuilder2;->delegate()Lio/grpc/ManagedChannelBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lio/grpc/ManagedChannelBuilder;->defaultLoadBalancingPolicy(Ljava/lang/String;)Lio/grpc/ManagedChannelBuilder;

    .line 137
    invoke-direct {p0}, Lio/grpc/ForwardingChannelBuilder2;->thisT()Lio/grpc/ManagedChannelBuilder;

    move-result-object v0

    return-object v0
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

    .line 244
    .local p0, "this":Lio/grpc/ForwardingChannelBuilder2;, "Lio/grpc/ForwardingChannelBuilder2<TT;>;"
    .local p1, "serviceConfig":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;*>;"
    invoke-virtual {p0}, Lio/grpc/ForwardingChannelBuilder2;->delegate()Lio/grpc/ManagedChannelBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lio/grpc/ManagedChannelBuilder;->defaultServiceConfig(Ljava/util/Map;)Lio/grpc/ManagedChannelBuilder;

    .line 245
    invoke-direct {p0}, Lio/grpc/ForwardingChannelBuilder2;->thisT()Lio/grpc/ManagedChannelBuilder;

    move-result-object v0

    return-object v0
.end method

.method protected abstract delegate()Lio/grpc/ManagedChannelBuilder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/grpc/ManagedChannelBuilder<",
            "*>;"
        }
    .end annotation
.end method

.method public directExecutor()Lio/grpc/ManagedChannelBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 69
    .local p0, "this":Lio/grpc/ForwardingChannelBuilder2;, "Lio/grpc/ForwardingChannelBuilder2<TT;>;"
    invoke-virtual {p0}, Lio/grpc/ForwardingChannelBuilder2;->delegate()Lio/grpc/ManagedChannelBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lio/grpc/ManagedChannelBuilder;->directExecutor()Lio/grpc/ManagedChannelBuilder;

    .line 70
    invoke-direct {p0}, Lio/grpc/ForwardingChannelBuilder2;->thisT()Lio/grpc/ManagedChannelBuilder;

    move-result-object v0

    return-object v0
.end method

.method public disableRetry()Lio/grpc/ManagedChannelBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 214
    .local p0, "this":Lio/grpc/ForwardingChannelBuilder2;, "Lio/grpc/ForwardingChannelBuilder2<TT;>;"
    invoke-virtual {p0}, Lio/grpc/ForwardingChannelBuilder2;->delegate()Lio/grpc/ManagedChannelBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lio/grpc/ManagedChannelBuilder;->disableRetry()Lio/grpc/ManagedChannelBuilder;

    .line 215
    invoke-direct {p0}, Lio/grpc/ForwardingChannelBuilder2;->thisT()Lio/grpc/ManagedChannelBuilder;

    move-result-object v0

    return-object v0
.end method

.method public disableServiceConfigLookUp()Lio/grpc/ManagedChannelBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 250
    .local p0, "this":Lio/grpc/ForwardingChannelBuilder2;, "Lio/grpc/ForwardingChannelBuilder2<TT;>;"
    invoke-virtual {p0}, Lio/grpc/ForwardingChannelBuilder2;->delegate()Lio/grpc/ManagedChannelBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lio/grpc/ManagedChannelBuilder;->disableServiceConfigLookUp()Lio/grpc/ManagedChannelBuilder;

    .line 251
    invoke-direct {p0}, Lio/grpc/ForwardingChannelBuilder2;->thisT()Lio/grpc/ManagedChannelBuilder;

    move-result-object v0

    return-object v0
.end method

.method public enableRetry()Lio/grpc/ManagedChannelBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 220
    .local p0, "this":Lio/grpc/ForwardingChannelBuilder2;, "Lio/grpc/ForwardingChannelBuilder2<TT;>;"
    invoke-virtual {p0}, Lio/grpc/ForwardingChannelBuilder2;->delegate()Lio/grpc/ManagedChannelBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lio/grpc/ManagedChannelBuilder;->enableRetry()Lio/grpc/ManagedChannelBuilder;

    .line 221
    invoke-direct {p0}, Lio/grpc/ForwardingChannelBuilder2;->thisT()Lio/grpc/ManagedChannelBuilder;

    move-result-object v0

    return-object v0
.end method

.method public executor(Ljava/util/concurrent/Executor;)Lio/grpc/ManagedChannelBuilder;
    .locals 1
    .param p1, "executor"    # Ljava/util/concurrent/Executor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Executor;",
            ")TT;"
        }
    .end annotation

    .line 75
    .local p0, "this":Lio/grpc/ForwardingChannelBuilder2;, "Lio/grpc/ForwardingChannelBuilder2<TT;>;"
    invoke-virtual {p0}, Lio/grpc/ForwardingChannelBuilder2;->delegate()Lio/grpc/ManagedChannelBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lio/grpc/ManagedChannelBuilder;->executor(Ljava/util/concurrent/Executor;)Lio/grpc/ManagedChannelBuilder;

    .line 76
    invoke-direct {p0}, Lio/grpc/ForwardingChannelBuilder2;->thisT()Lio/grpc/ManagedChannelBuilder;

    move-result-object v0

    return-object v0
.end method

.method public idleTimeout(JLjava/util/concurrent/TimeUnit;)Lio/grpc/ManagedChannelBuilder;
    .locals 1
    .param p1, "value"    # J
    .param p3, "unit"    # Ljava/util/concurrent/TimeUnit;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            ")TT;"
        }
    .end annotation

    .line 154
    .local p0, "this":Lio/grpc/ForwardingChannelBuilder2;, "Lio/grpc/ForwardingChannelBuilder2<TT;>;"
    invoke-virtual {p0}, Lio/grpc/ForwardingChannelBuilder2;->delegate()Lio/grpc/ManagedChannelBuilder;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lio/grpc/ManagedChannelBuilder;->idleTimeout(JLjava/util/concurrent/TimeUnit;)Lio/grpc/ManagedChannelBuilder;

    .line 155
    invoke-direct {p0}, Lio/grpc/ForwardingChannelBuilder2;->thisT()Lio/grpc/ManagedChannelBuilder;

    move-result-object v0

    return-object v0
.end method

.method public intercept(Ljava/util/List;)Lio/grpc/ManagedChannelBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lio/grpc/ClientInterceptor;",
            ">;)TT;"
        }
    .end annotation

    .line 87
    .local p0, "this":Lio/grpc/ForwardingChannelBuilder2;, "Lio/grpc/ForwardingChannelBuilder2<TT;>;"
    .local p1, "interceptors":Ljava/util/List;, "Ljava/util/List<Lio/grpc/ClientInterceptor;>;"
    invoke-virtual {p0}, Lio/grpc/ForwardingChannelBuilder2;->delegate()Lio/grpc/ManagedChannelBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lio/grpc/ManagedChannelBuilder;->intercept(Ljava/util/List;)Lio/grpc/ManagedChannelBuilder;

    .line 88
    invoke-direct {p0}, Lio/grpc/ForwardingChannelBuilder2;->thisT()Lio/grpc/ManagedChannelBuilder;

    move-result-object v0

    return-object v0
.end method

.method public varargs intercept([Lio/grpc/ClientInterceptor;)Lio/grpc/ManagedChannelBuilder;
    .locals 1
    .param p1, "interceptors"    # [Lio/grpc/ClientInterceptor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lio/grpc/ClientInterceptor;",
            ")TT;"
        }
    .end annotation

    .line 93
    .local p0, "this":Lio/grpc/ForwardingChannelBuilder2;, "Lio/grpc/ForwardingChannelBuilder2<TT;>;"
    invoke-virtual {p0}, Lio/grpc/ForwardingChannelBuilder2;->delegate()Lio/grpc/ManagedChannelBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lio/grpc/ManagedChannelBuilder;->intercept([Lio/grpc/ClientInterceptor;)Lio/grpc/ManagedChannelBuilder;

    .line 94
    invoke-direct {p0}, Lio/grpc/ForwardingChannelBuilder2;->thisT()Lio/grpc/ManagedChannelBuilder;

    move-result-object v0

    return-object v0
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

    .line 172
    .local p0, "this":Lio/grpc/ForwardingChannelBuilder2;, "Lio/grpc/ForwardingChannelBuilder2<TT;>;"
    invoke-virtual {p0}, Lio/grpc/ForwardingChannelBuilder2;->delegate()Lio/grpc/ManagedChannelBuilder;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lio/grpc/ManagedChannelBuilder;->keepAliveTime(JLjava/util/concurrent/TimeUnit;)Lio/grpc/ManagedChannelBuilder;

    .line 173
    invoke-direct {p0}, Lio/grpc/ForwardingChannelBuilder2;->thisT()Lio/grpc/ManagedChannelBuilder;

    move-result-object v0

    return-object v0
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

    .line 178
    .local p0, "this":Lio/grpc/ForwardingChannelBuilder2;, "Lio/grpc/ForwardingChannelBuilder2<TT;>;"
    invoke-virtual {p0}, Lio/grpc/ForwardingChannelBuilder2;->delegate()Lio/grpc/ManagedChannelBuilder;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lio/grpc/ManagedChannelBuilder;->keepAliveTimeout(JLjava/util/concurrent/TimeUnit;)Lio/grpc/ManagedChannelBuilder;

    .line 179
    invoke-direct {p0}, Lio/grpc/ForwardingChannelBuilder2;->thisT()Lio/grpc/ManagedChannelBuilder;

    move-result-object v0

    return-object v0
.end method

.method public keepAliveWithoutCalls(Z)Lio/grpc/ManagedChannelBuilder;
    .locals 1
    .param p1, "enable"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)TT;"
        }
    .end annotation

    .line 184
    .local p0, "this":Lio/grpc/ForwardingChannelBuilder2;, "Lio/grpc/ForwardingChannelBuilder2<TT;>;"
    invoke-virtual {p0}, Lio/grpc/ForwardingChannelBuilder2;->delegate()Lio/grpc/ManagedChannelBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lio/grpc/ManagedChannelBuilder;->keepAliveWithoutCalls(Z)Lio/grpc/ManagedChannelBuilder;

    .line 185
    invoke-direct {p0}, Lio/grpc/ForwardingChannelBuilder2;->thisT()Lio/grpc/ManagedChannelBuilder;

    move-result-object v0

    return-object v0
.end method

.method public maxHedgedAttempts(I)Lio/grpc/ManagedChannelBuilder;
    .locals 1
    .param p1, "maxHedgedAttempts"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    .line 196
    .local p0, "this":Lio/grpc/ForwardingChannelBuilder2;, "Lio/grpc/ForwardingChannelBuilder2<TT;>;"
    invoke-virtual {p0}, Lio/grpc/ForwardingChannelBuilder2;->delegate()Lio/grpc/ManagedChannelBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lio/grpc/ManagedChannelBuilder;->maxHedgedAttempts(I)Lio/grpc/ManagedChannelBuilder;

    .line 197
    invoke-direct {p0}, Lio/grpc/ForwardingChannelBuilder2;->thisT()Lio/grpc/ManagedChannelBuilder;

    move-result-object v0

    return-object v0
.end method

.method public maxInboundMessageSize(I)Lio/grpc/ManagedChannelBuilder;
    .locals 1
    .param p1, "max"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    .line 160
    .local p0, "this":Lio/grpc/ForwardingChannelBuilder2;, "Lio/grpc/ForwardingChannelBuilder2<TT;>;"
    invoke-virtual {p0}, Lio/grpc/ForwardingChannelBuilder2;->delegate()Lio/grpc/ManagedChannelBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lio/grpc/ManagedChannelBuilder;->maxInboundMessageSize(I)Lio/grpc/ManagedChannelBuilder;

    .line 161
    invoke-direct {p0}, Lio/grpc/ForwardingChannelBuilder2;->thisT()Lio/grpc/ManagedChannelBuilder;

    move-result-object v0

    return-object v0
.end method

.method public maxInboundMetadataSize(I)Lio/grpc/ManagedChannelBuilder;
    .locals 1
    .param p1, "max"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    .line 166
    .local p0, "this":Lio/grpc/ForwardingChannelBuilder2;, "Lio/grpc/ForwardingChannelBuilder2<TT;>;"
    invoke-virtual {p0}, Lio/grpc/ForwardingChannelBuilder2;->delegate()Lio/grpc/ManagedChannelBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lio/grpc/ManagedChannelBuilder;->maxInboundMetadataSize(I)Lio/grpc/ManagedChannelBuilder;

    .line 167
    invoke-direct {p0}, Lio/grpc/ForwardingChannelBuilder2;->thisT()Lio/grpc/ManagedChannelBuilder;

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

    .line 190
    .local p0, "this":Lio/grpc/ForwardingChannelBuilder2;, "Lio/grpc/ForwardingChannelBuilder2<TT;>;"
    invoke-virtual {p0}, Lio/grpc/ForwardingChannelBuilder2;->delegate()Lio/grpc/ManagedChannelBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lio/grpc/ManagedChannelBuilder;->maxRetryAttempts(I)Lio/grpc/ManagedChannelBuilder;

    .line 191
    invoke-direct {p0}, Lio/grpc/ForwardingChannelBuilder2;->thisT()Lio/grpc/ManagedChannelBuilder;

    move-result-object v0

    return-object v0
.end method

.method public maxTraceEvents(I)Lio/grpc/ManagedChannelBuilder;
    .locals 1
    .param p1, "maxTraceEvents"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    .line 232
    .local p0, "this":Lio/grpc/ForwardingChannelBuilder2;, "Lio/grpc/ForwardingChannelBuilder2<TT;>;"
    invoke-virtual {p0}, Lio/grpc/ForwardingChannelBuilder2;->delegate()Lio/grpc/ManagedChannelBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lio/grpc/ManagedChannelBuilder;->maxTraceEvents(I)Lio/grpc/ManagedChannelBuilder;

    .line 233
    invoke-direct {p0}, Lio/grpc/ForwardingChannelBuilder2;->thisT()Lio/grpc/ManagedChannelBuilder;

    move-result-object v0

    return-object v0
.end method

.method public nameResolverFactory(Lio/grpc/NameResolver$Factory;)Lio/grpc/ManagedChannelBuilder;
    .locals 1
    .param p1, "resolverFactory"    # Lio/grpc/NameResolver$Factory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/grpc/NameResolver$Factory;",
            ")TT;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 130
    .local p0, "this":Lio/grpc/ForwardingChannelBuilder2;, "Lio/grpc/ForwardingChannelBuilder2<TT;>;"
    invoke-virtual {p0}, Lio/grpc/ForwardingChannelBuilder2;->delegate()Lio/grpc/ManagedChannelBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lio/grpc/ManagedChannelBuilder;->nameResolverFactory(Lio/grpc/NameResolver$Factory;)Lio/grpc/ManagedChannelBuilder;

    .line 131
    invoke-direct {p0}, Lio/grpc/ForwardingChannelBuilder2;->thisT()Lio/grpc/ManagedChannelBuilder;

    move-result-object v0

    return-object v0
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

    .line 81
    .local p0, "this":Lio/grpc/ForwardingChannelBuilder2;, "Lio/grpc/ForwardingChannelBuilder2<TT;>;"
    invoke-virtual {p0}, Lio/grpc/ForwardingChannelBuilder2;->delegate()Lio/grpc/ManagedChannelBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lio/grpc/ManagedChannelBuilder;->offloadExecutor(Ljava/util/concurrent/Executor;)Lio/grpc/ManagedChannelBuilder;

    .line 82
    invoke-direct {p0}, Lio/grpc/ForwardingChannelBuilder2;->thisT()Lio/grpc/ManagedChannelBuilder;

    move-result-object v0

    return-object v0
.end method

.method public overrideAuthority(Ljava/lang/String;)Lio/grpc/ManagedChannelBuilder;
    .locals 1
    .param p1, "authority"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .line 111
    .local p0, "this":Lio/grpc/ForwardingChannelBuilder2;, "Lio/grpc/ForwardingChannelBuilder2<TT;>;"
    invoke-virtual {p0}, Lio/grpc/ForwardingChannelBuilder2;->delegate()Lio/grpc/ManagedChannelBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lio/grpc/ManagedChannelBuilder;->overrideAuthority(Ljava/lang/String;)Lio/grpc/ManagedChannelBuilder;

    .line 112
    invoke-direct {p0}, Lio/grpc/ForwardingChannelBuilder2;->thisT()Lio/grpc/ManagedChannelBuilder;

    move-result-object v0

    return-object v0
.end method

.method public perRpcBufferLimit(J)Lio/grpc/ManagedChannelBuilder;
    .locals 1
    .param p1, "bytes"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)TT;"
        }
    .end annotation

    .line 208
    .local p0, "this":Lio/grpc/ForwardingChannelBuilder2;, "Lio/grpc/ForwardingChannelBuilder2<TT;>;"
    invoke-virtual {p0}, Lio/grpc/ForwardingChannelBuilder2;->delegate()Lio/grpc/ManagedChannelBuilder;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lio/grpc/ManagedChannelBuilder;->perRpcBufferLimit(J)Lio/grpc/ManagedChannelBuilder;

    .line 209
    invoke-direct {p0}, Lio/grpc/ForwardingChannelBuilder2;->thisT()Lio/grpc/ManagedChannelBuilder;

    move-result-object v0

    return-object v0
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

    .line 238
    .local p0, "this":Lio/grpc/ForwardingChannelBuilder2;, "Lio/grpc/ForwardingChannelBuilder2<TT;>;"
    invoke-virtual {p0}, Lio/grpc/ForwardingChannelBuilder2;->delegate()Lio/grpc/ManagedChannelBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lio/grpc/ManagedChannelBuilder;->proxyDetector(Lio/grpc/ProxyDetector;)Lio/grpc/ManagedChannelBuilder;

    .line 239
    invoke-direct {p0}, Lio/grpc/ForwardingChannelBuilder2;->thisT()Lio/grpc/ManagedChannelBuilder;

    move-result-object v0

    return-object v0
.end method

.method public retryBufferSize(J)Lio/grpc/ManagedChannelBuilder;
    .locals 1
    .param p1, "bytes"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)TT;"
        }
    .end annotation

    .line 202
    .local p0, "this":Lio/grpc/ForwardingChannelBuilder2;, "Lio/grpc/ForwardingChannelBuilder2<TT;>;"
    invoke-virtual {p0}, Lio/grpc/ForwardingChannelBuilder2;->delegate()Lio/grpc/ManagedChannelBuilder;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lio/grpc/ManagedChannelBuilder;->retryBufferSize(J)Lio/grpc/ManagedChannelBuilder;

    .line 203
    invoke-direct {p0}, Lio/grpc/ForwardingChannelBuilder2;->thisT()Lio/grpc/ManagedChannelBuilder;

    move-result-object v0

    return-object v0
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

    .line 226
    .local p0, "this":Lio/grpc/ForwardingChannelBuilder2;, "Lio/grpc/ForwardingChannelBuilder2<TT;>;"
    invoke-virtual {p0}, Lio/grpc/ForwardingChannelBuilder2;->delegate()Lio/grpc/ManagedChannelBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lio/grpc/ManagedChannelBuilder;->setBinaryLog(Lio/grpc/BinaryLog;)Lio/grpc/ManagedChannelBuilder;

    .line 227
    invoke-direct {p0}, Lio/grpc/ForwardingChannelBuilder2;->thisT()Lio/grpc/ManagedChannelBuilder;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 265
    .local p0, "this":Lio/grpc/ForwardingChannelBuilder2;, "Lio/grpc/ForwardingChannelBuilder2<TT;>;"
    invoke-static {p0}, Lcom/google/common/base/MoreObjects;->toStringHelper(Ljava/lang/Object;)Lcom/google/common/base/MoreObjects$ToStringHelper;

    move-result-object v0

    const-string v1, "delegate"

    invoke-virtual {p0}, Lio/grpc/ForwardingChannelBuilder2;->delegate()Lio/grpc/ManagedChannelBuilder;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/MoreObjects$ToStringHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/base/MoreObjects$ToStringHelper;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public usePlaintext()Lio/grpc/ManagedChannelBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 117
    .local p0, "this":Lio/grpc/ForwardingChannelBuilder2;, "Lio/grpc/ForwardingChannelBuilder2<TT;>;"
    invoke-virtual {p0}, Lio/grpc/ForwardingChannelBuilder2;->delegate()Lio/grpc/ManagedChannelBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lio/grpc/ManagedChannelBuilder;->usePlaintext()Lio/grpc/ManagedChannelBuilder;

    .line 118
    invoke-direct {p0}, Lio/grpc/ForwardingChannelBuilder2;->thisT()Lio/grpc/ManagedChannelBuilder;

    move-result-object v0

    return-object v0
.end method

.method public useTransportSecurity()Lio/grpc/ManagedChannelBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 123
    .local p0, "this":Lio/grpc/ForwardingChannelBuilder2;, "Lio/grpc/ForwardingChannelBuilder2<TT;>;"
    invoke-virtual {p0}, Lio/grpc/ForwardingChannelBuilder2;->delegate()Lio/grpc/ManagedChannelBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lio/grpc/ManagedChannelBuilder;->useTransportSecurity()Lio/grpc/ManagedChannelBuilder;

    .line 124
    invoke-direct {p0}, Lio/grpc/ForwardingChannelBuilder2;->thisT()Lio/grpc/ManagedChannelBuilder;

    move-result-object v0

    return-object v0
.end method

.method public userAgent(Ljava/lang/String;)Lio/grpc/ManagedChannelBuilder;
    .locals 1
    .param p1, "userAgent"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .line 105
    .local p0, "this":Lio/grpc/ForwardingChannelBuilder2;, "Lio/grpc/ForwardingChannelBuilder2<TT;>;"
    invoke-virtual {p0}, Lio/grpc/ForwardingChannelBuilder2;->delegate()Lio/grpc/ManagedChannelBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lio/grpc/ManagedChannelBuilder;->userAgent(Ljava/lang/String;)Lio/grpc/ManagedChannelBuilder;

    .line 106
    invoke-direct {p0}, Lio/grpc/ForwardingChannelBuilder2;->thisT()Lio/grpc/ManagedChannelBuilder;

    move-result-object v0

    return-object v0
.end method
