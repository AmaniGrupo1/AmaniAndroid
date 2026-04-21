.class public final Landroidx/compose/foundation/text/modifiers/SelectionControllerKt$makeDefaultSelectionModifier$longPressDragObserver$1;
.super Ljava/lang/Object;
.source "SelectionController.kt"

# interfaces
.implements Landroidx/compose/foundation/text/TextDragObserver;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/compose/foundation/text/modifiers/SelectionControllerKt;->makeDefaultSelectionModifier(Landroidx/compose/foundation/text/selection/SelectionRegistrar;JLkotlin/jvm/functions/Function0;)Landroidx/compose/ui/Modifier;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000#\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\t\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u0002\n\u0002\u0008\u000e*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0017\u0010\u0012\u001a\u00020\u00132\u0006\u0010\u0014\u001a\u00020\u0003H\u0016\u00a2\u0006\u0004\u0008\u0015\u0010\u0007J\u0008\u0010\u0016\u001a\u00020\u0013H\u0016J\u001f\u0010\u0017\u001a\u00020\u00132\u0006\u0010\u0018\u001a\u00020\u00032\u0006\u0010\u0019\u001a\u00020\rH\u0016\u00a2\u0006\u0004\u0008\u001a\u0010\u001bJ\u0017\u0010\u001c\u001a\u00020\u00132\u0006\u0010\u001d\u001a\u00020\u0003H\u0016\u00a2\u0006\u0004\u0008\u001e\u0010\u0007J\u0008\u0010\u001f\u001a\u00020\u0013H\u0016J\u0008\u0010 \u001a\u00020\u0013H\u0016R\u001c\u0010\u0002\u001a\u00020\u0003X\u0086\u000e\u00a2\u0006\u0010\n\u0002\u0010\u0008\u001a\u0004\u0008\u0004\u0010\u0005\"\u0004\u0008\u0006\u0010\u0007R\u001c\u0010\t\u001a\u00020\u0003X\u0086\u000e\u00a2\u0006\u0010\n\u0002\u0010\u0008\u001a\u0004\u0008\n\u0010\u0005\"\u0004\u0008\u000b\u0010\u0007R\u001a\u0010\u000c\u001a\u00020\rX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000e\u0010\u000f\"\u0004\u0008\u0010\u0010\u0011\u00a8\u0006!"
    }
    d2 = {
        "androidx/compose/foundation/text/modifiers/SelectionControllerKt$makeDefaultSelectionModifier$longPressDragObserver$1",
        "Landroidx/compose/foundation/text/TextDragObserver;",
        "lastPosition",
        "Landroidx/compose/ui/geometry/Offset;",
        "getLastPosition",
        "()J",
        "setLastPosition",
        "(J)V",
        "J",
        "dragTotalDistance",
        "getDragTotalDistance",
        "setDragTotalDistance",
        "selectionAdjustmentMode",
        "Landroidx/compose/foundation/text/selection/SelectionAdjustment;",
        "getSelectionAdjustmentMode",
        "()Landroidx/compose/foundation/text/selection/SelectionAdjustment;",
        "setSelectionAdjustmentMode",
        "(Landroidx/compose/foundation/text/selection/SelectionAdjustment;)V",
        "onDown",
        "",
        "point",
        "onDown-k-4lQ0M",
        "onUp",
        "onStart",
        "startPoint",
        "selectionAdjustment",
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
.field final synthetic $layoutCoordinates:Lkotlin/jvm/functions/Function0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function0<",
            "Landroidx/compose/ui/layout/LayoutCoordinates;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $selectableId:J

.field final synthetic $this_makeDefaultSelectionModifier:Landroidx/compose/foundation/text/selection/SelectionRegistrar;

.field private dragTotalDistance:J

.field private lastPosition:J

.field private selectionAdjustmentMode:Landroidx/compose/foundation/text/selection/SelectionAdjustment;


# direct methods
.method constructor <init>(Lkotlin/jvm/functions/Function0;Landroidx/compose/foundation/text/selection/SelectionRegistrar;J)V
    .locals 2
    .param p1, "$layoutCoordinates"    # Lkotlin/jvm/functions/Function0;
    .param p2, "$receiver"    # Landroidx/compose/foundation/text/selection/SelectionRegistrar;
    .param p3, "$selectableId"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function0<",
            "+",
            "Landroidx/compose/ui/layout/LayoutCoordinates;",
            ">;",
            "Landroidx/compose/foundation/text/selection/SelectionRegistrar;",
            "J)V"
        }
    .end annotation

    iput-object p1, p0, Landroidx/compose/foundation/text/modifiers/SelectionControllerKt$makeDefaultSelectionModifier$longPressDragObserver$1;->$layoutCoordinates:Lkotlin/jvm/functions/Function0;

    iput-object p2, p0, Landroidx/compose/foundation/text/modifiers/SelectionControllerKt$makeDefaultSelectionModifier$longPressDragObserver$1;->$this_makeDefaultSelectionModifier:Landroidx/compose/foundation/text/selection/SelectionRegistrar;

    iput-wide p3, p0, Landroidx/compose/foundation/text/modifiers/SelectionControllerKt$makeDefaultSelectionModifier$longPressDragObserver$1;->$selectableId:J

    .line 181
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 186
    sget-object v0, Landroidx/compose/ui/geometry/Offset;->Companion:Landroidx/compose/ui/geometry/Offset$Companion;

    invoke-virtual {v0}, Landroidx/compose/ui/geometry/Offset$Companion;->getZero-F1C5BW0()J

    move-result-wide v0

    iput-wide v0, p0, Landroidx/compose/foundation/text/modifiers/SelectionControllerKt$makeDefaultSelectionModifier$longPressDragObserver$1;->lastPosition:J

    .line 192
    sget-object v0, Landroidx/compose/ui/geometry/Offset;->Companion:Landroidx/compose/ui/geometry/Offset$Companion;

    invoke-virtual {v0}, Landroidx/compose/ui/geometry/Offset$Companion;->getZero-F1C5BW0()J

    move-result-wide v0

    iput-wide v0, p0, Landroidx/compose/foundation/text/modifiers/SelectionControllerKt$makeDefaultSelectionModifier$longPressDragObserver$1;->dragTotalDistance:J

    .line 194
    sget-object v0, Landroidx/compose/foundation/text/selection/SelectionAdjustment;->Companion:Landroidx/compose/foundation/text/selection/SelectionAdjustment$Companion;

    invoke-virtual {v0}, Landroidx/compose/foundation/text/selection/SelectionAdjustment$Companion;->getNone()Landroidx/compose/foundation/text/selection/SelectionAdjustment;

    move-result-object v0

    iput-object v0, p0, Landroidx/compose/foundation/text/modifiers/SelectionControllerKt$makeDefaultSelectionModifier$longPressDragObserver$1;->selectionAdjustmentMode:Landroidx/compose/foundation/text/selection/SelectionAdjustment;

    .line 181
    return-void
