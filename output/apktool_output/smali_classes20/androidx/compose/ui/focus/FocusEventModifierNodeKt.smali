.class public final Landroidx/compose/ui/focus/FocusEventModifierNodeKt;
.super Ljava/lang/Object;
.source "FocusEventModifierNode.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/compose/ui/focus/FocusEventModifierNodeKt$WhenMappings;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nFocusEventModifierNode.kt\nKotlin\n*S Kotlin\n*F\n+ 1 FocusEventModifierNode.kt\nandroidx/compose/ui/focus/FocusEventModifierNodeKt\n+ 2 NodeKind.kt\nandroidx/compose/ui/node/Nodes\n+ 3 DelegatableNode.kt\nandroidx/compose/ui/node/DelegatableNodeKt\n+ 4 Modifier.kt\nandroidx/compose/ui/Modifier$Node\n+ 5 DelegatingNode.kt\nandroidx/compose/ui/node/DelegatingNode\n+ 6 MutableVector.kt\nandroidx/compose/runtime/collection/MutableVectorKt\n+ 7 InlineClassHelper.kt\nandroidx/compose/ui/internal/InlineClassHelperKt\n+ 8 MutableVector.kt\nandroidx/compose/runtime/collection/MutableVector\n*L\n1#1,59:1\n120#2:60\n309#3,6:61\n556#3,6:67\n566#3,2:74\n568#3,8:79\n576#3,9:90\n585#3,8:102\n315#3:110\n153#3:111\n154#3,4:116\n158#3:121\n159#3,9:123\n556#3,37:132\n168#3,6:169\n316#3:175\n247#4:73\n240#5,3:76\n243#5,3:99\n1107#6:87\n1085#6,2:88\n57#7,4:112\n519#8:120\n44#8:122\n*S KotlinDebug\n*F\n+ 1 FocusEventModifierNode.kt\nandroidx/compose/ui/focus/FocusEventModifierNodeKt\n*L\n46#1:60\n46#1:61,6\n46#1:67,6\n46#1:74,2\n46#1:79,8\n46#1:90,9\n46#1:102,8\n46#1:110\n46#1:111\n46#1:116,4\n46#1:121\n46#1:123,9\n46#1:132,37\n46#1:169,6\n46#1:175\n46#1:73\n46#1:76,3\n46#1:99,3\n46#1:87\n46#1:88,2\n46#1:112,4\n46#1:120\n46#1:122\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0012\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u001a\u000c\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\u0000\u001a\u000c\u0010\u0003\u001a\u00020\u0004*\u00020\u0002H\u0000\u00a8\u0006\u0005"
    }
    d2 = {
        "invalidateFocusEvent",
        "",
        "Landroidx/compose/ui/focus/FocusEventModifierNode;",
        "getFocusState",
        "Landroidx/compose/ui/focus/FocusState;",
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
.method public static final getFocusState(Landroidx/compose/ui/focus/FocusEventModifierNode;)Landroidx/compose/ui/focus/FocusState;
    .locals 33
    .param p0, "$this$getFocusState"    # Landroidx/compose/ui/focus/FocusEventModifierNode;

    .line 46
    move-object/from16 v0, p0

    check-cast v0, Landroidx/compose/ui/node/DelegatableNode;

    const/4 v1, 0x0

    .line 60
    .local v1, "$i$f$getFocusTarget-OLwlOKw":I
    const/16 v2, 0x400

    invoke-static {v2}, Landroidx/compose/ui/node/NodeKind;->constructor-impl(I)I

    move-result v1

    .line 46
    .end local v1    # "$i$f$getFocusTarget-OLwlOKw":I
    nop

    .line 61
    .local v0, "$this$visitSelfAndChildren_u2dY_u2dYKmho_u24default$iv":Landroidx/compose/ui/node/DelegatableNode;
    .local v1, "$v$c$androidx-compose-ui-node-NodeKind$-type$0$iv":I
    nop

    .line 63
    const/4 v2, 0x0

    .line 61
    .local v2, "zOrder$iv":Z
    const/4 v3, 0x0

    .line 66
    .local v3, "$i$f$visitSelfAndChildren-Y-YKmho":I
    invoke-interface {v0}, Landroidx/compose/ui/node/DelegatableNode;->getNode()Landroidx/compose/ui/Modifier$Node;

    move-result-object v4

    .local v4, "$this$dispatchForKind_u2d6rFNWt0$iv$iv":Landroidx/compose/ui/Modifier$Node;
    move v5, v1

    .local v5, "$v$c$androidx-compose-ui-node-NodeKind$-kind$0$iv$iv":I
    const/4 v6, 0x0

    .line 67
    .local v6, "$i$f$dispatchForKind-6rFNWt0":I
    const/4 v7, 0x0

    .line 68
    .local v7, "stack$iv$iv":Ljava/lang/Object;
    const/4 v8, 0x0

    .local v8, "node$iv$iv":Ljava/lang/Object;
    move-object v8, v4

    .line 69
    :goto_0
    const/4 v9, 0x0

    const/4 v10, 0x1

    if-eqz v8, :cond_c

    .line 70
    instance-of v11, v8, Landroidx/compose/ui/focus/FocusTargetNode;

    if-eqz v11, :cond_0

    .line 71
    move-object v9, v8

    check-cast v9, Landroidx/compose/ui/focus/FocusTargetNode;

    .local v9, "it":Landroidx/compose/ui/focus/FocusTargetNode;
    const/4 v10, 0x0

    .line 47
    .local v10, "$i$a$-visitSelfAndChildren-Y-YKmho$default-FocusEventModifierNodeKt$getFocusState$1":I
    invoke-virtual {v9}, Landroidx/compose/ui/focus/FocusTargetNode;->getFocusState()Landroidx/compose/ui/focus/FocusStateImpl;

    move-result-object v11

    .local v11, "focusState":Landroidx/compose/ui/focus/FocusStateImpl;
    sget-object v12, Landroidx/compose/ui/focus/FocusEventModifierNodeKt$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {v11}, Landroidx/compose/ui/focus/FocusStateImpl;->ordinal()I

    move-result v13

    aget v12, v12, v13

    packed-switch v12, :pswitch_data_0

    new-instance v12, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {v12}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw v12

    .line 54
    :pswitch_0
    nop

    .line 71
    .end local v9    # "it":Landroidx/compose/ui/focus/FocusTargetNode;
    .end local v10    # "$i$a$-visitSelfAndChildren-Y-YKmho$default-FocusEventModifierNodeKt$getFocusState$1":I
    .end local v11    # "focusState":Landroidx/compose/ui/focus/FocusStateImpl;
    move-object/from16 v20, v0

    move/from16 v21, v1

    goto/16 :goto_6

    .line 51
    .restart local v9    # "it":Landroidx/compose/ui/focus/FocusTargetNode;
    .restart local v10    # "$i$a$-visitSelfAndChildren-Y-YKmho$default-FocusEventModifierNodeKt$getFocusState$1":I
    .restart local v11    # "focusState":Landroidx/compose/ui/focus/FocusStateImpl;
    :pswitch_1
    move-object v12, v11

    check-cast v12, Landroidx/compose/ui/focus/FocusState;

    return-object v12

    .line 72
    .end local v9    # "it":Landroidx/compose/ui/focus/FocusTargetNode;
    .end local v10    # "$i$a$-visitSelfAndChildren-Y-YKmho$default-FocusEventModifierNodeKt$getFocusState$1":I
    .end local v11    # "focusState":Landroidx/compose/ui/focus/FocusStateImpl;
    :cond_0
    move v11, v5

    .local v11, "$v$c$androidx-compose-ui-node-NodeKind$-kind$0$iv$iv$iv":I
    move-object v12, v8

    .local v12, "this_$iv$iv$iv":Landroidx/compose/ui/Modifier$Node;
    const/4 v13, 0x0

    .line 73
    .local v13, "$i$f$isKind-H91voCI$ui":I
    invoke-virtual {v12}, Landroidx/compose/ui/Modifier$Node;->getKindSet$ui()I

    move-result v14

    and-int/2addr v14, v11

    if-eqz v14, :cond_1

    move v11, v10

    goto :goto_1

    :cond_1
    move v11, v9

    .line 72
    .end local v11    # "$v$c$androidx-compose-ui-node-NodeKind$-kind$0$iv$iv$iv":I
    .end local v12    # "this_$iv$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .end local v13    # "$i$f$isKind-H91voCI$ui":I
    :goto_1
    if-eqz v11, :cond_a

    instance-of v11, v8, Landroidx/compose/ui/node/DelegatingNode;

    if-eqz v11, :cond_a

    .line 74
    const/4 v11, 0x0

    .line 75
    .local v11, "count$iv$iv":I
    move-object v12, v8

    check-cast v12, Landroidx/compose/ui/node/DelegatingNode;

    .local v12, "this_$iv$iv$iv":Landroidx/compose/ui/node/DelegatingNode;
    const/4 v13, 0x0

    .line 76
    .local v13, "$i$f$forEachImmediateDelegate$ui":I
    invoke-virtual {v12}, Landroidx/compose/ui/node/DelegatingNode;->getDelegate$ui()Landroidx/compose/ui/Modifier$Node;

    move-result-object v14

    .line 77
    .local v14, "node$iv$iv$iv":Landroidx/compose/ui/Modifier$Node;
    :goto_2
    if-eqz v14, :cond_9

    .line 78
    move-object v15, v14

    .local v15, "next$iv$iv":Landroidx/compose/ui/Modifier$Node;
    const/16 v16, 0x0

    .line 79
    .local v16, "$i$a$-forEachImmediateDelegate$ui-DelegatableNodeKt$dispatchForKind$1$iv$iv":I
    move/from16 v17, v5

    .local v17, "$v$c$androidx-compose-ui-node-NodeKind$-kind$0$iv$iv$iv":I
    move-object/from16 v18, v15

    .local v18, "this_$iv$iv$iv":Landroidx/compose/ui/Modifier$Node;
    const/16 v19, 0x0

    .line 73
    .local v19, "$i$f$isKind-H91voCI$ui":I
    invoke-virtual/range {v18 .. v18}, Landroidx/compose/ui/Modifier$Node;->getKindSet$ui()I

    move-result v20

    and-int v20, v20, v17

    if-eqz v20, :cond_2

    move/from16 v17, v10

    goto :goto_3

    :cond_2
    move/from16 v17, v9

    .line 79
    .end local v17    # "$v$c$androidx-compose-ui-node-NodeKind$-kind$0$iv$iv$iv":I
    .end local v18    # "this_$iv$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .end local v19    # "$i$f$isKind-H91voCI$ui":I
    :goto_3
    if-eqz v17, :cond_7

    .line 80
    add-int/lit8 v11, v11, 0x1

    .line 81
    if-ne v11, v10, :cond_3

    .line 82
    move-object v8, v15

    move-object/from16 v20, v0

    move/from16 v21, v1

    goto :goto_5

    .line 86
    :cond_3
    if-nez v7, :cond_4

    const/16 v17, 0x0

    .line 87
    .local v17, "$i$f$mutableVectorOf":I
    nop

    .line 88
    const/16 v10, 0x10

    .local v10, "capacity$iv$iv$iv$iv":I
    const/16 v19, 0x0

    .line 89
    .local v19, "$i$f$MutableVector":I
    move-object/from16 v20, v0

    .end local v0    # "$this$visitSelfAndChildren_u2dY_u2dYKmho_u24default$iv":Landroidx/compose/ui/node/DelegatableNode;
    .local v20, "$this$visitSelfAndChildren_u2dY_u2dYKmho_u24default$iv":Landroidx/compose/ui/node/DelegatableNode;
    new-instance v0, Landroidx/compose/runtime/collection/MutableVector;

    move/from16 v21, v1

    .end local v1    # "$v$c$androidx-compose-ui-node-NodeKind$-type$0$iv":I
    .local v21, "$v$c$androidx-compose-ui-node-NodeKind$-type$0$iv":I
    new-array v1, v10, [Landroidx/compose/ui/Modifier$Node;

    invoke-direct {v0, v1, v9}, Landroidx/compose/runtime/collection/MutableVector;-><init>([Ljava/lang/Object;I)V

    .line 87
    .end local v10    # "capacity$iv$iv$iv$iv":I
    .end local v19    # "$i$f$MutableVector":I
    goto :goto_4

    .line 86
    .end local v17    # "$i$f$mutableVectorOf":I
    .end local v20    # "$this$visitSelfAndChildren_u2dY_u2dYKmho_u24default$iv":Landroidx/compose/ui/node/DelegatableNode;
    .end local v21    # "$v$c$androidx-compose-ui-node-NodeKind$-type$0$iv":I
    .restart local v0    # "$this$visitSelfAndChildren_u2dY_u2dYKmho_u24default$iv":Landroidx/compose/ui/node/DelegatableNode;
    .restart local v1    # "$v$c$androidx-compose-ui-node-NodeKind$-type$0$iv":I
    :cond_4
    move-object/from16 v20, v0

    move/from16 v21, v1

    .end local v0    # "$this$visitSelfAndChildren_u2dY_u2dYKmho_u24default$iv":Landroidx/compose/ui/node/DelegatableNode;
    .end local v1    # "$v$c$androidx-compose-ui-node-NodeKind$-type$0$iv":I
    .restart local v20    # "$this$visitSelfAndChildren_u2dY_u2dYKmho_u24default$iv":Landroidx/compose/ui/node/DelegatableNode;
    .restart local v21    # "$v$c$androidx-compose-ui-node-NodeKind$-type$0$iv":I
    move-object v0, v7

    :goto_4
    move-object v7, v0

    .line 90
    move-object v0, v8

    .line 91
    .local v0, "theNode$iv$iv":Landroidx/compose/ui/Modifier$Node;
    if-eqz v0, :cond_6

    .line 92
    if-eqz v7, :cond_5

    invoke-virtual {v7, v0}, Landroidx/compose/runtime/collection/MutableVector;->add(Ljava/lang/Object;)Z

    .line 93
    :cond_5
    const/4 v1, 0x0

    move-object v8, v1

    .line 95
    :cond_6
    if-eqz v7, :cond_8

    invoke-virtual {v7, v15}, Landroidx/compose/runtime/collection/MutableVector;->add(Ljava/lang/Object;)Z

    goto :goto_5

    .line 79
    .end local v20    # "$this$visitSelfAndChildren_u2dY_u2dYKmho_u24default$iv":Landroidx/compose/ui/node/DelegatableNode;
    .end local v21    # "$v$c$androidx-compose-ui-node-NodeKind$-type$0$iv":I
    .local v0, "$this$visitSelfAndChildren_u2dY_u2dYKmho_u24default$iv":Landroidx/compose/ui/node/DelegatableNode;
    .restart local v1    # "$v$c$androidx-compose-ui-node-NodeKind$-type$0$iv":I
    :cond_7
    move-object/from16 v20, v0

    move/from16 v21, v1

    .line 98
    .end local v0    # "$this$visitSelfAndChildren_u2dY_u2dYKmho_u24default$iv":Landroidx/compose/ui/node/DelegatableNode;
    .end local v1    # "$v$c$androidx-compose-ui-node-NodeKind$-type$0$iv":I
    .restart local v20    # "$this$visitSelfAndChildren_u2dY_u2dYKmho_u24default$iv":Landroidx/compose/ui/node/DelegatableNode;
    .restart local v21    # "$v$c$androidx-compose-ui-node-NodeKind$-type$0$iv":I
    :cond_8
    :goto_5
    nop

    .line 78
    .end local v15    # "next$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .end local v16    # "$i$a$-forEachImmediateDelegate$ui-DelegatableNodeKt$dispatchForKind$1$iv$iv":I
    nop

    .line 99
    invoke-virtual {v14}, Landroidx/compose/ui/Modifier$Node;->getChild$ui()Landroidx/compose/ui/Modifier$Node;

    move-result-object v14

    move-object/from16 v0, v20

    move/from16 v1, v21

    const/4 v10, 0x1

    goto :goto_2

    .line 101
    .end local v20    # "$this$visitSelfAndChildren_u2dY_u2dYKmho_u24default$iv":Landroidx/compose/ui/node/DelegatableNode;
    .end local v21    # "$v$c$androidx-compose-ui-node-NodeKind$-type$0$iv":I
    .restart local v0    # "$this$visitSelfAndChildren_u2dY_u2dYKmho_u24default$iv":Landroidx/compose/ui/node/DelegatableNode;
    .restart local v1    # "$v$c$androidx-compose-ui-node-NodeKind$-type$0$iv":I
    :cond_9
    move-object/from16 v20, v0

    move/from16 v21, v1

    .line 102
    .end local v0    # "$this$visitSelfAndChildren_u2dY_u2dYKmho_u24default$iv":Landroidx/compose/ui/node/DelegatableNode;
    .end local v1    # "$v$c$androidx-compose-ui-node-NodeKind$-type$0$iv":I
    .end local v12    # "this_$iv$iv$iv":Landroidx/compose/ui/node/DelegatingNode;
    .end local v13    # "$i$f$forEachImmediateDelegate$ui":I
    .end local v14    # "node$iv$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .restart local v20    # "$this$visitSelfAndChildren_u2dY_u2dYKmho_u24default$iv":Landroidx/compose/ui/node/DelegatableNode;
    .restart local v21    # "$v$c$androidx-compose-ui-node-NodeKind$-type$0$iv":I
    const/4 v0, 0x1

    if-ne v11, v0, :cond_b

    .line 104
    move-object/from16 v0, v20

    move/from16 v1, v21

    goto/16 :goto_0

    .line 72
    .end local v11    # "count$iv$iv":I
    .end local v20    # "$this$visitSelfAndChildren_u2dY_u2dYKmho_u24default$iv":Landroidx/compose/ui/node/DelegatableNode;
    .end local v21    # "$v$c$androidx-compose-ui-node-NodeKind$-type$0$iv":I
    .restart local v0    # "$this$visitSelfAndChildren_u2dY_u2dYKmho_u24default$iv":Landroidx/compose/ui/node/DelegatableNode;
    .restart local v1    # "$v$c$androidx-compose-ui-node-NodeKind$-type$0$iv":I
    :cond_a
    move-object/from16 v20, v0

    move/from16 v21, v1

    .line 107
    .end local v0    # "$this$visitSelfAndChildren_u2dY_u2dYKmho_u24default$iv":Landroidx/compose/ui/node/DelegatableNode;
    .end local v1    # "$v$c$androidx-compose-ui-node-NodeKind$-type$0$iv":I
    .restart local v20    # "$this$visitSelfAndChildren_u2dY_u2dYKmho_u24default$iv":Landroidx/compose/ui/node/DelegatableNode;
    .restart local v21    # "$v$c$androidx-compose-ui-node-NodeKind$-type$0$iv":I
    :cond_b
    :goto_6
    invoke-static {v7}, Landroidx/compose/ui/node/DelegatableNodeKt;->access$pop(Landroidx/compose/runtime/collection/MutableVector;)Landroidx/compose/ui/Modifier$Node;

    move-result-object v8

    move-object/from16 v0, v20

    move/from16 v1, v21

    goto/16 :goto_0

    .line 109
    .end local v20    # "$this$visitSelfAndChildren_u2dY_u2dYKmho_u24default$iv":Landroidx/compose/ui/node/DelegatableNode;
    .end local v21    # "$v$c$androidx-compose-ui-node-NodeKind$-type$0$iv":I
    .restart local v0    # "$this$visitSelfAndChildren_u2dY_u2dYKmho_u24default$iv":Landroidx/compose/ui/node/DelegatableNode;
    .restart local v1    # "$v$c$androidx-compose-ui-node-NodeKind$-type$0$iv":I
    :cond_c
    move-object/from16 v20, v0

    move/from16 v21, v1

    .line 110
    .end local v0    # "$this$visitSelfAndChildren_u2dY_u2dYKmho_u24default$iv":Landroidx/compose/ui/node/DelegatableNode;
    .end local v1    # "$v$c$androidx-compose-ui-node-NodeKind$-type$0$iv":I
    .end local v4    # "$this$dispatchForKind_u2d6rFNWt0$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .end local v5    # "$v$c$androidx-compose-ui-node-NodeKind$-kind$0$iv$iv":I
    .end local v6    # "$i$f$dispatchForKind-6rFNWt0":I
    .end local v7    # "stack$iv$iv":Ljava/lang/Object;
    .end local v8    # "node$iv$iv":Ljava/lang/Object;
    .restart local v20    # "$this$visitSelfAndChildren_u2dY_u2dYKmho_u24default$iv":Landroidx/compose/ui/node/DelegatableNode;
    .restart local v21    # "$v$c$androidx-compose-ui-node-NodeKind$-type$0$iv":I
    move v0, v2

    .local v0, "zOrder$iv$iv":Z
    .local v1, "mask$iv$iv":I
    move-object/from16 v4, v20

    .local v4, "$this$visitChildren$iv$iv":Landroidx/compose/ui/node/DelegatableNode;
    const/4 v5, 0x0

    .line 111
    .local v5, "$i$f$visitChildren":I
    invoke-interface {v4}, Landroidx/compose/ui/node/DelegatableNode;->getNode()Landroidx/compose/ui/Modifier$Node;

    move-result-object v6

    invoke-virtual {v6}, Landroidx/compose/ui/Modifier$Node;->isAttached()Z

    move-result v6

    .local v6, "value$iv$iv$iv":Z
    const/4 v7, 0x0

    .line 112
    .local v7, "$i$f$checkPrecondition":I
    if-nez v6, :cond_d

    .line 113
    const/4 v8, 0x0

    .line 111
    .local v8, "$i$a$-checkPrecondition-DelegatableNodeKt$visitChildren$1$iv$iv":I
    nop

    .line 113
    .end local v8    # "$i$a$-checkPrecondition-DelegatableNodeKt$visitChildren$1$iv$iv":I
    const-string/jumbo v8, "visitChildren called on an unattached node"

    invoke-static {v8}, Landroidx/compose/ui/internal/InlineClassHelperKt;->throwIllegalStateException(Ljava/lang/String;)V

    .line 115
    :cond_d
    nop

    .line 116
    .end local v6    # "value$iv$iv$iv":Z
    .end local v7    # "$i$f$checkPrecondition":I
    const/4 v6, 0x0

    .line 87
    .local v6, "$i$f$mutableVectorOf":I
    nop

    .line 88
    const/16 v7, 0x10

    .local v7, "capacity$iv$iv$iv$iv":I
    const/4 v8, 0x0

    .line 89
    .local v8, "$i$f$MutableVector":I
    new-instance v10, Landroidx/compose/runtime/collection/MutableVector;

    new-array v11, v7, [Landroidx/compose/ui/Modifier$Node;

    invoke-direct {v10, v11, v9}, Landroidx/compose/runtime/collection/MutableVector;-><init>([Ljava/lang/Object;I)V

    .line 87
    .end local v7    # "capacity$iv$iv$iv$iv":I
    .end local v8    # "$i$f$MutableVector":I
    nop

    .line 116
    .end local v6    # "$i$f$mutableVectorOf":I
    nop

    .line 117
    .local v10, "branches$iv$iv":Landroidx/compose/runtime/collection/MutableVector;
    invoke-interface {v4}, Landroidx/compose/ui/node/DelegatableNode;->getNode()Landroidx/compose/ui/Modifier$Node;

    move-result-object v6

    invoke-virtual {v6}, Landroidx/compose/ui/Modifier$Node;->getChild$ui()Landroidx/compose/ui/Modifier$Node;

    move-result-object v6

    .line 118
    .local v6, "child$iv$iv":Landroidx/compose/ui/Modifier$Node;
    if-nez v6, :cond_e

    invoke-interface {v4}, Landroidx/compose/ui/node/DelegatableNode;->getNode()Landroidx/compose/ui/Modifier$Node;

    move-result-object v7

    invoke-static {v10, v7, v0}, Landroidx/compose/ui/node/DelegatableNodeKt;->access$addLayoutNodeChildren(Landroidx/compose/runtime/collection/MutableVector;Landroidx/compose/ui/Modifier$Node;Z)V

    goto :goto_7

    :cond_e
    invoke-virtual {v10, v6}, Landroidx/compose/runtime/collection/MutableVector;->add(Ljava/lang/Object;)Z

    .line 119
    :goto_7
    move-object v7, v10

    .local v7, "this_$iv$iv$iv":Landroidx/compose/runtime/collection/MutableVector;
    const/4 v8, 0x0

    .line 120
    .local v8, "$i$f$isNotEmpty":I
    invoke-virtual {v7}, Landroidx/compose/runtime/collection/MutableVector;->getSize()I

    move-result v11

    if-eqz v11, :cond_f

    const/4 v7, 0x1

    goto :goto_8

    :cond_f
    move v7, v9

    .end local v7    # "this_$iv$iv$iv":Landroidx/compose/runtime/collection/MutableVector;
    .end local v8    # "$i$f$isNotEmpty":I
    :goto_8
    if-eqz v7, :cond_20

    .line 121
    move-object v7, v10

    .restart local v7    # "this_$iv$iv$iv":Landroidx/compose/runtime/collection/MutableVector;
    const/4 v8, 0x0

    .line 122
    .local v8, "$i$f$getLastIndex":I
    invoke-virtual {v7}, Landroidx/compose/runtime/collection/MutableVector;->getSize()I

    move-result v11

    const/16 v18, 0x1

    add-int/lit8 v11, v11, -0x1

    .line 121
    .end local v7    # "this_$iv$iv$iv":Landroidx/compose/runtime/collection/MutableVector;
    .end local v8    # "$i$f$getLastIndex":I
    invoke-virtual {v10, v11}, Landroidx/compose/runtime/collection/MutableVector;->removeAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroidx/compose/ui/Modifier$Node;

    .line 123
    .local v7, "branch$iv$iv":Landroidx/compose/ui/Modifier$Node;
    invoke-virtual {v7}, Landroidx/compose/ui/Modifier$Node;->getAggregateChildKindSet$ui()I

    move-result v8

    and-int/2addr v8, v1

    if-nez v8, :cond_10

    .line 124
    invoke-static {v10, v7, v0}, Landroidx/compose/ui/node/DelegatableNodeKt;->access$addLayoutNodeChildren(Landroidx/compose/runtime/collection/MutableVector;Landroidx/compose/ui/Modifier$Node;Z)V

    .line 126
    goto :goto_7

    .line 128
    :cond_10
    move-object v8, v7

    .line 129
    .local v8, "node$iv$iv":Landroidx/compose/ui/Modifier$Node;
    :goto_9
    if-eqz v8, :cond_1f

    .line 130
    invoke-virtual {v8}, Landroidx/compose/ui/Modifier$Node;->getKindSet$ui()I

    move-result v11

    and-int/2addr v11, v1

    if-eqz v11, :cond_1e

    .line 131
    move-object v11, v8

    .local v11, "it$iv":Landroidx/compose/ui/Modifier$Node;
    const/4 v12, 0x0

    .line 110
    .local v12, "$i$a$-visitChildren-DelegatableNodeKt$visitSelfAndChildren$1$iv":I
    move/from16 v13, v21

    .local v13, "$v$c$androidx-compose-ui-node-NodeKind$-kind$0$iv$iv":I
    move-object v14, v11

    .local v14, "$this$dispatchForKind_u2d6rFNWt0$iv$iv":Landroidx/compose/ui/Modifier$Node;
    const/4 v15, 0x0

    .line 132
    .local v15, "$i$f$dispatchForKind-6rFNWt0":I
    const/16 v16, 0x0

    .line 133
    .local v16, "stack$iv$iv":Ljava/lang/Object;
    const/16 v17, 0x0

    .local v17, "node$iv$iv":Ljava/lang/Object;
    move-object/from16 v17, v14

    move-object/from16 v9, v17

    .line 134
    .end local v17    # "node$iv$iv":Ljava/lang/Object;
    .local v9, "node$iv$iv":Ljava/lang/Object;
    :goto_a
    if-eqz v9, :cond_1d

    .line 135
    move/from16 v19, v0

    .end local v0    # "zOrder$iv$iv":Z
    .local v19, "zOrder$iv$iv":Z
    instance-of v0, v9, Landroidx/compose/ui/focus/FocusTargetNode;

    if-eqz v0, :cond_11

    .line 136
    move-object v0, v9

    check-cast v0, Landroidx/compose/ui/focus/FocusTargetNode;

    .local v0, "it":Landroidx/compose/ui/focus/FocusTargetNode;
    const/16 v22, 0x0

    .line 47
    .local v22, "$i$a$-visitSelfAndChildren-Y-YKmho$default-FocusEventModifierNodeKt$getFocusState$1":I
    invoke-virtual {v0}, Landroidx/compose/ui/focus/FocusTargetNode;->getFocusState()Landroidx/compose/ui/focus/FocusStateImpl;

    move-result-object v23

    .local v23, "focusState":Landroidx/compose/ui/focus/FocusStateImpl;
    sget-object v24, Landroidx/compose/ui/focus/FocusEventModifierNodeKt$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual/range {v23 .. v23}, Landroidx/compose/ui/focus/FocusStateImpl;->ordinal()I

    move-result v25

    aget v24, v24, v25

    packed-switch v24, :pswitch_data_1

    new-instance v17, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct/range {v17 .. v17}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw v17

    .line 54
    :pswitch_2
    nop

    .line 136
    .end local v0    # "it":Landroidx/compose/ui/focus/FocusTargetNode;
    .end local v22    # "$i$a$-visitSelfAndChildren-Y-YKmho$default-FocusEventModifierNodeKt$getFocusState$1":I
    .end local v23    # "focusState":Landroidx/compose/ui/focus/FocusStateImpl;
    move/from16 v27, v1

    move/from16 v31, v2

    move/from16 v32, v3

    const/4 v1, 0x1

    const/4 v3, 0x0

    goto/16 :goto_11

    .line 51
    .restart local v0    # "it":Landroidx/compose/ui/focus/FocusTargetNode;
    .restart local v22    # "$i$a$-visitSelfAndChildren-Y-YKmho$default-FocusEventModifierNodeKt$getFocusState$1":I
    .restart local v23    # "focusState":Landroidx/compose/ui/focus/FocusStateImpl;
    :pswitch_3
    move-object/from16 v17, v23

    check-cast v17, Landroidx/compose/ui/focus/FocusState;

    return-object v17

    .line 137
    .end local v0    # "it":Landroidx/compose/ui/focus/FocusTargetNode;
    .end local v22    # "$i$a$-visitSelfAndChildren-Y-YKmho$default-FocusEventModifierNodeKt$getFocusState$1":I
    .end local v23    # "focusState":Landroidx/compose/ui/focus/FocusStateImpl;
    :cond_11
    move v0, v13

    .local v0, "$v$c$androidx-compose-ui-node-NodeKind$-kind$0$iv$iv$iv":I
    move-object/from16 v22, v9

    .local v22, "this_$iv$iv$iv":Landroidx/compose/ui/Modifier$Node;
    const/16 v23, 0x0

    .line 73
    .local v23, "$i$f$isKind-H91voCI$ui":I
    invoke-virtual/range {v22 .. v22}, Landroidx/compose/ui/Modifier$Node;->getKindSet$ui()I

    move-result v24

    and-int v24, v24, v0

    if-eqz v24, :cond_12

    const/4 v0, 0x1

    goto :goto_b

    :cond_12
    const/4 v0, 0x0

    .line 137
    .end local v0    # "$v$c$androidx-compose-ui-node-NodeKind$-kind$0$iv$iv$iv":I
    .end local v22    # "this_$iv$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .end local v23    # "$i$f$isKind-H91voCI$ui":I
    :goto_b
    if-eqz v0, :cond_1b

    instance-of v0, v9, Landroidx/compose/ui/node/DelegatingNode;

    if-eqz v0, :cond_1b

    .line 142
    const/4 v0, 0x0

    .line 143
    .local v0, "count$iv$iv":I
    move-object/from16 v22, v9

    check-cast v22, Landroidx/compose/ui/node/DelegatingNode;

    .local v22, "this_$iv$iv$iv":Landroidx/compose/ui/node/DelegatingNode;
    const/16 v23, 0x0

    .line 76
    .local v23, "$i$f$forEachImmediateDelegate$ui":I
    invoke-virtual/range {v22 .. v22}, Landroidx/compose/ui/node/DelegatingNode;->getDelegate$ui()Landroidx/compose/ui/Modifier$Node;

    move-result-object v24

    .line 77
    .local v24, "node$iv$iv$iv":Landroidx/compose/ui/Modifier$Node;
    :goto_c
    if-eqz v24, :cond_1a

    .line 78
    move-object/from16 v25, v24

    .local v25, "next$iv$iv":Landroidx/compose/ui/Modifier$Node;
    const/16 v26, 0x0

    .line 144
    .local v26, "$i$a$-forEachImmediateDelegate$ui-DelegatableNodeKt$dispatchForKind$1$iv$iv":I
    move/from16 v27, v13

    .local v27, "$v$c$androidx-compose-ui-node-NodeKind$-kind$0$iv$iv$iv":I
    move-object/from16 v28, v25

    .local v28, "this_$iv$iv$iv":Landroidx/compose/ui/Modifier$Node;
    const/16 v29, 0x0

    .line 73
    .local v29, "$i$f$isKind-H91voCI$ui":I
    invoke-virtual/range {v28 .. v28}, Landroidx/compose/ui/Modifier$Node;->getKindSet$ui()I

    move-result v30

    and-int v30, v30, v27

    if-eqz v30, :cond_13

    const/16 v27, 0x1

    goto :goto_d

    :cond_13
    const/16 v27, 0x0

    .line 144
    .end local v27    # "$v$c$androidx-compose-ui-node-NodeKind$-kind$0$iv$iv$iv":I
    .end local v28    # "this_$iv$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .end local v29    # "$i$f$isKind-H91voCI$ui":I
    :goto_d
    if-eqz v27, :cond_19

    .line 145
    add-int/lit8 v0, v0, 0x1

    .line 146
    move/from16 v27, v1

    const/4 v1, 0x1

    .end local v1    # "mask$iv$iv":I
    .local v27, "mask$iv$iv":I
    if-ne v0, v1, :cond_14

    .line 147
    move-object/from16 v9, v25

    move/from16 v31, v2

    move/from16 v32, v3

    move-object/from16 v2, v25

    const/4 v3, 0x0

    goto :goto_10

    .line 151
    :cond_14
    if-nez v16, :cond_15

    const/4 v1, 0x0

    .line 87
    .local v1, "$i$f$mutableVectorOf":I
    nop

    .line 88
    move/from16 v28, v0

    .end local v0    # "count$iv$iv":I
    .local v28, "count$iv$iv":I
    const/16 v0, 0x10

    .local v0, "capacity$iv$iv$iv$iv":I
    const/16 v29, 0x0

    .line 89
    .local v29, "$i$f$MutableVector":I
    move/from16 v30, v1

    .end local v1    # "$i$f$mutableVectorOf":I
    .local v30, "$i$f$mutableVectorOf":I
    new-instance v1, Landroidx/compose/runtime/collection/MutableVector;

    move/from16 v31, v2

    .end local v2    # "zOrder$iv":Z
    .local v31, "zOrder$iv":Z
    new-array v2, v0, [Landroidx/compose/ui/Modifier$Node;

    move/from16 v32, v3

    const/4 v3, 0x0

    .end local v3    # "$i$f$visitSelfAndChildren-Y-YKmho":I
    .local v32, "$i$f$visitSelfAndChildren-Y-YKmho":I
    invoke-direct {v1, v2, v3}, Landroidx/compose/runtime/collection/MutableVector;-><init>([Ljava/lang/Object;I)V

    .line 87
    .end local v0    # "capacity$iv$iv$iv$iv":I
    .end local v29    # "$i$f$MutableVector":I
    goto :goto_e

    .line 151
    .end local v28    # "count$iv$iv":I
    .end local v30    # "$i$f$mutableVectorOf":I
    .end local v31    # "zOrder$iv":Z
    .end local v32    # "$i$f$visitSelfAndChildren-Y-YKmho":I
    .local v0, "count$iv$iv":I
    .restart local v2    # "zOrder$iv":Z
    .restart local v3    # "$i$f$visitSelfAndChildren-Y-YKmho":I
    :cond_15
    move/from16 v28, v0

    move/from16 v31, v2

    move/from16 v32, v3

    const/4 v3, 0x0

    .end local v0    # "count$iv$iv":I
    .end local v2    # "zOrder$iv":Z
    .end local v3    # "$i$f$visitSelfAndChildren-Y-YKmho":I
    .restart local v28    # "count$iv$iv":I
    .restart local v31    # "zOrder$iv":Z
    .restart local v32    # "$i$f$visitSelfAndChildren-Y-YKmho":I
    move-object/from16 v1, v16

    :goto_e
    nop

    .line 152
    .end local v16    # "stack$iv$iv":Ljava/lang/Object;
    .local v1, "stack$iv$iv":Ljava/lang/Object;
    move-object v0, v9

    .line 153
    .local v0, "theNode$iv$iv":Landroidx/compose/ui/Modifier$Node;
    if-eqz v0, :cond_17

    .line 154
    if-eqz v1, :cond_16

    invoke-virtual {v1, v0}, Landroidx/compose/runtime/collection/MutableVector;->add(Ljava/lang/Object;)Z

    .line 155
    :cond_16
    const/4 v2, 0x0

    move-object v9, v2

    .line 157
    :cond_17
    if-eqz v1, :cond_18

    move-object/from16 v2, v25

    .end local v25    # "next$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .local v2, "next$iv$iv":Landroidx/compose/ui/Modifier$Node;
    invoke-virtual {v1, v2}, Landroidx/compose/runtime/collection/MutableVector;->add(Ljava/lang/Object;)Z

    goto :goto_f

    .end local v2    # "next$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .restart local v25    # "next$iv$iv":Landroidx/compose/ui/Modifier$Node;
    :cond_18
    move-object/from16 v2, v25

    .line 160
    .end local v0    # "theNode$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .end local v25    # "next$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .restart local v2    # "next$iv$iv":Landroidx/compose/ui/Modifier$Node;
    :goto_f
    move-object/from16 v16, v1

    move/from16 v0, v28

    goto :goto_10

    .line 144
    .end local v27    # "mask$iv$iv":I
    .end local v28    # "count$iv$iv":I
    .end local v31    # "zOrder$iv":Z
    .end local v32    # "$i$f$visitSelfAndChildren-Y-YKmho":I
    .local v0, "count$iv$iv":I
    .local v1, "mask$iv$iv":I
    .local v2, "zOrder$iv":Z
    .restart local v3    # "$i$f$visitSelfAndChildren-Y-YKmho":I
    .restart local v16    # "stack$iv$iv":Ljava/lang/Object;
    .restart local v25    # "next$iv$iv":Landroidx/compose/ui/Modifier$Node;
    :cond_19
    move/from16 v27, v1

    move/from16 v31, v2

    move/from16 v32, v3

    move-object/from16 v2, v25

    const/4 v3, 0x0

    .line 160
    .end local v1    # "mask$iv$iv":I
    .end local v3    # "$i$f$visitSelfAndChildren-Y-YKmho":I
    .end local v25    # "next$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .local v2, "next$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .restart local v27    # "mask$iv$iv":I
    .restart local v31    # "zOrder$iv":Z
    .restart local v32    # "$i$f$visitSelfAndChildren-Y-YKmho":I
    :goto_10
    nop

    .line 78
    .end local v2    # "next$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .end local v26    # "$i$a$-forEachImmediateDelegate$ui-DelegatableNodeKt$dispatchForKind$1$iv$iv":I
    nop

    .line 99
    invoke-virtual/range {v24 .. v24}, Landroidx/compose/ui/Modifier$Node;->getChild$ui()Landroidx/compose/ui/Modifier$Node;

    move-result-object v24

    move/from16 v1, v27

    move/from16 v2, v31

    move/from16 v3, v32

    goto :goto_c

    .line 101
    .end local v27    # "mask$iv$iv":I
    .end local v31    # "zOrder$iv":Z
    .end local v32    # "$i$f$visitSelfAndChildren-Y-YKmho":I
    .restart local v1    # "mask$iv$iv":I
    .local v2, "zOrder$iv":Z
    .restart local v3    # "$i$f$visitSelfAndChildren-Y-YKmho":I
    :cond_1a
    move/from16 v27, v1

    move/from16 v31, v2

    move/from16 v32, v3

    const/4 v3, 0x0

    .line 161
    .end local v1    # "mask$iv$iv":I
    .end local v2    # "zOrder$iv":Z
    .end local v3    # "$i$f$visitSelfAndChildren-Y-YKmho":I
    .end local v22    # "this_$iv$iv$iv":Landroidx/compose/ui/node/DelegatingNode;
    .end local v23    # "$i$f$forEachImmediateDelegate$ui":I
    .end local v24    # "node$iv$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .restart local v27    # "mask$iv$iv":I
    .restart local v31    # "zOrder$iv":Z
    .restart local v32    # "$i$f$visitSelfAndChildren-Y-YKmho":I
    const/4 v1, 0x1

    if-ne v0, v1, :cond_1c

    .line 163
    move/from16 v0, v19

    move/from16 v1, v27

    move/from16 v2, v31

    move/from16 v3, v32

    goto/16 :goto_a

    .line 137
    .end local v0    # "count$iv$iv":I
    .end local v27    # "mask$iv$iv":I
    .end local v31    # "zOrder$iv":Z
    .end local v32    # "$i$f$visitSelfAndChildren-Y-YKmho":I
    .restart local v1    # "mask$iv$iv":I
    .restart local v2    # "zOrder$iv":Z
    .restart local v3    # "$i$f$visitSelfAndChildren-Y-YKmho":I
    :cond_1b
    move/from16 v27, v1

    move/from16 v31, v2

    move/from16 v32, v3

    const/4 v1, 0x1

    const/4 v3, 0x0

    .line 166
    .end local v1    # "mask$iv$iv":I
    .end local v2    # "zOrder$iv":Z
    .end local v3    # "$i$f$visitSelfAndChildren-Y-YKmho":I
    .restart local v27    # "mask$iv$iv":I
    .restart local v31    # "zOrder$iv":Z
    .restart local v32    # "$i$f$visitSelfAndChildren-Y-YKmho":I
    :cond_1c
    :goto_11
    invoke-static/range {v16 .. v16}, Landroidx/compose/ui/node/DelegatableNodeKt;->access$pop(Landroidx/compose/runtime/collection/MutableVector;)Landroidx/compose/ui/Modifier$Node;

    move-result-object v9

    move/from16 v0, v19

    move/from16 v1, v27

    move/from16 v2, v31

    move/from16 v3, v32

    goto/16 :goto_a

    .line 168
    .end local v19    # "zOrder$iv$iv":Z
    .end local v27    # "mask$iv$iv":I
    .end local v31    # "zOrder$iv":Z
    .end local v32    # "$i$f$visitSelfAndChildren-Y-YKmho":I
    .local v0, "zOrder$iv$iv":Z
    .restart local v1    # "mask$iv$iv":I
    .restart local v2    # "zOrder$iv":Z
    .restart local v3    # "$i$f$visitSelfAndChildren-Y-YKmho":I
    :cond_1d
    move/from16 v19, v0

    move/from16 v27, v1

    move/from16 v31, v2

    move/from16 v32, v3

    const/4 v1, 0x1

    const/4 v3, 0x0

    .line 110
    .end local v0    # "zOrder$iv$iv":Z
    .end local v1    # "mask$iv$iv":I
    .end local v2    # "zOrder$iv":Z
    .end local v3    # "$i$f$visitSelfAndChildren-Y-YKmho":I
    .end local v9    # "node$iv$iv":Ljava/lang/Object;
    .end local v13    # "$v$c$androidx-compose-ui-node-NodeKind$-kind$0$iv$iv":I
    .end local v14    # "$this$dispatchForKind_u2d6rFNWt0$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .end local v15    # "$i$f$dispatchForKind-6rFNWt0":I
    .end local v16    # "stack$iv$iv":Ljava/lang/Object;
    .restart local v19    # "zOrder$iv$iv":Z
    .restart local v27    # "mask$iv$iv":I
    .restart local v31    # "zOrder$iv":Z
    .restart local v32    # "$i$f$visitSelfAndChildren-Y-YKmho":I
    nop

    .line 131
    .end local v11    # "it$iv":Landroidx/compose/ui/Modifier$Node;
    .end local v12    # "$i$a$-visitChildren-DelegatableNodeKt$visitSelfAndChildren$1$iv":I
    nop

    .line 169
    move v9, v3

    move/from16 v1, v27

    move/from16 v3, v32

    goto/16 :goto_7

    .line 171
    .end local v19    # "zOrder$iv$iv":Z
    .end local v27    # "mask$iv$iv":I
    .end local v31    # "zOrder$iv":Z
    .end local v32    # "$i$f$visitSelfAndChildren-Y-YKmho":I
    .restart local v0    # "zOrder$iv$iv":Z
    .restart local v1    # "mask$iv$iv":I
    .restart local v2    # "zOrder$iv":Z
    .restart local v3    # "$i$f$visitSelfAndChildren-Y-YKmho":I
    :cond_1e
    move/from16 v19, v0

    move/from16 v27, v1

    move/from16 v31, v2

    move/from16 v32, v3

    move v3, v9

    const/4 v1, 0x1

    .end local v0    # "zOrder$iv$iv":Z
    .end local v1    # "mask$iv$iv":I
    .end local v2    # "zOrder$iv":Z
    .end local v3    # "$i$f$visitSelfAndChildren-Y-YKmho":I
    .restart local v19    # "zOrder$iv$iv":Z
    .restart local v27    # "mask$iv$iv":I
    .restart local v31    # "zOrder$iv":Z
    .restart local v32    # "$i$f$visitSelfAndChildren-Y-YKmho":I
    invoke-virtual {v8}, Landroidx/compose/ui/Modifier$Node;->getChild$ui()Landroidx/compose/ui/Modifier$Node;

    move-result-object v8

    move/from16 v1, v27

    move/from16 v3, v32

    goto/16 :goto_9

    .line 129
    .end local v19    # "zOrder$iv$iv":Z
    .end local v27    # "mask$iv$iv":I
    .end local v31    # "zOrder$iv":Z
    .end local v32    # "$i$f$visitSelfAndChildren-Y-YKmho":I
    .restart local v0    # "zOrder$iv$iv":Z
    .restart local v1    # "mask$iv$iv":I
    .restart local v2    # "zOrder$iv":Z
    .restart local v3    # "$i$f$visitSelfAndChildren-Y-YKmho":I
    :cond_1f
    move/from16 v19, v0

    move/from16 v27, v1

    move/from16 v31, v2

    move/from16 v32, v3

    move v3, v9

    const/4 v1, 0x1

    .end local v0    # "zOrder$iv$iv":Z
    .end local v1    # "mask$iv$iv":I
    .end local v2    # "zOrder$iv":Z
    .end local v3    # "$i$f$visitSelfAndChildren-Y-YKmho":I
    .restart local v19    # "zOrder$iv$iv":Z
    .restart local v27    # "mask$iv$iv":I
    .restart local v31    # "zOrder$iv":Z
    .restart local v32    # "$i$f$visitSelfAndChildren-Y-YKmho":I
    move/from16 v1, v27

    move/from16 v3, v32

    goto/16 :goto_7

    .line 174
    .end local v7    # "branch$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .end local v8    # "node$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .end local v19    # "zOrder$iv$iv":Z
    .end local v27    # "mask$iv$iv":I
    .end local v31    # "zOrder$iv":Z
    .end local v32    # "$i$f$visitSelfAndChildren-Y-YKmho":I
    .restart local v0    # "zOrder$iv$iv":Z
    .restart local v1    # "mask$iv$iv":I
    .restart local v2    # "zOrder$iv":Z
    .restart local v3    # "$i$f$visitSelfAndChildren-Y-YKmho":I
    :cond_20
    move/from16 v19, v0

    .line 175
    .end local v0    # "zOrder$iv$iv":Z
    .end local v1    # "mask$iv$iv":I
    .end local v4    # "$this$visitChildren$iv$iv":Landroidx/compose/ui/node/DelegatableNode;
    .end local v5    # "$i$f$visitChildren":I
    .end local v6    # "child$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .end local v10    # "branches$iv$iv":Landroidx/compose/runtime/collection/MutableVector;
    nop

    .line 57
    .end local v2    # "zOrder$iv":Z
    .end local v3    # "$i$f$visitSelfAndChildren-Y-YKmho":I
    .end local v20    # "$this$visitSelfAndChildren_u2dY_u2dYKmho_u24default$iv":Landroidx/compose/ui/node/DelegatableNode;
    .end local v21    # "$v$c$androidx-compose-ui-node-NodeKind$-type$0$iv":I
    sget-object v0, Landroidx/compose/ui/focus/FocusStateImpl;->Inactive:Landroidx/compose/ui/focus/FocusStateImpl;

    check-cast v0, Landroidx/compose/ui/focus/FocusState;

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method

.method public static final invalidateFocusEvent(Landroidx/compose/ui/focus/FocusEventModifierNode;)V
    .locals 1
    .param p0, "$this$invalidateFocusEvent"    # Landroidx/compose/ui/focus/FocusEventModifierNode;

    .line 42
    move-object v0, p0

    check-cast v0, Landroidx/compose/ui/node/DelegatableNode;

    invoke-static {v0}, Landroidx/compose/ui/node/DelegatableNodeKt;->requireOwner(Landroidx/compose/ui/node/DelegatableNode;)Landroidx/compose/ui/node/Owner;

    move-result-object v0

    invoke-interface {v0}, Landroidx/compose/ui/node/Owner;->getFocusOwner()Landroidx/compose/ui/focus/FocusOwner;

    move-result-object v0

    invoke-interface {v0, p0}, Landroidx/compose/ui/focus/FocusOwner;->scheduleInvalidation(Landroidx/compose/ui/focus/FocusEventModifierNode;)V

    .line 43
    return-void
.end method
