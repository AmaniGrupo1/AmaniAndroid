.class public final Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState$precomposePaused$2;
.super Ljava/lang/Object;
.source "SubcomposeLayout.kt"

# interfaces
.implements Landroidx/compose/ui/layout/PausedPrecompositionImpl;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;->precomposePaused(Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)Landroidx/compose/ui/layout/SubcomposeLayoutState$PausedPrecomposition;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nSubcomposeLayout.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SubcomposeLayout.kt\nandroidx/compose/ui/layout/LayoutNodeSubcompositionsState$precomposePaused$2\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 Snapshot.kt\nandroidx/compose/runtime/snapshots/Snapshot$Companion\n+ 4 SubcomposeLayout.kt\nandroidx/compose/ui/layout/LayoutNodeSubcompositionsState\n+ 5 LayoutNode.kt\nandroidx/compose/ui/node/LayoutNode\n*L\n1#1,1576:1\n1#2:1577\n613#3,5:1578\n619#3:1588\n1282#4:1583\n1218#5,4:1584\n*S KotlinDebug\n*F\n+ 1 SubcomposeLayout.kt\nandroidx/compose/ui/layout/LayoutNodeSubcompositionsState$precomposePaused$2\n*L\n1217#1:1578,5\n1217#1:1588\n1218#1:1583\n1218#1:1584,4\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000-\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0008\u0010\u0002\u001a\u00020\u0003H\u0016J\u0010\u0010\u000b\u001a\u00020\t2\u0006\u0010\u000c\u001a\u00020\rH\u0016J\u0008\u0010\u000e\u001a\u00020\u000fH\u0016R\u0016\u0010\u0004\u001a\u0004\u0018\u00010\u00058BX\u0082\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0006\u0010\u0007R\u0014\u0010\u0008\u001a\u00020\t8VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0008\u0010\n\u00a8\u0006\u0010"
    }
    d2 = {
        "androidx/compose/ui/layout/LayoutNodeSubcompositionsState$precomposePaused$2",
        "Landroidx/compose/ui/layout/PausedPrecompositionImpl;",
        "cancel",
        "",
        "nodeState",
        "Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState$NodeState;",
        "getNodeState",
        "()Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState$NodeState;",
        "isComplete",
        "",
        "()Z",
        "resume",
        "shouldPause",
        "Landroidx/compose/runtime/ShouldPauseCallback;",
        "apply",
        "Landroidx/compose/ui/layout/SubcomposeLayoutState$PrecomposedSlotHandle;",
        "ui"
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
.field final synthetic $slotId:Ljava/lang/Object;

.field final synthetic this$0:Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;


# direct methods
.method constructor <init>(Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;Ljava/lang/Object;)V
    .locals 0
    .param p1, "$receiver"    # Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;
    .param p2, "$slotId"    # Ljava/lang/Object;

    iput-object p1, p0, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState$precomposePaused$2;->this$0:Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;

    iput-object p2, p0, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState$precomposePaused$2;->$slotId:Ljava/lang/Object;

    .line 1195
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final getNodeState()Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState$NodeState;
    .locals 3

    .line 1204
    iget-object v0, p0, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState$precomposePaused$2;->this$0:Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;

    invoke-static {v0}, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;->access$getPrecomposeMap$p(Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;)Landroidx/collection/MutableScatterMap;

    move-result-object v0

    iget-object v1, p0, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState$precomposePaused$2;->$slotId:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Landroidx/collection/MutableScatterMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/compose/ui/node/LayoutNode;

    if-eqz v0, :cond_0

    iget-object v1, p0, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState$precomposePaused$2;->this$0:Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;

    .line 1577
    .local v0, "it":Landroidx/compose/ui/node/LayoutNode;
    const/4 v2, 0x0

    .line 1204
    .local v2, "$i$a$-let-LayoutNodeSubcompositionsState$precomposePaused$2$nodeState$1":I
    invoke-static {v1}, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;->access$getNodeToNodeState$p(Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;)Landroidx/collection/MutableScatterMap;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroidx/collection/MutableScatterMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState$NodeState;

    .end local v0    # "it":Landroidx/compose/ui/node/LayoutNode;
    .end local v2    # "$i$a$-let-LayoutNodeSubcompositionsState$precomposePaused$2$nodeState$1":I
    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return-object v1
.end method


# virtual methods
.method public apply()Landroidx/compose/ui/layout/SubcomposeLayoutState$PrecomposedSlotHandle;
    .locals 3

    .line 1245
    invoke-direct {p0}, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState$precomposePaused$2;->getNodeState()Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState$NodeState;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState$precomposePaused$2;->this$0:Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;

    const/4 v2, 0x0

    invoke-static {v1, v0, v2}, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;->access$applyPausedPrecomposition(Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState$NodeState;Z)V

    .line 1246
    :cond_0
    iget-object v0, p0, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState$precomposePaused$2;->this$0:Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;

    iget-object v1, p0, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState$precomposePaused$2;->$slotId:Ljava/lang/Object;

    invoke-static {v0, v1}, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;->access$createPrecomposedSlotHandle(Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;Ljava/lang/Object;)Landroidx/compose/ui/layout/SubcomposeLayoutState$PrecomposedSlotHandle;

    move-result-object v0

    return-object v0
.end method

.method public cancel()V
    .locals 2

    .line 1197
    invoke-direct {p0}, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState$precomposePaused$2;->getNodeState()Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState$NodeState;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState$NodeState;->getPausedComposition()Landroidx/compose/runtime/PausedComposition;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    .line 1199
    iget-object v0, p0, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState$precomposePaused$2;->this$0:Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;

    iget-object v1, p0, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState$precomposePaused$2;->$slotId:Ljava/lang/Object;

    invoke-static {v0, v1}, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;->access$disposePrecomposedSlot(Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;Ljava/lang/Object;)V

    .line 1201
    :cond_1
    return-void
.end method

.method public isComplete()Z
    .locals 1

    .line 1207
    invoke-direct {p0}, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState$precomposePaused$2;->getNodeState()Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState$NodeState;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState$NodeState;->getPausedComposition()Landroidx/compose/runtime/PausedComposition;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroidx/compose/runtime/PausedComposition;->isComplete()Z

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0
.end method

.method public resume(Landroidx/compose/runtime/ShouldPauseCallback;)Z
    .locals 19
    .param p1, "shouldPause"    # Landroidx/compose/runtime/ShouldPauseCallback;

    .line 1210
    move-object/from16 v1, p0

    invoke-direct {v1}, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState$precomposePaused$2;->getNodeState()Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState$NodeState;

    move-result-object v2

    .line 1211
    .local v2, "nodeState":Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState$NodeState;
    const/4 v0, 0x0

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState$NodeState;->getPausedComposition()Landroidx/compose/runtime/PausedComposition;

    move-result-object v3

    goto :goto_0

    :cond_0
    move-object v3, v0

    .line 1212
    .local v3, "pausedComposition":Landroidx/compose/runtime/PausedComposition;
    :goto_0
    const/4 v4, 0x1

    if-eqz v3, :cond_3

    invoke-interface {v3}, Landroidx/compose/runtime/PausedComposition;->isComplete()Z

    move-result v5

    if-nez v5, :cond_3

    .line 1213
    nop

    .line 1217
    sget-object v5, Landroidx/compose/runtime/snapshots/Snapshot;->Companion:Landroidx/compose/runtime/snapshots/Snapshot$Companion;

    .local v5, "this_$iv":Landroidx/compose/runtime/snapshots/Snapshot$Companion;
    iget-object v6, v1, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState$precomposePaused$2;->this$0:Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;

    iget-object v7, v1, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState$precomposePaused$2;->$slotId:Ljava/lang/Object;

    const/4 v8, 0x0

    .line 1578
    .local v8, "$i$f$withoutReadObservation":I
    invoke-virtual {v5}, Landroidx/compose/runtime/snapshots/Snapshot$Companion;->getCurrentThreadSnapshot()Landroidx/compose/runtime/snapshots/Snapshot;

    move-result-object v9

    .line 1579
    .local v9, "previousSnapshot$iv":Landroidx/compose/runtime/snapshots/Snapshot;
    if-eqz v9, :cond_1

    invoke-virtual {v9}, Landroidx/compose/runtime/snapshots/Snapshot;->getReadObserver()Lkotlin/jvm/functions/Function1;

    move-result-object v0

    :cond_1
    move-object v10, v0

    .line 1580
    .local v10, "observer$iv":Lkotlin/jvm/functions/Function1;
    invoke-virtual {v5, v9}, Landroidx/compose/runtime/snapshots/Snapshot$Companion;->makeCurrentNonObservable(Landroidx/compose/runtime/snapshots/Snapshot;)Landroidx/compose/runtime/snapshots/Snapshot;

    move-result-object v11

    .line 1581
    .local v11, "newSnapshot$iv":Landroidx/compose/runtime/snapshots/Snapshot;
    nop

    .line 1582
    const/4 v12, 0x0

    .line 1218
    .local v12, "$i$a$-withoutReadObservation-LayoutNodeSubcompositionsState$precomposePaused$2$resume$isComplete$1":I
    nop

    .local v6, "this_$iv":Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;
    const/4 v13, 0x0

    .line 1583
    .local v13, "$i$f$ignoreRemeasureRequests":I
    :try_start_0
    invoke-static {v6}, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;->access$getRoot$p(Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;)Landroidx/compose/ui/node/LayoutNode;

    move-result-object v0

    move-object v14, v0

    .local v14, "this_$iv$iv":Landroidx/compose/ui/node/LayoutNode;
    const/4 v15, 0x0

    .line 1584
    .local v15, "$i$f$ignoreRemeasureRequests$ui":I
    invoke-static {v14, v4}, Landroidx/compose/ui/node/LayoutNode;->access$setIgnoreRemeasureRequests$p(Landroidx/compose/ui/node/LayoutNode;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    .line 1585
    const/4 v4, 0x0

    .line 1219
    .local v4, "$i$a$-ignoreRemeasureRequests-LayoutNodeSubcompositionsState$precomposePaused$2$resume$isComplete$1$1":I
    nop

    .line 1220
    move-object/from16 v1, p1

    :try_start_1
    invoke-interface {v3, v1}, Landroidx/compose/runtime/PausedComposition;->resume(Landroidx/compose/runtime/ShouldPauseCallback;)Z

    move-result v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 1232
    nop

    .line 1585
    .end local v4    # "$i$a$-ignoreRemeasureRequests-LayoutNodeSubcompositionsState$precomposePaused$2$resume$isComplete$1$1":I
    nop

    .line 1586
    .local v0, "result$iv$iv":Z
    const/4 v4, 0x0

    :try_start_2
    invoke-static {v14, v4}, Landroidx/compose/ui/node/LayoutNode;->access$setIgnoreRemeasureRequests$p(Landroidx/compose/ui/node/LayoutNode;Z)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1587
    nop

    .line 1583
    .end local v0    # "result$iv$iv":Z
    .end local v14    # "this_$iv$iv":Landroidx/compose/ui/node/LayoutNode;
    .end local v15    # "$i$f$ignoreRemeasureRequests$ui":I
    nop

    .line 1233
    .end local v6    # "this_$iv":Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;
    .end local v13    # "$i$f$ignoreRemeasureRequests":I
    nop

    .line 1582
    .end local v12    # "$i$a$-withoutReadObservation-LayoutNodeSubcompositionsState$precomposePaused$2$resume$isComplete$1":I
    nop

    .line 1588
    invoke-virtual {v5, v9, v11, v10}, Landroidx/compose/runtime/snapshots/Snapshot$Companion;->restoreNonObservable(Landroidx/compose/runtime/snapshots/Snapshot;Landroidx/compose/runtime/snapshots/Snapshot;Lkotlin/jvm/functions/Function1;)V

    .line 1582
    nop

    .line 1217
    .end local v5    # "this_$iv":Landroidx/compose/runtime/snapshots/Snapshot$Companion;
    .end local v8    # "$i$f$withoutReadObservation":I
    .end local v9    # "previousSnapshot$iv":Landroidx/compose/runtime/snapshots/Snapshot;
    .end local v10    # "observer$iv":Lkotlin/jvm/functions/Function1;
    .end local v11    # "newSnapshot$iv":Landroidx/compose/runtime/snapshots/Snapshot;
    nop

    .line 1216
    move v4, v0

    .line 1235
    .local v4, "isComplete":Z
    nop

    .line 1238
    move-object/from16 v18, v2

    .end local v4    # "isComplete":Z
    goto :goto_2

    .line 1588
    .restart local v5    # "this_$iv":Landroidx/compose/runtime/snapshots/Snapshot$Companion;
    .restart local v8    # "$i$f$withoutReadObservation":I
    .restart local v9    # "previousSnapshot$iv":Landroidx/compose/runtime/snapshots/Snapshot;
    .restart local v10    # "observer$iv":Lkotlin/jvm/functions/Function1;
    .restart local v11    # "newSnapshot$iv":Landroidx/compose/runtime/snapshots/Snapshot;
    :catchall_0
    move-exception v0

    move-object/from16 v18, v2

    goto :goto_1

    .line 1221
    .local v4, "$i$a$-ignoreRemeasureRequests-LayoutNodeSubcompositionsState$precomposePaused$2$resume$isComplete$1$1":I
    .restart local v6    # "this_$iv":Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;
    .restart local v12    # "$i$a$-withoutReadObservation-LayoutNodeSubcompositionsState$precomposePaused$2$resume$isComplete$1":I
    .restart local v13    # "$i$f$ignoreRemeasureRequests":I
    .restart local v14    # "this_$iv$iv":Landroidx/compose/ui/node/LayoutNode;
    .restart local v15    # "$i$f$ignoreRemeasureRequests$ui":I
    :catchall_1
    move-exception v0

    .line 1222
    .local v0, "e":Ljava/lang/Throwable;
    :try_start_3
    invoke-virtual {v2}, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState$NodeState;->getOperations()Landroidx/collection/MutableIntList;

    move-result-object v16

    .line 1223
    .local v16, "operations":Landroidx/collection/MutableIntList;
    if-eqz v16, :cond_2

    .line 1224
    new-instance v1, Landroidx/compose/ui/layout/SubcomposeLayoutPausableCompositionException;

    .line 1225
    invoke-virtual {v2}, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState$NodeState;->getOperations()Landroidx/collection/MutableIntList;

    move-result-object v17
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    move-object/from16 v18, v2

    .end local v2    # "nodeState":Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState$NodeState;
    .local v18, "nodeState":Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState$NodeState;
    :try_start_4
    move-object/from16 v2, v17

    check-cast v2, Landroidx/collection/IntList;

    .line 1226
    nop

    .line 1227
    nop

    .line 1224
    invoke-direct {v1, v2, v7, v0}, Landroidx/compose/ui/layout/SubcomposeLayoutPausableCompositionException;-><init>(Landroidx/collection/IntList;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .end local v3    # "pausedComposition":Landroidx/compose/runtime/PausedComposition;
    .end local v5    # "this_$iv":Landroidx/compose/runtime/snapshots/Snapshot$Companion;
    .end local v8    # "$i$f$withoutReadObservation":I
    .end local v9    # "previousSnapshot$iv":Landroidx/compose/runtime/snapshots/Snapshot;
    .end local v10    # "observer$iv":Lkotlin/jvm/functions/Function1;
    .end local v11    # "newSnapshot$iv":Landroidx/compose/runtime/snapshots/Snapshot;
    .end local v18    # "nodeState":Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState$NodeState;
    .end local p1    # "shouldPause":Landroidx/compose/runtime/ShouldPauseCallback;
    throw v1

    .line 1230
    .restart local v2    # "nodeState":Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState$NodeState;
    .restart local v3    # "pausedComposition":Landroidx/compose/runtime/PausedComposition;
    .restart local v5    # "this_$iv":Landroidx/compose/runtime/snapshots/Snapshot$Companion;
    .restart local v8    # "$i$f$withoutReadObservation":I
    .restart local v9    # "previousSnapshot$iv":Landroidx/compose/runtime/snapshots/Snapshot;
    .restart local v10    # "observer$iv":Lkotlin/jvm/functions/Function1;
    .restart local v11    # "newSnapshot$iv":Landroidx/compose/runtime/snapshots/Snapshot;
    .restart local p1    # "shouldPause":Landroidx/compose/runtime/ShouldPauseCallback;
    :cond_2
    move-object/from16 v18, v2

    .end local v2    # "nodeState":Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState$NodeState;
    .end local v3    # "pausedComposition":Landroidx/compose/runtime/PausedComposition;
    .end local v5    # "this_$iv":Landroidx/compose/runtime/snapshots/Snapshot$Companion;
    .end local v8    # "$i$f$withoutReadObservation":I
    .end local v9    # "previousSnapshot$iv":Landroidx/compose/runtime/snapshots/Snapshot;
    .end local v10    # "observer$iv":Lkotlin/jvm/functions/Function1;
    .end local v11    # "newSnapshot$iv":Landroidx/compose/runtime/snapshots/Snapshot;
    .end local p1    # "shouldPause":Landroidx/compose/runtime/ShouldPauseCallback;
    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 1588
    .end local v0    # "e":Ljava/lang/Throwable;
    .end local v4    # "$i$a$-ignoreRemeasureRequests-LayoutNodeSubcompositionsState$precomposePaused$2$resume$isComplete$1$1":I
    .end local v6    # "this_$iv":Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;
    .end local v12    # "$i$a$-withoutReadObservation-LayoutNodeSubcompositionsState$precomposePaused$2$resume$isComplete$1":I
    .end local v13    # "$i$f$ignoreRemeasureRequests":I
    .end local v14    # "this_$iv$iv":Landroidx/compose/ui/node/LayoutNode;
    .end local v15    # "$i$f$ignoreRemeasureRequests$ui":I
    .end local v16    # "operations":Landroidx/collection/MutableIntList;
    .restart local v3    # "pausedComposition":Landroidx/compose/runtime/PausedComposition;
    .restart local v5    # "this_$iv":Landroidx/compose/runtime/snapshots/Snapshot$Companion;
    .restart local v8    # "$i$f$withoutReadObservation":I
    .restart local v9    # "previousSnapshot$iv":Landroidx/compose/runtime/snapshots/Snapshot;
    .restart local v10    # "observer$iv":Lkotlin/jvm/functions/Function1;
    .restart local v11    # "newSnapshot$iv":Landroidx/compose/runtime/snapshots/Snapshot;
    .restart local v18    # "nodeState":Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState$NodeState;
    .restart local p1    # "shouldPause":Landroidx/compose/runtime/ShouldPauseCallback;
    :catchall_2
    move-exception v0

    goto :goto_1

    .end local v18    # "nodeState":Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState$NodeState;
    .restart local v2    # "nodeState":Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState$NodeState;
    :catchall_3
    move-exception v0

    move-object/from16 v18, v2

    .end local v2    # "nodeState":Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState$NodeState;
    .restart local v18    # "nodeState":Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState$NodeState;
    :goto_1
    invoke-virtual {v5, v9, v11, v10}, Landroidx/compose/runtime/snapshots/Snapshot$Companion;->restoreNonObservable(Landroidx/compose/runtime/snapshots/Snapshot;Landroidx/compose/runtime/snapshots/Snapshot;Lkotlin/jvm/functions/Function1;)V

    throw v0

    .line 1212
    .end local v5    # "this_$iv":Landroidx/compose/runtime/snapshots/Snapshot$Companion;
    .end local v8    # "$i$f$withoutReadObservation":I
    .end local v9    # "previousSnapshot$iv":Landroidx/compose/runtime/snapshots/Snapshot;
    .end local v10    # "observer$iv":Lkotlin/jvm/functions/Function1;
    .end local v11    # "newSnapshot$iv":Landroidx/compose/runtime/snapshots/Snapshot;
    .end local v18    # "nodeState":Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState$NodeState;
    .restart local v2    # "nodeState":Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState$NodeState;
    :cond_3
    move-object/from16 v18, v2

    .line 1240
    .end local v2    # "nodeState":Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState$NodeState;
    .restart local v18    # "nodeState":Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState$NodeState;
    nop

    .line 1212
    :goto_2
    return v4
.end method