.end method


# virtual methods
.method public final getDragTotalDistance()J
    .locals 2

    .line 192
    iget-wide v0, p0, Landroidx/compose/foundation/text/modifiers/SelectionControllerKt$makeDefaultSelectionModifier$longPressDragObserver$1;->dragTotalDistance:J

    return-wide v0
.end method

.method public final getLastPosition()J
    .locals 2

    .line 186
    iget-wide v0, p0, Landroidx/compose/foundation/text/modifiers/SelectionControllerKt$makeDefaultSelectionModifier$longPressDragObserver$1;->lastPosition:J

    return-wide v0
.end method

.method public final getSelectionAdjustmentMode()Landroidx/compose/foundation/text/selection/SelectionAdjustment;
    .locals 1

    .line 194
    iget-object v0, p0, Landroidx/compose/foundation/text/modifiers/SelectionControllerKt$makeDefaultSelectionModifier$longPressDragObserver$1;->selectionAdjustmentMode:Landroidx/compose/foundation/text/selection/SelectionAdjustment;

    return-object v0
.end method

.method public onCancel()V
    .locals 3

    .line 261
    iget-object v0, p0, Landroidx/compose/foundation/text/modifiers/SelectionControllerKt$makeDefaultSelectionModifier$longPressDragObserver$1;->$this_makeDefaultSelectionModifier:Landroidx/compose/foundation/text/selection/SelectionRegistrar;

    iget-wide v1, p0, Landroidx/compose/foundation/text/modifiers/SelectionControllerKt$makeDefaultSelectionModifier$longPressDragObserver$1;->$selectableId:J

    invoke-static {v0, v1, v2}, Landroidx/compose/foundation/text/selection/SelectionRegistrarKt;->hasSelection(Landroidx/compose/foundation/text/selection/SelectionRegistrar;J)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 262
    iget-object v0, p0, Landroidx/compose/foundation/text/modifiers/SelectionControllerKt$makeDefaultSelectionModifier$longPressDragObserver$1;->$this_makeDefaultSelectionModifier:Landroidx/compose/foundation/text/selection/SelectionRegistrar;

    invoke-interface {v0}, Landroidx/compose/foundation/text/selection/SelectionRegistrar;->notifySelectionUpdateEnd()V

    .line 264
    :cond_0
    return-void
