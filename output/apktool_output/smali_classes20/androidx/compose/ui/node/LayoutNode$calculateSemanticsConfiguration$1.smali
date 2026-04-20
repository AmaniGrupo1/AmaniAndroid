.class final Landroidx/compose/ui/node/LayoutNode$calculateSemanticsConfiguration$1;
.super Lkotlin/jvm/internal/Lambda;
.source "LayoutNode.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/compose/ui/node/LayoutNode;->calculateSemanticsConfiguration()Landroidx/compose/ui/semantics/SemanticsConfiguration;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nLayoutNode.kt\nKotlin\n*S Kotlin\n*F\n+ 1 LayoutNode.kt\nandroidx/compose/ui/node/LayoutNode$calculateSemanticsConfiguration$1\n+ 2 NodeKind.kt\nandroidx/compose/ui/node/Nodes\n+ 3 NodeChain.kt\nandroidx/compose/ui/node/NodeChain\n+ 4 DelegatableNode.kt\nandroidx/compose/ui/node/DelegatableNodeKt\n+ 5 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 6 Modifier.kt\nandroidx/compose/ui/Modifier$Node\n+ 7 DelegatingNode.kt\nandroidx/compose/ui/node/DelegatingNode\n+ 8 MutableVector.kt\nandroidx/compose/runtime/collection/MutableVectorKt\n*L\n1#1,1610:1\n92#2:1611\n670#3,16:1612\n686#3,3:1672\n556#4,5:1628\n561#4:1634\n566#4,2:1636\n568#4,8:1641\n576#4,9:1652\n585#4,8:1664\n1#5:1633\n247#6:1635\n240#7,3:1638\n243#7,3:1661\n1107#8:1649\n1085#8,2:1650\n*S KotlinDebug\n*F\n+ 1 LayoutNode.kt\nandroidx/compose/ui/node/LayoutNode$calculateSemanticsConfiguration$1\n*L\n485#1:1611\n485#1:1612,16\n485#1:1672,3\n485#1:1628,5\n485#1:1634\n485#1:1636,2\n485#1:1641,8\n485#1:1652,9\n485#1:1664,8\n485#1:1635\n485#1:1638,3\n485#1:1661,3\n485#1:1649\n485#1:1650,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0008\n\u0000\n\u0002\u0010\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001H\n\u00a2\u0006\u0002\u0008\u0002"
    }
    d2 = {
        "<anonymous>",
        "",
        "invoke"
    }
    k = 0x3
    mv = {
        0x2,
        0x0,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field final synthetic $config:Lkotlin/jvm/internal/Ref$ObjectRef;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/internal/Ref$ObjectRef<",
            "Landroidx/compose/ui/semantics/SemanticsConfiguration;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Landroidx/compose/ui/node/LayoutNode;


# direct methods
.method constructor <init>(Landroidx/compose/ui/node/LayoutNode;Lkotlin/jvm/internal/Ref$ObjectRef;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/ui/node/LayoutNode;",
            "Lkotlin/jvm/internal/Ref$ObjectRef<",
            "Landroidx/compose/ui/semantics/SemanticsConfiguration;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Landroidx/compose/ui/node/LayoutNode$calculateSemanticsConfiguration$1;->this$0:Landroidx/compose/ui/node/LayoutNode;

    iput-object p2, p0, Landroidx/compose/ui/node/LayoutNode$calculateSemanticsConfiguration$1;->$config:Lkotlin/jvm/internal/Ref$ObjectRef;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 484
    invoke-virtual {p0}, Landroidx/compose/ui/node/LayoutNode$calculateSemanticsConfiguration$1;->invoke()V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method public final invoke()V
    .locals 33

    .line 485
    move-object/from16 v0, p0

    iget-object v1, v0, Landroidx/compose/ui/node/LayoutNode$calculateSemanticsConfiguration$1;->this$0:Landroidx/compose/ui/node/LayoutNode;

    invoke-virtual {v1}, Landroidx/compose/ui/node/LayoutNode;->getNodes$ui()Landroidx/compose/ui/node/NodeChain;

    move-result-object v1

    const/4 v2, 0x0

    .line 1611
    .local v2, "$i$f$getSemantics-OLwlOKw":I
    const/16 v3, 0x8

    invoke-static {v3}, Landroidx/compose/ui/node/NodeKind;->constructor-impl(I)I

    move-result v2

    .line 485
    .end local v2    # "$i$f$getSemantics-OLwlOKw":I
    iget-object v3, v0, Landroidx/compose/ui/node/LayoutNode$calculateSemanticsConfiguration$1;->$config:Lkotlin/jvm/internal/Ref$ObjectRef;

    .local v1, "this_$iv":Landroidx/compose/ui/node/NodeChain;
    .local v2, "$v$c$androidx-compose-ui-node-NodeKind$-type$0$iv":I
    const/4 v4, 0x0

    .line 1612
    .local v4, "$i$f$tailToHead-aLcG6gQ$ui":I
    move v5, v2

    .local v5, "mask$iv$iv":I
    move-object v6, v1

    .local v6, "this_$iv$iv":Landroidx/compose/ui/node/NodeChain;
    const/4 v7, 0x0

    .line 1616
    .local v7, "$i$f$tailToHead$ui":I
    invoke-static {v6}, Landroidx/compose/ui/node/NodeChain;->access$getAggregateChildKindSet(Landroidx/compose/ui/node/NodeChain;)I

    move-result v8

    and-int/2addr v8, v5

    if-eqz v8, :cond_11

    .line 1617
    move-object v8, v6

    .local v8, "this_$iv$iv$iv":Landroidx/compose/ui/node/NodeChain;
    const/4 v9, 0x0

    .line 1625
    .local v9, "$i$f$tailToHead$ui":I
    invoke-virtual {v8}, Landroidx/compose/ui/node/NodeChain;->getTail$ui()Landroidx/compose/ui/Modifier$Node;

    move-result-object v10

    .line 1626
    .local v10, "node$iv$iv$iv":Landroidx/compose/ui/Modifier$Node;
    :goto_0
    if-eqz v10, :cond_10

    .line 1627
    move-object v11, v10

    .local v11, "it$iv$iv":Landroidx/compose/ui/Modifier$Node;
    const/4 v12, 0x0

    .line 1618
    .local v12, "$i$a$-tailToHead$ui-NodeChain$tailToHead$2$iv$iv":I
    invoke-virtual {v11}, Landroidx/compose/ui/Modifier$Node;->getKindSet$ui()I

    move-result v13

    and-int/2addr v13, v5

    if-eqz v13, :cond_f

    .line 1619
    move-object v13, v11

    .local v13, "it$iv":Landroidx/compose/ui/Modifier$Node;
    const/4 v14, 0x0

    .line 1612
    .local v14, "$i$a$-tailToHead$ui-NodeChain$tailToHead$1$iv":I
    move v15, v2

    .local v15, "$v$c$androidx-compose-ui-node-NodeKind$-kind$0$iv$iv":I
    move-object/from16 v16, v13

    .local v16, "$this$dispatchForKind_u2d6rFNWt0$iv$iv":Landroidx/compose/ui/Modifier$Node;
    const/16 v17, 0x0

    .line 1628
    .local v17, "$i$f$dispatchForKind-6rFNWt0":I
    const/16 v18, 0x0

    .line 1629
    .local v18, "stack$iv$iv":Ljava/lang/Object;
    const/16 v19, 0x0

    .local v19, "node$iv$iv":Ljava/lang/Object;
    move-object/from16 v19, v16

    move-object/from16 v0, v19

    .line 1630
    .end local v19    # "node$iv$iv":Ljava/lang/Object;
    .local v0, "node$iv$iv":Ljava/lang/Object;
    :goto_1
    if-eqz v0, :cond_e

    .line 1631
    move-object/from16 v19, v1

    .end local v1    # "this_$iv":Landroidx/compose/ui/node/NodeChain;
    .local v19, "this_$iv":Landroidx/compose/ui/node/NodeChain;
    instance-of v1, v0, Landroidx/compose/ui/node/SemanticsModifierNode;

    move/from16 v20, v1

    if-eqz v20, :cond_2

    .line 1632
    move-object/from16 v20, v0

    check-cast v20, Landroidx/compose/ui/node/SemanticsModifierNode;

    .local v20, "it":Landroidx/compose/ui/node/SemanticsModifierNode;
    const/16 v21, 0x0

    .line 486
    .local v21, "$i$a$-tailToHead-aLcG6gQ$ui-LayoutNode$calculateSemanticsConfiguration$1$1":I
    invoke-interface/range {v20 .. v20}, Landroidx/compose/ui/node/SemanticsModifierNode;->getShouldClearDescendantSemantics()Z

    move-result v22

    if-eqz v22, :cond_0

    .line 487
    new-instance v1, Landroidx/compose/ui/semantics/SemanticsConfiguration;

    invoke-direct {v1}, Landroidx/compose/ui/semantics/SemanticsConfiguration;-><init>()V

    iput-object v1, v3, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 488
    iget-object v1, v3, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v1, Landroidx/compose/ui/semantics/SemanticsConfiguration;

    move/from16 v23, v2

    const/4 v2, 0x1

    .end local v2    # "$v$c$androidx-compose-ui-node-NodeKind$-type$0$iv":I
    .local v23, "$v$c$androidx-compose-ui-node-NodeKind$-type$0$iv":I
    invoke-virtual {v1, v2}, Landroidx/compose/ui/semantics/SemanticsConfiguration;->setClearingSemantics(Z)V

    goto :goto_2

    .line 486
    .end local v23    # "$v$c$androidx-compose-ui-node-NodeKind$-type$0$iv":I
    .restart local v2    # "$v$c$androidx-compose-ui-node-NodeKind$-type$0$iv":I
    :cond_0
    move/from16 v23, v2

    const/4 v2, 0x1

    .line 490
    .end local v2    # "$v$c$androidx-compose-ui-node-NodeKind$-type$0$iv":I
    .restart local v23    # "$v$c$androidx-compose-ui-node-NodeKind$-type$0$iv":I
    :goto_2
    invoke-interface/range {v20 .. v20}, Landroidx/compose/ui/node/SemanticsModifierNode;->getShouldMergeDescendantSemantics()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 491
    iget-object v1, v3, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v1, Landroidx/compose/ui/semantics/SemanticsConfiguration;

    invoke-virtual {v1, v2}, Landroidx/compose/ui/semantics/SemanticsConfiguration;->setMergingSemanticsOfDescendants(Z)V

    .line 493
    :cond_1
    move-object/from16 v1, v20

    .line 1633
    .local v1, "$this$invoke_u24lambda_u240_u240":Landroidx/compose/ui/node/SemanticsModifierNode;
    const/4 v2, 0x0

    .line 493
    .local v2, "$i$a$-with-LayoutNode$calculateSemanticsConfiguration$1$1$1":I
    move/from16 v22, v2

    .end local v2    # "$i$a$-with-LayoutNode$calculateSemanticsConfiguration$1$1$1":I
    .local v22, "$i$a$-with-LayoutNode$calculateSemanticsConfiguration$1$1$1":I
    iget-object v2, v3, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v2, Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;

    invoke-interface {v1, v2}, Landroidx/compose/ui/node/SemanticsModifierNode;->applySemantics(Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;)V

    .line 494
    .end local v1    # "$this$invoke_u24lambda_u240_u240":Landroidx/compose/ui/node/SemanticsModifierNode;
    .end local v22    # "$i$a$-with-LayoutNode$calculateSemanticsConfiguration$1$1$1":I
    nop

    .line 1632
    .end local v20    # "it":Landroidx/compose/ui/node/SemanticsModifierNode;
    .end local v21    # "$i$a$-tailToHead-aLcG6gQ$ui-LayoutNode$calculateSemanticsConfiguration$1$1":I
    goto/16 :goto_a

    .line 1634
    .end local v23    # "$v$c$androidx-compose-ui-node-NodeKind$-type$0$iv":I
    .local v2, "$v$c$androidx-compose-ui-node-NodeKind$-type$0$iv":I
    :cond_2
    move/from16 v23, v2

    .end local v2    # "$v$c$androidx-compose-ui-node-NodeKind$-type$0$iv":I
    .restart local v23    # "$v$c$androidx-compose-ui-node-NodeKind$-type$0$iv":I
    move v1, v15

    .local v1, "$v$c$androidx-compose-ui-node-NodeKind$-kind$0$iv$iv$iv":I
    move-object v2, v0

    .local v2, "this_$iv$iv$iv":Landroidx/compose/ui/Modifier$Node;
    const/16 v20, 0x0

    .line 1635
    .local v20, "$i$f$isKind-H91voCI$ui":I
    invoke-virtual {v2}, Landroidx/compose/ui/Modifier$Node;->getKindSet$ui()I

    move-result v21

    and-int v21, v21, v1

    move/from16 v24, v1

    .end local v1    # "$v$c$androidx-compose-ui-node-NodeKind$-kind$0$iv$iv$iv":I
    .local v24, "$v$c$androidx-compose-ui-node-NodeKind$-kind$0$iv$iv$iv":I
    if-eqz v21, :cond_3

    const/4 v2, 0x1

    goto :goto_3

    :cond_3
    const/4 v2, 0x0

    .line 1634
    .end local v2    # "this_$iv$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .end local v20    # "$i$f$isKind-H91voCI$ui":I
    .end local v24    # "$v$c$androidx-compose-ui-node-NodeKind$-kind$0$iv$iv$iv":I
    :goto_3
    if-eqz v2, :cond_d

    instance-of v2, v0, Landroidx/compose/ui/node/DelegatingNode;

    if-eqz v2, :cond_d

    .line 1636
    const/4 v2, 0x0

    .line 1637
    .local v2, "count$iv$iv":I
    move-object/from16 v20, v0

    check-cast v20, Landroidx/compose/ui/node/DelegatingNode;

    .local v20, "this_$iv$iv$iv":Landroidx/compose/ui/node/DelegatingNode;
    const/16 v21, 0x0

    .line 1638
    .local v21, "$i$f$forEachImmediateDelegate$ui":I
    invoke-virtual/range {v20 .. v20}, Landroidx/compose/ui/node/DelegatingNode;->getDelegate$ui()Landroidx/compose/ui/Modifier$Node;

    move-result-object v24

    .line 1639
    .local v24, "node$iv$iv$iv":Landroidx/compose/ui/Modifier$Node;
    :goto_4
    if-eqz v24, :cond_b

    .line 1640
    move-object/from16 v25, v24

    .local v25, "next$iv$iv":Landroidx/compose/ui/Modifier$Node;
    const/16 v26, 0x0

    .line 1641
    .local v26, "$i$a$-forEachImmediateDelegate$ui-DelegatableNodeKt$dispatchForKind$1$iv$iv":I
    move/from16 v27, v15

    .local v27, "$v$c$androidx-compose-ui-node-NodeKind$-kind$0$iv$iv$iv":I
    move-object/from16 v28, v25

    .local v28, "this_$iv$iv$iv":Landroidx/compose/ui/Modifier$Node;
    const/16 v29, 0x0

    .line 1635
    .local v29, "$i$f$isKind-H91voCI$ui":I
    invoke-virtual/range {v28 .. v28}, Landroidx/compose/ui/Modifier$Node;->getKindSet$ui()I

    move-result v30

    and-int v30, v30, v27

    if-eqz v30, :cond_4

    const/16 v27, 0x1

    goto :goto_5

    :cond_4
    const/16 v27, 0x0

    .line 1641
    .end local v27    # "$v$c$androidx-compose-ui-node-NodeKind$-kind$0$iv$iv$iv":I
    .end local v28    # "this_$iv$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .end local v29    # "$i$f$isKind-H91voCI$ui":I
    :goto_5
    if-eqz v27, :cond_a

    .line 1642
    add-int/lit8 v2, v2, 0x1

    .line 1643
    const/4 v1, 0x1

    if-ne v2, v1, :cond_5

    .line 1644
    move-object/from16 v0, v25

    move-object/from16 v1, v18

    move-object/from16 v18, v0

    goto :goto_9

    .line 1648
    :cond_5
    if-nez v18, :cond_6

    const/4 v1, 0x0

    .line 1649
    .local v1, "$i$f$mutableVectorOf":I
    nop

    .line 1650
    move-object/from16 v28, v0

    .end local v0    # "node$iv$iv":Ljava/lang/Object;
    .local v28, "node$iv$iv":Ljava/lang/Object;
    const/16 v0, 0x10

    .local v0, "capacity$iv$iv$iv$iv":I
    const/16 v29, 0x0

    .line 1651
    .local v29, "$i$f$MutableVector":I
    move/from16 v30, v1

    .end local v1    # "$i$f$mutableVectorOf":I
    .local v30, "$i$f$mutableVectorOf":I
    new-instance v1, Landroidx/compose/runtime/collection/MutableVector;

    move/from16 v31, v2

    .end local v2    # "count$iv$iv":I
    .local v31, "count$iv$iv":I
    new-array v2, v0, [Landroidx/compose/ui/Modifier$Node;

    move/from16 v32, v0

    const/4 v0, 0x0

    .end local v0    # "capacity$iv$iv$iv$iv":I
    .local v32, "capacity$iv$iv$iv$iv":I
    invoke-direct {v1, v2, v0}, Landroidx/compose/runtime/collection/MutableVector;-><init>([Ljava/lang/Object;I)V

    .line 1649
    .end local v29    # "$i$f$MutableVector":I
    .end local v32    # "capacity$iv$iv$iv$iv":I
    goto :goto_6

    .line 1648
    .end local v28    # "node$iv$iv":Ljava/lang/Object;
    .end local v30    # "$i$f$mutableVectorOf":I
    .end local v31    # "count$iv$iv":I
    .local v0, "node$iv$iv":Ljava/lang/Object;
    .restart local v2    # "count$iv$iv":I
    :cond_6
    move-object/from16 v28, v0

    move/from16 v31, v2

    const/4 v0, 0x0

    .end local v0    # "node$iv$iv":Ljava/lang/Object;
    .end local v2    # "count$iv$iv":I
    .restart local v28    # "node$iv$iv":Ljava/lang/Object;
    .restart local v31    # "count$iv$iv":I
    move-object/from16 v1, v18

    :goto_6
    nop

    .line 1652
    .end local v18    # "stack$iv$iv":Ljava/lang/Object;
    .local v1, "stack$iv$iv":Ljava/lang/Object;
    move-object/from16 v2, v28

    .line 1653
    .local v2, "theNode$iv$iv":Landroidx/compose/ui/Modifier$Node;
    if-eqz v2, :cond_8

    .line 1654
    if-eqz v1, :cond_7

    invoke-virtual {v1, v2}, Landroidx/compose/runtime/collection/MutableVector;->add(Ljava/lang/Object;)Z

    .line 1655
    :cond_7
    const/16 v18, 0x0

    .end local v28    # "node$iv$iv":Ljava/lang/Object;
    .local v18, "node$iv$iv":Ljava/lang/Object;
    goto :goto_7

    .line 1653
    .end local v18    # "node$iv$iv":Ljava/lang/Object;
    .restart local v28    # "node$iv$iv":Ljava/lang/Object;
    :cond_8
    move-object/from16 v18, v28

    .line 1657
    .end local v28    # "node$iv$iv":Ljava/lang/Object;
    .restart local v18    # "node$iv$iv":Ljava/lang/Object;
    :goto_7
    if-eqz v1, :cond_9

    move-object/from16 v0, v25

    .end local v25    # "next$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .local v0, "next$iv$iv":Landroidx/compose/ui/Modifier$Node;
    invoke-virtual {v1, v0}, Landroidx/compose/runtime/collection/MutableVector;->add(Ljava/lang/Object;)Z

    goto :goto_8

    .end local v0    # "next$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .restart local v25    # "next$iv$iv":Landroidx/compose/ui/Modifier$Node;
    :cond_9
    move-object/from16 v0, v25

    .line 1660
    .end local v2    # "theNode$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .end local v25    # "next$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .restart local v0    # "next$iv$iv":Landroidx/compose/ui/Modifier$Node;
    :goto_8
    move/from16 v2, v31

    goto :goto_9

    .line 1641
    .end local v1    # "stack$iv$iv":Ljava/lang/Object;
    .end local v31    # "count$iv$iv":I
    .local v0, "node$iv$iv":Ljava/lang/Object;
    .local v2, "count$iv$iv":I
    .local v18, "stack$iv$iv":Ljava/lang/Object;
    .restart local v25    # "next$iv$iv":Landroidx/compose/ui/Modifier$Node;
    :cond_a
    move-object/from16 v28, v0

    move-object/from16 v0, v25

    .end local v25    # "next$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .local v0, "next$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .restart local v28    # "node$iv$iv":Ljava/lang/Object;
    move-object/from16 v1, v18

    move-object/from16 v18, v28

    .line 1660
    .end local v28    # "node$iv$iv":Ljava/lang/Object;
    .restart local v1    # "stack$iv$iv":Ljava/lang/Object;
    .local v18, "node$iv$iv":Ljava/lang/Object;
    :goto_9
    nop

    .line 1640
    .end local v0    # "next$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .end local v26    # "$i$a$-forEachImmediateDelegate$ui-DelegatableNodeKt$dispatchForKind$1$iv$iv":I
    nop

    .line 1661
    invoke-virtual/range {v24 .. v24}, Landroidx/compose/ui/Modifier$Node;->getChild$ui()Landroidx/compose/ui/Modifier$Node;

    move-result-object v24

    move-object/from16 v0, v18

    move-object/from16 v18, v1

    goto :goto_4

    .line 1663
    .end local v1    # "stack$iv$iv":Ljava/lang/Object;
    .local v0, "node$iv$iv":Ljava/lang/Object;
    .local v18, "stack$iv$iv":Ljava/lang/Object;
    :cond_b
    move-object/from16 v28, v0

    .line 1664
    .end local v0    # "node$iv$iv":Ljava/lang/Object;
    .end local v20    # "this_$iv$iv$iv":Landroidx/compose/ui/node/DelegatingNode;
    .end local v21    # "$i$f$forEachImmediateDelegate$ui":I
    .end local v24    # "node$iv$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .restart local v28    # "node$iv$iv":Ljava/lang/Object;
    const/4 v1, 0x1

    if-ne v2, v1, :cond_c

    .line 1666
    move-object/from16 v1, v19

    move/from16 v2, v23

    move-object/from16 v0, v28

    goto/16 :goto_1

    .line 1664
    :cond_c
    move-object/from16 v0, v28

    .line 1669
    .end local v2    # "count$iv$iv":I
    .end local v28    # "node$iv$iv":Ljava/lang/Object;
    .restart local v0    # "node$iv$iv":Ljava/lang/Object;
    :cond_d
    :goto_a
    invoke-static/range {v18 .. v18}, Landroidx/compose/ui/node/DelegatableNodeKt;->access$pop(Landroidx/compose/runtime/collection/MutableVector;)Landroidx/compose/ui/Modifier$Node;

    move-result-object v0

    move-object/from16 v1, v19

    move/from16 v2, v23

    goto/16 :goto_1

    .line 1671
    .end local v19    # "this_$iv":Landroidx/compose/ui/node/NodeChain;
    .end local v23    # "$v$c$androidx-compose-ui-node-NodeKind$-type$0$iv":I
    .local v1, "this_$iv":Landroidx/compose/ui/node/NodeChain;
    .local v2, "$v$c$androidx-compose-ui-node-NodeKind$-type$0$iv":I
    :cond_e
    move-object/from16 v19, v1

    move/from16 v23, v2

    .line 1612
    .end local v0    # "node$iv$iv":Ljava/lang/Object;
    .end local v1    # "this_$iv":Landroidx/compose/ui/node/NodeChain;
    .end local v2    # "$v$c$androidx-compose-ui-node-NodeKind$-type$0$iv":I
    .end local v15    # "$v$c$androidx-compose-ui-node-NodeKind$-kind$0$iv$iv":I
    .end local v16    # "$this$dispatchForKind_u2d6rFNWt0$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .end local v17    # "$i$f$dispatchForKind-6rFNWt0":I
    .end local v18    # "stack$iv$iv":Ljava/lang/Object;
    .restart local v19    # "this_$iv":Landroidx/compose/ui/node/NodeChain;
    .restart local v23    # "$v$c$androidx-compose-ui-node-NodeKind$-type$0$iv":I
    nop

    .line 1619
    .end local v13    # "it$iv":Landroidx/compose/ui/Modifier$Node;
    .end local v14    # "$i$a$-tailToHead$ui-NodeChain$tailToHead$1$iv":I
    goto :goto_b

    .line 1618
    .end local v19    # "this_$iv":Landroidx/compose/ui/node/NodeChain;
    .end local v23    # "$v$c$androidx-compose-ui-node-NodeKind$-type$0$iv":I
    .restart local v1    # "this_$iv":Landroidx/compose/ui/node/NodeChain;
    .restart local v2    # "$v$c$androidx-compose-ui-node-NodeKind$-type$0$iv":I
    :cond_f
    move-object/from16 v19, v1

    move/from16 v23, v2

    .line 1621
    .end local v1    # "this_$iv":Landroidx/compose/ui/node/NodeChain;
    .end local v2    # "$v$c$androidx-compose-ui-node-NodeKind$-type$0$iv":I
    .restart local v19    # "this_$iv":Landroidx/compose/ui/node/NodeChain;
    .restart local v23    # "$v$c$androidx-compose-ui-node-NodeKind$-type$0$iv":I
    :goto_b
    nop

    .line 1627
    .end local v11    # "it$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .end local v12    # "$i$a$-tailToHead$ui-NodeChain$tailToHead$2$iv$iv":I
    nop

    .line 1672
    invoke-virtual {v10}, Landroidx/compose/ui/Modifier$Node;->getParent$ui()Landroidx/compose/ui/Modifier$Node;

    move-result-object v10

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move/from16 v2, v23

    goto/16 :goto_0

    .line 1674
    .end local v19    # "this_$iv":Landroidx/compose/ui/node/NodeChain;
    .end local v23    # "$v$c$androidx-compose-ui-node-NodeKind$-type$0$iv":I
    .restart local v1    # "this_$iv":Landroidx/compose/ui/node/NodeChain;
    .restart local v2    # "$v$c$androidx-compose-ui-node-NodeKind$-type$0$iv":I
    :cond_10
    move-object/from16 v19, v1

    move/from16 v23, v2

    .line 1622
    .end local v1    # "this_$iv":Landroidx/compose/ui/node/NodeChain;
    .end local v2    # "$v$c$androidx-compose-ui-node-NodeKind$-type$0$iv":I
    .end local v8    # "this_$iv$iv$iv":Landroidx/compose/ui/node/NodeChain;
    .end local v9    # "$i$f$tailToHead$ui":I
    .end local v10    # "node$iv$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .restart local v19    # "this_$iv":Landroidx/compose/ui/node/NodeChain;
    .restart local v23    # "$v$c$androidx-compose-ui-node-NodeKind$-type$0$iv":I
    goto :goto_c

    .line 1616
    .end local v19    # "this_$iv":Landroidx/compose/ui/node/NodeChain;
    .end local v23    # "$v$c$androidx-compose-ui-node-NodeKind$-type$0$iv":I
    .restart local v1    # "this_$iv":Landroidx/compose/ui/node/NodeChain;
    .restart local v2    # "$v$c$androidx-compose-ui-node-NodeKind$-type$0$iv":I
    :cond_11
    move-object/from16 v19, v1

    move/from16 v23, v2

    .line 1613
    .end local v1    # "this_$iv":Landroidx/compose/ui/node/NodeChain;
    .end local v2    # "$v$c$androidx-compose-ui-node-NodeKind$-type$0$iv":I
    .end local v5    # "mask$iv$iv":I
    .end local v6    # "this_$iv$iv":Landroidx/compose/ui/node/NodeChain;
    .end local v7    # "$i$f$tailToHead$ui":I
    .restart local v19    # "this_$iv":Landroidx/compose/ui/node/NodeChain;
    .restart local v23    # "$v$c$androidx-compose-ui-node-NodeKind$-type$0$iv":I
    :goto_c
    nop

    .line 495
    .end local v4    # "$i$f$tailToHead-aLcG6gQ$ui":I
    .end local v19    # "this_$iv":Landroidx/compose/ui/node/NodeChain;
    .end local v23    # "$v$c$androidx-compose-ui-node-NodeKind$-type$0$iv":I
    return-void
.end method
