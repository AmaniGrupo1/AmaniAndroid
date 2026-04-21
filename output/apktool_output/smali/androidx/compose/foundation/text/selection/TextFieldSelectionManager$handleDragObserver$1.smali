.class public final Landroidx/compose/foundation/text/selection/TextFieldSelectionManager$handleDragObserver$1;
.super Ljava/lang/Object;
.source "TextFieldSelectionManager.kt"

# interfaces
.implements Landroidx/compose/foundation/text/TextDragObserver;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;->handleDragObserver$foundation(Z)Landroidx/compose/foundation/text/TextDragObserver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000!\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0008*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0017\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0016\u00a2\u0006\u0004\u0008\u0006\u0010\u0007J\u0008\u0010\u0008\u001a\u00020\u0003H\u0016J\u001f\u0010\t\u001a\u00020\u00032\u0006\u0010\n\u001a\u00020\u00052\u0006\u0010\u000b\u001a\u00020\u000cH\u0016\u00a2\u0006\u0004\u0008\r\u0010\u000eJ\u0017\u0010\u000f\u001a\u00020\u00032\u0006\u0010\u0010\u001a\u00020\u0005H\u0016\u00a2\u0006\u0004\u0008\u0011\u0010\u0007J\u0008\u0010\u0012\u001a\u00020\u0003H\u0016J\u0008\u0010\u0013\u001a\u00020\u0003H\u0016\u00a8\u0006\u0014"
    }
    d2 = {
        "androidx/compose/foundation/text/selection/TextFieldSelectionManager$handleDragObserver$1",
        "Landroidx/compose/foundation/text/TextDragObserver;",
        "onDown",
        "",
        "point",
        "Landroidx/compose/ui/geometry/Offset;",
        "onDown-k-4lQ0M",
        "(J)V",
        "onUp",
        "onStart",
        "startPoint",
        "selectionAdjustment",
        "Landroidx/compose/foundation/text/selection/SelectionAdjustment;",
        "onStart-3MmeM6k",
        "(JLandroidx/compose/foundation/text/selection/SelectionAdjustment;)V",
        "onDrag",
        "delta",
        "onDrag-k-4lQ0M",
        "onStop",
        "onCancel",
        "foundation"
    }
    k = 0x1
    mv = {
        0x2,
        0x0,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field final synthetic $isStartHandle:Z

.field final synthetic this$0:Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;


# direct methods
.method constructor <init>(Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;Z)V
    .locals 0
    .param p1, "$receiver"    # Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;
    .param p2, "$isStartHandle"    # Z

    iput-object p1, p0, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager$handleDragObserver$1;->this$0:Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;

    iput-boolean p2, p0, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager$handleDragObserver$1;->$isStartHandle:Z

    .line 595
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel()V
    .locals 0

    .line 650
    return-void
.end method

.method public onDown-k-4lQ0M(J)V
    .locals 8
    .param p1, "$v$c$androidx-compose-ui-geometry-Offset$-point$0"    # J

    .line 597
    iget-object v0, p0, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager$handleDragObserver$1;->this$0:Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;

    iget-boolean v1, p0, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager$handleDragObserver$1;->$isStartHandle:Z

    if-eqz v1, :cond_0

    sget-object v1, Landroidx/compose/foundation/text/Handle;->SelectionStart:Landroidx/compose/foundation/text/Handle;

    goto :goto_0

    :cond_0
    sget-object v1, Landroidx/compose/foundation/text/Handle;->SelectionEnd:Landroidx/compose/foundation/text/Handle;

    :goto_0
    invoke-static {v0, v1}, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;->access$setDraggingHandle(Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;Landroidx/compose/foundation/text/Handle;)V

    .line 601
    iget-object v0, p0, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager$handleDragObserver$1;->this$0:Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;

    iget-boolean v1, p0, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager$handleDragObserver$1;->$isStartHandle:Z

    invoke-virtual {v0, v1}, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;->getHandlePosition-tuRUvjQ$foundation(Z)J

    move-result-wide v0

    invoke-static {v0, v1}, Landroidx/compose/foundation/text/selection/SelectionHandlesKt;->getAdjustedCoordinates-k-4lQ0M(J)J

    move-result-wide v0

    .line 604
    .local v0, "handleCoordinates":J
    iget-object v2, p0, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager$handleDragObserver$1;->this$0:Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;

    invoke-virtual {v2}, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;->getState$foundation()Landroidx/compose/foundation/text/LegacyTextFieldState;

    move-result-object v2

    if-eqz v2, :cond_3

    invoke-virtual {v2}, Landroidx/compose/foundation/text/LegacyTextFieldState;->getLayoutResult()Landroidx/compose/foundation/text/TextLayoutResultProxy;

    move-result-object v2

    if-nez v2, :cond_1

    goto :goto_1

    .line 606
    .local v2, "layoutResult":Landroidx/compose/foundation/text/TextLayoutResultProxy;
    :cond_1
    invoke-virtual {v2, v0, v1}, Landroidx/compose/foundation/text/TextLayoutResultProxy;->translateInnerToDecorationCoordinates-MK-Hz9U$foundation(J)J

    move-result-wide v3

    .line 605
    nop

    .line 608
    .local v3, "translatedPosition":J
    iget-object v5, p0, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager$handleDragObserver$1;->this$0:Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;

    invoke-static {v5, v3, v4}, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;->access$setDragBeginPosition$p(Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;J)V

    .line 609
    iget-object v5, p0, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager$handleDragObserver$1;->this$0:Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;

    invoke-static {v3, v4}, Landroidx/compose/ui/geometry/Offset;->box-impl(J)Landroidx/compose/ui/geometry/Offset;

    move-result-object v6

    invoke-static {v5, v6}, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;->access$setCurrentDragPosition-_kEHs6E(Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;Landroidx/compose/ui/geometry/Offset;)V

    .line 612
    iget-object v5, p0, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager$handleDragObserver$1;->this$0:Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;

    sget-object v6, Landroidx/compose/ui/geometry/Offset;->Companion:Landroidx/compose/ui/geometry/Offset$Companion;

    invoke-virtual {v6}, Landroidx/compose/ui/geometry/Offset$Companion;->getZero-F1C5BW0()J

    move-result-wide v6

    invoke-static {v5, v6, v7}, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;->access$setDragTotalDistance$p(Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;J)V

    .line 613
    iget-object v5, p0, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager$handleDragObserver$1;->this$0:Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;

    const/4 v6, -0x1

    invoke-static {v5, v6}, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;->access$setPreviousRawDragOffset$p(Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;I)V

    .line 615
    iget-object v5, p0, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager$handleDragObserver$1;->this$0:Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;

    invoke-virtual {v5}, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;->getState$foundation()Landroidx/compose/foundation/text/LegacyTextFieldState;

    move-result-object v5

    if-eqz v5, :cond_2

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Landroidx/compose/foundation/text/LegacyTextFieldState;->setInTouchMode(Z)V

    .line 616
    :cond_2
    iget-object v5, p0, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager$handleDragObserver$1;->this$0:Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;

    const/4 v6, 0x0

    invoke-static {v5, v6}, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;->access$updateFloatingToolbar(Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;Z)V

    .line 617
    return-void

    .line 604
    .end local v2    # "layoutResult":Landroidx/compose/foundation/text/TextLayoutResultProxy;
    .end local v3    # "translatedPosition":J
    :cond_3
    :goto_1
    return-void
.end method

.method public onDrag-k-4lQ0M(J)V
    .locals 10
    .param p1, "$v$c$androidx-compose-ui-geometry-Offset$-delta$0"    # J

    .line 630
    iget-object v0, p0, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager$handleDragObserver$1;->this$0:Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;

    iget-object v1, p0, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager$handleDragObserver$1;->this$0:Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;

    invoke-static {v1}, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;->access$getDragTotalDistance$p(Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;)J

    move-result-wide v1

    invoke-static {v1, v2, p1, p2}, Landroidx/compose/ui/geometry/Offset;->plus-MK-Hz9U(JJ)J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;->access$setDragTotalDistance$p(Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;J)V

    .line 632
    iget-object v0, p0, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager$handleDragObserver$1;->this$0:Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;

    iget-object v1, p0, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager$handleDragObserver$1;->this$0:Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;

    invoke-static {v1}, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;->access$getDragBeginPosition$p(Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;)J

    move-result-wide v1

    iget-object v3, p0, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager$handleDragObserver$1;->this$0:Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;

    invoke-static {v3}, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;->access$getDragTotalDistance$p(Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;)J

    move-result-wide v3

    invoke-static {v1, v2, v3, v4}, Landroidx/compose/ui/geometry/Offset;->plus-MK-Hz9U(JJ)J

    move-result-wide v1

    invoke-static {v1, v2}, Landroidx/compose/ui/geometry/Offset;->box-impl(J)Landroidx/compose/ui/geometry/Offset;

    move-result-object v1

    invoke-static {v0, v1}, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;->access$setCurrentDragPosition-_kEHs6E(Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;Landroidx/compose/ui/geometry/Offset;)V

    .line 633
    iget-object v2, p0, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager$handleDragObserver$1;->this$0:Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;

    .line 634
    iget-object v0, p0, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager$handleDragObserver$1;->this$0:Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;

    invoke-virtual {v0}, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;->getValue$foundation()Landroidx/compose/ui/text/input/TextFieldValue;

    move-result-object v3

    .line 635
    iget-object v0, p0, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager$handleDragObserver$1;->this$0:Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;

    invoke-virtual {v0}, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;->getCurrentDragPosition-_m7T9-E()Landroidx/compose/ui/geometry/Offset;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0}, Landroidx/compose/ui/geometry/Offset;->unbox-impl()J

    move-result-wide v4

    .line 636
    nop

    .line 637
    iget-boolean v7, p0, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager$handleDragObserver$1;->$isStartHandle:Z

    .line 638
    sget-object v0, Landroidx/compose/foundation/text/selection/SelectionAdjustment;->Companion:Landroidx/compose/foundation/text/selection/SelectionAdjustment$Companion;

    invoke-virtual {v0}, Landroidx/compose/foundation/text/selection/SelectionAdjustment$Companion;->getCharacterWithWordAccelerate()Landroidx/compose/foundation/text/selection/SelectionAdjustment;

    move-result-object v8

    .line 639
    nop

    .line 633
    const/4 v6, 0x0

    const/4 v9, 0x1

    invoke-static/range {v2 .. v9}, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;->access$updateSelection-8UEBfa8(Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;Landroidx/compose/ui/text/input/TextFieldValue;JZZLandroidx/compose/foundation/text/selection/SelectionAdjustment;Z)J

    .line 641
    iget-object v0, p0, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager$handleDragObserver$1;->this$0:Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;->access$updateFloatingToolbar(Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;Z)V

    .line 642
    return-void