.end method

.method public onDown-k-4lQ0M(J)V
    .locals 0
    .param p1, "$v$c$androidx-compose-ui-geometry-Offset$-point$0"    # J

    .line 198
    return-void
.end method

.method public onDrag-k-4lQ0M(J)V
    .locals 11
    .param p1, "$v$c$androidx-compose-ui-geometry-Offset$-delta$0"    # J

    .line 225
    iget-object v0, p0, Landroidx/compose/foundation/text/modifiers/SelectionControllerKt$makeDefaultSelectionModifier$longPressDragObserver$1;->$layoutCoordinates:Lkotlin/jvm/functions/Function0;

    invoke-interface {v0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/compose/ui/layout/LayoutCoordinates;

    if-eqz v0, :cond_3

    iget-object v1, p0, Landroidx/compose/foundation/text/modifiers/SelectionControllerKt$makeDefaultSelectionModifier$longPressDragObserver$1;->$this_makeDefaultSelectionModifier:Landroidx/compose/foundation/text/selection/SelectionRegistrar;

    iget-wide v2, p0, Landroidx/compose/foundation/text/modifiers/SelectionControllerKt$makeDefaultSelectionModifier$longPressDragObserver$1;->$selectableId:J

    .local v0, "it":Landroidx/compose/ui/layout/LayoutCoordinates;
    const/4 v10, 0x0

    .line 226
    .local v10, "$i$a$-let-SelectionControllerKt$makeDefaultSelectionModifier$longPressDragObserver$1$onDrag$1":I
    invoke-interface {v0}, Landroidx/compose/ui/layout/LayoutCoordinates;->isAttached()Z

    move-result v4

    if-nez v4, :cond_0

    return-void

    .line 228
    :cond_0
    invoke-static {v1, v2, v3}, Landroidx/compose/foundation/text/selection/SelectionRegistrarKt;->hasSelection(Landroidx/compose/foundation/text/selection/SelectionRegistrar;J)Z

    move-result v2

    if-nez v2, :cond_1

    return-void

    .line 230
    :cond_1
    iget-wide v2, p0, Landroidx/compose/foundation/text/modifiers/SelectionControllerKt$makeDefaultSelectionModifier$longPressDragObserver$1;->dragTotalDistance:J

    invoke-static {v2, v3, p1, p2}, Landroidx/compose/ui/geometry/Offset;->plus-MK-Hz9U(JJ)J

    move-result-wide v2

    iput-wide v2, p0, Landroidx/compose/foundation/text/modifiers/SelectionControllerKt$makeDefaultSelectionModifier$longPressDragObserver$1;->dragTotalDistance:J

    .line 231
    iget-wide v2, p0, Landroidx/compose/foundation/text/modifiers/SelectionControllerKt$makeDefaultSelectionModifier$longPressDragObserver$1;->lastPosition:J

    iget-wide v4, p0, Landroidx/compose/foundation/text/modifiers/SelectionControllerKt$makeDefaultSelectionModifier$longPressDragObserver$1;->dragTotalDistance:J

    invoke-static {v2, v3, v4, v5}, Landroidx/compose/ui/geometry/Offset;->plus-MK-Hz9U(JJ)J

    move-result-wide v3

    .line 241
    .local v3, "newPosition":J
    iget-wide v5, p0, Landroidx/compose/foundation/text/modifiers/SelectionControllerKt$makeDefaultSelectionModifier$longPressDragObserver$1;->lastPosition:J

    .line 244
    iget-object v8, p0, Landroidx/compose/foundation/text/modifiers/SelectionControllerKt$makeDefaultSelectionModifier$longPressDragObserver$1;->selectionAdjustmentMode:Landroidx/compose/foundation/text/selection/SelectionAdjustment;

    .line 239
    nop

    .line 240
    nop

    .line 242
    nop

    .line 241
    nop

    .line 243
    nop

    .line 244
    nop

    .line 245
    nop

    .line 239
    const/4 v7, 0x0

    const/4 v9, 0x1

    move-object v2, v0

    .end local v0    # "it":Landroidx/compose/ui/layout/LayoutCoordinates;
    .local v2, "it":Landroidx/compose/ui/layout/LayoutCoordinates;
    invoke-interface/range {v1 .. v9}, Landroidx/compose/foundation/text/selection/SelectionRegistrar;->notifySelectionUpdate-njBpvok(Landroidx/compose/ui/layout/LayoutCoordinates;JJZLandroidx/compose/foundation/text/selection/SelectionAdjustment;Z)Z

    move-result v0

    .line 238
    nop

    .line 247
    .local v0, "consumed":Z
    if-eqz v0, :cond_2

    .line 248
    iput-wide v3, p0, Landroidx/compose/foundation/text/modifiers/SelectionControllerKt$makeDefaultSelectionModifier$longPressDragObserver$1;->lastPosition:J

    .line 249
    sget-object v1, Landroidx/compose/ui/geometry/Offset;->Companion:Landroidx/compose/ui/geometry/Offset$Companion;

    invoke-virtual {v1}, Landroidx/compose/ui/geometry/Offset$Companion;->getZero-F1C5BW0()J

    move-result-wide v5

    iput-wide v5, p0, Landroidx/compose/foundation/text/modifiers/SelectionControllerKt$makeDefaultSelectionModifier$longPressDragObserver$1;->dragTotalDistance:J

    .line 251
    :cond_2
    nop

    .line 225
    .end local v0    # "consumed":Z
    .end local v2    # "it":Landroidx/compose/ui/layout/LayoutCoordinates;
    .end local v3    # "newPosition":J
    .end local v10    # "$i$a$-let-SelectionControllerKt$makeDefaultSelectionModifier$longPressDragObserver$1$onDrag$1":I
    nop

    .line 252
    :cond_3
    return-void
.end method

.method public onStart-3MmeM6k(JLandroidx/compose/foundation/text/selection/SelectionAdjustment;)V
    .locals 7
    .param p1, "$v$c$androidx-compose-ui-geometry-Offset$-startPoint$0"    # J
    .param p3, "selectionAdjustment"    # Landroidx/compose/foundation/text/selection/SelectionAdjustment;

    .line 205
    iput-object p3, p0, Landroidx/compose/foundation/text/modifiers/SelectionControllerKt$makeDefaultSelectionModifier$longPressDragObserver$1;->selectionAdjustmentMode:Landroidx/compose/foundation/text/selection/SelectionAdjustment;

    .line 206
    iget-object v0, p0, Landroidx/compose/foundation/text/modifiers/SelectionControllerKt$makeDefaultSelectionModifier$longPressDragObserver$1;->$layoutCoordinates:Lkotlin/jvm/functions/Function0;

    invoke-interface {v0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/compose/ui/layout/LayoutCoordinates;

    if-eqz v0, :cond_1

    iget-object v1, p0, Landroidx/compose/foundation/text/modifiers/SelectionControllerKt$makeDefaultSelectionModifier$longPressDragObserver$1;->$this_makeDefaultSelectionModifier:Landroidx/compose/foundation/text/selection/SelectionRegistrar;

    move-object v2, v0

    .local v2, "it":Landroidx/compose/ui/layout/LayoutCoordinates;
    const/4 v0, 0x0

    .line 207
    .local v0, "$i$a$-let-SelectionControllerKt$makeDefaultSelectionModifier$longPressDragObserver$1$onStart$1":I
    invoke-interface {v2}, Landroidx/compose/ui/layout/LayoutCoordinates;->isAttached()Z

    move-result v3

    if-nez v3, :cond_0

    return-void

    .line 209
    :cond_0
    nop

    .line 210
    nop

    .line 211
    nop

    .line 212
    iget-object v5, p0, Landroidx/compose/foundation/text/modifiers/SelectionControllerKt$makeDefaultSelectionModifier$longPressDragObserver$1;->selectionAdjustmentMode:Landroidx/compose/foundation/text/selection/SelectionAdjustment;

    .line 213
    nop

    .line 209
    const/4 v6, 0x1

    move-wide v3, p1

    .end local p1    # "$v$c$androidx-compose-ui-geometry-Offset$-startPoint$0":J
    .local v3, "$v$c$androidx-compose-ui-geometry-Offset$-startPoint$0":J
    invoke-interface/range {v1 .. v6}, Landroidx/compose/foundation/text/selection/SelectionRegistrar;->notifySelectionUpdateStart-ubNVwUQ(Landroidx/compose/ui/layout/LayoutCoordinates;JLandroidx/compose/foundation/text/selection/SelectionAdjustment;Z)V

    .line 216
    iput-wide v3, p0, Landroidx/compose/foundation/text/modifiers/SelectionControllerKt$makeDefaultSelectionModifier$longPressDragObserver$1;->lastPosition:J

    .line 217
    nop

    .end local v0    # "$i$a$-let-SelectionControllerKt$makeDefaultSelectionModifier$longPressDragObserver$1$onStart$1":I
    .end local v2    # "it":Landroidx/compose/ui/layout/LayoutCoordinates;
    goto :goto_0

    .line 206
    .end local v3    # "$v$c$androidx-compose-ui-geometry-Offset$-startPoint$0":J
    .restart local p1    # "$v$c$androidx-compose-ui-geometry-Offset$-startPoint$0":J
    :cond_1
    move-wide v3, p1

    .end local p1    # "$v$c$androidx-compose-ui-geometry-Offset$-startPoint$0":J
    .restart local v3    # "$v$c$androidx-compose-ui-geometry-Offset$-startPoint$0":J
    :goto_0
    nop

    .line 219
    iget-object p1, p0, Landroidx/compose/foundation/text/modifiers/SelectionControllerKt$makeDefaultSelectionModifier$longPressDragObserver$1;->$this_makeDefaultSelectionModifier:Landroidx/compose/foundation/text/selection/SelectionRegistrar;

    iget-wide v0, p0, Landroidx/compose/foundation/text/modifiers/SelectionControllerKt$makeDefaultSelectionModifier$longPressDragObserver$1;->$selectableId:J

    invoke-static {p1, v0, v1}, Landroidx/compose/foundation/text/selection/SelectionRegistrarKt;->hasSelection(Landroidx/compose/foundation/text/selection/SelectionRegistrar;J)Z

    move-result p1

    if-nez p1, :cond_2

    return-void

    .line 221
    :cond_2
    sget-object p1, Landroidx/compose/ui/geometry/Offset;->Companion:Landroidx/compose/ui/geometry/Offset$Companion;

    invoke-virtual {p1}, Landroidx/compose/ui/geometry/Offset$Companion;->getZero-F1C5BW0()J

    move-result-wide p1

    iput-wide p1, p0, Landroidx/compose/foundation/text/modifiers/SelectionControllerKt$makeDefaultSelectionModifier$longPressDragObserver$1;->dragTotalDistance:J

    .line 222
    return-void
.end method

.method public onStop()V
    .locals 3

    .line 255
    iget-object v0, p0, Landroidx/compose/foundation/text/modifiers/SelectionControllerKt$makeDefaultSelectionModifier$longPressDragObserver$1;->$this_makeDefaultSelectionModifier:Landroidx/compose/foundation/text/selection/SelectionRegistrar;

    iget-wide v1, p0, Landroidx/compose/foundation/text/modifiers/SelectionControllerKt$makeDefaultSelectionModifier$longPressDragObserver$1;->$selectableId:J

    invoke-static {v0, v1, v2}, Landroidx/compose/foundation/text/selection/SelectionRegistrarKt;->hasSelection(Landroidx/compose/foundation/text/selection/SelectionRegistrar;J)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 256
    iget-object v0, p0, Landroidx/compose/foundation/text/modifiers/SelectionControllerKt$makeDefaultSelectionModifier$longPressDragObserver$1;->$this_makeDefaultSelectionModifier:Landroidx/compose/foundation/text/selection/SelectionRegistrar;

    invoke-interface {v0}, Landroidx/compose/foundation/text/selection/SelectionRegistrar;->notifySelectionUpdateEnd()V

    .line 258
    :cond_0
    return-void
.end method

.method public onUp()V
    .locals 0

    .line 202
    return-void
.end method

.method public final setDragTotalDistance(J)V
    .locals 0
    .param p1, "<set-?>"    # J

    .line 192
    iput-wide p1, p0, Landroidx/compose/foundation/text/modifiers/SelectionControllerKt$makeDefaultSelectionModifier$longPressDragObserver$1;->dragTotalDistance:J

    return-void
.end method

.method public final setLastPosition(J)V
    .locals 0
    .param p1, "<set-?>"    # J

    .line 186
    iput-wide p1, p0, Landroidx/compose/foundation/text/modifiers/SelectionControllerKt$makeDefaultSelectionModifier$longPressDragObserver$1;->lastPosition:J

    return-void
.end method

.method public final setSelectionAdjustmentMode(Landroidx/compose/foundation/text/selection/SelectionAdjustment;)V
    .locals 0
    .param p1, "<set-?>"    # Landroidx/compose/foundation/text/selection/SelectionAdjustment;

    .line 194
    iput-object p1, p0, Landroidx/compose/foundation/text/modifiers/SelectionControllerKt$makeDefaultSelectionModifier$longPressDragObserver$1;->selectionAdjustmentMode:Landroidx/compose/foundation/text/selection/SelectionAdjustment;

    return-void
.end method
