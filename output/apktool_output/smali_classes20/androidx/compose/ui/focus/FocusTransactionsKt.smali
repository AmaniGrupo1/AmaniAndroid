.class public final Landroidx/compose/ui/focus/FocusTransactionsKt;
.super Ljava/lang/Object;
.source "FocusTransactions.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/compose/ui/focus/FocusTransactionsKt$WhenMappings;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nFocusTransactions.kt\nKotlin\n*S Kotlin\n*F\n+ 1 FocusTransactions.kt\nandroidx/compose/ui/focus/FocusTransactionsKt\n+ 2 MutableVector.kt\nandroidx/compose/runtime/collection/MutableVectorKt\n+ 3 NodeKind.kt\nandroidx/compose/ui/node/Nodes\n+ 4 DelegatableNode.kt\nandroidx/compose/ui/node/DelegatableNodeKt\n+ 5 InlineClassHelper.kt\nandroidx/compose/ui/internal/InlineClassHelperKt\n+ 6 Modifier.kt\nandroidx/compose/ui/Modifier$Node\n+ 7 DelegatingNode.kt\nandroidx/compose/ui/node/DelegatingNode\n+ 8 MutableVector.kt\nandroidx/compose/runtime/collection/MutableVector\n+ 9 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 10 FocusTargetNode.kt\nandroidx/compose/ui/focus/FocusTargetNode\n*L\n1#1,351:1\n1107#2:352\n1085#2,2:353\n1107#2:394\n1085#2,2:395\n1107#2:424\n1085#2,2:425\n1107#2:466\n1085#2,2:467\n1107#2:554\n1085#2,2:555\n120#3:355\n120#3:427\n120#3:513\n252#4,5:356\n95#4:361\n96#4,8:366\n556#4,6:374\n566#4,2:381\n568#4,8:386\n576#4,9:397\n585#4,8:409\n105#4,7:417\n252#4,5:428\n95#4:433\n96#4,8:438\n556#4,6:446\n566#4,2:453\n568#4,8:458\n576#4,9:469\n585#4,8:481\n105#4,7:489\n297#4:514\n252#4,5:515\n95#4:520\n96#4,8:525\n556#4,5:533\n298#4:538\n561#4:539\n566#4,2:541\n568#4,8:546\n576#4,9:557\n585#4,8:569\n105#4,7:577\n300#4:584\n57#5,4:362\n57#5,4:434\n57#5,4:521\n247#6:380\n247#6:452\n247#6:540\n240#7,3:383\n243#7,3:406\n240#7,3:455\n243#7,3:478\n240#7,3:543\n243#7,3:566\n448#8,8:496\n448#8,8:504\n1#9:512\n314#10,4:585\n287#10,8:589\n319#10:597\n295#10,4:598\n320#10,3:602\n338#10,4:605\n287#10,8:609\n343#10:617\n295#10,4:618\n344#10,3:622\n*S KotlinDebug\n*F\n+ 1 FocusTransactions.kt\nandroidx/compose/ui/focus/FocusTransactionsKt\n*L\n81#1:352\n81#1:353,2\n82#1:394\n82#1:395,2\n89#1:424\n89#1:425,2\n90#1:466\n90#1:467,2\n307#1:554\n307#1:555,2\n82#1:355\n90#1:427\n307#1:513\n82#1:356,5\n82#1:361\n82#1:366,8\n82#1:374,6\n82#1:381,2\n82#1:386,8\n82#1:397,9\n82#1:409,8\n82#1:417,7\n90#1:428,5\n90#1:433\n90#1:438,8\n90#1:446,6\n90#1:453,2\n90#1:458,8\n90#1:469,9\n90#1:481,8\n90#1:489,7\n307#1:514\n307#1:515,5\n307#1:520\n307#1:525,8\n307#1:533,5\n307#1:538\n307#1:539\n307#1:541,2\n307#1:546,8\n307#1:557,9\n307#1:569,8\n307#1:577,7\n307#1:584\n82#1:362,4\n90#1:434,4\n307#1:521,4\n82#1:380\n90#1:452\n307#1:540\n82#1:383,3\n82#1:406,3\n90#1:455,3\n90#1:478,3\n307#1:543,3\n307#1:566,3\n113#1:496,8\n124#1:504,8\n335#1:585,4\n335#1:589,8\n335#1:597\n335#1:598,4\n335#1:602,3\n345#1:605,4\n345#1:609,8\n345#1:617\n345#1:618,4\n345#1:622,3\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000$\n\u0000\n\u0002\u0010\u000b\n\u0002\u0018\u0002\n\u0002\u0008\t\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\t\u001a\u000c\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\u0000\u001a\u000c\u0010\u0003\u001a\u00020\u0001*\u00020\u0002H\u0000\u001a\u000c\u0010\u0004\u001a\u00020\u0001*\u00020\u0002H\u0000\u001a\u001e\u0010\u0005\u001a\u00020\u0001*\u00020\u00022\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u00012\u0006\u0010\u0007\u001a\u00020\u0001H\u0000\u001a\u000c\u0010\u0008\u001a\u00020\u0001*\u00020\u0002H\u0002\u001a \u0010\t\u001a\u00020\u0001*\u00020\u00022\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u00012\u0008\u0008\u0002\u0010\u0007\u001a\u00020\u0001H\u0002\u001a)\u0010\n\u001a\u00020\u0001*\u00020\u00022\n\u0008\u0002\u0010\u000b\u001a\u0004\u0018\u00010\u000c2\n\u0008\u0002\u0010\r\u001a\u0004\u0018\u00010\u000eH\u0002\u00a2\u0006\u0002\u0008\u000f\u001a\u000c\u0010\u0010\u001a\u00020\u0002*\u00020\u0002H\u0002\u001a\u001b\u0010\u0011\u001a\u00020\u0012*\u00020\u00022\u0006\u0010\u000b\u001a\u00020\u000cH\u0000\u00a2\u0006\u0004\u0008\u0013\u0010\u0014\u001a\u001b\u0010\u0015\u001a\u00020\u0012*\u00020\u00022\u0006\u0010\u000b\u001a\u00020\u000cH\u0000\u00a2\u0006\u0004\u0008\u0016\u0010\u0014\u001a\u001b\u0010\u0017\u001a\u00020\u0012*\u00020\u00022\u0006\u0010\u000b\u001a\u00020\u000cH\u0002\u00a2\u0006\u0004\u0008\u0018\u0010\u0014\u001a\u001b\u0010\u0019\u001a\u00020\u0012*\u00020\u00022\u0006\u0010\u000b\u001a\u00020\u000cH\u0002\u00a2\u0006\u0004\u0008\u001a\u0010\u0014\u00a8\u0006\u001b"
    }
    d2 = {
        "performRequestFocus",
        "",
        "Landroidx/compose/ui/focus/FocusTargetNode;",
        "captureFocus",
        "freeFocus",
        "clearFocus",
        "forced",
        "refreshFocusEvents",
        "grantFocus",
        "clearChildFocus",
        "requestOwnerFocus",
        "focusDirection",
        "Landroidx/compose/ui/focus/FocusDirection;",
        "previouslyFocusedRect",
        "Landroidx/compose/ui/geometry/Rect;",
        "requestOwnerFocus-Etdf9zw",
        "requireActiveChild",
        "performCustomRequestFocus",
        "Landroidx/compose/ui/focus/CustomDestinationResult;",
        "performCustomRequestFocus-Mxy_nc0",
        "(Landroidx/compose/ui/focus/FocusTargetNode;I)Landroidx/compose/ui/focus/CustomDestinationResult;",
        "performCustomClearFocus",
        "performCustomClearFocus-Mxy_nc0",
        "performCustomEnter",
        "performCustomEnter-Mxy_nc0",
        "performCustomExit",
        "performCustomExit-Mxy_nc0",
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
.method public static final captureFocus(Landroidx/compose/ui/focus/FocusTargetNode;)Z
    .locals 3
    .param p0, "$this$captureFocus"    # Landroidx/compose/ui/focus/FocusTargetNode;

    .line 169
    invoke-virtual {p0}, Landroidx/compose/ui/focus/FocusTargetNode;->getFocusState()Landroidx/compose/ui/focus/FocusStateImpl;

    move-result-object v0

    sget-object v1, Landroidx/compose/ui/focus/FocusTransactionsKt$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {v0}, Landroidx/compose/ui/focus/FocusStateImpl;->ordinal()I

    move-result v0

    aget v0, v1, v0

    const/4 v1, 0x1

    packed-switch v0, :pswitch_data_0

    new-instance v0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {v0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw v0

    .line 177
    :pswitch_0
    const/4 v1, 0x0

    goto :goto_0

    .line 175
    :pswitch_1
    goto :goto_0

    .line 171
    :pswitch_2
    move-object v0, p0

    check-cast v0, Landroidx/compose/ui/node/DelegatableNode;

    invoke-static {v0}, Landroidx/compose/ui/node/DelegatableNodeKt;->requireOwner(Landroidx/compose/ui/node/DelegatableNode;)Landroidx/compose/ui/node/Owner;

    move-result-object v0

    invoke-interface {v0}, Landroidx/compose/ui/node/Owner;->getFocusOwner()Landroidx/compose/ui/focus/FocusOwner;

    move-result-object v0

    invoke-interface {v0, v1}, Landroidx/compose/ui/focus/FocusOwner;->setFocusCaptured(Z)V

    .line 172
    sget-object v0, Landroidx/compose/ui/focus/FocusStateImpl;->Active:Landroidx/compose/ui/focus/FocusStateImpl;

    check-cast v0, Landroidx/compose/ui/focus/FocusState;

    sget-object v2, Landroidx/compose/ui/focus/FocusStateImpl;->Captured:Landroidx/compose/ui/focus/FocusStateImpl;

    check-cast v2, Landroidx/compose/ui/focus/FocusState;

    invoke-virtual {p0, v0, v2}, Landroidx/compose/ui/focus/FocusTargetNode;->dispatchFocusCallbacks$ui(Landroidx/compose/ui/focus/FocusState;Landroidx/compose/ui/focus/FocusState;)V

    .line 173
    nop

    .line 178
    :goto_0
    return v1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private static final clearChildFocus(Landroidx/compose/ui/focus/FocusTargetNode;ZZ)Z
    .locals 1
    .param p0, "$this$clearChildFocus"    # Landroidx/compose/ui/focus/FocusTargetNode;
    .param p1, "forced"    # Z
    .param p2, "refreshFocusEvents"    # Z

    .line 281
    invoke-static {p0}, Landroidx/compose/ui/focus/FocusTraversalKt;->getActiveChild(Landroidx/compose/ui/focus/FocusTargetNode;)Landroidx/compose/ui/focus/FocusTargetNode;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {v0, p1, p2}, Landroidx/compose/ui/focus/FocusTransactionsKt;->clearFocus(Landroidx/compose/ui/focus/FocusTargetNode;ZZ)Z

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0
.end method

.method static synthetic clearChildFocus$default(Landroidx/compose/ui/focus/FocusTargetNode;ZZILjava/lang/Object;)Z
    .locals 0

    .line 278
    and-int/lit8 p4, p3, 0x1

    if-eqz p4, :cond_0

    .line 279
    const/4 p1, 0x0

    .line 278
    :cond_0
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_1

    .line 280
    const/4 p2, 0x1

    .line 278
    :cond_1
    invoke-static {p0, p1, p2}, Landroidx/compose/ui/focus/FocusTransactionsKt;->clearChildFocus(Landroidx/compose/ui/focus/FocusTargetNode;ZZ)Z

    move-result p0

    return p0
.end method

.method public static final clearFocus(Landroidx/compose/ui/focus/FocusTargetNode;ZZ)Z
    .locals 3
    .param p0, "$this$clearFocus"    # Landroidx/compose/ui/focus/FocusTargetNode;
    .param p1, "forced"    # Z
    .param p2, "refreshFocusEvents"    # Z

    .line 210
    invoke-virtual {p0}, Landroidx/compose/ui/focus/FocusTargetNode;->getFocusState()Landroidx/compose/ui/focus/FocusStateImpl;

    move-result-object v0

    sget-object v1, Landroidx/compose/ui/focus/FocusTransactionsKt$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {v0}, Landroidx/compose/ui/focus/FocusStateImpl;->ordinal()I

    move-result v0

    aget v0, v1, v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    packed-switch v0, :pswitch_data_0

    new-instance v0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {v0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw v0

    .line 251
    :pswitch_0
    goto :goto_0

    .line 228
    :pswitch_1
    invoke-static {p0, p1, p2}, Landroidx/compose/ui/focus/FocusTransactionsKt;->clearChildFocus(Landroidx/compose/ui/focus/FocusTargetNode;ZZ)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 229
    if-eqz p2, :cond_0

    .line 230
    sget-object v0, Landroidx/compose/ui/focus/FocusStateImpl;->ActiveParent:Landroidx/compose/ui/focus/FocusStateImpl;

    check-cast v0, Landroidx/compose/ui/focus/FocusState;

    sget-object v1, Landroidx/compose/ui/focus/FocusStateImpl;->Inactive:Landroidx/compose/ui/focus/FocusStateImpl;

    check-cast v1, Landroidx/compose/ui/focus/FocusState;

    invoke-virtual {p0, v0, v1}, Landroidx/compose/ui/focus/FocusTargetNode;->dispatchFocusCallbacks$ui(Landroidx/compose/ui/focus/FocusState;Landroidx/compose/ui/focus/FocusState;)V

    .line 232
    :cond_0
    goto :goto_0

    .line 234
    :cond_1
    const/4 v2, 0x0

    goto :goto_0

    .line 239
    :pswitch_2
    if-eqz p1, :cond_2

    .line 241
    sget-boolean v0, Landroidx/compose/ui/ComposeUiFlags;->isOptimizedFocusEventDispatchEnabled:Z

    if-nez v0, :cond_2

    .line 242
    move-object v0, p0

    check-cast v0, Landroidx/compose/ui/node/DelegatableNode;

    invoke-static {v0}, Landroidx/compose/ui/node/DelegatableNodeKt;->requireOwner(Landroidx/compose/ui/node/DelegatableNode;)Landroidx/compose/ui/node/Owner;

    move-result-object v0

    invoke-interface {v0}, Landroidx/compose/ui/node/Owner;->getFocusOwner()Landroidx/compose/ui/focus/FocusOwner;

    move-result-object v0

    invoke-interface {v0, v1}, Landroidx/compose/ui/focus/FocusOwner;->setActiveFocusTargetNode(Landroidx/compose/ui/focus/FocusTargetNode;)V

    .line 243
    if-eqz p2, :cond_2

    .line 244
    sget-object v0, Landroidx/compose/ui/focus/FocusStateImpl;->Captured:Landroidx/compose/ui/focus/FocusStateImpl;

    check-cast v0, Landroidx/compose/ui/focus/FocusState;

    sget-object v1, Landroidx/compose/ui/focus/FocusStateImpl;->Inactive:Landroidx/compose/ui/focus/FocusStateImpl;

    check-cast v1, Landroidx/compose/ui/focus/FocusState;

    invoke-virtual {p0, v0, v1}, Landroidx/compose/ui/focus/FocusTargetNode;->dispatchFocusCallbacks$ui(Landroidx/compose/ui/focus/FocusState;Landroidx/compose/ui/focus/FocusState;)V

    .line 248
    :cond_2
    move v2, p1

    goto :goto_0

    .line 215
    :pswitch_3
    sget-boolean v0, Landroidx/compose/ui/ComposeUiFlags;->isOptimizedFocusEventDispatchEnabled:Z

    if-nez v0, :cond_3

    .line 216
    move-object v0, p0

    check-cast v0, Landroidx/compose/ui/node/DelegatableNode;

    invoke-static {v0}, Landroidx/compose/ui/node/DelegatableNodeKt;->requireOwner(Landroidx/compose/ui/node/DelegatableNode;)Landroidx/compose/ui/node/Owner;

    move-result-object v0

    invoke-interface {v0}, Landroidx/compose/ui/node/Owner;->getFocusOwner()Landroidx/compose/ui/focus/FocusOwner;

    move-result-object v0

    invoke-interface {v0, v1}, Landroidx/compose/ui/focus/FocusOwner;->setActiveFocusTargetNode(Landroidx/compose/ui/focus/FocusTargetNode;)V

    .line 217
    if-eqz p2, :cond_3

    .line 218
    sget-object v0, Landroidx/compose/ui/focus/FocusStateImpl;->Active:Landroidx/compose/ui/focus/FocusStateImpl;

    check-cast v0, Landroidx/compose/ui/focus/FocusState;

    sget-object v1, Landroidx/compose/ui/focus/FocusStateImpl;->Inactive:Landroidx/compose/ui/focus/FocusStateImpl;

    check-cast v1, Landroidx/compose/ui/focus/FocusState;

    invoke-virtual {p0, v0, v1}, Landroidx/compose/ui/focus/FocusTargetNode;->dispatchFocusCallbacks$ui(Landroidx/compose/ui/focus/FocusState;Landroidx/compose/ui/focus/FocusState;)V

    .line 221
    :cond_3
    nop

    .line 252
    :goto_0
    return v2

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static synthetic clearFocus$default(Landroidx/compose/ui/focus/FocusTargetNode;ZZILjava/lang/Object;)Z
    .locals 0

    .line 206
    and-int/lit8 p3, p3, 0x1

    if-eqz p3, :cond_0

    .line 207
    const/4 p1, 0x0

    .line 206
    :cond_0
    invoke-static {p0, p1, p2}, Landroidx/compose/ui/focus/FocusTransactionsKt;->clearFocus(Landroidx/compose/ui/focus/FocusTargetNode;ZZ)Z

    move-result p0

    return p0
.end method

.method public static final freeFocus(Landroidx/compose/ui/focus/FocusTargetNode;)Z
    .locals 3
    .param p0, "$this$freeFocus"    # Landroidx/compose/ui/focus/FocusTargetNode;

    .line 188
    invoke-virtual {p0}, Landroidx/compose/ui/focus/FocusTargetNode;->getFocusState()Landroidx/compose/ui/focus/FocusStateImpl;

    move-result-object v0

    sget-object v1, Landroidx/compose/ui/focus/FocusTransactionsKt$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {v0}, Landroidx/compose/ui/focus/FocusStateImpl;->ordinal()I

    move-result v0

    aget v0, v1, v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    packed-switch v0, :pswitch_data_0

    new-instance v0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {v0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw v0

    .line 196
    :pswitch_0
    goto :goto_0

    .line 190
    :pswitch_1
    move-object v0, p0

    check-cast v0, Landroidx/compose/ui/node/DelegatableNode;

    invoke-static {v0}, Landroidx/compose/ui/node/DelegatableNodeKt;->requireOwner(Landroidx/compose/ui/node/DelegatableNode;)Landroidx/compose/ui/node/Owner;

    move-result-object v0

    invoke-interface {v0}, Landroidx/compose/ui/node/Owner;->getFocusOwner()Landroidx/compose/ui/focus/FocusOwner;

    move-result-object v0

    invoke-interface {v0, v1}, Landroidx/compose/ui/focus/FocusOwner;->setFocusCaptured(Z)V

    .line 191
    sget-object v0, Landroidx/compose/ui/focus/FocusStateImpl;->Captured:Landroidx/compose/ui/focus/FocusStateImpl;

    check-cast v0, Landroidx/compose/ui/focus/FocusState;

    sget-object v1, Landroidx/compose/ui/focus/FocusStateImpl;->Active:Landroidx/compose/ui/focus/FocusStateImpl;

    check-cast v1, Landroidx/compose/ui/focus/FocusState;

    invoke-virtual {p0, v0, v1}, Landroidx/compose/ui/focus/FocusTargetNode;->dispatchFocusCallbacks$ui(Landroidx/compose/ui/focus/FocusState;Landroidx/compose/ui/focus/FocusState;)V

    .line 192
    move v1, v2

    goto :goto_0

    .line 194
    :pswitch_2
    move v1, v2

    .line 197
    :goto_0
    return v1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private static final grantFocus(Landroidx/compose/ui/focus/FocusTargetNode;)Z
    .locals 2
    .param p0, "$this$grantFocus"    # Landroidx/compose/ui/focus/FocusTargetNode;

    .line 261
    move-object v0, p0

    check-cast v0, Landroidx/compose/ui/Modifier$Node;

    new-instance v1, Landroidx/compose/ui/focus/FocusTransactionsKt$grantFocus$1;

    invoke-direct {v1, p0}, Landroidx/compose/ui/focus/FocusTransactionsKt$grantFocus$1;-><init>(Landroidx/compose/ui/focus/FocusTargetNode;)V

    check-cast v1, Lkotlin/jvm/functions/Function0;

    invoke-static {v0, v1}, Landroidx/compose/ui/node/ObserverModifierNodeKt;->observeReads(Landroidx/compose/ui/Modifier$Node;Lkotlin/jvm/functions/Function0;)V

    .line 263
    invoke-virtual {p0}, Landroidx/compose/ui/focus/FocusTargetNode;->getFocusState()Landroidx/compose/ui/focus/FocusStateImpl;

    move-result-object v0

    sget-object v1, Landroidx/compose/ui/focus/FocusTransactionsKt$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {v0}, Landroidx/compose/ui/focus/FocusStateImpl;->ordinal()I

    move-result v0

    aget v0, v1, v0

    packed-switch v0, :pswitch_data_0

    new-instance v0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {v0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw v0

    .line 266
    :pswitch_0
    move-object v0, p0

    check-cast v0, Landroidx/compose/ui/node/DelegatableNode;

    invoke-static {v0}, Landroidx/compose/ui/node/DelegatableNodeKt;->requireOwner(Landroidx/compose/ui/node/DelegatableNode;)Landroidx/compose/ui/node/Owner;

    move-result-object v0

    invoke-interface {v0}, Landroidx/compose/ui/node/Owner;->getFocusOwner()Landroidx/compose/ui/focus/FocusOwner;

    move-result-object v0

    invoke-interface {v0, p0}, Landroidx/compose/ui/focus/FocusOwner;->setActiveFocusTargetNode(Landroidx/compose/ui/focus/FocusTargetNode;)V

    goto :goto_0

    :pswitch_1
    nop

    .line 274
    :goto_0
    const/4 v0, 0x1

    return v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public static final performCustomClearFocus-Mxy_nc0(Landroidx/compose/ui/focus/FocusTargetNode;I)Landroidx/compose/ui/focus/CustomDestinationResult;
    .locals 4
    .param p0, "$this$performCustomClearFocus_u2dMxy_nc0"    # Landroidx/compose/ui/focus/FocusTargetNode;
    .param p1, "$v$c$androidx-compose-ui-focus-FocusDirection$-focusDirection$0"    # I

    .line 323
    invoke-virtual {p0}, Landroidx/compose/ui/focus/FocusTargetNode;->getFocusState()Landroidx/compose/ui/focus/FocusStateImpl;

    move-result-object v0

    sget-object v1, Landroidx/compose/ui/focus/FocusTransactionsKt$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {v0}, Landroidx/compose/ui/focus/FocusStateImpl;->ordinal()I

    move-result v0

    aget v0, v1, v0

    packed-switch v0, :pswitch_data_0

    new-instance v0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {v0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw v0

    .line 328
    :pswitch_0
    invoke-static {p0}, Landroidx/compose/ui/focus/FocusTransactionsKt;->requireActiveChild(Landroidx/compose/ui/focus/FocusTargetNode;)Landroidx/compose/ui/focus/FocusTargetNode;

    move-result-object v0

    invoke-static {v0, p1}, Landroidx/compose/ui/focus/FocusTransactionsKt;->performCustomClearFocus-Mxy_nc0(Landroidx/compose/ui/focus/FocusTargetNode;I)Landroidx/compose/ui/focus/CustomDestinationResult;

    move-result-object v0

    move-object v1, v0

    .line 512
    .local v1, "it":Landroidx/compose/ui/focus/CustomDestinationResult;
    const/4 v2, 0x0

    .line 328
    .local v2, "$i$a$-takeUnless-FocusTransactionsKt$performCustomClearFocus$1":I
    sget-object v3, Landroidx/compose/ui/focus/CustomDestinationResult;->None:Landroidx/compose/ui/focus/CustomDestinationResult;

    if-ne v1, v3, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    .end local v1    # "it":Landroidx/compose/ui/focus/CustomDestinationResult;
    .end local v2    # "$i$a$-takeUnless-FocusTransactionsKt$performCustomClearFocus$1":I
    :goto_0
    if-nez v3, :cond_1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    if-nez v0, :cond_2

    .line 329
    invoke-static {p0, p1}, Landroidx/compose/ui/focus/FocusTransactionsKt;->performCustomExit-Mxy_nc0(Landroidx/compose/ui/focus/FocusTargetNode;I)Landroidx/compose/ui/focus/CustomDestinationResult;

    move-result-object v0

    goto :goto_2

    .line 326
    :pswitch_1
    sget-object v0, Landroidx/compose/ui/focus/CustomDestinationResult;->Cancelled:Landroidx/compose/ui/focus/CustomDestinationResult;

    goto :goto_2

    .line 325
    :pswitch_2
    sget-object v0, Landroidx/compose/ui/focus/CustomDestinationResult;->None:Landroidx/compose/ui/focus/CustomDestinationResult;

    .line 330
    :cond_2
    :goto_2
    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method private static final performCustomEnter-Mxy_nc0(Landroidx/compose/ui/focus/FocusTargetNode;I)Landroidx/compose/ui/focus/CustomDestinationResult;
    .locals 16
    .param p0, "$this$performCustomEnter_u2dMxy_nc0"    # Landroidx/compose/ui/focus/FocusTargetNode;
    .param p1, "$v$c$androidx-compose-ui-focus-FocusDirection$-focusDirection$0"    # I

    .line 335
    move/from16 v0, p1

    .local v0, "$v$c$androidx-compose-ui-focus-FocusDirection$-focusDirection$0$iv":I
    move-object/from16 v1, p0

    .local v1, "this_$iv":Landroidx/compose/ui/focus/FocusTargetNode;
    move v2, v0

    .end local v0    # "$v$c$androidx-compose-ui-focus-FocusDirection$-focusDirection$0$iv":I
    .local v2, "$v$c$androidx-compose-ui-focus-FocusDirection$-focusDirection$0$iv":I
    const/4 v3, 0x0

    .line 585
    .local v3, "$i$f$fetchCustomEnter-aToIllA$ui":I
    invoke-static {v1}, Landroidx/compose/ui/focus/FocusTargetNode;->access$isProcessingCustomEnter$p(Landroidx/compose/ui/focus/FocusTargetNode;)Z

    move-result v0

    if-nez v0, :cond_8

    .line 586
    const/4 v0, 0x1

    invoke-static {v1, v0}, Landroidx/compose/ui/focus/FocusTargetNode;->access$setProcessingCustomEnter$p(Landroidx/compose/ui/focus/FocusTargetNode;Z)V

    .line 587
    nop

    .line 588
    move v4, v2

    .local v4, "$v$c$androidx-compose-ui-focus-FocusDirection$-focusDirection$0$iv$iv":I
    move-object v5, v1

    .local v5, "this_$iv$iv":Landroidx/compose/ui/focus/FocusTargetNode;
    const/4 v6, 0x0

    .line 589
    .local v6, "$i$f$fetchCustomEnterOrExit-ULY8qGw":I
    const/4 v7, 0x0

    :try_start_0
    invoke-virtual {v5}, Landroidx/compose/ui/focus/FocusTargetNode;->fetchFocusProperties$ui()Landroidx/compose/ui/focus/FocusProperties;

    move-result-object v8

    .line 590
    .local v8, "focusProperties$iv$iv":Landroidx/compose/ui/focus/FocusProperties;
    new-instance v9, Landroidx/compose/ui/focus/CancelIndicatingFocusBoundaryScope;

    const/4 v10, 0x0

    invoke-direct {v9, v4, v10}, Landroidx/compose/ui/focus/CancelIndicatingFocusBoundaryScope;-><init>(ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 591
    .local v9, "scope$iv$iv":Landroidx/compose/ui/focus/CancelIndicatingFocusBoundaryScope;
    move-object v11, v5

    check-cast v11, Landroidx/compose/ui/node/DelegatableNode;

    invoke-static {v11}, Landroidx/compose/ui/node/DelegatableNodeKt;->requireOwner(Landroidx/compose/ui/node/DelegatableNode;)Landroidx/compose/ui/node/Owner;

    move-result-object v11

    invoke-interface {v11}, Landroidx/compose/ui/node/Owner;->getFocusOwner()Landroidx/compose/ui/focus/FocusOwner;

    move-result-object v11

    .line 592
    .local v11, "focusOwner$iv$iv":Landroidx/compose/ui/focus/FocusOwner;
    invoke-interface {v11}, Landroidx/compose/ui/focus/FocusOwner;->getActiveFocusTargetNode()Landroidx/compose/ui/focus/FocusTargetNode;

    move-result-object v12

    .line 593
    .local v12, "activeNodeBefore$iv$iv":Landroidx/compose/ui/focus/FocusTargetNode;
    move-object v13, v9

    check-cast v13, Landroidx/compose/ui/focus/FocusEnterExitScope;

    move-object v14, v8

    .local v13, "it$iv":Landroidx/compose/ui/focus/FocusEnterExitScope;
    .local v14, "$this$fetchCustomEnter_aToIllA_u24lambda_u240$iv":Landroidx/compose/ui/focus/FocusProperties;
    const/4 v15, 0x0

    .line 588
    .local v15, "$i$a$-fetchCustomEnterOrExit-ULY8qGw-FocusTargetNode$fetchCustomEnter$1$iv":I
    invoke-interface {v14}, Landroidx/compose/ui/focus/FocusProperties;->getOnEnter()Lkotlin/jvm/functions/Function1;

    move-result-object v0

    invoke-interface {v0, v13}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 593
    nop

    .line 594
    .end local v13    # "it$iv":Landroidx/compose/ui/focus/FocusEnterExitScope;
    .end local v14    # "$this$fetchCustomEnter_aToIllA_u24lambda_u240$iv":Landroidx/compose/ui/focus/FocusProperties;
    .end local v15    # "$i$a$-fetchCustomEnterOrExit-ULY8qGw-FocusTargetNode$fetchCustomEnter$1$iv":I
    invoke-interface {v11}, Landroidx/compose/ui/focus/FocusOwner;->getActiveFocusTargetNode()Landroidx/compose/ui/focus/FocusTargetNode;

    move-result-object v0

    .line 595
    .local v0, "activeNodeAfter$iv$iv":Landroidx/compose/ui/focus/FocusTargetNode;
    invoke-virtual {v9}, Landroidx/compose/ui/focus/CancelIndicatingFocusBoundaryScope;->isCanceled()Z

    move-result v13

    if-eqz v13, :cond_3

    .line 596
    sget-object v13, Landroidx/compose/ui/focus/FocusRequester;->Companion:Landroidx/compose/ui/focus/FocusRequester$Companion;

    invoke-virtual {v13}, Landroidx/compose/ui/focus/FocusRequester$Companion;->getCancel()Landroidx/compose/ui/focus/FocusRequester;

    move-result-object v13

    .local v13, "it":Landroidx/compose/ui/focus/FocusRequester;
    const/4 v14, 0x0

    .line 336
    .local v14, "$i$a$-fetchCustomEnter-aToIllA$ui-FocusTransactionsKt$performCustomEnter$1":I
    sget-object v15, Landroidx/compose/ui/focus/FocusRequester;->Companion:Landroidx/compose/ui/focus/FocusRequester$Companion;

    invoke-virtual {v15}, Landroidx/compose/ui/focus/FocusRequester$Companion;->getCancel()Landroidx/compose/ui/focus/FocusRequester;

    move-result-object v15

    if-ne v13, v15, :cond_0

    :goto_0
    sget-object v10, Landroidx/compose/ui/focus/CustomDestinationResult;->Cancelled:Landroidx/compose/ui/focus/CustomDestinationResult;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 597
    .end local v0    # "activeNodeAfter$iv$iv":Landroidx/compose/ui/focus/FocusTargetNode;
    .end local v1    # "this_$iv":Landroidx/compose/ui/focus/FocusTargetNode;
    .end local v2    # "$v$c$androidx-compose-ui-focus-FocusDirection$-focusDirection$0$iv":I
    .end local v3    # "$i$f$fetchCustomEnter-aToIllA$ui":I
    .end local v4    # "$v$c$androidx-compose-ui-focus-FocusDirection$-focusDirection$0$iv$iv":I
    .end local v5    # "this_$iv$iv":Landroidx/compose/ui/focus/FocusTargetNode;
    .end local v6    # "$i$f$fetchCustomEnterOrExit-ULY8qGw":I
    .end local v8    # "focusProperties$iv$iv":Landroidx/compose/ui/focus/FocusProperties;
    .end local v9    # "scope$iv$iv":Landroidx/compose/ui/focus/CancelIndicatingFocusBoundaryScope;
    .end local v11    # "focusOwner$iv$iv":Landroidx/compose/ui/focus/FocusOwner;
    .end local v12    # "activeNodeBefore$iv$iv":Landroidx/compose/ui/focus/FocusTargetNode;
    .end local v13    # "it":Landroidx/compose/ui/focus/FocusRequester;
    .end local v14    # "$i$a$-fetchCustomEnter-aToIllA$ui-FocusTransactionsKt$performCustomEnter$1":I
    :goto_1
    nop

    :goto_2
    invoke-static {v1, v7}, Landroidx/compose/ui/focus/FocusTargetNode;->access$setProcessingCustomEnter$p(Landroidx/compose/ui/focus/FocusTargetNode;Z)V

    return-object v10

    .restart local v0    # "activeNodeAfter$iv$iv":Landroidx/compose/ui/focus/FocusTargetNode;
    .restart local v1    # "this_$iv":Landroidx/compose/ui/focus/FocusTargetNode;
    .restart local v2    # "$v$c$androidx-compose-ui-focus-FocusDirection$-focusDirection$0$iv":I
    .restart local v3    # "$i$f$fetchCustomEnter-aToIllA$ui":I
    .restart local v4    # "$v$c$androidx-compose-ui-focus-FocusDirection$-focusDirection$0$iv$iv":I
    .restart local v5    # "this_$iv$iv":Landroidx/compose/ui/focus/FocusTargetNode;
    .restart local v6    # "$i$f$fetchCustomEnterOrExit-ULY8qGw":I
    .restart local v8    # "focusProperties$iv$iv":Landroidx/compose/ui/focus/FocusProperties;
    .restart local v9    # "scope$iv$iv":Landroidx/compose/ui/focus/CancelIndicatingFocusBoundaryScope;
    .restart local v11    # "focusOwner$iv$iv":Landroidx/compose/ui/focus/FocusOwner;
    .restart local v12    # "activeNodeBefore$iv$iv":Landroidx/compose/ui/focus/FocusTargetNode;
    .restart local v13    # "it":Landroidx/compose/ui/focus/FocusRequester;
    .restart local v14    # "$i$a$-fetchCustomEnter-aToIllA$ui-FocusTransactionsKt$performCustomEnter$1":I
    :cond_0
    :try_start_1
    sget-object v15, Landroidx/compose/ui/focus/FocusRequester;->Companion:Landroidx/compose/ui/focus/FocusRequester$Companion;

    invoke-virtual {v15}, Landroidx/compose/ui/focus/FocusRequester$Companion;->getRedirect$ui()Landroidx/compose/ui/focus/FocusRequester;

    move-result-object v15

    if-ne v13, v15, :cond_1

    :goto_3
    sget-object v10, Landroidx/compose/ui/focus/CustomDestinationResult;->Redirected:Landroidx/compose/ui/focus/CustomDestinationResult;

    .end local v0    # "activeNodeAfter$iv$iv":Landroidx/compose/ui/focus/FocusTargetNode;
    .end local v1    # "this_$iv":Landroidx/compose/ui/focus/FocusTargetNode;
    .end local v2    # "$v$c$androidx-compose-ui-focus-FocusDirection$-focusDirection$0$iv":I
    .end local v3    # "$i$f$fetchCustomEnter-aToIllA$ui":I
    .end local v4    # "$v$c$androidx-compose-ui-focus-FocusDirection$-focusDirection$0$iv$iv":I
    .end local v5    # "this_$iv$iv":Landroidx/compose/ui/focus/FocusTargetNode;
    .end local v6    # "$i$f$fetchCustomEnterOrExit-ULY8qGw":I
    .end local v8    # "focusProperties$iv$iv":Landroidx/compose/ui/focus/FocusProperties;
    .end local v9    # "scope$iv$iv":Landroidx/compose/ui/focus/CancelIndicatingFocusBoundaryScope;
    .end local v11    # "focusOwner$iv$iv":Landroidx/compose/ui/focus/FocusOwner;
    .end local v12    # "activeNodeBefore$iv$iv":Landroidx/compose/ui/focus/FocusTargetNode;
    .end local v13    # "it":Landroidx/compose/ui/focus/FocusRequester;
    .end local v14    # "$i$a$-fetchCustomEnter-aToIllA$ui-FocusTransactionsKt$performCustomEnter$1":I
    goto :goto_2

    .line 337
    .restart local v0    # "activeNodeAfter$iv$iv":Landroidx/compose/ui/focus/FocusTargetNode;
    .restart local v1    # "this_$iv":Landroidx/compose/ui/focus/FocusTargetNode;
    .restart local v2    # "$v$c$androidx-compose-ui-focus-FocusDirection$-focusDirection$0$iv":I
    .restart local v3    # "$i$f$fetchCustomEnter-aToIllA$ui":I
    .restart local v4    # "$v$c$androidx-compose-ui-focus-FocusDirection$-focusDirection$0$iv$iv":I
    .restart local v5    # "this_$iv$iv":Landroidx/compose/ui/focus/FocusTargetNode;
    .restart local v6    # "$i$f$fetchCustomEnterOrExit-ULY8qGw":I
    .restart local v8    # "focusProperties$iv$iv":Landroidx/compose/ui/focus/FocusProperties;
    .restart local v9    # "scope$iv$iv":Landroidx/compose/ui/focus/CancelIndicatingFocusBoundaryScope;
    .restart local v11    # "focusOwner$iv$iv":Landroidx/compose/ui/focus/FocusOwner;
    .restart local v12    # "activeNodeBefore$iv$iv":Landroidx/compose/ui/focus/FocusTargetNode;
    .restart local v13    # "it":Landroidx/compose/ui/focus/FocusRequester;
    .restart local v14    # "$i$a$-fetchCustomEnter-aToIllA$ui-FocusTransactionsKt$performCustomEnter$1":I
    :cond_1
    const/4 v15, 0x1

    invoke-static {v13, v7, v15, v10}, Landroidx/compose/ui/focus/FocusRequester;->requestFocus-3ESFkO8$default(Landroidx/compose/ui/focus/FocusRequester;IILjava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_2

    sget-object v10, Landroidx/compose/ui/focus/CustomDestinationResult;->Redirected:Landroidx/compose/ui/focus/CustomDestinationResult;

    goto :goto_1

    :cond_2
    sget-object v10, Landroidx/compose/ui/focus/CustomDestinationResult;->RedirectCancelled:Landroidx/compose/ui/focus/CustomDestinationResult;

    goto :goto_1

    .line 598
    .end local v13    # "it":Landroidx/compose/ui/focus/FocusRequester;
    .end local v14    # "$i$a$-fetchCustomEnter-aToIllA$ui-FocusTransactionsKt$performCustomEnter$1":I
    :cond_3
    if-eq v12, v0, :cond_7

    if-eqz v0, :cond_7

    .line 599
    sget-object v13, Landroidx/compose/ui/focus/FocusRequester;->Companion:Landroidx/compose/ui/focus/FocusRequester$Companion;

    invoke-virtual {v13}, Landroidx/compose/ui/focus/FocusRequester$Companion;->getRedirect$ui()Landroidx/compose/ui/focus/FocusRequester;

    move-result-object v13

    .restart local v13    # "it":Landroidx/compose/ui/focus/FocusRequester;
    const/4 v14, 0x0

    .line 336
    .restart local v14    # "$i$a$-fetchCustomEnter-aToIllA$ui-FocusTransactionsKt$performCustomEnter$1":I
    sget-object v15, Landroidx/compose/ui/focus/FocusRequester;->Companion:Landroidx/compose/ui/focus/FocusRequester$Companion;

    invoke-virtual {v15}, Landroidx/compose/ui/focus/FocusRequester$Companion;->getCancel()Landroidx/compose/ui/focus/FocusRequester;

    move-result-object v15

    if-ne v13, v15, :cond_4

    goto :goto_0

    .line 597
    :cond_4
    sget-object v15, Landroidx/compose/ui/focus/FocusRequester;->Companion:Landroidx/compose/ui/focus/FocusRequester$Companion;

    invoke-virtual {v15}, Landroidx/compose/ui/focus/FocusRequester$Companion;->getRedirect$ui()Landroidx/compose/ui/focus/FocusRequester;

    move-result-object v15

    if-ne v13, v15, :cond_5

    goto :goto_3

    .line 337
    :cond_5
    const/4 v15, 0x1

    invoke-static {v13, v7, v15, v10}, Landroidx/compose/ui/focus/FocusRequester;->requestFocus-3ESFkO8$default(Landroidx/compose/ui/focus/FocusRequester;IILjava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_6

    sget-object v10, Landroidx/compose/ui/focus/CustomDestinationResult;->Redirected:Landroidx/compose/ui/focus/CustomDestinationResult;

    goto :goto_1

    :cond_6
    sget-object v10, Landroidx/compose/ui/focus/CustomDestinationResult;->RedirectCancelled:Landroidx/compose/ui/focus/CustomDestinationResult;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 601
    .end local v13    # "it":Landroidx/compose/ui/focus/FocusRequester;
    .end local v14    # "$i$a$-fetchCustomEnter-aToIllA$ui-FocusTransactionsKt$performCustomEnter$1":I
    :cond_7
    nop

    .line 597
    .end local v0    # "activeNodeAfter$iv$iv":Landroidx/compose/ui/focus/FocusTargetNode;
    .end local v4    # "$v$c$androidx-compose-ui-focus-FocusDirection$-focusDirection$0$iv$iv":I
    .end local v5    # "this_$iv$iv":Landroidx/compose/ui/focus/FocusTargetNode;
    .end local v6    # "$i$f$fetchCustomEnterOrExit-ULY8qGw":I
    .end local v8    # "focusProperties$iv$iv":Landroidx/compose/ui/focus/FocusProperties;
    .end local v9    # "scope$iv$iv":Landroidx/compose/ui/focus/CancelIndicatingFocusBoundaryScope;
    .end local v11    # "focusOwner$iv$iv":Landroidx/compose/ui/focus/FocusOwner;
    .end local v12    # "activeNodeBefore$iv$iv":Landroidx/compose/ui/focus/FocusTargetNode;
    invoke-static {v1, v7}, Landroidx/compose/ui/focus/FocusTargetNode;->access$setProcessingCustomEnter$p(Landroidx/compose/ui/focus/FocusTargetNode;Z)V

    .line 602
    goto :goto_4

    .line 597
    :catchall_0
    move-exception v0

    invoke-static {v1, v7}, Landroidx/compose/ui/focus/FocusTargetNode;->access$setProcessingCustomEnter$p(Landroidx/compose/ui/focus/FocusTargetNode;Z)V

    throw v0

    .line 604
    :cond_8
    :goto_4
    nop

    .line 339
    .end local v1    # "this_$iv":Landroidx/compose/ui/focus/FocusTargetNode;
    .end local v2    # "$v$c$androidx-compose-ui-focus-FocusDirection$-focusDirection$0$iv":I
    .end local v3    # "$i$f$fetchCustomEnter-aToIllA$ui":I
    sget-object v0, Landroidx/compose/ui/focus/CustomDestinationResult;->None:Landroidx/compose/ui/focus/CustomDestinationResult;

    return-object v0
.end method

.method private static final performCustomExit-Mxy_nc0(Landroidx/compose/ui/focus/FocusTargetNode;I)Landroidx/compose/ui/focus/CustomDestinationResult;
    .locals 16
    .param p0, "$this$performCustomExit_u2dMxy_nc0"    # Landroidx/compose/ui/focus/FocusTargetNode;
    .param p1, "$v$c$androidx-compose-ui-focus-FocusDirection$-focusDirection$0"    # I

    .line 345
    move/from16 v0, p1

    .local v0, "$v$c$androidx-compose-ui-focus-FocusDirection$-focusDirection$0$iv":I
    move-object/from16 v1, p0

    .local v1, "this_$iv":Landroidx/compose/ui/focus/FocusTargetNode;
    move v2, v0

    .end local v0    # "$v$c$androidx-compose-ui-focus-FocusDirection$-focusDirection$0$iv":I
    .local v2, "$v$c$androidx-compose-ui-focus-FocusDirection$-focusDirection$0$iv":I
    const/4 v3, 0x0

    .line 605
    .local v3, "$i$f$fetchCustomExit-aToIllA$ui":I
    invoke-static {v1}, Landroidx/compose/ui/focus/FocusTargetNode;->access$isProcessingCustomExit$p(Landroidx/compose/ui/focus/FocusTargetNode;)Z

    move-result v0

    if-nez v0, :cond_8

    .line 606
    const/4 v0, 0x1

    invoke-static {v1, v0}, Landroidx/compose/ui/focus/FocusTargetNode;->access$setProcessingCustomExit$p(Landroidx/compose/ui/focus/FocusTargetNode;Z)V

    .line 607
    nop

    .line 608
    move v4, v2

    .local v4, "$v$c$androidx-compose-ui-focus-FocusDirection$-focusDirection$0$iv$iv":I
    move-object v5, v1

    .local v5, "this_$iv$iv":Landroidx/compose/ui/focus/FocusTargetNode;
    const/4 v6, 0x0

    .line 609
    .local v6, "$i$f$fetchCustomEnterOrExit-ULY8qGw":I
    const/4 v7, 0x0

    :try_start_0
    invoke-virtual {v5}, Landroidx/compose/ui/focus/FocusTargetNode;->fetchFocusProperties$ui()Landroidx/compose/ui/focus/FocusProperties;

    move-result-object v8

    .line 610
    .local v8, "focusProperties$iv$iv":Landroidx/compose/ui/focus/FocusProperties;
    new-instance v9, Landroidx/compose/ui/focus/CancelIndicatingFocusBoundaryScope;

    const/4 v10, 0x0

    invoke-direct {v9, v4, v10}, Landroidx/compose/ui/focus/CancelIndicatingFocusBoundaryScope;-><init>(ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 611
    .local v9, "scope$iv$iv":Landroidx/compose/ui/focus/CancelIndicatingFocusBoundaryScope;
    move-object v11, v5

    check-cast v11, Landroidx/compose/ui/node/DelegatableNode;

    invoke-static {v11}, Landroidx/compose/ui/node/DelegatableNodeKt;->requireOwner(Landroidx/compose/ui/node/DelegatableNode;)Landroidx/compose/ui/node/Owner;

    move-result-object v11

    invoke-interface {v11}, Landroidx/compose/ui/node/Owner;->getFocusOwner()Landroidx/compose/ui/focus/FocusOwner;

    move-result-object v11

    .line 612
    .local v11, "focusOwner$iv$iv":Landroidx/compose/ui/focus/FocusOwner;
    invoke-interface {v11}, Landroidx/compose/ui/focus/FocusOwner;->getActiveFocusTargetNode()Landroidx/compose/ui/focus/FocusTargetNode;

    move-result-object v12

    .line 613
    .local v12, "activeNodeBefore$iv$iv":Landroidx/compose/ui/focus/FocusTargetNode;
    move-object v13, v9

    check-cast v13, Landroidx/compose/ui/focus/FocusEnterExitScope;

    move-object v14, v8

    .local v13, "it$iv":Landroidx/compose/ui/focus/FocusEnterExitScope;
    .local v14, "$this$fetchCustomExit_aToIllA_u24lambda_u240$iv":Landroidx/compose/ui/focus/FocusProperties;
    const/4 v15, 0x0

    .line 608
    .local v15, "$i$a$-fetchCustomEnterOrExit-ULY8qGw-FocusTargetNode$fetchCustomExit$1$iv":I
    invoke-interface {v14}, Landroidx/compose/ui/focus/FocusProperties;->getOnExit()Lkotlin/jvm/functions/Function1;

    move-result-object v0

    invoke-interface {v0, v13}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 613
    nop

    .line 614
    .end local v13    # "it$iv":Landroidx/compose/ui/focus/FocusEnterExitScope;
    .end local v14    # "$this$fetchCustomExit_aToIllA_u24lambda_u240$iv":Landroidx/compose/ui/focus/FocusProperties;
    .end local v15    # "$i$a$-fetchCustomEnterOrExit-ULY8qGw-FocusTargetNode$fetchCustomExit$1$iv":I
    invoke-interface {v11}, Landroidx/compose/ui/focus/FocusOwner;->getActiveFocusTargetNode()Landroidx/compose/ui/focus/FocusTargetNode;

    move-result-object v0

    .line 615
    .local v0, "activeNodeAfter$iv$iv":Landroidx/compose/ui/focus/FocusTargetNode;
    invoke-virtual {v9}, Landroidx/compose/ui/focus/CancelIndicatingFocusBoundaryScope;->isCanceled()Z

    move-result v13

    if-eqz v13, :cond_3

    .line 616
    sget-object v13, Landroidx/compose/ui/focus/FocusRequester;->Companion:Landroidx/compose/ui/focus/FocusRequester$Companion;

    invoke-virtual {v13}, Landroidx/compose/ui/focus/FocusRequester$Companion;->getCancel()Landroidx/compose/ui/focus/FocusRequester;

    move-result-object v13

    .local v13, "it":Landroidx/compose/ui/focus/FocusRequester;
    const/4 v14, 0x0

    .line 346
    .local v14, "$i$a$-fetchCustomExit-aToIllA$ui-FocusTransactionsKt$performCustomExit$1":I
    sget-object v15, Landroidx/compose/ui/focus/FocusRequester;->Companion:Landroidx/compose/ui/focus/FocusRequester$Companion;

    invoke-virtual {v15}, Landroidx/compose/ui/focus/FocusRequester$Companion;->getCancel()Landroidx/compose/ui/focus/FocusRequester;

    move-result-object v15

    if-ne v13, v15, :cond_0

    :goto_0
    sget-object v10, Landroidx/compose/ui/focus/CustomDestinationResult;->Cancelled:Landroidx/compose/ui/focus/CustomDestinationResult;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 617
    .end local v0    # "activeNodeAfter$iv$iv":Landroidx/compose/ui/focus/FocusTargetNode;
    .end local v1    # "this_$iv":Landroidx/compose/ui/focus/FocusTargetNode;
    .end local v2    # "$v$c$androidx-compose-ui-focus-FocusDirection$-focusDirection$0$iv":I
    .end local v3    # "$i$f$fetchCustomExit-aToIllA$ui":I
    .end local v4    # "$v$c$androidx-compose-ui-focus-FocusDirection$-focusDirection$0$iv$iv":I
    .end local v5    # "this_$iv$iv":Landroidx/compose/ui/focus/FocusTargetNode;
    .end local v6    # "$i$f$fetchCustomEnterOrExit-ULY8qGw":I
    .end local v8    # "focusProperties$iv$iv":Landroidx/compose/ui/focus/FocusProperties;
    .end local v9    # "scope$iv$iv":Landroidx/compose/ui/focus/CancelIndicatingFocusBoundaryScope;
    .end local v11    # "focusOwner$iv$iv":Landroidx/compose/ui/focus/FocusOwner;
    .end local v12    # "activeNodeBefore$iv$iv":Landroidx/compose/ui/focus/FocusTargetNode;
    .end local v13    # "it":Landroidx/compose/ui/focus/FocusRequester;
    .end local v14    # "$i$a$-fetchCustomExit-aToIllA$ui-FocusTransactionsKt$performCustomExit$1":I
    :goto_1
    nop

    :goto_2
    invoke-static {v1, v7}, Landroidx/compose/ui/focus/FocusTargetNode;->access$setProcessingCustomExit$p(Landroidx/compose/ui/focus/FocusTargetNode;Z)V

    return-object v10

    .restart local v0    # "activeNodeAfter$iv$iv":Landroidx/compose/ui/focus/FocusTargetNode;
    .restart local v1    # "this_$iv":Landroidx/compose/ui/focus/FocusTargetNode;
    .restart local v2    # "$v$c$androidx-compose-ui-focus-FocusDirection$-focusDirection$0$iv":I
    .restart local v3    # "$i$f$fetchCustomExit-aToIllA$ui":I
    .restart local v4    # "$v$c$androidx-compose-ui-focus-FocusDirection$-focusDirection$0$iv$iv":I
    .restart local v5    # "this_$iv$iv":Landroidx/compose/ui/focus/FocusTargetNode;
    .restart local v6    # "$i$f$fetchCustomEnterOrExit-ULY8qGw":I
    .restart local v8    # "focusProperties$iv$iv":Landroidx/compose/ui/focus/FocusProperties;
    .restart local v9    # "scope$iv$iv":Landroidx/compose/ui/focus/CancelIndicatingFocusBoundaryScope;
    .restart local v11    # "focusOwner$iv$iv":Landroidx/compose/ui/focus/FocusOwner;
    .restart local v12    # "activeNodeBefore$iv$iv":Landroidx/compose/ui/focus/FocusTargetNode;
    .restart local v13    # "it":Landroidx/compose/ui/focus/FocusRequester;
    .restart local v14    # "$i$a$-fetchCustomExit-aToIllA$ui-FocusTransactionsKt$performCustomExit$1":I
    :cond_0
    :try_start_1
    sget-object v15, Landroidx/compose/ui/focus/FocusRequester;->Companion:Landroidx/compose/ui/focus/FocusRequester$Companion;

    invoke-virtual {v15}, Landroidx/compose/ui/focus/FocusRequester$Companion;->getRedirect$ui()Landroidx/compose/ui/focus/FocusRequester;

    move-result-object v15

    if-ne v13, v15, :cond_1

    :goto_3
    sget-object v10, Landroidx/compose/ui/focus/CustomDestinationResult;->Redirected:Landroidx/compose/ui/focus/CustomDestinationResult;

    .end local v0    # "activeNodeAfter$iv$iv":Landroidx/compose/ui/focus/FocusTargetNode;
    .end local v1    # "this_$iv":Landroidx/compose/ui/focus/FocusTargetNode;
    .end local v2    # "$v$c$androidx-compose-ui-focus-FocusDirection$-focusDirection$0$iv":I
    .end local v3    # "$i$f$fetchCustomExit-aToIllA$ui":I
    .end local v4    # "$v$c$androidx-compose-ui-focus-FocusDirection$-focusDirection$0$iv$iv":I
    .end local v5    # "this_$iv$iv":Landroidx/compose/ui/focus/FocusTargetNode;
    .end local v6    # "$i$f$fetchCustomEnterOrExit-ULY8qGw":I
    .end local v8    # "focusProperties$iv$iv":Landroidx/compose/ui/focus/FocusProperties;
    .end local v9    # "scope$iv$iv":Landroidx/compose/ui/focus/CancelIndicatingFocusBoundaryScope;
    .end local v11    # "focusOwner$iv$iv":Landroidx/compose/ui/focus/FocusOwner;
    .end local v12    # "activeNodeBefore$iv$iv":Landroidx/compose/ui/focus/FocusTargetNode;
    .end local v13    # "it":Landroidx/compose/ui/focus/FocusRequester;
    .end local v14    # "$i$a$-fetchCustomExit-aToIllA$ui-FocusTransactionsKt$performCustomExit$1":I
    goto :goto_2

    .line 347
    .restart local v0    # "activeNodeAfter$iv$iv":Landroidx/compose/ui/focus/FocusTargetNode;
    .restart local v1    # "this_$iv":Landroidx/compose/ui/focus/FocusTargetNode;
    .restart local v2    # "$v$c$androidx-compose-ui-focus-FocusDirection$-focusDirection$0$iv":I
    .restart local v3    # "$i$f$fetchCustomExit-aToIllA$ui":I
    .restart local v4    # "$v$c$androidx-compose-ui-focus-FocusDirection$-focusDirection$0$iv$iv":I
    .restart local v5    # "this_$iv$iv":Landroidx/compose/ui/focus/FocusTargetNode;
    .restart local v6    # "$i$f$fetchCustomEnterOrExit-ULY8qGw":I
    .restart local v8    # "focusProperties$iv$iv":Landroidx/compose/ui/focus/FocusProperties;
    .restart local v9    # "scope$iv$iv":Landroidx/compose/ui/focus/CancelIndicatingFocusBoundaryScope;
    .restart local v11    # "focusOwner$iv$iv":Landroidx/compose/ui/focus/FocusOwner;
    .restart local v12    # "activeNodeBefore$iv$iv":Landroidx/compose/ui/focus/FocusTargetNode;
    .restart local v13    # "it":Landroidx/compose/ui/focus/FocusRequester;
    .restart local v14    # "$i$a$-fetchCustomExit-aToIllA$ui-FocusTransactionsKt$performCustomExit$1":I
    :cond_1
    const/4 v15, 0x1

    invoke-static {v13, v7, v15, v10}, Landroidx/compose/ui/focus/FocusRequester;->requestFocus-3ESFkO8$default(Landroidx/compose/ui/focus/FocusRequester;IILjava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_2

    sget-object v10, Landroidx/compose/ui/focus/CustomDestinationResult;->Redirected:Landroidx/compose/ui/focus/CustomDestinationResult;

    goto :goto_1

    :cond_2
    sget-object v10, Landroidx/compose/ui/focus/CustomDestinationResult;->RedirectCancelled:Landroidx/compose/ui/focus/CustomDestinationResult;

    goto :goto_1

    .line 618
    .end local v13    # "it":Landroidx/compose/ui/focus/FocusRequester;
    .end local v14    # "$i$a$-fetchCustomExit-aToIllA$ui-FocusTransactionsKt$performCustomExit$1":I
    :cond_3
    if-eq v12, v0, :cond_7

    if-eqz v0, :cond_7

    .line 619
    sget-object v13, Landroidx/compose/ui/focus/FocusRequester;->Companion:Landroidx/compose/ui/focus/FocusRequester$Companion;

    invoke-virtual {v13}, Landroidx/compose/ui/focus/FocusRequester$Companion;->getRedirect$ui()Landroidx/compose/ui/focus/FocusRequester;

    move-result-object v13

    .restart local v13    # "it":Landroidx/compose/ui/focus/FocusRequester;
    const/4 v14, 0x0

    .line 346
    .restart local v14    # "$i$a$-fetchCustomExit-aToIllA$ui-FocusTransactionsKt$performCustomExit$1":I
    sget-object v15, Landroidx/compose/ui/focus/FocusRequester;->Companion:Landroidx/compose/ui/focus/FocusRequester$Companion;

    invoke-virtual {v15}, Landroidx/compose/ui/focus/FocusRequester$Companion;->getCancel()Landroidx/compose/ui/focus/FocusRequester;

    move-result-object v15

    if-ne v13, v15, :cond_4

    goto :goto_0

    .line 617
    :cond_4
    sget-object v15, Landroidx/compose/ui/focus/FocusRequester;->Companion:Landroidx/compose/ui/focus/FocusRequester$Companion;

    invoke-virtual {v15}, Landroidx/compose/ui/focus/FocusRequester$Companion;->getRedirect$ui()Landroidx/compose/ui/focus/FocusRequester;

    move-result-object v15

    if-ne v13, v15, :cond_5

    goto :goto_3

    .line 347
    :cond_5
    const/4 v15, 0x1

    invoke-static {v13, v7, v15, v10}, Landroidx/compose/ui/focus/FocusRequester;->requestFocus-3ESFkO8$default(Landroidx/compose/ui/focus/FocusRequester;IILjava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_6

    sget-object v10, Landroidx/compose/ui/focus/CustomDestinationResult;->Redirected:Landroidx/compose/ui/focus/CustomDestinationResult;

    goto :goto_1

    :cond_6
    sget-object v10, Landroidx/compose/ui/focus/CustomDestinationResult;->RedirectCancelled:Landroidx/compose/ui/focus/CustomDestinationResult;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 621
    .end local v13    # "it":Landroidx/compose/ui/focus/FocusRequester;
    .end local v14    # "$i$a$-fetchCustomExit-aToIllA$ui-FocusTransactionsKt$performCustomExit$1":I
    :cond_7
    nop

    .line 617
    .end local v0    # "activeNodeAfter$iv$iv":Landroidx/compose/ui/focus/FocusTargetNode;
    .end local v4    # "$v$c$androidx-compose-ui-focus-FocusDirection$-focusDirection$0$iv$iv":I
    .end local v5    # "this_$iv$iv":Landroidx/compose/ui/focus/FocusTargetNode;
    .end local v6    # "$i$f$fetchCustomEnterOrExit-ULY8qGw":I
    .end local v8    # "focusProperties$iv$iv":Landroidx/compose/ui/focus/FocusProperties;
    .end local v9    # "scope$iv$iv":Landroidx/compose/ui/focus/CancelIndicatingFocusBoundaryScope;
    .end local v11    # "focusOwner$iv$iv":Landroidx/compose/ui/focus/FocusOwner;
    .end local v12    # "activeNodeBefore$iv$iv":Landroidx/compose/ui/focus/FocusTargetNode;
    invoke-static {v1, v7}, Landroidx/compose/ui/focus/FocusTargetNode;->access$setProcessingCustomExit$p(Landroidx/compose/ui/focus/FocusTargetNode;Z)V

    .line 622
    goto :goto_4

    .line 617
    :catchall_0
    move-exception v0

    invoke-static {v1, v7}, Landroidx/compose/ui/focus/FocusTargetNode;->access$setProcessingCustomExit$p(Landroidx/compose/ui/focus/FocusTargetNode;Z)V

    throw v0

    .line 624
    :cond_8
    :goto_4
    nop

    .line 349
    .end local v1    # "this_$iv":Landroidx/compose/ui/focus/FocusTargetNode;
    .end local v2    # "$v$c$androidx-compose-ui-focus-FocusDirection$-focusDirection$0$iv":I
    .end local v3    # "$i$f$fetchCustomExit-aToIllA$ui":I
    sget-object v0, Landroidx/compose/ui/focus/CustomDestinationResult;->None:Landroidx/compose/ui/focus/CustomDestinationResult;

    return-object v0
.end method

.method public static final performCustomRequestFocus-Mxy_nc0(Landroidx/compose/ui/focus/FocusTargetNode;I)Landroidx/compose/ui/focus/CustomDestinationResult;
    .locals 36
    .param p0, "$this$performCustomRequestFocus_u2dMxy_nc0"    # Landroidx/compose/ui/focus/FocusTargetNode;
    .param p1, "$v$c$androidx-compose-ui-focus-FocusDirection$-focusDirection$0"    # I

    .line 302
    move/from16 v0, p1

    invoke-virtual/range {p0 .. p0}, Landroidx/compose/ui/focus/FocusTargetNode;->getFocusState()Landroidx/compose/ui/focus/FocusStateImpl;

    move-result-object v1

    sget-object v2, Landroidx/compose/ui/focus/FocusTransactionsKt$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {v1}, Landroidx/compose/ui/focus/FocusStateImpl;->ordinal()I

    move-result v1

    aget v1, v2, v1

    packed-switch v1, :pswitch_data_0

    new-instance v1, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {v1}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw v1

    .line 307
    :pswitch_0
    move-object/from16 v1, p0

    check-cast v1, Landroidx/compose/ui/node/DelegatableNode;

    const/4 v2, 0x0

    .line 513
    .local v2, "$i$f$getFocusTarget-OLwlOKw":I
    const/16 v3, 0x400

    invoke-static {v3}, Landroidx/compose/ui/node/NodeKind;->constructor-impl(I)I

    move-result v2

    .line 307
    .end local v2    # "$i$f$getFocusTarget-OLwlOKw":I
    nop

    .local v1, "$this$nearestAncestor_u2d64DMado$iv":Landroidx/compose/ui/node/DelegatableNode;
    .local v2, "$v$c$androidx-compose-ui-node-NodeKind$-type$0$iv":I
    const/4 v3, 0x0

    .line 514
    .local v3, "$i$f$nearestAncestor-64DMado":I
    move v4, v2

    .local v4, "$v$c$androidx-compose-ui-node-NodeKind$-type$0$iv$iv":I
    move-object v5, v1

    .line 515
    .local v5, "$this$visitAncestors_u2dY_u2dYKmho_u24default$iv$iv":Landroidx/compose/ui/node/DelegatableNode;
    nop

    .line 517
    const/4 v6, 0x0

    .line 515
    .local v6, "includeSelf$iv$iv":Z
    const/4 v7, 0x0

    .line 519
    .local v7, "$i$f$visitAncestors-Y-YKmho":I
    move v8, v6

    .local v8, "includeSelf$iv$iv$iv":Z
    move v9, v4

    .local v9, "mask$iv$iv$iv":I
    move-object v10, v5

    .local v10, "$this$visitAncestors$iv$iv$iv":Landroidx/compose/ui/node/DelegatableNode;
    const/4 v11, 0x0

    .line 520
    .local v11, "$i$f$visitAncestors":I
    invoke-interface {v10}, Landroidx/compose/ui/node/DelegatableNode;->getNode()Landroidx/compose/ui/Modifier$Node;

    move-result-object v12

    invoke-virtual {v12}, Landroidx/compose/ui/Modifier$Node;->isAttached()Z

    move-result v12

    .local v12, "value$iv$iv$iv$iv":Z
    const/4 v13, 0x0

    .line 521
    .local v13, "$i$f$checkPrecondition":I
    if-nez v12, :cond_0

    .line 522
    const/4 v14, 0x0

    .line 520
    .local v14, "$i$a$-checkPrecondition-DelegatableNodeKt$visitAncestors$1$iv$iv$iv":I
    nop

    .line 522
    .end local v14    # "$i$a$-checkPrecondition-DelegatableNodeKt$visitAncestors$1$iv$iv$iv":I
    const-string/jumbo v14, "visitAncestors called on an unattached node"

    invoke-static {v14}, Landroidx/compose/ui/internal/InlineClassHelperKt;->throwIllegalStateException(Ljava/lang/String;)V

    .line 524
    :cond_0
    nop

    .line 525
    .end local v12    # "value$iv$iv$iv$iv":Z
    .end local v13    # "$i$f$checkPrecondition":I
    invoke-interface {v10}, Landroidx/compose/ui/node/DelegatableNode;->getNode()Landroidx/compose/ui/Modifier$Node;

    move-result-object v12

    invoke-virtual {v12}, Landroidx/compose/ui/Modifier$Node;->getParent$ui()Landroidx/compose/ui/Modifier$Node;

    move-result-object v12

    .line 526
    .local v12, "node$iv$iv$iv":Landroidx/compose/ui/Modifier$Node;
    invoke-static {v10}, Landroidx/compose/ui/node/DelegatableNodeKt;->requireLayoutNode(Landroidx/compose/ui/node/DelegatableNode;)Landroidx/compose/ui/node/LayoutNode;

    move-result-object v13

    .line 527
    .local v13, "layout$iv$iv$iv":Landroidx/compose/ui/node/LayoutNode;
    :goto_0
    if-eqz v13, :cond_12

    .line 528
    invoke-virtual {v13}, Landroidx/compose/ui/node/LayoutNode;->getNodes$ui()Landroidx/compose/ui/node/NodeChain;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroidx/compose/ui/node/NodeChain;->getHead$ui()Landroidx/compose/ui/Modifier$Node;

    move-result-object v17

    .line 529
    .local v17, "head$iv$iv$iv":Landroidx/compose/ui/Modifier$Node;
    invoke-virtual/range {v17 .. v17}, Landroidx/compose/ui/Modifier$Node;->getAggregateChildKindSet$ui()I

    move-result v18

    and-int v18, v18, v9

    if-eqz v18, :cond_10

    .line 530
    :goto_1
    if-eqz v12, :cond_f

    .line 531
    invoke-virtual {v12}, Landroidx/compose/ui/Modifier$Node;->getKindSet$ui()I

    move-result v18

    and-int v18, v18, v9

    if-eqz v18, :cond_e

    .line 532
    move-object/from16 v18, v12

    .local v18, "it$iv$iv":Landroidx/compose/ui/Modifier$Node;
    const/16 v19, 0x0

    .line 519
    .local v19, "$i$a$-visitAncestors-DelegatableNodeKt$visitAncestors$2$iv$iv":I
    move/from16 v20, v4

    .local v20, "$v$c$androidx-compose-ui-node-NodeKind$-kind$0$iv$iv$iv":I
    move-object/from16 v21, v18

    .local v21, "$this$dispatchForKind_u2d6rFNWt0$iv$iv$iv":Landroidx/compose/ui/Modifier$Node;
    const/16 v22, 0x0

    .line 533
    .local v22, "$i$f$dispatchForKind-6rFNWt0":I
    const/16 v23, 0x0

    .line 534
    .local v23, "stack$iv$iv$iv":Ljava/lang/Object;
    const/16 v24, 0x0

    .local v24, "node$iv$iv$iv":Ljava/lang/Object;
    move-object/from16 v24, v21

    move-object/from16 v15, v24

    .line 535
    .end local v24    # "node$iv$iv$iv":Ljava/lang/Object;
    .local v15, "node$iv$iv$iv":Ljava/lang/Object;
    :goto_2
    if-eqz v15, :cond_d

    .line 536
    instance-of v14, v15, Landroidx/compose/ui/focus/FocusTargetNode;

    if-eqz v14, :cond_1

    .line 537
    move-object v14, v15

    .local v14, "it$iv":Ljava/lang/Object;
    const/16 v25, 0x0

    .line 538
    .local v25, "$i$a$-visitAncestors-Y-YKmho$default-DelegatableNodeKt$nearestAncestor$2$iv":I
    const/4 v1, 0x1

    goto/16 :goto_c

    .line 539
    .end local v14    # "it$iv":Ljava/lang/Object;
    .end local v25    # "$i$a$-visitAncestors-Y-YKmho$default-DelegatableNodeKt$nearestAncestor$2$iv":I
    :cond_1
    move/from16 v14, v20

    .local v14, "$v$c$androidx-compose-ui-node-NodeKind$-kind$0$iv$iv$iv$iv":I
    move-object/from16 v25, v15

    .local v25, "this_$iv$iv$iv$iv":Landroidx/compose/ui/Modifier$Node;
    const/16 v26, 0x0

    .line 540
    .local v26, "$i$f$isKind-H91voCI$ui":I
    invoke-virtual/range {v25 .. v25}, Landroidx/compose/ui/Modifier$Node;->getKindSet$ui()I

    move-result v27

    and-int v27, v27, v14

    if-eqz v27, :cond_2

    const/4 v14, 0x1

    goto :goto_3

    :cond_2
    const/4 v14, 0x0

    .line 539
    .end local v14    # "$v$c$androidx-compose-ui-node-NodeKind$-kind$0$iv$iv$iv$iv":I
    .end local v25    # "this_$iv$iv$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .end local v26    # "$i$f$isKind-H91voCI$ui":I
    :goto_3
    if-eqz v14, :cond_b

    instance-of v14, v15, Landroidx/compose/ui/node/DelegatingNode;

    if-eqz v14, :cond_b

    .line 541
    const/4 v14, 0x0

    .line 542
    .local v14, "count$iv$iv$iv":I
    move-object/from16 v25, v15

    check-cast v25, Landroidx/compose/ui/node/DelegatingNode;

    .local v25, "this_$iv$iv$iv$iv":Landroidx/compose/ui/node/DelegatingNode;
    const/16 v26, 0x0

    .line 543
    .local v26, "$i$f$forEachImmediateDelegate$ui":I
    invoke-virtual/range {v25 .. v25}, Landroidx/compose/ui/node/DelegatingNode;->getDelegate$ui()Landroidx/compose/ui/Modifier$Node;

    move-result-object v27

    .line 544
    .local v27, "node$iv$iv$iv$iv":Landroidx/compose/ui/Modifier$Node;
    :goto_4
    if-eqz v27, :cond_a

    .line 545
    move-object/from16 v28, v27

    .local v28, "next$iv$iv$iv":Landroidx/compose/ui/Modifier$Node;
    const/16 v29, 0x0

    .line 546
    .local v29, "$i$a$-forEachImmediateDelegate$ui-DelegatableNodeKt$dispatchForKind$1$iv$iv$iv":I
    move/from16 v30, v20

    .local v30, "$v$c$androidx-compose-ui-node-NodeKind$-kind$0$iv$iv$iv$iv":I
    move-object/from16 v31, v28

    .local v31, "this_$iv$iv$iv$iv":Landroidx/compose/ui/Modifier$Node;
    const/16 v32, 0x0

    .line 540
    .local v32, "$i$f$isKind-H91voCI$ui":I
    invoke-virtual/range {v31 .. v31}, Landroidx/compose/ui/Modifier$Node;->getKindSet$ui()I

    move-result v33

    and-int v33, v33, v30

    if-eqz v33, :cond_3

    const/16 v30, 0x1

    goto :goto_5

    :cond_3
    const/16 v30, 0x0

    .line 546
    .end local v30    # "$v$c$androidx-compose-ui-node-NodeKind$-kind$0$iv$iv$iv$iv":I
    .end local v31    # "this_$iv$iv$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .end local v32    # "$i$f$isKind-H91voCI$ui":I
    :goto_5
    if-eqz v30, :cond_9

    .line 547
    add-int/lit8 v14, v14, 0x1

    .line 548
    move-object/from16 v30, v1

    const/4 v1, 0x1

    .end local v1    # "$this$nearestAncestor_u2d64DMado$iv":Landroidx/compose/ui/node/DelegatableNode;
    .local v30, "$this$nearestAncestor_u2d64DMado$iv":Landroidx/compose/ui/node/DelegatableNode;
    if-ne v14, v1, :cond_4

    .line 549
    move-object/from16 v15, v28

    move/from16 v33, v2

    move/from16 v34, v3

    move-object/from16 v1, v28

    goto :goto_8

    .line 553
    :cond_4
    if-nez v23, :cond_5

    const/4 v1, 0x0

    .line 554
    .local v1, "$i$f$mutableVectorOf":I
    nop

    .line 555
    move/from16 v31, v1

    .end local v1    # "$i$f$mutableVectorOf":I
    .local v31, "$i$f$mutableVectorOf":I
    const/16 v1, 0x10

    .local v1, "capacity$iv$iv$iv$iv$iv":I
    const/16 v32, 0x0

    .line 556
    .local v32, "$i$f$MutableVector":I
    move/from16 v33, v2

    .end local v2    # "$v$c$androidx-compose-ui-node-NodeKind$-type$0$iv":I
    .local v33, "$v$c$androidx-compose-ui-node-NodeKind$-type$0$iv":I
    new-instance v2, Landroidx/compose/runtime/collection/MutableVector;

    move/from16 v34, v3

    .end local v3    # "$i$f$nearestAncestor-64DMado":I
    .local v34, "$i$f$nearestAncestor-64DMado":I
    new-array v3, v1, [Landroidx/compose/ui/Modifier$Node;

    move/from16 v35, v1

    const/4 v1, 0x0

    .end local v1    # "capacity$iv$iv$iv$iv$iv":I
    .local v35, "capacity$iv$iv$iv$iv$iv":I
    invoke-direct {v2, v3, v1}, Landroidx/compose/runtime/collection/MutableVector;-><init>([Ljava/lang/Object;I)V

    .line 554
    .end local v32    # "$i$f$MutableVector":I
    .end local v35    # "capacity$iv$iv$iv$iv$iv":I
    goto :goto_6

    .line 553
    .end local v31    # "$i$f$mutableVectorOf":I
    .end local v33    # "$v$c$androidx-compose-ui-node-NodeKind$-type$0$iv":I
    .end local v34    # "$i$f$nearestAncestor-64DMado":I
    .restart local v2    # "$v$c$androidx-compose-ui-node-NodeKind$-type$0$iv":I
    .restart local v3    # "$i$f$nearestAncestor-64DMado":I
    :cond_5
    move/from16 v33, v2

    move/from16 v34, v3

    const/4 v1, 0x0

    .end local v2    # "$v$c$androidx-compose-ui-node-NodeKind$-type$0$iv":I
    .end local v3    # "$i$f$nearestAncestor-64DMado":I
    .restart local v33    # "$v$c$androidx-compose-ui-node-NodeKind$-type$0$iv":I
    .restart local v34    # "$i$f$nearestAncestor-64DMado":I
    move-object/from16 v2, v23

    :goto_6
    nop

    .line 557
    .end local v23    # "stack$iv$iv$iv":Ljava/lang/Object;
    .local v2, "stack$iv$iv$iv":Ljava/lang/Object;
    move-object v3, v15

    .line 558
    .local v3, "theNode$iv$iv$iv":Landroidx/compose/ui/Modifier$Node;
    if-eqz v3, :cond_7

    .line 559
    if-eqz v2, :cond_6

    invoke-virtual {v2, v3}, Landroidx/compose/runtime/collection/MutableVector;->add(Ljava/lang/Object;)Z

    .line 560
    :cond_6
    const/4 v15, 0x0

    .line 562
    :cond_7
    if-eqz v2, :cond_8

    move-object/from16 v1, v28

    .end local v28    # "next$iv$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .local v1, "next$iv$iv$iv":Landroidx/compose/ui/Modifier$Node;
    invoke-virtual {v2, v1}, Landroidx/compose/runtime/collection/MutableVector;->add(Ljava/lang/Object;)Z

    goto :goto_7

    .end local v1    # "next$iv$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .restart local v28    # "next$iv$iv$iv":Landroidx/compose/ui/Modifier$Node;
    :cond_8
    move-object/from16 v1, v28

    .line 565
    .end local v3    # "theNode$iv$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .end local v28    # "next$iv$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .restart local v1    # "next$iv$iv$iv":Landroidx/compose/ui/Modifier$Node;
    :goto_7
    move-object/from16 v23, v2

    goto :goto_8

    .line 546
    .end local v30    # "$this$nearestAncestor_u2d64DMado$iv":Landroidx/compose/ui/node/DelegatableNode;
    .end local v33    # "$v$c$androidx-compose-ui-node-NodeKind$-type$0$iv":I
    .end local v34    # "$i$f$nearestAncestor-64DMado":I
    .local v1, "$this$nearestAncestor_u2d64DMado$iv":Landroidx/compose/ui/node/DelegatableNode;
    .local v2, "$v$c$androidx-compose-ui-node-NodeKind$-type$0$iv":I
    .local v3, "$i$f$nearestAncestor-64DMado":I
    .restart local v23    # "stack$iv$iv$iv":Ljava/lang/Object;
    .restart local v28    # "next$iv$iv$iv":Landroidx/compose/ui/Modifier$Node;
    :cond_9
    move-object/from16 v30, v1

    move/from16 v33, v2

    move/from16 v34, v3

    move-object/from16 v1, v28

    .line 565
    .end local v2    # "$v$c$androidx-compose-ui-node-NodeKind$-type$0$iv":I
    .end local v3    # "$i$f$nearestAncestor-64DMado":I
    .end local v28    # "next$iv$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .local v1, "next$iv$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .restart local v30    # "$this$nearestAncestor_u2d64DMado$iv":Landroidx/compose/ui/node/DelegatableNode;
    .restart local v33    # "$v$c$androidx-compose-ui-node-NodeKind$-type$0$iv":I
    .restart local v34    # "$i$f$nearestAncestor-64DMado":I
    :goto_8
    nop

    .line 545
    .end local v1    # "next$iv$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .end local v29    # "$i$a$-forEachImmediateDelegate$ui-DelegatableNodeKt$dispatchForKind$1$iv$iv$iv":I
    nop

    .line 566
    invoke-virtual/range {v27 .. v27}, Landroidx/compose/ui/Modifier$Node;->getChild$ui()Landroidx/compose/ui/Modifier$Node;

    move-result-object v27

    move-object/from16 v1, v30

    move/from16 v2, v33

    move/from16 v3, v34

    goto :goto_4

    .line 568
    .end local v30    # "$this$nearestAncestor_u2d64DMado$iv":Landroidx/compose/ui/node/DelegatableNode;
    .end local v33    # "$v$c$androidx-compose-ui-node-NodeKind$-type$0$iv":I
    .end local v34    # "$i$f$nearestAncestor-64DMado":I
    .local v1, "$this$nearestAncestor_u2d64DMado$iv":Landroidx/compose/ui/node/DelegatableNode;
    .restart local v2    # "$v$c$androidx-compose-ui-node-NodeKind$-type$0$iv":I
    .restart local v3    # "$i$f$nearestAncestor-64DMado":I
    :cond_a
    move-object/from16 v30, v1

    move/from16 v33, v2

    move/from16 v34, v3

    .line 569
    .end local v1    # "$this$nearestAncestor_u2d64DMado$iv":Landroidx/compose/ui/node/DelegatableNode;
    .end local v2    # "$v$c$androidx-compose-ui-node-NodeKind$-type$0$iv":I
    .end local v3    # "$i$f$nearestAncestor-64DMado":I
    .end local v25    # "this_$iv$iv$iv$iv":Landroidx/compose/ui/node/DelegatingNode;
    .end local v26    # "$i$f$forEachImmediateDelegate$ui":I
    .end local v27    # "node$iv$iv$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .restart local v30    # "$this$nearestAncestor_u2d64DMado$iv":Landroidx/compose/ui/node/DelegatableNode;
    .restart local v33    # "$v$c$androidx-compose-ui-node-NodeKind$-type$0$iv":I
    .restart local v34    # "$i$f$nearestAncestor-64DMado":I
    const/4 v1, 0x1

    if-ne v14, v1, :cond_c

    .line 571
    move-object/from16 v1, v30

    move/from16 v2, v33

    move/from16 v3, v34

    goto/16 :goto_2

    .line 539
    .end local v14    # "count$iv$iv$iv":I
    .end local v30    # "$this$nearestAncestor_u2d64DMado$iv":Landroidx/compose/ui/node/DelegatableNode;
    .end local v33    # "$v$c$androidx-compose-ui-node-NodeKind$-type$0$iv":I
    .end local v34    # "$i$f$nearestAncestor-64DMado":I
    .restart local v1    # "$this$nearestAncestor_u2d64DMado$iv":Landroidx/compose/ui/node/DelegatableNode;
    .restart local v2    # "$v$c$androidx-compose-ui-node-NodeKind$-type$0$iv":I
    .restart local v3    # "$i$f$nearestAncestor-64DMado":I
    :cond_b
    move-object/from16 v30, v1

    move/from16 v33, v2

    move/from16 v34, v3

    const/4 v1, 0x1

    .line 574
    .end local v1    # "$this$nearestAncestor_u2d64DMado$iv":Landroidx/compose/ui/node/DelegatableNode;
    .end local v2    # "$v$c$androidx-compose-ui-node-NodeKind$-type$0$iv":I
    .end local v3    # "$i$f$nearestAncestor-64DMado":I
    .restart local v30    # "$this$nearestAncestor_u2d64DMado$iv":Landroidx/compose/ui/node/DelegatableNode;
    .restart local v33    # "$v$c$androidx-compose-ui-node-NodeKind$-type$0$iv":I
    .restart local v34    # "$i$f$nearestAncestor-64DMado":I
    :cond_c
    invoke-static/range {v23 .. v23}, Landroidx/compose/ui/node/DelegatableNodeKt;->access$pop(Landroidx/compose/runtime/collection/MutableVector;)Landroidx/compose/ui/Modifier$Node;

    move-result-object v15

    move-object/from16 v1, v30

    move/from16 v2, v33

    move/from16 v3, v34

    goto/16 :goto_2

    .line 576
    .end local v30    # "$this$nearestAncestor_u2d64DMado$iv":Landroidx/compose/ui/node/DelegatableNode;
    .end local v33    # "$v$c$androidx-compose-ui-node-NodeKind$-type$0$iv":I
    .end local v34    # "$i$f$nearestAncestor-64DMado":I
    .restart local v1    # "$this$nearestAncestor_u2d64DMado$iv":Landroidx/compose/ui/node/DelegatableNode;
    .restart local v2    # "$v$c$androidx-compose-ui-node-NodeKind$-type$0$iv":I
    .restart local v3    # "$i$f$nearestAncestor-64DMado":I
    :cond_d
    move-object/from16 v30, v1

    move/from16 v33, v2

    move/from16 v34, v3

    const/4 v1, 0x1

    .line 519
    .end local v1    # "$this$nearestAncestor_u2d64DMado$iv":Landroidx/compose/ui/node/DelegatableNode;
    .end local v2    # "$v$c$androidx-compose-ui-node-NodeKind$-type$0$iv":I
    .end local v3    # "$i$f$nearestAncestor-64DMado":I
    .end local v15    # "node$iv$iv$iv":Ljava/lang/Object;
    .end local v20    # "$v$c$androidx-compose-ui-node-NodeKind$-kind$0$iv$iv$iv":I
    .end local v21    # "$this$dispatchForKind_u2d6rFNWt0$iv$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .end local v22    # "$i$f$dispatchForKind-6rFNWt0":I
    .end local v23    # "stack$iv$iv$iv":Ljava/lang/Object;
    .restart local v30    # "$this$nearestAncestor_u2d64DMado$iv":Landroidx/compose/ui/node/DelegatableNode;
    .restart local v33    # "$v$c$androidx-compose-ui-node-NodeKind$-type$0$iv":I
    .restart local v34    # "$i$f$nearestAncestor-64DMado":I
    nop

    .line 532
    .end local v18    # "it$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .end local v19    # "$i$a$-visitAncestors-DelegatableNodeKt$visitAncestors$2$iv$iv":I
    goto :goto_9

    .line 531
    .end local v30    # "$this$nearestAncestor_u2d64DMado$iv":Landroidx/compose/ui/node/DelegatableNode;
    .end local v33    # "$v$c$androidx-compose-ui-node-NodeKind$-type$0$iv":I
    .end local v34    # "$i$f$nearestAncestor-64DMado":I
    .restart local v1    # "$this$nearestAncestor_u2d64DMado$iv":Landroidx/compose/ui/node/DelegatableNode;
    .restart local v2    # "$v$c$androidx-compose-ui-node-NodeKind$-type$0$iv":I
    .restart local v3    # "$i$f$nearestAncestor-64DMado":I
    :cond_e
    move-object/from16 v30, v1

    move/from16 v33, v2

    move/from16 v34, v3

    const/4 v1, 0x1

    .line 577
    .end local v1    # "$this$nearestAncestor_u2d64DMado$iv":Landroidx/compose/ui/node/DelegatableNode;
    .end local v2    # "$v$c$androidx-compose-ui-node-NodeKind$-type$0$iv":I
    .end local v3    # "$i$f$nearestAncestor-64DMado":I
    .restart local v30    # "$this$nearestAncestor_u2d64DMado$iv":Landroidx/compose/ui/node/DelegatableNode;
    .restart local v33    # "$v$c$androidx-compose-ui-node-NodeKind$-type$0$iv":I
    .restart local v34    # "$i$f$nearestAncestor-64DMado":I
    :goto_9
    invoke-virtual {v12}, Landroidx/compose/ui/Modifier$Node;->getParent$ui()Landroidx/compose/ui/Modifier$Node;

    move-result-object v12

    move-object/from16 v1, v30

    move/from16 v2, v33

    move/from16 v3, v34

    goto/16 :goto_1

    .line 530
    .end local v30    # "$this$nearestAncestor_u2d64DMado$iv":Landroidx/compose/ui/node/DelegatableNode;
    .end local v33    # "$v$c$androidx-compose-ui-node-NodeKind$-type$0$iv":I
    .end local v34    # "$i$f$nearestAncestor-64DMado":I
    .restart local v1    # "$this$nearestAncestor_u2d64DMado$iv":Landroidx/compose/ui/node/DelegatableNode;
    .restart local v2    # "$v$c$androidx-compose-ui-node-NodeKind$-type$0$iv":I
    .restart local v3    # "$i$f$nearestAncestor-64DMado":I
    :cond_f
    move-object/from16 v30, v1

    move/from16 v33, v2

    move/from16 v34, v3

    .end local v1    # "$this$nearestAncestor_u2d64DMado$iv":Landroidx/compose/ui/node/DelegatableNode;
    .end local v2    # "$v$c$androidx-compose-ui-node-NodeKind$-type$0$iv":I
    .end local v3    # "$i$f$nearestAncestor-64DMado":I
    .restart local v30    # "$this$nearestAncestor_u2d64DMado$iv":Landroidx/compose/ui/node/DelegatableNode;
    .restart local v33    # "$v$c$androidx-compose-ui-node-NodeKind$-type$0$iv":I
    .restart local v34    # "$i$f$nearestAncestor-64DMado":I
    goto :goto_a

    .line 529
    .end local v30    # "$this$nearestAncestor_u2d64DMado$iv":Landroidx/compose/ui/node/DelegatableNode;
    .end local v33    # "$v$c$androidx-compose-ui-node-NodeKind$-type$0$iv":I
    .end local v34    # "$i$f$nearestAncestor-64DMado":I
    .restart local v1    # "$this$nearestAncestor_u2d64DMado$iv":Landroidx/compose/ui/node/DelegatableNode;
    .restart local v2    # "$v$c$androidx-compose-ui-node-NodeKind$-type$0$iv":I
    .restart local v3    # "$i$f$nearestAncestor-64DMado":I
    :cond_10
    move-object/from16 v30, v1

    move/from16 v33, v2

    move/from16 v34, v3

    .line 580
    .end local v1    # "$this$nearestAncestor_u2d64DMado$iv":Landroidx/compose/ui/node/DelegatableNode;
    .end local v2    # "$v$c$androidx-compose-ui-node-NodeKind$-type$0$iv":I
    .end local v3    # "$i$f$nearestAncestor-64DMado":I
    .restart local v30    # "$this$nearestAncestor_u2d64DMado$iv":Landroidx/compose/ui/node/DelegatableNode;
    .restart local v33    # "$v$c$androidx-compose-ui-node-NodeKind$-type$0$iv":I
    .restart local v34    # "$i$f$nearestAncestor-64DMado":I
    :goto_a
    invoke-virtual {v13}, Landroidx/compose/ui/node/LayoutNode;->getParent$ui()Landroidx/compose/ui/node/LayoutNode;

    move-result-object v13

    .line 581
    if-eqz v13, :cond_11

    invoke-virtual {v13}, Landroidx/compose/ui/node/LayoutNode;->getNodes$ui()Landroidx/compose/ui/node/NodeChain;

    move-result-object v1

    if-eqz v1, :cond_11

    invoke-virtual {v1}, Landroidx/compose/ui/node/NodeChain;->getTail$ui()Landroidx/compose/ui/Modifier$Node;

    move-result-object v14

    goto :goto_b

    :cond_11
    const/4 v14, 0x0

    :goto_b
    move-object v12, v14

    move-object/from16 v1, v30

    move/from16 v2, v33

    move/from16 v3, v34

    .end local v17    # "head$iv$iv$iv":Landroidx/compose/ui/Modifier$Node;
    goto/16 :goto_0

    .line 583
    .end local v30    # "$this$nearestAncestor_u2d64DMado$iv":Landroidx/compose/ui/node/DelegatableNode;
    .end local v33    # "$v$c$androidx-compose-ui-node-NodeKind$-type$0$iv":I
    .end local v34    # "$i$f$nearestAncestor-64DMado":I
    .restart local v1    # "$this$nearestAncestor_u2d64DMado$iv":Landroidx/compose/ui/node/DelegatableNode;
    .restart local v2    # "$v$c$androidx-compose-ui-node-NodeKind$-type$0$iv":I
    .restart local v3    # "$i$f$nearestAncestor-64DMado":I
    :cond_12
    move-object/from16 v30, v1

    move/from16 v33, v2

    move/from16 v34, v3

    const/4 v1, 0x1

    .line 519
    .end local v1    # "$this$nearestAncestor_u2d64DMado$iv":Landroidx/compose/ui/node/DelegatableNode;
    .end local v2    # "$v$c$androidx-compose-ui-node-NodeKind$-type$0$iv":I
    .end local v3    # "$i$f$nearestAncestor-64DMado":I
    .end local v8    # "includeSelf$iv$iv$iv":Z
    .end local v9    # "mask$iv$iv$iv":I
    .end local v10    # "$this$visitAncestors$iv$iv$iv":Landroidx/compose/ui/node/DelegatableNode;
    .end local v11    # "$i$f$visitAncestors":I
    .end local v12    # "node$iv$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .end local v13    # "layout$iv$iv$iv":Landroidx/compose/ui/node/LayoutNode;
    .restart local v30    # "$this$nearestAncestor_u2d64DMado$iv":Landroidx/compose/ui/node/DelegatableNode;
    .restart local v33    # "$v$c$androidx-compose-ui-node-NodeKind$-type$0$iv":I
    .restart local v34    # "$i$f$nearestAncestor-64DMado":I
    nop

    .line 584
    .end local v4    # "$v$c$androidx-compose-ui-node-NodeKind$-type$0$iv$iv":I
    .end local v5    # "$this$visitAncestors_u2dY_u2dYKmho_u24default$iv$iv":Landroidx/compose/ui/node/DelegatableNode;
    .end local v6    # "includeSelf$iv$iv":Z
    .end local v7    # "$i$f$visitAncestors-Y-YKmho":I
    const/4 v14, 0x0

    .line 307
    .end local v30    # "$this$nearestAncestor_u2d64DMado$iv":Landroidx/compose/ui/node/DelegatableNode;
    .end local v33    # "$v$c$androidx-compose-ui-node-NodeKind$-type$0$iv":I
    .end local v34    # "$i$f$nearestAncestor-64DMado":I
    :goto_c
    check-cast v14, Landroidx/compose/ui/focus/FocusTargetNode;

    if-nez v14, :cond_13

    sget-object v1, Landroidx/compose/ui/focus/CustomDestinationResult;->None:Landroidx/compose/ui/focus/CustomDestinationResult;

    return-object v1

    .line 308
    .local v14, "focusParent":Landroidx/compose/ui/focus/FocusTargetNode;
    :cond_13
    invoke-virtual {v14}, Landroidx/compose/ui/focus/FocusTargetNode;->getFocusState()Landroidx/compose/ui/focus/FocusStateImpl;

    move-result-object v2

    sget-object v3, Landroidx/compose/ui/focus/FocusTransactionsKt$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {v2}, Landroidx/compose/ui/focus/FocusStateImpl;->ordinal()I

    move-result v2

    aget v2, v3, v2

    packed-switch v2, :pswitch_data_1

    new-instance v1, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {v1}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw v1

    .line 313
    :pswitch_1
    invoke-static {v14, v0}, Landroidx/compose/ui/focus/FocusTransactionsKt;->performCustomRequestFocus-Mxy_nc0(Landroidx/compose/ui/focus/FocusTargetNode;I)Landroidx/compose/ui/focus/CustomDestinationResult;

    move-result-object v2

    move-object v3, v2

    .line 512
    .local v3, "it":Landroidx/compose/ui/focus/CustomDestinationResult;
    const/4 v4, 0x0

    .line 313
    .local v4, "$i$a$-takeUnless-FocusTransactionsKt$performCustomRequestFocus$1":I
    sget-object v5, Landroidx/compose/ui/focus/CustomDestinationResult;->None:Landroidx/compose/ui/focus/CustomDestinationResult;

    if-ne v3, v5, :cond_14

    move v15, v1

    goto :goto_d

    :cond_14
    const/4 v15, 0x0

    .end local v3    # "it":Landroidx/compose/ui/focus/CustomDestinationResult;
    .end local v4    # "$i$a$-takeUnless-FocusTransactionsKt$performCustomRequestFocus$1":I
    :goto_d
    if-nez v15, :cond_15

    move-object/from16 v16, v2

    goto :goto_e

    :cond_15
    const/16 v16, 0x0

    :goto_e
    if-nez v16, :cond_16

    .line 314
    invoke-static {v14, v0}, Landroidx/compose/ui/focus/FocusTransactionsKt;->performCustomEnter-Mxy_nc0(Landroidx/compose/ui/focus/FocusTargetNode;I)Landroidx/compose/ui/focus/CustomDestinationResult;

    move-result-object v16

    goto :goto_f

    .line 310
    :pswitch_2
    invoke-static {v14, v0}, Landroidx/compose/ui/focus/FocusTransactionsKt;->performCustomRequestFocus-Mxy_nc0(Landroidx/compose/ui/focus/FocusTargetNode;I)Landroidx/compose/ui/focus/CustomDestinationResult;

    move-result-object v16

    goto :goto_f

    .line 309
    :pswitch_3
    sget-object v16, Landroidx/compose/ui/focus/CustomDestinationResult;->Cancelled:Landroidx/compose/ui/focus/CustomDestinationResult;

    goto :goto_f

    .line 311
    :pswitch_4
    invoke-static {v14, v0}, Landroidx/compose/ui/focus/FocusTransactionsKt;->performCustomEnter-Mxy_nc0(Landroidx/compose/ui/focus/FocusTargetNode;I)Landroidx/compose/ui/focus/CustomDestinationResult;

    move-result-object v16

    .line 308
    :cond_16
    :goto_f
    return-object v16

    .line 305
    .end local v14    # "focusParent":Landroidx/compose/ui/focus/FocusTargetNode;
    :pswitch_5
    invoke-static/range {p0 .. p0}, Landroidx/compose/ui/focus/FocusTransactionsKt;->requireActiveChild(Landroidx/compose/ui/focus/FocusTargetNode;)Landroidx/compose/ui/focus/FocusTargetNode;

    move-result-object v1

    invoke-static {v1, v0}, Landroidx/compose/ui/focus/FocusTransactionsKt;->performCustomClearFocus-Mxy_nc0(Landroidx/compose/ui/focus/FocusTargetNode;I)Landroidx/compose/ui/focus/CustomDestinationResult;

    move-result-object v1

    return-object v1

    .line 304
    :pswitch_6
    sget-object v1, Landroidx/compose/ui/focus/CustomDestinationResult;->None:Landroidx/compose/ui/focus/CustomDestinationResult;

    return-object v1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_6
        :pswitch_5
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public static final performRequestFocus(Landroidx/compose/ui/focus/FocusTargetNode;)Z
    .locals 40
    .param p0, "$this$performRequestFocus"    # Landroidx/compose/ui/focus/FocusTargetNode;

    .line 51
    move-object/from16 v0, p0

    move-object v1, v0

    check-cast v1, Landroidx/compose/ui/node/DelegatableNode;

    invoke-static {v1}, Landroidx/compose/ui/node/DelegatableNodeKt;->requireOwner(Landroidx/compose/ui/node/DelegatableNode;)Landroidx/compose/ui/node/Owner;

    move-result-object v1

    invoke-interface {v1}, Landroidx/compose/ui/node/Owner;->getFocusOwner()Landroidx/compose/ui/focus/FocusOwner;

    move-result-object v1

    .line 52
    .local v1, "focusOwner":Landroidx/compose/ui/focus/FocusOwner;
    invoke-interface {v1}, Landroidx/compose/ui/focus/FocusOwner;->getActiveFocusTargetNode()Landroidx/compose/ui/focus/FocusTargetNode;

    move-result-object v2

    .line 53
    .local v2, "previousActiveNode":Landroidx/compose/ui/focus/FocusTargetNode;
    invoke-virtual {v0}, Landroidx/compose/ui/focus/FocusTargetNode;->getFocusState()Landroidx/compose/ui/focus/FocusStateImpl;

    move-result-object v3

    .line 54
    .local v3, "previousFocusState":Landroidx/compose/ui/focus/FocusStateImpl;
    const/4 v4, 0x1

    if-ne v2, v0, :cond_0

    .line 56
    move-object v5, v3

    check-cast v5, Landroidx/compose/ui/focus/FocusState;

    move-object v6, v3

    check-cast v6, Landroidx/compose/ui/focus/FocusState;

    invoke-virtual {v0, v5, v6}, Landroidx/compose/ui/focus/FocusTargetNode;->dispatchFocusCallbacks$ui(Landroidx/compose/ui/focus/FocusState;Landroidx/compose/ui/focus/FocusState;)V

    .line 57
    return v4

    .line 62
    :cond_0
    sget-boolean v5, Landroidx/compose/ui/ComposeUiFlags;->isBypassUnfocusableComposeViewEnabled:Z

    const/4 v6, 0x3

    const/4 v7, 0x0

    const/4 v8, 0x0

    if-eqz v5, :cond_2

    .line 63
    nop

    .line 65
    if-eqz v2, :cond_1

    invoke-virtual {v2}, Landroidx/compose/ui/focus/FocusTargetNode;->isInteropViewHost()Z

    move-result v5

    if-nez v5, :cond_1

    move v5, v4

    goto :goto_0

    :cond_1
    move v5, v8

    :goto_0
    if-nez v5, :cond_3

    .line 67
    invoke-virtual {v0}, Landroidx/compose/ui/focus/FocusTargetNode;->isInteropViewHost()Z

    move-result v5

    if-nez v5, :cond_3

    .line 70
    invoke-static {v0, v7, v7, v6, v7}, Landroidx/compose/ui/focus/FocusTransactionsKt;->requestOwnerFocus-Etdf9zw$default(Landroidx/compose/ui/focus/FocusTargetNode;Landroidx/compose/ui/focus/FocusDirection;Landroidx/compose/ui/geometry/Rect;ILjava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3

    return v8

    .line 73
    :cond_2
    if-nez v2, :cond_3

    invoke-static {v0, v7, v7, v6, v7}, Landroidx/compose/ui/focus/FocusTransactionsKt;->requestOwnerFocus-Etdf9zw$default(Landroidx/compose/ui/focus/FocusTargetNode;Landroidx/compose/ui/focus/FocusDirection;Landroidx/compose/ui/geometry/Rect;ILjava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3

    .line 74
    return v8

    .line 79
    :cond_3
    const/4 v5, 0x0

    .line 80
    .local v5, "previousAncestorTargetNodes":Ljava/lang/Object;
    const-string/jumbo v6, "visitAncestors called on an unattached node"

    const/16 v9, 0x400

    if-eqz v2, :cond_17

    .line 81
    const/4 v10, 0x0

    .line 352
    .local v10, "$i$f$mutableVectorOf":I
    nop

    .line 353
    const/16 v11, 0x10

    .local v11, "capacity$iv$iv":I
    const/4 v12, 0x0

    .line 354
    .local v12, "$i$f$MutableVector":I
    new-instance v13, Landroidx/compose/runtime/collection/MutableVector;

    new-array v14, v11, [Landroidx/compose/ui/focus/FocusTargetNode;

    invoke-direct {v13, v14, v8}, Landroidx/compose/runtime/collection/MutableVector;-><init>([Ljava/lang/Object;I)V

    .line 352
    .end local v11    # "capacity$iv$iv":I
    .end local v12    # "$i$f$MutableVector":I
    nop

    .line 81
    .end local v10    # "$i$f$mutableVectorOf":I
    move-object v5, v13

    .line 82
    move-object v10, v2

    check-cast v10, Landroidx/compose/ui/node/DelegatableNode;

    const/4 v11, 0x0

    .line 355
    .local v11, "$i$f$getFocusTarget-OLwlOKw":I
    invoke-static {v9}, Landroidx/compose/ui/node/NodeKind;->constructor-impl(I)I

    move-result v11

    .line 82
    .end local v11    # "$i$f$getFocusTarget-OLwlOKw":I
    nop

    .line 356
    .local v10, "$this$visitAncestors_u2dY_u2dYKmho_u24default$iv":Landroidx/compose/ui/node/DelegatableNode;
    .local v11, "$v$c$androidx-compose-ui-node-NodeKind$-type$0$iv":I
    nop

    .line 358
    const/4 v12, 0x0

    .line 356
    .local v12, "includeSelf$iv":Z
    const/4 v13, 0x0

    .line 360
    .local v13, "$i$f$visitAncestors-Y-YKmho":I
    move v14, v12

    .local v14, "includeSelf$iv$iv":Z
    move-object v15, v10

    .local v15, "$this$visitAncestors$iv$iv":Landroidx/compose/ui/node/DelegatableNode;
    move/from16 v16, v11

    .local v16, "mask$iv$iv":I
    const/16 v17, 0x0

    .line 361
    .local v17, "$i$f$visitAncestors":I
    invoke-interface {v15}, Landroidx/compose/ui/node/DelegatableNode;->getNode()Landroidx/compose/ui/Modifier$Node;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Landroidx/compose/ui/Modifier$Node;->isAttached()Z

    move-result v18

    .local v18, "value$iv$iv$iv":Z
    const/16 v19, 0x0

    .line 362
    .local v19, "$i$f$checkPrecondition":I
    if-nez v18, :cond_4

    .line 363
    const/16 v20, 0x0

    .line 361
    .local v20, "$i$a$-checkPrecondition-DelegatableNodeKt$visitAncestors$1$iv$iv":I
    nop

    .line 363
    .end local v20    # "$i$a$-checkPrecondition-DelegatableNodeKt$visitAncestors$1$iv$iv":I
    invoke-static {v6}, Landroidx/compose/ui/internal/InlineClassHelperKt;->throwIllegalStateException(Ljava/lang/String;)V

    .line 365
    :cond_4
    nop

    .line 366
    .end local v18    # "value$iv$iv$iv":Z
    .end local v19    # "$i$f$checkPrecondition":I
    invoke-interface {v15}, Landroidx/compose/ui/node/DelegatableNode;->getNode()Landroidx/compose/ui/Modifier$Node;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Landroidx/compose/ui/Modifier$Node;->getParent$ui()Landroidx/compose/ui/Modifier$Node;

    move-result-object v18

    .line 367
    .local v18, "node$iv$iv":Landroidx/compose/ui/Modifier$Node;
    invoke-static {v15}, Landroidx/compose/ui/node/DelegatableNodeKt;->requireLayoutNode(Landroidx/compose/ui/node/DelegatableNode;)Landroidx/compose/ui/node/LayoutNode;

    move-result-object v19

    .line 368
    .local v19, "layout$iv$iv":Landroidx/compose/ui/node/LayoutNode;
    :goto_1
    if-eqz v19, :cond_16

    .line 369
    invoke-virtual/range {v19 .. v19}, Landroidx/compose/ui/node/LayoutNode;->getNodes$ui()Landroidx/compose/ui/node/NodeChain;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Landroidx/compose/ui/node/NodeChain;->getHead$ui()Landroidx/compose/ui/Modifier$Node;

    move-result-object v20

    .line 370
    .local v20, "head$iv$iv":Landroidx/compose/ui/Modifier$Node;
    invoke-virtual/range {v20 .. v20}, Landroidx/compose/ui/Modifier$Node;->getAggregateChildKindSet$ui()I

    move-result v21

    and-int v21, v21, v16

    if-eqz v21, :cond_14

    .line 371
    :goto_2
    if-eqz v18, :cond_13

    .line 372
    invoke-virtual/range {v18 .. v18}, Landroidx/compose/ui/Modifier$Node;->getKindSet$ui()I

    move-result v21

    and-int v21, v21, v16

    if-eqz v21, :cond_12

    .line 373
    move-object/from16 v21, v18

    .local v21, "it$iv":Landroidx/compose/ui/Modifier$Node;
    const/16 v22, 0x0

    .line 360
    .local v22, "$i$a$-visitAncestors-DelegatableNodeKt$visitAncestors$2$iv":I
    move/from16 v23, v11

    .local v23, "$v$c$androidx-compose-ui-node-NodeKind$-kind$0$iv$iv":I
    move-object/from16 v24, v21

    .local v24, "$this$dispatchForKind_u2d6rFNWt0$iv$iv":Landroidx/compose/ui/Modifier$Node;
    const/16 v25, 0x0

    .line 374
    .local v25, "$i$f$dispatchForKind-6rFNWt0":I
    const/16 v26, 0x0

    .line 375
    .local v26, "stack$iv$iv":Ljava/lang/Object;
    const/16 v27, 0x0

    .local v27, "node$iv$iv":Ljava/lang/Object;
    move-object/from16 v27, v24

    move-object/from16 v39, v27

    move/from16 v27, v9

    move-object/from16 v9, v39

    .line 376
    .end local v27    # "node$iv$iv":Ljava/lang/Object;
    .local v9, "node$iv$iv":Ljava/lang/Object;
    :goto_3
    if-eqz v9, :cond_11

    .line 377
    instance-of v7, v9, Landroidx/compose/ui/focus/FocusTargetNode;

    if-eqz v7, :cond_5

    .line 378
    move-object v7, v9

    check-cast v7, Landroidx/compose/ui/focus/FocusTargetNode;

    .local v7, "it":Landroidx/compose/ui/focus/FocusTargetNode;
    const/16 v28, 0x0

    .line 82
    .local v28, "$i$a$-visitAncestors-Y-YKmho$default-FocusTransactionsKt$performRequestFocus$1":I
    invoke-virtual {v5, v7}, Landroidx/compose/runtime/collection/MutableVector;->add(Ljava/lang/Object;)Z

    .line 378
    .end local v7    # "it":Landroidx/compose/ui/focus/FocusTargetNode;
    .end local v28    # "$i$a$-visitAncestors-Y-YKmho$default-FocusTransactionsKt$performRequestFocus$1":I
    move-object/from16 v36, v1

    move-object/from16 v37, v3

    goto/16 :goto_a

    .line 379
    :cond_5
    move/from16 v7, v23

    .local v7, "$v$c$androidx-compose-ui-node-NodeKind$-kind$0$iv$iv$iv":I
    move-object/from16 v28, v9

    .local v28, "this_$iv$iv$iv":Landroidx/compose/ui/Modifier$Node;
    const/16 v29, 0x0

    .line 380
    .local v29, "$i$f$isKind-H91voCI$ui":I
    invoke-virtual/range {v28 .. v28}, Landroidx/compose/ui/Modifier$Node;->getKindSet$ui()I

    move-result v30

    and-int v30, v30, v7

    if-eqz v30, :cond_6

    move v7, v4

    goto :goto_4

    :cond_6
    move v7, v8

    .line 379
    .end local v7    # "$v$c$androidx-compose-ui-node-NodeKind$-kind$0$iv$iv$iv":I
    .end local v28    # "this_$iv$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .end local v29    # "$i$f$isKind-H91voCI$ui":I
    :goto_4
    if-eqz v7, :cond_f

    instance-of v7, v9, Landroidx/compose/ui/node/DelegatingNode;

    if-eqz v7, :cond_f

    .line 381
    const/4 v7, 0x0

    .line 382
    .local v7, "count$iv$iv":I
    move-object/from16 v28, v9

    check-cast v28, Landroidx/compose/ui/node/DelegatingNode;

    .local v28, "this_$iv$iv$iv":Landroidx/compose/ui/node/DelegatingNode;
    const/16 v29, 0x0

    .line 383
    .local v29, "$i$f$forEachImmediateDelegate$ui":I
    invoke-virtual/range {v28 .. v28}, Landroidx/compose/ui/node/DelegatingNode;->getDelegate$ui()Landroidx/compose/ui/Modifier$Node;

    move-result-object v30

    .line 384
    .local v30, "node$iv$iv$iv":Landroidx/compose/ui/Modifier$Node;
    :goto_5
    if-eqz v30, :cond_e

    .line 385
    move-object/from16 v31, v30

    .local v31, "next$iv$iv":Landroidx/compose/ui/Modifier$Node;
    const/16 v32, 0x0

    .line 386
    .local v32, "$i$a$-forEachImmediateDelegate$ui-DelegatableNodeKt$dispatchForKind$1$iv$iv":I
    move/from16 v33, v23

    .local v33, "$v$c$androidx-compose-ui-node-NodeKind$-kind$0$iv$iv$iv":I
    move-object/from16 v34, v31

    .local v34, "this_$iv$iv$iv":Landroidx/compose/ui/Modifier$Node;
    const/16 v35, 0x0

    .line 380
    .local v35, "$i$f$isKind-H91voCI$ui":I
    invoke-virtual/range {v34 .. v34}, Landroidx/compose/ui/Modifier$Node;->getKindSet$ui()I

    move-result v36

    and-int v36, v36, v33

    if-eqz v36, :cond_7

    move/from16 v33, v4

    goto :goto_6

    :cond_7
    move/from16 v33, v8

    .line 386
    .end local v33    # "$v$c$androidx-compose-ui-node-NodeKind$-kind$0$iv$iv$iv":I
    .end local v34    # "this_$iv$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .end local v35    # "$i$f$isKind-H91voCI$ui":I
    :goto_6
    if-eqz v33, :cond_d

    .line 387
    add-int/lit8 v7, v7, 0x1

    .line 388
    if-ne v7, v4, :cond_8

    .line 389
    move-object/from16 v9, v31

    move-object/from16 v36, v1

    move-object/from16 v37, v3

    move-object/from16 v4, v31

    goto :goto_9

    .line 393
    :cond_8
    if-nez v26, :cond_9

    const/16 v33, 0x0

    .line 394
    .local v33, "$i$f$mutableVectorOf":I
    nop

    .line 395
    const/16 v4, 0x10

    .local v4, "capacity$iv$iv$iv$iv":I
    const/16 v35, 0x0

    .line 396
    .local v35, "$i$f$MutableVector":I
    move-object/from16 v36, v1

    .end local v1    # "focusOwner":Landroidx/compose/ui/focus/FocusOwner;
    .local v36, "focusOwner":Landroidx/compose/ui/focus/FocusOwner;
    new-instance v1, Landroidx/compose/runtime/collection/MutableVector;

    move-object/from16 v37, v3

    .end local v3    # "previousFocusState":Landroidx/compose/ui/focus/FocusStateImpl;
    .local v37, "previousFocusState":Landroidx/compose/ui/focus/FocusStateImpl;
    new-array v3, v4, [Landroidx/compose/ui/Modifier$Node;

    invoke-direct {v1, v3, v8}, Landroidx/compose/runtime/collection/MutableVector;-><init>([Ljava/lang/Object;I)V

    .line 394
    .end local v4    # "capacity$iv$iv$iv$iv":I
    .end local v35    # "$i$f$MutableVector":I
    goto :goto_7

    .line 393
    .end local v33    # "$i$f$mutableVectorOf":I
    .end local v36    # "focusOwner":Landroidx/compose/ui/focus/FocusOwner;
    .end local v37    # "previousFocusState":Landroidx/compose/ui/focus/FocusStateImpl;
    .restart local v1    # "focusOwner":Landroidx/compose/ui/focus/FocusOwner;
    .restart local v3    # "previousFocusState":Landroidx/compose/ui/focus/FocusStateImpl;
    :cond_9
    move-object/from16 v36, v1

    move-object/from16 v37, v3

    .end local v1    # "focusOwner":Landroidx/compose/ui/focus/FocusOwner;
    .end local v3    # "previousFocusState":Landroidx/compose/ui/focus/FocusStateImpl;
    .restart local v36    # "focusOwner":Landroidx/compose/ui/focus/FocusOwner;
    .restart local v37    # "previousFocusState":Landroidx/compose/ui/focus/FocusStateImpl;
    move-object/from16 v1, v26

    :goto_7
    nop

    .line 397
    .end local v26    # "stack$iv$iv":Ljava/lang/Object;
    .local v1, "stack$iv$iv":Ljava/lang/Object;
    move-object v3, v9

    .line 398
    .local v3, "theNode$iv$iv":Landroidx/compose/ui/Modifier$Node;
    if-eqz v3, :cond_b

    .line 399
    if-eqz v1, :cond_a

    invoke-virtual {v1, v3}, Landroidx/compose/runtime/collection/MutableVector;->add(Ljava/lang/Object;)Z

    .line 400
    :cond_a
    const/4 v4, 0x0

    move-object v9, v4

    .line 402
    :cond_b
    if-eqz v1, :cond_c

    move-object/from16 v4, v31

    .end local v31    # "next$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .local v4, "next$iv$iv":Landroidx/compose/ui/Modifier$Node;
    invoke-virtual {v1, v4}, Landroidx/compose/runtime/collection/MutableVector;->add(Ljava/lang/Object;)Z

    goto :goto_8

    .end local v4    # "next$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .restart local v31    # "next$iv$iv":Landroidx/compose/ui/Modifier$Node;
    :cond_c
    move-object/from16 v4, v31

    .line 405
    .end local v3    # "theNode$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .end local v31    # "next$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .restart local v4    # "next$iv$iv":Landroidx/compose/ui/Modifier$Node;
    :goto_8
    move-object/from16 v26, v1

    goto :goto_9

    .line 386
    .end local v4    # "next$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .end local v36    # "focusOwner":Landroidx/compose/ui/focus/FocusOwner;
    .end local v37    # "previousFocusState":Landroidx/compose/ui/focus/FocusStateImpl;
    .local v1, "focusOwner":Landroidx/compose/ui/focus/FocusOwner;
    .local v3, "previousFocusState":Landroidx/compose/ui/focus/FocusStateImpl;
    .restart local v26    # "stack$iv$iv":Ljava/lang/Object;
    .restart local v31    # "next$iv$iv":Landroidx/compose/ui/Modifier$Node;
    :cond_d
    move-object/from16 v36, v1

    move-object/from16 v37, v3

    move-object/from16 v4, v31

    .line 405
    .end local v1    # "focusOwner":Landroidx/compose/ui/focus/FocusOwner;
    .end local v3    # "previousFocusState":Landroidx/compose/ui/focus/FocusStateImpl;
    .end local v31    # "next$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .restart local v4    # "next$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .restart local v36    # "focusOwner":Landroidx/compose/ui/focus/FocusOwner;
    .restart local v37    # "previousFocusState":Landroidx/compose/ui/focus/FocusStateImpl;
    :goto_9
    nop

    .line 385
    .end local v4    # "next$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .end local v32    # "$i$a$-forEachImmediateDelegate$ui-DelegatableNodeKt$dispatchForKind$1$iv$iv":I
    nop

    .line 406
    invoke-virtual/range {v30 .. v30}, Landroidx/compose/ui/Modifier$Node;->getChild$ui()Landroidx/compose/ui/Modifier$Node;

    move-result-object v30

    move-object/from16 v1, v36

    move-object/from16 v3, v37

    const/4 v4, 0x1

    goto :goto_5

    .line 408
    .end local v36    # "focusOwner":Landroidx/compose/ui/focus/FocusOwner;
    .end local v37    # "previousFocusState":Landroidx/compose/ui/focus/FocusStateImpl;
    .restart local v1    # "focusOwner":Landroidx/compose/ui/focus/FocusOwner;
    .restart local v3    # "previousFocusState":Landroidx/compose/ui/focus/FocusStateImpl;
    :cond_e
    move-object/from16 v36, v1

    move-object/from16 v37, v3

    .line 409
    .end local v1    # "focusOwner":Landroidx/compose/ui/focus/FocusOwner;
    .end local v3    # "previousFocusState":Landroidx/compose/ui/focus/FocusStateImpl;
    .end local v28    # "this_$iv$iv$iv":Landroidx/compose/ui/node/DelegatingNode;
    .end local v29    # "$i$f$forEachImmediateDelegate$ui":I
    .end local v30    # "node$iv$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .restart local v36    # "focusOwner":Landroidx/compose/ui/focus/FocusOwner;
    .restart local v37    # "previousFocusState":Landroidx/compose/ui/focus/FocusStateImpl;
    const/4 v1, 0x1

    if-ne v7, v1, :cond_10

    .line 411
    move-object/from16 v1, v36

    move-object/from16 v3, v37

    const/4 v4, 0x1

    const/4 v7, 0x0

    goto/16 :goto_3

    .line 379
    .end local v7    # "count$iv$iv":I
    .end local v36    # "focusOwner":Landroidx/compose/ui/focus/FocusOwner;
    .end local v37    # "previousFocusState":Landroidx/compose/ui/focus/FocusStateImpl;
    .restart local v1    # "focusOwner":Landroidx/compose/ui/focus/FocusOwner;
    .restart local v3    # "previousFocusState":Landroidx/compose/ui/focus/FocusStateImpl;
    :cond_f
    move-object/from16 v36, v1

    move-object/from16 v37, v3

    .line 414
    .end local v1    # "focusOwner":Landroidx/compose/ui/focus/FocusOwner;
    .end local v3    # "previousFocusState":Landroidx/compose/ui/focus/FocusStateImpl;
    .restart local v36    # "focusOwner":Landroidx/compose/ui/focus/FocusOwner;
    .restart local v37    # "previousFocusState":Landroidx/compose/ui/focus/FocusStateImpl;
    :cond_10
    :goto_a
    invoke-static/range {v26 .. v26}, Landroidx/compose/ui/node/DelegatableNodeKt;->access$pop(Landroidx/compose/runtime/collection/MutableVector;)Landroidx/compose/ui/Modifier$Node;

    move-result-object v9

    move-object/from16 v1, v36

    move-object/from16 v3, v37

    const/4 v4, 0x1

    const/4 v7, 0x0

    goto/16 :goto_3

    .line 416
    .end local v36    # "focusOwner":Landroidx/compose/ui/focus/FocusOwner;
    .end local v37    # "previousFocusState":Landroidx/compose/ui/focus/FocusStateImpl;
    .restart local v1    # "focusOwner":Landroidx/compose/ui/focus/FocusOwner;
    .restart local v3    # "previousFocusState":Landroidx/compose/ui/focus/FocusStateImpl;
    :cond_11
    move-object/from16 v36, v1

    move-object/from16 v37, v3

    .line 360
    .end local v1    # "focusOwner":Landroidx/compose/ui/focus/FocusOwner;
    .end local v3    # "previousFocusState":Landroidx/compose/ui/focus/FocusStateImpl;
    .end local v9    # "node$iv$iv":Ljava/lang/Object;
    .end local v23    # "$v$c$androidx-compose-ui-node-NodeKind$-kind$0$iv$iv":I
    .end local v24    # "$this$dispatchForKind_u2d6rFNWt0$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .end local v25    # "$i$f$dispatchForKind-6rFNWt0":I
    .end local v26    # "stack$iv$iv":Ljava/lang/Object;
    .restart local v36    # "focusOwner":Landroidx/compose/ui/focus/FocusOwner;
    .restart local v37    # "previousFocusState":Landroidx/compose/ui/focus/FocusStateImpl;
    nop

    .line 373
    .end local v21    # "it$iv":Landroidx/compose/ui/Modifier$Node;
    .end local v22    # "$i$a$-visitAncestors-DelegatableNodeKt$visitAncestors$2$iv":I
    goto :goto_b

    .line 372
    .end local v36    # "focusOwner":Landroidx/compose/ui/focus/FocusOwner;
    .end local v37    # "previousFocusState":Landroidx/compose/ui/focus/FocusStateImpl;
    .restart local v1    # "focusOwner":Landroidx/compose/ui/focus/FocusOwner;
    .restart local v3    # "previousFocusState":Landroidx/compose/ui/focus/FocusStateImpl;
    :cond_12
    move-object/from16 v36, v1

    move-object/from16 v37, v3

    move/from16 v27, v9

    .line 417
    .end local v1    # "focusOwner":Landroidx/compose/ui/focus/FocusOwner;
    .end local v3    # "previousFocusState":Landroidx/compose/ui/focus/FocusStateImpl;
    .restart local v36    # "focusOwner":Landroidx/compose/ui/focus/FocusOwner;
    .restart local v37    # "previousFocusState":Landroidx/compose/ui/focus/FocusStateImpl;
    :goto_b
    invoke-virtual/range {v18 .. v18}, Landroidx/compose/ui/Modifier$Node;->getParent$ui()Landroidx/compose/ui/Modifier$Node;

    move-result-object v18

    move/from16 v9, v27

    move-object/from16 v1, v36

    move-object/from16 v3, v37

    const/4 v4, 0x1

    const/4 v7, 0x0

    goto/16 :goto_2

    .line 371
    .end local v36    # "focusOwner":Landroidx/compose/ui/focus/FocusOwner;
    .end local v37    # "previousFocusState":Landroidx/compose/ui/focus/FocusStateImpl;
    .restart local v1    # "focusOwner":Landroidx/compose/ui/focus/FocusOwner;
    .restart local v3    # "previousFocusState":Landroidx/compose/ui/focus/FocusStateImpl;
    :cond_13
    move-object/from16 v36, v1

    move-object/from16 v37, v3

    move/from16 v27, v9

    .end local v1    # "focusOwner":Landroidx/compose/ui/focus/FocusOwner;
    .end local v3    # "previousFocusState":Landroidx/compose/ui/focus/FocusStateImpl;
    .restart local v36    # "focusOwner":Landroidx/compose/ui/focus/FocusOwner;
    .restart local v37    # "previousFocusState":Landroidx/compose/ui/focus/FocusStateImpl;
    goto :goto_c

    .line 370
    .end local v36    # "focusOwner":Landroidx/compose/ui/focus/FocusOwner;
    .end local v37    # "previousFocusState":Landroidx/compose/ui/focus/FocusStateImpl;
    .restart local v1    # "focusOwner":Landroidx/compose/ui/focus/FocusOwner;
    .restart local v3    # "previousFocusState":Landroidx/compose/ui/focus/FocusStateImpl;
    :cond_14
    move-object/from16 v36, v1

    move-object/from16 v37, v3

    move/from16 v27, v9

    .line 420
    .end local v1    # "focusOwner":Landroidx/compose/ui/focus/FocusOwner;
    .end local v3    # "previousFocusState":Landroidx/compose/ui/focus/FocusStateImpl;
    .restart local v36    # "focusOwner":Landroidx/compose/ui/focus/FocusOwner;
    .restart local v37    # "previousFocusState":Landroidx/compose/ui/focus/FocusStateImpl;
    :goto_c
    invoke-virtual/range {v19 .. v19}, Landroidx/compose/ui/node/LayoutNode;->getParent$ui()Landroidx/compose/ui/node/LayoutNode;

    move-result-object v19

    .line 421
    if-eqz v19, :cond_15

    invoke-virtual/range {v19 .. v19}, Landroidx/compose/ui/node/LayoutNode;->getNodes$ui()Landroidx/compose/ui/node/NodeChain;

    move-result-object v1

    if-eqz v1, :cond_15

    invoke-virtual {v1}, Landroidx/compose/ui/node/NodeChain;->getTail$ui()Landroidx/compose/ui/Modifier$Node;

    move-result-object v1

    goto :goto_d

    :cond_15
    const/4 v1, 0x0

    :goto_d
    move-object/from16 v18, v1

    move/from16 v9, v27

    move-object/from16 v1, v36

    move-object/from16 v3, v37

    const/4 v4, 0x1

    const/4 v7, 0x0

    .end local v20    # "head$iv$iv":Landroidx/compose/ui/Modifier$Node;
    goto/16 :goto_1

    .line 423
    .end local v36    # "focusOwner":Landroidx/compose/ui/focus/FocusOwner;
    .end local v37    # "previousFocusState":Landroidx/compose/ui/focus/FocusStateImpl;
    .restart local v1    # "focusOwner":Landroidx/compose/ui/focus/FocusOwner;
    .restart local v3    # "previousFocusState":Landroidx/compose/ui/focus/FocusStateImpl;
    :cond_16
    move-object/from16 v36, v1

    move-object/from16 v37, v3

    move/from16 v27, v9

    .line 360
    .end local v1    # "focusOwner":Landroidx/compose/ui/focus/FocusOwner;
    .end local v3    # "previousFocusState":Landroidx/compose/ui/focus/FocusStateImpl;
    .end local v14    # "includeSelf$iv$iv":Z
    .end local v15    # "$this$visitAncestors$iv$iv":Landroidx/compose/ui/node/DelegatableNode;
    .end local v16    # "mask$iv$iv":I
    .end local v17    # "$i$f$visitAncestors":I
    .end local v18    # "node$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .end local v19    # "layout$iv$iv":Landroidx/compose/ui/node/LayoutNode;
    .restart local v36    # "focusOwner":Landroidx/compose/ui/focus/FocusOwner;
    .restart local v37    # "previousFocusState":Landroidx/compose/ui/focus/FocusStateImpl;
    goto :goto_e

    .line 80
    .end local v10    # "$this$visitAncestors_u2dY_u2dYKmho_u24default$iv":Landroidx/compose/ui/node/DelegatableNode;
    .end local v11    # "$v$c$androidx-compose-ui-node-NodeKind$-type$0$iv":I
    .end local v12    # "includeSelf$iv":Z
    .end local v13    # "$i$f$visitAncestors-Y-YKmho":I
    .end local v36    # "focusOwner":Landroidx/compose/ui/focus/FocusOwner;
    .end local v37    # "previousFocusState":Landroidx/compose/ui/focus/FocusStateImpl;
    .restart local v1    # "focusOwner":Landroidx/compose/ui/focus/FocusOwner;
    .restart local v3    # "previousFocusState":Landroidx/compose/ui/focus/FocusStateImpl;
    :cond_17
    move-object/from16 v36, v1

    move-object/from16 v37, v3

    move/from16 v27, v9

    .line 88
    .end local v1    # "focusOwner":Landroidx/compose/ui/focus/FocusOwner;
    .end local v3    # "previousFocusState":Landroidx/compose/ui/focus/FocusStateImpl;
    .restart local v36    # "focusOwner":Landroidx/compose/ui/focus/FocusOwner;
    .restart local v37    # "previousFocusState":Landroidx/compose/ui/focus/FocusStateImpl;
    :goto_e
    const/4 v1, 0x0

    .local v1, "shouldClearFocusFromPreviousActiveNode":Z
    const/4 v1, 0x1

    .line 89
    const/4 v3, 0x0

    .line 424
    .local v3, "$i$f$mutableVectorOf":I
    nop

    .line 425
    const/16 v4, 0x10

    .local v4, "capacity$iv$iv":I
    const/4 v7, 0x0

    .line 426
    .local v7, "$i$f$MutableVector":I
    new-instance v9, Landroidx/compose/runtime/collection/MutableVector;

    new-array v10, v4, [Landroidx/compose/ui/focus/FocusTargetNode;

    invoke-direct {v9, v10, v8}, Landroidx/compose/runtime/collection/MutableVector;-><init>([Ljava/lang/Object;I)V

    .line 424
    .end local v4    # "capacity$iv$iv":I
    .end local v7    # "$i$f$MutableVector":I
    nop

    .line 89
    .end local v3    # "$i$f$mutableVectorOf":I
    nop

    .line 90
    .local v9, "ancestorTargetNodes":Landroidx/compose/runtime/collection/MutableVector;
    move-object v3, v0

    check-cast v3, Landroidx/compose/ui/node/DelegatableNode;

    const/4 v4, 0x0

    .line 427
    .local v4, "$i$f$getFocusTarget-OLwlOKw":I
    invoke-static/range {v27 .. v27}, Landroidx/compose/ui/node/NodeKind;->constructor-impl(I)I

    move-result v4

    .line 90
    .end local v4    # "$i$f$getFocusTarget-OLwlOKw":I
    nop

    .line 428
    .local v3, "$this$visitAncestors_u2dY_u2dYKmho_u24default$iv":Landroidx/compose/ui/node/DelegatableNode;
    .local v4, "$v$c$androidx-compose-ui-node-NodeKind$-type$0$iv":I
    nop

    .line 430
    const/4 v7, 0x0

    .line 428
    .local v7, "includeSelf$iv":Z
    const/4 v10, 0x0

    .line 432
    .local v10, "$i$f$visitAncestors-Y-YKmho":I
    move v11, v7

    .local v11, "includeSelf$iv$iv":Z
    move v12, v4

    .local v12, "mask$iv$iv":I
    move-object v13, v3

    .local v13, "$this$visitAncestors$iv$iv":Landroidx/compose/ui/node/DelegatableNode;
    const/4 v14, 0x0

    .line 433
    .local v14, "$i$f$visitAncestors":I
    invoke-interface {v13}, Landroidx/compose/ui/node/DelegatableNode;->getNode()Landroidx/compose/ui/Modifier$Node;

    move-result-object v15

    invoke-virtual {v15}, Landroidx/compose/ui/Modifier$Node;->isAttached()Z

    move-result v15

    .local v15, "value$iv$iv$iv":Z
    const/16 v16, 0x0

    .line 434
    .local v16, "$i$f$checkPrecondition":I
    if-nez v15, :cond_18

    .line 435
    const/16 v17, 0x0

    .line 433
    .local v17, "$i$a$-checkPrecondition-DelegatableNodeKt$visitAncestors$1$iv$iv":I
    nop

    .line 435
    .end local v17    # "$i$a$-checkPrecondition-DelegatableNodeKt$visitAncestors$1$iv$iv":I
    invoke-static {v6}, Landroidx/compose/ui/internal/InlineClassHelperKt;->throwIllegalStateException(Ljava/lang/String;)V

    .line 437
    :cond_18
    nop

    .line 438
    .end local v15    # "value$iv$iv$iv":Z
    .end local v16    # "$i$f$checkPrecondition":I
    invoke-interface {v13}, Landroidx/compose/ui/node/DelegatableNode;->getNode()Landroidx/compose/ui/Modifier$Node;

    move-result-object v6

    invoke-virtual {v6}, Landroidx/compose/ui/Modifier$Node;->getParent$ui()Landroidx/compose/ui/Modifier$Node;

    move-result-object v6

    .line 439
    .local v6, "node$iv$iv":Landroidx/compose/ui/Modifier$Node;
    invoke-static {v13}, Landroidx/compose/ui/node/DelegatableNodeKt;->requireLayoutNode(Landroidx/compose/ui/node/DelegatableNode;)Landroidx/compose/ui/node/LayoutNode;

    move-result-object v15

    .line 440
    .local v15, "layout$iv$iv":Landroidx/compose/ui/node/LayoutNode;
    :goto_f
    if-eqz v15, :cond_2e

    .line 441
    invoke-virtual {v15}, Landroidx/compose/ui/node/LayoutNode;->getNodes$ui()Landroidx/compose/ui/node/NodeChain;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Landroidx/compose/ui/node/NodeChain;->getHead$ui()Landroidx/compose/ui/Modifier$Node;

    move-result-object v16

    .line 442
    .local v16, "head$iv$iv":Landroidx/compose/ui/Modifier$Node;
    invoke-virtual/range {v16 .. v16}, Landroidx/compose/ui/Modifier$Node;->getAggregateChildKindSet$ui()I

    move-result v17

    and-int v17, v17, v12

    if-eqz v17, :cond_2c

    .line 443
    :goto_10
    if-eqz v6, :cond_2b

    .line 444
    invoke-virtual {v6}, Landroidx/compose/ui/Modifier$Node;->getKindSet$ui()I

    move-result v17

    and-int v17, v17, v12

    if-eqz v17, :cond_2a

    .line 445
    move-object/from16 v17, v6

    .local v17, "it$iv":Landroidx/compose/ui/Modifier$Node;
    const/16 v18, 0x0

    .line 432
    .local v18, "$i$a$-visitAncestors-DelegatableNodeKt$visitAncestors$2$iv":I
    move/from16 v19, v4

    .local v19, "$v$c$androidx-compose-ui-node-NodeKind$-kind$0$iv$iv":I
    move-object/from16 v20, v17

    .local v20, "$this$dispatchForKind_u2d6rFNWt0$iv$iv":Landroidx/compose/ui/Modifier$Node;
    const/16 v21, 0x0

    .line 446
    .local v21, "$i$f$dispatchForKind-6rFNWt0":I
    const/16 v22, 0x0

    .line 447
    .local v22, "stack$iv$iv":Ljava/lang/Object;
    const/16 v23, 0x0

    .local v23, "node$iv$iv":Ljava/lang/Object;
    move-object/from16 v23, v20

    move-object/from16 v8, v23

    .line 448
    .end local v23    # "node$iv$iv":Ljava/lang/Object;
    .local v8, "node$iv$iv":Ljava/lang/Object;
    :goto_11
    if-eqz v8, :cond_29

    .line 449
    move/from16 v24, v1

    .end local v1    # "shouldClearFocusFromPreviousActiveNode":Z
    .local v24, "shouldClearFocusFromPreviousActiveNode":Z
    instance-of v1, v8, Landroidx/compose/ui/focus/FocusTargetNode;

    if-eqz v1, :cond_1d

    .line 450
    move-object v1, v8

    check-cast v1, Landroidx/compose/ui/focus/FocusTargetNode;

    .local v1, "it":Landroidx/compose/ui/focus/FocusTargetNode;
    const/16 v25, 0x0

    .line 91
    .local v25, "$i$a$-visitAncestors-Y-YKmho$default-FocusTransactionsKt$performRequestFocus$2":I
    if-eqz v5, :cond_19

    invoke-virtual {v5, v1}, Landroidx/compose/runtime/collection/MutableVector;->remove(Ljava/lang/Object;)Z

    move-result v26

    invoke-static/range {v26 .. v26}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v26

    goto :goto_12

    :cond_19
    const/16 v26, 0x0

    .line 92
    .local v26, "removed":Ljava/lang/Boolean;
    :goto_12
    if-eqz v26, :cond_1a

    invoke-virtual/range {v26 .. v26}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v27

    if-nez v27, :cond_1b

    .line 93
    :cond_1a
    invoke-virtual {v9, v1}, Landroidx/compose/runtime/collection/MutableVector;->add(Ljava/lang/Object;)Z

    .line 95
    :cond_1b
    if-ne v1, v2, :cond_1c

    const/16 v24, 0x0

    .line 96
    :cond_1c
    nop

    .line 450
    .end local v1    # "it":Landroidx/compose/ui/focus/FocusTargetNode;
    .end local v25    # "$i$a$-visitAncestors-Y-YKmho$default-FocusTransactionsKt$performRequestFocus$2":I
    .end local v26    # "removed":Ljava/lang/Boolean;
    move-object/from16 v30, v3

    move/from16 v35, v4

    move/from16 v1, v24

    goto/16 :goto_19

    .line 451
    :cond_1d
    move/from16 v1, v19

    .local v1, "$v$c$androidx-compose-ui-node-NodeKind$-kind$0$iv$iv$iv":I
    move-object/from16 v25, v8

    .local v25, "this_$iv$iv$iv":Landroidx/compose/ui/Modifier$Node;
    const/16 v26, 0x0

    .line 452
    .local v26, "$i$f$isKind-H91voCI$ui":I
    invoke-virtual/range {v25 .. v25}, Landroidx/compose/ui/Modifier$Node;->getKindSet$ui()I

    move-result v27

    and-int v27, v27, v1

    if-eqz v27, :cond_1e

    const/4 v1, 0x1

    goto :goto_13

    :cond_1e
    const/4 v1, 0x0

    .line 451
    .end local v1    # "$v$c$androidx-compose-ui-node-NodeKind$-kind$0$iv$iv$iv":I
    .end local v25    # "this_$iv$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .end local v26    # "$i$f$isKind-H91voCI$ui":I
    :goto_13
    if-eqz v1, :cond_28

    instance-of v1, v8, Landroidx/compose/ui/node/DelegatingNode;

    if-eqz v1, :cond_28

    .line 453
    const/4 v1, 0x0

    .line 454
    .local v1, "count$iv$iv":I
    move-object/from16 v25, v8

    check-cast v25, Landroidx/compose/ui/node/DelegatingNode;

    .local v25, "this_$iv$iv$iv":Landroidx/compose/ui/node/DelegatingNode;
    const/16 v26, 0x0

    .line 455
    .local v26, "$i$f$forEachImmediateDelegate$ui":I
    invoke-virtual/range {v25 .. v25}, Landroidx/compose/ui/node/DelegatingNode;->getDelegate$ui()Landroidx/compose/ui/Modifier$Node;

    move-result-object v27

    .line 456
    .local v27, "node$iv$iv$iv":Landroidx/compose/ui/Modifier$Node;
    :goto_14
    if-eqz v27, :cond_26

    .line 457
    move-object/from16 v28, v27

    .local v28, "next$iv$iv":Landroidx/compose/ui/Modifier$Node;
    const/16 v29, 0x0

    .line 458
    .local v29, "$i$a$-forEachImmediateDelegate$ui-DelegatableNodeKt$dispatchForKind$1$iv$iv":I
    move/from16 v30, v19

    .local v30, "$v$c$androidx-compose-ui-node-NodeKind$-kind$0$iv$iv$iv":I
    move-object/from16 v31, v28

    .local v31, "this_$iv$iv$iv":Landroidx/compose/ui/Modifier$Node;
    const/16 v32, 0x0

    .line 452
    .local v32, "$i$f$isKind-H91voCI$ui":I
    invoke-virtual/range {v31 .. v31}, Landroidx/compose/ui/Modifier$Node;->getKindSet$ui()I

    move-result v33

    and-int v33, v33, v30

    if-eqz v33, :cond_1f

    const/16 v30, 0x1

    goto :goto_15

    :cond_1f
    const/16 v30, 0x0

    .line 458
    .end local v30    # "$v$c$androidx-compose-ui-node-NodeKind$-kind$0$iv$iv$iv":I
    .end local v31    # "this_$iv$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .end local v32    # "$i$f$isKind-H91voCI$ui":I
    :goto_15
    if-eqz v30, :cond_25

    .line 459
    add-int/lit8 v1, v1, 0x1

    .line 460
    move-object/from16 v30, v3

    const/4 v3, 0x1

    .end local v3    # "$this$visitAncestors_u2dY_u2dYKmho_u24default$iv":Landroidx/compose/ui/node/DelegatableNode;
    .local v30, "$this$visitAncestors_u2dY_u2dYKmho_u24default$iv":Landroidx/compose/ui/node/DelegatableNode;
    if-ne v1, v3, :cond_20

    .line 461
    move-object/from16 v8, v28

    move/from16 v35, v4

    move-object/from16 v4, v28

    goto :goto_18

    .line 465
    :cond_20
    if-nez v22, :cond_21

    const/4 v3, 0x0

    .line 466
    .local v3, "$i$f$mutableVectorOf":I
    nop

    .line 467
    move/from16 v31, v1

    .end local v1    # "count$iv$iv":I
    .local v31, "count$iv$iv":I
    const/16 v1, 0x10

    .local v1, "capacity$iv$iv$iv$iv":I
    const/16 v32, 0x0

    .line 468
    .local v32, "$i$f$MutableVector":I
    move/from16 v33, v3

    .end local v3    # "$i$f$mutableVectorOf":I
    .restart local v33    # "$i$f$mutableVectorOf":I
    new-instance v3, Landroidx/compose/runtime/collection/MutableVector;

    move/from16 v35, v4

    .end local v4    # "$v$c$androidx-compose-ui-node-NodeKind$-type$0$iv":I
    .local v35, "$v$c$androidx-compose-ui-node-NodeKind$-type$0$iv":I
    new-array v4, v1, [Landroidx/compose/ui/Modifier$Node;

    move/from16 v38, v1

    const/4 v1, 0x0

    .end local v1    # "capacity$iv$iv$iv$iv":I
    .local v38, "capacity$iv$iv$iv$iv":I
    invoke-direct {v3, v4, v1}, Landroidx/compose/runtime/collection/MutableVector;-><init>([Ljava/lang/Object;I)V

    .line 466
    .end local v32    # "$i$f$MutableVector":I
    .end local v38    # "capacity$iv$iv$iv$iv":I
    goto :goto_16

    .line 465
    .end local v31    # "count$iv$iv":I
    .end local v33    # "$i$f$mutableVectorOf":I
    .end local v35    # "$v$c$androidx-compose-ui-node-NodeKind$-type$0$iv":I
    .local v1, "count$iv$iv":I
    .restart local v4    # "$v$c$androidx-compose-ui-node-NodeKind$-type$0$iv":I
    :cond_21
    move/from16 v31, v1

    move/from16 v35, v4

    .end local v1    # "count$iv$iv":I
    .end local v4    # "$v$c$androidx-compose-ui-node-NodeKind$-type$0$iv":I
    .restart local v31    # "count$iv$iv":I
    .restart local v35    # "$v$c$androidx-compose-ui-node-NodeKind$-type$0$iv":I
    move-object/from16 v3, v22

    :goto_16
    nop

    .line 469
    .end local v22    # "stack$iv$iv":Ljava/lang/Object;
    .local v3, "stack$iv$iv":Ljava/lang/Object;
    move-object v1, v8

    .line 470
    .local v1, "theNode$iv$iv":Landroidx/compose/ui/Modifier$Node;
    if-eqz v1, :cond_23

    .line 471
    if-eqz v3, :cond_22

    invoke-virtual {v3, v1}, Landroidx/compose/runtime/collection/MutableVector;->add(Ljava/lang/Object;)Z

    .line 472
    :cond_22
    const/4 v4, 0x0

    move-object v8, v4

    .line 474
    :cond_23
    if-eqz v3, :cond_24

    move-object/from16 v4, v28

    .end local v28    # "next$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .local v4, "next$iv$iv":Landroidx/compose/ui/Modifier$Node;
    invoke-virtual {v3, v4}, Landroidx/compose/runtime/collection/MutableVector;->add(Ljava/lang/Object;)Z

    goto :goto_17

    .end local v4    # "next$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .restart local v28    # "next$iv$iv":Landroidx/compose/ui/Modifier$Node;
    :cond_24
    move-object/from16 v4, v28

    .line 477
    .end local v1    # "theNode$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .end local v28    # "next$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .restart local v4    # "next$iv$iv":Landroidx/compose/ui/Modifier$Node;
    :goto_17
    move-object/from16 v22, v3

    move/from16 v1, v31

    goto :goto_18

    .line 458
    .end local v30    # "$this$visitAncestors_u2dY_u2dYKmho_u24default$iv":Landroidx/compose/ui/node/DelegatableNode;
    .end local v31    # "count$iv$iv":I
    .end local v35    # "$v$c$androidx-compose-ui-node-NodeKind$-type$0$iv":I
    .local v1, "count$iv$iv":I
    .local v3, "$this$visitAncestors_u2dY_u2dYKmho_u24default$iv":Landroidx/compose/ui/node/DelegatableNode;
    .local v4, "$v$c$androidx-compose-ui-node-NodeKind$-type$0$iv":I
    .restart local v22    # "stack$iv$iv":Ljava/lang/Object;
    .restart local v28    # "next$iv$iv":Landroidx/compose/ui/Modifier$Node;
    :cond_25
    move-object/from16 v30, v3

    move/from16 v35, v4

    move-object/from16 v4, v28

    .line 477
    .end local v3    # "$this$visitAncestors_u2dY_u2dYKmho_u24default$iv":Landroidx/compose/ui/node/DelegatableNode;
    .end local v28    # "next$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .local v4, "next$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .restart local v30    # "$this$visitAncestors_u2dY_u2dYKmho_u24default$iv":Landroidx/compose/ui/node/DelegatableNode;
    .restart local v35    # "$v$c$androidx-compose-ui-node-NodeKind$-type$0$iv":I
    :goto_18
    nop

    .line 457
    .end local v4    # "next$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .end local v29    # "$i$a$-forEachImmediateDelegate$ui-DelegatableNodeKt$dispatchForKind$1$iv$iv":I
    nop

    .line 478
    invoke-virtual/range {v27 .. v27}, Landroidx/compose/ui/Modifier$Node;->getChild$ui()Landroidx/compose/ui/Modifier$Node;

    move-result-object v27

    move-object/from16 v3, v30

    move/from16 v4, v35

    goto :goto_14

    .line 480
    .end local v30    # "$this$visitAncestors_u2dY_u2dYKmho_u24default$iv":Landroidx/compose/ui/node/DelegatableNode;
    .end local v35    # "$v$c$androidx-compose-ui-node-NodeKind$-type$0$iv":I
    .restart local v3    # "$this$visitAncestors_u2dY_u2dYKmho_u24default$iv":Landroidx/compose/ui/node/DelegatableNode;
    .local v4, "$v$c$androidx-compose-ui-node-NodeKind$-type$0$iv":I
    :cond_26
    move-object/from16 v30, v3

    move/from16 v35, v4

    .line 481
    .end local v3    # "$this$visitAncestors_u2dY_u2dYKmho_u24default$iv":Landroidx/compose/ui/node/DelegatableNode;
    .end local v4    # "$v$c$androidx-compose-ui-node-NodeKind$-type$0$iv":I
    .end local v25    # "this_$iv$iv$iv":Landroidx/compose/ui/node/DelegatingNode;
    .end local v26    # "$i$f$forEachImmediateDelegate$ui":I
    .end local v27    # "node$iv$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .restart local v30    # "$this$visitAncestors_u2dY_u2dYKmho_u24default$iv":Landroidx/compose/ui/node/DelegatableNode;
    .restart local v35    # "$v$c$androidx-compose-ui-node-NodeKind$-type$0$iv":I
    const/4 v3, 0x1

    if-ne v1, v3, :cond_27

    .line 483
    move/from16 v1, v24

    move-object/from16 v3, v30

    move/from16 v4, v35

    goto/16 :goto_11

    .line 481
    :cond_27
    move/from16 v1, v24

    goto :goto_19

    .line 451
    .end local v1    # "count$iv$iv":I
    .end local v30    # "$this$visitAncestors_u2dY_u2dYKmho_u24default$iv":Landroidx/compose/ui/node/DelegatableNode;
    .end local v35    # "$v$c$androidx-compose-ui-node-NodeKind$-type$0$iv":I
    .restart local v3    # "$this$visitAncestors_u2dY_u2dYKmho_u24default$iv":Landroidx/compose/ui/node/DelegatableNode;
    .restart local v4    # "$v$c$androidx-compose-ui-node-NodeKind$-type$0$iv":I
    :cond_28
    move-object/from16 v30, v3

    move/from16 v35, v4

    .line 486
    .end local v3    # "$this$visitAncestors_u2dY_u2dYKmho_u24default$iv":Landroidx/compose/ui/node/DelegatableNode;
    .end local v4    # "$v$c$androidx-compose-ui-node-NodeKind$-type$0$iv":I
    .restart local v30    # "$this$visitAncestors_u2dY_u2dYKmho_u24default$iv":Landroidx/compose/ui/node/DelegatableNode;
    .restart local v35    # "$v$c$androidx-compose-ui-node-NodeKind$-type$0$iv":I
    move/from16 v1, v24

    .end local v24    # "shouldClearFocusFromPreviousActiveNode":Z
    .local v1, "shouldClearFocusFromPreviousActiveNode":Z
    :goto_19
    invoke-static/range {v22 .. v22}, Landroidx/compose/ui/node/DelegatableNodeKt;->access$pop(Landroidx/compose/runtime/collection/MutableVector;)Landroidx/compose/ui/Modifier$Node;

    move-result-object v8

    move-object/from16 v3, v30

    move/from16 v4, v35

    goto/16 :goto_11

    .line 488
    .end local v30    # "$this$visitAncestors_u2dY_u2dYKmho_u24default$iv":Landroidx/compose/ui/node/DelegatableNode;
    .end local v35    # "$v$c$androidx-compose-ui-node-NodeKind$-type$0$iv":I
    .restart local v3    # "$this$visitAncestors_u2dY_u2dYKmho_u24default$iv":Landroidx/compose/ui/node/DelegatableNode;
    .restart local v4    # "$v$c$androidx-compose-ui-node-NodeKind$-type$0$iv":I
    :cond_29
    move/from16 v24, v1

    move-object/from16 v30, v3

    move/from16 v35, v4

    .line 432
    .end local v1    # "shouldClearFocusFromPreviousActiveNode":Z
    .end local v3    # "$this$visitAncestors_u2dY_u2dYKmho_u24default$iv":Landroidx/compose/ui/node/DelegatableNode;
    .end local v4    # "$v$c$androidx-compose-ui-node-NodeKind$-type$0$iv":I
    .end local v8    # "node$iv$iv":Ljava/lang/Object;
    .end local v19    # "$v$c$androidx-compose-ui-node-NodeKind$-kind$0$iv$iv":I
    .end local v20    # "$this$dispatchForKind_u2d6rFNWt0$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .end local v21    # "$i$f$dispatchForKind-6rFNWt0":I
    .end local v22    # "stack$iv$iv":Ljava/lang/Object;
    .restart local v24    # "shouldClearFocusFromPreviousActiveNode":Z
    .restart local v30    # "$this$visitAncestors_u2dY_u2dYKmho_u24default$iv":Landroidx/compose/ui/node/DelegatableNode;
    .restart local v35    # "$v$c$androidx-compose-ui-node-NodeKind$-type$0$iv":I
    nop

    .line 445
    .end local v17    # "it$iv":Landroidx/compose/ui/Modifier$Node;
    .end local v18    # "$i$a$-visitAncestors-DelegatableNodeKt$visitAncestors$2$iv":I
    goto :goto_1a

    .line 444
    .end local v24    # "shouldClearFocusFromPreviousActiveNode":Z
    .end local v30    # "$this$visitAncestors_u2dY_u2dYKmho_u24default$iv":Landroidx/compose/ui/node/DelegatableNode;
    .end local v35    # "$v$c$androidx-compose-ui-node-NodeKind$-type$0$iv":I
    .restart local v1    # "shouldClearFocusFromPreviousActiveNode":Z
    .restart local v3    # "$this$visitAncestors_u2dY_u2dYKmho_u24default$iv":Landroidx/compose/ui/node/DelegatableNode;
    .restart local v4    # "$v$c$androidx-compose-ui-node-NodeKind$-type$0$iv":I
    :cond_2a
    move-object/from16 v30, v3

    move/from16 v35, v4

    .line 489
    .end local v3    # "$this$visitAncestors_u2dY_u2dYKmho_u24default$iv":Landroidx/compose/ui/node/DelegatableNode;
    .end local v4    # "$v$c$androidx-compose-ui-node-NodeKind$-type$0$iv":I
    .restart local v30    # "$this$visitAncestors_u2dY_u2dYKmho_u24default$iv":Landroidx/compose/ui/node/DelegatableNode;
    .restart local v35    # "$v$c$androidx-compose-ui-node-NodeKind$-type$0$iv":I
    :goto_1a
    invoke-virtual {v6}, Landroidx/compose/ui/Modifier$Node;->getParent$ui()Landroidx/compose/ui/Modifier$Node;

    move-result-object v6

    move-object/from16 v3, v30

    move/from16 v4, v35

    const/4 v8, 0x0

    goto/16 :goto_10

    .line 443
    .end local v30    # "$this$visitAncestors_u2dY_u2dYKmho_u24default$iv":Landroidx/compose/ui/node/DelegatableNode;
    .end local v35    # "$v$c$androidx-compose-ui-node-NodeKind$-type$0$iv":I
    .restart local v3    # "$this$visitAncestors_u2dY_u2dYKmho_u24default$iv":Landroidx/compose/ui/node/DelegatableNode;
    .restart local v4    # "$v$c$androidx-compose-ui-node-NodeKind$-type$0$iv":I
    :cond_2b
    move-object/from16 v30, v3

    move/from16 v35, v4

    .end local v3    # "$this$visitAncestors_u2dY_u2dYKmho_u24default$iv":Landroidx/compose/ui/node/DelegatableNode;
    .end local v4    # "$v$c$androidx-compose-ui-node-NodeKind$-type$0$iv":I
    .restart local v30    # "$this$visitAncestors_u2dY_u2dYKmho_u24default$iv":Landroidx/compose/ui/node/DelegatableNode;
    .restart local v35    # "$v$c$androidx-compose-ui-node-NodeKind$-type$0$iv":I
    goto :goto_1b

    .line 442
    .end local v30    # "$this$visitAncestors_u2dY_u2dYKmho_u24default$iv":Landroidx/compose/ui/node/DelegatableNode;
    .end local v35    # "$v$c$androidx-compose-ui-node-NodeKind$-type$0$iv":I
    .restart local v3    # "$this$visitAncestors_u2dY_u2dYKmho_u24default$iv":Landroidx/compose/ui/node/DelegatableNode;
    .restart local v4    # "$v$c$androidx-compose-ui-node-NodeKind$-type$0$iv":I
    :cond_2c
    move-object/from16 v30, v3

    move/from16 v35, v4

    .line 492
    .end local v3    # "$this$visitAncestors_u2dY_u2dYKmho_u24default$iv":Landroidx/compose/ui/node/DelegatableNode;
    .end local v4    # "$v$c$androidx-compose-ui-node-NodeKind$-type$0$iv":I
    .restart local v30    # "$this$visitAncestors_u2dY_u2dYKmho_u24default$iv":Landroidx/compose/ui/node/DelegatableNode;
    .restart local v35    # "$v$c$androidx-compose-ui-node-NodeKind$-type$0$iv":I
    :goto_1b
    invoke-virtual {v15}, Landroidx/compose/ui/node/LayoutNode;->getParent$ui()Landroidx/compose/ui/node/LayoutNode;

    move-result-object v15

    .line 493
    if-eqz v15, :cond_2d

    invoke-virtual {v15}, Landroidx/compose/ui/node/LayoutNode;->getNodes$ui()Landroidx/compose/ui/node/NodeChain;

    move-result-object v3

    if-eqz v3, :cond_2d

    invoke-virtual {v3}, Landroidx/compose/ui/node/NodeChain;->getTail$ui()Landroidx/compose/ui/Modifier$Node;

    move-result-object v3

    goto :goto_1c

    :cond_2d
    const/4 v3, 0x0

    :goto_1c
    move-object v6, v3

    move-object/from16 v3, v30

    move/from16 v4, v35

    const/4 v8, 0x0

    .end local v16    # "head$iv$iv":Landroidx/compose/ui/Modifier$Node;
    goto/16 :goto_f

    .line 495
    .end local v30    # "$this$visitAncestors_u2dY_u2dYKmho_u24default$iv":Landroidx/compose/ui/node/DelegatableNode;
    .end local v35    # "$v$c$androidx-compose-ui-node-NodeKind$-type$0$iv":I
    .restart local v3    # "$this$visitAncestors_u2dY_u2dYKmho_u24default$iv":Landroidx/compose/ui/node/DelegatableNode;
    .restart local v4    # "$v$c$androidx-compose-ui-node-NodeKind$-type$0$iv":I
    :cond_2e
    move-object/from16 v30, v3

    move/from16 v35, v4

    .line 432
    .end local v3    # "$this$visitAncestors_u2dY_u2dYKmho_u24default$iv":Landroidx/compose/ui/node/DelegatableNode;
    .end local v4    # "$v$c$androidx-compose-ui-node-NodeKind$-type$0$iv":I
    .end local v6    # "node$iv$iv":Landroidx/compose/ui/Modifier$Node;
    .end local v11    # "includeSelf$iv$iv":Z
    .end local v12    # "mask$iv$iv":I
    .end local v13    # "$this$visitAncestors$iv$iv":Landroidx/compose/ui/node/DelegatableNode;
    .end local v14    # "$i$f$visitAncestors":I
    .end local v15    # "layout$iv$iv":Landroidx/compose/ui/node/LayoutNode;
    .restart local v30    # "$this$visitAncestors_u2dY_u2dYKmho_u24default$iv":Landroidx/compose/ui/node/DelegatableNode;
    .restart local v35    # "$v$c$androidx-compose-ui-node-NodeKind$-type$0$iv":I
    nop

    .line 98
    .end local v7    # "includeSelf$iv":Z
    .end local v10    # "$i$f$visitAncestors-Y-YKmho":I
    .end local v30    # "$this$visitAncestors_u2dY_u2dYKmho_u24default$iv":Landroidx/compose/ui/node/DelegatableNode;
    .end local v35    # "$v$c$androidx-compose-ui-node-NodeKind$-type$0$iv":I
    if-eqz v1, :cond_31

    .line 99
    if-eqz v2, :cond_2f

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v6, 0x0

    invoke-static {v2, v6, v4, v4, v3}, Landroidx/compose/ui/focus/FocusTransactionsKt;->clearFocus$default(Landroidx/compose/ui/focus/FocusTargetNode;ZZILjava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_30

    const/4 v3, 0x1

    goto :goto_1d

    :cond_2f
    const/4 v6, 0x0

    :cond_30
    move v3, v6

    :goto_1d
    if-eqz v3, :cond_31

    .line 100
    return v6

    .line 104
    :cond_31
    invoke-static {v0}, Landroidx/compose/ui/focus/FocusTransactionsKt;->grantFocus(Landroidx/compose/ui/focus/FocusTargetNode;)Z

    .line 107
    sget-boolean v3, Landroidx/compose/ui/ComposeUiFlags;->isOptimizedFocusEventDispatchEnabled:Z

    if-eqz v3, :cond_32

    if-eqz v1, :cond_32

    .line 108
    if-eqz v2, :cond_32

    sget-object v3, Landroidx/compose/ui/focus/FocusStateImpl;->Active:Landroidx/compose/ui/focus/FocusStateImpl;

    check-cast v3, Landroidx/compose/ui/focus/FocusState;

    sget-object v4, Landroidx/compose/ui/focus/FocusStateImpl;->Inactive:Landroidx/compose/ui/focus/FocusStateImpl;

    check-cast v4, Landroidx/compose/ui/focus/FocusState;

    invoke-virtual {v2, v3, v4}, Landroidx/compose/ui/focus/FocusTargetNode;->dispatchFocusCallbacks$ui(Landroidx/compose/ui/focus/FocusState;Landroidx/compose/ui/focus/FocusState;)V

    .line 113
    :cond_32
    if-eqz v5, :cond_35

    move-object v3, v5

    .local v3, "this_$iv":Landroidx/compose/runtime/collection/MutableVector;
    const/4 v4, 0x0

    .line 496
    .local v4, "$i$f$forEachReversed":I
    invoke-virtual {v3}, Landroidx/compose/runtime/collection/MutableVector;->getSize()I

    move-result v6

    const/16 v34, 0x1

    add-int/lit8 v6, v6, -0x1

    .line 497
    .local v6, "i$iv":I
    iget-object v7, v3, Landroidx/compose/runtime/collection/MutableVector;->content:[Ljava/lang/Object;

    .line 498
    .local v7, "content$iv":[Ljava/lang/Object;
    array-length v8, v7

    if-ge v6, v8, :cond_35

    .line 499
    :goto_1e
    if-ltz v6, :cond_34

    .line 500
    aget-object v8, v7, v6

    check-cast v8, Landroidx/compose/ui/focus/FocusTargetNode;

    .local v8, "it":Landroidx/compose/ui/focus/FocusTargetNode;
    const/4 v10, 0x0

    .line 115
    .local v10, "$i$a$-forEachReversed-FocusTransactionsKt$performRequestFocus$3":I
    invoke-interface/range {v36 .. v36}, Landroidx/compose/ui/focus/FocusOwner;->getActiveFocusTargetNode()Landroidx/compose/ui/focus/FocusTargetNode;

    move-result-object v11

    if-eq v11, v0, :cond_33

    .line 117
    const/16 v23, 0x0

    return v23

    .line 119
    :cond_33
    sget-object v11, Landroidx/compose/ui/focus/FocusStateImpl;->ActiveParent:Landroidx/compose/ui/focus/FocusStateImpl;

    check-cast v11, Landroidx/compose/ui/focus/FocusState;

    sget-object v12, Landroidx/compose/ui/focus/FocusStateImpl;->Inactive:Landroidx/compose/ui/focus/FocusStateImpl;

    check-cast v12, Landroidx/compose/ui/focus/FocusState;

    invoke-virtual {v8, v11, v12}, Landroidx/compose/ui/focus/FocusTargetNode;->dispatchFocusCallbacks$ui(Landroidx/compose/ui/focus/FocusState;Landroidx/compose/ui/focus/FocusState;)V

    .line 120
    nop

    .line 500
    .end local v8    # "it":Landroidx/compose/ui/focus/FocusTargetNode;
    .end local v10    # "$i$a$-forEachReversed-FocusTransactionsKt$performRequestFocus$3":I
    nop

    .line 501
    add-int/lit8 v6, v6, -0x1

    goto :goto_1e

    .line 503
    :cond_34
    nop

    .line 124
    .end local v3    # "this_$iv":Landroidx/compose/runtime/collection/MutableVector;
    .end local v4    # "$i$f$forEachReversed":I
    .end local v6    # "i$iv":I
    .end local v7    # "content$iv":[Ljava/lang/Object;
    :cond_35
    move-object v3, v9

    .restart local v3    # "this_$iv":Landroidx/compose/runtime/collection/MutableVector;
    const/4 v4, 0x0

    .line 504
    .restart local v4    # "$i$f$forEachReversed":I
    invoke-virtual {v3}, Landroidx/compose/runtime/collection/MutableVector;->getSize()I

    move-result v6

    const/16 v34, 0x1

    add-int/lit8 v6, v6, -0x1

    .line 505
    .restart local v6    # "i$iv":I
    iget-object v7, v3, Landroidx/compose/runtime/collection/MutableVector;->content:[Ljava/lang/Object;

    .line 506
    .restart local v7    # "content$iv":[Ljava/lang/Object;
    array-length v8, v7

    if-ge v6, v8, :cond_39

    .line 507
    :goto_1f
    if-ltz v6, :cond_38

    .line 508
    aget-object v8, v7, v6

    check-cast v8, Landroidx/compose/ui/focus/FocusTargetNode;

    .restart local v8    # "it":Landroidx/compose/ui/focus/FocusTargetNode;
    const/4 v10, 0x0

    .line 126
    .local v10, "$i$a$-forEachReversed-FocusTransactionsKt$performRequestFocus$4":I
    invoke-interface/range {v36 .. v36}, Landroidx/compose/ui/focus/FocusOwner;->getActiveFocusTargetNode()Landroidx/compose/ui/focus/FocusTargetNode;

    move-result-object v11

    if-eq v11, v0, :cond_36

    .line 128
    const/16 v23, 0x0

    return v23

    .line 130
    :cond_36
    nop

    .line 131
    if-ne v8, v2, :cond_37

    sget-object v11, Landroidx/compose/ui/focus/FocusStateImpl;->Active:Landroidx/compose/ui/focus/FocusStateImpl;

    goto :goto_20

    :cond_37
    sget-object v11, Landroidx/compose/ui/focus/FocusStateImpl;->Inactive:Landroidx/compose/ui/focus/FocusStateImpl;

    :goto_20
    check-cast v11, Landroidx/compose/ui/focus/FocusState;

    .line 132
    sget-object v12, Landroidx/compose/ui/focus/FocusStateImpl;->ActiveParent:Landroidx/compose/ui/focus/FocusStateImpl;

    check-cast v12, Landroidx/compose/ui/focus/FocusState;

    .line 130
    invoke-virtual {v8, v11, v12}, Landroidx/compose/ui/focus/FocusTargetNode;->dispatchFocusCallbacks$ui(Landroidx/compose/ui/focus/FocusState;Landroidx/compose/ui/focus/FocusState;)V

    .line 134
    nop

    .line 508
    .end local v8    # "it":Landroidx/compose/ui/focus/FocusTargetNode;
    .end local v10    # "$i$a$-forEachReversed-FocusTransactionsKt$performRequestFocus$4":I
    nop

    .line 509
    add-int/lit8 v6, v6, -0x1

    goto :goto_1f

    .line 511
    :cond_38
    nop

    .line 137
    .end local v3    # "this_$iv":Landroidx/compose/runtime/collection/MutableVector;
    .end local v4    # "$i$f$forEachReversed":I
    .end local v6    # "i$iv":I
    .end local v7    # "content$iv":[Ljava/lang/Object;
    :cond_39
    invoke-interface/range {v36 .. v36}, Landroidx/compose/ui/focus/FocusOwner;->getActiveFocusTargetNode()Landroidx/compose/ui/focus/FocusTargetNode;

    move-result-object v3

    if-eq v3, v0, :cond_3a

    .line 139
    const/16 v23, 0x0

    return v23

    .line 143
    :cond_3a
    const/16 v23, 0x0

    move-object/from16 v3, v37

    check-cast v3, Landroidx/compose/ui/focus/FocusState;

    sget-object v4, Landroidx/compose/ui/focus/FocusStateImpl;->Active:Landroidx/compose/ui/focus/FocusStateImpl;

    check-cast v4, Landroidx/compose/ui/focus/FocusState;

    invoke-virtual {v0, v3, v4}, Landroidx/compose/ui/focus/FocusTargetNode;->dispatchFocusCallbacks$ui(Landroidx/compose/ui/focus/FocusState;Landroidx/compose/ui/focus/FocusState;)V

    .line 146
    invoke-interface/range {v36 .. v36}, Landroidx/compose/ui/focus/FocusOwner;->getActiveFocusTargetNode()Landroidx/compose/ui/focus/FocusTargetNode;

    move-result-object v3

    if-eq v3, v0, :cond_3b

    .line 148
    return v23

    .line 152
    :cond_3b
    sget-boolean v3, Landroidx/compose/ui/ComposeUiFlags;->isViewFocusFixEnabled:Z

    if-eqz v3, :cond_3c

    move-object v3, v0

    check-cast v3, Landroidx/compose/ui/node/DelegatableNode;

    invoke-static {v3}, Landroidx/compose/ui/node/DelegatableNodeKt;->requireLayoutNode(Landroidx/compose/ui/node/DelegatableNode;)Landroidx/compose/ui/node/LayoutNode;

    move-result-object v3

    invoke-virtual {v3}, Landroidx/compose/ui/node/LayoutNode;->getInteropView()Landroid/view/View;

    move-result-object v3

    if-nez v3, :cond_3c

    .line 154
    sget-object v3, Landroidx/compose/ui/focus/FocusDirection;->Companion:Landroidx/compose/ui/focus/FocusDirection$Companion;

    invoke-virtual {v3}, Landroidx/compose/ui/focus/FocusDirection$Companion;->getNext-dhqQ-8s()I

    move-result v3

    invoke-static {v3}, Landroidx/compose/ui/focus/FocusDirection;->box-impl(I)Landroidx/compose/ui/focus/FocusDirection;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v0, v3, v4}, Landroidx/compose/ui/focus/FocusTransactionsKt;->requestOwnerFocus-Etdf9zw(Landroidx/compose/ui/focus/FocusTargetNode;Landroidx/compose/ui/focus/FocusDirection;Landroidx/compose/ui/geometry/Rect;)Z

    .line 157
    :cond_3c
    const/16 v34, 0x1

    return v34
.end method

.method private static final requestOwnerFocus-Etdf9zw(Landroidx/compose/ui/focus/FocusTargetNode;Landroidx/compose/ui/focus/FocusDirection;Landroidx/compose/ui/geometry/Rect;)Z
    .locals 1
    .param p0, "$this$requestOwnerFocus_u2dEtdf9zw"    # Landroidx/compose/ui/focus/FocusTargetNode;
    .param p1, "focusDirection"    # Landroidx/compose/ui/focus/FocusDirection;
    .param p2, "previouslyFocusedRect"    # Landroidx/compose/ui/geometry/Rect;

    .line 286
    move-object v0, p0

    check-cast v0, Landroidx/compose/ui/node/DelegatableNode;

    invoke-static {v0}, Landroidx/compose/ui/node/DelegatableNodeKt;->requireOwner(Landroidx/compose/ui/node/DelegatableNode;)Landroidx/compose/ui/node/Owner;

    move-result-object v0

    invoke-interface {v0}, Landroidx/compose/ui/node/Owner;->getFocusOwner()Landroidx/compose/ui/focus/FocusOwner;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroidx/compose/ui/focus/FocusOwner;->requestOwnerFocus-7o62pno(Landroidx/compose/ui/focus/FocusDirection;Landroidx/compose/ui/geometry/Rect;)Z

    move-result v0

    return v0
.end method

.method static synthetic requestOwnerFocus-Etdf9zw$default(Landroidx/compose/ui/focus/FocusTargetNode;Landroidx/compose/ui/focus/FocusDirection;Landroidx/compose/ui/geometry/Rect;ILjava/lang/Object;)Z
    .locals 1

    .line 283
    and-int/lit8 p4, p3, 0x1

    const/4 v0, 0x0

    if-eqz p4, :cond_0

    .line 284
    move-object p1, v0

    .line 283
    :cond_0
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_1

    .line 285
    move-object p2, v0

    .line 283
    :cond_1
    invoke-static {p0, p1, p2}, Landroidx/compose/ui/focus/FocusTransactionsKt;->requestOwnerFocus-Etdf9zw(Landroidx/compose/ui/focus/FocusTargetNode;Landroidx/compose/ui/focus/FocusDirection;Landroidx/compose/ui/geometry/Rect;)Z

    move-result p0

    return p0
.end method

.method private static final requireActiveChild(Landroidx/compose/ui/focus/FocusTargetNode;)Landroidx/compose/ui/focus/FocusTargetNode;
    .locals 2
    .param p0, "$this$requireActiveChild"    # Landroidx/compose/ui/focus/FocusTargetNode;

    .line 289
    invoke-static {p0}, Landroidx/compose/ui/focus/FocusTraversalKt;->getActiveChild(Landroidx/compose/ui/focus/FocusTargetNode;)Landroidx/compose/ui/focus/FocusTargetNode;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    .line 512
    :cond_0
    const/4 v0, 0x0

    .line 289
    .local v0, "$i$a$-requireNotNull-FocusTransactionsKt$requireActiveChild$1":I
    nop

    .end local v0    # "$i$a$-requireNotNull-FocusTransactionsKt$requireActiveChild$1":I
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "ActiveParent with no focused child"

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
