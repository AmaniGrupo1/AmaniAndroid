.class public Lco/touchlab/stately/collections/ConcurrentMutableCollection;
.super Ljava/lang/Object;
.source "ConcurrentMutableCollection.kt"

# interfaces
.implements Ljava/util/Collection;
.implements Lkotlin/jvm/internal/markers/KMutableCollection;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/Collection<",
        "TE;>;",
        "Lkotlin/jvm/internal/markers/KMutableCollection;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nConcurrentMutableCollection.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ConcurrentMutableCollection.kt\nco/touchlab/stately/collections/ConcurrentMutableCollection\n+ 2 Synchronizable.kt\nco/touchlab/stately/concurrency/SynchronizableKt\n*L\n1#1,83:1\n5#2:84\n5#2:85\n5#2:86\n5#2:87\n5#2:88\n5#2:89\n5#2:90\n5#2:91\n5#2:92\n5#2:93\n5#2:94\n5#2:95\n*S KotlinDebug\n*F\n+ 1 ConcurrentMutableCollection.kt\nco/touchlab/stately/collections/ConcurrentMutableCollection\n*L\n13#1:84\n15#1:85\n17#1:86\n19#1:87\n21#1:88\n23#1:89\n26#1:90\n30#1:91\n32#1:92\n34#1:93\n36#1:94\n38#1:95\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000F\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u001f\n\u0002\u0008\u0004\n\u0002\u0010\u0008\n\u0002\u0008\u0006\n\u0002\u0010\u000b\n\u0002\u0008\u0004\n\u0002\u0010\u001e\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0004\n\u0002\u0010)\n\u0002\u0008\u0004\u0008\u0016\u0018\u0000*\u0004\u0008\u0000\u0010\u00012\u00060\u0002j\u0002`\u00032\u0008\u0012\u0004\u0012\u0002H\u00010\u0004B\'\u0008\u0000\u0012\u0010\u0008\u0002\u0010\u0005\u001a\n\u0018\u00010\u0002j\u0004\u0018\u0001`\u0003\u0012\u000c\u0010\u0006\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u0004\u00a2\u0006\u0002\u0010\u0007J\u0015\u0010\u000f\u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00028\u0000H\u0016\u00a2\u0006\u0002\u0010\u0012J\u0016\u0010\u0013\u001a\u00020\u00102\u000c\u0010\u0014\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u0015H\u0016J+\u0010\u0016\u001a\u0002H\u0017\"\u0004\u0008\u0001\u0010\u00172\u0018\u0010\u0018\u001a\u0014\u0012\n\u0012\u0008\u0012\u0004\u0012\u00028\u00000\u0004\u0012\u0004\u0012\u0002H\u00170\u0019\u00a2\u0006\u0002\u0010\u001aJ\u0008\u0010\u001b\u001a\u00020\u001cH\u0016J\u0016\u0010\u001d\u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00028\u0000H\u0096\u0002\u00a2\u0006\u0002\u0010\u0012J\u0016\u0010\u001e\u001a\u00020\u00102\u000c\u0010\u0014\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u0015H\u0016J\u0008\u0010\u001f\u001a\u00020\u0010H\u0016J\u000f\u0010 \u001a\u0008\u0012\u0004\u0012\u00028\u00000!H\u0096\u0002J\u0015\u0010\"\u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00028\u0000H\u0016\u00a2\u0006\u0002\u0010\u0012J\u0016\u0010#\u001a\u00020\u00102\u000c\u0010\u0014\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u0015H\u0016J\u0016\u0010$\u001a\u00020\u00102\u000c\u0010\u0014\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u0015H\u0016R\u0014\u0010\u0006\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u0004X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0008\u001a\u00020\t8VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\n\u0010\u000bR\u0018\u0010\u000c\u001a\u00060\u0002j\u0002`\u0003X\u0080\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\r\u0010\u000e\u00a8\u0006%"
    }
    d2 = {
        "Lco/touchlab/stately/collections/ConcurrentMutableCollection;",
        "E",
        "",
        "Lco/touchlab/stately/concurrency/Synchronizable;",
        "",
        "rootArg",
        "del",
        "(Ljava/lang/Object;Ljava/util/Collection;)V",
        "size",
        "",
        "getSize",
        "()I",
        "syncTarget",
        "getSyncTarget$stately_concurrent_collections",
        "()Ljava/lang/Object;",
        "add",
        "",
        "element",
        "(Ljava/lang/Object;)Z",
        "addAll",
        "elements",
        "",
        "blockCollection",
        "R",
        "f",
        "Lkotlin/Function1;",
        "(Lkotlin/jvm/functions/Function1;)Ljava/lang/Object;",
        "clear",
        "",
        "contains",
        "containsAll",
        "isEmpty",
        "iterator",
        "",
        "remove",
        "removeAll",
        "retainAll",
        "stately-concurrent-collections"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field private final del:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection<",
            "TE;>;"
        }
    .end annotation
