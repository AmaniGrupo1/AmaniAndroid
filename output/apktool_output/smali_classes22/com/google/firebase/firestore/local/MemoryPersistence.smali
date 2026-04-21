.class public final Lcom/google/firebase/firestore/local/MemoryPersistence;
.super Lcom/google/firebase/firestore/local/Persistence;
.source "MemoryPersistence.java"


# instance fields
.field private final bundleCache:Lcom/google/firebase/firestore/local/MemoryBundleCache;

.field private final globalsCache:Lcom/google/firebase/firestore/local/MemoryGlobalsCache;

.field private final indexManager:Lcom/google/firebase/firestore/local/MemoryIndexManager;

.field private final mutationQueues:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/google/firebase/firestore/auth/User;",
            "Lcom/google/firebase/firestore/local/MemoryMutationQueue;",
            ">;"
        }
    .end annotation
.end field

.field private final overlays:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/google/firebase/firestore/auth/User;",
            "Lcom/google/firebase/firestore/local/MemoryDocumentOverlayCache;",
            ">;"
        }
    .end annotation
.end field

.field private referenceDelegate:Lcom/google/firebase/firestore/local/ReferenceDelegate;

.field private final remoteDocumentCache:Lcom/google/firebase/firestore/local/MemoryRemoteDocumentCache;

.field private started:Z

.field private final targetCache:Lcom/google/firebase/firestore/local/MemoryTargetCache;


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 60
    invoke-direct {p0}, Lcom/google/firebase/firestore/local/Persistence;-><init>()V

    .line 61
    new-instance v0, Lcom/google/firebase/firestore/local/MemoryGlobalsCache;

    invoke-direct {v0}, Lcom/google/firebase/firestore/local/MemoryGlobalsCache;-><init>()V

    iput-object v0, p0, Lcom/google/firebase/firestore/local/MemoryPersistence;->globalsCache:Lcom/google/firebase/firestore/local/MemoryGlobalsCache;

    .line 62
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/firebase/firestore/local/MemoryPersistence;->mutationQueues:Ljava/util/Map;

    .line 63
    new-instance v0, Lcom/google/firebase/firestore/local/MemoryIndexManager;

    invoke-direct {v0}, Lcom/google/firebase/firestore/local/MemoryIndexManager;-><init>()V

    iput-object v0, p0, Lcom/google/firebase/firestore/local/MemoryPersistence;->indexManager:Lcom/google/firebase/firestore/local/MemoryIndexManager;

    .line 64
    new-instance v0, Lcom/google/firebase/firestore/local/MemoryTargetCache;

    invoke-direct {v0, p0}, Lcom/google/firebase/firestore/local/MemoryTargetCache;-><init>(Lcom/google/firebase/firestore/local/MemoryPersistence;)V

    iput-object v0, p0, Lcom/google/firebase/firestore/local/MemoryPersistence;->targetCache:Lcom/google/firebase/firestore/local/MemoryTargetCache;

    .line 65
    new-instance v0, Lcom/google/firebase/firestore/local/MemoryBundleCache;

    invoke-direct {v0}, Lcom/google/firebase/firestore/local/MemoryBundleCache;-><init>()V

    iput-object v0, p0, Lcom/google/firebase/firestore/local/MemoryPersistence;->bundleCache:Lcom/google/firebase/firestore/local/MemoryBundleCache;

    .line 66
    new-instance v0, Lcom/google/firebase/firestore/local/MemoryRemoteDocumentCache;

    invoke-direct {v0}, Lcom/google/firebase/firestore/local/MemoryRemoteDocumentCache;-><init>()V

    iput-object v0, p0, Lcom/google/firebase/firestore/local/MemoryPersistence;->remoteDocumentCache:Lcom/google/firebase/firestore/local/MemoryRemoteDocumentCache;

    .line 67
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/firebase/firestore/local/MemoryPersistence;->overlays:Ljava/util/Map;

    .line 68
    return-void
.end method