.end method

.method public onStart-3MmeM6k(JLandroidx/compose/foundation/text/selection/SelectionAdjustment;)V
    .locals 0
    .param p1, "$v$c$androidx-compose-ui-geometry-Offset$-startPoint$0"    # J
    .param p3, "selectionAdjustment"    # Landroidx/compose/foundation/text/selection/SelectionAdjustment;

    .line 627
    return-void
.end method

.method public onStop()V
    .locals 2

    .line 645
    iget-object v0, p0, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager$handleDragObserver$1;->this$0:Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;->access$setDraggingHandle(Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;Landroidx/compose/foundation/text/Handle;)V

    .line 646
    iget-object v0, p0, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager$handleDragObserver$1;->this$0:Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;

    invoke-static {v0, v1}, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;->access$setCurrentDragPosition-_kEHs6E(Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;Landroidx/compose/ui/geometry/Offset;)V

    .line 647
    iget-object v0, p0, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager$handleDragObserver$1;->this$0:Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;->access$updateFloatingToolbar(Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;Z)V

    .line 648
    return-void
.end method

.method public onUp()V
    .locals 2

    .line 620
    iget-object v0, p0, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager$handleDragObserver$1;->this$0:Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;->access$setDraggingHandle(Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;Landroidx/compose/foundation/text/Handle;)V

    .line 621
    iget-object v0, p0, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager$handleDragObserver$1;->this$0:Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;

    invoke-static {v0, v1}, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;->access$setCurrentDragPosition-_kEHs6E(Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;Landroidx/compose/ui/geometry/Offset;)V

    .line 622
    iget-object v0, p0, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager$handleDragObserver$1;->this$0:Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;->access$updateFloatingToolbar(Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;Z)V

    .line 623
    return-void
.end method