.end field

.field private final syncTarget:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Ljava/lang/Object;Ljava/util/Collection;)V
    .locals 1
    .param p1, "rootArg"    # Ljava/lang/Object;
    .param p2, "del"    # Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/util/Collection<",
            "TE;>;)V"
        }
    .end annotation

    const-string v0, "del"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    iput-object p2, p0, Lco/touchlab/stately/collections/ConcurrentMutableCollection;->del:Ljava/util/Collection;

    .line 10
    if-nez p1, :cond_0

    move-object v0, p0

    goto :goto_0

    :cond_0
    move-object v0, p1

    :goto_0
    iput-object v0, p0, Lco/touchlab/stately/collections/ConcurrentMutableCollection;->syncTarget:Ljava/lang/Object;

    .line 6
    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;Ljava/util/Collection;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 6
    and-int/lit8 p3, p3, 0x1

    if-eqz p3, :cond_0

    const/4 p1, 0x0

    :cond_0
    invoke-direct {p0, p1, p2}, Lco/touchlab/stately/collections/ConcurrentMutableCollection;-><init>(Ljava/lang/Object;Ljava/util/Collection;)V

    .line 44
    return-void
.end method

.method public static final synthetic access$getDel$p(Lco/touchlab/stately/collections/ConcurrentMutableCollection;)Ljava/util/Collection;
    .locals 1
    .param p0, "$this"    # Lco/touchlab/stately/collections/ConcurrentMutableCollection;

    .line 6
    iget-object v0, p0, Lco/touchlab/stately/collections/ConcurrentMutableCollection;->del:Ljava/util/Collection;

    return-object v0
.end method


# virtual methods
.method public add(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "element"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)Z"
        }
    .end annotation

    .line 21
    iget-object v0, p0, Lco/touchlab/stately/collections/ConcurrentMutableCollection;->syncTarget:Ljava/lang/Object;

    .local v0, "$this$synchronize$iv":Ljava/lang/Object;
    new-instance v1, Lco/touchlab/stately/collections/ConcurrentMutableCollection$add$1;

    invoke-direct {v1, p0, p1}, Lco/touchlab/stately/collections/ConcurrentMutableCollection$add$1;-><init>(Lco/touchlab/stately/collections/ConcurrentMutableCollection;Ljava/lang/Object;)V

    check-cast v1, Lkotlin/jvm/functions/Function0;

    .local v1, "block$iv":Lkotlin/jvm/functions/Function0;
    const/4 v2, 0x0

    .line 88
    .local v2, "$i$f$synchronize":I
    monitor-enter v0

    :try_start_0
    invoke-interface {v1}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    .end local v0    # "$this$synchronize$iv":Ljava/lang/Object;
    .end local v1    # "block$iv":Lkotlin/jvm/functions/Function0;
    .end local v2    # "$i$f$synchronize":I
    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 21
    return v0

    .line 88
    .restart local v0    # "$this$synchronize$iv":Ljava/lang/Object;
    .restart local v1    # "block$iv":Lkotlin/jvm/functions/Function0;
    .restart local v2    # "$i$f$synchronize":I
    :catchall_0
    move-exception v3

    monitor-exit v0

    throw v3
.end method

.method public addAll(Ljava/util/Collection;)Z
    .locals 4
    .param p1, "elements"    # Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+TE;>;)Z"
        }
    .end annotation

    const-string v0, "elements"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 23
    iget-object v0, p0, Lco/touchlab/stately/collections/ConcurrentMutableCollection;->syncTarget:Ljava/lang/Object;

    .local v0, "$this$synchronize$iv":Ljava/lang/Object;
    new-instance v1, Lco/touchlab/stately/collections/ConcurrentMutableCollection$addAll$1;

    invoke-direct {v1, p0, p1}, Lco/touchlab/stately/collections/ConcurrentMutableCollection$addAll$1;-><init>(Lco/touchlab/stately/collections/ConcurrentMutableCollection;Ljava/util/Collection;)V

    check-cast v1, Lkotlin/jvm/functions/Function0;

    .local v1, "block$iv":Lkotlin/jvm/functions/Function0;
    const/4 v2, 0x0

    .line 89
    .local v2, "$i$f$synchronize":I
    monitor-enter v0

    :try_start_0
    invoke-interface {v1}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    .end local v0    # "$this$synchronize$iv":Ljava/lang/Object;
    .end local v1    # "block$iv":Lkotlin/jvm/functions/Function0;
    .end local v2    # "$i$f$synchronize":I
    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 23
    return v0

    .line 89
    .restart local v0    # "$this$synchronize$iv":Ljava/lang/Object;
    .restart local v1    # "block$iv":Lkotlin/jvm/functions/Function0;
    .restart local v2    # "$i$f$synchronize":I
    :catchall_0
    move-exception v3

    monitor-exit v0

    throw v3
