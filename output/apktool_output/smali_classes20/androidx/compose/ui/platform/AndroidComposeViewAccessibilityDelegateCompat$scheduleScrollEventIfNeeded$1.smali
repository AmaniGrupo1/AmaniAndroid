.class final Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat$scheduleScrollEventIfNeeded$1;
.super Lkotlin/jvm/internal/Lambda;
.source "AndroidComposeViewAccessibilityDelegateCompat.android.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->scheduleScrollEventIfNeeded(Landroidx/compose/ui/platform/ScrollObservationScope;)V
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
.field final synthetic $scrollObservationScope:Landroidx/compose/ui/platform/ScrollObservationScope;

.field final synthetic this$0:Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;


# direct methods
.method constructor <init>(Landroidx/compose/ui/platform/ScrollObservationScope;Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;)V
    .locals 1

    iput-object p1, p0, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat$scheduleScrollEventIfNeeded$1;->$scrollObservationScope:Landroidx/compose/ui/platform/ScrollObservationScope;

    iput-object p2, p0, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat$scheduleScrollEventIfNeeded$1;->this$0:Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 2754
    invoke-virtual {p0}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat$scheduleScrollEventIfNeeded$1;->invoke()V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method public final invoke()V
    .locals 11

    .line 2758
    iget-object v0, p0, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat$scheduleScrollEventIfNeeded$1;->$scrollObservationScope:Landroidx/compose/ui/platform/ScrollObservationScope;

    invoke-virtual {v0}, Landroidx/compose/ui/platform/ScrollObservationScope;->getHorizontalScrollAxisRange()Landroidx/compose/ui/semantics/ScrollAxisRange;

    move-result-object v0

    .line 2759
    .local v0, "newXState":Landroidx/compose/ui/semantics/ScrollAxisRange;
    iget-object v1, p0, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat$scheduleScrollEventIfNeeded$1;->$scrollObservationScope:Landroidx/compose/ui/platform/ScrollObservationScope;

    invoke-virtual {v1}, Landroidx/compose/ui/platform/ScrollObservationScope;->getVerticalScrollAxisRange()Landroidx/compose/ui/semantics/ScrollAxisRange;

    move-result-object v1

    .line 2760
    .local v1, "newYState":Landroidx/compose/ui/semantics/ScrollAxisRange;
    iget-object v2, p0, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat$scheduleScrollEventIfNeeded$1;->$scrollObservationScope:Landroidx/compose/ui/platform/ScrollObservationScope;

    invoke-virtual {v2}, Landroidx/compose/ui/platform/ScrollObservationScope;->getOldXValue()Ljava/lang/Float;

    move-result-object v2

    .line 2761
    .local v2, "oldXValue":Ljava/lang/Float;
    iget-object v3, p0, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat$scheduleScrollEventIfNeeded$1;->$scrollObservationScope:Landroidx/compose/ui/platform/ScrollObservationScope;

    invoke-virtual {v3}, Landroidx/compose/ui/platform/ScrollObservationScope;->getOldYValue()Ljava/lang/Float;

    move-result-object v3

    .line 2764
    .local v3, "oldYValue":Ljava/lang/Float;
    const/4 v4, 0x0

    if-eqz v0, :cond_0

    if-eqz v2, :cond_0

    .line 2765
    invoke-virtual {v0}, Landroidx/compose/ui/semantics/ScrollAxisRange;->getValue()Lkotlin/jvm/functions/Function0;

    move-result-object v5

    invoke-interface {v5}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Number;

    invoke-virtual {v5}, Ljava/lang/Number;->floatValue()F

    move-result v5

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v6

    sub-float/2addr v5, v6

    goto :goto_0

    .line 2767
    :cond_0
    move v5, v4

    .line 2764
    :goto_0
    nop

    .line 2763
    nop

    .line 2770
    .local v5, "deltaX":F
    if-eqz v1, :cond_1

    if-eqz v3, :cond_1

    .line 2771
    invoke-virtual {v1}, Landroidx/compose/ui/semantics/ScrollAxisRange;->getValue()Lkotlin/jvm/functions/Function0;

    move-result-object v6

    invoke-interface {v6}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Number;

    invoke-virtual {v6}, Ljava/lang/Number;->floatValue()F

    move-result v6

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v7

    sub-float/2addr v6, v7

    goto :goto_1

    .line 2773
    :cond_1
    move v6, v4

    .line 2770
    :goto_1
    nop

    .line 2769
    nop

    .line 2776
    .local v6, "deltaY":F
    cmpg-float v7, v5, v4

    const/4 v8, 0x1

    const/4 v9, 0x0

    if-nez v7, :cond_2

    move v7, v8

    goto :goto_2

    :cond_2
    move v7, v9

    :goto_2
    if-eqz v7, :cond_4

    cmpg-float v4, v6, v4

    if-nez v4, :cond_3

    goto :goto_3

    :cond_3
    move v8, v9

    :goto_3
    if-nez v8, :cond_c

    .line 2778
    :cond_4
    iget-object v4, p0, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat$scheduleScrollEventIfNeeded$1;->this$0:Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;

    .line 2779
    iget-object v7, p0, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat$scheduleScrollEventIfNeeded$1;->$scrollObservationScope:Landroidx/compose/ui/platform/ScrollObservationScope;

    invoke-virtual {v7}, Landroidx/compose/ui/platform/ScrollObservationScope;->getSemanticsNodeId()I

    move-result v7

    .line 2778
    invoke-static {v4, v7}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->access$semanticsNodeIdToAccessibilityVirtualNodeId(Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;I)I

    move-result v4

    .line 2777
    nop

    .line 2784
    .local v4, "scrollerId":I
    iget-object v7, p0, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat$scheduleScrollEventIfNeeded$1;->this$0:Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;

    invoke-static {v7}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->access$getCurrentSemanticsNodes(Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;)Landroidx/collection/IntObjectMap;

    move-result-object v7

    iget-object v8, p0, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat$scheduleScrollEventIfNeeded$1;->this$0:Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;

    invoke-static {v8}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->access$getAccessibilityFocusedVirtualViewId$p(Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;)I

    move-result v8

    invoke-virtual {v7, v8}, Landroidx/collection/IntObjectMap;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroidx/compose/ui/semantics/SemanticsNodeWithAdjustedBounds;

    if-eqz v7, :cond_6

    iget-object v8, p0, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat$scheduleScrollEventIfNeeded$1;->this$0:Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;

    .local v7, "it":Landroidx/compose/ui/semantics/SemanticsNodeWithAdjustedBounds;
    const/4 v9, 0x0

    .line 2785
    .local v9, "$i$a$-let-AndroidComposeViewAccessibilityDelegateCompat$scheduleScrollEventIfNeeded$1$1":I
    nop

    .line 2786
    :try_start_0
    invoke-static {v8}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->access$getCurrentlyAccessibilityFocusedANI$p(Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;)Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;

    move-result-object v10

    if-eqz v10, :cond_5

    invoke-static {v8, v7}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->access$boundsInScreen(Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;Landroidx/compose/ui/semantics/SemanticsNodeWithAdjustedBounds;)Landroid/graphics/Rect;

    move-result-object v8

    invoke-virtual {v10, v8}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setBoundsInScreen(Landroid/graphics/Rect;)V

    sget-object v8, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_4

    .line 2787
    :catch_0
    move-exception v8

    .local v8, "e":Ljava/lang/IllegalStateException;
    sget-object v10, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 2794
    .end local v8    # "e":Ljava/lang/IllegalStateException;
    :cond_5
    :goto_4
    nop

    .line 2784
    .end local v7    # "it":Landroidx/compose/ui/semantics/SemanticsNodeWithAdjustedBounds;
    .end local v9    # "$i$a$-let-AndroidComposeViewAccessibilityDelegateCompat$scheduleScrollEventIfNeeded$1$1":I
    nop

    .line 2798
    :cond_6
    iget-object v7, p0, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat$scheduleScrollEventIfNeeded$1;->this$0:Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;

    invoke-static {v7}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->access$getCurrentSemanticsNodes(Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;)Landroidx/collection/IntObjectMap;

    move-result-object v7

    iget-object v8, p0, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat$scheduleScrollEventIfNeeded$1;->this$0:Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;

    invoke-static {v8}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->access$getFocusedVirtualViewId$p(Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;)I

    move-result v8

    invoke-virtual {v7, v8}, Landroidx/collection/IntObjectMap;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroidx/compose/ui/semantics/SemanticsNodeWithAdjustedBounds;

    if-eqz v7, :cond_8

    iget-object v8, p0, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat$scheduleScrollEventIfNeeded$1;->this$0:Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;

    .restart local v7    # "it":Landroidx/compose/ui/semantics/SemanticsNodeWithAdjustedBounds;
    const/4 v9, 0x0

    .line 2799
    .local v9, "$i$a$-let-AndroidComposeViewAccessibilityDelegateCompat$scheduleScrollEventIfNeeded$1$2":I
    nop

    .line 2800
    :try_start_1
    invoke-static {v8}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->access$getCurrentlyFocusedANI$p(Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;)Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;

    move-result-object v10

    if-eqz v10, :cond_7

    invoke-static {v8, v7}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->access$boundsInScreen(Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;Landroidx/compose/ui/semantics/SemanticsNodeWithAdjustedBounds;)Landroid/graphics/Rect;

    move-result-object v8

    invoke-virtual {v10, v8}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setBoundsInScreen(Landroid/graphics/Rect;)V

    sget-object v8, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_5

    .line 2801
    :catch_1
    move-exception v8

    .restart local v8    # "e":Ljava/lang/IllegalStateException;
    sget-object v10, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 2808
    .end local v8    # "e":Ljava/lang/IllegalStateException;
    :cond_7
    :goto_5
    nop

    .line 2798
    .end local v7    # "it":Landroidx/compose/ui/semantics/SemanticsNodeWithAdjustedBounds;
    .end local v9    # "$i$a$-let-AndroidComposeViewAccessibilityDelegateCompat$scheduleScrollEventIfNeeded$1$2":I
    nop

    .line 2810
    :cond_8
    iget-object v7, p0, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat$scheduleScrollEventIfNeeded$1;->this$0:Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;

    invoke-virtual {v7}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->getView()Landroidx/compose/ui/platform/AndroidComposeView;

    move-result-object v7

    invoke-virtual {v7}, Landroidx/compose/ui/platform/AndroidComposeView;->invalidate()V

    .line 2812
    iget-object v7, p0, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat$scheduleScrollEventIfNeeded$1;->this$0:Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;

    invoke-static {v7}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->access$getCurrentSemanticsNodes(Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;)Landroidx/collection/IntObjectMap;

    move-result-object v7

    invoke-virtual {v7, v4}, Landroidx/collection/IntObjectMap;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroidx/compose/ui/semantics/SemanticsNodeWithAdjustedBounds;

    if-eqz v7, :cond_b

    invoke-virtual {v7}, Landroidx/compose/ui/semantics/SemanticsNodeWithAdjustedBounds;->getSemanticsNode()Landroidx/compose/ui/semantics/SemanticsNode;

    move-result-object v7

    if-eqz v7, :cond_b

    invoke-virtual {v7}, Landroidx/compose/ui/semantics/SemanticsNode;->getLayoutNode$ui()Landroidx/compose/ui/node/LayoutNode;

    move-result-object v7

    if-eqz v7, :cond_b

    iget-object v8, p0, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat$scheduleScrollEventIfNeeded$1;->this$0:Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;

    .local v7, "layoutNode":Landroidx/compose/ui/node/LayoutNode;
    const/4 v9, 0x0

    .line 2814
    .local v9, "$i$a$-let-AndroidComposeViewAccessibilityDelegateCompat$scheduleScrollEventIfNeeded$1$3":I
    if-eqz v0, :cond_9

    .line 2815
    invoke-static {v8}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->access$getPendingHorizontalScrollEvents$p(Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;)Landroidx/collection/MutableIntObjectMap;

    move-result-object v10

    invoke-virtual {v10, v4, v0}, Landroidx/collection/MutableIntObjectMap;->set(ILjava/lang/Object;)V

    .line 2817
    :cond_9
    if-eqz v1, :cond_a

    .line 2818
    invoke-static {v8}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->access$getPendingVerticalScrollEvents$p(Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;)Landroidx/collection/MutableIntObjectMap;

    move-result-object v10

    invoke-virtual {v10, v4, v1}, Landroidx/collection/MutableIntObjectMap;->set(ILjava/lang/Object;)V

    .line 2824
    :cond_a
    invoke-static {v8, v7}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->access$notifySubtreeAccessibilityStateChangedIfNeeded(Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;Landroidx/compose/ui/node/LayoutNode;)V

    .line 2825
    nop

    .line 2812
    .end local v7    # "layoutNode":Landroidx/compose/ui/node/LayoutNode;
    .end local v9    # "$i$a$-let-AndroidComposeViewAccessibilityDelegateCompat$scheduleScrollEventIfNeeded$1$3":I
    :cond_b
    nop

    .line 2828
    .end local v4    # "scrollerId":I
    :cond_c
    if-eqz v0, :cond_d

    .line 2829
    iget-object v4, p0, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat$scheduleScrollEventIfNeeded$1;->$scrollObservationScope:Landroidx/compose/ui/platform/ScrollObservationScope;

    invoke-virtual {v0}, Landroidx/compose/ui/semantics/ScrollAxisRange;->getValue()Lkotlin/jvm/functions/Function0;

    move-result-object v7

    invoke-interface {v7}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Float;

    invoke-virtual {v4, v7}, Landroidx/compose/ui/platform/ScrollObservationScope;->setOldXValue(Ljava/lang/Float;)V

    .line 2831
    :cond_d
    if-eqz v1, :cond_e

    .line 2832
    iget-object v4, p0, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat$scheduleScrollEventIfNeeded$1;->$scrollObservationScope:Landroidx/compose/ui/platform/ScrollObservationScope;

    invoke-virtual {v1}, Landroidx/compose/ui/semantics/ScrollAxisRange;->getValue()Lkotlin/jvm/functions/Function0;

    move-result-object v7

    invoke-interface {v7}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Float;

    invoke-virtual {v4, v7}, Landroidx/compose/ui/platform/ScrollObservationScope;->setOldYValue(Ljava/lang/Float;)V

    .line 2834
    :cond_e
    return-void
.end method
