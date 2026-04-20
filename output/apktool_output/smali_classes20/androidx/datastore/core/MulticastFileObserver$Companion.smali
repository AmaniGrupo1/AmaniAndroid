.class public final Landroidx/datastore/core/MulticastFileObserver$Companion;
.super Ljava/lang/Object;
.source "MulticastFileObserver.android.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/datastore/core/MulticastFileObserver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nMulticastFileObserver.android.kt\nKotlin\n*S Kotlin\n*F\n+ 1 MulticastFileObserver.android.kt\nandroidx/datastore/core/MulticastFileObserver$Companion\n+ 2 Maps.kt\nkotlin/collections/MapsKt__MapsKt\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,130:1\n381#2,7:131\n1863#3,2:138\n*S KotlinDebug\n*F\n+ 1 MulticastFileObserver.android.kt\nandroidx/datastore/core/MulticastFileObserver$Companion\n*L\n92#1:131,7\n124#1:138,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000>\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0004\n\u0002\u0010%\n\u0002\u0010\u000e\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u0016\u0010\u000c\u001a\u0008\u0012\u0004\u0012\u00020\u000e0\r2\u0006\u0010\u000f\u001a\u00020\u0010H\u0007J*\u0010\u000c\u001a\u00020\u00112\u0006\u0010\u0012\u001a\u00020\u00102\u0018\u0010\u0013\u001a\u0014\u0012\u0006\u0012\u0004\u0018\u00010\u0007\u0012\u0004\u0012\u00020\u000e0\u0014j\u0002`\u0015H\u0003J\r\u0010\u0016\u001a\u00020\u000eH\u0001\u00a2\u0006\u0002\u0008\u0017R\u000e\u0010\u0004\u001a\u00020\u0001X\u0082\u0004\u00a2\u0006\u0002\n\u0000R(\u0010\u0005\u001a\u000e\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u00020\u00080\u00068\u0000X\u0081\u0004\u00a2\u0006\u000e\n\u0000\u0012\u0004\u0008\t\u0010\u0003\u001a\u0004\u0008\n\u0010\u000b\u00a8\u0006\u0018"
    }
    d2 = {
        "Landroidx/datastore/core/MulticastFileObserver$Companion;",
        "",
        "<init>",
        "()V",
        "LOCK",
        "fileObservers",
        "",
        "",
        "Landroidx/datastore/core/MulticastFileObserver;",
        "getFileObservers$datastore_core$annotations",
        "getFileObservers$datastore_core",
        "()Ljava/util/Map;",
        "observe",
        "Lkotlinx/coroutines/flow/Flow;",
        "",
        "file",
        "Ljava/io/File;",
        "Lkotlinx/coroutines/DisposableHandle;",
        "parent",
        "observer",
        "Lkotlin/Function1;",
        "Landroidx/datastore/core/FileMoveObserver;",
        "removeAllObservers",
        "removeAllObservers$datastore_core",
        "datastore-core"
    }
    k = 0x1
    mv = {
        0x2,
        0x0,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Landroidx/datastore/core/MulticastFileObserver$Companion;-><init>()V

    return-void
.end method

.method public static final synthetic access$observe(Landroidx/datastore/core/MulticastFileObserver$Companion;Ljava/io/File;Lkotlin/jvm/functions/Function1;)Lkotlinx/coroutines/DisposableHandle;
    .locals 1
    .param p0, "$this"    # Landroidx/datastore/core/MulticastFileObserver$Companion;
    .param p1, "parent"    # Ljava/io/File;
    .param p2, "observer"    # Lkotlin/jvm/functions/Function1;

    .line 50
    invoke-direct {p0, p1, p2}, Landroidx/datastore/core/MulticastFileObserver$Companion;->observe(Ljava/io/File;Lkotlin/jvm/functions/Function1;)Lkotlinx/coroutines/DisposableHandle;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic getFileObservers$datastore_core$annotations()V
    .locals 0

    return-void
.end method

.method private final observe(Ljava/io/File;Lkotlin/jvm/functions/Function1;)Lkotlinx/coroutines/DisposableHandle;
    .locals 10
    .param p1, "parent"    # Ljava/io/File;
    .param p2, "observer"    # Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/String;",
            "Lkotlin/Unit;",
            ">;)",
            "Lkotlinx/coroutines/DisposableHandle;"
        }
    .end annotation

    .line 90
    invoke-virtual {p1}, Ljava/io/File;->getCanonicalFile()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    .line 91
    .local v0, "key":Ljava/lang/String;
    invoke-static {}, Landroidx/datastore/core/MulticastFileObserver;->access$getLOCK$cp()Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    const/4 v2, 0x0

    .line 92
    .local v2, "$i$a$-synchronized-MulticastFileObserver$Companion$observe$2":I
    :try_start_0
    sget-object v3, Landroidx/datastore/core/MulticastFileObserver;->Companion:Landroidx/datastore/core/MulticastFileObserver$Companion;

    invoke-virtual {v3}, Landroidx/datastore/core/MulticastFileObserver$Companion;->getFileObservers$datastore_core()Ljava/util/Map;

    move-result-object v3

    move-object v4, v0

    .local v3, "$this$getOrPut$iv":Ljava/util/Map;
    .local v4, "key$iv":Ljava/lang/Object;
    const/4 v5, 0x0

    .line 131
    .local v5, "$i$f$getOrPut":I
    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    .line 132
    .local v6, "value$iv":Ljava/lang/Object;
    if-nez v6, :cond_0

    .line 133
    const/4 v7, 0x0

    .line 92
    .local v7, "$i$a$-getOrPut-MulticastFileObserver$Companion$observe$2$filesystemObserver$1":I
    new-instance v8, Landroidx/datastore/core/MulticastFileObserver;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    const/4 v9, 0x0

    invoke-direct {v8, v0, v9}, Landroidx/datastore/core/MulticastFileObserver;-><init>(Ljava/lang/String;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 133
    .end local v7    # "$i$a$-getOrPut-MulticastFileObserver$Companion$observe$2$filesystemObserver$1":I
    nop

    .line 134
    .local v8, "answer$iv":Ljava/lang/Object;
    invoke-interface {v3, v4, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 135
    nop

    .end local v8    # "answer$iv":Ljava/lang/Object;
    goto :goto_0

    .line 137
    :cond_0
    move-object v8, v6

    .line 132
    :goto_0
    nop

    .line 92
    .end local v3    # "$this$getOrPut$iv":Ljava/util/Map;
    .end local v4    # "key$iv":Ljava/lang/Object;
    .end local v5    # "$i$f$getOrPut":I
    .end local v6    # "value$iv":Ljava/lang/Object;
    check-cast v8, Landroidx/datastore/core/MulticastFileObserver;

    .line 93
    .local v8, "filesystemObserver":Landroidx/datastore/core/MulticastFileObserver;
    invoke-static {v8}, Landroidx/datastore/core/MulticastFileObserver;->access$getDelegates$p(Landroidx/datastore/core/MulticastFileObserver;)Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 94
    invoke-static {v8}, Landroidx/datastore/core/MulticastFileObserver;->access$getDelegates$p(Landroidx/datastore/core/MulticastFileObserver;)Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_1

    .line 97
    invoke-virtual {v8}, Landroidx/datastore/core/MulticastFileObserver;->startWatching()V

    .line 99
    :cond_1
    nop

    .end local v2    # "$i$a$-synchronized-MulticastFileObserver$Companion$observe$2":I
    .end local v8    # "filesystemObserver":Landroidx/datastore/core/MulticastFileObserver;
    sget-object v2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 91
    monitor-exit v1

    .line 100
    new-instance v1, Landroidx/datastore/core/MulticastFileObserver$Companion$$ExternalSyntheticLambda0;

    invoke-direct {v1, v0, p2}, Landroidx/datastore/core/MulticastFileObserver$Companion$$ExternalSyntheticLambda0;-><init>(Ljava/lang/String;Lkotlin/jvm/functions/Function1;)V

    return-object v1

    .line 91
    :catchall_0
    move-exception v2

    monitor-exit v1

    throw v2
.end method

.method static final observe$lambda$1(Ljava/lang/String;Lkotlin/jvm/functions/Function1;)V
    .locals 5
    .param p0, "$key"    # Ljava/lang/String;
    .param p1, "$observer"    # Lkotlin/jvm/functions/Function1;

    .line 101
    invoke-static {}, Landroidx/datastore/core/MulticastFileObserver;->access$getLOCK$cp()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    const/4 v1, 0x0

    .line 102
    .local v1, "$i$a$-synchronized-MulticastFileObserver$Companion$observe$3$1":I
    :try_start_0
    sget-object v2, Landroidx/datastore/core/MulticastFileObserver;->Companion:Landroidx/datastore/core/MulticastFileObserver$Companion;

    invoke-virtual {v2}, Landroidx/datastore/core/MulticastFileObserver$Companion;->getFileObservers$datastore_core()Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/datastore/core/MulticastFileObserver;

    if-eqz v2, :cond_1

    .local v2, "filesystemObserver":Landroidx/datastore/core/MulticastFileObserver;
    const/4 v3, 0x0

    .line 103
    .local v3, "$i$a$-let-MulticastFileObserver$Companion$observe$3$1$1":I
    invoke-static {v2}, Landroidx/datastore/core/MulticastFileObserver;->access$getDelegates$p(Landroidx/datastore/core/MulticastFileObserver;)Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    .line 105
    invoke-static {v2}, Landroidx/datastore/core/MulticastFileObserver;->access$getDelegates$p(Landroidx/datastore/core/MulticastFileObserver;)Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/concurrent/CopyOnWriteArrayList;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 106
    sget-object v4, Landroidx/datastore/core/MulticastFileObserver;->Companion:Landroidx/datastore/core/MulticastFileObserver$Companion;

    invoke-virtual {v4}, Landroidx/datastore/core/MulticastFileObserver$Companion;->getFileObservers$datastore_core()Ljava/util/Map;

    move-result-object v4

    invoke-interface {v4, p0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 109
    invoke-virtual {v2}, Landroidx/datastore/core/MulticastFileObserver;->stopWatching()V

    .line 111
    :cond_0
    nop

    .line 102
    .end local v2    # "filesystemObserver":Landroidx/datastore/core/MulticastFileObserver;
    .end local v3    # "$i$a$-let-MulticastFileObserver$Companion$observe$3$1$1":I
    :cond_1
    nop

    .line 112
    nop

    .end local v1    # "$i$a$-synchronized-MulticastFileObserver$Companion$observe$3$1":I
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 101
    monitor-exit v0

    .line 113
    return-void

    .line 101
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method


# virtual methods
.method public final getFileObservers$datastore_core()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroidx/datastore/core/MulticastFileObserver;",
            ">;"
        }
    .end annotation

    .line 55
    invoke-static {}, Landroidx/datastore/core/MulticastFileObserver;->access$getFileObservers$cp()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public final observe(Ljava/io/File;)Lkotlinx/coroutines/flow/Flow;
    .locals 2
    .param p1, "file"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            ")",
            "Lkotlinx/coroutines/flow/Flow<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    const-string v0, "file"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 63
    new-instance v0, Landroidx/datastore/core/MulticastFileObserver$Companion$observe$1;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Landroidx/datastore/core/MulticastFileObserver$Companion$observe$1;-><init>(Ljava/io/File;Lkotlin/coroutines/Continuation;)V

    check-cast v0, Lkotlin/jvm/functions/Function2;

    invoke-static {v0}, Lkotlinx/coroutines/flow/FlowKt;->channelFlow(Lkotlin/jvm/functions/Function2;)Lkotlinx/coroutines/flow/Flow;

    move-result-object v0

    .line 80
    return-object v0
.end method

.method public final removeAllObservers$datastore_core()V
    .locals 8

    .line 123
    invoke-static {}, Landroidx/datastore/core/MulticastFileObserver;->access$getLOCK$cp()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    const/4 v1, 0x0

    .line 124
    .local v1, "$i$a$-synchronized-MulticastFileObserver$Companion$removeAllObservers$1":I
    :try_start_0
    sget-object v2, Landroidx/datastore/core/MulticastFileObserver;->Companion:Landroidx/datastore/core/MulticastFileObserver$Companion;

    invoke-virtual {v2}, Landroidx/datastore/core/MulticastFileObserver$Companion;->getFileObservers$datastore_core()Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    check-cast v2, Ljava/lang/Iterable;

    .local v2, "$this$forEach$iv":Ljava/lang/Iterable;
    const/4 v3, 0x0

    .line 138
    .local v3, "$i$f$forEach":I
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    .local v5, "element$iv":Ljava/lang/Object;
    move-object v6, v5

    check-cast v6, Landroidx/datastore/core/MulticastFileObserver;

    .local v6, "it":Landroidx/datastore/core/MulticastFileObserver;
    const/4 v7, 0x0

    .line 124
    .local v7, "$i$a$-forEach-MulticastFileObserver$Companion$removeAllObservers$1$1":I
    invoke-virtual {v6}, Landroidx/datastore/core/MulticastFileObserver;->stopWatching()V

    .line 138
    .end local v6    # "it":Landroidx/datastore/core/MulticastFileObserver;
    .end local v7    # "$i$a$-forEach-MulticastFileObserver$Companion$removeAllObservers$1$1":I
    nop

    .end local v5    # "element$iv":Ljava/lang/Object;
    goto :goto_0

    .line 139
    :cond_0
    nop

    .line 125
    .end local v2    # "$this$forEach$iv":Ljava/lang/Iterable;
    .end local v3    # "$i$f$forEach":I
    sget-object v2, Landroidx/datastore/core/MulticastFileObserver;->Companion:Landroidx/datastore/core/MulticastFileObserver$Companion;

    invoke-virtual {v2}, Landroidx/datastore/core/MulticastFileObserver$Companion;->getFileObservers$datastore_core()Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Map;->clear()V

    .line 126
    nop

    .end local v1    # "$i$a$-synchronized-MulticastFileObserver$Companion$removeAllObservers$1":I
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 123
    monitor-exit v0

    .line 127
    return-void

    .line 123
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method