.end method

.method public final blockCollection(Lkotlin/jvm/functions/Function1;)Ljava/lang/Object;
    .locals 4
    .param p1, "f"    # Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/util/Collection<",
            "TE;>;+TR;>;)TR;"
        }
    .end annotation

    const-string v0, "f"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 38
    iget-object v0, p0, Lco/touchlab/stately/collections/ConcurrentMutableCollection;->syncTarget:Ljava/lang/Object;

    .local v0, "$this$synchronize$iv":Ljava/lang/Object;
    new-instance v1, Lco/touchlab/stately/collections/ConcurrentMutableCollection$blockCollection$1;

    invoke-direct {v1, p0, p1}, Lco/touchlab/stately/collections/ConcurrentMutableCollection$blockCollection$1;-><init>(Lco/touchlab/stately/collections/ConcurrentMutableCollection;Lkotlin/jvm/functions/Function1;)V

    check-cast v1, Lkotlin/jvm/functions/Function0;

    .local v1, "block$iv":Lkotlin/jvm/functions/Function0;
    const/4 v2, 0x0

    .line 95
    .local v2, "$i$f$synchronize":I
    monitor-enter v0

    :try_start_0
    invoke-interface {v1}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    .line 43
    .end local v0    # "$this$synchronize$iv":Ljava/lang/Object;
    .end local v1    # "block$iv":Lkotlin/jvm/functions/Function0;
    .end local v2    # "$i$f$synchronize":I
    return-object v3

    .line 95
    .restart local v0    # "$this$synchronize$iv":Ljava/lang/Object;
    .restart local v1    # "block$iv":Lkotlin/jvm/functions/Function0;
    .restart local v2    # "$i$f$synchronize":I
    :catchall_0
    move-exception v3

    monitor-exit v0

    throw v3
.end method

.method public clear()V
    .locals 4

    .line 26
    iget-object v0, p0, Lco/touchlab/stately/collections/ConcurrentMutableCollection;->syncTarget:Ljava/lang/Object;

    .local v0, "$this$synchronize$iv":Ljava/lang/Object;
    new-instance v1, Lco/touchlab/stately/collections/ConcurrentMutableCollection$clear$1;

    invoke-direct {v1, p0}, Lco/touchlab/stately/collections/ConcurrentMutableCollection$clear$1;-><init>(Lco/touchlab/stately/collections/ConcurrentMutableCollection;)V

    check-cast v1, Lkotlin/jvm/functions/Function0;

    .local v1, "block$iv":Lkotlin/jvm/functions/Function0;
    const/4 v2, 0x0

    .line 90
    .local v2, "$i$f$synchronize":I
    monitor-enter v0

    :try_start_0
    invoke-interface {v1}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    .line 27
    .end local v0    # "$this$synchronize$iv":Ljava/lang/Object;
    .end local v1    # "block$iv":Lkotlin/jvm/functions/Function0;
    .end local v2    # "$i$f$synchronize":I
    return-void

    .line 90
    .restart local v0    # "$this$synchronize$iv":Ljava/lang/Object;
    .restart local v1    # "block$iv":Lkotlin/jvm/functions/Function0;
    .restart local v2    # "$i$f$synchronize":I
    :catchall_0
    move-exception v3

    monitor-exit v0

    throw v3
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "element"    # Ljava/lang/Object;

    .line 15
    iget-object v0, p0, Lco/touchlab/stately/collections/ConcurrentMutableCollection;->syncTarget:Ljava/lang/Object;

    .local v0, "$this$synchronize$iv":Ljava/lang/Object;
    new-instance v1, Lco/touchlab/stately/collections/ConcurrentMutableCollection$contains$1;

    invoke-direct {v1, p0, p1}, Lco/touchlab/stately/collections/ConcurrentMutableCollection$contains$1;-><init>(Lco/touchlab/stately/collections/ConcurrentMutableCollection;Ljava/lang/Object;)V

    check-cast v1, Lkotlin/jvm/functions/Function0;

    .local v1, "block$iv":Lkotlin/jvm/functions/Function0;
    const/4 v2, 0x0

    .line 85
    .local v2, "$i$f$synchronize":I
    monitor-enter v0

    :try_start_0
    invoke-interface {v1}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    .end local v0    # "$this$synchronize$iv":Ljava/lang/Object;
    .end local v1    # "block$iv":Lkotlin/jvm/functions/Function0;
    .end local v2    # "$i$f$synchronize":I
    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 15
    return v0

    .line 85
    .restart local v0    # "$this$synchronize$iv":Ljava/lang/Object;
    .restart local v1    # "block$iv":Lkotlin/jvm/functions/Function0;
    .restart local v2    # "$i$f$synchronize":I
    :catchall_0
    move-exception v3

    monitor-exit v0

    throw v3
