.class public final Landroidx/compose/ui/focus/FocusTraversalKt;
.super Ljava/lang/Object;
.source "FocusTraversal.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/compose/ui/focus/FocusTraversalKt$WhenMappings;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nFocusTraversal.kt\nKotlin\n*S Kotlin\n*F\n+ 1 FocusTraversal.kt\nandroidx/compose/ui/focus/FocusTraversalKt\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 NodeKind.kt\nandroidx/compose/ui/node/Nodes\n+ 4 DelegatableNode.kt\nandroidx/compose/ui/node/DelegatableNodeKt\n+ 5 InlineClassHelper.kt\nandroidx/compose/ui/internal/InlineClassHelperKt\n+ 6 MutableVector.kt\nandroidx/compose/runtime/collection/MutableVectorKt\n+ 7 MutableVector.kt\nandroidx/compose/runtime/collection/MutableVector\n+ 8 Modifier.kt\nandroidx/compose/ui/Modifier$Node\n+ 9 DelegatingNode.kt\nandroidx/compose/ui/node/DelegatingNode\n*L\n1#1,187:1\n1#2:188\n120#3:189\n120#3:265\n303#4,5:190\n153#4:195\n154#4:200\n155#4,3:204\n158#4:208\n159#4,9:210\n556#4,6:219\n566#4,2:226\n568#4,17:231\n585#4,8:251\n168#4,6:259\n252#4,5:266\n95#4:271\n96#4,8:276\n556#4,6:284\n566#4,2:291\n568#4,8:296\n576#4,9:307\n585#4,8:319\n105#4,7:327\n57#5,4:196\n57#5,4:272\n1107#6:201\n1085#6,2:202\n1107#6:304\n1085#6,2:305\n519#7:207\n44#7:209\n247#8:225\n247#8:290\n240#9,3:228\n243#9,3:248\n240#9,3:293\n243#9,3:316\n*S KotlinDebug\n*F\n+ 1 FocusTraversal.kt\nandroidx/compose/ui/focus/FocusTraversalKt\n*L\n165#1:189\n184#1:265\n165#1:190,5\n165#1:195\n165#1:200\n165#1:204,3\n165#1:208\n165#1:210,9\n165#1:219,6\n165#1:226,2\n165#1:231,17\n165#1:251,8\n165#1:259,6\n184#1:266,5\n184#1:271\n184#1:276,8\n184#1:284,6\n184#1:291,2\n184#1:296,8\n184#1:307,9\n184#1:319,8\n184#1:327,7\n165#1:196,4\n184#1:272,4\n165#1:201\n165#1:202,2\n184#1:304\n184#1:305,2\n165#1:207\n165#1:209\n165#1:225\n184#1:290\n165#1:228,3\n165#1:248,3\n184#1:293,3\n184#1:316,3\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000.\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u000b\u001a#\u0010\u0000\u001a\u00020\u0001*\u00020\u00022\u0006\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006H\u0000\u00a2\u0006\u0004\u0008\u0007\u0010\u0008\u001aC\u0010\t\u001a\u0004\u0018\u00010\n*\u00020\u00022\u0006\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0008\u0010\u000b\u001a\u0004\u0018\u00010\u000c2\u0012\u0010\r\u001a\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\n0\u000eH\u0000\u00a2\u0006\u0004\u0008\u000f\u0010\u0010\u001a\u000c\u0010\u0011\u001a\u00020\u000c*\u00020\u0002H\u0000\u001a\u000e\u0010\u0017\u001a\u0004\u0018\u00010\u0002*\u00020\u0002H\u0000\u001a\u000e\u0010\u0018\u001a\u0004\u0018\u00010\u0002*\u00020\u0002H\u0002\"\u0018\u0010\u0012\u001a\u00020\n*\u00020\u00028@X\u0080\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0012\u0010\u0013\"\u001a\u0010\u0014\u001a\u0004\u0018\u00010\u0002*\u00020\u00028@X\u0080\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0015\u0010\u0016\u00a8\u0006\u0019"
    }
    d2 = {
        "customFocusSearch",
        "Landroidx/compose/ui/focus/FocusRequester;",
        "Landroidx/compose/ui/focus/FocusTargetNode;",
        "focusDirection",
        "Landroidx/compose/ui/focus/FocusDirection;",
        "layoutDirection",
        "Landroidx/compose/ui/unit/LayoutDirection;",
        "customFocusSearch--OM-vw8",
        "(Landroidx/compose/ui/focus/FocusTargetNode;ILandroidx/compose/ui/unit/LayoutDirection;)Landroidx/compose/ui/focus/FocusRequester;",
        "focusSearch",
        "",
        "previouslyFocusedRect",
        "Landroidx/compose/ui/geometry/Rect;",
        "onFound",
        "Lkotlin/Function1;",
        "focusSearch-0X8WOeE",
        "(Landroidx/compose/ui/focus/FocusTargetNode;ILandroidx/compose/ui/unit/LayoutDirection;Landroidx/compose/ui/geometry/Rect;Lkotlin/jvm/functions/Function1;)Ljava/lang/Boolean;",
        "focusRect",
        "isEligibleForFocusSearch",
        "(Landroidx/compose/ui/focus/FocusTargetNode;)Z",
        "activeChild",
        "getActiveChild",
        "(Landroidx/compose/ui/focus/FocusTargetNode;)Landroidx/compose/ui/focus/FocusTargetNode;",
        "findActiveFocusNode",
        "findNonDeactivatedParent",
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
.method public static final customFocusSearch--OM-vw8(Landroidx/compose/ui/focus/FocusTargetNode;ILandroidx/compose/ui/unit/LayoutDirection;)Landroidx/compose/ui/focus/FocusRequester;
    .locals 8
    .param p0, "$this$customFocusSearch_u2d_u2dOM_u2dvw8"    # Landroidx/compose/ui/focus/FocusTargetNode;
    .param p1, "$v$c$androidx-compose-ui-focus-FocusDirection$-focusDirection$0"    # I
    .param p2, "layoutDirection"    # Landroidx/compose/ui/unit/LayoutDirection;

    .line 57
    invoke-virtual {p0}, Landroidx/compose/ui/focus/FocusTargetNode;->fetchFocusProperties$ui()Landroidx/compose/ui/focus/FocusProperties;

    move-result-object v0

    .line 58
    .local v0, "focusProperties":Landroidx/compose/ui/focus/FocusProperties;
    nop

    .line 59
    sget-object v1, Landroidx/compose/ui/focus/FocusDirection;->Companion:Landroidx/compose/ui/focus/FocusDirection$Companion;

    invoke-virtual {v1}, Landroidx/compose/ui/focus/FocusDirection$Companion;->getNext-dhqQ-8s()I

    move-result v1

    invoke-static {p1, v1}, Landroidx/compose/ui/focus/FocusDirection;->equals-impl0(II)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Landroidx/compose/ui/focus/FocusProperties;->getNext()Landroidx/compose/ui/focus/FocusRequester;

    move-result-object v1

    goto/16 :goto_9

    .line 60
    :cond_0
    sget-object v1, Landroidx/compose/ui/focus/FocusDirection;->Companion:Landroidx/compose/ui/focus/FocusDirection$Companion;

    invoke-virtual {v1}, Landroidx/compose/ui/focus/FocusDirection$Companion;->getPrevious-dhqQ-8s()I

    move-result v1

    invoke-static {p1, v1}, Landroidx/compose/ui/focus/FocusDirection;->equals-impl0(II)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Landroidx/compose/ui/focus/FocusProperties;->getPrevious()Landroidx/compose/ui/focus/FocusRequester;

    move-result-object v1

    goto/16 :goto_9

    .line 61
    :cond_1
    sget-object v1, Landroidx/compose/ui/focus/FocusDirection;->Companion:Landroidx/compose/ui/focus/FocusDirection$Companion;

    invoke-virtual {v1}, Landroidx/compose/ui/focus/FocusDirection$Companion;->getUp-dhqQ-8s()I

    move-result v1

    invoke-static {p1, v1}, Landroidx/compose/ui/focus/FocusDirection;->equals-impl0(II)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Landroidx/compose/ui/focus/FocusProperties;->getUp()Landroidx/compose/ui/focus/FocusRequester;

    move-result-object v1

    goto/16 :goto_9

    .line 62
    :cond_2
    sget-object v1, Landroidx/compose/ui/focus/FocusDirection;->Companion:Landroidx/compose/ui/focus/FocusDirection$Companion;

    invoke-virtual {v1}, Landroidx/compose/ui/focus/FocusDirection$Companion;->getDown-dhqQ-8s()I

    move-result v1

    invoke-static {p1, v1}, Landroidx/compose/ui/focus/FocusDirection;->equals-impl0(II)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Landroidx/compose/ui/focus/FocusProperties;->getDown()Landroidx/compose/ui/focus/FocusRequester;

    move-result-object v1

    goto/16 :goto_9

    .line 63
    :cond_3
    sget-object v1, Landroidx/compose/ui/focus/FocusDirection;->Companion:Landroidx/compose/ui/focus/FocusDirection$Companion;

    invoke-virtual {v1}, Landroidx/compose/ui/focus/FocusDirection$Companion;->getLeft-dhqQ-8s()I

    move-result v1

    invoke-static {p1, v1}, Landroidx/compose/ui/focus/FocusDirection;->equals-impl0(II)Z

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    if-eqz v1, :cond_6

    .line 64
    sget-object v1, Landroidx/compose/ui/focus/FocusTraversalKt$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {p2}, Landroidx/compose/ui/unit/LayoutDirection;->ordinal()I

    move-result v5

    aget v1, v1, v5

    packed-switch v1, :pswitch_data_0

    new-instance v1, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {v1}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw v1

    .line 66
    :pswitch_0
    invoke-interface {v0}, Landroidx/compose/ui/focus/FocusProperties;->getEnd()Landroidx/compose/ui/focus/FocusRequester;

    move-result-object v1

    goto :goto_0

    .line 65
    :pswitch_1
    invoke-interface {v0}, Landroidx/compose/ui/focus/FocusProperties;->getStart()Landroidx/compose/ui/focus/FocusRequester;

    move-result-object v1

    .line 67
    :goto_0
    move-object v5, v1

    .line 188
    .local v5, "it":Landroidx/compose/ui/focus/FocusRequester;
    const/4 v6, 0x0

    .line 67
    .local v6, "$i$a$-takeUnless-FocusTraversalKt$customFocusSearch$1":I
    sget-object v7, Landroidx/compose/ui/focus/FocusRequester;->Companion:Landroidx/compose/ui/focus/FocusRequester$Companion;

    invoke-virtual {v7}, Landroidx/compose/ui/focus/FocusRequester$Companion;->getDefault()Landroidx/compose/ui/focus/FocusRequester;

    move-result-object v7

    if-ne v5, v7, :cond_4

    goto :goto_1

    :cond_4
    move v2, v3

    .end local v5    # "it":Landroidx/compose/ui/focus/FocusRequester;
    .end local v6    # "$i$a$-takeUnless-FocusTraversalKt$customFocusSearch$1":I
    :goto_1
    if-nez v2, :cond_5

    goto :goto_2

    :cond_5
    move-object v1, v4

    .line 64
    :goto_2
    if-nez v1, :cond_f

    .line 67
    invoke-interface {v0}, Landroidx/compose/ui/focus/FocusProperties;->getLeft()Landroidx/compose/ui/focus/FocusRequester;

    move-result-object v1

    goto/16 :goto_9

    .line 68
    :cond_6
    sget-object v1, Landroidx/compose/ui/focus/FocusDirection;->Companion:Landroidx/compose/ui/focus/FocusDirection$Companion;

    invoke-virtual {v1}, Landroidx/compose/ui/focus/FocusDirection$Companion;->getRight-dhqQ-8s()I

    move-result v1

    invoke-static {p1, v1}, Landroidx/compose/ui/focus/FocusDirection;->equals-impl0(II)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 69
    sget-object v1, Landroidx/compose/ui/focus/FocusTraversalKt$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {p2}, Landroidx/compose/ui/unit/LayoutDirection;->ordinal()I

    move-result v5

    aget v1, v1, v5

    packed-switch v1, :pswitch_data_1

    new-instance v1, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {v1}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw v1

    .line 71
    :pswitch_2
    invoke-interface {v0}, Landroidx/compose/ui/focus/FocusProperties;->getStart()Landroidx/compose/ui/focus/FocusRequester;

    move-result-object v1

    goto :goto_3

    .line 70
    :pswitch_3
    invoke-interface {v0}, Landroidx/compose/ui/focus/FocusProperties;->getEnd()Landroidx/compose/ui/focus/FocusRequester;

    move-result-object v1

    .line 72
    :goto_3
    move-object v5, v1

    .line 188
    .restart local v5    # "it":Landroidx/compose/ui/focus/FocusRequester;
    const/4 v6, 0x0

    .line 72
    .local v6, "$i$a$-takeUnless-FocusTraversalKt$customFocusSearch$2":I
    sget-object v7, Landroidx/compose/ui/focus/FocusRequester;->Companion:Landroidx/compose/ui/focus/FocusRequester$Companion;

    invoke-virtual {v7}, Landroidx/compose/ui/focus/FocusRequester$Companion;->getDefault()Landroidx/compose/ui/focus/FocusRequester;

    move-result-object v7

    if-ne v5, v7, :cond_7

    goto :goto_4

    :cond_7
    move v2, v3

    .end local v5    # "it":Landroidx/compose/ui/focus/FocusRequester;
    .end local v6    # "$i$a$-takeUnless-FocusTraversalKt$customFocusSearch$2":I
    :goto_4
    if-nez v2, :cond_8

    goto :goto_5

    :cond_8
    move-object v1, v4

    .line 69
    :goto_5
    if-nez v1, :cond_f

    .line 72
    invoke-interface {v0}, Landroidx/compose/ui/focus/FocusProperties;->getRight()Landroidx/compose/ui/focus/FocusRequester;

    move-result-object v1

    goto/16 :goto_9

    .line 78
    :cond_9
    sget-object v1, Landroidx/compose/ui/focus/FocusDirection;->Companion:Landroidx/compose/ui/focus/FocusDirection$Companion;

    invoke-virtual {v1}, Landroidx/compose/ui/focus/FocusDirection$Companion;->getEnter-dhqQ-8s()I

    move-result v1

    invoke-static {p1, v1}, Landroidx/compose/ui/focus/FocusDirection;->equals-impl0(II)Z

    move-result v1

    if-nez v1, :cond_b

    .line 79
    sget-object v1, Landroidx/compose/ui/focus/FocusDirection;->Companion:Landroidx/compose/ui/focus/FocusDirection$Companion;

    invoke-virtual {v1}, Landroidx/compose/ui/focus/FocusDirection$Companion;->getExit-dhqQ-8s()I

    move-result v1

    invoke-static {p1, v1}, Landroidx/compose/ui/focus/FocusDirection;->equals-impl0(II)Z

    move-result v1

    if-eqz v1, :cond_a

    goto :goto_6

    .line 98
    :cond_a
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "invalid FocusDirection"

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 80
    :cond_b
    :goto_6
    new-instance v1, Landroidx/compose/ui/focus/CancelIndicatingFocusBoundaryScope;

    invoke-direct {v1, p1, v4}, Landroidx/compose/ui/focus/CancelIndicatingFocusBoundaryScope;-><init>(ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 81
    .local v1, "scope":Landroidx/compose/ui/focus/CancelIndicatingFocusBoundaryScope;
    move-object v2, v0

    .local v2, "$this$customFocusSearch__OM_vw8_u24lambda_u242":Landroidx/compose/ui/focus/FocusProperties;
    const/4 v3, 0x0

    .line 82
    .local v3, "$i$a$-with-FocusTraversalKt$customFocusSearch$3":I
    move-object v4, p0

    check-cast v4, Landroidx/compose/ui/node/DelegatableNode;

    invoke-static {v4}, Landroidx/compose/ui/node/DelegatableNodeKt;->requireOwner(Landroidx/compose/ui/node/DelegatableNode;)Landroidx/compose/ui/node/Owner;

    move-result-object v4

    invoke-interface {v4}, Landroidx/compose/ui/node/Owner;->getFocusOwner()Landroidx/compose/ui/focus/FocusOwner;

    move-result-object v4

    .line 83
    .local v4, "focusOwner":Landroidx/compose/ui/focus/FocusOwner;
    invoke-interface {v4}, Landroidx/compose/ui/focus/FocusOwner;->getActiveFocusTargetNode()Landroidx/compose/ui/focus/FocusTargetNode;

    move-result-object v5

    .line 84
    .local v5, "activeNodeBefore":Landroidx/compose/ui/focus/FocusTargetNode;
    sget-object v6, Landroidx/compose/ui/focus/FocusDirection;->Companion:Landroidx/compose/ui/focus/FocusDirection$Companion;

    invoke-virtual {v6}, Landroidx/compose/ui/focus/FocusDirection$Companion;->getEnter-dhqQ-8s()I

    move-result v6

    invoke-static {p1, v6}, Landroidx/compose/ui/focus/FocusDirection;->equals-impl0(II)Z

    move-result v6

    if-eqz v6, :cond_c

    .line 85
    invoke-interface {v2}, Landroidx/compose/ui/focus/FocusProperties;->getOnEnter()Lkotlin/jvm/functions/Function1;

    move-result-object v6

    invoke-interface {v6, v1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_7

    .line 87
    :cond_c
    invoke-interface {v2}, Landroidx/compose/ui/focus/FocusProperties;->getOnExit()Lkotlin/jvm/functions/Function1;

    move-result-object v6

    invoke-interface {v6, v1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 89
    :goto_7
    invoke-virtual {v1}, Landroidx/compose/ui/focus/CancelIndicatingFocusBoundaryScope;->isCanceled()Z

    move-result v6

    if-eqz v6, :cond_d

    .line 90
    sget-object v6, Landroidx/compose/ui/focus/FocusRequester;->Companion:Landroidx/compose/ui/focus/FocusRequester$Companion;

    invoke-virtual {v6}, Landroidx/compose/ui/focus/FocusRequester$Companion;->getCancel()Landroidx/compose/ui/focus/FocusRequester;

    move-result-object v6

    goto :goto_8

    .line 91
    :cond_d
    invoke-interface {v4}, Landroidx/compose/ui/focus/FocusOwner;->getActiveFocusTargetNode()Landroidx/compose/ui/focus/FocusTargetNode;

    move-result-object v6

    if-eq v5, v6, :cond_e

    .line 92
    sget-object v6, Landroidx/compose/ui/focus/FocusRequester;->Companion:Landroidx/compose/ui/focus/FocusRequester$Companion;

    invoke-virtual {v6}, Landroidx/compose/ui/focus/FocusRequester$Companion;->getRedirect$ui()Landroidx/compose/ui/focus/FocusRequester;

    move-result-object v6

    goto :goto_8

    .line 94
    :cond_e
    sget-object v6, Landroidx/compose/ui/focus/FocusRequester;->Companion:Landroidx/compose/ui/focus/FocusRequester$Companion;

    invoke-virtual {v6}, Landroidx/compose/ui/focus/FocusRequester$Companion;->getDefault()Landroidx/compose/ui/focus/FocusRequester;

    move-result-object v6

    .line 95
    :goto_8
    nop

    .line 81
    .end local v2    # "$this$customFocusSearch__OM_vw8_u24lambda_u242":Landroidx/compose/ui/focus/FocusProperties;
    .end local v3    # "$i$a$-with-FocusTraversalKt$customFocusSearch$3":I
    .end local v4    # "focusOwner":Landroidx/compose/ui/focus/FocusOwner;
    .end local v5    # "activeNodeBefore":Landroidx/compose/ui/focus/FocusTargetNode;
    move-object v1, v6

    .line 58
    .end local v1    # "scope":Landroidx/compose/ui/focus/CancelIndicatingFocusBoundaryScope;
    :cond_f
    :goto_9
    return-object v1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method

.method public static final findActiveFocusNode(Landroidx/compose/ui/focus/FocusTargetNode;)Landroidx/compose/ui/focus/FocusTargetNode;
    .locals 2
    .param p0, "$this$findActiveFocusNode"    # Landroidx/compose/ui/focus/FocusTargetNode;

    .line 178
    move-object v0, p0

    check-cast v0, Landroidx/compose/ui/node/DelegatableNode;

    invoke-static {v0}, Landroidx/compose/ui/node/DelegatableNodeKt;->requireOwner(Landroidx/compose/ui/node/DelegatableNode;)Landroidx/compose/ui/node/Owner;

    move-result-object v0

    invoke-interface {v0}, Landroidx/compose/ui/node/Owner;->getFocusOwner()Landroidx/compose/ui/focus/FocusOwner;

    move-result-object v0

    invoke-interface {v0}, Landroidx/compose/ui/focus/FocusOwner;->getActiveFocusTargetNode()Landroidx/compose/ui/focus/FocusTargetNode;

    move-result-object v0

    .line 179
    .local v0, "activeNode":Landroidx/compose/ui/focus/FocusTargetNode;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/compose/ui/focus/FocusTargetNode;->isAttached()Z

    move-result v1

    if-eqz v1, :cond_0

    move-object v1, v0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return-object v1
.end method

.method private static final findNonDeactivatedParent(Landroidx/compose/ui/focus/FocusTargetNode;)Landroidx/compose/ui/focus/FocusTargetNode;
    .locals 32
    .param p0, "$this$findNonDeactivatedParent"    # Landroidx/compose/ui/focus/FocusTargetNode;

    .line 184
    move-object/from16 v0, p0

    check-cast v0, Landroidx/compose/ui/node/DelegatableNode;

    const/4 v1, 0x0

    .line 265
    .local v1, "$i$f$getFocusTarget-OLwlOKw":I
    const/16 v2, 0x400

    invoke-static {v2}, Landroidx/compose/ui/node/NodeKind;->constructor-impl(I)I

    move-result v1

    .line 184
    .end local v1    # "$i$f$getFocusTarget-OLwlOKw":I
    nop

    .line 266
    .local v0, "$this$visitAncestors_u2dY_u2dYKmho_u24default$iv":Landroidx/compose/ui/node/DelegatableNode;
    .local v1, "$v$c$androidx-compose-ui-node-NodeKind$-type$0$iv":I
    nop

    .line 268
    const/4 v2, 0x0

    .line 266
    .local v2, "includeSelf$iv":Z
    const/4 v3, 0x0

    .line 270
    .local v3, "$i$f$visitAncestors-Y-YKmho":I
    move v4, v2

    .local v4, "includeSelf$iv$iv":Z
    move v5, v1

    .local v5, "mask$iv$iv":I
    move-object v6, v0

    .local v6, "$this$visitAncestors$iv$iv":Landroidx/compose/ui/node/DelegatableNode;
    const/4 v7, 0x0

    .line 271
    .local v7, "$i$f$visitAncestors":I
    invoke-interface {v6}, Landroidx/compose/ui/node/DelegatableNode;->getNode()Landroidx/compose/ui/Modifier$Node;

    move-result-object v8

    invoke-virtual {v8}, Landroidx/compose/ui/Modifier$Node;->isAttached()Z

    move-result v8

    .local v8, "value$iv$iv$iv":Z
    const/4 v9, 0x0

    .line 272
    .local v9, "$i$f$checkPrecondition":I
    if-nez v8, :cond_0

    .line 273
    const/4 v10, 0x0

    .line 271
    .local v10, "$i$a$-checkPrecondition-DelegatableNodeKt$visitAncestors$1$iv$iv":I
    nop

    .line 273
    .end local v10    # "$i$a$-checkPrecondition-DelegatableNodeKt$visitAncestors$1$iv$iv":I
    const-string/jumbo v10, "visitAncestors called on an unattached node"

    invoke-static {v10}, Landroidx/compose/ui/internal/InlineClassHelperKt;->throwIllegalStateException(Ljava/lang/String;)V

    .line 275
    :cond_0
    nop

    .line 276
    .end local v8    # "value$iv$iv$iv":Z
    .end local v9    # "$i$f$checkPrecondition":I
    invoke-interface {v6}, Landroidx/compose/ui/node/DelegatableNode;->getNode()Landroidx/compose/ui/Modifier$Node;

    move-result-object v8

    invoke-virtual {v8}, Landroidx/compose/ui/Modifier$Node;->getParent$ui()Landroidx/compose/ui/Modifier$Node;

    move-result-object v8

    .line 277
    .local v8, "node$iv$iv":Landroidx/compose/ui/Modifier$Node;
    invoke-static {v6}, Landroidx/compose/ui/node/DelegatableNodeKt;->requireLayoutNode(Landroidx/compose/ui/node/DelegatableNode;)Landroidx/compose/ui/node/LayoutNode;

    move-result-object v9

    .line 278
    .local v9, "layout$iv$iv":Landroidx/compose/ui/node/LayoutNode;
    :goto_0
    if-eqz v9, :cond_13

    .line 279
    invoke-virtual {v9}, Landroidx/compose/ui/node/LayoutNode;->getNodes$ui()Landroidx/compose/ui/node/NodeChain;

    move-result-object v11

    invoke-virtual {v11}, Landroidx/compose/ui/node/NodeChain;->getHead$ui()Landroidx/compose/ui/Modifier$Node;

    move-result-object v11

    .line 280
    .local v11, "head$iv$iv":Landroidx/compose/ui/Modifier$Node;
    invoke-virtual {v11}, Landroidx/compose/ui/Modifier$Node;->getAggregateChildKindSet$ui()I

    move-result v12

    and-int/2addr v12, v5

    if-eqz v12, :cond_11

    .line 281
    :goto_1
    if-eqz v8, :cond_10

    .line 282
    invoke-virtual {v8}, Landroidx/compose/ui/Modifier$Node;->getKindSet$ui()I

    move-result v12

    and-int/2addr v12, v5

    if-eqz v12, :cond_f

    .line 283
    move-object v12, v8

    .local v12, "it$iv":Landroidx/compose/ui/Modifier$Node;
    const/4 v13, 0x0

    .line 270
    .local v13, "$i$a$-visitAncestors-DelegatableNodeKt$visitAncestors$2$iv":I
    move v14, v1

    .local v14, "$v$c$androidx-compose-ui-node-NodeKind$-kind$0$iv$iv":I
    move-object v15, v12

    .local v15, "$this$dispatchForKind_u2d6rFNWt0$iv$iv":Landroidx/compose/ui/Modifier$Node;
    const/16 v16, 0x0

    .line 284
    .local v16, "$i$f$dispatchForKind-6rFNWt0":I
    const/16 v17, 0x0

    .line 285
    .local v17, "stack$iv$iv":Ljava/lang/Object;
    const/16 v18, 0x0

    .local v18, "node$iv$iv":Ljava/lang/Object;
    move-object/from16 v18, v15

    move-object/from16 v10, v18

    const/16 v18, 0x0

    .line 286
    .end local v18    # "node$iv$iv":Ljava/lang/Object;
    .local v10, "node$iv$iv":Ljava/lang/Object;
    :goto_2
    if-eqz v10, :cond_e

    .line 287
    move-object/from16 v19, v0

    .end local v0    # "$this$visitAncestors_u2dY_u2dYKmho_u24default$iv":Landroidx/compose/ui/node/DelegatableNode;
    .local v19, "$this$visitAncestors_u2dY_u2dYKmho_u24default$iv":Landroidx/compose/ui/node/DelegatableNode;
    instance-of v0, v10, Landroidx/compose/ui/focus/FocusTargetNode;

    if-eqz v0, :cond_2

    .line 288
    move-object v0, v10

    check-cast v0, Landroidx/compose/ui/focus/FocusTargetNode;

    .local v0, "it":Landroidx/compose/ui/focus/FocusTargetNode;
    const/16 v20, 0x0

    .line 184
    .local v20, "$i$a$-visitAncestors-Y-YKmho$default-FocusTraversalKt$findNonDeactivatedParent$1":I
    invoke-virtual {v0}, Landroidx/compose/ui/focus/FocusTargetNode;->fetchFocusProperties$ui()Landroidx/compose/ui/focus/FocusProperties;

    move-result-object v21

    invoke-interface/range {v21 .. v21}, Landroidx/compose/ui/focus/FocusProperties;->getCanFocus()Z

    move-result v21

    if-eqz v21, :cond_1

    return-object v0

    .line 288
    .end local v0    # "it":Landroidx/compose/ui/focus/FocusTargetNode;
    .end local v20    # "$i$a$-visitAncestors-Y-YKmho$default-FocusTraversalKt$findNonDeactivatedParent$1":I
    :cond_1
    move/from16 v26, v1

    move/from16 v30, v2

    move/from16 v31, v3

    goto/16 :goto_9

    .line 289
    :cond_2
    move v0, v14

    .local v0, "$v$c$androidx-compose-ui-node-NodeKind$-kind$0$iv$iv$iv":I
    move-object/from16 v20, v10

    .local v20, "this_$iv$iv$iv":Landroidx/compose/ui/Modifier$Node;
    const/16 v21, 0x0

    .line 290
    .local v21, "$i$f$isKind-H91voCI$ui":I
    invoke-virtual/range {v20 .. v20}, Landroidx/compose/ui/Modifier$Node;->getKindSet$ui()I

    move-result v22

    and-int v22, v22, v0

    move/from16 v23, v0

    .end local v0    # "$v$c$androidx-compose-ui-node-NodeKind$-kind$0$iv$iv$iv":I
    .local v23, "$v$c$androidx-compose-ui-node-NodeKind$-kind$0$iv$iv$iv":I
    if-eqz v22, :cond_3

    const/16 v20, 0x1

    goto :goto_3

    :cond_3
    const/16 v20, 0x0

    .line 289
    .end local v20    # "this_$iv$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .end local v21    # "$i$f$isKind-H91voCI$ui":I
    .end local v23    # "$v$c$androidx-compose-ui-node-NodeKind$-kind$0$iv$iv$iv":I
    :goto_3
    if-eqz v20, :cond_c

    instance-of v0, v10, Landroidx/compose/ui/node/DelegatingNode;

    if-eqz v0, :cond_c

    .line 291
    const/4 v0, 0x0

    .line 292
    .local v0, "count$iv$iv":I
    move-object/from16 v21, v10

    check-cast v21, Landroidx/compose/ui/node/DelegatingNode;

    .local v21, "this_$iv$iv$iv":Landroidx/compose/ui/node/DelegatingNode;
    const/16 v22, 0x0

    .line 293
    .local v22, "$i$f$forEachImmediateDelegate$ui":I
    invoke-virtual/range {v21 .. v21}, Landroidx/compose/ui/node/DelegatingNode;->getDelegate$ui()Landroidx/compose/ui/Modifier$Node;

    move-result-object v23

    .line 294
    .local v23, "node$iv$iv$iv":Landroidx/compose/ui/Modifier$Node;
    :goto_4
    if-eqz v23, :cond_b

    .line 295
    move-object/from16 v24, v23

    .local v24, "next$iv$iv":Landroidx/compose/ui/Modifier$Node;
    const/16 v25, 0x0

    .line 296
    .local v25, "$i$a$-forEachImmediateDelegate$ui-DelegatableNodeKt$dispatchForKind$1$iv$iv":I
    move/from16 v26, v14

    .local v26, "$v$c$androidx-compose-ui-node-NodeKind$-kind$0$iv$iv$iv":I
    move-object/from16 v27, v24

    .local v27, "this_$iv$iv$iv":Landroidx/compose/ui/Modifier$Node;
    const/16 v28, 0x0

    .line 290
    .local v28, "$i$f$isKind-H91voCI$ui":I
    invoke-virtual/range {v27 .. v27}, Landroidx/compose/ui/Modifier$Node;->getKindSet$ui()I

    move-result v29

    and-int v29, v29, v26

    if-eqz v29, :cond_4

    const/16 v26, 0x1

    goto :goto_5

    :cond_4
    const/16 v26, 0x0

    .line 296
    .end local v26    # "$v$c$androidx-compose-ui-node-NodeKind$-kind$0$iv$iv$iv":I
    .end local v27    # "this_$iv$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .end local v28    # "$i$f$isKind-H91voCI$ui":I
    :goto_5
    if-eqz v26, :cond_a

    .line 297
    add-int/lit8 v0, v0, 0x1

    .line 298
    move/from16 v26, v1

    const/4 v1, 0x1

    .end local v1    # "$v$c$androidx-compose-ui-node-NodeKind$-type$0$iv":I
    .local v26, "$v$c$androidx-compose-ui-node-NodeKind$-type$0$iv":I
    if-ne v0, v1, :cond_5

    .line 299
    move-object/from16 v10, v24

    move/from16 v30, v2

    move/from16 v31, v3

    move-object/from16 v2, v24

    const/4 v3, 0x0

    goto :goto_8

    .line 303
    :cond_5
    if-nez v17, :cond_6

    const/4 v1, 0x0

    .line 304
    .local v1, "$i$f$mutableVectorOf":I
    nop

    .line 305
    move/from16 v27, v0

    .end local v0    # "count$iv$iv":I
    .local v27, "count$iv$iv":I
    const/16 v0, 0x10

    .local v0, "capacity$iv$iv$iv$iv":I
    const/16 v28, 0x0

    .line 306
    .local v28, "$i$f$MutableVector":I
    move/from16 v29, v1

    .end local v1    # "$i$f$mutableVectorOf":I
    .local v29, "$i$f$mutableVectorOf":I
    new-instance v1, Landroidx/compose/runtime/collection/MutableVector;

    move/from16 v30, v2

    .end local v2    # "includeSelf$iv":Z
    .local v30, "includeSelf$iv":Z
    new-array v2, v0, [Landroidx/compose/ui/Modifier$Node;

    move/from16 v31, v3

    const/4 v3, 0x0

    .end local v3    # "$i$f$visitAncestors-Y-YKmho":I
    .local v31, "$i$f$visitAncestors-Y-YKmho":I
    invoke-direct {v1, v2, v3}, Landroidx/compose/runtime/collection/MutableVector;-><init>([Ljava/lang/Object;I)V

    .line 304
    .end local v0    # "capacity$iv$iv$iv$iv":I
    .end local v28    # "$i$f$MutableVector":I
    goto :goto_6

    .line 303
    .end local v27    # "count$iv$iv":I
    .end local v29    # "$i$f$mutableVectorOf":I
    .end local v30    # "includeSelf$iv":Z
    .end local v31    # "$i$f$visitAncestors-Y-YKmho":I
    .local v0, "count$iv$iv":I
    .restart local v2    # "includeSelf$iv":Z
    .restart local v3    # "$i$f$visitAncestors-Y-YKmho":I
    :cond_6
    move/from16 v27, v0

    move/from16 v30, v2

    move/from16 v31, v3

    const/4 v3, 0x0

    .end local v0    # "count$iv$iv":I
    .end local v2    # "includeSelf$iv":Z
    .end local v3    # "$i$f$visitAncestors-Y-YKmho":I
    .restart local v27    # "count$iv$iv":I
    .restart local v30    # "includeSelf$iv":Z
    .restart local v31    # "$i$f$visitAncestors-Y-YKmho":I
    move-object/from16 v1, v17

    :goto_6
    nop

    .line 307
    .end local v17    # "stack$iv$iv":Ljava/lang/Object;
    .local v1, "stack$iv$iv":Ljava/lang/Object;
    move-object v0, v10

    .line 308
    .local v0, "theNode$iv$iv":Landroidx/compose/ui/Modifier$Node;
    if-eqz v0, :cond_8

    .line 309
    if-eqz v1, :cond_7

    invoke-virtual {v1, v0}, Landroidx/compose/runtime/collection/MutableVector;->add(Ljava/lang/Object;)Z

    .line 310
    :cond_7
    const/4 v2, 0x0

    move-object v10, v2

    .line 312
    :cond_8
    if-eqz v1, :cond_9

    move-object/from16 v2, v24

    .end local v24    # "next$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .local v2, "next$iv$iv":Landroidx/compose/ui/Modifier$Node;
    invoke-virtual {v1, v2}, Landroidx/compose/runtime/collection/MutableVector;->add(Ljava/lang/Object;)Z

    goto :goto_7

    .end local v2    # "next$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .restart local v24    # "next$iv$iv":Landroidx/compose/ui/Modifier$Node;
    :cond_9
    move-object/from16 v2, v24

    .line 315
    .end local v0    # "theNode$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .end local v24    # "next$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .restart local v2    # "next$iv$iv":Landroidx/compose/ui/Modifier$Node;
    :goto_7
    move-object/from16 v17, v1

    move/from16 v0, v27

    goto :goto_8

    .line 296
    .end local v26    # "$v$c$androidx-compose-ui-node-NodeKind$-type$0$iv":I
    .end local v27    # "count$iv$iv":I
    .end local v30    # "includeSelf$iv":Z
    .end local v31    # "$i$f$visitAncestors-Y-YKmho":I
    .local v0, "count$iv$iv":I
    .local v1, "$v$c$androidx-compose-ui-node-NodeKind$-type$0$iv":I
    .local v2, "includeSelf$iv":Z
    .restart local v3    # "$i$f$visitAncestors-Y-YKmho":I
    .restart local v17    # "stack$iv$iv":Ljava/lang/Object;
    .restart local v24    # "next$iv$iv":Landroidx/compose/ui/Modifier$Node;
    :cond_a
    move/from16 v26, v1

    move/from16 v30, v2

    move/from16 v31, v3

    move-object/from16 v2, v24

    const/4 v3, 0x0

    .line 315
    .end local v1    # "$v$c$androidx-compose-ui-node-NodeKind$-type$0$iv":I
    .end local v3    # "$i$f$visitAncestors-Y-YKmho":I
    .end local v24    # "next$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .local v2, "next$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .restart local v26    # "$v$c$androidx-compose-ui-node-NodeKind$-type$0$iv":I
    .restart local v30    # "includeSelf$iv":Z
    .restart local v31    # "$i$f$visitAncestors-Y-YKmho":I
    :goto_8
    nop

    .line 295
    .end local v2    # "next$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .end local v25    # "$i$a$-forEachImmediateDelegate$ui-DelegatableNodeKt$dispatchForKind$1$iv$iv":I
    nop

    .line 316
    invoke-virtual/range {v23 .. v23}, Landroidx/compose/ui/Modifier$Node;->getChild$ui()Landroidx/compose/ui/Modifier$Node;

    move-result-object v23

    move/from16 v1, v26

    move/from16 v2, v30

    move/from16 v3, v31

    goto :goto_4

    .line 318
    .end local v26    # "$v$c$androidx-compose-ui-node-NodeKind$-type$0$iv":I
    .end local v30    # "includeSelf$iv":Z
    .end local v31    # "$i$f$visitAncestors-Y-YKmho":I
    .restart local v1    # "$v$c$androidx-compose-ui-node-NodeKind$-type$0$iv":I
    .local v2, "includeSelf$iv":Z
    .restart local v3    # "$i$f$visitAncestors-Y-YKmho":I
    :cond_b
    move/from16 v26, v1

    move/from16 v30, v2

    move/from16 v31, v3

    .line 319
    .end local v1    # "$v$c$androidx-compose-ui-node-NodeKind$-type$0$iv":I
    .end local v2    # "includeSelf$iv":Z
    .end local v3    # "$i$f$visitAncestors-Y-YKmho":I
    .end local v21    # "this_$iv$iv$iv":Landroidx/compose/ui/node/DelegatingNode;
    .end local v22    # "$i$f$forEachImmediateDelegate$ui":I
    .end local v23    # "node$iv$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .restart local v26    # "$v$c$androidx-compose-ui-node-NodeKind$-type$0$iv":I
    .restart local v30    # "includeSelf$iv":Z
    .restart local v31    # "$i$f$visitAncestors-Y-YKmho":I
    const/4 v1, 0x1

    if-ne v0, v1, :cond_d

    .line 321
    move-object/from16 v0, v19

    move/from16 v1, v26

    move/from16 v2, v30

    move/from16 v3, v31

    goto/16 :goto_2

    .line 289
    .end local v0    # "count$iv$iv":I
    .end local v26    # "$v$c$androidx-compose-ui-node-NodeKind$-type$0$iv":I
    .end local v30    # "includeSelf$iv":Z
    .end local v31    # "$i$f$visitAncestors-Y-YKmho":I
    .restart local v1    # "$v$c$androidx-compose-ui-node-NodeKind$-type$0$iv":I
    .restart local v2    # "includeSelf$iv":Z
    .restart local v3    # "$i$f$visitAncestors-Y-YKmho":I
    :cond_c
    move/from16 v26, v1

    move/from16 v30, v2

    move/from16 v31, v3

    .line 324
    .end local v1    # "$v$c$androidx-compose-ui-node-NodeKind$-type$0$iv":I
    .end local v2    # "includeSelf$iv":Z
    .end local v3    # "$i$f$visitAncestors-Y-YKmho":I
    .restart local v26    # "$v$c$androidx-compose-ui-node-NodeKind$-type$0$iv":I
    .restart local v30    # "includeSelf$iv":Z
    .restart local v31    # "$i$f$visitAncestors-Y-YKmho":I
    :cond_d
    :goto_9
    invoke-static/range {v17 .. v17}, Landroidx/compose/ui/node/DelegatableNodeKt;->access$pop(Landroidx/compose/runtime/collection/MutableVector;)Landroidx/compose/ui/Modifier$Node;

    move-result-object v10

    move-object/from16 v0, v19

    move/from16 v1, v26

    move/from16 v2, v30

    move/from16 v3, v31

    goto/16 :goto_2

    .line 326
    .end local v19    # "$this$visitAncestors_u2dY_u2dYKmho_u24default$iv":Landroidx/compose/ui/node/DelegatableNode;
    .end local v26    # "$v$c$androidx-compose-ui-node-NodeKind$-type$0$iv":I
    .end local v30    # "includeSelf$iv":Z
    .end local v31    # "$i$f$visitAncestors-Y-YKmho":I
    .local v0, "$this$visitAncestors_u2dY_u2dYKmho_u24default$iv":Landroidx/compose/ui/node/DelegatableNode;
    .restart local v1    # "$v$c$androidx-compose-ui-node-NodeKind$-type$0$iv":I
    .restart local v2    # "includeSelf$iv":Z
    .restart local v3    # "$i$f$visitAncestors-Y-YKmho":I
    :cond_e
    move-object/from16 v19, v0

    move/from16 v26, v1

    move/from16 v30, v2

    move/from16 v31, v3

    .line 270
    .end local v0    # "$this$visitAncestors_u2dY_u2dYKmho_u24default$iv":Landroidx/compose/ui/node/DelegatableNode;
    .end local v1    # "$v$c$androidx-compose-ui-node-NodeKind$-type$0$iv":I
    .end local v2    # "includeSelf$iv":Z
    .end local v3    # "$i$f$visitAncestors-Y-YKmho":I
    .end local v10    # "node$iv$iv":Ljava/lang/Object;
    .end local v14    # "$v$c$androidx-compose-ui-node-NodeKind$-kind$0$iv$iv":I
    .end local v15    # "$this$dispatchForKind_u2d6rFNWt0$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .end local v16    # "$i$f$dispatchForKind-6rFNWt0":I
    .end local v17    # "stack$iv$iv":Ljava/lang/Object;
    .restart local v19    # "$this$visitAncestors_u2dY_u2dYKmho_u24default$iv":Landroidx/compose/ui/node/DelegatableNode;
    .restart local v26    # "$v$c$androidx-compose-ui-node-NodeKind$-type$0$iv":I
    .restart local v30    # "includeSelf$iv":Z
    .restart local v31    # "$i$f$visitAncestors-Y-YKmho":I
    nop

    .line 283
    .end local v12    # "it$iv":Landroidx/compose/ui/Modifier$Node;
    .end local v13    # "$i$a$-visitAncestors-DelegatableNodeKt$visitAncestors$2$iv":I
    goto :goto_a

    .line 282
    .end local v19    # "$this$visitAncestors_u2dY_u2dYKmho_u24default$iv":Landroidx/compose/ui/node/DelegatableNode;
    .end local v26    # "$v$c$androidx-compose-ui-node-NodeKind$-type$0$iv":I
    .end local v30    # "includeSelf$iv":Z
    .end local v31    # "$i$f$visitAncestors-Y-YKmho":I
    .restart local v0    # "$this$visitAncestors_u2dY_u2dYKmho_u24default$iv":Landroidx/compose/ui/node/DelegatableNode;
    .restart local v1    # "$v$c$androidx-compose-ui-node-NodeKind$-type$0$iv":I
    .restart local v2    # "includeSelf$iv":Z
    .restart local v3    # "$i$f$visitAncestors-Y-YKmho":I
    :cond_f
    move-object/from16 v19, v0

    move/from16 v26, v1

    move/from16 v30, v2

    move/from16 v31, v3

    const/16 v18, 0x0

    .line 327
    .end local v0    # "$this$visitAncestors_u2dY_u2dYKmho_u24default$iv":Landroidx/compose/ui/node/DelegatableNode;
    .end local v1    # "$v$c$androidx-compose-ui-node-NodeKind$-type$0$iv":I
    .end local v2    # "includeSelf$iv":Z
    .end local v3    # "$i$f$visitAncestors-Y-YKmho":I
    .restart local v19    # "$this$visitAncestors_u2dY_u2dYKmho_u24default$iv":Landroidx/compose/ui/node/DelegatableNode;
    .restart local v26    # "$v$c$androidx-compose-ui-node-NodeKind$-type$0$iv":I
    .restart local v30    # "includeSelf$iv":Z
    .restart local v31    # "$i$f$visitAncestors-Y-YKmho":I
    :goto_a
    invoke-virtual {v8}, Landroidx/compose/ui/Modifier$Node;->getParent$ui()Landroidx/compose/ui/Modifier$Node;

    move-result-object v8

    move-object/from16 v0, v19

    move/from16 v1, v26

    move/from16 v2, v30

    move/from16 v3, v31

    goto/16 :goto_1

    .line 281
    .end local v19    # "$this$visitAncestors_u2dY_u2dYKmho_u24default$iv":Landroidx/compose/ui/node/DelegatableNode;
    .end local v26    # "$v$c$androidx-compose-ui-node-NodeKind$-type$0$iv":I
    .end local v30    # "includeSelf$iv":Z
    .end local v31    # "$i$f$visitAncestors-Y-YKmho":I
    .restart local v0    # "$this$visitAncestors_u2dY_u2dYKmho_u24default$iv":Landroidx/compose/ui/node/DelegatableNode;
    .restart local v1    # "$v$c$androidx-compose-ui-node-NodeKind$-type$0$iv":I
    .restart local v2    # "includeSelf$iv":Z
    .restart local v3    # "$i$f$visitAncestors-Y-YKmho":I
    :cond_10
    move-object/from16 v19, v0

    move/from16 v26, v1

    move/from16 v30, v2

    move/from16 v31, v3

    const/16 v18, 0x0

    .end local v0    # "$this$visitAncestors_u2dY_u2dYKmho_u24default$iv":Landroidx/compose/ui/node/DelegatableNode;
    .end local v1    # "$v$c$androidx-compose-ui-node-NodeKind$-type$0$iv":I
    .end local v2    # "includeSelf$iv":Z
    .end local v3    # "$i$f$visitAncestors-Y-YKmho":I
    .restart local v19    # "$this$visitAncestors_u2dY_u2dYKmho_u24default$iv":Landroidx/compose/ui/node/DelegatableNode;
    .restart local v26    # "$v$c$androidx-compose-ui-node-NodeKind$-type$0$iv":I
    .restart local v30    # "includeSelf$iv":Z
    .restart local v31    # "$i$f$visitAncestors-Y-YKmho":I
    goto :goto_b

    .line 280
    .end local v19    # "$this$visitAncestors_u2dY_u2dYKmho_u24default$iv":Landroidx/compose/ui/node/DelegatableNode;
    .end local v26    # "$v$c$androidx-compose-ui-node-NodeKind$-type$0$iv":I
    .end local v30    # "includeSelf$iv":Z
    .end local v31    # "$i$f$visitAncestors-Y-YKmho":I
    .restart local v0    # "$this$visitAncestors_u2dY_u2dYKmho_u24default$iv":Landroidx/compose/ui/node/DelegatableNode;
    .restart local v1    # "$v$c$androidx-compose-ui-node-NodeKind$-type$0$iv":I
    .restart local v2    # "includeSelf$iv":Z
    .restart local v3    # "$i$f$visitAncestors-Y-YKmho":I
    :cond_11
    move-object/from16 v19, v0

    move/from16 v26, v1

    move/from16 v30, v2

    move/from16 v31, v3

    const/16 v18, 0x0

    .line 330
    .end local v0    # "$this$visitAncestors_u2dY_u2dYKmho_u24default$iv":Landroidx/compose/ui/node/DelegatableNode;
    .end local v1    # "$v$c$androidx-compose-ui-node-NodeKind$-type$0$iv":I
    .end local v2    # "includeSelf$iv":Z
    .end local v3    # "$i$f$visitAncestors-Y-YKmho":I
    .restart local v19    # "$this$visitAncestors_u2dY_u2dYKmho_u24default$iv":Landroidx/compose/ui/node/DelegatableNode;
    .restart local v26    # "$v$c$androidx-compose-ui-node-NodeKind$-type$0$iv":I
    .restart local v30    # "includeSelf$iv":Z
    .restart local v31    # "$i$f$visitAncestors-Y-YKmho":I
    :goto_b
    invoke-virtual {v9}, Landroidx/compose/ui/node/LayoutNode;->getParent$ui()Landroidx/compose/ui/node/LayoutNode;

    move-result-object v9

    .line 331
    if-eqz v9, :cond_12

    invoke-virtual {v9}, Landroidx/compose/ui/node/LayoutNode;->getNodes$ui()Landroidx/compose/ui/node/NodeChain;

    move-result-object v0

    if-eqz v0, :cond_12

    invoke-virtual {v0}, Landroidx/compose/ui/node/NodeChain;->getTail$ui()Landroidx/compose/ui/Modifier$Node;

    move-result-object v10

    goto :goto_c

    :cond_12
    move-object/from16 v10, v18

    :goto_c
    move-object v8, v10

    move-object/from16 v0, v19

    move/from16 v1, v26

    move/from16 v2, v30

    move/from16 v3, v31

    .end local v11    # "head$iv$iv":Landroidx/compose/ui/Modifier$Node;
    goto/16 :goto_0

    .line 333
    .end local v19    # "$this$visitAncestors_u2dY_u2dYKmho_u24default$iv":Landroidx/compose/ui/node/DelegatableNode;
    .end local v26    # "$v$c$androidx-compose-ui-node-NodeKind$-type$0$iv":I
    .end local v30    # "includeSelf$iv":Z
    .end local v31    # "$i$f$visitAncestors-Y-YKmho":I
    .restart local v0    # "$this$visitAncestors_u2dY_u2dYKmho_u24default$iv":Landroidx/compose/ui/node/DelegatableNode;
    .restart local v1    # "$v$c$androidx-compose-ui-node-NodeKind$-type$0$iv":I
    .restart local v2    # "includeSelf$iv":Z
    .restart local v3    # "$i$f$visitAncestors-Y-YKmho":I
    :cond_13
    const/16 v18, 0x0

    .line 270
    .end local v4    # "includeSelf$iv$iv":Z
    .end local v5    # "mask$iv$iv":I
    .end local v6    # "$this$visitAncestors$iv$iv":Landroidx/compose/ui/node/DelegatableNode;
    .end local v7    # "$i$f$visitAncestors":I
    .end local v8    # "node$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .end local v9    # "layout$iv$iv":Landroidx/compose/ui/node/LayoutNode;
    nop

    .line 185
    .end local v0    # "$this$visitAncestors_u2dY_u2dYKmho_u24default$iv":Landroidx/compose/ui/node/DelegatableNode;
    .end local v1    # "$v$c$androidx-compose-ui-node-NodeKind$-type$0$iv":I
    .end local v2    # "includeSelf$iv":Z
    .end local v3    # "$i$f$visitAncestors-Y-YKmho":I
    return-object v18
.end method

.method public static final focusRect(Landroidx/compose/ui/focus/FocusTargetNode;)Landroidx/compose/ui/geometry/Rect;
    .locals 3
    .param p0, "$this$focusRect"    # Landroidx/compose/ui/focus/FocusTargetNode;

    .line 151
    invoke-virtual {p0}, Landroidx/compose/ui/focus/FocusTargetNode;->isAttached()Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Landroidx/compose/ui/geometry/Rect;->Companion:Landroidx/compose/ui/geometry/Rect$Companion;

    invoke-virtual {v0}, Landroidx/compose/ui/geometry/Rect$Companion;->getZero()Landroidx/compose/ui/geometry/Rect;

    move-result-object v0

    return-object v0

    .line 153
    :cond_0
    invoke-virtual {p0}, Landroidx/compose/ui/focus/FocusTargetNode;->getCoordinator$ui()Landroidx/compose/ui/node/NodeCoordinator;

    move-result-object v0

    if-eqz v0, :cond_3

    check-cast v0, Landroidx/compose/ui/layout/LayoutCoordinates;

    invoke-static {v0}, Landroidx/compose/ui/layout/LayoutCoordinatesKt;->findRootCoordinates(Landroidx/compose/ui/layout/LayoutCoordinates;)Landroidx/compose/ui/layout/LayoutCoordinates;

    move-result-object v0

    if-eqz v0, :cond_3

    move-object v1, v0

    .line 188
    .local v1, "it":Landroidx/compose/ui/layout/LayoutCoordinates;
    const/4 v2, 0x0

    .line 153
    .local v2, "$i$a$-takeIf-FocusTraversalKt$focusRect$rootCoordinates$1":I
    invoke-interface {v1}, Landroidx/compose/ui/layout/LayoutCoordinates;->isAttached()Z

    move-result v1

    .end local v1    # "it":Landroidx/compose/ui/layout/LayoutCoordinates;
    .end local v2    # "$i$a$-takeIf-FocusTraversalKt$focusRect$rootCoordinates$1":I
    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_2

    goto :goto_1

    .line 152
    :cond_2
    nop

    .line 155
    .local v0, "rootCoordinates":Landroidx/compose/ui/layout/LayoutCoordinates;
    invoke-virtual {p0, v0}, Landroidx/compose/ui/focus/FocusTargetNode;->fetchFocusRect$ui(Landroidx/compose/ui/layout/LayoutCoordinates;)Landroidx/compose/ui/geometry/Rect;

    move-result-object v1

    return-object v1

    .line 153
    .end local v0    # "rootCoordinates":Landroidx/compose/ui/layout/LayoutCoordinates;
    :cond_3
    :goto_1
    sget-object v0, Landroidx/compose/ui/geometry/Rect;->Companion:Landroidx/compose/ui/geometry/Rect$Companion;

    invoke-virtual {v0}, Landroidx/compose/ui/geometry/Rect$Companion;->getZero()Landroidx/compose/ui/geometry/Rect;

    move-result-object v0

    return-object v0
.end method

.method public static final focusSearch-0X8WOeE(Landroidx/compose/ui/focus/FocusTargetNode;ILandroidx/compose/ui/unit/LayoutDirection;Landroidx/compose/ui/geometry/Rect;Lkotlin/jvm/functions/Function1;)Ljava/lang/Boolean;
    .locals 3
    .param p0, "$this$focusSearch_u2d0X8WOeE"    # Landroidx/compose/ui/focus/FocusTargetNode;
    .param p1, "$v$c$androidx-compose-ui-focus-FocusDirection$-focusDirection$0"    # I
    .param p2, "layoutDirection"    # Landroidx/compose/ui/unit/LayoutDirection;
    .param p3, "previouslyFocusedRect"    # Landroidx/compose/ui/geometry/Rect;
    .param p4, "onFound"    # Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/ui/focus/FocusTargetNode;",
            "I",
            "Landroidx/compose/ui/unit/LayoutDirection;",
            "Landroidx/compose/ui/geometry/Rect;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Landroidx/compose/ui/focus/FocusTargetNode;",
            "Ljava/lang/Boolean;",
            ">;)",
            "Ljava/lang/Boolean;"
        }
    .end annotation

    .line 118
    nop

    .line 119
    sget-object v0, Landroidx/compose/ui/focus/FocusDirection;->Companion:Landroidx/compose/ui/focus/FocusDirection$Companion;

    invoke-virtual {v0}, Landroidx/compose/ui/focus/FocusDirection$Companion;->getNext-dhqQ-8s()I

    move-result v0

    invoke-static {p1, v0}, Landroidx/compose/ui/focus/FocusDirection;->equals-impl0(II)Z

    move-result v0

    if-nez v0, :cond_9

    .line 120
    sget-object v0, Landroidx/compose/ui/focus/FocusDirection;->Companion:Landroidx/compose/ui/focus/FocusDirection$Companion;

    invoke-virtual {v0}, Landroidx/compose/ui/focus/FocusDirection$Companion;->getPrevious-dhqQ-8s()I

    move-result v0

    invoke-static {p1, v0}, Landroidx/compose/ui/focus/FocusDirection;->equals-impl0(II)Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_4

    .line 121
    :cond_0
    sget-object v0, Landroidx/compose/ui/focus/FocusDirection;->Companion:Landroidx/compose/ui/focus/FocusDirection$Companion;

    invoke-virtual {v0}, Landroidx/compose/ui/focus/FocusDirection$Companion;->getLeft-dhqQ-8s()I

    move-result v0

    invoke-static {p1, v0}, Landroidx/compose/ui/focus/FocusDirection;->equals-impl0(II)Z

    move-result v0

    if-nez v0, :cond_8

    .line 122
    sget-object v0, Landroidx/compose/ui/focus/FocusDirection;->Companion:Landroidx/compose/ui/focus/FocusDirection$Companion;

    invoke-virtual {v0}, Landroidx/compose/ui/focus/FocusDirection$Companion;->getRight-dhqQ-8s()I

    move-result v0

    invoke-static {p1, v0}, Landroidx/compose/ui/focus/FocusDirection;->equals-impl0(II)Z

    move-result v0

    if-nez v0, :cond_8

    .line 123
    sget-object v0, Landroidx/compose/ui/focus/FocusDirection;->Companion:Landroidx/compose/ui/focus/FocusDirection$Companion;

    invoke-virtual {v0}, Landroidx/compose/ui/focus/FocusDirection$Companion;->getUp-dhqQ-8s()I

    move-result v0

    invoke-static {p1, v0}, Landroidx/compose/ui/focus/FocusDirection;->equals-impl0(II)Z

    move-result v0

    if-nez v0, :cond_8

    .line 124
    sget-object v0, Landroidx/compose/ui/focus/FocusDirection;->Companion:Landroidx/compose/ui/focus/FocusDirection$Companion;

    invoke-virtual {v0}, Landroidx/compose/ui/focus/FocusDirection$Companion;->getDown-dhqQ-8s()I

    move-result v0

    invoke-static {p1, v0}, Landroidx/compose/ui/focus/FocusDirection;->equals-impl0(II)Z

    move-result v0

    if-eqz v0, :cond_1

    goto/16 :goto_3

    .line 125
    :cond_1
    sget-object v0, Landroidx/compose/ui/focus/FocusDirection;->Companion:Landroidx/compose/ui/focus/FocusDirection$Companion;

    invoke-virtual {v0}, Landroidx/compose/ui/focus/FocusDirection$Companion;->getEnter-dhqQ-8s()I

    move-result v0

    invoke-static {p1, v0}, Landroidx/compose/ui/focus/FocusDirection;->equals-impl0(II)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    .line 128
    sget-object v0, Landroidx/compose/ui/focus/FocusTraversalKt$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {p2}, Landroidx/compose/ui/unit/LayoutDirection;->ordinal()I

    move-result v2

    aget v0, v0, v2

    packed-switch v0, :pswitch_data_0

    new-instance v0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {v0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw v0

    .line 129
    :pswitch_0
    sget-object v0, Landroidx/compose/ui/focus/FocusDirection;->Companion:Landroidx/compose/ui/focus/FocusDirection$Companion;

    invoke-virtual {v0}, Landroidx/compose/ui/focus/FocusDirection$Companion;->getLeft-dhqQ-8s()I

    move-result v0

    goto :goto_0

    .line 130
    :pswitch_1
    sget-object v0, Landroidx/compose/ui/focus/FocusDirection;->Companion:Landroidx/compose/ui/focus/FocusDirection$Companion;

    invoke-virtual {v0}, Landroidx/compose/ui/focus/FocusDirection$Companion;->getRight-dhqQ-8s()I

    move-result v0

    .line 127
    :goto_0
    nop

    .line 133
    .local v0, "direction":I
    nop

    .line 132
    invoke-static {p0}, Landroidx/compose/ui/focus/FocusTraversalKt;->findActiveFocusNode(Landroidx/compose/ui/focus/FocusTargetNode;)Landroidx/compose/ui/focus/FocusTargetNode;

    move-result-object v2

    .line 133
    if-eqz v2, :cond_2

    .line 132
    nop

    .line 133
    invoke-static {v2, v0, p3, p4}, Landroidx/compose/ui/focus/TwoDimensionalFocusSearchKt;->twoDimensionalFocusSearch-sMXa3k8(Landroidx/compose/ui/focus/FocusTargetNode;ILandroidx/compose/ui/geometry/Rect;Lkotlin/jvm/functions/Function1;)Ljava/lang/Boolean;

    move-result-object v1

    goto :goto_5

    .end local v0    # "direction":I
    :cond_2
    goto :goto_5

    .line 135
    :cond_3
    sget-object v0, Landroidx/compose/ui/focus/FocusDirection;->Companion:Landroidx/compose/ui/focus/FocusDirection$Companion;

    invoke-virtual {v0}, Landroidx/compose/ui/focus/FocusDirection$Companion;->getExit-dhqQ-8s()I

    move-result v0

    invoke-static {p1, v0}, Landroidx/compose/ui/focus/FocusDirection;->equals-impl0(II)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 136
    invoke-static {p0}, Landroidx/compose/ui/focus/FocusTraversalKt;->findActiveFocusNode(Landroidx/compose/ui/focus/FocusTargetNode;)Landroidx/compose/ui/focus/FocusTargetNode;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-static {v0}, Landroidx/compose/ui/focus/FocusTraversalKt;->findNonDeactivatedParent(Landroidx/compose/ui/focus/FocusTargetNode;)Landroidx/compose/ui/focus/FocusTargetNode;

    move-result-object v1

    .local v1, "it":Landroidx/compose/ui/focus/FocusTargetNode;
    :cond_4
    const/4 v0, 0x0

    .line 137
    .local v0, "$i$a$-let-FocusTraversalKt$focusSearch$1":I
    if-eqz v1, :cond_6

    invoke-static {v1, p0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    goto :goto_1

    :cond_5
    invoke-interface {p4, v1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    goto :goto_2

    :cond_6
    :goto_1
    const/4 v2, 0x0

    .end local v0    # "$i$a$-let-FocusTraversalKt$focusSearch$1":I
    .end local v1    # "it":Landroidx/compose/ui/focus/FocusTargetNode;
    :goto_2
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    .line 136
    goto :goto_5

    :cond_7
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 139
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Focus search invoked with invalid FocusDirection "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, Landroidx/compose/ui/focus/FocusDirection;->toString-impl(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 124
    :cond_8
    :goto_3
    invoke-static {p0, p1, p3, p4}, Landroidx/compose/ui/focus/TwoDimensionalFocusSearchKt;->twoDimensionalFocusSearch-sMXa3k8(Landroidx/compose/ui/focus/FocusTargetNode;ILandroidx/compose/ui/geometry/Rect;Lkotlin/jvm/functions/Function1;)Ljava/lang/Boolean;

    move-result-object v1

    goto :goto_5

    .line 120
    :cond_9
    :goto_4
    invoke-static {p0, p1, p4}, Landroidx/compose/ui/focus/OneDimensionalFocusSearchKt;->oneDimensionalFocusSearch--OM-vw8(Landroidx/compose/ui/focus/FocusTargetNode;ILkotlin/jvm/functions/Function1;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    .line 118
    :goto_5
    return-object v1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static final getActiveChild(Landroidx/compose/ui/focus/FocusTargetNode;)Landroidx/compose/ui/focus/FocusTargetNode;
    .locals 34
    .param p0, "$this$activeChild"    # Landroidx/compose/ui/focus/FocusTargetNode;

    .line 164
    invoke-virtual/range {p0 .. p0}, Landroidx/compose/ui/focus/FocusTargetNode;->getNode()Landroidx/compose/ui/Modifier$Node;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/compose/ui/Modifier$Node;->isAttached()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 165
    :cond_0
    move-object/from16 v0, p0

    check-cast v0, Landroidx/compose/ui/node/DelegatableNode;

    const/4 v2, 0x0

    .line 189
    .local v2, "$i$f$getFocusTarget-OLwlOKw":I
    const/16 v3, 0x400

    invoke-static {v3}, Landroidx/compose/ui/node/NodeKind;->constructor-impl(I)I

    move-result v2

    .line 165
    .end local v2    # "$i$f$getFocusTarget-OLwlOKw":I
    nop

    .line 190
    .local v0, "$this$visitChildren_u2dY_u2dYKmho_u24default$iv":Landroidx/compose/ui/node/DelegatableNode;
    .local v2, "$v$c$androidx-compose-ui-node-NodeKind$-type$0$iv":I
    nop

    .line 192
    const/4 v3, 0x0

    .line 190
    .local v3, "zOrder$iv":Z
    const/4 v4, 0x0

    .line 194
    .local v4, "$i$f$visitChildren-Y-YKmho":I
    move v5, v3

    .local v5, "zOrder$iv$iv":Z
    move v6, v2

    .local v6, "mask$iv$iv":I
    move-object v7, v0

    .local v7, "$this$visitChildren$iv$iv":Landroidx/compose/ui/node/DelegatableNode;
    const/4 v8, 0x0

    .line 195
    .local v8, "$i$f$visitChildren":I
    invoke-interface {v7}, Landroidx/compose/ui/node/DelegatableNode;->getNode()Landroidx/compose/ui/Modifier$Node;

    move-result-object v9

    invoke-virtual {v9}, Landroidx/compose/ui/Modifier$Node;->isAttached()Z

    move-result v9

    .local v9, "value$iv$iv$iv":Z
    const/4 v10, 0x0

    .line 196
    .local v10, "$i$f$checkPrecondition":I
    if-nez v9, :cond_1

    .line 197
    const/4 v11, 0x0

    .line 195
    .local v11, "$i$a$-checkPrecondition-DelegatableNodeKt$visitChildren$1$iv$iv":I
    nop

    .line 197
    .end local v11    # "$i$a$-checkPrecondition-DelegatableNodeKt$visitChildren$1$iv$iv":I
    const-string/jumbo v11, "visitChildren called on an unattached node"

    invoke-static {v11}, Landroidx/compose/ui/internal/InlineClassHelperKt;->throwIllegalStateException(Ljava/lang/String;)V

    .line 199
    :cond_1
    nop

    .line 200
    .end local v9    # "value$iv$iv$iv":Z
    .end local v10    # "$i$f$checkPrecondition":I
    const/4 v9, 0x0

    .line 201
    .local v9, "$i$f$mutableVectorOf":I
    nop

    .line 202
    const/16 v10, 0x10

    .local v10, "capacity$iv$iv$iv$iv":I
    const/4 v11, 0x0

    .line 203
    .local v11, "$i$f$MutableVector":I
    new-instance v12, Landroidx/compose/runtime/collection/MutableVector;

    new-array v13, v10, [Landroidx/compose/ui/Modifier$Node;

    const/4 v14, 0x0

    invoke-direct {v12, v13, v14}, Landroidx/compose/runtime/collection/MutableVector;-><init>([Ljava/lang/Object;I)V

    .line 201
    .end local v10    # "capacity$iv$iv$iv$iv":I
    .end local v11    # "$i$f$MutableVector":I
    nop

    .line 200
    .end local v9    # "$i$f$mutableVectorOf":I
    nop

    .line 204
    .local v12, "branches$iv$iv":Landroidx/compose/runtime/collection/MutableVector;
    invoke-interface {v7}, Landroidx/compose/ui/node/DelegatableNode;->getNode()Landroidx/compose/ui/Modifier$Node;

    move-result-object v9

    invoke-virtual {v9}, Landroidx/compose/ui/Modifier$Node;->getChild$ui()Landroidx/compose/ui/Modifier$Node;

    move-result-object v9

    .line 205
    .local v9, "child$iv$iv":Landroidx/compose/ui/Modifier$Node;
    if-nez v9, :cond_2

    invoke-interface {v7}, Landroidx/compose/ui/node/DelegatableNode;->getNode()Landroidx/compose/ui/Modifier$Node;

    move-result-object v10

    invoke-static {v12, v10, v5}, Landroidx/compose/ui/node/DelegatableNodeKt;->access$addLayoutNodeChildren(Landroidx/compose/runtime/collection/MutableVector;Landroidx/compose/ui/Modifier$Node;Z)V

    goto :goto_0

    :cond_2
    invoke-virtual {v12, v9}, Landroidx/compose/runtime/collection/MutableVector;->add(Ljava/lang/Object;)Z

    .line 206
    :goto_0
    move-object v10, v12

    .local v10, "this_$iv$iv$iv":Landroidx/compose/runtime/collection/MutableVector;
    const/4 v11, 0x0

    .line 207
    .local v11, "$i$f$isNotEmpty":I
    invoke-virtual {v10}, Landroidx/compose/runtime/collection/MutableVector;->getSize()I

    move-result v13

    const/4 v15, 0x1

    if-eqz v13, :cond_3

    move v10, v15

    goto :goto_1

    :cond_3
    move v10, v14

    .end local v10    # "this_$iv$iv$iv":Landroidx/compose/runtime/collection/MutableVector;
    .end local v11    # "$i$f$isNotEmpty":I
    :goto_1
    if-eqz v10, :cond_15

    .line 208
    move-object v10, v12

    .restart local v10    # "this_$iv$iv$iv":Landroidx/compose/runtime/collection/MutableVector;
    const/4 v11, 0x0

    .line 209
    .local v11, "$i$f$getLastIndex":I
    invoke-virtual {v10}, Landroidx/compose/runtime/collection/MutableVector;->getSize()I

    move-result v13

    sub-int/2addr v13, v15

    .line 208
    .end local v10    # "this_$iv$iv$iv":Landroidx/compose/runtime/collection/MutableVector;
    .end local v11    # "$i$f$getLastIndex":I
    invoke-virtual {v12, v13}, Landroidx/compose/runtime/collection/MutableVector;->removeAt(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroidx/compose/ui/Modifier$Node;

    .line 210
    .local v10, "branch$iv$iv":Landroidx/compose/ui/Modifier$Node;
    invoke-virtual {v10}, Landroidx/compose/ui/Modifier$Node;->getAggregateChildKindSet$ui()I

    move-result v11

    and-int/2addr v11, v6

    if-nez v11, :cond_4

    .line 211
    invoke-static {v12, v10, v5}, Landroidx/compose/ui/node/DelegatableNodeKt;->access$addLayoutNodeChildren(Landroidx/compose/runtime/collection/MutableVector;Landroidx/compose/ui/Modifier$Node;Z)V

    .line 213
    goto :goto_0

    .line 215
    :cond_4
    move-object v11, v10

    .line 216
    .local v11, "node$iv$iv":Landroidx/compose/ui/Modifier$Node;
    :goto_2
    if-eqz v11, :cond_14

    .line 217
    invoke-virtual {v11}, Landroidx/compose/ui/Modifier$Node;->getKindSet$ui()I

    move-result v13

    and-int/2addr v13, v6

    if-eqz v13, :cond_13

    .line 218
    move-object v13, v11

    .local v13, "it$iv":Landroidx/compose/ui/Modifier$Node;
    const/16 v16, 0x0

    .line 194
    .local v16, "$i$a$-visitChildren-DelegatableNodeKt$visitChildren$2$iv":I
    move/from16 v17, v2

    .local v17, "$v$c$androidx-compose-ui-node-NodeKind$-kind$0$iv$iv":I
    move-object/from16 v18, v13

    .local v18, "$this$dispatchForKind_u2d6rFNWt0$iv$iv":Landroidx/compose/ui/Modifier$Node;
    const/16 v19, 0x0

    .line 219
    .local v19, "$i$f$dispatchForKind-6rFNWt0":I
    const/16 v20, 0x0

    .line 220
    .local v20, "stack$iv$iv":Ljava/lang/Object;
    const/16 v21, 0x0

    .local v21, "node$iv$iv":Ljava/lang/Object;
    move-object/from16 v21, v18

    move-object/from16 v33, v21

    move-object/from16 v21, v1

    move-object/from16 v1, v33

    .line 221
    .end local v21    # "node$iv$iv":Ljava/lang/Object;
    .local v1, "node$iv$iv":Ljava/lang/Object;
    :goto_3
    if-eqz v1, :cond_12

    .line 222
    instance-of v14, v1, Landroidx/compose/ui/focus/FocusTargetNode;

    if-eqz v14, :cond_6

    .line 223
    move-object v14, v1

    check-cast v14, Landroidx/compose/ui/focus/FocusTargetNode;

    .local v14, "it":Landroidx/compose/ui/focus/FocusTargetNode;
    const/16 v22, 0x0

    .line 166
    .local v22, "$i$a$-visitChildren-Y-YKmho$default-FocusTraversalKt$activeChild$1":I
    invoke-virtual {v14}, Landroidx/compose/ui/focus/FocusTargetNode;->getNode()Landroidx/compose/ui/Modifier$Node;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Landroidx/compose/ui/Modifier$Node;->isAttached()Z

    move-result v23

    if-eqz v23, :cond_5

    .line 167
    invoke-virtual {v14}, Landroidx/compose/ui/focus/FocusTargetNode;->getFocusState()Landroidx/compose/ui/focus/FocusStateImpl;

    move-result-object v23

    sget-object v24, Landroidx/compose/ui/focus/FocusTraversalKt$WhenMappings;->$EnumSwitchMapping$1:[I

    invoke-virtual/range {v23 .. v23}, Landroidx/compose/ui/focus/FocusStateImpl;->ordinal()I

    move-result v23

    aget v23, v24, v23

    packed-switch v23, :pswitch_data_0

    new-instance v15, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {v15}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw v15

    .line 171
    :pswitch_0
    goto :goto_4

    .line 170
    :pswitch_1
    return-object v14

    .line 223
    .end local v14    # "it":Landroidx/compose/ui/focus/FocusTargetNode;
    .end local v22    # "$i$a$-visitChildren-Y-YKmho$default-FocusTraversalKt$activeChild$1":I
    :cond_5
    :goto_4
    move-object/from16 v30, v0

    move/from16 v32, v2

    move v0, v15

    goto/16 :goto_c

    .line 224
    :cond_6
    move/from16 v14, v17

    .local v14, "$v$c$androidx-compose-ui-node-NodeKind$-kind$0$iv$iv$iv":I
    move-object/from16 v22, v1

    .local v22, "this_$iv$iv$iv":Landroidx/compose/ui/Modifier$Node;
    const/16 v23, 0x0

    .line 225
    .local v23, "$i$f$isKind-H91voCI$ui":I
    invoke-virtual/range {v22 .. v22}, Landroidx/compose/ui/Modifier$Node;->getKindSet$ui()I

    move-result v24

    and-int v24, v24, v14

    if-eqz v24, :cond_7

    move v14, v15

    goto :goto_5

    :cond_7
    const/4 v14, 0x0

    .line 224
    .end local v14    # "$v$c$androidx-compose-ui-node-NodeKind$-kind$0$iv$iv$iv":I
    .end local v22    # "this_$iv$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .end local v23    # "$i$f$isKind-H91voCI$ui":I
    :goto_5
    if-eqz v14, :cond_11

    instance-of v14, v1, Landroidx/compose/ui/node/DelegatingNode;

    if-eqz v14, :cond_11

    .line 226
    const/4 v14, 0x0

    .line 227
    .local v14, "count$iv$iv":I
    move-object/from16 v22, v1

    check-cast v22, Landroidx/compose/ui/node/DelegatingNode;

    .local v22, "this_$iv$iv$iv":Landroidx/compose/ui/node/DelegatingNode;
    const/16 v23, 0x0

    .line 228
    .local v23, "$i$f$forEachImmediateDelegate$ui":I
    invoke-virtual/range {v22 .. v22}, Landroidx/compose/ui/node/DelegatingNode;->getDelegate$ui()Landroidx/compose/ui/Modifier$Node;

    move-result-object v24

    .line 229
    .local v24, "node$iv$iv$iv":Landroidx/compose/ui/Modifier$Node;
    :goto_6
    if-eqz v24, :cond_f

    .line 230
    move-object/from16 v25, v24

    .local v25, "next$iv$iv":Landroidx/compose/ui/Modifier$Node;
    const/16 v26, 0x0

    .line 231
    .local v26, "$i$a$-forEachImmediateDelegate$ui-DelegatableNodeKt$dispatchForKind$1$iv$iv":I
    move/from16 v27, v17

    .local v27, "$v$c$androidx-compose-ui-node-NodeKind$-kind$0$iv$iv$iv":I
    move-object/from16 v28, v25

    .local v28, "this_$iv$iv$iv":Landroidx/compose/ui/Modifier$Node;
    const/16 v29, 0x0

    .line 225
    .local v29, "$i$f$isKind-H91voCI$ui":I
    invoke-virtual/range {v28 .. v28}, Landroidx/compose/ui/Modifier$Node;->getKindSet$ui()I

    move-result v30

    and-int v30, v30, v27

    if-eqz v30, :cond_8

    move/from16 v27, v15

    goto :goto_7

    :cond_8
    const/16 v27, 0x0

    .line 231
    .end local v27    # "$v$c$androidx-compose-ui-node-NodeKind$-kind$0$iv$iv$iv":I
    .end local v28    # "this_$iv$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .end local v29    # "$i$f$isKind-H91voCI$ui":I
    :goto_7
    if-eqz v27, :cond_e

    .line 232
    add-int/lit8 v14, v14, 0x1

    .line 233
    if-ne v14, v15, :cond_9

    .line 234
    move-object/from16 v1, v25

    move-object/from16 v30, v0

    move/from16 v32, v2

    move-object/from16 v2, v25

    goto :goto_b

    .line 238
    :cond_9
    if-nez v20, :cond_a

    const/16 v27, 0x0

    .line 201
    .local v27, "$i$f$mutableVectorOf":I
    nop

    .line 202
    const/16 v15, 0x10

    .local v15, "capacity$iv$iv$iv$iv":I
    const/16 v29, 0x0

    .line 203
    .local v29, "$i$f$MutableVector":I
    move-object/from16 v30, v0

    .end local v0    # "$this$visitChildren_u2dY_u2dYKmho_u24default$iv":Landroidx/compose/ui/node/DelegatableNode;
    .local v30, "$this$visitChildren_u2dY_u2dYKmho_u24default$iv":Landroidx/compose/ui/node/DelegatableNode;
    new-instance v0, Landroidx/compose/runtime/collection/MutableVector;

    move-object/from16 v31, v1

    .end local v1    # "node$iv$iv":Ljava/lang/Object;
    .local v31, "node$iv$iv":Ljava/lang/Object;
    new-array v1, v15, [Landroidx/compose/ui/Modifier$Node;

    move/from16 v32, v2

    const/4 v2, 0x0

    .end local v2    # "$v$c$androidx-compose-ui-node-NodeKind$-type$0$iv":I
    .local v32, "$v$c$androidx-compose-ui-node-NodeKind$-type$0$iv":I
    invoke-direct {v0, v1, v2}, Landroidx/compose/runtime/collection/MutableVector;-><init>([Ljava/lang/Object;I)V

    .line 201
    .end local v15    # "capacity$iv$iv$iv$iv":I
    .end local v29    # "$i$f$MutableVector":I
    goto :goto_8

    .line 238
    .end local v27    # "$i$f$mutableVectorOf":I
    .end local v30    # "$this$visitChildren_u2dY_u2dYKmho_u24default$iv":Landroidx/compose/ui/node/DelegatableNode;
    .end local v31    # "node$iv$iv":Ljava/lang/Object;
    .end local v32    # "$v$c$androidx-compose-ui-node-NodeKind$-type$0$iv":I
    .restart local v0    # "$this$visitChildren_u2dY_u2dYKmho_u24default$iv":Landroidx/compose/ui/node/DelegatableNode;
    .restart local v1    # "node$iv$iv":Ljava/lang/Object;
    .restart local v2    # "$v$c$androidx-compose-ui-node-NodeKind$-type$0$iv":I
    :cond_a
    move-object/from16 v30, v0

    move-object/from16 v31, v1

    move/from16 v32, v2

    const/4 v2, 0x0

    .end local v0    # "$this$visitChildren_u2dY_u2dYKmho_u24default$iv":Landroidx/compose/ui/node/DelegatableNode;
    .end local v1    # "node$iv$iv":Ljava/lang/Object;
    .end local v2    # "$v$c$androidx-compose-ui-node-NodeKind$-type$0$iv":I
    .restart local v30    # "$this$visitChildren_u2dY_u2dYKmho_u24default$iv":Landroidx/compose/ui/node/DelegatableNode;
    .restart local v31    # "node$iv$iv":Ljava/lang/Object;
    .restart local v32    # "$v$c$androidx-compose-ui-node-NodeKind$-type$0$iv":I
    move-object/from16 v0, v20

    :goto_8
    nop

    .line 239
    .end local v20    # "stack$iv$iv":Ljava/lang/Object;
    .local v0, "stack$iv$iv":Ljava/lang/Object;
    move-object/from16 v1, v31

    .line 240
    .local v1, "theNode$iv$iv":Landroidx/compose/ui/Modifier$Node;
    if-eqz v1, :cond_c

    .line 241
    if-eqz v0, :cond_b

    invoke-virtual {v0, v1}, Landroidx/compose/runtime/collection/MutableVector;->add(Ljava/lang/Object;)Z

    .line 242
    :cond_b
    const/4 v15, 0x0

    .end local v31    # "node$iv$iv":Ljava/lang/Object;
    .local v15, "node$iv$iv":Ljava/lang/Object;
    goto :goto_9

    .line 240
    .end local v15    # "node$iv$iv":Ljava/lang/Object;
    .restart local v31    # "node$iv$iv":Ljava/lang/Object;
    :cond_c
    move-object/from16 v15, v31

    .line 244
    .end local v31    # "node$iv$iv":Ljava/lang/Object;
    .restart local v15    # "node$iv$iv":Ljava/lang/Object;
    :goto_9
    if-eqz v0, :cond_d

    move-object/from16 v2, v25

    .end local v25    # "next$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .local v2, "next$iv$iv":Landroidx/compose/ui/Modifier$Node;
    invoke-virtual {v0, v2}, Landroidx/compose/runtime/collection/MutableVector;->add(Ljava/lang/Object;)Z

    goto :goto_a

    .end local v2    # "next$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .restart local v25    # "next$iv$iv":Landroidx/compose/ui/Modifier$Node;
    :cond_d
    move-object/from16 v2, v25

    .line 247
    .end local v1    # "theNode$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .end local v25    # "next$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .restart local v2    # "next$iv$iv":Landroidx/compose/ui/Modifier$Node;
    :goto_a
    move-object/from16 v20, v0

    move-object v1, v15

    goto :goto_b

    .line 231
    .end local v15    # "node$iv$iv":Ljava/lang/Object;
    .end local v30    # "$this$visitChildren_u2dY_u2dYKmho_u24default$iv":Landroidx/compose/ui/node/DelegatableNode;
    .end local v32    # "$v$c$androidx-compose-ui-node-NodeKind$-type$0$iv":I
    .local v0, "$this$visitChildren_u2dY_u2dYKmho_u24default$iv":Landroidx/compose/ui/node/DelegatableNode;
    .local v1, "node$iv$iv":Ljava/lang/Object;
    .local v2, "$v$c$androidx-compose-ui-node-NodeKind$-type$0$iv":I
    .restart local v20    # "stack$iv$iv":Ljava/lang/Object;
    .restart local v25    # "next$iv$iv":Landroidx/compose/ui/Modifier$Node;
    :cond_e
    move-object/from16 v30, v0

    move-object/from16 v31, v1

    move/from16 v32, v2

    move-object/from16 v2, v25

    .line 247
    .end local v0    # "$this$visitChildren_u2dY_u2dYKmho_u24default$iv":Landroidx/compose/ui/node/DelegatableNode;
    .end local v25    # "next$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .local v2, "next$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .restart local v30    # "$this$visitChildren_u2dY_u2dYKmho_u24default$iv":Landroidx/compose/ui/node/DelegatableNode;
    .restart local v32    # "$v$c$androidx-compose-ui-node-NodeKind$-type$0$iv":I
    :goto_b
    nop

    .line 230
    .end local v2    # "next$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .end local v26    # "$i$a$-forEachImmediateDelegate$ui-DelegatableNodeKt$dispatchForKind$1$iv$iv":I
    nop

    .line 248
    invoke-virtual/range {v24 .. v24}, Landroidx/compose/ui/Modifier$Node;->getChild$ui()Landroidx/compose/ui/Modifier$Node;

    move-result-object v24

    move-object/from16 v0, v30

    move/from16 v2, v32

    const/4 v15, 0x1

    goto :goto_6

    .line 250
    .end local v30    # "$this$visitChildren_u2dY_u2dYKmho_u24default$iv":Landroidx/compose/ui/node/DelegatableNode;
    .end local v32    # "$v$c$androidx-compose-ui-node-NodeKind$-type$0$iv":I
    .restart local v0    # "$this$visitChildren_u2dY_u2dYKmho_u24default$iv":Landroidx/compose/ui/node/DelegatableNode;
    .local v2, "$v$c$androidx-compose-ui-node-NodeKind$-type$0$iv":I
    :cond_f
    move-object/from16 v30, v0

    move-object/from16 v31, v1

    move/from16 v32, v2

    .line 251
    .end local v0    # "$this$visitChildren_u2dY_u2dYKmho_u24default$iv":Landroidx/compose/ui/node/DelegatableNode;
    .end local v1    # "node$iv$iv":Ljava/lang/Object;
    .end local v2    # "$v$c$androidx-compose-ui-node-NodeKind$-type$0$iv":I
    .end local v22    # "this_$iv$iv$iv":Landroidx/compose/ui/node/DelegatingNode;
    .end local v23    # "$i$f$forEachImmediateDelegate$ui":I
    .end local v24    # "node$iv$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .restart local v30    # "$this$visitChildren_u2dY_u2dYKmho_u24default$iv":Landroidx/compose/ui/node/DelegatableNode;
    .restart local v31    # "node$iv$iv":Ljava/lang/Object;
    .restart local v32    # "$v$c$androidx-compose-ui-node-NodeKind$-type$0$iv":I
    const/4 v0, 0x1

    if-ne v14, v0, :cond_10

    .line 253
    move v15, v0

    move-object/from16 v0, v30

    move-object/from16 v1, v31

    move/from16 v2, v32

    const/4 v14, 0x0

    goto/16 :goto_3

    .line 251
    :cond_10
    move-object/from16 v1, v31

    goto :goto_c

    .line 224
    .end local v14    # "count$iv$iv":I
    .end local v30    # "$this$visitChildren_u2dY_u2dYKmho_u24default$iv":Landroidx/compose/ui/node/DelegatableNode;
    .end local v31    # "node$iv$iv":Ljava/lang/Object;
    .end local v32    # "$v$c$androidx-compose-ui-node-NodeKind$-type$0$iv":I
    .restart local v0    # "$this$visitChildren_u2dY_u2dYKmho_u24default$iv":Landroidx/compose/ui/node/DelegatableNode;
    .restart local v1    # "node$iv$iv":Ljava/lang/Object;
    .restart local v2    # "$v$c$androidx-compose-ui-node-NodeKind$-type$0$iv":I
    :cond_11
    move-object/from16 v30, v0

    move/from16 v32, v2

    move v0, v15

    .line 256
    .end local v0    # "$this$visitChildren_u2dY_u2dYKmho_u24default$iv":Landroidx/compose/ui/node/DelegatableNode;
    .end local v2    # "$v$c$androidx-compose-ui-node-NodeKind$-type$0$iv":I
    .restart local v30    # "$this$visitChildren_u2dY_u2dYKmho_u24default$iv":Landroidx/compose/ui/node/DelegatableNode;
    .restart local v32    # "$v$c$androidx-compose-ui-node-NodeKind$-type$0$iv":I
    :goto_c
    invoke-static/range {v20 .. v20}, Landroidx/compose/ui/node/DelegatableNodeKt;->access$pop(Landroidx/compose/runtime/collection/MutableVector;)Landroidx/compose/ui/Modifier$Node;

    move-result-object v1

    move v15, v0

    move-object/from16 v0, v30

    move/from16 v2, v32

    const/4 v14, 0x0

    goto/16 :goto_3

    .line 258
    .end local v30    # "$this$visitChildren_u2dY_u2dYKmho_u24default$iv":Landroidx/compose/ui/node/DelegatableNode;
    .end local v32    # "$v$c$androidx-compose-ui-node-NodeKind$-type$0$iv":I
    .restart local v0    # "$this$visitChildren_u2dY_u2dYKmho_u24default$iv":Landroidx/compose/ui/node/DelegatableNode;
    .restart local v2    # "$v$c$androidx-compose-ui-node-NodeKind$-type$0$iv":I
    :cond_12
    move-object/from16 v30, v0

    move/from16 v32, v2

    .line 194
    .end local v0    # "$this$visitChildren_u2dY_u2dYKmho_u24default$iv":Landroidx/compose/ui/node/DelegatableNode;
    .end local v1    # "node$iv$iv":Ljava/lang/Object;
    .end local v2    # "$v$c$androidx-compose-ui-node-NodeKind$-type$0$iv":I
    .end local v17    # "$v$c$androidx-compose-ui-node-NodeKind$-kind$0$iv$iv":I
    .end local v18    # "$this$dispatchForKind_u2d6rFNWt0$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .end local v19    # "$i$f$dispatchForKind-6rFNWt0":I
    .end local v20    # "stack$iv$iv":Ljava/lang/Object;
    .restart local v30    # "$this$visitChildren_u2dY_u2dYKmho_u24default$iv":Landroidx/compose/ui/node/DelegatableNode;
    .restart local v32    # "$v$c$androidx-compose-ui-node-NodeKind$-type$0$iv":I
    nop

    .line 218
    .end local v13    # "it$iv":Landroidx/compose/ui/Modifier$Node;
    .end local v16    # "$i$a$-visitChildren-DelegatableNodeKt$visitChildren$2$iv":I
    nop

    .line 259
    move-object/from16 v1, v21

    const/4 v14, 0x0

    goto/16 :goto_0

    .line 261
    .end local v30    # "$this$visitChildren_u2dY_u2dYKmho_u24default$iv":Landroidx/compose/ui/node/DelegatableNode;
    .end local v32    # "$v$c$androidx-compose-ui-node-NodeKind$-type$0$iv":I
    .restart local v0    # "$this$visitChildren_u2dY_u2dYKmho_u24default$iv":Landroidx/compose/ui/node/DelegatableNode;
    .restart local v2    # "$v$c$androidx-compose-ui-node-NodeKind$-type$0$iv":I
    :cond_13
    move-object/from16 v30, v0

    move-object/from16 v21, v1

    move/from16 v32, v2

    move v0, v15

    .end local v0    # "$this$visitChildren_u2dY_u2dYKmho_u24default$iv":Landroidx/compose/ui/node/DelegatableNode;
    .end local v2    # "$v$c$androidx-compose-ui-node-NodeKind$-type$0$iv":I
    .restart local v30    # "$this$visitChildren_u2dY_u2dYKmho_u24default$iv":Landroidx/compose/ui/node/DelegatableNode;
    .restart local v32    # "$v$c$androidx-compose-ui-node-NodeKind$-type$0$iv":I
    invoke-virtual {v11}, Landroidx/compose/ui/Modifier$Node;->getChild$ui()Landroidx/compose/ui/Modifier$Node;

    move-result-object v11

    move-object/from16 v0, v30

    const/4 v14, 0x0

    goto/16 :goto_2

    .line 216
    .end local v30    # "$this$visitChildren_u2dY_u2dYKmho_u24default$iv":Landroidx/compose/ui/node/DelegatableNode;
    .end local v32    # "$v$c$androidx-compose-ui-node-NodeKind$-type$0$iv":I
    .restart local v0    # "$this$visitChildren_u2dY_u2dYKmho_u24default$iv":Landroidx/compose/ui/node/DelegatableNode;
    .restart local v2    # "$v$c$androidx-compose-ui-node-NodeKind$-type$0$iv":I
    :cond_14
    move-object/from16 v30, v0

    move-object/from16 v21, v1

    move/from16 v32, v2

    .end local v0    # "$this$visitChildren_u2dY_u2dYKmho_u24default$iv":Landroidx/compose/ui/node/DelegatableNode;
    .end local v2    # "$v$c$androidx-compose-ui-node-NodeKind$-type$0$iv":I
    .restart local v30    # "$this$visitChildren_u2dY_u2dYKmho_u24default$iv":Landroidx/compose/ui/node/DelegatableNode;
    .restart local v32    # "$v$c$androidx-compose-ui-node-NodeKind$-type$0$iv":I
    const/4 v14, 0x0

    goto/16 :goto_0

    .line 264
    .end local v10    # "branch$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .end local v11    # "node$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .end local v30    # "$this$visitChildren_u2dY_u2dYKmho_u24default$iv":Landroidx/compose/ui/node/DelegatableNode;
    .end local v32    # "$v$c$androidx-compose-ui-node-NodeKind$-type$0$iv":I
    .restart local v0    # "$this$visitChildren_u2dY_u2dYKmho_u24default$iv":Landroidx/compose/ui/node/DelegatableNode;
    .restart local v2    # "$v$c$androidx-compose-ui-node-NodeKind$-type$0$iv":I
    :cond_15
    move-object/from16 v21, v1

    .line 194
    .end local v5    # "zOrder$iv$iv":Z
    .end local v6    # "mask$iv$iv":I
    .end local v7    # "$this$visitChildren$iv$iv":Landroidx/compose/ui/node/DelegatableNode;
    .end local v8    # "$i$f$visitChildren":I
    .end local v9    # "child$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .end local v12    # "branches$iv$iv":Landroidx/compose/runtime/collection/MutableVector;
    nop

    .line 174
    .end local v0    # "$this$visitChildren_u2dY_u2dYKmho_u24default$iv":Landroidx/compose/ui/node/DelegatableNode;
    .end local v2    # "$v$c$androidx-compose-ui-node-NodeKind$-type$0$iv":I
    .end local v3    # "zOrder$iv":Z
    .end local v4    # "$i$f$visitChildren-Y-YKmho":I
    return-object v21

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static final isEligibleForFocusSearch(Landroidx/compose/ui/focus/FocusTargetNode;)Z
    .locals 3
    .param p0, "$this$isEligibleForFocusSearch"    # Landroidx/compose/ui/focus/FocusTargetNode;

    .line 160
    invoke-virtual {p0}, Landroidx/compose/ui/focus/FocusTargetNode;->getCoordinator$ui()Landroidx/compose/ui/node/NodeCoordinator;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/compose/ui/node/NodeCoordinator;->getLayoutNode()Landroidx/compose/ui/node/LayoutNode;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/compose/ui/node/LayoutNode;->isPlaced()Z

    move-result v0

    if-ne v0, v1, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    if-eqz v0, :cond_2

    invoke-virtual {p0}, Landroidx/compose/ui/focus/FocusTargetNode;->getCoordinator$ui()Landroidx/compose/ui/node/NodeCoordinator;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroidx/compose/ui/node/NodeCoordinator;->getLayoutNode()Landroidx/compose/ui/node/LayoutNode;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroidx/compose/ui/node/LayoutNode;->isAttached()Z

    move-result v0

    if-ne v0, v1, :cond_1

    move v0, v1

    goto :goto_1

    :cond_1
    move v0, v2

    :goto_1
    if-eqz v0, :cond_2

    goto :goto_2

    :cond_2
    move v1, v2

    :goto_2
    return v1
.end method
