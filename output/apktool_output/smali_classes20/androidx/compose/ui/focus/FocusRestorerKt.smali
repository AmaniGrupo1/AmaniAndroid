.class public final Landroidx/compose/ui/focus/FocusRestorerKt;
.super Ljava/lang/Object;
.source "FocusRestorer.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nFocusRestorer.kt\nKotlin\n*S Kotlin\n*F\n+ 1 FocusRestorer.kt\nandroidx/compose/ui/focus/FocusRestorerKt\n+ 2 NodeKind.kt\nandroidx/compose/ui/node/Nodes\n+ 3 DelegatableNode.kt\nandroidx/compose/ui/node/DelegatableNodeKt\n+ 4 InlineClassHelper.kt\nandroidx/compose/ui/internal/InlineClassHelperKt\n+ 5 MutableVector.kt\nandroidx/compose/runtime/collection/MutableVectorKt\n+ 6 MutableVector.kt\nandroidx/compose/runtime/collection/MutableVector\n+ 7 Modifier.kt\nandroidx/compose/ui/Modifier$Node\n+ 8 DelegatingNode.kt\nandroidx/compose/ui/node/DelegatingNode\n*L\n1#1,148:1\n120#2:149\n120#2:225\n303#3,5:150\n153#3:155\n154#3:160\n155#3,3:164\n158#3:168\n159#3,9:170\n556#3,6:179\n566#3,2:186\n568#3,17:191\n585#3,8:211\n168#3,6:219\n303#3,5:226\n153#3:231\n154#3:236\n155#3,3:240\n158#3:244\n159#3,9:246\n556#3,6:255\n566#3,2:262\n568#3,17:267\n585#3,8:287\n168#3,6:295\n57#4,4:156\n57#4,4:232\n1107#5:161\n1085#5,2:162\n1107#5:237\n1085#5,2:238\n519#6:167\n44#6:169\n519#6:243\n44#6:245\n247#7:185\n247#7:261\n240#8,3:188\n243#8,3:208\n240#8,3:264\n243#8,3:284\n*S KotlinDebug\n*F\n+ 1 FocusRestorer.kt\nandroidx/compose/ui/focus/FocusRestorerKt\n*L\n39#1:149\n59#1:225\n39#1:150,5\n39#1:155\n39#1:160\n39#1:164,3\n39#1:168\n39#1:170,9\n39#1:179,6\n39#1:186,2\n39#1:191,17\n39#1:211,8\n39#1:219,6\n59#1:226,5\n59#1:231\n59#1:236\n59#1:240,3\n59#1:244\n59#1:246,9\n59#1:255,6\n59#1:262,2\n59#1:267,17\n59#1:287,8\n59#1:295,6\n39#1:156,4\n59#1:232,4\n39#1:161\n39#1:162,2\n59#1:237\n59#1:238,2\n39#1:167\n39#1:169\n59#1:243\n59#1:245\n39#1:185\n59#1:261\n39#1:188,3\n39#1:208,3\n59#1:264,3\n59#1:284,3\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000,\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u000b\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u001a\u000c\u0010\u0002\u001a\u00020\u0003*\u00020\u0004H\u0000\u001a\u000c\u0010\u0005\u001a\u00020\u0003*\u00020\u0004H\u0000\u001a\u000e\u0010\u0006\u001a\u0004\u0018\u00010\u0007*\u00020\u0004H\u0000\u001a\u0014\u0010\u0008\u001a\u00020\t*\u00020\t2\u0008\u0008\u0002\u0010\n\u001a\u00020\u000b\u001a\u001c\u0010\u0008\u001a\u00020\t*\u00020\t2\u000e\u0010\u000c\u001a\n\u0012\u0004\u0012\u00020\u000b\u0018\u00010\rH\u0007\"\u000e\u0010\u0000\u001a\u00020\u0001X\u0082T\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u000e"
    }
    d2 = {
        "PrevFocusedChild",
        "",
        "saveFocusedChild",
        "",
        "Landroidx/compose/ui/focus/FocusTargetNode;",
        "restoreFocusedChild",
        "pinFocusedChild",
        "Landroidx/compose/ui/layout/PinnableContainer$PinnedHandle;",
        "focusRestorer",
        "Landroidx/compose/ui/Modifier;",
        "fallback",
        "Landroidx/compose/ui/focus/FocusRequester;",
        "onRestoreFailed",
        "Lkotlin/Function0;",
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


# static fields
.field private static final PrevFocusedChild:Ljava/lang/String; = "previouslyFocusedChildHash"


# direct methods
.method public static final focusRestorer(Landroidx/compose/ui/Modifier;Landroidx/compose/ui/focus/FocusRequester;)Landroidx/compose/ui/Modifier;
    .locals 1
    .param p0, "$this$focusRestorer"    # Landroidx/compose/ui/Modifier;
    .param p1, "fallback"    # Landroidx/compose/ui/focus/FocusRequester;

    .line 97
    new-instance v0, Landroidx/compose/ui/focus/FocusRestorerElement;

    invoke-direct {v0, p1}, Landroidx/compose/ui/focus/FocusRestorerElement;-><init>(Landroidx/compose/ui/focus/FocusRequester;)V

    check-cast v0, Landroidx/compose/ui/Modifier;

    invoke-interface {p0, v0}, Landroidx/compose/ui/Modifier;->then(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v0

    return-object v0
.end method

.method public static final focusRestorer(Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function0;)Landroidx/compose/ui/Modifier;
    .locals 1
    .param p0, "$this$focusRestorer"    # Landroidx/compose/ui/Modifier;
    .param p1, "onRestoreFailed"    # Lkotlin/jvm/functions/Function0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/ui/Modifier;",
            "Lkotlin/jvm/functions/Function0<",
            "Landroidx/compose/ui/focus/FocusRequester;",
            ">;)",
            "Landroidx/compose/ui/Modifier;"
        }
    .end annotation

    .annotation runtime Lkotlin/Deprecated;
        level = .enum Lkotlin/DeprecationLevel;->WARNING:Lkotlin/DeprecationLevel;
        message = "Use focusRestorer(FocusRequester) instead"
        replaceWith = .subannotation Lkotlin/ReplaceWith;
            expression = "this.focusRestorer(onRestoreFailed())"
            imports = {}
        .end subannotation
    .end annotation

    .line 110
    if-eqz p1, :cond_0

    invoke-interface {p1}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/compose/ui/focus/FocusRequester;

    if-nez v0, :cond_1

    :cond_0
    sget-object v0, Landroidx/compose/ui/focus/FocusRequester;->Companion:Landroidx/compose/ui/focus/FocusRequester$Companion;

    invoke-virtual {v0}, Landroidx/compose/ui/focus/FocusRequester$Companion;->getDefault()Landroidx/compose/ui/focus/FocusRequester;

    move-result-object v0

    :cond_1
    invoke-static {p0, v0}, Landroidx/compose/ui/focus/FocusRestorerKt;->focusRestorer(Landroidx/compose/ui/Modifier;Landroidx/compose/ui/focus/FocusRequester;)Landroidx/compose/ui/Modifier;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic focusRestorer$default(Landroidx/compose/ui/Modifier;Landroidx/compose/ui/focus/FocusRequester;ILjava/lang/Object;)Landroidx/compose/ui/Modifier;
    .locals 0

    .line 96
    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    sget-object p1, Landroidx/compose/ui/focus/FocusRequester;->Companion:Landroidx/compose/ui/focus/FocusRequester$Companion;

    invoke-virtual {p1}, Landroidx/compose/ui/focus/FocusRequester$Companion;->getDefault()Landroidx/compose/ui/focus/FocusRequester;

    move-result-object p1

    :cond_0
    invoke-static {p0, p1}, Landroidx/compose/ui/focus/FocusRestorerKt;->focusRestorer(Landroidx/compose/ui/Modifier;Landroidx/compose/ui/focus/FocusRequester;)Landroidx/compose/ui/Modifier;

    move-result-object p0

    return-object p0
.end method

.method public static final pinFocusedChild(Landroidx/compose/ui/focus/FocusTargetNode;)Landroidx/compose/ui/layout/PinnableContainer$PinnedHandle;
    .locals 2
    .param p0, "$this$pinFocusedChild"    # Landroidx/compose/ui/focus/FocusTargetNode;

    .line 81
    invoke-static {p0}, Landroidx/compose/ui/focus/FocusTraversalKt;->findActiveFocusNode(Landroidx/compose/ui/focus/FocusTargetNode;)Landroidx/compose/ui/focus/FocusTargetNode;

    move-result-object v0

    if-eqz v0, :cond_0

    check-cast v0, Landroidx/compose/ui/node/CompositionLocalConsumerModifierNode;

    invoke-static {}, Landroidx/compose/ui/layout/PinnableContainerKt;->getLocalPinnableContainer()Landroidx/compose/runtime/ProvidableCompositionLocal;

    move-result-object v1

    check-cast v1, Landroidx/compose/runtime/CompositionLocal;

    invoke-static {v0, v1}, Landroidx/compose/ui/node/CompositionLocalConsumerModifierNodeKt;->currentValueOf(Landroidx/compose/ui/node/CompositionLocalConsumerModifierNode;Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/compose/ui/layout/PinnableContainer;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroidx/compose/ui/layout/PinnableContainer;->pin()Landroidx/compose/ui/layout/PinnableContainer$PinnedHandle;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public static final restoreFocusedChild(Landroidx/compose/ui/focus/FocusTargetNode;)Z
    .locals 32
    .param p0, "$this$restoreFocusedChild"    # Landroidx/compose/ui/focus/FocusTargetNode;

    .line 52
    move-object/from16 v0, p0

    invoke-virtual {v0}, Landroidx/compose/ui/focus/FocusTargetNode;->getPreviouslyFocusedChildHash()I

    move-result v1

    if-nez v1, :cond_1

    .line 53
    move-object v1, v0

    check-cast v1, Landroidx/compose/ui/node/CompositionLocalConsumerModifierNode;

    invoke-static {}, Landroidx/compose/runtime/saveable/SaveableStateRegistryKt;->getLocalSaveableStateRegistry()Landroidx/compose/runtime/ProvidableCompositionLocal;

    move-result-object v2

    check-cast v2, Landroidx/compose/runtime/CompositionLocal;

    invoke-static {v1, v2}, Landroidx/compose/ui/node/CompositionLocalConsumerModifierNodeKt;->currentValueOf(Landroidx/compose/ui/node/CompositionLocalConsumerModifierNode;Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/compose/runtime/saveable/SaveableStateRegistry;

    .line 54
    .local v1, "savableStateRegistry":Landroidx/compose/runtime/saveable/SaveableStateRegistry;
    if-eqz v1, :cond_0

    const-string/jumbo v2, "previouslyFocusedChildHash"

    invoke-interface {v1, v2}, Landroidx/compose/runtime/saveable/SaveableStateRegistry;->consumeRestored(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_0

    .local v2, "it":Ljava/lang/Object;
    const/4 v3, 0x0

    .line 55
    .local v3, "$i$a$-let-FocusRestorerKt$restoreFocusedChild$1":I
    move-object v4, v2

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {v0, v4}, Landroidx/compose/ui/focus/FocusTargetNode;->setPreviouslyFocusedChildHash(I)V

    .line 56
    nop

    .line 54
    .end local v2    # "it":Ljava/lang/Object;
    .end local v3    # "$i$a$-let-FocusRestorerKt$restoreFocusedChild$1":I
    :cond_0
    nop

    .line 58
    .end local v1    # "savableStateRegistry":Landroidx/compose/runtime/saveable/SaveableStateRegistry;
    :cond_1
    invoke-virtual {v0}, Landroidx/compose/ui/focus/FocusTargetNode;->getPreviouslyFocusedChildHash()I

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_2

    return v2

    .line 59
    :cond_2
    move-object v1, v0

    check-cast v1, Landroidx/compose/ui/node/DelegatableNode;

    const/4 v3, 0x0

    .line 225
    .local v3, "$i$f$getFocusTarget-OLwlOKw":I
    const/16 v4, 0x400

    invoke-static {v4}, Landroidx/compose/ui/node/NodeKind;->constructor-impl(I)I

    move-result v3

    .line 59
    .end local v3    # "$i$f$getFocusTarget-OLwlOKw":I
    nop

    .line 226
    .local v1, "$this$visitChildren_u2dY_u2dYKmho_u24default$iv":Landroidx/compose/ui/node/DelegatableNode;
    .local v3, "$v$c$androidx-compose-ui-node-NodeKind$-type$0$iv":I
    nop

    .line 228
    const/4 v4, 0x0

    .line 226
    .local v4, "zOrder$iv":Z
    const/4 v5, 0x0

    .line 230
    .local v5, "$i$f$visitChildren-Y-YKmho":I
    move v6, v4

    .local v6, "zOrder$iv$iv":Z
    move v7, v3

    .local v7, "mask$iv$iv":I
    move-object v8, v1

    .local v8, "$this$visitChildren$iv$iv":Landroidx/compose/ui/node/DelegatableNode;
    const/4 v9, 0x0

    .line 231
    .local v9, "$i$f$visitChildren":I
    invoke-interface {v8}, Landroidx/compose/ui/node/DelegatableNode;->getNode()Landroidx/compose/ui/Modifier$Node;

    move-result-object v10

    invoke-virtual {v10}, Landroidx/compose/ui/Modifier$Node;->isAttached()Z

    move-result v10

    .local v10, "value$iv$iv$iv":Z
    const/4 v11, 0x0

    .line 232
    .local v11, "$i$f$checkPrecondition":I
    if-nez v10, :cond_3

    .line 233
    const/4 v12, 0x0

    .line 231
    .local v12, "$i$a$-checkPrecondition-DelegatableNodeKt$visitChildren$1$iv$iv":I
    nop

    .line 233
    .end local v12    # "$i$a$-checkPrecondition-DelegatableNodeKt$visitChildren$1$iv$iv":I
    const-string/jumbo v12, "visitChildren called on an unattached node"

    invoke-static {v12}, Landroidx/compose/ui/internal/InlineClassHelperKt;->throwIllegalStateException(Ljava/lang/String;)V

    .line 235
    :cond_3
    nop

    .line 236
    .end local v10    # "value$iv$iv$iv":Z
    .end local v11    # "$i$f$checkPrecondition":I
    const/4 v10, 0x0

    .line 237
    .local v10, "$i$f$mutableVectorOf":I
    nop

    .line 238
    const/16 v11, 0x10

    .local v11, "capacity$iv$iv$iv$iv":I
    const/4 v12, 0x0

    .line 239
    .local v12, "$i$f$MutableVector":I
    new-instance v13, Landroidx/compose/runtime/collection/MutableVector;

    new-array v14, v11, [Landroidx/compose/ui/Modifier$Node;

    invoke-direct {v13, v14, v2}, Landroidx/compose/runtime/collection/MutableVector;-><init>([Ljava/lang/Object;I)V

    .line 237
    .end local v11    # "capacity$iv$iv$iv$iv":I
    .end local v12    # "$i$f$MutableVector":I
    nop

    .line 236
    .end local v10    # "$i$f$mutableVectorOf":I
    nop

    .line 240
    .local v13, "branches$iv$iv":Landroidx/compose/runtime/collection/MutableVector;
    invoke-interface {v8}, Landroidx/compose/ui/node/DelegatableNode;->getNode()Landroidx/compose/ui/Modifier$Node;

    move-result-object v10

    invoke-virtual {v10}, Landroidx/compose/ui/Modifier$Node;->getChild$ui()Landroidx/compose/ui/Modifier$Node;

    move-result-object v10

    .line 241
    .local v10, "child$iv$iv":Landroidx/compose/ui/Modifier$Node;
    if-nez v10, :cond_4

    invoke-interface {v8}, Landroidx/compose/ui/node/DelegatableNode;->getNode()Landroidx/compose/ui/Modifier$Node;

    move-result-object v11

    invoke-static {v13, v11, v6}, Landroidx/compose/ui/node/DelegatableNodeKt;->access$addLayoutNodeChildren(Landroidx/compose/runtime/collection/MutableVector;Landroidx/compose/ui/Modifier$Node;Z)V

    goto :goto_0

    :cond_4
    invoke-virtual {v13, v10}, Landroidx/compose/runtime/collection/MutableVector;->add(Ljava/lang/Object;)Z

    .line 242
    :goto_0
    move-object v11, v13

    .local v11, "this_$iv$iv$iv":Landroidx/compose/runtime/collection/MutableVector;
    const/4 v12, 0x0

    .line 243
    .local v12, "$i$f$isNotEmpty":I
    invoke-virtual {v11}, Landroidx/compose/runtime/collection/MutableVector;->getSize()I

    move-result v14

    const/4 v15, 0x1

    if-eqz v14, :cond_5

    move v11, v15

    goto :goto_1

    :cond_5
    move v11, v2

    .end local v11    # "this_$iv$iv$iv":Landroidx/compose/runtime/collection/MutableVector;
    .end local v12    # "$i$f$isNotEmpty":I
    :goto_1
    if-eqz v11, :cond_1e

    .line 244
    move-object v11, v13

    .restart local v11    # "this_$iv$iv$iv":Landroidx/compose/runtime/collection/MutableVector;
    const/4 v12, 0x0

    .line 245
    .local v12, "$i$f$getLastIndex":I
    invoke-virtual {v11}, Landroidx/compose/runtime/collection/MutableVector;->getSize()I

    move-result v14

    sub-int/2addr v14, v15

    .line 244
    .end local v11    # "this_$iv$iv$iv":Landroidx/compose/runtime/collection/MutableVector;
    .end local v12    # "$i$f$getLastIndex":I
    invoke-virtual {v13, v14}, Landroidx/compose/runtime/collection/MutableVector;->removeAt(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroidx/compose/ui/Modifier$Node;

    .line 246
    .local v11, "branch$iv$iv":Landroidx/compose/ui/Modifier$Node;
    invoke-virtual {v11}, Landroidx/compose/ui/Modifier$Node;->getAggregateChildKindSet$ui()I

    move-result v12

    and-int/2addr v12, v7

    if-nez v12, :cond_6

    .line 247
    invoke-static {v13, v11, v6}, Landroidx/compose/ui/node/DelegatableNodeKt;->access$addLayoutNodeChildren(Landroidx/compose/runtime/collection/MutableVector;Landroidx/compose/ui/Modifier$Node;Z)V

    .line 249
    goto :goto_0

    .line 251
    :cond_6
    move-object v12, v11

    .line 252
    .local v12, "node$iv$iv":Landroidx/compose/ui/Modifier$Node;
    :goto_2
    if-eqz v12, :cond_1d

    .line 253
    invoke-virtual {v12}, Landroidx/compose/ui/Modifier$Node;->getKindSet$ui()I

    move-result v14

    and-int/2addr v14, v7

    if-eqz v14, :cond_1c

    .line 254
    move-object v14, v12

    .local v14, "it$iv":Landroidx/compose/ui/Modifier$Node;
    const/16 v16, 0x0

    .line 230
    .local v16, "$i$a$-visitChildren-DelegatableNodeKt$visitChildren$2$iv":I
    move/from16 v17, v3

    .local v17, "$v$c$androidx-compose-ui-node-NodeKind$-kind$0$iv$iv":I
    move-object/from16 v18, v14

    .local v18, "$this$dispatchForKind_u2d6rFNWt0$iv$iv":Landroidx/compose/ui/Modifier$Node;
    const/16 v19, 0x0

    .line 255
    .local v19, "$i$f$dispatchForKind-6rFNWt0":I
    const/16 v20, 0x0

    .line 256
    .local v20, "stack$iv$iv":Ljava/lang/Object;
    const/16 v21, 0x0

    .local v21, "node$iv$iv":Ljava/lang/Object;
    move-object/from16 v21, v18

    move-object/from16 v2, v21

    .line 257
    .end local v21    # "node$iv$iv":Ljava/lang/Object;
    .local v2, "node$iv$iv":Ljava/lang/Object;
    :goto_3
    if-eqz v2, :cond_1b

    .line 258
    instance-of v15, v2, Landroidx/compose/ui/focus/FocusTargetNode;

    if-eqz v15, :cond_f

    .line 259
    move-object v15, v2

    check-cast v15, Landroidx/compose/ui/focus/FocusTargetNode;

    .local v15, "it":Landroidx/compose/ui/focus/FocusTargetNode;
    const/16 v22, 0x0

    .line 61
    .local v22, "$i$a$-visitChildren-Y-YKmho$default-FocusRestorerKt$restoreFocusedChild$2":I
    nop

    .line 62
    invoke-virtual {v15}, Landroidx/compose/ui/focus/FocusTargetNode;->isAttached()Z

    move-result v23

    if-eqz v23, :cond_e

    move-object/from16 v23, v15

    check-cast v23, Landroidx/compose/ui/node/DelegatableNode;

    invoke-static/range {v23 .. v23}, Landroidx/compose/ui/node/DelegatableNodeKt;->requireLayoutNode(Landroidx/compose/ui/node/DelegatableNode;)Landroidx/compose/ui/node/LayoutNode;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Landroidx/compose/ui/node/LayoutNode;->getCompositeKeyHash()I

    move-result v0

    move-object/from16 v23, v1

    .end local v1    # "$this$visitChildren_u2dY_u2dYKmho_u24default$iv":Landroidx/compose/ui/node/DelegatableNode;
    .local v23, "$this$visitChildren_u2dY_u2dYKmho_u24default$iv":Landroidx/compose/ui/node/DelegatableNode;
    invoke-virtual/range {p0 .. p0}, Landroidx/compose/ui/focus/FocusTargetNode;->getPreviouslyFocusedChildHash()I

    move-result v1

    if-ne v0, v1, :cond_d

    .line 65
    sget-boolean v0, Landroidx/compose/ui/ComposeUiFlags;->isRequestFocusOnNonFocusableFocusTargetEnabled:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_a

    .line 66
    invoke-static {v15}, Landroidx/compose/ui/focus/FocusRestorerKt;->restoreFocusedChild(Landroidx/compose/ui/focus/FocusTargetNode;)Z

    move-result v0

    if-nez v0, :cond_9

    .line 71
    invoke-virtual {v15}, Landroidx/compose/ui/focus/FocusTargetNode;->fetchFocusProperties$ui()Landroidx/compose/ui/focus/FocusProperties;

    move-result-object v0

    invoke-interface {v0}, Landroidx/compose/ui/focus/FocusProperties;->getCanFocus()Z

    move-result v0

    if-eqz v0, :cond_7

    move-object v0, v15

    check-cast v0, Landroidx/compose/ui/focus/FocusTargetModifierNode;

    move/from16 v24, v3

    move/from16 v25, v4

    const/4 v3, 0x1

    const/4 v4, 0x0

    .end local v3    # "$v$c$androidx-compose-ui-node-NodeKind$-type$0$iv":I
    .end local v4    # "zOrder$iv":Z
    .local v24, "$v$c$androidx-compose-ui-node-NodeKind$-type$0$iv":I
    .local v25, "zOrder$iv":Z
    invoke-static {v0, v4, v3, v1}, Landroidx/compose/ui/focus/FocusTargetModifierNode;->requestFocus-3ESFkO8$default(Landroidx/compose/ui/focus/FocusTargetModifierNode;IILjava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    goto :goto_4

    .end local v24    # "$v$c$androidx-compose-ui-node-NodeKind$-type$0$iv":I
    .end local v25    # "zOrder$iv":Z
    .restart local v3    # "$v$c$androidx-compose-ui-node-NodeKind$-type$0$iv":I
    .restart local v4    # "zOrder$iv":Z
    :cond_7
    move/from16 v24, v3

    move/from16 v25, v4

    .end local v3    # "$v$c$androidx-compose-ui-node-NodeKind$-type$0$iv":I
    .end local v4    # "zOrder$iv":Z
    .restart local v24    # "$v$c$androidx-compose-ui-node-NodeKind$-type$0$iv":I
    .restart local v25    # "zOrder$iv":Z
    :cond_8
    const/16 v21, 0x0

    goto :goto_5

    .line 66
    .end local v24    # "$v$c$androidx-compose-ui-node-NodeKind$-type$0$iv":I
    .end local v25    # "zOrder$iv":Z
    .restart local v3    # "$v$c$androidx-compose-ui-node-NodeKind$-type$0$iv":I
    .restart local v4    # "zOrder$iv":Z
    :cond_9
    move/from16 v24, v3

    move/from16 v25, v4

    .line 71
    .end local v3    # "$v$c$androidx-compose-ui-node-NodeKind$-type$0$iv":I
    .end local v4    # "zOrder$iv":Z
    .restart local v24    # "$v$c$androidx-compose-ui-node-NodeKind$-type$0$iv":I
    .restart local v25    # "zOrder$iv":Z
    :goto_4
    const/16 v21, 0x1

    .line 66
    :goto_5
    return v21

    .line 73
    .end local v24    # "$v$c$androidx-compose-ui-node-NodeKind$-type$0$iv":I
    .end local v25    # "zOrder$iv":Z
    .restart local v3    # "$v$c$androidx-compose-ui-node-NodeKind$-type$0$iv":I
    .restart local v4    # "zOrder$iv":Z
    :cond_a
    move/from16 v24, v3

    move/from16 v25, v4

    .end local v3    # "$v$c$androidx-compose-ui-node-NodeKind$-type$0$iv":I
    .end local v4    # "zOrder$iv":Z
    .restart local v24    # "$v$c$androidx-compose-ui-node-NodeKind$-type$0$iv":I
    .restart local v25    # "zOrder$iv":Z
    invoke-static {v15}, Landroidx/compose/ui/focus/FocusRestorerKt;->restoreFocusedChild(Landroidx/compose/ui/focus/FocusTargetNode;)Z

    move-result v0

    if-nez v0, :cond_c

    move-object v0, v15

    check-cast v0, Landroidx/compose/ui/focus/FocusTargetModifierNode;

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-static {v0, v4, v3, v1}, Landroidx/compose/ui/focus/FocusTargetModifierNode;->requestFocus-3ESFkO8$default(Landroidx/compose/ui/focus/FocusTargetModifierNode;IILjava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    goto :goto_6

    :cond_b
    const/16 v21, 0x0

    goto :goto_7

    :cond_c
    :goto_6
    const/16 v21, 0x1

    .line 65
    :goto_7
    return v21

    .line 62
    .end local v24    # "$v$c$androidx-compose-ui-node-NodeKind$-type$0$iv":I
    .end local v25    # "zOrder$iv":Z
    .restart local v3    # "$v$c$androidx-compose-ui-node-NodeKind$-type$0$iv":I
    .restart local v4    # "zOrder$iv":Z
    :cond_d
    move/from16 v24, v3

    move/from16 v25, v4

    .end local v3    # "$v$c$androidx-compose-ui-node-NodeKind$-type$0$iv":I
    .end local v4    # "zOrder$iv":Z
    .restart local v24    # "$v$c$androidx-compose-ui-node-NodeKind$-type$0$iv":I
    .restart local v25    # "zOrder$iv":Z
    goto :goto_8

    .end local v23    # "$this$visitChildren_u2dY_u2dYKmho_u24default$iv":Landroidx/compose/ui/node/DelegatableNode;
    .end local v24    # "$v$c$androidx-compose-ui-node-NodeKind$-type$0$iv":I
    .end local v25    # "zOrder$iv":Z
    .restart local v1    # "$this$visitChildren_u2dY_u2dYKmho_u24default$iv":Landroidx/compose/ui/node/DelegatableNode;
    .restart local v3    # "$v$c$androidx-compose-ui-node-NodeKind$-type$0$iv":I
    .restart local v4    # "zOrder$iv":Z
    :cond_e
    move-object/from16 v23, v1

    move/from16 v24, v3

    move/from16 v25, v4

    .line 76
    .end local v1    # "$this$visitChildren_u2dY_u2dYKmho_u24default$iv":Landroidx/compose/ui/node/DelegatableNode;
    .end local v3    # "$v$c$androidx-compose-ui-node-NodeKind$-type$0$iv":I
    .end local v4    # "zOrder$iv":Z
    .restart local v23    # "$this$visitChildren_u2dY_u2dYKmho_u24default$iv":Landroidx/compose/ui/node/DelegatableNode;
    .restart local v24    # "$v$c$androidx-compose-ui-node-NodeKind$-type$0$iv":I
    .restart local v25    # "zOrder$iv":Z
    :goto_8
    nop

    .line 259
    .end local v15    # "it":Landroidx/compose/ui/focus/FocusTargetNode;
    .end local v22    # "$i$a$-visitChildren-Y-YKmho$default-FocusRestorerKt$restoreFocusedChild$2":I
    const/4 v3, 0x1

    goto/16 :goto_f

    .line 260
    .end local v23    # "$this$visitChildren_u2dY_u2dYKmho_u24default$iv":Landroidx/compose/ui/node/DelegatableNode;
    .end local v24    # "$v$c$androidx-compose-ui-node-NodeKind$-type$0$iv":I
    .end local v25    # "zOrder$iv":Z
    .restart local v1    # "$this$visitChildren_u2dY_u2dYKmho_u24default$iv":Landroidx/compose/ui/node/DelegatableNode;
    .restart local v3    # "$v$c$androidx-compose-ui-node-NodeKind$-type$0$iv":I
    .restart local v4    # "zOrder$iv":Z
    :cond_f
    move-object/from16 v23, v1

    move/from16 v24, v3

    move/from16 v25, v4

    .end local v1    # "$this$visitChildren_u2dY_u2dYKmho_u24default$iv":Landroidx/compose/ui/node/DelegatableNode;
    .end local v3    # "$v$c$androidx-compose-ui-node-NodeKind$-type$0$iv":I
    .end local v4    # "zOrder$iv":Z
    .restart local v23    # "$this$visitChildren_u2dY_u2dYKmho_u24default$iv":Landroidx/compose/ui/node/DelegatableNode;
    .restart local v24    # "$v$c$androidx-compose-ui-node-NodeKind$-type$0$iv":I
    .restart local v25    # "zOrder$iv":Z
    move/from16 v0, v17

    .local v0, "$v$c$androidx-compose-ui-node-NodeKind$-kind$0$iv$iv$iv":I
    move-object v1, v2

    .local v1, "this_$iv$iv$iv":Landroidx/compose/ui/Modifier$Node;
    const/4 v3, 0x0

    .line 261
    .local v3, "$i$f$isKind-H91voCI$ui":I
    invoke-virtual {v1}, Landroidx/compose/ui/Modifier$Node;->getKindSet$ui()I

    move-result v4

    and-int/2addr v4, v0

    if-eqz v4, :cond_10

    const/4 v0, 0x1

    goto :goto_9

    :cond_10
    const/4 v0, 0x0

    .line 260
    .end local v0    # "$v$c$androidx-compose-ui-node-NodeKind$-kind$0$iv$iv$iv":I
    .end local v1    # "this_$iv$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .end local v3    # "$i$f$isKind-H91voCI$ui":I
    :goto_9
    if-eqz v0, :cond_1a

    instance-of v0, v2, Landroidx/compose/ui/node/DelegatingNode;

    if-eqz v0, :cond_1a

    .line 262
    const/4 v0, 0x0

    .line 263
    .local v0, "count$iv$iv":I
    move-object v1, v2

    check-cast v1, Landroidx/compose/ui/node/DelegatingNode;

    .local v1, "this_$iv$iv$iv":Landroidx/compose/ui/node/DelegatingNode;
    const/4 v3, 0x0

    .line 264
    .local v3, "$i$f$forEachImmediateDelegate$ui":I
    invoke-virtual {v1}, Landroidx/compose/ui/node/DelegatingNode;->getDelegate$ui()Landroidx/compose/ui/Modifier$Node;

    move-result-object v4

    .line 265
    .local v4, "node$iv$iv$iv":Landroidx/compose/ui/Modifier$Node;
    :goto_a
    if-eqz v4, :cond_18

    .line 266
    move-object v15, v4

    .local v15, "next$iv$iv":Landroidx/compose/ui/Modifier$Node;
    const/16 v22, 0x0

    .line 267
    .local v22, "$i$a$-forEachImmediateDelegate$ui-DelegatableNodeKt$dispatchForKind$1$iv$iv":I
    move/from16 v26, v17

    .local v26, "$v$c$androidx-compose-ui-node-NodeKind$-kind$0$iv$iv$iv":I
    move-object/from16 v27, v15

    .local v27, "this_$iv$iv$iv":Landroidx/compose/ui/Modifier$Node;
    const/16 v28, 0x0

    .line 261
    .local v28, "$i$f$isKind-H91voCI$ui":I
    invoke-virtual/range {v27 .. v27}, Landroidx/compose/ui/Modifier$Node;->getKindSet$ui()I

    move-result v29

    and-int v29, v29, v26

    if-eqz v29, :cond_11

    const/16 v26, 0x1

    goto :goto_b

    :cond_11
    const/16 v26, 0x0

    .line 267
    .end local v26    # "$v$c$androidx-compose-ui-node-NodeKind$-kind$0$iv$iv$iv":I
    .end local v27    # "this_$iv$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .end local v28    # "$i$f$isKind-H91voCI$ui":I
    :goto_b
    if-eqz v26, :cond_17

    .line 268
    add-int/lit8 v0, v0, 0x1

    .line 269
    move-object/from16 v26, v1

    const/4 v1, 0x1

    .end local v1    # "this_$iv$iv$iv":Landroidx/compose/ui/node/DelegatingNode;
    .local v26, "this_$iv$iv$iv":Landroidx/compose/ui/node/DelegatingNode;
    if-ne v0, v1, :cond_12

    .line 270
    move-object v2, v15

    goto :goto_e

    .line 274
    :cond_12
    if-nez v20, :cond_13

    const/4 v1, 0x0

    .line 237
    .local v1, "$i$f$mutableVectorOf":I
    nop

    .line 238
    move/from16 v27, v0

    .end local v0    # "count$iv$iv":I
    .local v27, "count$iv$iv":I
    const/16 v0, 0x10

    .local v0, "capacity$iv$iv$iv$iv":I
    const/16 v28, 0x0

    .line 239
    .local v28, "$i$f$MutableVector":I
    move/from16 v29, v1

    .end local v1    # "$i$f$mutableVectorOf":I
    .local v29, "$i$f$mutableVectorOf":I
    new-instance v1, Landroidx/compose/runtime/collection/MutableVector;

    move-object/from16 v30, v2

    .end local v2    # "node$iv$iv":Ljava/lang/Object;
    .local v30, "node$iv$iv":Ljava/lang/Object;
    new-array v2, v0, [Landroidx/compose/ui/Modifier$Node;

    move/from16 v31, v0

    const/4 v0, 0x0

    .end local v0    # "capacity$iv$iv$iv$iv":I
    .local v31, "capacity$iv$iv$iv$iv":I
    invoke-direct {v1, v2, v0}, Landroidx/compose/runtime/collection/MutableVector;-><init>([Ljava/lang/Object;I)V

    .line 237
    .end local v28    # "$i$f$MutableVector":I
    .end local v31    # "capacity$iv$iv$iv$iv":I
    goto :goto_c

    .line 274
    .end local v27    # "count$iv$iv":I
    .end local v29    # "$i$f$mutableVectorOf":I
    .end local v30    # "node$iv$iv":Ljava/lang/Object;
    .local v0, "count$iv$iv":I
    .restart local v2    # "node$iv$iv":Ljava/lang/Object;
    :cond_13
    move/from16 v27, v0

    move-object/from16 v30, v2

    .end local v0    # "count$iv$iv":I
    .end local v2    # "node$iv$iv":Ljava/lang/Object;
    .restart local v27    # "count$iv$iv":I
    .restart local v30    # "node$iv$iv":Ljava/lang/Object;
    move-object/from16 v1, v20

    :goto_c
    nop

    .line 275
    .end local v20    # "stack$iv$iv":Ljava/lang/Object;
    .local v1, "stack$iv$iv":Ljava/lang/Object;
    move-object/from16 v0, v30

    .line 276
    .local v0, "theNode$iv$iv":Landroidx/compose/ui/Modifier$Node;
    if-eqz v0, :cond_15

    .line 277
    if-eqz v1, :cond_14

    invoke-virtual {v1, v0}, Landroidx/compose/runtime/collection/MutableVector;->add(Ljava/lang/Object;)Z

    .line 278
    :cond_14
    const/4 v2, 0x0

    .end local v30    # "node$iv$iv":Ljava/lang/Object;
    .restart local v2    # "node$iv$iv":Ljava/lang/Object;
    goto :goto_d

    .line 276
    .end local v2    # "node$iv$iv":Ljava/lang/Object;
    .restart local v30    # "node$iv$iv":Ljava/lang/Object;
    :cond_15
    move-object/from16 v2, v30

    .line 280
    .end local v30    # "node$iv$iv":Ljava/lang/Object;
    .restart local v2    # "node$iv$iv":Ljava/lang/Object;
    :goto_d
    if-eqz v1, :cond_16

    invoke-virtual {v1, v15}, Landroidx/compose/runtime/collection/MutableVector;->add(Ljava/lang/Object;)Z

    .line 283
    .end local v0    # "theNode$iv$iv":Landroidx/compose/ui/Modifier$Node;
    :cond_16
    move-object/from16 v20, v1

    move/from16 v0, v27

    goto :goto_e

    .line 267
    .end local v26    # "this_$iv$iv$iv":Landroidx/compose/ui/node/DelegatingNode;
    .end local v27    # "count$iv$iv":I
    .local v0, "count$iv$iv":I
    .local v1, "this_$iv$iv$iv":Landroidx/compose/ui/node/DelegatingNode;
    .restart local v20    # "stack$iv$iv":Ljava/lang/Object;
    :cond_17
    move-object/from16 v26, v1

    move-object/from16 v30, v2

    .line 283
    .end local v1    # "this_$iv$iv$iv":Landroidx/compose/ui/node/DelegatingNode;
    .restart local v26    # "this_$iv$iv$iv":Landroidx/compose/ui/node/DelegatingNode;
    :goto_e
    nop

    .line 266
    .end local v15    # "next$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .end local v22    # "$i$a$-forEachImmediateDelegate$ui-DelegatableNodeKt$dispatchForKind$1$iv$iv":I
    nop

    .line 284
    invoke-virtual {v4}, Landroidx/compose/ui/Modifier$Node;->getChild$ui()Landroidx/compose/ui/Modifier$Node;

    move-result-object v4

    move-object/from16 v1, v26

    goto :goto_a

    .line 286
    .end local v26    # "this_$iv$iv$iv":Landroidx/compose/ui/node/DelegatingNode;
    .restart local v1    # "this_$iv$iv$iv":Landroidx/compose/ui/node/DelegatingNode;
    :cond_18
    move-object/from16 v26, v1

    move-object/from16 v30, v2

    .line 287
    .end local v1    # "this_$iv$iv$iv":Landroidx/compose/ui/node/DelegatingNode;
    .end local v2    # "node$iv$iv":Ljava/lang/Object;
    .end local v3    # "$i$f$forEachImmediateDelegate$ui":I
    .end local v4    # "node$iv$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .restart local v30    # "node$iv$iv":Ljava/lang/Object;
    const/4 v3, 0x1

    if-ne v0, v3, :cond_19

    .line 289
    move-object/from16 v0, p0

    move v15, v3

    move-object/from16 v1, v23

    move/from16 v3, v24

    move/from16 v4, v25

    move-object/from16 v2, v30

    goto/16 :goto_3

    .line 287
    :cond_19
    move-object/from16 v2, v30

    goto :goto_f

    .line 260
    .end local v0    # "count$iv$iv":I
    .end local v30    # "node$iv$iv":Ljava/lang/Object;
    .restart local v2    # "node$iv$iv":Ljava/lang/Object;
    :cond_1a
    const/4 v3, 0x1

    .line 292
    :goto_f
    invoke-static/range {v20 .. v20}, Landroidx/compose/ui/node/DelegatableNodeKt;->access$pop(Landroidx/compose/runtime/collection/MutableVector;)Landroidx/compose/ui/Modifier$Node;

    move-result-object v2

    move-object/from16 v0, p0

    move v15, v3

    move-object/from16 v1, v23

    move/from16 v3, v24

    move/from16 v4, v25

    goto/16 :goto_3

    .line 294
    .end local v23    # "$this$visitChildren_u2dY_u2dYKmho_u24default$iv":Landroidx/compose/ui/node/DelegatableNode;
    .end local v24    # "$v$c$androidx-compose-ui-node-NodeKind$-type$0$iv":I
    .end local v25    # "zOrder$iv":Z
    .local v1, "$this$visitChildren_u2dY_u2dYKmho_u24default$iv":Landroidx/compose/ui/node/DelegatableNode;
    .local v3, "$v$c$androidx-compose-ui-node-NodeKind$-type$0$iv":I
    .local v4, "zOrder$iv":Z
    :cond_1b
    move-object/from16 v23, v1

    move/from16 v24, v3

    move/from16 v25, v4

    .line 230
    .end local v1    # "$this$visitChildren_u2dY_u2dYKmho_u24default$iv":Landroidx/compose/ui/node/DelegatableNode;
    .end local v2    # "node$iv$iv":Ljava/lang/Object;
    .end local v3    # "$v$c$androidx-compose-ui-node-NodeKind$-type$0$iv":I
    .end local v4    # "zOrder$iv":Z
    .end local v17    # "$v$c$androidx-compose-ui-node-NodeKind$-kind$0$iv$iv":I
    .end local v18    # "$this$dispatchForKind_u2d6rFNWt0$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .end local v19    # "$i$f$dispatchForKind-6rFNWt0":I
    .end local v20    # "stack$iv$iv":Ljava/lang/Object;
    .restart local v23    # "$this$visitChildren_u2dY_u2dYKmho_u24default$iv":Landroidx/compose/ui/node/DelegatableNode;
    .restart local v24    # "$v$c$androidx-compose-ui-node-NodeKind$-type$0$iv":I
    .restart local v25    # "zOrder$iv":Z
    nop

    .line 254
    .end local v14    # "it$iv":Landroidx/compose/ui/Modifier$Node;
    .end local v16    # "$i$a$-visitChildren-DelegatableNodeKt$visitChildren$2$iv":I
    nop

    .line 295
    move-object/from16 v0, p0

    const/4 v2, 0x0

    goto/16 :goto_0

    .line 297
    .end local v23    # "$this$visitChildren_u2dY_u2dYKmho_u24default$iv":Landroidx/compose/ui/node/DelegatableNode;
    .end local v24    # "$v$c$androidx-compose-ui-node-NodeKind$-type$0$iv":I
    .end local v25    # "zOrder$iv":Z
    .restart local v1    # "$this$visitChildren_u2dY_u2dYKmho_u24default$iv":Landroidx/compose/ui/node/DelegatableNode;
    .restart local v3    # "$v$c$androidx-compose-ui-node-NodeKind$-type$0$iv":I
    .restart local v4    # "zOrder$iv":Z
    :cond_1c
    move-object/from16 v23, v1

    move/from16 v24, v3

    move/from16 v25, v4

    move v3, v15

    .end local v1    # "$this$visitChildren_u2dY_u2dYKmho_u24default$iv":Landroidx/compose/ui/node/DelegatableNode;
    .end local v3    # "$v$c$androidx-compose-ui-node-NodeKind$-type$0$iv":I
    .end local v4    # "zOrder$iv":Z
    .restart local v23    # "$this$visitChildren_u2dY_u2dYKmho_u24default$iv":Landroidx/compose/ui/node/DelegatableNode;
    .restart local v24    # "$v$c$androidx-compose-ui-node-NodeKind$-type$0$iv":I
    .restart local v25    # "zOrder$iv":Z
    invoke-virtual {v12}, Landroidx/compose/ui/Modifier$Node;->getChild$ui()Landroidx/compose/ui/Modifier$Node;

    move-result-object v12

    move-object/from16 v0, p0

    move/from16 v3, v24

    const/4 v2, 0x0

    goto/16 :goto_2

    .line 252
    .end local v23    # "$this$visitChildren_u2dY_u2dYKmho_u24default$iv":Landroidx/compose/ui/node/DelegatableNode;
    .end local v24    # "$v$c$androidx-compose-ui-node-NodeKind$-type$0$iv":I
    .end local v25    # "zOrder$iv":Z
    .restart local v1    # "$this$visitChildren_u2dY_u2dYKmho_u24default$iv":Landroidx/compose/ui/node/DelegatableNode;
    .restart local v3    # "$v$c$androidx-compose-ui-node-NodeKind$-type$0$iv":I
    .restart local v4    # "zOrder$iv":Z
    :cond_1d
    move-object/from16 v23, v1

    move/from16 v24, v3

    move/from16 v25, v4

    .end local v1    # "$this$visitChildren_u2dY_u2dYKmho_u24default$iv":Landroidx/compose/ui/node/DelegatableNode;
    .end local v3    # "$v$c$androidx-compose-ui-node-NodeKind$-type$0$iv":I
    .end local v4    # "zOrder$iv":Z
    .restart local v23    # "$this$visitChildren_u2dY_u2dYKmho_u24default$iv":Landroidx/compose/ui/node/DelegatableNode;
    .restart local v24    # "$v$c$androidx-compose-ui-node-NodeKind$-type$0$iv":I
    .restart local v25    # "zOrder$iv":Z
    move-object/from16 v0, p0

    const/4 v2, 0x0

    goto/16 :goto_0

    .line 300
    .end local v11    # "branch$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .end local v12    # "node$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .end local v23    # "$this$visitChildren_u2dY_u2dYKmho_u24default$iv":Landroidx/compose/ui/node/DelegatableNode;
    .end local v24    # "$v$c$androidx-compose-ui-node-NodeKind$-type$0$iv":I
    .end local v25    # "zOrder$iv":Z
    .restart local v1    # "$this$visitChildren_u2dY_u2dYKmho_u24default$iv":Landroidx/compose/ui/node/DelegatableNode;
    .restart local v3    # "$v$c$androidx-compose-ui-node-NodeKind$-type$0$iv":I
    .restart local v4    # "zOrder$iv":Z
    :cond_1e
    nop

    .line 230
    .end local v6    # "zOrder$iv$iv":Z
    .end local v7    # "mask$iv$iv":I
    .end local v8    # "$this$visitChildren$iv$iv":Landroidx/compose/ui/node/DelegatableNode;
    .end local v9    # "$i$f$visitChildren":I
    .end local v10    # "child$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .end local v13    # "branches$iv$iv":Landroidx/compose/runtime/collection/MutableVector;
    nop

    .line 77
    .end local v1    # "$this$visitChildren_u2dY_u2dYKmho_u24default$iv":Landroidx/compose/ui/node/DelegatableNode;
    .end local v3    # "$v$c$androidx-compose-ui-node-NodeKind$-type$0$iv":I
    .end local v4    # "zOrder$iv":Z
    .end local v5    # "$i$f$visitChildren-Y-YKmho":I
    const/16 v21, 0x0

    return v21
.end method

.method public static final saveFocusedChild(Landroidx/compose/ui/focus/FocusTargetNode;)Z
    .locals 33
    .param p0, "$this$saveFocusedChild"    # Landroidx/compose/ui/focus/FocusTargetNode;

    .line 38
    move-object/from16 v0, p0

    invoke-virtual {v0}, Landroidx/compose/ui/focus/FocusTargetNode;->getFocusState()Landroidx/compose/ui/focus/FocusStateImpl;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/compose/ui/focus/FocusStateImpl;->getHasFocus()Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    return v2

    .line 39
    :cond_0
    move-object v1, v0

    check-cast v1, Landroidx/compose/ui/node/DelegatableNode;

    const/4 v3, 0x0

    .line 149
    .local v3, "$i$f$getFocusTarget-OLwlOKw":I
    const/16 v4, 0x400

    invoke-static {v4}, Landroidx/compose/ui/node/NodeKind;->constructor-impl(I)I

    move-result v3

    .line 39
    .end local v3    # "$i$f$getFocusTarget-OLwlOKw":I
    nop

    .line 150
    .local v1, "$this$visitChildren_u2dY_u2dYKmho_u24default$iv":Landroidx/compose/ui/node/DelegatableNode;
    .local v3, "$v$c$androidx-compose-ui-node-NodeKind$-type$0$iv":I
    nop

    .line 152
    const/4 v4, 0x0

    .line 150
    .local v4, "zOrder$iv":Z
    const/4 v5, 0x0

    .line 154
    .local v5, "$i$f$visitChildren-Y-YKmho":I
    move v6, v4

    .local v6, "zOrder$iv$iv":Z
    move v7, v3

    .local v7, "mask$iv$iv":I
    move-object v8, v1

    .local v8, "$this$visitChildren$iv$iv":Landroidx/compose/ui/node/DelegatableNode;
    const/4 v9, 0x0

    .line 155
    .local v9, "$i$f$visitChildren":I
    invoke-interface {v8}, Landroidx/compose/ui/node/DelegatableNode;->getNode()Landroidx/compose/ui/Modifier$Node;

    move-result-object v10

    invoke-virtual {v10}, Landroidx/compose/ui/Modifier$Node;->isAttached()Z

    move-result v10

    .local v10, "value$iv$iv$iv":Z
    const/4 v11, 0x0

    .line 156
    .local v11, "$i$f$checkPrecondition":I
    if-nez v10, :cond_1

    .line 157
    const/4 v12, 0x0

    .line 155
    .local v12, "$i$a$-checkPrecondition-DelegatableNodeKt$visitChildren$1$iv$iv":I
    nop

    .line 157
    .end local v12    # "$i$a$-checkPrecondition-DelegatableNodeKt$visitChildren$1$iv$iv":I
    const-string/jumbo v12, "visitChildren called on an unattached node"

    invoke-static {v12}, Landroidx/compose/ui/internal/InlineClassHelperKt;->throwIllegalStateException(Ljava/lang/String;)V

    .line 159
    :cond_1
    nop

    .line 160
    .end local v10    # "value$iv$iv$iv":Z
    .end local v11    # "$i$f$checkPrecondition":I
    const/4 v10, 0x0

    .line 161
    .local v10, "$i$f$mutableVectorOf":I
    nop

    .line 162
    const/16 v11, 0x10

    .local v11, "capacity$iv$iv$iv$iv":I
    const/4 v12, 0x0

    .line 163
    .local v12, "$i$f$MutableVector":I
    new-instance v13, Landroidx/compose/runtime/collection/MutableVector;

    new-array v14, v11, [Landroidx/compose/ui/Modifier$Node;

    invoke-direct {v13, v14, v2}, Landroidx/compose/runtime/collection/MutableVector;-><init>([Ljava/lang/Object;I)V

    .line 161
    .end local v11    # "capacity$iv$iv$iv$iv":I
    .end local v12    # "$i$f$MutableVector":I
    nop

    .line 160
    .end local v10    # "$i$f$mutableVectorOf":I
    nop

    .line 164
    .local v13, "branches$iv$iv":Landroidx/compose/runtime/collection/MutableVector;
    invoke-interface {v8}, Landroidx/compose/ui/node/DelegatableNode;->getNode()Landroidx/compose/ui/Modifier$Node;

    move-result-object v10

    invoke-virtual {v10}, Landroidx/compose/ui/Modifier$Node;->getChild$ui()Landroidx/compose/ui/Modifier$Node;

    move-result-object v10

    .line 165
    .local v10, "child$iv$iv":Landroidx/compose/ui/Modifier$Node;
    if-nez v10, :cond_2

    invoke-interface {v8}, Landroidx/compose/ui/node/DelegatableNode;->getNode()Landroidx/compose/ui/Modifier$Node;

    move-result-object v11

    invoke-static {v13, v11, v6}, Landroidx/compose/ui/node/DelegatableNodeKt;->access$addLayoutNodeChildren(Landroidx/compose/runtime/collection/MutableVector;Landroidx/compose/ui/Modifier$Node;Z)V

    goto :goto_0

    :cond_2
    invoke-virtual {v13, v10}, Landroidx/compose/runtime/collection/MutableVector;->add(Ljava/lang/Object;)Z

    .line 166
    :goto_0
    move-object v11, v13

    .local v11, "this_$iv$iv$iv":Landroidx/compose/runtime/collection/MutableVector;
    const/4 v12, 0x0

    .line 167
    .local v12, "$i$f$isNotEmpty":I
    invoke-virtual {v11}, Landroidx/compose/runtime/collection/MutableVector;->getSize()I

    move-result v14

    const/4 v15, 0x1

    if-eqz v14, :cond_3

    move v11, v15

    goto :goto_1

    :cond_3
    move v11, v2

    .end local v11    # "this_$iv$iv$iv":Landroidx/compose/runtime/collection/MutableVector;
    .end local v12    # "$i$f$isNotEmpty":I
    :goto_1
    if-eqz v11, :cond_16

    .line 168
    move-object v11, v13

    .restart local v11    # "this_$iv$iv$iv":Landroidx/compose/runtime/collection/MutableVector;
    const/4 v12, 0x0

    .line 169
    .local v12, "$i$f$getLastIndex":I
    invoke-virtual {v11}, Landroidx/compose/runtime/collection/MutableVector;->getSize()I

    move-result v14

    sub-int/2addr v14, v15

    .line 168
    .end local v11    # "this_$iv$iv$iv":Landroidx/compose/runtime/collection/MutableVector;
    .end local v12    # "$i$f$getLastIndex":I
    invoke-virtual {v13, v14}, Landroidx/compose/runtime/collection/MutableVector;->removeAt(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroidx/compose/ui/Modifier$Node;

    .line 170
    .local v11, "branch$iv$iv":Landroidx/compose/ui/Modifier$Node;
    invoke-virtual {v11}, Landroidx/compose/ui/Modifier$Node;->getAggregateChildKindSet$ui()I

    move-result v12

    and-int/2addr v12, v7

    if-nez v12, :cond_4

    .line 171
    invoke-static {v13, v11, v6}, Landroidx/compose/ui/node/DelegatableNodeKt;->access$addLayoutNodeChildren(Landroidx/compose/runtime/collection/MutableVector;Landroidx/compose/ui/Modifier$Node;Z)V

    .line 173
    goto :goto_0

    .line 175
    :cond_4
    move-object v12, v11

    .line 176
    .local v12, "node$iv$iv":Landroidx/compose/ui/Modifier$Node;
    :goto_2
    if-eqz v12, :cond_15

    .line 177
    invoke-virtual {v12}, Landroidx/compose/ui/Modifier$Node;->getKindSet$ui()I

    move-result v14

    and-int/2addr v14, v7

    if-eqz v14, :cond_14

    .line 178
    move-object v14, v12

    .local v14, "it$iv":Landroidx/compose/ui/Modifier$Node;
    const/16 v16, 0x0

    .line 154
    .local v16, "$i$a$-visitChildren-DelegatableNodeKt$visitChildren$2$iv":I
    move/from16 v17, v3

    .local v17, "$v$c$androidx-compose-ui-node-NodeKind$-kind$0$iv$iv":I
    move-object/from16 v18, v14

    .local v18, "$this$dispatchForKind_u2d6rFNWt0$iv$iv":Landroidx/compose/ui/Modifier$Node;
    const/16 v19, 0x0

    .line 179
    .local v19, "$i$f$dispatchForKind-6rFNWt0":I
    const/16 v20, 0x0

    .line 180
    .local v20, "stack$iv$iv":Ljava/lang/Object;
    const/16 v21, 0x0

    .local v21, "node$iv$iv":Ljava/lang/Object;
    move-object/from16 v21, v18

    move-object/from16 v2, v21

    .line 181
    .end local v21    # "node$iv$iv":Ljava/lang/Object;
    .local v2, "node$iv$iv":Ljava/lang/Object;
    :goto_3
    if-eqz v2, :cond_13

    .line 182
    move/from16 v22, v15

    instance-of v15, v2, Landroidx/compose/ui/focus/FocusTargetNode;

    if-eqz v15, :cond_7

    .line 183
    move-object v15, v2

    check-cast v15, Landroidx/compose/ui/focus/FocusTargetNode;

    .local v15, "it":Landroidx/compose/ui/focus/FocusTargetNode;
    const/16 v23, 0x0

    .line 40
    .local v23, "$i$a$-visitChildren-Y-YKmho$default-FocusRestorerKt$saveFocusedChild$1":I
    invoke-virtual {v15}, Landroidx/compose/ui/focus/FocusTargetNode;->getFocusState()Landroidx/compose/ui/focus/FocusStateImpl;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Landroidx/compose/ui/focus/FocusStateImpl;->getHasFocus()Z

    move-result v24

    if-eqz v24, :cond_6

    .line 41
    move-object/from16 v21, v15

    check-cast v21, Landroidx/compose/ui/node/DelegatableNode;

    invoke-static/range {v21 .. v21}, Landroidx/compose/ui/node/DelegatableNodeKt;->requireLayoutNode(Landroidx/compose/ui/node/DelegatableNode;)Landroidx/compose/ui/node/LayoutNode;

    move-result-object v21

    move-object/from16 v24, v1

    .end local v1    # "$this$visitChildren_u2dY_u2dYKmho_u24default$iv":Landroidx/compose/ui/node/DelegatableNode;
    .local v24, "$this$visitChildren_u2dY_u2dYKmho_u24default$iv":Landroidx/compose/ui/node/DelegatableNode;
    invoke-virtual/range {v21 .. v21}, Landroidx/compose/ui/node/LayoutNode;->getCompositeKeyHash()I

    move-result v1

    invoke-virtual {v0, v1}, Landroidx/compose/ui/focus/FocusTargetNode;->setPreviouslyFocusedChildHash(I)V

    .line 42
    move-object v1, v0

    check-cast v1, Landroidx/compose/ui/node/CompositionLocalConsumerModifierNode;

    invoke-static {}, Landroidx/compose/runtime/saveable/SaveableStateRegistryKt;->getLocalSaveableStateRegistry()Landroidx/compose/runtime/ProvidableCompositionLocal;

    move-result-object v21

    move/from16 v25, v3

    .end local v3    # "$v$c$androidx-compose-ui-node-NodeKind$-type$0$iv":I
    .local v25, "$v$c$androidx-compose-ui-node-NodeKind$-type$0$iv":I
    move-object/from16 v3, v21

    check-cast v3, Landroidx/compose/runtime/CompositionLocal;

    invoke-static {v1, v3}, Landroidx/compose/ui/node/CompositionLocalConsumerModifierNodeKt;->currentValueOf(Landroidx/compose/ui/node/CompositionLocalConsumerModifierNode;Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/compose/runtime/saveable/SaveableStateRegistry;

    if-eqz v1, :cond_5

    new-instance v3, Landroidx/compose/ui/focus/FocusRestorerKt$saveFocusedChild$1$1;

    invoke-direct {v3, v0}, Landroidx/compose/ui/focus/FocusRestorerKt$saveFocusedChild$1$1;-><init>(Landroidx/compose/ui/focus/FocusTargetNode;)V

    check-cast v3, Lkotlin/jvm/functions/Function0;

    const-string/jumbo v0, "previouslyFocusedChildHash"

    invoke-interface {v1, v0, v3}, Landroidx/compose/runtime/saveable/SaveableStateRegistry;->registerProvider(Ljava/lang/String;Lkotlin/jvm/functions/Function0;)Landroidx/compose/runtime/saveable/SaveableStateRegistry$Entry;

    .line 45
    :cond_5
    return v22

    .line 47
    .end local v24    # "$this$visitChildren_u2dY_u2dYKmho_u24default$iv":Landroidx/compose/ui/node/DelegatableNode;
    .end local v25    # "$v$c$androidx-compose-ui-node-NodeKind$-type$0$iv":I
    .restart local v1    # "$this$visitChildren_u2dY_u2dYKmho_u24default$iv":Landroidx/compose/ui/node/DelegatableNode;
    .restart local v3    # "$v$c$androidx-compose-ui-node-NodeKind$-type$0$iv":I
    :cond_6
    move-object/from16 v24, v1

    move/from16 v25, v3

    .line 183
    .end local v1    # "$this$visitChildren_u2dY_u2dYKmho_u24default$iv":Landroidx/compose/ui/node/DelegatableNode;
    .end local v3    # "$v$c$androidx-compose-ui-node-NodeKind$-type$0$iv":I
    .end local v15    # "it":Landroidx/compose/ui/focus/FocusTargetNode;
    .end local v23    # "$i$a$-visitChildren-Y-YKmho$default-FocusRestorerKt$saveFocusedChild$1":I
    .restart local v24    # "$this$visitChildren_u2dY_u2dYKmho_u24default$iv":Landroidx/compose/ui/node/DelegatableNode;
    .restart local v25    # "$v$c$androidx-compose-ui-node-NodeKind$-type$0$iv":I
    move/from16 v1, v22

    goto/16 :goto_b

    .line 184
    .end local v24    # "$this$visitChildren_u2dY_u2dYKmho_u24default$iv":Landroidx/compose/ui/node/DelegatableNode;
    .end local v25    # "$v$c$androidx-compose-ui-node-NodeKind$-type$0$iv":I
    .restart local v1    # "$this$visitChildren_u2dY_u2dYKmho_u24default$iv":Landroidx/compose/ui/node/DelegatableNode;
    .restart local v3    # "$v$c$androidx-compose-ui-node-NodeKind$-type$0$iv":I
    :cond_7
    move-object/from16 v24, v1

    move/from16 v25, v3

    .end local v1    # "$this$visitChildren_u2dY_u2dYKmho_u24default$iv":Landroidx/compose/ui/node/DelegatableNode;
    .end local v3    # "$v$c$androidx-compose-ui-node-NodeKind$-type$0$iv":I
    .restart local v24    # "$this$visitChildren_u2dY_u2dYKmho_u24default$iv":Landroidx/compose/ui/node/DelegatableNode;
    .restart local v25    # "$v$c$androidx-compose-ui-node-NodeKind$-type$0$iv":I
    move/from16 v0, v17

    .local v0, "$v$c$androidx-compose-ui-node-NodeKind$-kind$0$iv$iv$iv":I
    move-object v1, v2

    .local v1, "this_$iv$iv$iv":Landroidx/compose/ui/Modifier$Node;
    const/4 v3, 0x0

    .line 185
    .local v3, "$i$f$isKind-H91voCI$ui":I
    invoke-virtual {v1}, Landroidx/compose/ui/Modifier$Node;->getKindSet$ui()I

    move-result v15

    and-int/2addr v15, v0

    if-eqz v15, :cond_8

    move/from16 v0, v22

    goto :goto_4

    :cond_8
    const/4 v0, 0x0

    .line 184
    .end local v0    # "$v$c$androidx-compose-ui-node-NodeKind$-kind$0$iv$iv$iv":I
    .end local v1    # "this_$iv$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .end local v3    # "$i$f$isKind-H91voCI$ui":I
    :goto_4
    if-eqz v0, :cond_12

    instance-of v0, v2, Landroidx/compose/ui/node/DelegatingNode;

    if-eqz v0, :cond_12

    .line 186
    const/4 v0, 0x0

    .line 187
    .local v0, "count$iv$iv":I
    move-object v1, v2

    check-cast v1, Landroidx/compose/ui/node/DelegatingNode;

    .local v1, "this_$iv$iv$iv":Landroidx/compose/ui/node/DelegatingNode;
    const/4 v3, 0x0

    .line 188
    .local v3, "$i$f$forEachImmediateDelegate$ui":I
    invoke-virtual {v1}, Landroidx/compose/ui/node/DelegatingNode;->getDelegate$ui()Landroidx/compose/ui/Modifier$Node;

    move-result-object v15

    .line 189
    .local v15, "node$iv$iv$iv":Landroidx/compose/ui/Modifier$Node;
    :goto_5
    if-eqz v15, :cond_10

    .line 190
    move-object/from16 v23, v15

    .local v23, "next$iv$iv":Landroidx/compose/ui/Modifier$Node;
    const/16 v26, 0x0

    .line 191
    .local v26, "$i$a$-forEachImmediateDelegate$ui-DelegatableNodeKt$dispatchForKind$1$iv$iv":I
    move/from16 v27, v17

    .local v27, "$v$c$androidx-compose-ui-node-NodeKind$-kind$0$iv$iv$iv":I
    move-object/from16 v28, v23

    .local v28, "this_$iv$iv$iv":Landroidx/compose/ui/Modifier$Node;
    const/16 v29, 0x0

    .line 185
    .local v29, "$i$f$isKind-H91voCI$ui":I
    invoke-virtual/range {v28 .. v28}, Landroidx/compose/ui/Modifier$Node;->getKindSet$ui()I

    move-result v30

    and-int v30, v30, v27

    if-eqz v30, :cond_9

    move/from16 v27, v22

    goto :goto_6

    :cond_9
    const/16 v27, 0x0

    .line 191
    .end local v27    # "$v$c$androidx-compose-ui-node-NodeKind$-kind$0$iv$iv$iv":I
    .end local v28    # "this_$iv$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .end local v29    # "$i$f$isKind-H91voCI$ui":I
    :goto_6
    if-eqz v27, :cond_f

    .line 192
    add-int/lit8 v0, v0, 0x1

    .line 193
    move-object/from16 v27, v1

    move/from16 v1, v22

    .end local v1    # "this_$iv$iv$iv":Landroidx/compose/ui/node/DelegatingNode;
    .local v27, "this_$iv$iv$iv":Landroidx/compose/ui/node/DelegatingNode;
    if-ne v0, v1, :cond_a

    .line 194
    move-object/from16 v2, v23

    move-object/from16 v31, v2

    goto :goto_a

    .line 198
    :cond_a
    if-nez v20, :cond_b

    const/4 v1, 0x0

    .line 161
    .local v1, "$i$f$mutableVectorOf":I
    nop

    .line 162
    move/from16 v28, v0

    .end local v0    # "count$iv$iv":I
    .local v28, "count$iv$iv":I
    const/16 v0, 0x10

    .local v0, "capacity$iv$iv$iv$iv":I
    const/16 v29, 0x0

    .line 163
    .local v29, "$i$f$MutableVector":I
    move/from16 v30, v1

    .end local v1    # "$i$f$mutableVectorOf":I
    .local v30, "$i$f$mutableVectorOf":I
    new-instance v1, Landroidx/compose/runtime/collection/MutableVector;

    move-object/from16 v31, v2

    .end local v2    # "node$iv$iv":Ljava/lang/Object;
    .local v31, "node$iv$iv":Ljava/lang/Object;
    new-array v2, v0, [Landroidx/compose/ui/Modifier$Node;

    move/from16 v32, v0

    const/4 v0, 0x0

    .end local v0    # "capacity$iv$iv$iv$iv":I
    .local v32, "capacity$iv$iv$iv$iv":I
    invoke-direct {v1, v2, v0}, Landroidx/compose/runtime/collection/MutableVector;-><init>([Ljava/lang/Object;I)V

    .line 161
    .end local v29    # "$i$f$MutableVector":I
    .end local v32    # "capacity$iv$iv$iv$iv":I
    goto :goto_7

    .line 198
    .end local v28    # "count$iv$iv":I
    .end local v30    # "$i$f$mutableVectorOf":I
    .end local v31    # "node$iv$iv":Ljava/lang/Object;
    .local v0, "count$iv$iv":I
    .restart local v2    # "node$iv$iv":Ljava/lang/Object;
    :cond_b
    move/from16 v28, v0

    move-object/from16 v31, v2

    .end local v0    # "count$iv$iv":I
    .end local v2    # "node$iv$iv":Ljava/lang/Object;
    .restart local v28    # "count$iv$iv":I
    .restart local v31    # "node$iv$iv":Ljava/lang/Object;
    move-object/from16 v1, v20

    :goto_7
    nop

    .line 199
    .end local v20    # "stack$iv$iv":Ljava/lang/Object;
    .local v1, "stack$iv$iv":Ljava/lang/Object;
    move-object/from16 v0, v31

    .line 200
    .local v0, "theNode$iv$iv":Landroidx/compose/ui/Modifier$Node;
    if-eqz v0, :cond_d

    .line 201
    if-eqz v1, :cond_c

    invoke-virtual {v1, v0}, Landroidx/compose/runtime/collection/MutableVector;->add(Ljava/lang/Object;)Z

    .line 202
    :cond_c
    const/4 v2, 0x0

    .end local v31    # "node$iv$iv":Ljava/lang/Object;
    .restart local v2    # "node$iv$iv":Ljava/lang/Object;
    goto :goto_8

    .line 200
    .end local v2    # "node$iv$iv":Ljava/lang/Object;
    .restart local v31    # "node$iv$iv":Ljava/lang/Object;
    :cond_d
    move-object/from16 v2, v31

    .line 204
    .end local v31    # "node$iv$iv":Ljava/lang/Object;
    .restart local v2    # "node$iv$iv":Ljava/lang/Object;
    :goto_8
    if-eqz v1, :cond_e

    move-object/from16 v20, v2

    move-object/from16 v2, v23

    .end local v23    # "next$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .local v2, "next$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .local v20, "node$iv$iv":Ljava/lang/Object;
    invoke-virtual {v1, v2}, Landroidx/compose/runtime/collection/MutableVector;->add(Ljava/lang/Object;)Z

    goto :goto_9

    .end local v20    # "node$iv$iv":Ljava/lang/Object;
    .local v2, "node$iv$iv":Ljava/lang/Object;
    .restart local v23    # "next$iv$iv":Landroidx/compose/ui/Modifier$Node;
    :cond_e
    move-object/from16 v20, v2

    move-object/from16 v2, v23

    .line 207
    .end local v0    # "theNode$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .end local v23    # "next$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .local v2, "next$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .restart local v20    # "node$iv$iv":Ljava/lang/Object;
    :goto_9
    move-object/from16 v31, v20

    move/from16 v0, v28

    move-object/from16 v20, v1

    goto :goto_a

    .line 191
    .end local v27    # "this_$iv$iv$iv":Landroidx/compose/ui/node/DelegatingNode;
    .end local v28    # "count$iv$iv":I
    .local v0, "count$iv$iv":I
    .local v1, "this_$iv$iv$iv":Landroidx/compose/ui/node/DelegatingNode;
    .local v2, "node$iv$iv":Ljava/lang/Object;
    .local v20, "stack$iv$iv":Ljava/lang/Object;
    .restart local v23    # "next$iv$iv":Landroidx/compose/ui/Modifier$Node;
    :cond_f
    move-object/from16 v27, v1

    move-object/from16 v31, v2

    move-object/from16 v2, v23

    .line 207
    .end local v1    # "this_$iv$iv$iv":Landroidx/compose/ui/node/DelegatingNode;
    .end local v23    # "next$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .local v2, "next$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .restart local v27    # "this_$iv$iv$iv":Landroidx/compose/ui/node/DelegatingNode;
    .restart local v31    # "node$iv$iv":Ljava/lang/Object;
    :goto_a
    nop

    .line 190
    .end local v2    # "next$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .end local v26    # "$i$a$-forEachImmediateDelegate$ui-DelegatableNodeKt$dispatchForKind$1$iv$iv":I
    nop

    .line 208
    invoke-virtual {v15}, Landroidx/compose/ui/Modifier$Node;->getChild$ui()Landroidx/compose/ui/Modifier$Node;

    move-result-object v15

    move-object/from16 v1, v27

    move-object/from16 v2, v31

    const/16 v22, 0x1

    goto :goto_5

    .line 210
    .end local v27    # "this_$iv$iv$iv":Landroidx/compose/ui/node/DelegatingNode;
    .end local v31    # "node$iv$iv":Ljava/lang/Object;
    .restart local v1    # "this_$iv$iv$iv":Landroidx/compose/ui/node/DelegatingNode;
    .local v2, "node$iv$iv":Ljava/lang/Object;
    :cond_10
    move-object/from16 v27, v1

    move-object/from16 v31, v2

    .line 211
    .end local v1    # "this_$iv$iv$iv":Landroidx/compose/ui/node/DelegatingNode;
    .end local v2    # "node$iv$iv":Ljava/lang/Object;
    .end local v3    # "$i$f$forEachImmediateDelegate$ui":I
    .end local v15    # "node$iv$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .restart local v31    # "node$iv$iv":Ljava/lang/Object;
    const/4 v1, 0x1

    if-ne v0, v1, :cond_11

    .line 213
    move-object/from16 v0, p0

    move v15, v1

    move-object/from16 v1, v24

    move/from16 v3, v25

    move-object/from16 v2, v31

    goto/16 :goto_3

    .line 211
    :cond_11
    move-object/from16 v2, v31

    goto :goto_b

    .line 184
    .end local v0    # "count$iv$iv":I
    .end local v31    # "node$iv$iv":Ljava/lang/Object;
    .restart local v2    # "node$iv$iv":Ljava/lang/Object;
    :cond_12
    move/from16 v1, v22

    .line 216
    :goto_b
    invoke-static/range {v20 .. v20}, Landroidx/compose/ui/node/DelegatableNodeKt;->access$pop(Landroidx/compose/runtime/collection/MutableVector;)Landroidx/compose/ui/Modifier$Node;

    move-result-object v2

    move-object/from16 v0, p0

    move v15, v1

    move-object/from16 v1, v24

    move/from16 v3, v25

    goto/16 :goto_3

    .line 218
    .end local v24    # "$this$visitChildren_u2dY_u2dYKmho_u24default$iv":Landroidx/compose/ui/node/DelegatableNode;
    .end local v25    # "$v$c$androidx-compose-ui-node-NodeKind$-type$0$iv":I
    .local v1, "$this$visitChildren_u2dY_u2dYKmho_u24default$iv":Landroidx/compose/ui/node/DelegatableNode;
    .local v3, "$v$c$androidx-compose-ui-node-NodeKind$-type$0$iv":I
    :cond_13
    move-object/from16 v24, v1

    move/from16 v25, v3

    .line 154
    .end local v1    # "$this$visitChildren_u2dY_u2dYKmho_u24default$iv":Landroidx/compose/ui/node/DelegatableNode;
    .end local v2    # "node$iv$iv":Ljava/lang/Object;
    .end local v3    # "$v$c$androidx-compose-ui-node-NodeKind$-type$0$iv":I
    .end local v17    # "$v$c$androidx-compose-ui-node-NodeKind$-kind$0$iv$iv":I
    .end local v18    # "$this$dispatchForKind_u2d6rFNWt0$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .end local v19    # "$i$f$dispatchForKind-6rFNWt0":I
    .end local v20    # "stack$iv$iv":Ljava/lang/Object;
    .restart local v24    # "$this$visitChildren_u2dY_u2dYKmho_u24default$iv":Landroidx/compose/ui/node/DelegatableNode;
    .restart local v25    # "$v$c$androidx-compose-ui-node-NodeKind$-type$0$iv":I
    nop

    .line 178
    .end local v14    # "it$iv":Landroidx/compose/ui/Modifier$Node;
    .end local v16    # "$i$a$-visitChildren-DelegatableNodeKt$visitChildren$2$iv":I
    nop

    .line 219
    move-object/from16 v0, p0

    const/4 v2, 0x0

    goto/16 :goto_0

    .line 221
    .end local v24    # "$this$visitChildren_u2dY_u2dYKmho_u24default$iv":Landroidx/compose/ui/node/DelegatableNode;
    .end local v25    # "$v$c$androidx-compose-ui-node-NodeKind$-type$0$iv":I
    .restart local v1    # "$this$visitChildren_u2dY_u2dYKmho_u24default$iv":Landroidx/compose/ui/node/DelegatableNode;
    .restart local v3    # "$v$c$androidx-compose-ui-node-NodeKind$-type$0$iv":I
    :cond_14
    move-object/from16 v24, v1

    move/from16 v25, v3

    move v1, v15

    .end local v1    # "$this$visitChildren_u2dY_u2dYKmho_u24default$iv":Landroidx/compose/ui/node/DelegatableNode;
    .end local v3    # "$v$c$androidx-compose-ui-node-NodeKind$-type$0$iv":I
    .restart local v24    # "$this$visitChildren_u2dY_u2dYKmho_u24default$iv":Landroidx/compose/ui/node/DelegatableNode;
    .restart local v25    # "$v$c$androidx-compose-ui-node-NodeKind$-type$0$iv":I
    invoke-virtual {v12}, Landroidx/compose/ui/Modifier$Node;->getChild$ui()Landroidx/compose/ui/Modifier$Node;

    move-result-object v12

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    const/4 v2, 0x0

    goto/16 :goto_2

    .line 176
    .end local v24    # "$this$visitChildren_u2dY_u2dYKmho_u24default$iv":Landroidx/compose/ui/node/DelegatableNode;
    .end local v25    # "$v$c$androidx-compose-ui-node-NodeKind$-type$0$iv":I
    .restart local v1    # "$this$visitChildren_u2dY_u2dYKmho_u24default$iv":Landroidx/compose/ui/node/DelegatableNode;
    .restart local v3    # "$v$c$androidx-compose-ui-node-NodeKind$-type$0$iv":I
    :cond_15
    move-object/from16 v24, v1

    move/from16 v25, v3

    .end local v1    # "$this$visitChildren_u2dY_u2dYKmho_u24default$iv":Landroidx/compose/ui/node/DelegatableNode;
    .end local v3    # "$v$c$androidx-compose-ui-node-NodeKind$-type$0$iv":I
    .restart local v24    # "$this$visitChildren_u2dY_u2dYKmho_u24default$iv":Landroidx/compose/ui/node/DelegatableNode;
    .restart local v25    # "$v$c$androidx-compose-ui-node-NodeKind$-type$0$iv":I
    move-object/from16 v0, p0

    const/4 v2, 0x0

    goto/16 :goto_0

    .line 224
    .end local v11    # "branch$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .end local v12    # "node$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .end local v24    # "$this$visitChildren_u2dY_u2dYKmho_u24default$iv":Landroidx/compose/ui/node/DelegatableNode;
    .end local v25    # "$v$c$androidx-compose-ui-node-NodeKind$-type$0$iv":I
    .restart local v1    # "$this$visitChildren_u2dY_u2dYKmho_u24default$iv":Landroidx/compose/ui/node/DelegatableNode;
    .restart local v3    # "$v$c$androidx-compose-ui-node-NodeKind$-type$0$iv":I
    :cond_16
    nop

    .line 154
    .end local v6    # "zOrder$iv$iv":Z
    .end local v7    # "mask$iv$iv":I
    .end local v8    # "$this$visitChildren$iv$iv":Landroidx/compose/ui/node/DelegatableNode;
    .end local v9    # "$i$f$visitChildren":I
    .end local v10    # "child$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .end local v13    # "branches$iv$iv":Landroidx/compose/runtime/collection/MutableVector;
    nop

    .line 48
    .end local v1    # "$this$visitChildren_u2dY_u2dYKmho_u24default$iv":Landroidx/compose/ui/node/DelegatableNode;
    .end local v3    # "$v$c$androidx-compose-ui-node-NodeKind$-type$0$iv":I
    .end local v4    # "zOrder$iv":Z
    .end local v5    # "$i$f$visitChildren-Y-YKmho":I
    const/16 v21, 0x0

    return v21
.end method