.end method

.method public containsAll(Ljava/util/Collection;)Z
    .locals 4
    .param p1, "elements"    # Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+",
            "Ljava/lang/Object;",
            ">;)Z"
        }
    .end annotation

    const-string v0, "elements"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    iget-object v0, p0, Lco/touchlab/stately/collections/ConcurrentMutableCollection;->syncTarget:Ljava/lang/Object;

    .local v0, "$this$synchronize$iv":Ljava/lang/Object;
    new-instance v1, Lco/touchlab/stately/collections/ConcurrentMutableCollection$containsAll$1;

    invoke-direct {v1, p0, p1}, Lco/touchlab/stately/collections/ConcurrentMutableCollection$containsAll$1;-><init>(Lco/touchlab/stately/collections/ConcurrentMutableCollection;Ljava/util/Collection;)V

    check-cast v1, Lkotlin/jvm/functions/Function0;

    .local v1, "block$iv":Lkotlin/jvm/functions/Function0;
    const/4 v2, 0x0

    .line 86
    .local v2, "$i$f$synchronize":I
    monitor-enter v0

    :try_start_0
    invoke-interface {v1}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    .end local v0    # "$this$synchronize$iv":Ljava/lang/Object;
    .end local v1    # "block$iv":Lkotlin/jvm/functions/Function0;
    .end local v2    # "$i$f$synchronize":I
    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 17
    return v0

    .line 86
    .restart local v0    # "$this$synchronize$iv":Ljava/lang/Object;
    .restart local v1    # "block$iv":Lkotlin/jvm/functions/Function0;
    .restart local v2    # "$i$f$synchronize":I
    :catchall_0
    move-exception v3

    monitor-exit v0

    throw v3
.end method

.method public getSize()I
    .locals 4

    .line 13
    iget-object v0, p0, Lco/touchlab/stately/collections/ConcurrentMutableCollection;->syncTarget:Ljava/lang/Object;

    .local v0, "$this$synchronize$iv":Ljava/lang/Object;
    new-instance v1, Lco/touchlab/stately/collections/ConcurrentMutableCollection$size$1;

    invoke-direct {v1, p0}, Lco/touchlab/stately/collections/ConcurrentMutableCollection$size$1;-><init>(Lco/touchlab/stately/collections/ConcurrentMutableCollection;)V

    check-cast v1, Lkotlin/jvm/functions/Function0;

    .local v1, "block$iv":Lkotlin/jvm/functions/Function0;
    const/4 v2, 0x0

    .line 84
    .local v2, "$i$f$synchronize":I
    monitor-enter v0

    :try_start_0
    invoke-interface {v1}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    .end local v0    # "$this$synchronize$iv":Ljava/lang/Object;
    .end local v1    # "block$iv":Lkotlin/jvm/functions/Function0;
    .end local v2    # "$i$f$synchronize":I
    check-cast v3, Ljava/lang/Number;

    invoke-virtual {v3}, Ljava/lang/Number;->intValue()I

    move-result v0

    .line 13
    return v0

    .line 84
    .restart local v0    # "$this$synchronize$iv":Ljava/lang/Object;
    .restart local v1    # "block$iv":Lkotlin/jvm/functions/Function0;
    .restart local v2    # "$i$f$synchronize":I
    :catchall_0
    move-exception v3

    monitor-exit v0

    throw v3
.end method