.method public static createEagerGcMemoryPersistence()Lcom/google/firebase/firestore/local/MemoryPersistence;
    .locals 2

    .line 46
    new-instance v0, Lcom/google/firebase/firestore/local/MemoryPersistence;

    invoke-direct {v0}, Lcom/google/firebase/firestore/local/MemoryPersistence;-><init>()V

    .line 47
    .local v0, "persistence":Lcom/google/firebase/firestore/local/MemoryPersistence;
    new-instance v1, Lcom/google/firebase/firestore/local/MemoryEagerReferenceDelegate;

    invoke-direct {v1, v0}, Lcom/google/firebase/firestore/local/MemoryEagerReferenceDelegate;-><init>(Lcom/google/firebase/firestore/local/MemoryPersistence;)V

    invoke-direct {v0, v1}, Lcom/google/firebase/firestore/local/MemoryPersistence;->setReferenceDelegate(Lcom/google/firebase/firestore/local/ReferenceDelegate;)V

    .line 48
    return-object v0
.end method

.method public static createLruGcMemoryPersistence(Lcom/google/firebase/firestore/local/LruGarbageCollector$Params;Lcom/google/firebase/firestore/local/LocalSerializer;)Lcom/google/firebase/firestore/local/MemoryPersistence;
    .locals 2
    .param p0, "params"    # Lcom/google/firebase/firestore/local/LruGarbageCollector$Params;
    .param p1, "serializer"    # Lcom/google/firebase/firestore/local/LocalSerializer;

    .line 53
    new-instance v0, Lcom/google/firebase/firestore/local/MemoryPersistence;

    invoke-direct {v0}, Lcom/google/firebase/firestore/local/MemoryPersistence;-><init>()V

    .line 54
    .local v0, "persistence":Lcom/google/firebase/firestore/local/MemoryPersistence;
    new-instance v1, Lcom/google/firebase/firestore/local/MemoryLruReferenceDelegate;

    invoke-direct {v1, v0, p0, p1}, Lcom/google/firebase/firestore/local/MemoryLruReferenceDelegate;-><init>(Lcom/google/firebase/firestore/local/MemoryPersistence;Lcom/google/firebase/firestore/local/LruGarbageCollector$Params;Lcom/google/firebase/firestore/local/LocalSerializer;)V

    invoke-direct {v0, v1}, Lcom/google/firebase/firestore/local/MemoryPersistence;->setReferenceDelegate(Lcom/google/firebase/firestore/local/ReferenceDelegate;)V

    .line 56
    return-object v0
.end method

.method private setReferenceDelegate(Lcom/google/firebase/firestore/local/ReferenceDelegate;)V
    .locals 0
    .param p1, "delegate"    # Lcom/google/firebase/firestore/local/ReferenceDelegate;

    .line 95
    iput-object p1, p0, Lcom/google/firebase/firestore/local/MemoryPersistence;->referenceDelegate:Lcom/google/firebase/firestore/local/ReferenceDelegate;

    .line 96
    return-void
.end method


# virtual methods
.method getBundleCache()Lcom/google/firebase/firestore/local/BundleCache;
    .locals 1

    .line 136
    iget-object v0, p0, Lcom/google/firebase/firestore/local/MemoryPersistence;->bundleCache:Lcom/google/firebase/firestore/local/MemoryBundleCache;

    return-object v0
.end method

.method getDocumentOverlayCache(Lcom/google/firebase/firestore/auth/User;)Lcom/google/firebase/firestore/local/DocumentOverlayCache;
    .locals 2
    .param p1, "user"    # Lcom/google/firebase/firestore/auth/User;

    .line 141
    iget-object v0, p0, Lcom/google/firebase/firestore/local/MemoryPersistence;->overlays:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/firebase/firestore/local/MemoryDocumentOverlayCache;

    .line 142
    .local v0, "overlay":Lcom/google/firebase/firestore/local/MemoryDocumentOverlayCache;
    if-nez v0, :cond_0

    .line 143
    new-instance v1, Lcom/google/firebase/firestore/local/MemoryDocumentOverlayCache;

    invoke-direct {v1}, Lcom/google/firebase/firestore/local/MemoryDocumentOverlayCache;-><init>()V

    move-object v0, v1

    .line 144
    iget-object v1, p0, Lcom/google/firebase/firestore/local/MemoryPersistence;->overlays:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 146
    :cond_0
    return-object v0
.end method

.method getGlobalsCache()Lcom/google/firebase/firestore/local/GlobalsCache;
    .locals 1

    .line 124
    iget-object v0, p0, Lcom/google/firebase/firestore/local/MemoryPersistence;->globalsCache:Lcom/google/firebase/firestore/local/MemoryGlobalsCache;

    return-object v0
.end method

