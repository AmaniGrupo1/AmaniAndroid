.class public final Landroidx/compose/ui/focus/FocusPropertiesModifierNodeKt;
.super Ljava/lang/Object;
.source "FocusPropertiesModifierNode.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nFocusPropertiesModifierNode.kt\nKotlin\n*S Kotlin\n*F\n+ 1 FocusPropertiesModifierNode.kt\nandroidx/compose/ui/focus/FocusPropertiesModifierNodeKt\n+ 2 NodeKind.kt\nandroidx/compose/ui/node/Nodes\n+ 3 DelegatableNode.kt\nandroidx/compose/ui/node/DelegatableNodeKt\n+ 4 InlineClassHelper.kt\nandroidx/compose/ui/internal/InlineClassHelperKt\n+ 5 MutableVector.kt\nandroidx/compose/runtime/collection/MutableVectorKt\n+ 6 MutableVector.kt\nandroidx/compose/runtime/collection/MutableVector\n+ 7 Modifier.kt\nandroidx/compose/ui/Modifier$Node\n+ 8 DelegatingNode.kt\nandroidx/compose/ui/node/DelegatingNode\n*L\n1#1,44:1\n120#2:45\n303#3,5:46\n153#3:51\n154#3:56\n155#3,3:60\n158#3:64\n159#3,9:66\n556#3,6:75\n566#3,2:82\n568#3,17:87\n585#3,8:107\n168#3,6:115\n57#4,4:52\n1107#5:57\n1085#5,2:58\n519#6:63\n44#6:65\n247#7:81\n240#8,3:84\n243#8,3:104\n*S KotlinDebug\n*F\n+ 1 FocusPropertiesModifierNode.kt\nandroidx/compose/ui/focus/FocusPropertiesModifierNodeKt\n*L\n38#1:45\n38#1:46,5\n38#1:51\n38#1:56\n38#1:60,3\n38#1:64\n38#1:66,9\n38#1:75,6\n38#1:82,2\n38#1:87,17\n38#1:107,8\n38#1:115,6\n38#1:52,4\n38#1:57\n38#1:58,2\n38#1:63\n38#1:65\n38#1:81\n38#1:84,3\n38#1:104,3\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\u001a\n\u0010\u0000\u001a\u00020\u0001*\u00020\u0002\u00a8\u0006\u0003"
    }
    d2 = {
        "invalidateFocusProperties",
        "",
        "Landroidx/compose/ui/focus/FocusPropertiesModifierNode;",
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
.method public static final invalidateFocusProperties(Landroidx/compose/ui/focus/FocusPropertiesModifierNode;)V
    .locals 32
    .param p0, "$this$invalidateFocusProperties"    # Landroidx/compose/ui/focus/FocusPropertiesModifierNode;

    .line 38
    move-object/from16 v0, p0

    check-cast v0, Landroidx/compose/ui/node/DelegatableNode;

    const/4 v1, 0x0

    .line 45
    .local v1, "$i$f$getFocusTarget-OLwlOKw":I
    const/16 v2, 0x400

    invoke-static {v2}, Landroidx/compose/ui/node/NodeKind;->constructor-impl(I)I

    move-result v1

    .line 38
    .end local v1    # "$i$f$getFocusTarget-OLwlOKw":I
    nop

    .line 46
    .local v0, "$this$visitChildren_u2dY_u2dYKmho_u24default$iv":Landroidx/compose/ui/node/DelegatableNode;
    .local v1, "$v$c$androidx-compose-ui-node-NodeKind$-type$0$iv":I
    nop

    .line 48
    const/4 v2, 0x0

    .line 46
    .local v2, "zOrder$iv":Z
    const/4 v3, 0x0

    .line 50
    .local v3, "$i$f$visitChildren-Y-YKmho":I
    move v4, v2

    .local v4, "zOrder$iv$iv":Z
    move v5, v1

    .local v5, "mask$iv$iv":I
    move-object v6, v0

    .local v6, "$this$visitChildren$iv$iv":Landroidx/compose/ui/node/DelegatableNode;
    const/4 v7, 0x0

    .line 51
    .local v7, "$i$f$visitChildren":I
    invoke-interface {v6}, Landroidx/compose/ui/node/DelegatableNode;->getNode()Landroidx/compose/ui/Modifier$Node;

    move-result-object v8

    invoke-virtual {v8}, Landroidx/compose/ui/Modifier$Node;->isAttached()Z

    move-result v8

    .local v8, "value$iv$iv$iv":Z
    const/4 v9, 0x0

    .line 52
    .local v9, "$i$f$checkPrecondition":I
    if-nez v8, :cond_0

    .line 53
    const/4 v10, 0x0

    .line 51
    .local v10, "$i$a$-checkPrecondition-DelegatableNodeKt$visitChildren$1$iv$iv":I
    nop

    .line 53
    .end local v10    # "$i$a$-checkPrecondition-DelegatableNodeKt$visitChildren$1$iv$iv":I
    const-string/jumbo v10, "visitChildren called on an unattached node"

    invoke-static {v10}, Landroidx/compose/ui/internal/InlineClassHelperKt;->throwIllegalStateException(Ljava/lang/String;)V

    .line 55
    :cond_0
    nop

    .line 56
    .end local v8    # "value$iv$iv$iv":Z
    .end local v9    # "$i$f$checkPrecondition":I
    const/4 v8, 0x0

    .line 57
    .local v8, "$i$f$mutableVectorOf":I
    nop

    .line 58
    const/16 v9, 0x10

    .local v9, "capacity$iv$iv$iv$iv":I
    const/4 v10, 0x0

    .line 59
    .local v10, "$i$f$MutableVector":I
    new-instance v11, Landroidx/compose/runtime/collection/MutableVector;

    new-array v12, v9, [Landroidx/compose/ui/Modifier$Node;

    const/4 v13, 0x0

    invoke-direct {v11, v12, v13}, Landroidx/compose/runtime/collection/MutableVector;-><init>([Ljava/lang/Object;I)V

    .line 57
    .end local v9    # "capacity$iv$iv$iv$iv":I
    .end local v10    # "$i$f$MutableVector":I
    nop

    .line 56
    .end local v8    # "$i$f$mutableVectorOf":I
    nop

    .line 60
    .local v11, "branches$iv$iv":Landroidx/compose/runtime/collection/MutableVector;
    invoke-interface {v6}, Landroidx/compose/ui/node/DelegatableNode;->getNode()Landroidx/compose/ui/Modifier$Node;

    move-result-object v8

    invoke-virtual {v8}, Landroidx/compose/ui/Modifier$Node;->getChild$ui()Landroidx/compose/ui/Modifier$Node;

    move-result-object v8

    .line 61
    .local v8, "child$iv$iv":Landroidx/compose/ui/Modifier$Node;
    if-nez v8, :cond_1

    invoke-interface {v6}, Landroidx/compose/ui/node/DelegatableNode;->getNode()Landroidx/compose/ui/Modifier$Node;

    move-result-object v9

    invoke-static {v11, v9, v4}, Landroidx/compose/ui/node/DelegatableNodeKt;->access$addLayoutNodeChildren(Landroidx/compose/runtime/collection/MutableVector;Landroidx/compose/ui/Modifier$Node;Z)V

    goto :goto_0

    :cond_1
    invoke-virtual {v11, v8}, Landroidx/compose/runtime/collection/MutableVector;->add(Ljava/lang/Object;)Z

    .line 62
    :goto_0
    move-object v9, v11

    .local v9, "this_$iv$iv$iv":Landroidx/compose/runtime/collection/MutableVector;
    const/4 v10, 0x0

    .line 63
    .local v10, "$i$f$isNotEmpty":I
    invoke-virtual {v9}, Landroidx/compose/runtime/collection/MutableVector;->getSize()I

    move-result v12

    const/4 v14, 0x1

    if-eqz v12, :cond_2

    move v9, v14

    goto :goto_1

    :cond_2
    move v9, v13

    .end local v9    # "this_$iv$iv$iv":Landroidx/compose/runtime/collection/MutableVector;
    .end local v10    # "$i$f$isNotEmpty":I
    :goto_1
    if-eqz v9, :cond_13

    .line 64
    move-object v9, v11

    .restart local v9    # "this_$iv$iv$iv":Landroidx/compose/runtime/collection/MutableVector;
    const/4 v10, 0x0

    .line 65
    .local v10, "$i$f$getLastIndex":I
    invoke-virtual {v9}, Landroidx/compose/runtime/collection/MutableVector;->getSize()I

    move-result v12

    sub-int/2addr v12, v14

    .line 64
    .end local v9    # "this_$iv$iv$iv":Landroidx/compose/runtime/collection/MutableVector;
    .end local v10    # "$i$f$getLastIndex":I
    invoke-virtual {v11, v12}, Landroidx/compose/runtime/collection/MutableVector;->removeAt(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroidx/compose/ui/Modifier$Node;

    .line 66
    .local v9, "branch$iv$iv":Landroidx/compose/ui/Modifier$Node;
    invoke-virtual {v9}, Landroidx/compose/ui/Modifier$Node;->getAggregateChildKindSet$ui()I

    move-result v10

    and-int/2addr v10, v5

    if-nez v10, :cond_3

    .line 67
    invoke-static {v11, v9, v4}, Landroidx/compose/ui/node/DelegatableNodeKt;->access$addLayoutNodeChildren(Landroidx/compose/runtime/collection/MutableVector;Landroidx/compose/ui/Modifier$Node;Z)V

    .line 69
    goto :goto_0

    .line 71
    :cond_3
    move-object v10, v9

    .line 72
    .local v10, "node$iv$iv":Landroidx/compose/ui/Modifier$Node;
    :goto_2
    if-eqz v10, :cond_12

    .line 73
    invoke-virtual {v10}, Landroidx/compose/ui/Modifier$Node;->getKindSet$ui()I

    move-result v12

    and-int/2addr v12, v5

    if-eqz v12, :cond_11

    .line 74
    move-object v12, v10

    .local v12, "it$iv":Landroidx/compose/ui/Modifier$Node;
    const/4 v15, 0x0

    .line 50
    .local v15, "$i$a$-visitChildren-DelegatableNodeKt$visitChildren$2$iv":I
    move/from16 v16, v1

    .local v16, "$v$c$androidx-compose-ui-node-NodeKind$-kind$0$iv$iv":I
    move-object/from16 v17, v12

    .local v17, "$this$dispatchForKind_u2d6rFNWt0$iv$iv":Landroidx/compose/ui/Modifier$Node;
    const/16 v18, 0x0

    .line 75
    .local v18, "$i$f$dispatchForKind-6rFNWt0":I
    const/16 v19, 0x0

    .line 76
    .local v19, "stack$iv$iv":Ljava/lang/Object;
    const/16 v20, 0x0

    .local v20, "node$iv$iv":Ljava/lang/Object;
    move-object/from16 v20, v17

    move-object/from16 v13, v20

    .line 77
    .end local v20    # "node$iv$iv":Ljava/lang/Object;
    .local v13, "node$iv$iv":Ljava/lang/Object;
    :goto_3
    if-eqz v13, :cond_10

    .line 78
    instance-of v14, v13, Landroidx/compose/ui/focus/FocusTargetNode;

    if-eqz v14, :cond_4

    .line 79
    move-object v14, v13

    check-cast v14, Landroidx/compose/ui/focus/FocusTargetNode;

    .local v14, "it":Landroidx/compose/ui/focus/FocusTargetNode;
    const/16 v21, 0x0

    .line 41
    .local v21, "$i$a$-visitChildren-Y-YKmho$default-FocusPropertiesModifierNodeKt$invalidateFocusProperties$1":I
    invoke-static {v14}, Landroidx/compose/ui/focus/FocusTargetNodeKt;->invalidateFocusTarget(Landroidx/compose/ui/focus/FocusTargetNode;)V

    .line 42
    nop

    .line 79
    .end local v14    # "it":Landroidx/compose/ui/focus/FocusTargetNode;
    .end local v21    # "$i$a$-visitChildren-Y-YKmho$default-FocusPropertiesModifierNodeKt$invalidateFocusProperties$1":I
    move-object/from16 v26, v0

    move/from16 v29, v1

    move/from16 v30, v2

    const/4 v0, 0x1

    goto/16 :goto_a

    .line 80
    :cond_4
    move/from16 v14, v16

    .local v14, "$v$c$androidx-compose-ui-node-NodeKind$-kind$0$iv$iv$iv":I
    move-object/from16 v21, v13

    .local v21, "this_$iv$iv$iv":Landroidx/compose/ui/Modifier$Node;
    const/16 v22, 0x0

    .line 81
    .local v22, "$i$f$isKind-H91voCI$ui":I
    invoke-virtual/range {v21 .. v21}, Landroidx/compose/ui/Modifier$Node;->getKindSet$ui()I

    move-result v23

    and-int v23, v23, v14

    if-eqz v23, :cond_5

    const/4 v14, 0x1

    goto :goto_4

    :cond_5
    const/4 v14, 0x0

    .line 80
    .end local v14    # "$v$c$androidx-compose-ui-node-NodeKind$-kind$0$iv$iv$iv":I
    .end local v21    # "this_$iv$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .end local v22    # "$i$f$isKind-H91voCI$ui":I
    :goto_4
    if-eqz v14, :cond_e

    instance-of v14, v13, Landroidx/compose/ui/node/DelegatingNode;

    if-eqz v14, :cond_e

    .line 82
    const/4 v14, 0x0

    .line 83
    .local v14, "count$iv$iv":I
    move-object/from16 v21, v13

    check-cast v21, Landroidx/compose/ui/node/DelegatingNode;

    .local v21, "this_$iv$iv$iv":Landroidx/compose/ui/node/DelegatingNode;
    const/16 v22, 0x0

    .line 84
    .local v22, "$i$f$forEachImmediateDelegate$ui":I
    invoke-virtual/range {v21 .. v21}, Landroidx/compose/ui/node/DelegatingNode;->getDelegate$ui()Landroidx/compose/ui/Modifier$Node;

    move-result-object v23

    .line 85
    .local v23, "node$iv$iv$iv":Landroidx/compose/ui/Modifier$Node;
    :goto_5
    if-eqz v23, :cond_d

    .line 86
    move-object/from16 v24, v23

    .local v24, "next$iv$iv":Landroidx/compose/ui/Modifier$Node;
    const/16 v25, 0x0

    .line 87
    .local v25, "$i$a$-forEachImmediateDelegate$ui-DelegatableNodeKt$dispatchForKind$1$iv$iv":I
    move/from16 v26, v16

    .local v26, "$v$c$androidx-compose-ui-node-NodeKind$-kind$0$iv$iv$iv":I
    move-object/from16 v27, v24

    .local v27, "this_$iv$iv$iv":Landroidx/compose/ui/Modifier$Node;
    const/16 v28, 0x0

    .line 81
    .local v28, "$i$f$isKind-H91voCI$ui":I
    invoke-virtual/range {v27 .. v27}, Landroidx/compose/ui/Modifier$Node;->getKindSet$ui()I

    move-result v29

    and-int v29, v29, v26

    if-eqz v29, :cond_6

    const/16 v26, 0x1

    goto :goto_6

    :cond_6
    const/16 v26, 0x0

    .line 87
    .end local v26    # "$v$c$androidx-compose-ui-node-NodeKind$-kind$0$iv$iv$iv":I
    .end local v27    # "this_$iv$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .end local v28    # "$i$f$isKind-H91voCI$ui":I
    :goto_6
    if-eqz v26, :cond_c

    .line 88
    add-int/lit8 v14, v14, 0x1

    .line 89
    move-object/from16 v26, v0

    const/4 v0, 0x1

    .end local v0    # "$this$visitChildren_u2dY_u2dYKmho_u24default$iv":Landroidx/compose/ui/node/DelegatableNode;
    .local v26, "$this$visitChildren_u2dY_u2dYKmho_u24default$iv":Landroidx/compose/ui/node/DelegatableNode;
    if-ne v14, v0, :cond_7

    .line 90
    move-object/from16 v13, v24

    move/from16 v29, v1

    move/from16 v30, v2

    move-object/from16 v0, v24

    goto :goto_9

    .line 94
    :cond_7
    if-nez v19, :cond_8

    const/4 v0, 0x0

    .line 57
    .local v0, "$i$f$mutableVectorOf":I
    nop

    .line 58
    move/from16 v27, v0

    .end local v0    # "$i$f$mutableVectorOf":I
    .local v27, "$i$f$mutableVectorOf":I
    const/16 v0, 0x10

    .local v0, "capacity$iv$iv$iv$iv":I
    const/16 v28, 0x0

    .line 59
    .local v28, "$i$f$MutableVector":I
    move/from16 v29, v1

    .end local v1    # "$v$c$androidx-compose-ui-node-NodeKind$-type$0$iv":I
    .local v29, "$v$c$androidx-compose-ui-node-NodeKind$-type$0$iv":I
    new-instance v1, Landroidx/compose/runtime/collection/MutableVector;

    move/from16 v30, v2

    .end local v2    # "zOrder$iv":Z
    .local v30, "zOrder$iv":Z
    new-array v2, v0, [Landroidx/compose/ui/Modifier$Node;

    move/from16 v31, v0

    const/4 v0, 0x0

    .end local v0    # "capacity$iv$iv$iv$iv":I
    .local v31, "capacity$iv$iv$iv$iv":I
    invoke-direct {v1, v2, v0}, Landroidx/compose/runtime/collection/MutableVector;-><init>([Ljava/lang/Object;I)V

    .line 57
    .end local v28    # "$i$f$MutableVector":I
    .end local v31    # "capacity$iv$iv$iv$iv":I
    goto :goto_7

    .line 94
    .end local v27    # "$i$f$mutableVectorOf":I
    .end local v29    # "$v$c$androidx-compose-ui-node-NodeKind$-type$0$iv":I
    .end local v30    # "zOrder$iv":Z
    .restart local v1    # "$v$c$androidx-compose-ui-node-NodeKind$-type$0$iv":I
    .restart local v2    # "zOrder$iv":Z
    :cond_8
    move/from16 v29, v1

    move/from16 v30, v2

    const/4 v0, 0x0

    .end local v1    # "$v$c$androidx-compose-ui-node-NodeKind$-type$0$iv":I
    .end local v2    # "zOrder$iv":Z
    .restart local v29    # "$v$c$androidx-compose-ui-node-NodeKind$-type$0$iv":I
    .restart local v30    # "zOrder$iv":Z
    move-object/from16 v1, v19

    :goto_7
    nop

    .line 95
    .end local v19    # "stack$iv$iv":Ljava/lang/Object;
    .local v1, "stack$iv$iv":Ljava/lang/Object;
    move-object v2, v13

    .line 96
    .local v2, "theNode$iv$iv":Landroidx/compose/ui/Modifier$Node;
    if-eqz v2, :cond_a

    .line 97
    if-eqz v1, :cond_9

    invoke-virtual {v1, v2}, Landroidx/compose/runtime/collection/MutableVector;->add(Ljava/lang/Object;)Z

    .line 98
    :cond_9
    const/4 v13, 0x0

    .line 100
    :cond_a
    if-eqz v1, :cond_b

    move-object/from16 v0, v24

    .end local v24    # "next$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .local v0, "next$iv$iv":Landroidx/compose/ui/Modifier$Node;
    invoke-virtual {v1, v0}, Landroidx/compose/runtime/collection/MutableVector;->add(Ljava/lang/Object;)Z

    goto :goto_8

    .end local v0    # "next$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .restart local v24    # "next$iv$iv":Landroidx/compose/ui/Modifier$Node;
    :cond_b
    move-object/from16 v0, v24

    .line 103
    .end local v2    # "theNode$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .end local v24    # "next$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .restart local v0    # "next$iv$iv":Landroidx/compose/ui/Modifier$Node;
    :goto_8
    move-object/from16 v19, v1

    goto :goto_9

    .line 87
    .end local v26    # "$this$visitChildren_u2dY_u2dYKmho_u24default$iv":Landroidx/compose/ui/node/DelegatableNode;
    .end local v29    # "$v$c$androidx-compose-ui-node-NodeKind$-type$0$iv":I
    .end local v30    # "zOrder$iv":Z
    .local v0, "$this$visitChildren_u2dY_u2dYKmho_u24default$iv":Landroidx/compose/ui/node/DelegatableNode;
    .local v1, "$v$c$androidx-compose-ui-node-NodeKind$-type$0$iv":I
    .local v2, "zOrder$iv":Z
    .restart local v19    # "stack$iv$iv":Ljava/lang/Object;
    .restart local v24    # "next$iv$iv":Landroidx/compose/ui/Modifier$Node;
    :cond_c
    move-object/from16 v26, v0

    move/from16 v29, v1

    move/from16 v30, v2

    move-object/from16 v0, v24

    .line 103
    .end local v1    # "$v$c$androidx-compose-ui-node-NodeKind$-type$0$iv":I
    .end local v2    # "zOrder$iv":Z
    .end local v24    # "next$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .local v0, "next$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .restart local v26    # "$this$visitChildren_u2dY_u2dYKmho_u24default$iv":Landroidx/compose/ui/node/DelegatableNode;
    .restart local v29    # "$v$c$androidx-compose-ui-node-NodeKind$-type$0$iv":I
    .restart local v30    # "zOrder$iv":Z
    :goto_9
    nop

    .line 86
    .end local v0    # "next$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .end local v25    # "$i$a$-forEachImmediateDelegate$ui-DelegatableNodeKt$dispatchForKind$1$iv$iv":I
    nop

    .line 104
    invoke-virtual/range {v23 .. v23}, Landroidx/compose/ui/Modifier$Node;->getChild$ui()Landroidx/compose/ui/Modifier$Node;

    move-result-object v23

    move-object/from16 v0, v26

    move/from16 v1, v29

    move/from16 v2, v30

    goto :goto_5

    .line 106
    .end local v26    # "$this$visitChildren_u2dY_u2dYKmho_u24default$iv":Landroidx/compose/ui/node/DelegatableNode;
    .end local v29    # "$v$c$androidx-compose-ui-node-NodeKind$-type$0$iv":I
    .end local v30    # "zOrder$iv":Z
    .local v0, "$this$visitChildren_u2dY_u2dYKmho_u24default$iv":Landroidx/compose/ui/node/DelegatableNode;
    .restart local v1    # "$v$c$androidx-compose-ui-node-NodeKind$-type$0$iv":I
    .restart local v2    # "zOrder$iv":Z
    :cond_d
    move-object/from16 v26, v0

    move/from16 v29, v1

    move/from16 v30, v2

    .line 107
    .end local v0    # "$this$visitChildren_u2dY_u2dYKmho_u24default$iv":Landroidx/compose/ui/node/DelegatableNode;
    .end local v1    # "$v$c$androidx-compose-ui-node-NodeKind$-type$0$iv":I
    .end local v2    # "zOrder$iv":Z
    .end local v21    # "this_$iv$iv$iv":Landroidx/compose/ui/node/DelegatingNode;
    .end local v22    # "$i$f$forEachImmediateDelegate$ui":I
    .end local v23    # "node$iv$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .restart local v26    # "$this$visitChildren_u2dY_u2dYKmho_u24default$iv":Landroidx/compose/ui/node/DelegatableNode;
    .restart local v29    # "$v$c$androidx-compose-ui-node-NodeKind$-type$0$iv":I
    .restart local v30    # "zOrder$iv":Z
    const/4 v0, 0x1

    if-ne v14, v0, :cond_f

    .line 109
    move v14, v0

    move-object/from16 v0, v26

    move/from16 v1, v29

    move/from16 v2, v30

    goto/16 :goto_3

    .line 80
    .end local v14    # "count$iv$iv":I
    .end local v26    # "$this$visitChildren_u2dY_u2dYKmho_u24default$iv":Landroidx/compose/ui/node/DelegatableNode;
    .end local v29    # "$v$c$androidx-compose-ui-node-NodeKind$-type$0$iv":I
    .end local v30    # "zOrder$iv":Z
    .restart local v0    # "$this$visitChildren_u2dY_u2dYKmho_u24default$iv":Landroidx/compose/ui/node/DelegatableNode;
    .restart local v1    # "$v$c$androidx-compose-ui-node-NodeKind$-type$0$iv":I
    .restart local v2    # "zOrder$iv":Z
    :cond_e
    move-object/from16 v26, v0

    move/from16 v29, v1

    move/from16 v30, v2

    const/4 v0, 0x1

    .line 112
    .end local v0    # "$this$visitChildren_u2dY_u2dYKmho_u24default$iv":Landroidx/compose/ui/node/DelegatableNode;
    .end local v1    # "$v$c$androidx-compose-ui-node-NodeKind$-type$0$iv":I
    .end local v2    # "zOrder$iv":Z
    .restart local v26    # "$this$visitChildren_u2dY_u2dYKmho_u24default$iv":Landroidx/compose/ui/node/DelegatableNode;
    .restart local v29    # "$v$c$androidx-compose-ui-node-NodeKind$-type$0$iv":I
    .restart local v30    # "zOrder$iv":Z
    :cond_f
    :goto_a
    invoke-static/range {v19 .. v19}, Landroidx/compose/ui/node/DelegatableNodeKt;->access$pop(Landroidx/compose/runtime/collection/MutableVector;)Landroidx/compose/ui/Modifier$Node;

    move-result-object v13

    move v14, v0

    move-object/from16 v0, v26

    move/from16 v1, v29

    move/from16 v2, v30

    goto/16 :goto_3

    .line 114
    .end local v26    # "$this$visitChildren_u2dY_u2dYKmho_u24default$iv":Landroidx/compose/ui/node/DelegatableNode;
    .end local v29    # "$v$c$androidx-compose-ui-node-NodeKind$-type$0$iv":I
    .end local v30    # "zOrder$iv":Z
    .restart local v0    # "$this$visitChildren_u2dY_u2dYKmho_u24default$iv":Landroidx/compose/ui/node/DelegatableNode;
    .restart local v1    # "$v$c$androidx-compose-ui-node-NodeKind$-type$0$iv":I
    .restart local v2    # "zOrder$iv":Z
    :cond_10
    move-object/from16 v26, v0

    move/from16 v29, v1

    move/from16 v30, v2

    .line 50
    .end local v0    # "$this$visitChildren_u2dY_u2dYKmho_u24default$iv":Landroidx/compose/ui/node/DelegatableNode;
    .end local v1    # "$v$c$androidx-compose-ui-node-NodeKind$-type$0$iv":I
    .end local v2    # "zOrder$iv":Z
    .end local v13    # "node$iv$iv":Ljava/lang/Object;
    .end local v16    # "$v$c$androidx-compose-ui-node-NodeKind$-kind$0$iv$iv":I
    .end local v17    # "$this$dispatchForKind_u2d6rFNWt0$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .end local v18    # "$i$f$dispatchForKind-6rFNWt0":I
    .end local v19    # "stack$iv$iv":Ljava/lang/Object;
    .restart local v26    # "$this$visitChildren_u2dY_u2dYKmho_u24default$iv":Landroidx/compose/ui/node/DelegatableNode;
    .restart local v29    # "$v$c$androidx-compose-ui-node-NodeKind$-type$0$iv":I
    .restart local v30    # "zOrder$iv":Z
    nop

    .line 74
    .end local v12    # "it$iv":Landroidx/compose/ui/Modifier$Node;
    .end local v15    # "$i$a$-visitChildren-DelegatableNodeKt$visitChildren$2$iv":I
    nop

    .line 115
    const/4 v13, 0x0

    goto/16 :goto_0

    .line 117
    .end local v26    # "$this$visitChildren_u2dY_u2dYKmho_u24default$iv":Landroidx/compose/ui/node/DelegatableNode;
    .end local v29    # "$v$c$androidx-compose-ui-node-NodeKind$-type$0$iv":I
    .end local v30    # "zOrder$iv":Z
    .restart local v0    # "$this$visitChildren_u2dY_u2dYKmho_u24default$iv":Landroidx/compose/ui/node/DelegatableNode;
    .restart local v1    # "$v$c$androidx-compose-ui-node-NodeKind$-type$0$iv":I
    .restart local v2    # "zOrder$iv":Z
    :cond_11
    move-object/from16 v26, v0

    move/from16 v29, v1

    move/from16 v30, v2

    move v0, v14

    .end local v0    # "$this$visitChildren_u2dY_u2dYKmho_u24default$iv":Landroidx/compose/ui/node/DelegatableNode;
    .end local v1    # "$v$c$androidx-compose-ui-node-NodeKind$-type$0$iv":I
    .end local v2    # "zOrder$iv":Z
    .restart local v26    # "$this$visitChildren_u2dY_u2dYKmho_u24default$iv":Landroidx/compose/ui/node/DelegatableNode;
    .restart local v29    # "$v$c$androidx-compose-ui-node-NodeKind$-type$0$iv":I
    .restart local v30    # "zOrder$iv":Z
    invoke-virtual {v10}, Landroidx/compose/ui/Modifier$Node;->getChild$ui()Landroidx/compose/ui/Modifier$Node;

    move-result-object v10

    move-object/from16 v0, v26

    const/4 v13, 0x0

    goto/16 :goto_2

    .line 72
    .end local v26    # "$this$visitChildren_u2dY_u2dYKmho_u24default$iv":Landroidx/compose/ui/node/DelegatableNode;
    .end local v29    # "$v$c$androidx-compose-ui-node-NodeKind$-type$0$iv":I
    .end local v30    # "zOrder$iv":Z
    .restart local v0    # "$this$visitChildren_u2dY_u2dYKmho_u24default$iv":Landroidx/compose/ui/node/DelegatableNode;
    .restart local v1    # "$v$c$androidx-compose-ui-node-NodeKind$-type$0$iv":I
    .restart local v2    # "zOrder$iv":Z
    :cond_12
    move-object/from16 v26, v0

    move/from16 v29, v1

    move/from16 v30, v2

    .end local v0    # "$this$visitChildren_u2dY_u2dYKmho_u24default$iv":Landroidx/compose/ui/node/DelegatableNode;
    .end local v1    # "$v$c$androidx-compose-ui-node-NodeKind$-type$0$iv":I
    .end local v2    # "zOrder$iv":Z
    .restart local v26    # "$this$visitChildren_u2dY_u2dYKmho_u24default$iv":Landroidx/compose/ui/node/DelegatableNode;
    .restart local v29    # "$v$c$androidx-compose-ui-node-NodeKind$-type$0$iv":I
    .restart local v30    # "zOrder$iv":Z
    const/4 v13, 0x0

    goto/16 :goto_0

    .line 120
    .end local v9    # "branch$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .end local v10    # "node$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .end local v26    # "$this$visitChildren_u2dY_u2dYKmho_u24default$iv":Landroidx/compose/ui/node/DelegatableNode;
    .end local v29    # "$v$c$androidx-compose-ui-node-NodeKind$-type$0$iv":I
    .end local v30    # "zOrder$iv":Z
    .restart local v0    # "$this$visitChildren_u2dY_u2dYKmho_u24default$iv":Landroidx/compose/ui/node/DelegatableNode;
    .restart local v1    # "$v$c$androidx-compose-ui-node-NodeKind$-type$0$iv":I
    .restart local v2    # "zOrder$iv":Z
    :cond_13
    nop

    .line 50
    .end local v4    # "zOrder$iv$iv":Z
    .end local v5    # "mask$iv$iv":I
    .end local v6    # "$this$visitChildren$iv$iv":Landroidx/compose/ui/node/DelegatableNode;
    .end local v7    # "$i$f$visitChildren":I
    .end local v8    # "child$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .end local v11    # "branches$iv$iv":Landroidx/compose/runtime/collection/MutableVector;
    nop

    .line 43
    .end local v0    # "$this$visitChildren_u2dY_u2dYKmho_u24default$iv":Landroidx/compose/ui/node/DelegatableNode;
    .end local v1    # "$v$c$androidx-compose-ui-node-NodeKind$-type$0$iv":I
    .end local v2    # "zOrder$iv":Z
    .end local v3    # "$i$f$visitChildren-Y-YKmho":I
    return-void
.end method