.method public final getSyncTarget$stately_concurrent_collections()Ljava/lang/Object;
    .locals 1

    .line 10
    iget-object v0, p0, Lco/touchlab/stately/collections/ConcurrentMutableCollection;->syncTarget:Ljava/lang/Object;

    return-object v0
.end method

.method public isEmpty()Z
    .locals 4

    .line 19
    iget-object v0, p0, Lco/touchlab/stately/collections/ConcurrentMutableCollection;->syncTarget:Ljava/lang/Object;

    .local v0, "$this$synchronize$iv":Ljava/lang/Object;
    new-instance v1, Lco/touchlab/stately/collections/ConcurrentMutableCollection$isEmpty$1;

    invoke-direct {v1, p0}, Lco/touchlab/stately/collections/ConcurrentMutableCollection$isEmpty$1;-><init>(Lco/touchlab/stately/collections/ConcurrentMutableCollection;)V

    check-cast v1, Lkotlin/jvm/functions/Function0;

    .local v1, "block$iv":Lkotlin/jvm/functions/Function0;
    const/4 v2, 0x0

    .line 87
    .local v2, "$i$f$synchronize":I
    monitor-enter v0

    :try_start_0
    invoke-interface {v1}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    .end local v0    # "$this$synchronize$iv":Ljava/lang/Object;
    .end local v1    # "block$iv":Lkotlin/jvm/functions/Function0;
    .end local v2    # "$i$f$synchronize":I
    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 19
    return v0

    .line 87
    .restart local v0    # "$this$synchronize$iv":Ljava/lang/Object;
    .restart local v1    # "block$iv":Lkotlin/jvm/functions/Function0;
    .restart local v2    # "$i$f$synchronize":I
    :catchall_0
    move-exception v3

    monitor-exit v0

    throw v3
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "TE;>;"
        }
    .end annotation

    .line 30
    iget-object v0, p0, Lco/touchlab/stately/collections/ConcurrentMutableCollection;->syncTarget:Ljava/lang/Object;

    .local v0, "$this$synchronize$iv":Ljava/lang/Object;
    new-instance v1, Lco/touchlab/stately/collections/ConcurrentMutableCollection$iterator$1;

    invoke-direct {v1, p0}, Lco/touchlab/stately/collections/ConcurrentMutableCollection$iterator$1;-><init>(Lco/touchlab/stately/collections/ConcurrentMutableCollection;)V

    check-cast v1, Lkotlin/jvm/functions/Function0;

    .local v1, "block$iv":Lkotlin/jvm/functions/Function0;
    const/4 v2, 0x0

    .line 91
    .local v2, "$i$f$synchronize":I
    monitor-enter v0

    :try_start_0
    invoke-interface {v1}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    .end local v0    # "$this$synchronize$iv":Ljava/lang/Object;
    .end local v1    # "block$iv":Lkotlin/jvm/functions/Function0;
    .end local v2    # "$i$f$synchronize":I
    check-cast v3, Ljava/util/Iterator;

    .line 30
    return-object v3

    .line 91
    .restart local v0    # "$this$synchronize$iv":Ljava/lang/Object;
    .restart local v1    # "block$iv":Lkotlin/jvm/functions/Function0;
    .restart local v2    # "$i$f$synchronize":I
    :catchall_0
    move-exception v3

    monitor-exit v0

    throw v3
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "element"    # Ljava/lang/Object;

    .line 32
    iget-object v0, p0, Lco/touchlab/stately/collections/ConcurrentMutableCollection;->syncTarget:Ljava/lang/Object;

    .local v0, "$this$synchronize$iv":Ljava/lang/Object;
    new-instance v1, Lco/touchlab/stately/collections/ConcurrentMutableCollection$remove$1;

    invoke-direct {v1, p0, p1}, Lco/touchlab/stately/collections/ConcurrentMutableCollection$remove$1;-><init>(Lco/touchlab/stately/collections/ConcurrentMutableCollection;Ljava/lang/Object;)V

    check-cast v1, Lkotlin/jvm/functions/Function0;

    .local v1, "block$iv":Lkotlin/jvm/functions/Function0;
    const/4 v2, 0x0

    .line 92
    .local v2, "$i$f$synchronize":I
    monitor-enter v0

    :try_start_0
    invoke-interface {v1}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    .end local v0    # "$this$synchronize$iv":Ljava/lang/Object;
    .end local v1    # "block$iv":Lkotlin/jvm/functions/Function0;
    .end local v2    # "$i$f$synchronize":I
    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 32
    return v0

    .line 92
    .restart local v0    # "$this$synchronize$iv":Ljava/lang/Object;
    .restart local v1    # "block$iv":Lkotlin/jvm/functions/Function0;
    .restart local v2    # "$i$f$synchronize":I
    :catchall_0
    move-exception v3

    monitor-exit v0

    throw v3