.method bridge synthetic getIndexManager(Lcom/google/firebase/firestore/auth/User;)Lcom/google/firebase/firestore/local/IndexManager;
    .locals 0

    .line 28
    invoke-virtual {p0, p1}, Lcom/google/firebase/firestore/local/MemoryPersistence;->getIndexManager(Lcom/google/firebase/firestore/auth/User;)Lcom/google/firebase/firestore/local/MemoryIndexManager;

    move-result-object p1

    return-object p1
.end method

.method getIndexManager(Lcom/google/firebase/firestore/auth/User;)Lcom/google/firebase/firestore/local/MemoryIndexManager;
    .locals 1
    .param p1, "user"    # Lcom/google/firebase/firestore/auth/User;

    .line 131
    iget-object v0, p0, Lcom/google/firebase/firestore/local/MemoryPersistence;->indexManager:Lcom/google/firebase/firestore/local/MemoryIndexManager;

    return-object v0
.end method

.method getMutationQueue(Lcom/google/firebase/firestore/auth/User;Lcom/google/firebase/firestore/local/IndexManager;)Lcom/google/firebase/firestore/local/MutationQueue;
    .locals 2
    .param p1, "user"    # Lcom/google/firebase/firestore/auth/User;
    .param p2, "indexManager"    # Lcom/google/firebase/firestore/local/IndexManager;

    .line 100
    iget-object v0, p0, Lcom/google/firebase/firestore/local/MemoryPersistence;->mutationQueues:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/firebase/firestore/local/MemoryMutationQueue;

    .line 101
    .local v0, "queue":Lcom/google/firebase/firestore/local/MemoryMutationQueue;
    if-nez v0, :cond_0

    .line 102
    new-instance v1, Lcom/google/firebase/firestore/local/MemoryMutationQueue;

    invoke-direct {v1, p0, p1}, Lcom/google/firebase/firestore/local/MemoryMutationQueue;-><init>(Lcom/google/firebase/firestore/local/MemoryPersistence;Lcom/google/firebase/firestore/auth/User;)V

    move-object v0, v1

    .line 103
    iget-object v1, p0, Lcom/google/firebase/firestore/local/MemoryPersistence;->mutationQueues:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 105
    :cond_0
    return-object v0
.end method

.method getMutationQueues()Ljava/lang/Iterable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Iterable<",
            "Lcom/google/firebase/firestore/local/MemoryMutationQueue;",
            ">;"
        }
    .end annotation

    .line 109
    iget-object v0, p0, Lcom/google/firebase/firestore/local/MemoryPersistence;->mutationQueues:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method getOverlayMigrationManager()Lcom/google/firebase/firestore/local/OverlayMigrationManager;
    .locals 1

    .line 151
    new-instance v0, Lcom/google/firebase/firestore/local/MemoryOverlayMigrationManager;

    invoke-direct {v0}, Lcom/google/firebase/firestore/local/MemoryOverlayMigrationManager;-><init>()V

    return-object v0
.end method

.method public getReferenceDelegate()Lcom/google/firebase/firestore/local/ReferenceDelegate;
    .locals 1

    .line 91
    iget-object v0, p0, Lcom/google/firebase/firestore/local/MemoryPersistence;->referenceDelegate:Lcom/google/firebase/firestore/local/ReferenceDelegate;

    return-object v0
.end method

.method getRemoteDocumentCache()Lcom/google/firebase/firestore/local/MemoryRemoteDocumentCache;
    .locals 1

    .line 119
    iget-object v0, p0, Lcom/google/firebase/firestore/local/MemoryPersistence;->remoteDocumentCache:Lcom/google/firebase/firestore/local/MemoryRemoteDocumentCache;

    return-object v0
.end method

.method bridge synthetic getRemoteDocumentCache()Lcom/google/firebase/firestore/local/RemoteDocumentCache;
    .locals 1

    .line 28
    invoke-virtual {p0}, Lcom/google/firebase/firestore/local/MemoryPersistence;->getRemoteDocumentCache()Lcom/google/firebase/firestore/local/MemoryRemoteDocumentCache;

    move-result-object v0

    return-object v0
.end method

.method getTargetCache()Lcom/google/firebase/firestore/local/MemoryTargetCache;
    .locals 1

    .line 114
    iget-object v0, p0, Lcom/google/firebase/firestore/local/MemoryPersistence;->targetCache:Lcom/google/firebase/firestore/local/MemoryTargetCache;

    return-object v0
.end method

