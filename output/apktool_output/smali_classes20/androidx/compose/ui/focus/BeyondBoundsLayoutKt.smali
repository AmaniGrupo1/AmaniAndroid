.class public final Landroidx/compose/ui/focus/BeyondBoundsLayoutKt;
.super Ljava/lang/Object;
.source "BeyondBoundsLayout.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nBeyondBoundsLayout.kt\nKotlin\n*S Kotlin\n*F\n+ 1 BeyondBoundsLayout.kt\nandroidx/compose/ui/focus/BeyondBoundsLayoutKt\n+ 2 NodeKind.kt\nandroidx/compose/ui/node/Nodes\n+ 3 DelegatableNode.kt\nandroidx/compose/ui/node/DelegatableNodeKt\n+ 4 InlineClassHelper.kt\nandroidx/compose/ui/internal/InlineClassHelperKt\n+ 5 Modifier.kt\nandroidx/compose/ui/Modifier$Node\n+ 6 DelegatingNode.kt\nandroidx/compose/ui/node/DelegatingNode\n+ 7 MutableVector.kt\nandroidx/compose/runtime/collection/MutableVectorKt\n*L\n1#1,59:1\n120#2:60\n297#3:61\n252#3,5:62\n95#3:67\n96#3,8:72\n556#3,5:80\n298#3:85\n561#3:86\n566#3,2:88\n568#3,8:93\n576#3,9:104\n585#3,8:116\n105#3,7:124\n300#3:131\n57#4,4:68\n247#5:87\n240#6,3:90\n243#6,3:113\n1107#7:101\n1085#7,2:102\n*S KotlinDebug\n*F\n+ 1 BeyondBoundsLayout.kt\nandroidx/compose/ui/focus/BeyondBoundsLayoutKt\n*L\n39#1:60\n39#1:61\n39#1:62,5\n39#1:67\n39#1:72,8\n39#1:80,5\n39#1:85\n39#1:86\n39#1:88,2\n39#1:93,8\n39#1:104,9\n39#1:116,8\n39#1:124,7\n39#1:131\n39#1:68,4\n39#1:87\n39#1:90,3\n39#1:113,3\n39#1:101\n39#1:102,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000 \n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u001a>\u0010\u0000\u001a\u0004\u0018\u0001H\u0001\"\u0004\u0008\u0000\u0010\u0001*\u00020\u00022\u0006\u0010\u0003\u001a\u00020\u00042\u0019\u0010\u0005\u001a\u0015\u0012\u0004\u0012\u00020\u0007\u0012\u0006\u0012\u0004\u0018\u0001H\u00010\u0006\u00a2\u0006\u0002\u0008\u0008H\u0000\u00a2\u0006\u0004\u0008\t\u0010\n\u00a8\u0006\u000b"
    }
    d2 = {
        "searchBeyondBounds",
        "T",
        "Landroidx/compose/ui/focus/FocusTargetNode;",
        "direction",
        "Landroidx/compose/ui/focus/FocusDirection;",
        "block",
        "Lkotlin/Function1;",
        "Landroidx/compose/ui/layout/BeyondBoundsLayout$BeyondBoundsScope;",
        "Lkotlin/ExtensionFunctionType;",
        "searchBeyondBounds--OM-vw8",
        "(Landroidx/compose/ui/focus/FocusTargetNode;ILkotlin/jvm/functions/Function1;)Ljava/lang/Object;",
        "ui"
    }
    k = 0x2
    mv = {
        0x2,
        0x0,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method public static final searchBeyondBounds--OM-vw8(Landroidx/compose/ui/focus/FocusTargetNode;ILkotlin/jvm/functions/Function1;)Ljava/lang/Object;
    .locals 36
    .param p0, "$this$searchBeyondBounds_u2d_u2dOM_u2dvw8"    # Landroidx/compose/ui/focus/FocusTargetNode;
    .param p1, "$v$c$androidx-compose-ui-focus-FocusDirection$-direction$0"    # I
    .param p2, "block"    # Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroidx/compose/ui/focus/FocusTargetNode;",
            "I",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Landroidx/compose/ui/layout/BeyondBoundsLayout$BeyondBoundsScope;",
            "+TT;>;)TT;"
        }
    .end annotation

    .line 39
    move/from16 v0, p1

    move-object/from16 v1, p0

    check-cast v1, Landroidx/compose/ui/node/DelegatableNode;

    const/4 v2, 0x0

    .line 60
    .local v2, "$i$f$getFocusTarget-OLwlOKw":I
    const/16 v3, 0x400

    invoke-static {v3}, Landroidx/compose/ui/node/NodeKind;->constructor-impl(I)I

    move-result v2

    .line 39
    .end local v2    # "$i$f$getFocusTarget-OLwlOKw":I
    nop

    .local v1, "$this$nearestAncestor_u2d64DMado$iv":Landroidx/compose/ui/node/DelegatableNode;
    .local v2, "$v$c$androidx-compose-ui-node-NodeKind$-type$0$iv":I
    const/4 v3, 0x0

    .line 61
    .local v3, "$i$f$nearestAncestor-64DMado":I
    move v4, v2

    .local v4, "$v$c$androidx-compose-ui-node-NodeKind$-type$0$iv$iv":I
    move-object v5, v1

    .line 62
    .local v5, "$this$visitAncestors_u2dY_u2dYKmho_u24default$iv$iv":Landroidx/compose/ui/node/DelegatableNode;
    nop

    .line 64
    const/4 v6, 0x0

    .line 62
    .local v6, "includeSelf$iv$iv":Z
    const/4 v7, 0x0

    .line 66
    .local v7, "$i$f$visitAncestors-Y-YKmho":I
    move v8, v6

    .local v8, "includeSelf$iv$iv$iv":Z
    move v9, v4

    .local v9, "mask$iv$iv$iv":I
    move-object v10, v5

    .local v10, "$this$visitAncestors$iv$iv$iv":Landroidx/compose/ui/node/DelegatableNode;
    const/4 v11, 0x0

    .line 67
    .local v11, "$i$f$visitAncestors":I
    invoke-interface {v10}, Landroidx/compose/ui/node/DelegatableNode;->getNode()Landroidx/compose/ui/Modifier$Node;

    move-result-object v12

    invoke-virtual {v12}, Landroidx/compose/ui/Modifier$Node;->isAttached()Z

    move-result v12

    .local v12, "value$iv$iv$iv$iv":Z
    const/4 v13, 0x0

    .line 68
    .local v13, "$i$f$checkPrecondition":I
    if-nez v12, :cond_0

    .line 69
    const/4 v14, 0x0

    .line 67
    .local v14, "$i$a$-checkPrecondition-DelegatableNodeKt$visitAncestors$1$iv$iv$iv":I
    nop

    .line 69
    .end local v14    # "$i$a$-checkPrecondition-DelegatableNodeKt$visitAncestors$1$iv$iv$iv":I
    const-string/jumbo v14, "visitAncestors called on an unattached node"

    invoke-static {v14}, Landroidx/compose/ui/internal/InlineClassHelperKt;->throwIllegalStateException(Ljava/lang/String;)V

    .line 71
    :cond_0
    nop

    .line 72
    .end local v12    # "value$iv$iv$iv$iv":Z
    .end local v13    # "$i$f$checkPrecondition":I
    invoke-interface {v10}, Landroidx/compose/ui/node/DelegatableNode;->getNode()Landroidx/compose/ui/Modifier$Node;

    move-result-object v12

    invoke-virtual {v12}, Landroidx/compose/ui/Modifier$Node;->getParent$ui()Landroidx/compose/ui/Modifier$Node;

    move-result-object v12

    .line 73
    .local v12, "node$iv$iv$iv":Landroidx/compose/ui/Modifier$Node;
    invoke-static {v10}, Landroidx/compose/ui/node/DelegatableNodeKt;->requireLayoutNode(Landroidx/compose/ui/node/DelegatableNode;)Landroidx/compose/ui/node/LayoutNode;

    move-result-object v13

    .line 74
    .local v13, "layout$iv$iv$iv":Landroidx/compose/ui/node/LayoutNode;
    :goto_0
    if-eqz v13, :cond_12

    .line 75
    invoke-virtual {v13}, Landroidx/compose/ui/node/LayoutNode;->getNodes$ui()Landroidx/compose/ui/node/NodeChain;

    move-result-object v15

    invoke-virtual {v15}, Landroidx/compose/ui/node/NodeChain;->getHead$ui()Landroidx/compose/ui/Modifier$Node;

    move-result-object v15

    .line 76
    .local v15, "head$iv$iv$iv":Landroidx/compose/ui/Modifier$Node;
    invoke-virtual {v15}, Landroidx/compose/ui/Modifier$Node;->getAggregateChildKindSet$ui()I

    move-result v16

    and-int v16, v16, v9

    if-eqz v16, :cond_10

    .line 77
    :goto_1
    if-eqz v12, :cond_f

    .line 78
    invoke-virtual {v12}, Landroidx/compose/ui/Modifier$Node;->getKindSet$ui()I

    move-result v16

    and-int v16, v16, v9

    if-eqz v16, :cond_e

    .line 79
    move-object/from16 v16, v12

    .local v16, "it$iv$iv":Landroidx/compose/ui/Modifier$Node;
    const/16 v17, 0x0

    .line 66
    .local v17, "$i$a$-visitAncestors-DelegatableNodeKt$visitAncestors$2$iv$iv":I
    move/from16 v18, v4

    .local v18, "$v$c$androidx-compose-ui-node-NodeKind$-kind$0$iv$iv$iv":I
    move-object/from16 v19, v16

    .local v19, "$this$dispatchForKind_u2d6rFNWt0$iv$iv$iv":Landroidx/compose/ui/Modifier$Node;
    const/16 v20, 0x0

    .line 80
    .local v20, "$i$f$dispatchForKind-6rFNWt0":I
    const/16 v21, 0x0

    .line 81
    .local v21, "stack$iv$iv$iv":Ljava/lang/Object;
    const/16 v22, 0x0

    .local v22, "node$iv$iv$iv":Ljava/lang/Object;
    move-object/from16 v22, v19

    move-object/from16 v14, v22

    const/16 v22, 0x0

    .line 82
    .end local v22    # "node$iv$iv$iv":Ljava/lang/Object;
    .local v14, "node$iv$iv$iv":Ljava/lang/Object;
    :goto_2
    if-eqz v14, :cond_d

    .line 83
    move-object/from16 v23, v1

    .end local v1    # "$this$nearestAncestor_u2d64DMado$iv":Landroidx/compose/ui/node/DelegatableNode;
    .local v23, "$this$nearestAncestor_u2d64DMado$iv":Landroidx/compose/ui/node/DelegatableNode;
    instance-of v1, v14, Landroidx/compose/ui/focus/FocusTargetNode;

    if-eqz v1, :cond_1

    .line 84
    move-object v1, v14

    .local v1, "it$iv":Ljava/lang/Object;
    const/16 v24, 0x0

    .line 85
    .local v24, "$i$a$-visitAncestors-Y-YKmho$default-DelegatableNodeKt$nearestAncestor$2$iv":I
    goto/16 :goto_c

    .line 86
    .end local v1    # "it$iv":Ljava/lang/Object;
    .end local v24    # "$i$a$-visitAncestors-Y-YKmho$default-DelegatableNodeKt$nearestAncestor$2$iv":I
    :cond_1
    move/from16 v1, v18

    .local v1, "$v$c$androidx-compose-ui-node-NodeKind$-kind$0$iv$iv$iv$iv":I
    move-object/from16 v24, v14

    .local v24, "this_$iv$iv$iv$iv":Landroidx/compose/ui/Modifier$Node;
    const/16 v25, 0x0

    .line 87
    .local v25, "$i$f$isKind-H91voCI$ui":I
    invoke-virtual/range {v24 .. v24}, Landroidx/compose/ui/Modifier$Node;->getKindSet$ui()I

    move-result v26

    and-int v26, v26, v1

    move/from16 v27, v1

    .end local v1    # "$v$c$androidx-compose-ui-node-NodeKind$-kind$0$iv$iv$iv$iv":I
    .local v27, "$v$c$androidx-compose-ui-node-NodeKind$-kind$0$iv$iv$iv$iv":I
    if-eqz v26, :cond_2

    const/16 v24, 0x1

    goto :goto_3

    :cond_2
    const/16 v24, 0x0

    .line 86
    .end local v24    # "this_$iv$iv$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .end local v25    # "$i$f$isKind-H91voCI$ui":I
    .end local v27    # "$v$c$androidx-compose-ui-node-NodeKind$-kind$0$iv$iv$iv$iv":I
    :goto_3
    if-eqz v24, :cond_b

    instance-of v1, v14, Landroidx/compose/ui/node/DelegatingNode;

    if-eqz v1, :cond_b

    .line 88
    const/4 v1, 0x0

    .line 89
    .local v1, "count$iv$iv$iv":I
    move-object/from16 v25, v14

    check-cast v25, Landroidx/compose/ui/node/DelegatingNode;

    .local v25, "this_$iv$iv$iv$iv":Landroidx/compose/ui/node/DelegatingNode;
    const/16 v26, 0x0

    .line 90
    .local v26, "$i$f$forEachImmediateDelegate$ui":I
    invoke-virtual/range {v25 .. v25}, Landroidx/compose/ui/node/DelegatingNode;->getDelegate$ui()Landroidx/compose/ui/Modifier$Node;

    move-result-object v27

    .line 91
    .local v27, "node$iv$iv$iv$iv":Landroidx/compose/ui/Modifier$Node;
    :goto_4
    if-eqz v27, :cond_a

    .line 92
    move-object/from16 v28, v27

    .local v28, "next$iv$iv$iv":Landroidx/compose/ui/Modifier$Node;
    const/16 v29, 0x0

    .line 93
    .local v29, "$i$a$-forEachImmediateDelegate$ui-DelegatableNodeKt$dispatchForKind$1$iv$iv$iv":I
    move/from16 v30, v18

    .local v30, "$v$c$androidx-compose-ui-node-NodeKind$-kind$0$iv$iv$iv$iv":I
    move-object/from16 v31, v28

    .local v31, "this_$iv$iv$iv$iv":Landroidx/compose/ui/Modifier$Node;
    const/16 v32, 0x0

    .line 87
    .local v32, "$i$f$isKind-H91voCI$ui":I
    invoke-virtual/range {v31 .. v31}, Landroidx/compose/ui/Modifier$Node;->getKindSet$ui()I

    move-result v33

    and-int v33, v33, v30

    if-eqz v33, :cond_3

    const/16 v30, 0x1

    goto :goto_5

    :cond_3
    const/16 v30, 0x0

    .line 93
    .end local v30    # "$v$c$androidx-compose-ui-node-NodeKind$-kind$0$iv$iv$iv$iv":I
    .end local v31    # "this_$iv$iv$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .end local v32    # "$i$f$isKind-H91voCI$ui":I
    :goto_5
    if-eqz v30, :cond_9

    .line 94
    add-int/lit8 v1, v1, 0x1

    .line 95
    move/from16 v30, v2

    const/4 v2, 0x1

    .end local v2    # "$v$c$androidx-compose-ui-node-NodeKind$-type$0$iv":I
    .local v30, "$v$c$androidx-compose-ui-node-NodeKind$-type$0$iv":I
    if-ne v1, v2, :cond_4

    .line 96
    move-object/from16 v14, v28

    move/from16 v34, v3

    move/from16 v35, v4

    move-object/from16 v3, v28

    const/4 v4, 0x0

    goto :goto_8

    .line 100
    :cond_4
    if-nez v21, :cond_5

    const/4 v2, 0x0

    .line 101
    .local v2, "$i$f$mutableVectorOf":I
    nop

    .line 102
    move/from16 v31, v1

    .end local v1    # "count$iv$iv$iv":I
    .local v31, "count$iv$iv$iv":I
    const/16 v1, 0x10

    .local v1, "capacity$iv$iv$iv$iv$iv":I
    const/16 v32, 0x0

    .line 103
    .local v32, "$i$f$MutableVector":I
    move/from16 v33, v2

    .end local v2    # "$i$f$mutableVectorOf":I
    .local v33, "$i$f$mutableVectorOf":I
    new-instance v2, Landroidx/compose/runtime/collection/MutableVector;

    move/from16 v34, v3

    .end local v3    # "$i$f$nearestAncestor-64DMado":I
    .local v34, "$i$f$nearestAncestor-64DMado":I
    new-array v3, v1, [Landroidx/compose/ui/Modifier$Node;

    move/from16 v35, v4

    const/4 v4, 0x0

    .end local v4    # "$v$c$androidx-compose-ui-node-NodeKind$-type$0$iv$iv":I
    .local v35, "$v$c$androidx-compose-ui-node-NodeKind$-type$0$iv$iv":I
    invoke-direct {v2, v3, v4}, Landroidx/compose/runtime/collection/MutableVector;-><init>([Ljava/lang/Object;I)V

    .line 101
    .end local v1    # "capacity$iv$iv$iv$iv$iv":I
    .end local v32    # "$i$f$MutableVector":I
    goto :goto_6

    .line 100
    .end local v31    # "count$iv$iv$iv":I
    .end local v33    # "$i$f$mutableVectorOf":I
    .end local v34    # "$i$f$nearestAncestor-64DMado":I
    .end local v35    # "$v$c$androidx-compose-ui-node-NodeKind$-type$0$iv$iv":I
    .local v1, "count$iv$iv$iv":I
    .restart local v3    # "$i$f$nearestAncestor-64DMado":I
    .restart local v4    # "$v$c$androidx-compose-ui-node-NodeKind$-type$0$iv$iv":I
    :cond_5
    move/from16 v31, v1

    move/from16 v34, v3

    move/from16 v35, v4

    const/4 v4, 0x0

    .end local v1    # "count$iv$iv$iv":I
    .end local v3    # "$i$f$nearestAncestor-64DMado":I
    .end local v4    # "$v$c$androidx-compose-ui-node-NodeKind$-type$0$iv$iv":I
    .restart local v31    # "count$iv$iv$iv":I
    .restart local v34    # "$i$f$nearestAncestor-64DMado":I
    .restart local v35    # "$v$c$androidx-compose-ui-node-NodeKind$-type$0$iv$iv":I
    move-object/from16 v2, v21

    :goto_6
    nop

    .line 104
    .end local v21    # "stack$iv$iv$iv":Ljava/lang/Object;
    .local v2, "stack$iv$iv$iv":Ljava/lang/Object;
    move-object v1, v14

    .line 105
    .local v1, "theNode$iv$iv$iv":Landroidx/compose/ui/Modifier$Node;
    if-eqz v1, :cond_7

    .line 106
    if-eqz v2, :cond_6

    invoke-virtual {v2, v1}, Landroidx/compose/runtime/collection/MutableVector;->add(Ljava/lang/Object;)Z

    .line 107
    :cond_6
    const/4 v3, 0x0

    move-object v14, v3

    .line 109
    :cond_7
    if-eqz v2, :cond_8

    move-object/from16 v3, v28

    .end local v28    # "next$iv$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .local v3, "next$iv$iv$iv":Landroidx/compose/ui/Modifier$Node;
    invoke-virtual {v2, v3}, Landroidx/compose/runtime/collection/MutableVector;->add(Ljava/lang/Object;)Z

    goto :goto_7

    .end local v3    # "next$iv$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .restart local v28    # "next$iv$iv$iv":Landroidx/compose/ui/Modifier$Node;
    :cond_8
    move-object/from16 v3, v28

    .line 112
    .end local v1    # "theNode$iv$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .end local v28    # "next$iv$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .restart local v3    # "next$iv$iv$iv":Landroidx/compose/ui/Modifier$Node;
    :goto_7
    move-object/from16 v21, v2

    move/from16 v1, v31

    goto :goto_8

    .line 93
    .end local v30    # "$v$c$androidx-compose-ui-node-NodeKind$-type$0$iv":I
    .end local v31    # "count$iv$iv$iv":I
    .end local v34    # "$i$f$nearestAncestor-64DMado":I
    .end local v35    # "$v$c$androidx-compose-ui-node-NodeKind$-type$0$iv$iv":I
    .local v1, "count$iv$iv$iv":I
    .local v2, "$v$c$androidx-compose-ui-node-NodeKind$-type$0$iv":I
    .local v3, "$i$f$nearestAncestor-64DMado":I
    .restart local v4    # "$v$c$androidx-compose-ui-node-NodeKind$-type$0$iv$iv":I
    .restart local v21    # "stack$iv$iv$iv":Ljava/lang/Object;
    .restart local v28    # "next$iv$iv$iv":Landroidx/compose/ui/Modifier$Node;
    :cond_9
    move/from16 v30, v2

    move/from16 v34, v3

    move/from16 v35, v4

    move-object/from16 v3, v28

    const/4 v4, 0x0

    .line 112
    .end local v2    # "$v$c$androidx-compose-ui-node-NodeKind$-type$0$iv":I
    .end local v4    # "$v$c$androidx-compose-ui-node-NodeKind$-type$0$iv$iv":I
    .end local v28    # "next$iv$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .local v3, "next$iv$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .restart local v30    # "$v$c$androidx-compose-ui-node-NodeKind$-type$0$iv":I
    .restart local v34    # "$i$f$nearestAncestor-64DMado":I
    .restart local v35    # "$v$c$androidx-compose-ui-node-NodeKind$-type$0$iv$iv":I
    :goto_8
    nop

    .line 92
    .end local v3    # "next$iv$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .end local v29    # "$i$a$-forEachImmediateDelegate$ui-DelegatableNodeKt$dispatchForKind$1$iv$iv$iv":I
    nop

    .line 113
    invoke-virtual/range {v27 .. v27}, Landroidx/compose/ui/Modifier$Node;->getChild$ui()Landroidx/compose/ui/Modifier$Node;

    move-result-object v27

    move/from16 v2, v30

    move/from16 v3, v34

    move/from16 v4, v35

    goto :goto_4

    .line 115
    .end local v30    # "$v$c$androidx-compose-ui-node-NodeKind$-type$0$iv":I
    .end local v34    # "$i$f$nearestAncestor-64DMado":I
    .end local v35    # "$v$c$androidx-compose-ui-node-NodeKind$-type$0$iv$iv":I
    .restart local v2    # "$v$c$androidx-compose-ui-node-NodeKind$-type$0$iv":I
    .local v3, "$i$f$nearestAncestor-64DMado":I
    .restart local v4    # "$v$c$androidx-compose-ui-node-NodeKind$-type$0$iv$iv":I
    :cond_a
    move/from16 v30, v2

    move/from16 v34, v3

    move/from16 v35, v4

    .line 116
    .end local v2    # "$v$c$androidx-compose-ui-node-NodeKind$-type$0$iv":I
    .end local v3    # "$i$f$nearestAncestor-64DMado":I
    .end local v4    # "$v$c$androidx-compose-ui-node-NodeKind$-type$0$iv$iv":I
    .end local v25    # "this_$iv$iv$iv$iv":Landroidx/compose/ui/node/DelegatingNode;
    .end local v26    # "$i$f$forEachImmediateDelegate$ui":I
    .end local v27    # "node$iv$iv$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .restart local v30    # "$v$c$androidx-compose-ui-node-NodeKind$-type$0$iv":I
    .restart local v34    # "$i$f$nearestAncestor-64DMado":I
    .restart local v35    # "$v$c$androidx-compose-ui-node-NodeKind$-type$0$iv$iv":I
    const/4 v2, 0x1

    if-ne v1, v2, :cond_c

    .line 118
    move-object/from16 v1, v23

    move/from16 v2, v30

    move/from16 v3, v34

    move/from16 v4, v35

    goto/16 :goto_2

    .line 86
    .end local v1    # "count$iv$iv$iv":I
    .end local v30    # "$v$c$androidx-compose-ui-node-NodeKind$-type$0$iv":I
    .end local v34    # "$i$f$nearestAncestor-64DMado":I
    .end local v35    # "$v$c$androidx-compose-ui-node-NodeKind$-type$0$iv$iv":I
    .restart local v2    # "$v$c$androidx-compose-ui-node-NodeKind$-type$0$iv":I
    .restart local v3    # "$i$f$nearestAncestor-64DMado":I
    .restart local v4    # "$v$c$androidx-compose-ui-node-NodeKind$-type$0$iv$iv":I
    :cond_b
    move/from16 v30, v2

    move/from16 v34, v3

    move/from16 v35, v4

    .line 121
    .end local v2    # "$v$c$androidx-compose-ui-node-NodeKind$-type$0$iv":I
    .end local v3    # "$i$f$nearestAncestor-64DMado":I
    .end local v4    # "$v$c$androidx-compose-ui-node-NodeKind$-type$0$iv$iv":I
    .restart local v30    # "$v$c$androidx-compose-ui-node-NodeKind$-type$0$iv":I
    .restart local v34    # "$i$f$nearestAncestor-64DMado":I
    .restart local v35    # "$v$c$androidx-compose-ui-node-NodeKind$-type$0$iv$iv":I
    :cond_c
    invoke-static/range {v21 .. v21}, Landroidx/compose/ui/node/DelegatableNodeKt;->access$pop(Landroidx/compose/runtime/collection/MutableVector;)Landroidx/compose/ui/Modifier$Node;

    move-result-object v14

    move-object/from16 v1, v23

    move/from16 v2, v30

    move/from16 v3, v34

    move/from16 v4, v35

    goto/16 :goto_2

    .line 123
    .end local v23    # "$this$nearestAncestor_u2d64DMado$iv":Landroidx/compose/ui/node/DelegatableNode;
    .end local v30    # "$v$c$androidx-compose-ui-node-NodeKind$-type$0$iv":I
    .end local v34    # "$i$f$nearestAncestor-64DMado":I
    .end local v35    # "$v$c$androidx-compose-ui-node-NodeKind$-type$0$iv$iv":I
    .local v1, "$this$nearestAncestor_u2d64DMado$iv":Landroidx/compose/ui/node/DelegatableNode;
    .restart local v2    # "$v$c$androidx-compose-ui-node-NodeKind$-type$0$iv":I
    .restart local v3    # "$i$f$nearestAncestor-64DMado":I
    .restart local v4    # "$v$c$androidx-compose-ui-node-NodeKind$-type$0$iv$iv":I
    :cond_d
    move-object/from16 v23, v1

    move/from16 v30, v2

    move/from16 v34, v3

    move/from16 v35, v4

    .line 66
    .end local v1    # "$this$nearestAncestor_u2d64DMado$iv":Landroidx/compose/ui/node/DelegatableNode;
    .end local v2    # "$v$c$androidx-compose-ui-node-NodeKind$-type$0$iv":I
    .end local v3    # "$i$f$nearestAncestor-64DMado":I
    .end local v4    # "$v$c$androidx-compose-ui-node-NodeKind$-type$0$iv$iv":I
    .end local v14    # "node$iv$iv$iv":Ljava/lang/Object;
    .end local v18    # "$v$c$androidx-compose-ui-node-NodeKind$-kind$0$iv$iv$iv":I
    .end local v19    # "$this$dispatchForKind_u2d6rFNWt0$iv$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .end local v20    # "$i$f$dispatchForKind-6rFNWt0":I
    .end local v21    # "stack$iv$iv$iv":Ljava/lang/Object;
    .restart local v23    # "$this$nearestAncestor_u2d64DMado$iv":Landroidx/compose/ui/node/DelegatableNode;
    .restart local v30    # "$v$c$androidx-compose-ui-node-NodeKind$-type$0$iv":I
    .restart local v34    # "$i$f$nearestAncestor-64DMado":I
    .restart local v35    # "$v$c$androidx-compose-ui-node-NodeKind$-type$0$iv$iv":I
    nop

    .line 79
    .end local v16    # "it$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .end local v17    # "$i$a$-visitAncestors-DelegatableNodeKt$visitAncestors$2$iv$iv":I
    goto :goto_9

    .line 78
    .end local v23    # "$this$nearestAncestor_u2d64DMado$iv":Landroidx/compose/ui/node/DelegatableNode;
    .end local v30    # "$v$c$androidx-compose-ui-node-NodeKind$-type$0$iv":I
    .end local v34    # "$i$f$nearestAncestor-64DMado":I
    .end local v35    # "$v$c$androidx-compose-ui-node-NodeKind$-type$0$iv$iv":I
    .restart local v1    # "$this$nearestAncestor_u2d64DMado$iv":Landroidx/compose/ui/node/DelegatableNode;
    .restart local v2    # "$v$c$androidx-compose-ui-node-NodeKind$-type$0$iv":I
    .restart local v3    # "$i$f$nearestAncestor-64DMado":I
    .restart local v4    # "$v$c$androidx-compose-ui-node-NodeKind$-type$0$iv$iv":I
    :cond_e
    move-object/from16 v23, v1

    move/from16 v30, v2

    move/from16 v34, v3

    move/from16 v35, v4

    const/16 v22, 0x0

    .line 124
    .end local v1    # "$this$nearestAncestor_u2d64DMado$iv":Landroidx/compose/ui/node/DelegatableNode;
    .end local v2    # "$v$c$androidx-compose-ui-node-NodeKind$-type$0$iv":I
    .end local v3    # "$i$f$nearestAncestor-64DMado":I
    .end local v4    # "$v$c$androidx-compose-ui-node-NodeKind$-type$0$iv$iv":I
    .restart local v23    # "$this$nearestAncestor_u2d64DMado$iv":Landroidx/compose/ui/node/DelegatableNode;
    .restart local v30    # "$v$c$androidx-compose-ui-node-NodeKind$-type$0$iv":I
    .restart local v34    # "$i$f$nearestAncestor-64DMado":I
    .restart local v35    # "$v$c$androidx-compose-ui-node-NodeKind$-type$0$iv$iv":I
    :goto_9
    invoke-virtual {v12}, Landroidx/compose/ui/Modifier$Node;->getParent$ui()Landroidx/compose/ui/Modifier$Node;

    move-result-object v12

    move-object/from16 v1, v23

    move/from16 v2, v30

    move/from16 v3, v34

    move/from16 v4, v35

    goto/16 :goto_1

    .line 77
    .end local v23    # "$this$nearestAncestor_u2d64DMado$iv":Landroidx/compose/ui/node/DelegatableNode;
    .end local v30    # "$v$c$androidx-compose-ui-node-NodeKind$-type$0$iv":I
    .end local v34    # "$i$f$nearestAncestor-64DMado":I
    .end local v35    # "$v$c$androidx-compose-ui-node-NodeKind$-type$0$iv$iv":I
    .restart local v1    # "$this$nearestAncestor_u2d64DMado$iv":Landroidx/compose/ui/node/DelegatableNode;
    .restart local v2    # "$v$c$androidx-compose-ui-node-NodeKind$-type$0$iv":I
    .restart local v3    # "$i$f$nearestAncestor-64DMado":I
    .restart local v4    # "$v$c$androidx-compose-ui-node-NodeKind$-type$0$iv$iv":I
    :cond_f
    move-object/from16 v23, v1

    move/from16 v30, v2

    move/from16 v34, v3

    move/from16 v35, v4

    const/16 v22, 0x0

    .end local v1    # "$this$nearestAncestor_u2d64DMado$iv":Landroidx/compose/ui/node/DelegatableNode;
    .end local v2    # "$v$c$androidx-compose-ui-node-NodeKind$-type$0$iv":I
    .end local v3    # "$i$f$nearestAncestor-64DMado":I
    .end local v4    # "$v$c$androidx-compose-ui-node-NodeKind$-type$0$iv$iv":I
    .restart local v23    # "$this$nearestAncestor_u2d64DMado$iv":Landroidx/compose/ui/node/DelegatableNode;
    .restart local v30    # "$v$c$androidx-compose-ui-node-NodeKind$-type$0$iv":I
    .restart local v34    # "$i$f$nearestAncestor-64DMado":I
    .restart local v35    # "$v$c$androidx-compose-ui-node-NodeKind$-type$0$iv$iv":I
    goto :goto_a

    .line 76
    .end local v23    # "$this$nearestAncestor_u2d64DMado$iv":Landroidx/compose/ui/node/DelegatableNode;
    .end local v30    # "$v$c$androidx-compose-ui-node-NodeKind$-type$0$iv":I
    .end local v34    # "$i$f$nearestAncestor-64DMado":I
    .end local v35    # "$v$c$androidx-compose-ui-node-NodeKind$-type$0$iv$iv":I
    .restart local v1    # "$this$nearestAncestor_u2d64DMado$iv":Landroidx/compose/ui/node/DelegatableNode;
    .restart local v2    # "$v$c$androidx-compose-ui-node-NodeKind$-type$0$iv":I
    .restart local v3    # "$i$f$nearestAncestor-64DMado":I
    .restart local v4    # "$v$c$androidx-compose-ui-node-NodeKind$-type$0$iv$iv":I
    :cond_10
    move-object/from16 v23, v1

    move/from16 v30, v2

    move/from16 v34, v3

    move/from16 v35, v4

    const/16 v22, 0x0

    .line 127
    .end local v1    # "$this$nearestAncestor_u2d64DMado$iv":Landroidx/compose/ui/node/DelegatableNode;
    .end local v2    # "$v$c$androidx-compose-ui-node-NodeKind$-type$0$iv":I
    .end local v3    # "$i$f$nearestAncestor-64DMado":I
    .end local v4    # "$v$c$androidx-compose-ui-node-NodeKind$-type$0$iv$iv":I
    .restart local v23    # "$this$nearestAncestor_u2d64DMado$iv":Landroidx/compose/ui/node/DelegatableNode;
    .restart local v30    # "$v$c$androidx-compose-ui-node-NodeKind$-type$0$iv":I
    .restart local v34    # "$i$f$nearestAncestor-64DMado":I
    .restart local v35    # "$v$c$androidx-compose-ui-node-NodeKind$-type$0$iv$iv":I
    :goto_a
    invoke-virtual {v13}, Landroidx/compose/ui/node/LayoutNode;->getParent$ui()Landroidx/compose/ui/node/LayoutNode;

    move-result-object v13

    .line 128
    if-eqz v13, :cond_11

    invoke-virtual {v13}, Landroidx/compose/ui/node/LayoutNode;->getNodes$ui()Landroidx/compose/ui/node/NodeChain;

    move-result-object v1

    if-eqz v1, :cond_11

    invoke-virtual {v1}, Landroidx/compose/ui/node/NodeChain;->getTail$ui()Landroidx/compose/ui/Modifier$Node;

    move-result-object v14

    goto :goto_b

    :cond_11
    move-object/from16 v14, v22

    :goto_b
    move-object v12, v14

    move-object/from16 v1, v23

    move/from16 v2, v30

    move/from16 v3, v34

    move/from16 v4, v35

    .end local v15    # "head$iv$iv$iv":Landroidx/compose/ui/Modifier$Node;
    goto/16 :goto_0

    .line 130
    .end local v23    # "$this$nearestAncestor_u2d64DMado$iv":Landroidx/compose/ui/node/DelegatableNode;
    .end local v30    # "$v$c$androidx-compose-ui-node-NodeKind$-type$0$iv":I
    .end local v34    # "$i$f$nearestAncestor-64DMado":I
    .end local v35    # "$v$c$androidx-compose-ui-node-NodeKind$-type$0$iv$iv":I
    .restart local v1    # "$this$nearestAncestor_u2d64DMado$iv":Landroidx/compose/ui/node/DelegatableNode;
    .restart local v2    # "$v$c$androidx-compose-ui-node-NodeKind$-type$0$iv":I
    .restart local v3    # "$i$f$nearestAncestor-64DMado":I
    .restart local v4    # "$v$c$androidx-compose-ui-node-NodeKind$-type$0$iv$iv":I
    :cond_12
    move-object/from16 v23, v1

    move/from16 v30, v2

    move/from16 v34, v3

    move/from16 v35, v4

    const/16 v22, 0x0

    .line 66
    .end local v1    # "$this$nearestAncestor_u2d64DMado$iv":Landroidx/compose/ui/node/DelegatableNode;
    .end local v2    # "$v$c$androidx-compose-ui-node-NodeKind$-type$0$iv":I
    .end local v3    # "$i$f$nearestAncestor-64DMado":I
    .end local v4    # "$v$c$androidx-compose-ui-node-NodeKind$-type$0$iv$iv":I
    .end local v8    # "includeSelf$iv$iv$iv":Z
    .end local v9    # "mask$iv$iv$iv":I
    .end local v10    # "$this$visitAncestors$iv$iv$iv":Landroidx/compose/ui/node/DelegatableNode;
    .end local v11    # "$i$f$visitAncestors":I
    .end local v12    # "node$iv$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .end local v13    # "layout$iv$iv$iv":Landroidx/compose/ui/node/LayoutNode;
    .restart local v23    # "$this$nearestAncestor_u2d64DMado$iv":Landroidx/compose/ui/node/DelegatableNode;
    .restart local v30    # "$v$c$androidx-compose-ui-node-NodeKind$-type$0$iv":I
    .restart local v34    # "$i$f$nearestAncestor-64DMado":I
    .restart local v35    # "$v$c$androidx-compose-ui-node-NodeKind$-type$0$iv$iv":I
    nop

    .line 131
    .end local v5    # "$this$visitAncestors_u2dY_u2dYKmho_u24default$iv$iv":Landroidx/compose/ui/node/DelegatableNode;
    .end local v6    # "includeSelf$iv$iv":Z
    .end local v7    # "$i$f$visitAncestors-Y-YKmho":I
    .end local v35    # "$v$c$androidx-compose-ui-node-NodeKind$-type$0$iv$iv":I
    move-object/from16 v1, v22

    .line 39
    .end local v23    # "$this$nearestAncestor_u2d64DMado$iv":Landroidx/compose/ui/node/DelegatableNode;
    .end local v30    # "$v$c$androidx-compose-ui-node-NodeKind$-type$0$iv":I
    .end local v34    # "$i$f$nearestAncestor-64DMado":I
    :goto_c
    check-cast v1, Landroidx/compose/ui/focus/FocusTargetNode;

    if-eqz v1, :cond_14

    .local v1, "it":Landroidx/compose/ui/focus/FocusTargetNode;
    const/4 v2, 0x0

    .line 40
    .local v2, "$i$a$-let-BeyondBoundsLayoutKt$searchBeyondBounds$1":I
    invoke-virtual {v1}, Landroidx/compose/ui/focus/FocusTargetNode;->getBeyondBoundsLayoutParent()Landroidx/compose/ui/layout/BeyondBoundsLayout;

    move-result-object v3

    invoke-virtual/range {p0 .. p0}, Landroidx/compose/ui/focus/FocusTargetNode;->getBeyondBoundsLayoutParent()Landroidx/compose/ui/layout/BeyondBoundsLayout;

    move-result-object v4

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_13

    .line 41
    return-object v22

    .line 43
    :cond_13
    nop

    .line 39
    .end local v1    # "it":Landroidx/compose/ui/focus/FocusTargetNode;
    .end local v2    # "$i$a$-let-BeyondBoundsLayoutKt$searchBeyondBounds$1":I
    nop

    .line 45
    :cond_14
    invoke-virtual/range {p0 .. p0}, Landroidx/compose/ui/focus/FocusTargetNode;->getBeyondBoundsLayoutParent()Landroidx/compose/ui/layout/BeyondBoundsLayout;

    move-result-object v1

    if-eqz v1, :cond_1b

    .line 47
    nop

    .line 48
    sget-object v2, Landroidx/compose/ui/focus/FocusDirection;->Companion:Landroidx/compose/ui/focus/FocusDirection$Companion;

    invoke-virtual {v2}, Landroidx/compose/ui/focus/FocusDirection$Companion;->getUp-dhqQ-8s()I

    move-result v2

    invoke-static {v0, v2}, Landroidx/compose/ui/focus/FocusDirection;->equals-impl0(II)Z

    move-result v2

    if-eqz v2, :cond_15

    sget-object v2, Landroidx/compose/ui/layout/BeyondBoundsLayout$LayoutDirection;->Companion:Landroidx/compose/ui/layout/BeyondBoundsLayout$LayoutDirection$Companion;

    invoke-virtual {v2}, Landroidx/compose/ui/layout/BeyondBoundsLayout$LayoutDirection$Companion;->getAbove-hoxUOeE()I

    move-result v2

    goto :goto_d

    .line 49
    :cond_15
    sget-object v2, Landroidx/compose/ui/focus/FocusDirection;->Companion:Landroidx/compose/ui/focus/FocusDirection$Companion;

    invoke-virtual {v2}, Landroidx/compose/ui/focus/FocusDirection$Companion;->getDown-dhqQ-8s()I

    move-result v2

    invoke-static {v0, v2}, Landroidx/compose/ui/focus/FocusDirection;->equals-impl0(II)Z

    move-result v2

    if-eqz v2, :cond_16

    sget-object v2, Landroidx/compose/ui/layout/BeyondBoundsLayout$LayoutDirection;->Companion:Landroidx/compose/ui/layout/BeyondBoundsLayout$LayoutDirection$Companion;

    invoke-virtual {v2}, Landroidx/compose/ui/layout/BeyondBoundsLayout$LayoutDirection$Companion;->getBelow-hoxUOeE()I

    move-result v2

    goto :goto_d

    .line 50
    :cond_16
    sget-object v2, Landroidx/compose/ui/focus/FocusDirection;->Companion:Landroidx/compose/ui/focus/FocusDirection$Companion;

    invoke-virtual {v2}, Landroidx/compose/ui/focus/FocusDirection$Companion;->getLeft-dhqQ-8s()I

    move-result v2

    invoke-static {v0, v2}, Landroidx/compose/ui/focus/FocusDirection;->equals-impl0(II)Z

    move-result v2

    if-eqz v2, :cond_17

    sget-object v2, Landroidx/compose/ui/layout/BeyondBoundsLayout$LayoutDirection;->Companion:Landroidx/compose/ui/layout/BeyondBoundsLayout$LayoutDirection$Companion;

    invoke-virtual {v2}, Landroidx/compose/ui/layout/BeyondBoundsLayout$LayoutDirection$Companion;->getLeft-hoxUOeE()I

    move-result v2

    goto :goto_d

    .line 51
    :cond_17
    sget-object v2, Landroidx/compose/ui/focus/FocusDirection;->Companion:Landroidx/compose/ui/focus/FocusDirection$Companion;

    invoke-virtual {v2}, Landroidx/compose/ui/focus/FocusDirection$Companion;->getRight-dhqQ-8s()I

    move-result v2

    invoke-static {v0, v2}, Landroidx/compose/ui/focus/FocusDirection;->equals-impl0(II)Z

    move-result v2

    if-eqz v2, :cond_18

    sget-object v2, Landroidx/compose/ui/layout/BeyondBoundsLayout$LayoutDirection;->Companion:Landroidx/compose/ui/layout/BeyondBoundsLayout$LayoutDirection$Companion;

    invoke-virtual {v2}, Landroidx/compose/ui/layout/BeyondBoundsLayout$LayoutDirection$Companion;->getRight-hoxUOeE()I

    move-result v2

    goto :goto_d

    .line 52
    :cond_18
    sget-object v2, Landroidx/compose/ui/focus/FocusDirection;->Companion:Landroidx/compose/ui/focus/FocusDirection$Companion;

    invoke-virtual {v2}, Landroidx/compose/ui/focus/FocusDirection$Companion;->getNext-dhqQ-8s()I

    move-result v2

    invoke-static {v0, v2}, Landroidx/compose/ui/focus/FocusDirection;->equals-impl0(II)Z

    move-result v2

    if-eqz v2, :cond_19

    sget-object v2, Landroidx/compose/ui/layout/BeyondBoundsLayout$LayoutDirection;->Companion:Landroidx/compose/ui/layout/BeyondBoundsLayout$LayoutDirection$Companion;

    invoke-virtual {v2}, Landroidx/compose/ui/layout/BeyondBoundsLayout$LayoutDirection$Companion;->getAfter-hoxUOeE()I

    move-result v2

    goto :goto_d

    .line 53
    :cond_19
    sget-object v2, Landroidx/compose/ui/focus/FocusDirection;->Companion:Landroidx/compose/ui/focus/FocusDirection$Companion;

    invoke-virtual {v2}, Landroidx/compose/ui/focus/FocusDirection$Companion;->getPrevious-dhqQ-8s()I

    move-result v2

    invoke-static {v0, v2}, Landroidx/compose/ui/focus/FocusDirection;->equals-impl0(II)Z

    move-result v2

    if-eqz v2, :cond_1a

    sget-object v2, Landroidx/compose/ui/layout/BeyondBoundsLayout$LayoutDirection;->Companion:Landroidx/compose/ui/layout/BeyondBoundsLayout$LayoutDirection$Companion;

    invoke-virtual {v2}, Landroidx/compose/ui/layout/BeyondBoundsLayout$LayoutDirection$Companion;->getBefore-hoxUOeE()I

    move-result v2

    .line 56
    :goto_d
    nop

    .line 45
    move-object/from16 v3, p2

    invoke-interface {v1, v2, v3}, Landroidx/compose/ui/layout/BeyondBoundsLayout;->layout-o7g1Pn8(ILkotlin/jvm/functions/Function1;)Ljava/lang/Object;

    move-result-object v14

    goto :goto_e

    .line 53
    :cond_1a
    move-object/from16 v3, p2

    new-instance v1, Ljava/lang/IllegalStateException;

    .line 54
    const-string v2, "Unsupported direction for beyond bounds layout"

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 45
    :cond_1b
    move-object/from16 v3, p2

    move-object/from16 v14, v22

    :goto_e
    return-object v14
.end method