.end method

.method public removeAll(Ljava/util/Collection;)Z
    .locals 4
    .param p1, "elements"    # Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+",
            "Ljava/lang/Object;",
            ">;)Z"
        }
    .end annotation

    const-string v0, "elements"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 34
    iget-object v0, p0, Lco/touchlab/stately/collections/ConcurrentMutableCollection;->syncTarget:Ljava/lang/Object;

    .local v0, "$this$synchronize$iv":Ljava/lang/Object;
    new-instance v1, Lco/touchlab/stately/collections/ConcurrentMutableCollection$removeAll$1;

    invoke-direct {v1, p0, p1}, Lco/touchlab/stately/collections/ConcurrentMutableCollection$removeAll$1;-><init>(Lco/touchlab/stately/collections/ConcurrentMutableCollection;Ljava/util/Collection;)V

    check-cast v1, Lkotlin/jvm/functions/Function0;

    .local v1, "block$iv":Lkotlin/jvm/functions/Function0;
    const/4 v2, 0x0

    .line 93
    .local v2, "$i$f$synchronize":I
    monitor-enter v0

    :try_start_0
    invoke-interface {v1}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    .end local v0    # "$this$synchronize$iv":Ljava/lang/Object;
    .end local v1    # "block$iv":Lkotlin/jvm/functions/Function0;
    .end local v2    # "$i$f$synchronize":I
    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 34
    return v0

    .line 93
    .restart local v0    # "$this$synchronize$iv":Ljava/lang/Object;
    .restart local v1    # "block$iv":Lkotlin/jvm/functions/Function0;
    .restart local v2    # "$i$f$synchronize":I
    :catchall_0
    move-exception v3

    monitor-exit v0

    throw v3
.end method

.method public retainAll(Ljava/util/Collection;)Z
    .locals 4
    .param p1, "elements"    # Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+",
            "Ljava/lang/Object;",
            ">;)Z"
        }
    .end annotation

    const-string v0, "elements"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 36
    iget-object v0, p0, Lco/touchlab/stately/collections/ConcurrentMutableCollection;->syncTarget:Ljava/lang/Object;

    .local v0, "$this$synchronize$iv":Ljava/lang/Object;
    new-instance v1, Lco/touchlab/stately/collections/ConcurrentMutableCollection$retainAll$1;

    invoke-direct {v1, p0, p1}, Lco/touchlab/stately/collections/ConcurrentMutableCollection$retainAll$1;-><init>(Lco/touchlab/stately/collections/ConcurrentMutableCollection;Ljava/util/Collection;)V

    check-cast v1, Lkotlin/jvm/functions/Function0;

    .local v1, "block$iv":Lkotlin/jvm/functions/Function0;
    const/4 v2, 0x0

    .line 94
    .local v2, "$i$f$synchronize":I
    monitor-enter v0

    :try_start_0
    invoke-interface {v1}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    .end local v0    # "$this$synchronize$iv":Ljava/lang/Object;
    .end local v1    # "block$iv":Lkotlin/jvm/functions/Function0;
    .end local v2    # "$i$f$synchronize":I
    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 36
    return v0

    .line 94
    .restart local v0    # "$this$synchronize$iv":Ljava/lang/Object;
    .restart local v1    # "block$iv":Lkotlin/jvm/functions/Function0;
    .restart local v2    # "$i$f$synchronize":I
    :catchall_0
    move-exception v3

    monitor-exit v0

    throw v3
.end method

.method public final bridge size()I
    .locals 1

    .line 6
    invoke-virtual {p0}, Lco/touchlab/stately/collections/ConcurrentMutableCollection;->getSize()I

    move-result v0

    return v0
.end method

.method public toArray()[Ljava/lang/Object;
    .locals 1

    move-object v0, p0

    check-cast v0, Ljava/util/Collection;

    invoke-static {v0}, Lkotlin/jvm/internal/CollectionToArray;->toArray(Ljava/util/Collection;)[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public toArray([Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)[TT;"
        }
    .end annotation

    const-string v0, "array"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v0, p0

    check-cast v0, Ljava/util/Collection;

    invoke-static {v0, p1}, Lkotlin/jvm/internal/CollectionToArray;->toArray(Ljava/util/Collection;[Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