.method bridge synthetic getTargetCache()Lcom/google/firebase/firestore/local/TargetCache;
    .locals 1

    .line 28
    invoke-virtual {p0}, Lcom/google/firebase/firestore/local/MemoryPersistence;->getTargetCache()Lcom/google/firebase/firestore/local/MemoryTargetCache;

    move-result-object v0

    return-object v0
.end method

.method public isStarted()Z
    .locals 1

    .line 86
    iget-boolean v0, p0, Lcom/google/firebase/firestore/local/MemoryPersistence;->started:Z

    return v0
.end method

.method runTransaction(Ljava/lang/String;Lcom/google/firebase/firestore/util/Supplier;)Ljava/lang/Object;
    .locals 2
    .param p1, "action"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Lcom/google/firebase/firestore/util/Supplier<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 166
    .local p2, "operation":Lcom/google/firebase/firestore/util/Supplier;, "Lcom/google/firebase/firestore/util/Supplier<TT;>;"
    iget-object v0, p0, Lcom/google/firebase/firestore/local/MemoryPersistence;->referenceDelegate:Lcom/google/firebase/firestore/local/ReferenceDelegate;

    invoke-interface {v0}, Lcom/google/firebase/firestore/local/ReferenceDelegate;->onTransactionStarted()V

    .line 169
    :try_start_0
    invoke-interface {p2}, Lcom/google/firebase/firestore/util/Supplier;->get()Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 171
    .local v0, "result":Ljava/lang/Object;, "TT;"
    iget-object v1, p0, Lcom/google/firebase/firestore/local/MemoryPersistence;->referenceDelegate:Lcom/google/firebase/firestore/local/ReferenceDelegate;

    invoke-interface {v1}, Lcom/google/firebase/firestore/local/ReferenceDelegate;->onTransactionCommitted()V

    .line 172
    nop

    .line 173
    return-object v0

    .line 171
    .end local v0    # "result":Ljava/lang/Object;, "TT;"
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/google/firebase/firestore/local/MemoryPersistence;->referenceDelegate:Lcom/google/firebase/firestore/local/ReferenceDelegate;

    invoke-interface {v1}, Lcom/google/firebase/firestore/local/ReferenceDelegate;->onTransactionCommitted()V

    .line 172
    throw v0
.end method

.method runTransaction(Ljava/lang/String;Ljava/lang/Runnable;)V
    .locals 2
    .param p1, "action"    # Ljava/lang/String;
    .param p2, "operation"    # Ljava/lang/Runnable;

    .line 156
    iget-object v0, p0, Lcom/google/firebase/firestore/local/MemoryPersistence;->referenceDelegate:Lcom/google/firebase/firestore/local/ReferenceDelegate;

    invoke-interface {v0}, Lcom/google/firebase/firestore/local/ReferenceDelegate;->onTransactionStarted()V

    .line 158
    :try_start_0
    invoke-interface {p2}, Ljava/lang/Runnable;->run()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 160
    iget-object v0, p0, Lcom/google/firebase/firestore/local/MemoryPersistence;->referenceDelegate:Lcom/google/firebase/firestore/local/ReferenceDelegate;

    invoke-interface {v0}, Lcom/google/firebase/firestore/local/ReferenceDelegate;->onTransactionCommitted()V

    .line 161
    nop

    .line 162
    return-void

    .line 160
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/google/firebase/firestore/local/MemoryPersistence;->referenceDelegate:Lcom/google/firebase/firestore/local/ReferenceDelegate;

    invoke-interface {v1}, Lcom/google/firebase/firestore/local/ReferenceDelegate;->onTransactionCommitted()V

    .line 161
    throw v0
.end method

.method public shutdown()V
    .locals 4

    .line 80
    iget-boolean v0, p0, Lcom/google/firebase/firestore/local/MemoryPersistence;->started:Z

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "MemoryPersistence shutdown without start"

    invoke-static {v0, v3, v2}, Lcom/google/firebase/firestore/util/Assert;->hardAssert(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 81
    iput-boolean v1, p0, Lcom/google/firebase/firestore/local/MemoryPersistence;->started:Z

    .line 82
    return-void
.end method

.method public start()V
    .locals 4

    .line 72
    iget-boolean v0, p0, Lcom/google/firebase/firestore/local/MemoryPersistence;->started:Z

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "MemoryPersistence double-started!"

    invoke-static {v0, v3, v2}, Lcom/google/firebase/firestore/util/Assert;->hardAssert(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 73
    iput-boolean v1, p0, Lcom/google/firebase/firestore/local/MemoryPersistence;->started:Z

    .line 74
    return-void
.end method
