.class public final Lio/grpc/ServerRegistry;
.super Ljava/lang/Object;
.source "ServerRegistry.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/grpc/ServerRegistry$ProviderNotFoundException;,
        Lio/grpc/ServerRegistry$ServerPriorityAccessor;
    }
.end annotation


# static fields
.field private static instance:Lio/grpc/ServerRegistry;

.field private static final logger:Ljava/util/logging/Logger;


# instance fields
.field private final allProviders:Ljava/util/LinkedHashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashSet<",
            "Lio/grpc/ServerProvider;",
            ">;"
        }
    .end annotation
.end field

.field private effectiveProviders:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lio/grpc/ServerProvider;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 38
    const-class v0, Lio/grpc/ServerRegistry;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lio/grpc/ServerRegistry;->logger:Ljava/util/logging/Logger;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object v0, p0, Lio/grpc/ServerRegistry;->allProviders:Ljava/util/LinkedHashSet;

    .line 44
    nop

    .line 45
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lio/grpc/ServerRegistry;->effectiveProviders:Ljava/util/List;

    .line 44
    return-void
.end method

.method private declared-synchronized addProvider(Lio/grpc/ServerProvider;)V
    .locals 2
    .param p1, "provider"    # Lio/grpc/ServerProvider;

    monitor-enter p0

    .line 62
    :try_start_0
    invoke-virtual {p1}, Lio/grpc/ServerProvider;->isAvailable()Z

    move-result v0

    const-string v1, "isAvailable() returned false"

    invoke-static {v0, v1}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 63
    iget-object v0, p0, Lio/grpc/ServerRegistry;->allProviders:Ljava/util/LinkedHashSet;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 64
    monitor-exit p0

    return-void

    .line 61
    .end local p0    # "this":Lio/grpc/ServerRegistry;
    .end local p1    # "provider":Lio/grpc/ServerProvider;
    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public static declared-synchronized getDefaultRegistry()Lio/grpc/ServerRegistry;
    .locals 7

    const-class v0, Lio/grpc/ServerRegistry;

    monitor-enter v0

    .line 93
    :try_start_0
    sget-object v1, Lio/grpc/ServerRegistry;->instance:Lio/grpc/ServerRegistry;

    if-nez v1, :cond_1

    .line 94
    const-class v1, Lio/grpc/ServerProvider;

    .line 96
    invoke-static {}, Lio/grpc/ServerRegistry;->getHardCodedClasses()Ljava/util/List;

    move-result-object v2

    const-class v3, Lio/grpc/ServerProvider;

    .line 97
    invoke-virtual {v3}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    new-instance v4, Lio/grpc/ServerRegistry$ServerPriorityAccessor;

    const/4 v5, 0x0

    invoke-direct {v4, v5}, Lio/grpc/ServerRegistry$ServerPriorityAccessor;-><init>(Lio/grpc/ServerRegistry$1;)V

    .line 94
    invoke-static {v1, v2, v3, v4}, Lio/grpc/ServiceProviders;->loadAll(Ljava/lang/Class;Ljava/lang/Iterable;Ljava/lang/ClassLoader;Lio/grpc/ServiceProviders$PriorityAccessor;)Ljava/util/List;

    move-result-object v1

    .line 99
    .local v1, "providerList":Ljava/util/List;, "Ljava/util/List<Lio/grpc/ServerProvider;>;"
    new-instance v2, Lio/grpc/ServerRegistry;

    invoke-direct {v2}, Lio/grpc/ServerRegistry;-><init>()V

    sput-object v2, Lio/grpc/ServerRegistry;->instance:Lio/grpc/ServerRegistry;

    .line 100
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lio/grpc/ServerProvider;

    .line 101
    .local v3, "provider":Lio/grpc/ServerProvider;
    sget-object v4, Lio/grpc/ServerRegistry;->logger:Ljava/util/logging/Logger;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Service loader found "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 102
    sget-object v4, Lio/grpc/ServerRegistry;->instance:Lio/grpc/ServerRegistry;

    invoke-direct {v4, v3}, Lio/grpc/ServerRegistry;->addProvider(Lio/grpc/ServerProvider;)V

    .line 103
    .end local v3    # "provider":Lio/grpc/ServerProvider;
    goto :goto_0

    .line 104
    :cond_0
    sget-object v2, Lio/grpc/ServerRegistry;->instance:Lio/grpc/ServerRegistry;

    invoke-direct {v2}, Lio/grpc/ServerRegistry;->refreshProviders()V

    .line 106
    .end local v1    # "providerList":Ljava/util/List;, "Ljava/util/List<Lio/grpc/ServerProvider;>;"
    :cond_1
    sget-object v1, Lio/grpc/ServerRegistry;->instance:Lio/grpc/ServerRegistry;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    .line 92
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method static getHardCodedClasses()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Class<",
            "*>;>;"
        }
    .end annotation

    .line 128
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 130
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Class<*>;>;"
    :try_start_0
    const-string v1, "io.grpc.okhttp.OkHttpServerProvider"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 133
    goto :goto_0

    .line 131
    :catch_0
    move-exception v1

    .line 132
    .local v1, "e":Ljava/lang/ClassNotFoundException;
    sget-object v2, Lio/grpc/ServerRegistry;->logger:Ljava/util/logging/Logger;

    sget-object v3, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    const-string v4, "Unable to find OkHttpServerProvider"

    invoke-virtual {v2, v3, v4, v1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 134
    .end local v1    # "e":Ljava/lang/ClassNotFoundException;
    :goto_0
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    return-object v1
.end method

.method private declared-synchronized refreshProviders()V
    .locals 2

    monitor-enter p0

    .line 77
    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lio/grpc/ServerRegistry;->allProviders:Ljava/util/LinkedHashSet;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 80
    .local v0, "providers":Ljava/util/List;, "Ljava/util/List<Lio/grpc/ServerProvider;>;"
    new-instance v1, Lio/grpc/ServerRegistry$1;

    invoke-direct {v1, p0}, Lio/grpc/ServerRegistry$1;-><init>(Lio/grpc/ServerRegistry;)V

    invoke-static {v1}, Ljava/util/Collections;->reverseOrder(Ljava/util/Comparator;)Ljava/util/Comparator;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 86
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lio/grpc/ServerRegistry;->effectiveProviders:Ljava/util/List;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 87
    monitor-exit p0

    return-void

    .line 76
    .end local v0    # "providers":Ljava/util/List;, "Ljava/util/List<Lio/grpc/ServerProvider;>;"
    .end local p0    # "this":Lio/grpc/ServerRegistry;
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method


# virtual methods
.method public declared-synchronized deregister(Lio/grpc/ServerProvider;)V
    .locals 1
    .param p1, "provider"    # Lio/grpc/ServerProvider;

    monitor-enter p0

    .line 72
    :try_start_0
    iget-object v0, p0, Lio/grpc/ServerRegistry;->allProviders:Ljava/util/LinkedHashSet;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashSet;->remove(Ljava/lang/Object;)Z

    .line 73
    invoke-direct {p0}, Lio/grpc/ServerRegistry;->refreshProviders()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 74
    monitor-exit p0

    return-void

    .line 71
    .end local p0    # "this":Lio/grpc/ServerRegistry;
    .end local p1    # "provider":Lio/grpc/ServerProvider;
    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method newServerBuilderForPort(ILio/grpc/ServerCredentials;)Lio/grpc/ServerBuilder;
    .locals 6
    .param p1, "port"    # I
    .param p2, "creds"    # Lio/grpc/ServerCredentials;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lio/grpc/ServerCredentials;",
            ")",
            "Lio/grpc/ServerBuilder<",
            "*>;"
        }
    .end annotation

    .line 138
    invoke-virtual {p0}, Lio/grpc/ServerRegistry;->providers()Ljava/util/List;

    move-result-object v0

    .line 139
    .local v0, "providers":Ljava/util/List;, "Ljava/util/List<Lio/grpc/ServerProvider;>;"
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    .line 144
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 145
    .local v1, "error":Ljava/lang/StringBuilder;
    invoke-virtual {p0}, Lio/grpc/ServerRegistry;->providers()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lio/grpc/ServerProvider;

    .line 146
    .local v3, "provider":Lio/grpc/ServerProvider;
    nop

    .line 147
    invoke-virtual {v3, p1, p2}, Lio/grpc/ServerProvider;->newServerBuilderForPort(ILio/grpc/ServerCredentials;)Lio/grpc/ServerProvider$NewServerBuilderResult;

    move-result-object v4

    .line 148
    .local v4, "result":Lio/grpc/ServerProvider$NewServerBuilderResult;
    invoke-virtual {v4}, Lio/grpc/ServerProvider$NewServerBuilderResult;->getServerBuilder()Lio/grpc/ServerBuilder;

    move-result-object v5

    if-eqz v5, :cond_0

    .line 149
    invoke-virtual {v4}, Lio/grpc/ServerProvider$NewServerBuilderResult;->getServerBuilder()Lio/grpc/ServerBuilder;

    move-result-object v2

    return-object v2

    .line 151
    :cond_0
    const-string v5, "; "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 152
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 153
    const-string v5, ": "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 154
    invoke-virtual {v4}, Lio/grpc/ServerProvider$NewServerBuilderResult;->getError()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 155
    .end local v3    # "provider":Lio/grpc/ServerProvider;
    .end local v4    # "result":Lio/grpc/ServerProvider$NewServerBuilderResult;
    goto :goto_0

    .line 156
    :cond_1
    new-instance v2, Lio/grpc/ServerRegistry$ProviderNotFoundException;

    const/4 v3, 0x2

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lio/grpc/ServerRegistry$ProviderNotFoundException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 140
    .end local v1    # "error":Ljava/lang/StringBuilder;
    :cond_2
    new-instance v1, Lio/grpc/ServerRegistry$ProviderNotFoundException;

    const-string v2, "No functional server found. Try adding a dependency on the grpc-netty, grpc-netty-shaded, or grpc-okhttp artifact"

    invoke-direct {v1, v2}, Lio/grpc/ServerRegistry$ProviderNotFoundException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method provider()Lio/grpc/ServerProvider;
    .locals 2

    .line 119
    invoke-virtual {p0}, Lio/grpc/ServerRegistry;->providers()Ljava/util/List;

    move-result-object v0

    .line 120
    .local v0, "providers":Ljava/util/List;, "Ljava/util/List<Lio/grpc/ServerProvider;>;"
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/grpc/ServerProvider;

    :goto_0
    return-object v1
.end method

.method declared-synchronized providers()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lio/grpc/ServerProvider;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    .line 114
    :try_start_0
    iget-object v0, p0, Lio/grpc/ServerRegistry;->effectiveProviders:Ljava/util/List;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 114
    .end local p0    # "this":Lio/grpc/ServerRegistry;
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public declared-synchronized register(Lio/grpc/ServerProvider;)V
    .locals 0
    .param p1, "provider"    # Lio/grpc/ServerProvider;

    monitor-enter p0

    .line 57
    :try_start_0
    invoke-direct {p0, p1}, Lio/grpc/ServerRegistry;->addProvider(Lio/grpc/ServerProvider;)V

    .line 58
    invoke-direct {p0}, Lio/grpc/ServerRegistry;->refreshProviders()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 59
    monitor-exit p0

    return-void

    .line 56
    .end local p0    # "this":Lio/grpc/ServerRegistry;
    .end local p1    # "provider":Lio/grpc/ServerProvider;
    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method
