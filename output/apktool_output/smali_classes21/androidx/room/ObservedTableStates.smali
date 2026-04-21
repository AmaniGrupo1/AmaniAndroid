.class public final Landroidx/room/ObservedTableStates;
.super Ljava/lang/Object;
.source "InvalidationTracker.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/room/ObservedTableStates$ObserveOp;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nInvalidationTracker.kt\nKotlin\n*S Kotlin\n*F\n+ 1 InvalidationTracker.kt\nandroidx/room/ObservedTableStates\n+ 2 ReentrantLock.kt\nandroidx/room/concurrent/ReentrantLockKt\n+ 3 _Arrays.kt\nkotlin/collections/ArraysKt___ArraysKt\n*L\n1#1,604:1\n28#2,5:605\n28#2,3:610\n32#2:615\n28#2,3:616\n32#2:621\n28#2,5:622\n28#2,5:627\n13423#3,2:613\n13423#3,2:619\n*S KotlinDebug\n*F\n+ 1 InvalidationTracker.kt\nandroidx/room/ObservedTableStates\n*L\n508#1:605,5\n530#1:610,3\n530#1:615\n545#1:616,3\n545#1:621\n559#1:622,5\n565#1:627,5\n532#1:613,2\n547#1:619,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000L\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0016\n\u0000\n\u0002\u0010\u0018\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0011\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u0015\n\u0002\u0008\u0004\n\u0002\u0010\u0002\n\u0002\u0008\u0005\u0008\u0000\u0018\u00002\u00020\u0001:\u0001 B\u000f\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0004\u0008\u0004\u0010\u0005J\u0017\u0010\u0010\u001a\n\u0012\u0004\u0012\u00020\u0012\u0018\u00010\u0011H\u0000\u00a2\u0006\u0004\u0008\u0013\u0010\u0014J\u0015\u0010\u0015\u001a\u00020\u000f2\u0006\u0010\u0016\u001a\u00020\u0017H\u0000\u00a2\u0006\u0002\u0008\u0018J\u0015\u0010\u0019\u001a\u00020\u000f2\u0006\u0010\u0016\u001a\u00020\u0017H\u0000\u00a2\u0006\u0002\u0008\u001aJ\r\u0010\u001b\u001a\u00020\u001cH\u0000\u00a2\u0006\u0002\u0008\u001dJ\r\u0010\u001e\u001a\u00020\u001cH\u0000\u00a2\u0006\u0002\u0008\u001fR\u0014\u0010\u0006\u001a\u00060\u0007j\u0002`\u0008X\u0082\u0004\u00a2\u0006\u0004\n\u0002\u0010\tR\u000e\u0010\n\u001a\u00020\u000bX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000c\u001a\u00020\rX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000e\u001a\u00020\u000fX\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006!"
    }
    d2 = {
        "Landroidx/room/ObservedTableStates;",
        "",
        "size",
        "",
        "<init>",
        "(I)V",
        "lock",
        "Ljava/util/concurrent/locks/ReentrantLock;",
        "Landroidx/room/concurrent/ReentrantLock;",
        "Ljava/util/concurrent/locks/ReentrantLock;",
        "tableObserversCount",
        "",
        "tableObservedState",
        "",
        "needsSync",
        "",
        "getTablesToSync",
        "",
        "Landroidx/room/ObservedTableStates$ObserveOp;",
        "getTablesToSync$room_runtime_release",
        "()[Landroidx/room/ObservedTableStates$ObserveOp;",
        "onObserverAdded",
        "tableIds",
        "",
        "onObserverAdded$room_runtime_release",
        "onObserverRemoved",
        "onObserverRemoved$room_runtime_release",
        "resetTriggerState",
        "",
        "resetTriggerState$room_runtime_release",
        "forceNeedSync",
        "forceNeedSync$room_runtime_release",
        "ObserveOp",
        "room-runtime_release"
    }
    k = 0x1
    mv = {
        0x2,
        0x0,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field private final lock:Ljava/util/concurrent/locks/ReentrantLock;

.field private needsSync:Z

.field private final tableObservedState:[Z

.field private final tableObserversCount:[J


# direct methods
.method public constructor <init>(I)V
    .locals 1
    .param p1, "size"    # I

    .line 489
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 491
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Landroidx/room/ObservedTableStates;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 494
    new-array v0, p1, [J

    iput-object v0, p0, Landroidx/room/ObservedTableStates;->tableObserversCount:[J

    .line 498
    new-array v0, p1, [Z

    iput-object v0, p0, Landroidx/room/ObservedTableStates;->tableObservedState:[Z

    .line 489
    return-void
.end method


# virtual methods
.method public final forceNeedSync$room_runtime_release()V
    .locals 4

    .line 565
    iget-object v0, p0, Landroidx/room/ObservedTableStates;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    .local v0, "$this$withLock$iv":Ljava/util/concurrent/locks/ReentrantLock;
    const/4 v1, 0x0

    .line 627
    .local v1, "$i$f$withLock":I
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 628
    nop

    .line 629
    const/4 v2, 0x0

    .line 565
    .local v2, "$i$a$-withLock-ObservedTableStates$forceNeedSync$1":I
    const/4 v3, 0x1

    :try_start_0
    iput-boolean v3, p0, Landroidx/room/ObservedTableStates;->needsSync:Z

    .end local v2    # "$i$a$-withLock-ObservedTableStates$forceNeedSync$1":I
    sget-object v2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 629
    nop

    .line 631
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 629
    nop

    .line 566
    .end local v0    # "$this$withLock$iv":Ljava/util/concurrent/locks/ReentrantLock;
    .end local v1    # "$i$f$withLock":I
    return-void

    .line 631
    .restart local v0    # "$this$withLock$iv":Ljava/util/concurrent/locks/ReentrantLock;
    .restart local v1    # "$i$f$withLock":I
    :catchall_0
    move-exception v2

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v2
.end method

.method public final getTablesToSync$room_runtime_release()[Landroidx/room/ObservedTableStates$ObserveOp;
    .locals 14

    .line 508
    iget-object v0, p0, Landroidx/room/ObservedTableStates;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    .local v0, "$this$withLock$iv":Ljava/util/concurrent/locks/ReentrantLock;
    const/4 v1, 0x0

    .line 605
    .local v1, "$i$f$withLock":I
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 606
    nop

    .line 607
    const/4 v2, 0x0

    .line 509
    .local v2, "$i$a$-withLock-ObservedTableStates$getTablesToSync$1":I
    :try_start_0
    iget-boolean v3, p0, Landroidx/room/ObservedTableStates;->needsSync:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v4, 0x0

    if-nez v3, :cond_0

    .line 510
    nop

    .line 609
    .end local v0    # "$this$withLock$iv":Ljava/util/concurrent/locks/ReentrantLock;
    .end local v1    # "$i$f$withLock":I
    .end local v2    # "$i$a$-withLock-ObservedTableStates$getTablesToSync$1":I
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-object v4

    .line 512
    .restart local v0    # "$this$withLock$iv":Ljava/util/concurrent/locks/ReentrantLock;
    .restart local v1    # "$i$f$withLock":I
    .restart local v2    # "$i$a$-withLock-ObservedTableStates$getTablesToSync$1":I
    :cond_0
    const/4 v3, 0x0

    :try_start_1
    iput-boolean v3, p0, Landroidx/room/ObservedTableStates;->needsSync:Z

    .line 513
    const/4 v5, 0x0

    .line 515
    .local v5, "addOrRemove":Z
    iget-object v6, p0, Landroidx/room/ObservedTableStates;->tableObserversCount:[J

    array-length v6, v6

    new-array v7, v6, [Landroidx/room/ObservedTableStates$ObserveOp;

    move v8, v3

    :goto_0
    if-ge v8, v6, :cond_4

    .line 516
    iget-object v9, p0, Landroidx/room/ObservedTableStates;->tableObserversCount:[J

    aget-wide v10, v9, v8

    const-wide/16 v12, 0x0

    cmp-long v9, v10, v12

    if-lez v9, :cond_1

    const/4 v9, 0x1

    goto :goto_1

    :cond_1
    move v9, v3

    .line 517
    .local v9, "newState":Z
    :goto_1
    iget-object v10, p0, Landroidx/room/ObservedTableStates;->tableObservedState:[Z

    aget-boolean v10, v10, v8

    if-eq v9, v10, :cond_3

    .line 518
    const/4 v5, 0x1

    .line 519
    iget-object v10, p0, Landroidx/room/ObservedTableStates;->tableObservedState:[Z

    aput-boolean v9, v10, v8

    .line 520
    if-eqz v9, :cond_2

    sget-object v10, Landroidx/room/ObservedTableStates$ObserveOp;->ADD:Landroidx/room/ObservedTableStates$ObserveOp;

    goto :goto_2

    :cond_2
    sget-object v10, Landroidx/room/ObservedTableStates$ObserveOp;->REMOVE:Landroidx/room/ObservedTableStates$ObserveOp;

    goto :goto_2

    .line 522
    :cond_3
    sget-object v10, Landroidx/room/ObservedTableStates$ObserveOp;->NO_OP:Landroidx/room/ObservedTableStates$ObserveOp;

    .end local v9    # "newState":Z
    :goto_2
    aput-object v10, v7, v8
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 515
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 514
    :cond_4
    nop

    .line 525
    .local v7, "ops":[Landroidx/room/ObservedTableStates$ObserveOp;
    if-eqz v5, :cond_5

    move-object v4, v7

    .line 607
    .end local v2    # "$i$a$-withLock-ObservedTableStates$getTablesToSync$1":I
    .end local v5    # "addOrRemove":Z
    .end local v7    # "ops":[Landroidx/room/ObservedTableStates$ObserveOp;
    :cond_5
    nop

    .line 609
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 607
    nop

    .line 526
    .end local v0    # "$this$withLock$iv":Ljava/util/concurrent/locks/ReentrantLock;
    .end local v1    # "$i$f$withLock":I
    return-object v4

    .line 609
    .restart local v0    # "$this$withLock$iv":Ljava/util/concurrent/locks/ReentrantLock;
    .restart local v1    # "$i$f$withLock":I
    :catchall_0
    move-exception v2

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v2
.end method

.method public final onObserverAdded$room_runtime_release([I)Z
    .locals 18
    .param p1, "tableIds"    # [I

    move-object/from16 v1, p0

    const-string/jumbo v0, "tableIds"

    move-object/from16 v2, p1

    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 530
    iget-object v3, v1, Landroidx/room/ObservedTableStates;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    .local v3, "$this$withLock$iv":Ljava/util/concurrent/locks/ReentrantLock;
    const/4 v4, 0x0

    .line 610
    .local v4, "$i$f$withLock":I
    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 611
    nop

    .line 612
    const/4 v0, 0x0

    .line 531
    .local v0, "$i$a$-withLock-ObservedTableStates$onObserverAdded$1":I
    const/4 v5, 0x0

    .line 532
    .local v5, "shouldSync":Z
    move-object/from16 v6, p1

    .local v6, "$this$forEach$iv":[I
    const/4 v7, 0x0

    .line 613
    .local v7, "$i$f$forEach":I
    :try_start_0
    array-length v8, v6

    const/4 v9, 0x0

    :goto_0
    if-ge v9, v8, :cond_1

    aget v10, v6, v9

    .local v10, "element$iv":I
    move v11, v10

    .local v11, "tableId":I
    const/4 v12, 0x0

    .line 533
    .local v12, "$i$a$-forEach-ObservedTableStates$onObserverAdded$1$1":I
    iget-object v13, v1, Landroidx/room/ObservedTableStates;->tableObserversCount:[J

    aget-wide v14, v13, v11

    .line 534
    .local v14, "previousCount":J
    iget-object v13, v1, Landroidx/room/ObservedTableStates;->tableObserversCount:[J

    const-wide/16 v16, 0x1

    add-long v16, v14, v16

    aput-wide v16, v13, v11

    .line 535
    const-wide/16 v16, 0x0

    cmp-long v13, v14, v16

    if-nez v13, :cond_0

    .line 536
    const/4 v13, 0x1

    iput-boolean v13, v1, Landroidx/room/ObservedTableStates;->needsSync:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 537
    const/4 v5, 0x1

    .line 539
    :cond_0
    nop

    .line 613
    .end local v11    # "tableId":I
    .end local v12    # "$i$a$-forEach-ObservedTableStates$onObserverAdded$1$1":I
    .end local v14    # "previousCount":J
    nop

    .end local v10    # "element$iv":I
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 614
    :cond_1
    nop

    .line 540
    .end local v6    # "$this$forEach$iv":[I
    .end local v7    # "$i$f$forEach":I
    nop

    .line 615
    .end local v0    # "$i$a$-withLock-ObservedTableStates$onObserverAdded$1":I
    .end local v3    # "$this$withLock$iv":Ljava/util/concurrent/locks/ReentrantLock;
    .end local v4    # "$i$f$withLock":I
    .end local v5    # "shouldSync":Z
    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return v5

    .restart local v3    # "$this$withLock$iv":Ljava/util/concurrent/locks/ReentrantLock;
    .restart local v4    # "$i$f$withLock":I
    :catchall_0
    move-exception v0

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
.end method

.method public final onObserverRemoved$room_runtime_release([I)Z
    .locals 20
    .param p1, "tableIds"    # [I

    move-object/from16 v1, p0

    const-string/jumbo v0, "tableIds"

    move-object/from16 v2, p1

    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 545
    iget-object v3, v1, Landroidx/room/ObservedTableStates;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    .local v3, "$this$withLock$iv":Ljava/util/concurrent/locks/ReentrantLock;
    const/4 v4, 0x0

    .line 616
    .local v4, "$i$f$withLock":I
    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 617
    nop

    .line 618
    const/4 v0, 0x0

    .line 546
    .local v0, "$i$a$-withLock-ObservedTableStates$onObserverRemoved$1":I
    const/4 v5, 0x0

    .line 547
    .local v5, "shouldSync":Z
    move-object/from16 v6, p1

    .local v6, "$this$forEach$iv":[I
    const/4 v7, 0x0

    .line 619
    .local v7, "$i$f$forEach":I
    :try_start_0
    array-length v8, v6

    const/4 v9, 0x0

    :goto_0
    if-ge v9, v8, :cond_1

    aget v10, v6, v9

    .local v10, "element$iv":I
    move v11, v10

    .local v11, "tableId":I
    const/4 v12, 0x0

    .line 548
    .local v12, "$i$a$-forEach-ObservedTableStates$onObserverRemoved$1$1":I
    iget-object v13, v1, Landroidx/room/ObservedTableStates;->tableObserversCount:[J

    aget-wide v14, v13, v11

    .line 549
    .local v14, "previousCount":J
    iget-object v13, v1, Landroidx/room/ObservedTableStates;->tableObserversCount:[J

    const-wide/16 v16, 0x1

    sub-long v18, v14, v16

    aput-wide v18, v13, v11

    .line 550
    cmp-long v13, v14, v16

    if-nez v13, :cond_0

    .line 551
    const/4 v13, 0x1

    iput-boolean v13, v1, Landroidx/room/ObservedTableStates;->needsSync:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 552
    const/4 v5, 0x1

    .line 554
    :cond_0
    nop

    .line 619
    .end local v11    # "tableId":I
    .end local v12    # "$i$a$-forEach-ObservedTableStates$onObserverRemoved$1$1":I
    .end local v14    # "previousCount":J
    nop

    .end local v10    # "element$iv":I
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 620
    :cond_1
    nop

    .line 555
    .end local v6    # "$this$forEach$iv":[I
    .end local v7    # "$i$f$forEach":I
    nop

    .line 621
    .end local v0    # "$i$a$-withLock-ObservedTableStates$onObserverRemoved$1":I
    .end local v3    # "$this$withLock$iv":Ljava/util/concurrent/locks/ReentrantLock;
    .end local v4    # "$i$f$withLock":I
    .end local v5    # "shouldSync":Z
    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return v5

    .restart local v3    # "$this$withLock$iv":Ljava/util/concurrent/locks/ReentrantLock;
    .restart local v4    # "$i$f$withLock":I
    :catchall_0
    move-exception v0

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
.end method

.method public final resetTriggerState$room_runtime_release()V
    .locals 9

    .line 559
    iget-object v1, p0, Landroidx/room/ObservedTableStates;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    .local v1, "$this$withLock$iv":Ljava/util/concurrent/locks/ReentrantLock;
    const/4 v2, 0x0

    .line 622
    .local v2, "$i$f$withLock":I
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 623
    nop

    .line 624
    const/4 v0, 0x0

    .line 560
    .local v0, "$i$a$-withLock-ObservedTableStates$resetTriggerState$1":I
    :try_start_0
    iget-object v3, p0, Landroidx/room/ObservedTableStates;->tableObservedState:[Z

    const/4 v7, 0x6

    const/4 v8, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static/range {v3 .. v8}, Lkotlin/collections/ArraysKt;->fill$default([ZZIIILjava/lang/Object;)V

    .line 561
    const/4 v3, 0x1

    iput-boolean v3, p0, Landroidx/room/ObservedTableStates;->needsSync:Z

    .line 562
    nop

    .end local v0    # "$i$a$-withLock-ObservedTableStates$resetTriggerState$1":I
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 624
    nop

    .line 626
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 624
    nop

    .line 562
    .end local v1    # "$this$withLock$iv":Ljava/util/concurrent/locks/ReentrantLock;
    .end local v2    # "$i$f$withLock":I
    return-void

    .line 626
    .restart local v1    # "$this$withLock$iv":Ljava/util/concurrent/locks/ReentrantLock;
    .restart local v2    # "$i$f$withLock":I
    :catchall_0
    move-exception v0

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
.end method
