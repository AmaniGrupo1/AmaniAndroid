.class public final Landroidx/compose/ui/node/NodeCoordinator$Companion$PointerInputSource$1;
.super Ljava/lang/Object;
.source "NodeCoordinator.kt"

# interfaces
.implements Landroidx/compose/ui/node/NodeCoordinator$HitTestSource;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/compose/ui/node/NodeCoordinator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nNodeCoordinator.kt\nKotlin\n*S Kotlin\n*F\n+ 1 NodeCoordinator.kt\nandroidx/compose/ui/node/NodeCoordinator$Companion$PointerInputSource$1\n+ 2 NodeKind.kt\nandroidx/compose/ui/node/Nodes\n+ 3 DelegatableNode.kt\nandroidx/compose/ui/node/DelegatableNodeKt\n+ 4 Modifier.kt\nandroidx/compose/ui/Modifier$Node\n+ 5 DelegatingNode.kt\nandroidx/compose/ui/node/DelegatingNode\n+ 6 MutableVector.kt\nandroidx/compose/runtime/collection/MutableVectorKt\n*L\n1#1,1659:1\n96#2:1660\n96#2:1661\n556#3,6:1662\n566#3,2:1669\n568#3,8:1674\n576#3,9:1685\n585#3,8:1697\n247#4:1668\n240#5,3:1671\n243#5,3:1694\n1107#6:1682\n1085#6,2:1683\n*S KotlinDebug\n*F\n+ 1 NodeCoordinator.kt\nandroidx/compose/ui/node/NodeCoordinator$Companion$PointerInputSource$1\n*L\n1533#1:1660\n1536#1:1661\n1536#1:1662,6\n1536#1:1669,2\n1536#1:1674,8\n1536#1:1685,9\n1536#1:1697,8\n1536#1:1668\n1536#1:1671,3\n1536#1:1694,3\n1536#1:1682\n1536#1:1683,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000G\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0015\u0010\u0002\u001a\u0008\u0012\u0004\u0012\u00020\u00040\u0003H\u0016\u00a2\u0006\u0004\u0008\u0005\u0010\u0006J\u0010\u0010\u0007\u001a\u00020\u00082\u0006\u0010\t\u001a\u00020\nH\u0016J\u0010\u0010\u000b\u001a\u00020\u00082\u0006\u0010\u000c\u001a\u00020\rH\u0016J7\u0010\u000e\u001a\u00020\u000f2\u0006\u0010\u0010\u001a\u00020\r2\u0006\u0010\u0011\u001a\u00020\u00122\u0006\u0010\u0013\u001a\u00020\u00142\u0006\u0010\u0015\u001a\u00020\u00162\u0006\u0010\u0017\u001a\u00020\u0008H\u0016\u00a2\u0006\u0004\u0008\u0018\u0010\u0019\u00a8\u0006\u001a"
    }
    d2 = {
        "androidx/compose/ui/node/NodeCoordinator$Companion$PointerInputSource$1",
        "Landroidx/compose/ui/node/NodeCoordinator$HitTestSource;",
        "entityType",
        "Landroidx/compose/ui/node/NodeKind;",
        "Landroidx/compose/ui/node/PointerInputModifierNode;",
        "entityType-OLwlOKw",
        "()I",
        "interceptOutOfBoundsChildEvents",
        "",
        "node",
        "Landroidx/compose/ui/Modifier$Node;",
        "shouldHitTestChildren",
        "parentLayoutNode",
        "Landroidx/compose/ui/node/LayoutNode;",
        "childHitTest",
        "",
        "layoutNode",
        "pointerPosition",
        "Landroidx/compose/ui/geometry/Offset;",
        "hitTestResult",
        "Landroidx/compose/ui/node/HitTestResult;",
        "pointerType",
        "Landroidx/compose/ui/input/pointer/PointerType;",
        "isInLayer",
        "childHitTest-qzLsGqo",
        "(Landroidx/compose/ui/node/LayoutNode;JLandroidx/compose/ui/node/HitTestResult;IZ)V",
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


# direct methods
.method constructor <init>()V
    .locals 0

    .line 1532
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public childHitTest-qzLsGqo(Landroidx/compose/ui/node/LayoutNode;JLandroidx/compose/ui/node/HitTestResult;IZ)V
    .locals 0
    .param p1, "layoutNode"    # Landroidx/compose/ui/node/LayoutNode;
    .param p2, "$v$c$androidx-compose-ui-geometry-Offset$-pointerPosition$0"    # J
    .param p4, "hitTestResult"    # Landroidx/compose/ui/node/HitTestResult;
    .param p5, "$v$c$androidx-compose-ui-input-pointer-PointerType$-pointerType$0"    # I
    .param p6, "isInLayer"    # Z

    .line 1550
    invoke-virtual/range {p1 .. p6}, Landroidx/compose/ui/node/LayoutNode;->hitTest-6fMxITs$ui(JLandroidx/compose/ui/node/HitTestResult;IZ)V

    return-void
.end method

.method public entityType-OLwlOKw()I
    .locals 2

    .line 1533
    const/4 v0, 0x0

    .line 1660
    .local v0, "$i$f$getPointerInput-OLwlOKw":I
    const/16 v1, 0x10

    invoke-static {v1}, Landroidx/compose/ui/node/NodeKind;->constructor-impl(I)I

    move-result v0

    .line 1533
    .end local v0    # "$i$f$getPointerInput-OLwlOKw":I
    return v0
.end method

.method public interceptOutOfBoundsChildEvents(Landroidx/compose/ui/Modifier$Node;)Z
    .locals 18
    .param p1, "node"    # Landroidx/compose/ui/Modifier$Node;

    .line 1536
    const/4 v0, 0x0

    .line 1661
    .local v0, "$i$f$getPointerInput-OLwlOKw":I
    const/16 v1, 0x10

    invoke-static {v1}, Landroidx/compose/ui/node/NodeKind;->constructor-impl(I)I

    move-result v0

    .line 1536
    .end local v0    # "$i$f$getPointerInput-OLwlOKw":I
    move-object/from16 v1, p1

    .local v0, "$v$c$androidx-compose-ui-node-NodeKind$-kind$0$iv":I
    .local v1, "$this$dispatchForKind_u2d6rFNWt0$iv":Landroidx/compose/ui/Modifier$Node;
    const/4 v2, 0x0

    .line 1662
    .local v2, "$i$f$dispatchForKind-6rFNWt0":I
    const/4 v3, 0x0

    .line 1663
    .local v3, "stack$iv":Ljava/lang/Object;
    const/4 v4, 0x0

    .local v4, "node$iv":Ljava/lang/Object;
    move-object v4, v1

    .line 1664
    :goto_0
    const/4 v5, 0x0

    if-eqz v4, :cond_d

    .line 1665
    instance-of v6, v4, Landroidx/compose/ui/node/PointerInputModifierNode;

    const/4 v7, 0x1

    if-eqz v6, :cond_1

    .line 1666
    move-object v5, v4

    check-cast v5, Landroidx/compose/ui/node/PointerInputModifierNode;

    .local v5, "it":Landroidx/compose/ui/node/PointerInputModifierNode;
    const/4 v6, 0x0

    .line 1537
    .local v6, "$i$a$-dispatchForKind-6rFNWt0-NodeCoordinator$Companion$PointerInputSource$1$interceptOutOfBoundsChildEvents$1":I
    invoke-interface {v5}, Landroidx/compose/ui/node/PointerInputModifierNode;->interceptOutOfBoundsChildEvents()Z

    move-result v8

    if-eqz v8, :cond_0

    return v7

    .line 1538
    :cond_0
    nop

    .line 1666
    .end local v5    # "it":Landroidx/compose/ui/node/PointerInputModifierNode;
    .end local v6    # "$i$a$-dispatchForKind-6rFNWt0-NodeCoordinator$Companion$PointerInputSource$1$interceptOutOfBoundsChildEvents$1":I
    move/from16 v17, v0

    goto/16 :goto_6

    .line 1667
    :cond_1
    move v6, v0

    .local v6, "$v$c$androidx-compose-ui-node-NodeKind$-kind$0$iv$iv":I
    move-object v8, v4

    .local v8, "this_$iv$iv":Landroidx/compose/ui/Modifier$Node;
    const/4 v9, 0x0

    .line 1668
    .local v9, "$i$f$isKind-H91voCI$ui":I
    invoke-virtual {v8}, Landroidx/compose/ui/Modifier$Node;->getKindSet$ui()I

    move-result v10

    and-int/2addr v10, v6

    if-eqz v10, :cond_2

    move v6, v7

    goto :goto_1

    :cond_2
    move v6, v5

    .line 1667
    .end local v6    # "$v$c$androidx-compose-ui-node-NodeKind$-kind$0$iv$iv":I
    .end local v8    # "this_$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .end local v9    # "$i$f$isKind-H91voCI$ui":I
    :goto_1
    if-eqz v6, :cond_b

    instance-of v6, v4, Landroidx/compose/ui/node/DelegatingNode;

    if-eqz v6, :cond_b

    .line 1669
    const/4 v6, 0x0

    .line 1670
    .local v6, "count$iv":I
    move-object v8, v4

    check-cast v8, Landroidx/compose/ui/node/DelegatingNode;

    .local v8, "this_$iv$iv":Landroidx/compose/ui/node/DelegatingNode;
    const/4 v9, 0x0

    .line 1671
    .local v9, "$i$f$forEachImmediateDelegate$ui":I
    invoke-virtual {v8}, Landroidx/compose/ui/node/DelegatingNode;->getDelegate$ui()Landroidx/compose/ui/Modifier$Node;

    move-result-object v10

    .line 1672
    .local v10, "node$iv$iv":Landroidx/compose/ui/Modifier$Node;
    :goto_2
    if-eqz v10, :cond_a

    .line 1673
    move-object v11, v10

    .local v11, "next$iv":Landroidx/compose/ui/Modifier$Node;
    const/4 v12, 0x0

    .line 1674
    .local v12, "$i$a$-forEachImmediateDelegate$ui-DelegatableNodeKt$dispatchForKind$1$iv":I
    move v13, v0

    .local v13, "$v$c$androidx-compose-ui-node-NodeKind$-kind$0$iv$iv":I
    move-object v14, v11

    .local v14, "this_$iv$iv":Landroidx/compose/ui/Modifier$Node;
    const/4 v15, 0x0

    .line 1668
    .local v15, "$i$f$isKind-H91voCI$ui":I
    invoke-virtual {v14}, Landroidx/compose/ui/Modifier$Node;->getKindSet$ui()I

    move-result v16

    and-int v16, v16, v13

    if-eqz v16, :cond_3

    move v13, v7

    goto :goto_3

    :cond_3
    move v13, v5

    .line 1674
    .end local v13    # "$v$c$androidx-compose-ui-node-NodeKind$-kind$0$iv$iv":I
    .end local v14    # "this_$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .end local v15    # "$i$f$isKind-H91voCI$ui":I
    :goto_3
    if-eqz v13, :cond_8

    .line 1675
    add-int/lit8 v6, v6, 0x1

    .line 1676
    if-ne v6, v7, :cond_4

    .line 1677
    move-object v4, v11

    move/from16 v17, v0

    goto :goto_5

    .line 1681
    :cond_4
    if-nez v3, :cond_5

    const/4 v13, 0x0

    .line 1682
    .local v13, "$i$f$mutableVectorOf":I
    nop

    .line 1683
    const/16 v14, 0x10

    .local v14, "capacity$iv$iv$iv":I
    const/4 v15, 0x0

    .line 1684
    .local v15, "$i$f$MutableVector":I
    new-instance v7, Landroidx/compose/runtime/collection/MutableVector;

    move/from16 v17, v0

    .end local v0    # "$v$c$androidx-compose-ui-node-NodeKind$-kind$0$iv":I
    .local v17, "$v$c$androidx-compose-ui-node-NodeKind$-kind$0$iv":I
    new-array v0, v14, [Landroidx/compose/ui/Modifier$Node;

    invoke-direct {v7, v0, v5}, Landroidx/compose/runtime/collection/MutableVector;-><init>([Ljava/lang/Object;I)V

    .line 1682
    .end local v14    # "capacity$iv$iv$iv":I
    .end local v15    # "$i$f$MutableVector":I
    goto :goto_4

    .line 1681
    .end local v13    # "$i$f$mutableVectorOf":I
    .end local v17    # "$v$c$androidx-compose-ui-node-NodeKind$-kind$0$iv":I
    .restart local v0    # "$v$c$androidx-compose-ui-node-NodeKind$-kind$0$iv":I
    :cond_5
    move/from16 v17, v0

    .end local v0    # "$v$c$androidx-compose-ui-node-NodeKind$-kind$0$iv":I
    .restart local v17    # "$v$c$androidx-compose-ui-node-NodeKind$-kind$0$iv":I
    move-object v7, v3

    :goto_4
    move-object v3, v7

    .line 1685
    move-object v0, v4

    .line 1686
    .local v0, "theNode$iv":Landroidx/compose/ui/Modifier$Node;
    if-eqz v0, :cond_7

    .line 1687
    if-eqz v3, :cond_6

    invoke-virtual {v3, v0}, Landroidx/compose/runtime/collection/MutableVector;->add(Ljava/lang/Object;)Z

    .line 1688
    :cond_6
    const/4 v4, 0x0

    .line 1690
    :cond_7
    if-eqz v3, :cond_9

    invoke-virtual {v3, v11}, Landroidx/compose/runtime/collection/MutableVector;->add(Ljava/lang/Object;)Z

    goto :goto_5

    .line 1674
    .end local v17    # "$v$c$androidx-compose-ui-node-NodeKind$-kind$0$iv":I
    .local v0, "$v$c$androidx-compose-ui-node-NodeKind$-kind$0$iv":I
    :cond_8
    move/from16 v17, v0

    .line 1693
    .end local v0    # "$v$c$androidx-compose-ui-node-NodeKind$-kind$0$iv":I
    .restart local v17    # "$v$c$androidx-compose-ui-node-NodeKind$-kind$0$iv":I
    :cond_9
    :goto_5
    nop

    .line 1673
    .end local v11    # "next$iv":Landroidx/compose/ui/Modifier$Node;
    .end local v12    # "$i$a$-forEachImmediateDelegate$ui-DelegatableNodeKt$dispatchForKind$1$iv":I
    nop

    .line 1694
    invoke-virtual {v10}, Landroidx/compose/ui/Modifier$Node;->getChild$ui()Landroidx/compose/ui/Modifier$Node;

    move-result-object v10

    move/from16 v0, v17

    const/4 v7, 0x1

    goto :goto_2

    .line 1696
    .end local v17    # "$v$c$androidx-compose-ui-node-NodeKind$-kind$0$iv":I
    .restart local v0    # "$v$c$androidx-compose-ui-node-NodeKind$-kind$0$iv":I
    :cond_a
    move/from16 v17, v0

    .line 1697
    .end local v0    # "$v$c$androidx-compose-ui-node-NodeKind$-kind$0$iv":I
    .end local v8    # "this_$iv$iv":Landroidx/compose/ui/node/DelegatingNode;
    .end local v9    # "$i$f$forEachImmediateDelegate$ui":I
    .end local v10    # "node$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .restart local v17    # "$v$c$androidx-compose-ui-node-NodeKind$-kind$0$iv":I
    const/4 v0, 0x1

    if-ne v6, v0, :cond_c

    .line 1699
    move/from16 v0, v17

    goto/16 :goto_0

    .line 1667
    .end local v6    # "count$iv":I
    .end local v17    # "$v$c$androidx-compose-ui-node-NodeKind$-kind$0$iv":I
    .restart local v0    # "$v$c$androidx-compose-ui-node-NodeKind$-kind$0$iv":I
    :cond_b
    move/from16 v17, v0

    .line 1702
    .end local v0    # "$v$c$androidx-compose-ui-node-NodeKind$-kind$0$iv":I
    .restart local v17    # "$v$c$androidx-compose-ui-node-NodeKind$-kind$0$iv":I
    :cond_c
    :goto_6
    invoke-static {v3}, Landroidx/compose/ui/node/DelegatableNodeKt;->access$pop(Landroidx/compose/runtime/collection/MutableVector;)Landroidx/compose/ui/Modifier$Node;

    move-result-object v4

    move/from16 v0, v17

    goto/16 :goto_0

    .line 1704
    .end local v17    # "$v$c$androidx-compose-ui-node-NodeKind$-kind$0$iv":I
    .restart local v0    # "$v$c$androidx-compose-ui-node-NodeKind$-kind$0$iv":I
    :cond_d
    nop

    .line 1539
    .end local v0    # "$v$c$androidx-compose-ui-node-NodeKind$-kind$0$iv":I
    .end local v1    # "$this$dispatchForKind_u2d6rFNWt0$iv":Landroidx/compose/ui/Modifier$Node;
    .end local v2    # "$i$f$dispatchForKind-6rFNWt0":I
    .end local v3    # "stack$iv":Ljava/lang/Object;
    .end local v4    # "node$iv":Ljava/lang/Object;
    return v5
.end method

.method public shouldHitTestChildren(Landroidx/compose/ui/node/LayoutNode;)Z
    .locals 1
    .param p1, "parentLayoutNode"    # Landroidx/compose/ui/node/LayoutNode;

    .line 1542
    const/4 v0, 0x1

    return v0
.end method
