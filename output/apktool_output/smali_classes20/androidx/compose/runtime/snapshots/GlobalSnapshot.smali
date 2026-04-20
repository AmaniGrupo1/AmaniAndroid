.class public final Landroidx/compose/runtime/snapshots/GlobalSnapshot;
.super Landroidx/compose/runtime/snapshots/MutableSnapshot;
.source "Snapshot.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nSnapshot.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Snapshot.kt\nandroidx/compose/runtime/snapshots/GlobalSnapshot\n+ 2 SnapshotObserver.kt\nandroidx/compose/runtime/snapshots/tooling/SnapshotObserverKt\n+ 3 Snapshot.kt\nandroidx/compose/runtime/snapshots/SnapshotKt\n+ 4 Synchronization.android.kt\nandroidx/compose/runtime/platform/Synchronization_androidKt\n+ 5 ListUtils.kt\nandroidx/compose/runtime/snapshots/ListUtilsKt\n*L\n1#1,2533:1\n166#2,14:2534\n166#2,14:2548\n1936#3:2562\n1936#3:2564\n33#4:2563\n33#4:2565\n35#5,5:2566\n*S KotlinDebug\n*F\n+ 1 Snapshot.kt\nandroidx/compose/runtime/snapshots/GlobalSnapshot\n*L\n1535#1:2534,14\n1555#1:2548,14\n1589#1:2562\n1530#1:2564\n1589#1:2563\n1530#1:2565\n1530#1:2566,5\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000B\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u0001\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008\u0001\u0018\u00002\u00020\u0001B\u001b\u0012\n\u0010\u0002\u001a\u00060\u0003j\u0002`\u0004\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u00a2\u0006\u0004\u0008\u0007\u0010\u0008J\u001e\u0010\t\u001a\u00020\n2\u0014\u0010\u000b\u001a\u0010\u0012\u0004\u0012\u00020\r\u0012\u0004\u0012\u00020\u000e\u0018\u00010\u000cH\u0016J4\u0010\u000f\u001a\u00020\u00012\u0014\u0010\u000b\u001a\u0010\u0012\u0004\u0012\u00020\r\u0012\u0004\u0012\u00020\u000e\u0018\u00010\u000c2\u0014\u0010\u0010\u001a\u0010\u0012\u0004\u0012\u00020\r\u0012\u0004\u0012\u00020\u000e\u0018\u00010\u000cH\u0016J\r\u0010\u0011\u001a\u00020\u000eH\u0010\u00a2\u0006\u0002\u0008\u0012J\u0015\u0010\u0013\u001a\u00020\u00142\u0006\u0010\u0015\u001a\u00020\nH\u0010\u00a2\u0006\u0002\u0008\u0016J\u0015\u0010\u0017\u001a\u00020\u00142\u0006\u0010\u0015\u001a\u00020\nH\u0010\u00a2\u0006\u0002\u0008\u0018J\u0008\u0010\u0019\u001a\u00020\u001aH\u0016J\u0008\u0010\u001b\u001a\u00020\u000eH\u0016\u00a8\u0006\u001c"
    }
    d2 = {
        "Landroidx/compose/runtime/snapshots/GlobalSnapshot;",
        "Landroidx/compose/runtime/snapshots/MutableSnapshot;",
        "snapshotId",
        "",
        "Landroidx/compose/runtime/snapshots/SnapshotId;",
        "invalid",
        "Landroidx/compose/runtime/snapshots/SnapshotIdSet;",
        "<init>",
        "(JLandroidx/compose/runtime/snapshots/SnapshotIdSet;)V",
        "takeNestedSnapshot",
        "Landroidx/compose/runtime/snapshots/Snapshot;",
        "readObserver",
        "Lkotlin/Function1;",
        "",
        "",
        "takeNestedMutableSnapshot",
        "writeObserver",
        "notifyObjectsInitialized",
        "notifyObjectsInitialized$runtime",
        "nestedDeactivated",
        "",
        "snapshot",
        "nestedDeactivated$runtime",
        "nestedActivated",
        "nestedActivated$runtime",
        "apply",
        "Landroidx/compose/runtime/snapshots/SnapshotApplyResult;",
        "dispose",
        "runtime"
    }
    k = 0x1
    mv = {
        0x2,
        0x0,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final $stable:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x8

    sput v0, Landroidx/compose/runtime/snapshots/GlobalSnapshot;->$stable:I

    return-void
.end method

.method public constructor <init>(JLandroidx/compose/runtime/snapshots/SnapshotIdSet;)V
    .locals 6
    .param p1, "snapshotId"    # J
    .param p3, "invalid"    # Landroidx/compose/runtime/snapshots/SnapshotIdSet;

    .line 1525
    nop

    .line 1527
    nop

    .line 1528
    nop

    .line 1529
    new-instance v5, Landroidx/compose/runtime/snapshots/GlobalSnapshot$$ExternalSyntheticLambda0;

    invoke-direct {v5}, Landroidx/compose/runtime/snapshots/GlobalSnapshot$$ExternalSyntheticLambda0;-><init>()V

    .line 1525
    const/4 v4, 0x0

    move-object v0, p0

    move-wide v1, p1

    move-object v3, p3

    .end local p1    # "snapshotId":J
    .end local p3    # "invalid":Landroidx/compose/runtime/snapshots/SnapshotIdSet;
    .local v1, "snapshotId":J
    .local v3, "invalid":Landroidx/compose/runtime/snapshots/SnapshotIdSet;
    invoke-direct/range {v0 .. v5}, Landroidx/compose/runtime/snapshots/MutableSnapshot;-><init>(JLandroidx/compose/runtime/snapshots/SnapshotIdSet;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;)V

    return-void
.end method

.method static final _init_$lambda$0(Ljava/lang/Object;)Lkotlin/Unit;
    .locals 11
    .param p0, "state"    # Ljava/lang/Object;

    .line 1530
    const/4 v0, 0x0

    .line 2564
    .local v0, "$i$f$sync":I
    invoke-static {}, Landroidx/compose/runtime/snapshots/SnapshotKt;->getLock()Ljava/lang/Object;

    move-result-object v1

    .local v1, "lock$iv$iv":Ljava/lang/Object;
    const/4 v2, 0x0

    .line 2565
    .local v2, "$i$f$synchronized":I
    monitor-enter v1

    const/4 v3, 0x0

    .line 1530
    .local v3, "$i$a$-sync-GlobalSnapshot$1$1":I
    :try_start_0
    invoke-static {}, Landroidx/compose/runtime/snapshots/SnapshotKt;->access$getGlobalWriteObservers$p()Ljava/util/List;

    move-result-object v4

    .local v4, "$this$fastForEach$iv":Ljava/util/List;
    const/4 v5, 0x0

    .line 2566
    .local v5, "$i$f$fastForEach":I
    const/4 v6, 0x0

    .local v6, "index$iv":I
    move-object v7, v4

    check-cast v7, Ljava/util/Collection;

    invoke-interface {v7}, Ljava/util/Collection;->size()I

    move-result v7

    :goto_0
    if-ge v6, v7, :cond_0

    .line 2567
    invoke-interface {v4, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    .line 2568
    .local v8, "item$iv":Ljava/lang/Object;
    move-object v9, v8

    check-cast v9, Lkotlin/jvm/functions/Function1;

    .local v9, "it":Lkotlin/jvm/functions/Function1;
    const/4 v10, 0x0

    .line 1530
    .local v10, "$i$a$-fastForEach-GlobalSnapshot$1$1$1":I
    invoke-interface {v9, p0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2568
    nop

    .line 2566
    .end local v8    # "item$iv":Ljava/lang/Object;
    .end local v9    # "it":Lkotlin/jvm/functions/Function1;
    .end local v10    # "$i$a$-fastForEach-GlobalSnapshot$1$1$1":I
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 2570
    .end local v6    # "index$iv":I
    :cond_0
    nop

    .line 1530
    .end local v4    # "$this$fastForEach$iv":Ljava/util/List;
    .end local v5    # "$i$f$fastForEach":I
    nop

    .end local v3    # "$i$a$-sync-GlobalSnapshot$1$1":I
    sget-object v3, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2565
    monitor-exit v1

    .line 2564
    .end local v1    # "lock$iv$iv":Ljava/lang/Object;
    .end local v2    # "$i$f$synchronized":I
    nop

    .line 1530
    .end local v0    # "$i$f$sync":I
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0

    .line 2565
    .restart local v0    # "$i$f$sync":I
    .restart local v1    # "lock$iv$iv":Ljava/lang/Object;
    .restart local v2    # "$i$f$synchronized":I
    :catchall_0
    move-exception v3

    monitor-exit v1

    throw v3
.end method


# virtual methods
.method public apply()Landroidx/compose/runtime/snapshots/SnapshotApplyResult;
    .locals 2

    new-instance v0, Ljava/lang/IllegalStateException;

    .line 1586
    const-string v1, "Cannot apply the global snapshot directly. Call Snapshot.advanceGlobalSnapshot"

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public dispose()V
    .locals 4

    .line 1589
    const/4 v0, 0x0

    .line 2562
    .local v0, "$i$f$sync":I
    invoke-static {}, Landroidx/compose/runtime/snapshots/SnapshotKt;->getLock()Ljava/lang/Object;

    move-result-object v1

    .local v1, "lock$iv$iv":Ljava/lang/Object;
    const/4 v2, 0x0

    .line 2563
    .local v2, "$i$f$synchronized":I
    monitor-enter v1

    const/4 v3, 0x0

    .line 1589
    .local v3, "$i$a$-sync-GlobalSnapshot$dispose$1":I
    :try_start_0
    invoke-virtual {p0}, Landroidx/compose/runtime/snapshots/GlobalSnapshot;->releasePinnedSnapshotLocked$runtime()V

    .end local v3    # "$i$a$-sync-GlobalSnapshot$dispose$1":I
    sget-object v3, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2563
    monitor-exit v1

    .line 2562
    .end local v1    # "lock$iv$iv":Ljava/lang/Object;
    .end local v2    # "$i$f$synchronized":I
    nop

    .line 1590
    .end local v0    # "$i$f$sync":I
    return-void

    .line 2563
    .restart local v0    # "$i$f$sync":I
    .restart local v1    # "lock$iv$iv":Ljava/lang/Object;
    .restart local v2    # "$i$f$synchronized":I
    :catchall_0
    move-exception v3

    monitor-exit v1

    throw v3
.end method

.method public nestedActivated$runtime(Landroidx/compose/runtime/snapshots/Snapshot;)Ljava/lang/Void;
    .locals 1
    .param p1, "snapshot"    # Landroidx/compose/runtime/snapshots/Snapshot;

    .line 1583
    invoke-static {}, Landroidx/compose/runtime/snapshots/SnapshotStateMapKt;->unsupported()Ljava/lang/Void;

    new-instance v0, Lkotlin/KotlinNothingValueException;

    invoke-direct {v0}, Lkotlin/KotlinNothingValueException;-><init>()V

    throw v0
.end method

.method public bridge synthetic nestedActivated$runtime(Landroidx/compose/runtime/snapshots/Snapshot;)V
    .locals 0
    .param p1, "snapshot"    # Landroidx/compose/runtime/snapshots/Snapshot;

    .line 1525
    invoke-virtual {p0, p1}, Landroidx/compose/runtime/snapshots/GlobalSnapshot;->nestedActivated$runtime(Landroidx/compose/runtime/snapshots/Snapshot;)Ljava/lang/Void;

    return-void
.end method

.method public nestedDeactivated$runtime(Landroidx/compose/runtime/snapshots/Snapshot;)Ljava/lang/Void;
    .locals 1
    .param p1, "snapshot"    # Landroidx/compose/runtime/snapshots/Snapshot;

    .line 1581
    invoke-static {}, Landroidx/compose/runtime/snapshots/SnapshotStateMapKt;->unsupported()Ljava/lang/Void;

    new-instance v0, Lkotlin/KotlinNothingValueException;

    invoke-direct {v0}, Lkotlin/KotlinNothingValueException;-><init>()V

    throw v0
.end method

.method public bridge synthetic nestedDeactivated$runtime(Landroidx/compose/runtime/snapshots/Snapshot;)V
    .locals 0
    .param p1, "snapshot"    # Landroidx/compose/runtime/snapshots/Snapshot;

    .line 1525
    invoke-virtual {p0, p1}, Landroidx/compose/runtime/snapshots/GlobalSnapshot;->nestedDeactivated$runtime(Landroidx/compose/runtime/snapshots/Snapshot;)Ljava/lang/Void;

    return-void
.end method

.method public notifyObjectsInitialized$runtime()V
    .locals 0

    .line 1578
    invoke-static {}, Landroidx/compose/runtime/snapshots/SnapshotKt;->access$advanceGlobalSnapshot()V

    .line 1579
    return-void
.end method

.method public takeNestedMutableSnapshot(Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;)Landroidx/compose/runtime/snapshots/MutableSnapshot;
    .locals 13
    .param p1, "readObserver"    # Lkotlin/jvm/functions/Function1;
    .param p2, "writeObserver"    # Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "Ljava/lang/Object;",
            "Lkotlin/Unit;",
            ">;",
            "Lkotlin/jvm/functions/Function1<",
            "Ljava/lang/Object;",
            "Lkotlin/Unit;",
            ">;)",
            "Landroidx/compose/runtime/snapshots/MutableSnapshot;"
        }
    .end annotation

    .line 1556
    nop

    .line 1558
    nop

    .line 1559
    nop

    .line 1557
    nop

    .line 1555
    const/4 v0, 0x0

    .local v0, "readonly$iv":Z
    move-object v1, p1

    .local v1, "readObserver$iv":Lkotlin/jvm/functions/Function1;
    const/4 v2, 0x0

    .local v2, "parent$iv":Landroidx/compose/runtime/snapshots/Snapshot;
    move-object v3, p2

    .local v3, "writeObserver$iv":Lkotlin/jvm/functions/Function1;
    const/4 v4, 0x0

    .line 2548
    .local v4, "$i$f$creatingSnapshot":I
    const/4 v5, 0x0

    .line 2549
    .local v5, "observerMap$iv":Ljava/util/Map;
    invoke-static {}, Landroidx/compose/runtime/snapshots/tooling/SnapshotObserverKt;->access$getObservers$p()Landroidx/compose/runtime/external/kotlinx/collections/immutable/PersistentList;

    move-result-object v6

    .line 2550
    .local v6, "observers$iv":Landroidx/compose/runtime/external/kotlinx/collections/immutable/PersistentList;
    move-object v7, v1

    .line 2551
    .local v7, "actualReadObserver$iv":Lkotlin/jvm/functions/Function1;
    move-object v8, v3

    .line 2552
    .local v8, "actualWriteObserver$iv":Lkotlin/jvm/functions/Function1;
    if-eqz v6, :cond_0

    .line 2553
    invoke-static {v6, v2, v0, v1, v3}, Landroidx/compose/runtime/snapshots/tooling/SnapshotObserverKt;->mergeObservers(Landroidx/compose/runtime/external/kotlinx/collections/immutable/PersistentList;Landroidx/compose/runtime/snapshots/Snapshot;ZLkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;)Lkotlin/Pair;

    move-result-object v9

    .line 2554
    .local v9, "result$iv":Lkotlin/Pair;
    invoke-virtual {v9}, Lkotlin/Pair;->getFirst()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroidx/compose/runtime/snapshots/tooling/SnapshotInstanceObservers;

    .line 2555
    .local v10, "mappedObservers$iv":Landroidx/compose/runtime/snapshots/tooling/SnapshotInstanceObservers;
    invoke-virtual {v10}, Landroidx/compose/runtime/snapshots/tooling/SnapshotInstanceObservers;->getReadObserver()Lkotlin/jvm/functions/Function1;

    move-result-object v7

    .line 2556
    invoke-virtual {v10}, Landroidx/compose/runtime/snapshots/tooling/SnapshotInstanceObservers;->getWriteObserver()Lkotlin/jvm/functions/Function1;

    move-result-object v8

    .line 2557
    invoke-virtual {v9}, Lkotlin/Pair;->getSecond()Ljava/lang/Object;

    move-result-object v11

    move-object v5, v11

    check-cast v5, Ljava/util/Map;

    .line 2559
    .end local v9    # "result$iv":Lkotlin/Pair;
    .end local v10    # "mappedObservers$iv":Landroidx/compose/runtime/snapshots/tooling/SnapshotInstanceObservers;
    :cond_0
    move-object v9, v7

    .local v9, "actualReadObserver":Lkotlin/jvm/functions/Function1;
    move-object v10, v8

    .local v10, "actualWriteObserver":Lkotlin/jvm/functions/Function1;
    const/4 v11, 0x0

    .line 1561
    .local v11, "$i$a$-creatingSnapshot-GlobalSnapshot$takeNestedMutableSnapshot$1":I
    new-instance v12, Landroidx/compose/runtime/snapshots/GlobalSnapshot$takeNestedMutableSnapshot$1$1;

    invoke-direct {v12, v9, v10}, Landroidx/compose/runtime/snapshots/GlobalSnapshot$takeNestedMutableSnapshot$1$1;-><init>(Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;)V

    check-cast v12, Lkotlin/jvm/functions/Function1;

    invoke-static {v12}, Landroidx/compose/runtime/snapshots/SnapshotKt;->access$takeNewSnapshot(Lkotlin/jvm/functions/Function1;)Landroidx/compose/runtime/snapshots/Snapshot;

    move-result-object v12

    check-cast v12, Landroidx/compose/runtime/snapshots/MutableSnapshot;

    .line 1574
    nop

    .line 2559
    .end local v9    # "actualReadObserver":Lkotlin/jvm/functions/Function1;
    .end local v10    # "actualWriteObserver":Lkotlin/jvm/functions/Function1;
    .end local v11    # "$i$a$-creatingSnapshot-GlobalSnapshot$takeNestedMutableSnapshot$1":I
    move-object v9, v12

    check-cast v9, Landroidx/compose/runtime/snapshots/Snapshot;

    .line 2560
    .local v9, "result$iv":Landroidx/compose/runtime/snapshots/Snapshot;
    if-eqz v6, :cond_1

    invoke-static {v6, v2, v9, v5}, Landroidx/compose/runtime/snapshots/tooling/SnapshotObserverKt;->dispatchCreatedObservers(Landroidx/compose/runtime/external/kotlinx/collections/immutable/PersistentList;Landroidx/compose/runtime/snapshots/Snapshot;Landroidx/compose/runtime/snapshots/Snapshot;Ljava/util/Map;)V

    .line 2561
    :cond_1
    nop

    .end local v0    # "readonly$iv":Z
    .end local v1    # "readObserver$iv":Lkotlin/jvm/functions/Function1;
    .end local v2    # "parent$iv":Landroidx/compose/runtime/snapshots/Snapshot;
    .end local v3    # "writeObserver$iv":Lkotlin/jvm/functions/Function1;
    .end local v4    # "$i$f$creatingSnapshot":I
    .end local v5    # "observerMap$iv":Ljava/util/Map;
    .end local v6    # "observers$iv":Landroidx/compose/runtime/external/kotlinx/collections/immutable/PersistentList;
    .end local v7    # "actualReadObserver$iv":Lkotlin/jvm/functions/Function1;
    .end local v8    # "actualWriteObserver$iv":Lkotlin/jvm/functions/Function1;
    .end local v9    # "result$iv":Landroidx/compose/runtime/snapshots/Snapshot;
    move-object v0, v9

    check-cast v0, Landroidx/compose/runtime/snapshots/MutableSnapshot;

    .line 1575
    return-object v0
.end method

.method public takeNestedSnapshot(Lkotlin/jvm/functions/Function1;)Landroidx/compose/runtime/snapshots/Snapshot;
    .locals 12
    .param p1, "readObserver"    # Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "Ljava/lang/Object;",
            "Lkotlin/Unit;",
            ">;)",
            "Landroidx/compose/runtime/snapshots/Snapshot;"
        }
    .end annotation

    .line 1536
    nop

    .line 1538
    nop

    .line 1539
    nop

    .line 1537
    nop

    .line 1535
    const/4 v0, 0x0

    move-object v1, v0

    .local v0, "writeObserver$iv":Lkotlin/jvm/functions/Function1;
    .local v1, "parent$iv":Landroidx/compose/runtime/snapshots/Snapshot;
    move-object v2, p1

    .local v2, "readObserver$iv":Lkotlin/jvm/functions/Function1;
    const/4 v3, 0x1

    .local v3, "readonly$iv":Z
    const/4 v4, 0x0

    .line 2534
    .local v4, "$i$f$creatingSnapshot":I
    const/4 v5, 0x0

    .line 2535
    .local v5, "observerMap$iv":Ljava/util/Map;
    invoke-static {}, Landroidx/compose/runtime/snapshots/tooling/SnapshotObserverKt;->access$getObservers$p()Landroidx/compose/runtime/external/kotlinx/collections/immutable/PersistentList;

    move-result-object v6

    .line 2536
    .local v6, "observers$iv":Landroidx/compose/runtime/external/kotlinx/collections/immutable/PersistentList;
    move-object v7, v2

    .line 2537
    .local v7, "actualReadObserver$iv":Lkotlin/jvm/functions/Function1;
    move-object v8, v0

    .line 2538
    .local v8, "actualWriteObserver$iv":Lkotlin/jvm/functions/Function1;
    if-eqz v6, :cond_0

    .line 2539
    invoke-static {v6, v1, v3, v2, v0}, Landroidx/compose/runtime/snapshots/tooling/SnapshotObserverKt;->mergeObservers(Landroidx/compose/runtime/external/kotlinx/collections/immutable/PersistentList;Landroidx/compose/runtime/snapshots/Snapshot;ZLkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;)Lkotlin/Pair;

    move-result-object v9

    .line 2540
    .local v9, "result$iv":Lkotlin/Pair;
    invoke-virtual {v9}, Lkotlin/Pair;->getFirst()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroidx/compose/runtime/snapshots/tooling/SnapshotInstanceObservers;

    .line 2541
    .local v10, "mappedObservers$iv":Landroidx/compose/runtime/snapshots/tooling/SnapshotInstanceObservers;
    invoke-virtual {v10}, Landroidx/compose/runtime/snapshots/tooling/SnapshotInstanceObservers;->getReadObserver()Lkotlin/jvm/functions/Function1;

    move-result-object v7

    .line 2542
    invoke-virtual {v10}, Landroidx/compose/runtime/snapshots/tooling/SnapshotInstanceObservers;->getWriteObserver()Lkotlin/jvm/functions/Function1;

    move-result-object v8

    .line 2543
    invoke-virtual {v9}, Lkotlin/Pair;->getSecond()Ljava/lang/Object;

    move-result-object v11

    move-object v5, v11

    check-cast v5, Ljava/util/Map;

    .line 2545
    .end local v9    # "result$iv":Lkotlin/Pair;
    .end local v10    # "mappedObservers$iv":Landroidx/compose/runtime/snapshots/tooling/SnapshotInstanceObservers;
    :cond_0
    move-object v9, v7

    .local v9, "actualReadObserver":Lkotlin/jvm/functions/Function1;
    const/4 v10, 0x0

    .line 1541
    .local v10, "$i$a$-creatingSnapshot-GlobalSnapshot$takeNestedSnapshot$1":I
    new-instance v11, Landroidx/compose/runtime/snapshots/GlobalSnapshot$takeNestedSnapshot$1$1;

    invoke-direct {v11, v9}, Landroidx/compose/runtime/snapshots/GlobalSnapshot$takeNestedSnapshot$1$1;-><init>(Lkotlin/jvm/functions/Function1;)V

    check-cast v11, Lkotlin/jvm/functions/Function1;

    invoke-static {v11}, Landroidx/compose/runtime/snapshots/SnapshotKt;->access$takeNewSnapshot(Lkotlin/jvm/functions/Function1;)Landroidx/compose/runtime/snapshots/Snapshot;

    move-result-object v11

    check-cast v11, Landroidx/compose/runtime/snapshots/ReadonlySnapshot;

    .line 1547
    nop

    .line 2545
    .end local v9    # "actualReadObserver":Lkotlin/jvm/functions/Function1;
    .end local v10    # "$i$a$-creatingSnapshot-GlobalSnapshot$takeNestedSnapshot$1":I
    move-object v9, v11

    check-cast v9, Landroidx/compose/runtime/snapshots/Snapshot;

    .line 2546
    .local v9, "result$iv":Landroidx/compose/runtime/snapshots/Snapshot;
    if-eqz v6, :cond_1

    invoke-static {v6, v1, v9, v5}, Landroidx/compose/runtime/snapshots/tooling/SnapshotObserverKt;->dispatchCreatedObservers(Landroidx/compose/runtime/external/kotlinx/collections/immutable/PersistentList;Landroidx/compose/runtime/snapshots/Snapshot;Landroidx/compose/runtime/snapshots/Snapshot;Ljava/util/Map;)V

    .line 2547
    :cond_1
    nop

    .line 1548
    .end local v0    # "writeObserver$iv":Lkotlin/jvm/functions/Function1;
    .end local v1    # "parent$iv":Landroidx/compose/runtime/snapshots/Snapshot;
    .end local v2    # "readObserver$iv":Lkotlin/jvm/functions/Function1;
    .end local v3    # "readonly$iv":Z
    .end local v4    # "$i$f$creatingSnapshot":I
    .end local v5    # "observerMap$iv":Ljava/util/Map;
    .end local v6    # "observers$iv":Landroidx/compose/runtime/external/kotlinx/collections/immutable/PersistentList;
    .end local v7    # "actualReadObserver$iv":Lkotlin/jvm/functions/Function1;
    .end local v8    # "actualWriteObserver$iv":Lkotlin/jvm/functions/Function1;
    .end local v9    # "result$iv":Landroidx/compose/runtime/snapshots/Snapshot;
    return-object v9
.end method
