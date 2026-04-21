.class public final Landroidx/compose/ui/node/DrawModifierNodeKt;
.super Ljava/lang/Object;
.source "DrawModifierNode.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nDrawModifierNode.kt\nKotlin\n*S Kotlin\n*F\n+ 1 DrawModifierNode.kt\nandroidx/compose/ui/node/DrawModifierNodeKt\n+ 2 NodeKind.kt\nandroidx/compose/ui/node/Nodes\n+ 3 DelegatableNode.kt\nandroidx/compose/ui/node/DelegatableNodeKt\n+ 4 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 5 Modifier.kt\nandroidx/compose/ui/Modifier$Node\n+ 6 DelegatingNode.kt\nandroidx/compose/ui/node/DelegatingNode\n+ 7 MutableVector.kt\nandroidx/compose/runtime/collection/MutableVectorKt\n*L\n1#1,57:1\n80#2:58\n88#2:59\n556#3,5:60\n561#3:66\n566#3,2:68\n568#3,8:73\n576#3,9:84\n585#3,8:96\n1#4:65\n247#5:67\n240#6,3:70\n243#6,3:93\n1107#7:81\n1085#7,2:82\n*S KotlinDebug\n*F\n+ 1 DrawModifierNode.kt\nandroidx/compose/ui/node/DrawModifierNodeKt\n*L\n41#1:58\n55#1:59\n55#1:60,5\n55#1:66\n55#1:68,2\n55#1:73,8\n55#1:84,9\n55#1:96,8\n55#1:67\n55#1:70,3\n55#1:93,3\n55#1:81\n55#1:82,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0018\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u001a\n\u0010\u0000\u001a\u00020\u0001*\u00020\u0002\u001a\u0012\u0010\u0003\u001a\u00020\u0001*\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006\u00a8\u0006\u0007"
    }
    d2 = {
        "invalidateDraw",
        "",
        "Landroidx/compose/ui/node/DrawModifierNode;",
        "dispatchDraw",
        "Landroidx/compose/ui/node/DelegatableNode;",
        "scope",
        "Landroidx/compose/ui/graphics/drawscope/ContentDrawScope;",
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
.method public static final dispatchDraw(Landroidx/compose/ui/node/DelegatableNode;Landroidx/compose/ui/graphics/drawscope/ContentDrawScope;)V
    .locals 18
    .param p0, "$this$dispatchDraw"    # Landroidx/compose/ui/node/DelegatableNode;
    .param p1, "scope"    # Landroidx/compose/ui/graphics/drawscope/ContentDrawScope;

    .line 55
    invoke-interface/range {p0 .. p0}, Landroidx/compose/ui/node/DelegatableNode;->getNode()Landroidx/compose/ui/Modifier$Node;

    move-result-object v0

    const/4 v1, 0x0

    .line 59
    .local v1, "$i$f$getDraw-OLwlOKw":I
    const/4 v2, 0x4

    invoke-static {v2}, Landroidx/compose/ui/node/NodeKind;->constructor-impl(I)I

    move-result v1

    .line 55
    .end local v1    # "$i$f$getDraw-OLwlOKw":I
    nop

    .local v0, "$this$dispatchForKind_u2d6rFNWt0$iv":Landroidx/compose/ui/Modifier$Node;
    .local v1, "$v$c$androidx-compose-ui-node-NodeKind$-kind$0$iv":I
    const/4 v2, 0x0

    .line 60
    .local v2, "$i$f$dispatchForKind-6rFNWt0":I
    const/4 v3, 0x0

    .line 61
    .local v3, "stack$iv":Ljava/lang/Object;
    const/4 v4, 0x0

    .local v4, "node$iv":Ljava/lang/Object;
    move-object v4, v0

    .line 62
    :goto_0
    if-eqz v4, :cond_c

    .line 63
    instance-of v5, v4, Landroidx/compose/ui/node/DrawModifierNode;

    if-eqz v5, :cond_0

    .line 64
    move-object v5, v4

    check-cast v5, Landroidx/compose/ui/node/DrawModifierNode;

    .local v5, "it":Landroidx/compose/ui/node/DrawModifierNode;
    const/4 v6, 0x0

    .line 55
    .local v6, "$i$a$-dispatchForKind-6rFNWt0-DrawModifierNodeKt$dispatchDraw$1":I
    move-object v7, v5

    .line 65
    .local v7, "$this$dispatchDraw_u24lambda_u240_u240":Landroidx/compose/ui/node/DrawModifierNode;
    const/4 v8, 0x0

    .line 55
    .local v8, "$i$a$-with-DrawModifierNodeKt$dispatchDraw$1$1":I
    move-object/from16 v9, p1

    .line 65
    .local v9, "$this$dispatchDraw_u24lambda_u240_u240_u240":Landroidx/compose/ui/graphics/drawscope/ContentDrawScope;
    const/4 v10, 0x0

    .line 55
    .local v10, "$i$a$-with-DrawModifierNodeKt$dispatchDraw$1$1$1":I
    invoke-interface {v7, v9}, Landroidx/compose/ui/node/DrawModifierNode;->draw(Landroidx/compose/ui/graphics/drawscope/ContentDrawScope;)V

    .line 64
    .end local v5    # "it":Landroidx/compose/ui/node/DrawModifierNode;
    .end local v6    # "$i$a$-dispatchForKind-6rFNWt0-DrawModifierNodeKt$dispatchDraw$1":I
    .end local v7    # "$this$dispatchDraw_u24lambda_u240_u240":Landroidx/compose/ui/node/DrawModifierNode;
    .end local v8    # "$i$a$-with-DrawModifierNodeKt$dispatchDraw$1$1":I
    .end local v9    # "$this$dispatchDraw_u24lambda_u240_u240_u240":Landroidx/compose/ui/graphics/drawscope/ContentDrawScope;
    .end local v10    # "$i$a$-with-DrawModifierNodeKt$dispatchDraw$1$1$1":I
    move-object/from16 v17, v0

    goto/16 :goto_6

    .line 66
    :cond_0
    move v5, v1

    .local v5, "$v$c$androidx-compose-ui-node-NodeKind$-kind$0$iv$iv":I
    move-object v6, v4

    .local v6, "this_$iv$iv":Landroidx/compose/ui/Modifier$Node;
    const/4 v7, 0x0

    .line 67
    .local v7, "$i$f$isKind-H91voCI$ui":I
    invoke-virtual {v6}, Landroidx/compose/ui/Modifier$Node;->getKindSet$ui()I

    move-result v8

    and-int/2addr v8, v5

    const/4 v9, 0x0

    const/4 v10, 0x1

    if-eqz v8, :cond_1

    move v5, v10

    goto :goto_1

    :cond_1
    move v5, v9

    .line 66
    .end local v5    # "$v$c$androidx-compose-ui-node-NodeKind$-kind$0$iv$iv":I
    .end local v6    # "this_$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .end local v7    # "$i$f$isKind-H91voCI$ui":I
    :goto_1
    if-eqz v5, :cond_a

    instance-of v5, v4, Landroidx/compose/ui/node/DelegatingNode;

    if-eqz v5, :cond_a

    .line 68
    const/4 v5, 0x0

    .line 69
    .local v5, "count$iv":I
    move-object v6, v4

    check-cast v6, Landroidx/compose/ui/node/DelegatingNode;

    .local v6, "this_$iv$iv":Landroidx/compose/ui/node/DelegatingNode;
    const/4 v7, 0x0

    .line 70
    .local v7, "$i$f$forEachImmediateDelegate$ui":I
    invoke-virtual {v6}, Landroidx/compose/ui/node/DelegatingNode;->getDelegate$ui()Landroidx/compose/ui/Modifier$Node;

    move-result-object v8

    .line 71
    .local v8, "node$iv$iv":Landroidx/compose/ui/Modifier$Node;
    :goto_2
    if-eqz v8, :cond_9

    .line 72
    move-object v11, v8

    .local v11, "next$iv":Landroidx/compose/ui/Modifier$Node;
    const/4 v12, 0x0

    .line 73
    .local v12, "$i$a$-forEachImmediateDelegate$ui-DelegatableNodeKt$dispatchForKind$1$iv":I
    move v13, v1

    .local v13, "$v$c$androidx-compose-ui-node-NodeKind$-kind$0$iv$iv":I
    move-object v14, v11

    .local v14, "this_$iv$iv":Landroidx/compose/ui/Modifier$Node;
    const/4 v15, 0x0

    .line 67
    .local v15, "$i$f$isKind-H91voCI$ui":I
    invoke-virtual {v14}, Landroidx/compose/ui/Modifier$Node;->getKindSet$ui()I

    move-result v16

    and-int v16, v16, v13

    if-eqz v16, :cond_2

    move v13, v10

    goto :goto_3

    :cond_2
    move v13, v9

    .line 73
    .end local v13    # "$v$c$androidx-compose-ui-node-NodeKind$-kind$0$iv$iv":I
    .end local v14    # "this_$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .end local v15    # "$i$f$isKind-H91voCI$ui":I
    :goto_3
    if-eqz v13, :cond_7

    .line 74
    add-int/lit8 v5, v5, 0x1

    .line 75
    if-ne v5, v10, :cond_3

    .line 76
    move-object v4, v11

    move-object/from16 v17, v0

    goto :goto_5

    .line 80
    :cond_3
    if-nez v3, :cond_4

    const/4 v13, 0x0

    .line 81
    .local v13, "$i$f$mutableVectorOf":I
    nop

    .line 82
    const/16 v14, 0x10

    .local v14, "capacity$iv$iv$iv":I
    const/4 v15, 0x0

    .line 83
    .local v15, "$i$f$MutableVector":I
    new-instance v10, Landroidx/compose/runtime/collection/MutableVector;

    move-object/from16 v17, v0

    .end local v0    # "$this$dispatchForKind_u2d6rFNWt0$iv":Landroidx/compose/ui/Modifier$Node;
    .local v17, "$this$dispatchForKind_u2d6rFNWt0$iv":Landroidx/compose/ui/Modifier$Node;
    new-array v0, v14, [Landroidx/compose/ui/Modifier$Node;

    invoke-direct {v10, v0, v9}, Landroidx/compose/runtime/collection/MutableVector;-><init>([Ljava/lang/Object;I)V

    .line 81
    .end local v14    # "capacity$iv$iv$iv":I
    .end local v15    # "$i$f$MutableVector":I
    goto :goto_4

    .line 80
    .end local v13    # "$i$f$mutableVectorOf":I
    .end local v17    # "$this$dispatchForKind_u2d6rFNWt0$iv":Landroidx/compose/ui/Modifier$Node;
    .restart local v0    # "$this$dispatchForKind_u2d6rFNWt0$iv":Landroidx/compose/ui/Modifier$Node;
    :cond_4
    move-object/from16 v17, v0

    .end local v0    # "$this$dispatchForKind_u2d6rFNWt0$iv":Landroidx/compose/ui/Modifier$Node;
    .restart local v17    # "$this$dispatchForKind_u2d6rFNWt0$iv":Landroidx/compose/ui/Modifier$Node;
    move-object v10, v3

    :goto_4
    move-object v3, v10

    .line 84
    move-object v0, v4

    .line 85
    .local v0, "theNode$iv":Landroidx/compose/ui/Modifier$Node;
    if-eqz v0, :cond_6

    .line 86
    if-eqz v3, :cond_5

    invoke-virtual {v3, v0}, Landroidx/compose/runtime/collection/MutableVector;->add(Ljava/lang/Object;)Z

    .line 87
    :cond_5
    const/4 v4, 0x0

    .line 89
    :cond_6
    if-eqz v3, :cond_8

    invoke-virtual {v3, v11}, Landroidx/compose/runtime/collection/MutableVector;->add(Ljava/lang/Object;)Z

    goto :goto_5

    .line 73
    .end local v17    # "$this$dispatchForKind_u2d6rFNWt0$iv":Landroidx/compose/ui/Modifier$Node;
    .local v0, "$this$dispatchForKind_u2d6rFNWt0$iv":Landroidx/compose/ui/Modifier$Node;
    :cond_7
    move-object/from16 v17, v0

    .line 92
    .end local v0    # "$this$dispatchForKind_u2d6rFNWt0$iv":Landroidx/compose/ui/Modifier$Node;
    .restart local v17    # "$this$dispatchForKind_u2d6rFNWt0$iv":Landroidx/compose/ui/Modifier$Node;
    :cond_8
    :goto_5
    nop

    .line 72
    .end local v11    # "next$iv":Landroidx/compose/ui/Modifier$Node;
    .end local v12    # "$i$a$-forEachImmediateDelegate$ui-DelegatableNodeKt$dispatchForKind$1$iv":I
    nop

    .line 93
    invoke-virtual {v8}, Landroidx/compose/ui/Modifier$Node;->getChild$ui()Landroidx/compose/ui/Modifier$Node;

    move-result-object v8

    move-object/from16 v0, v17

    const/4 v10, 0x1

    goto :goto_2

    .line 95
    .end local v17    # "$this$dispatchForKind_u2d6rFNWt0$iv":Landroidx/compose/ui/Modifier$Node;
    .restart local v0    # "$this$dispatchForKind_u2d6rFNWt0$iv":Landroidx/compose/ui/Modifier$Node;
    :cond_9
    move-object/from16 v17, v0

    .line 96
    .end local v0    # "$this$dispatchForKind_u2d6rFNWt0$iv":Landroidx/compose/ui/Modifier$Node;
    .end local v6    # "this_$iv$iv":Landroidx/compose/ui/node/DelegatingNode;
    .end local v7    # "$i$f$forEachImmediateDelegate$ui":I
    .end local v8    # "node$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .restart local v17    # "$this$dispatchForKind_u2d6rFNWt0$iv":Landroidx/compose/ui/Modifier$Node;
    const/4 v0, 0x1

    if-ne v5, v0, :cond_b

    .line 98
    move-object/from16 v0, v17

    goto/16 :goto_0

    .line 66
    .end local v5    # "count$iv":I
    .end local v17    # "$this$dispatchForKind_u2d6rFNWt0$iv":Landroidx/compose/ui/Modifier$Node;
    .restart local v0    # "$this$dispatchForKind_u2d6rFNWt0$iv":Landroidx/compose/ui/Modifier$Node;
    :cond_a
    move-object/from16 v17, v0

    .line 101
    .end local v0    # "$this$dispatchForKind_u2d6rFNWt0$iv":Landroidx/compose/ui/Modifier$Node;
    .restart local v17    # "$this$dispatchForKind_u2d6rFNWt0$iv":Landroidx/compose/ui/Modifier$Node;
    :cond_b
    :goto_6
    invoke-static {v3}, Landroidx/compose/ui/node/DelegatableNodeKt;->access$pop(Landroidx/compose/runtime/collection/MutableVector;)Landroidx/compose/ui/Modifier$Node;

    move-result-object v4

    move-object/from16 v0, v17

    goto/16 :goto_0

    .line 103
    .end local v17    # "$this$dispatchForKind_u2d6rFNWt0$iv":Landroidx/compose/ui/Modifier$Node;
    .restart local v0    # "$this$dispatchForKind_u2d6rFNWt0$iv":Landroidx/compose/ui/Modifier$Node;
    :cond_c
    nop

    .line 56
    .end local v0    # "$this$dispatchForKind_u2d6rFNWt0$iv":Landroidx/compose/ui/Modifier$Node;
    .end local v1    # "$v$c$androidx-compose-ui-node-NodeKind$-kind$0$iv":I
    .end local v2    # "$i$f$dispatchForKind-6rFNWt0":I
    .end local v3    # "stack$iv":Ljava/lang/Object;
    .end local v4    # "node$iv":Ljava/lang/Object;
    return-void
.end method

.method public static final invalidateDraw(Landroidx/compose/ui/node/DrawModifierNode;)V
    .locals 3
    .param p0, "$this$invalidateDraw"    # Landroidx/compose/ui/node/DrawModifierNode;

    .line 40
    invoke-interface {p0}, Landroidx/compose/ui/node/DrawModifierNode;->getNode()Landroidx/compose/ui/Modifier$Node;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/compose/ui/Modifier$Node;->isAttached()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 41
    move-object v0, p0

    check-cast v0, Landroidx/compose/ui/node/DelegatableNode;

    const/4 v1, 0x0

    .line 58
    .local v1, "$i$f$getAny-OLwlOKw":I
    const/4 v2, 0x1

    invoke-static {v2}, Landroidx/compose/ui/node/NodeKind;->constructor-impl(I)I

    move-result v1

    .line 41
    .end local v1    # "$i$f$getAny-OLwlOKw":I
    invoke-static {v0, v1}, Landroidx/compose/ui/node/DelegatableNodeKt;->requireCoordinator-64DMado(Landroidx/compose/ui/node/DelegatableNode;I)Landroidx/compose/ui/node/NodeCoordinator;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/compose/ui/node/NodeCoordinator;->invalidateLayer()V

    .line 43
    :cond_0
    return-void
.end method
