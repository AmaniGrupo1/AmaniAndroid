.class public final Landroidx/compose/foundation/text/modifiers/SelectionControllerKt$makeDefaultSelectionModifier$mouseSelectionObserver$1;
.super Ljava/lang/Object;
.source "SelectionController.kt"

# interfaces
.implements Landroidx/compose/foundation/text/selection/MouseSelectionObserver;


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
        "\u0000/\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0010\u000b\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0006\n\u0002\u0010\u0002\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0017\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\u0003H\u0016\u00a2\u0006\u0004\u0008\u000c\u0010\rJ\u0017\u0010\u000e\u001a\u00020\n2\u0006\u0010\u000f\u001a\u00020\u0003H\u0016\u00a2\u0006\u0004\u0008\u0010\u0010\rJ\'\u0010\u0011\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\u00032\u0006\u0010\u0012\u001a\u00020\u00132\u0006\u0010\u0014\u001a\u00020\u0015H\u0016\u00a2\u0006\u0004\u0008\u0016\u0010\u0017J\u001f\u0010\u0018\u001a\u00020\n2\u0006\u0010\u000f\u001a\u00020\u00032\u0006\u0010\u0012\u001a\u00020\u0013H\u0016\u00a2\u0006\u0004\u0008\u0019\u0010\u001aJ\u0008\u0010\u001b\u001a\u00020\u001cH\u0016R\u001c\u0010\u0002\u001a\u00020\u0003X\u0086\u000e\u00a2\u0006\u0010\n\u0002\u0010\u0008\u001a\u0004\u0008\u0004\u0010\u0005\"\u0004\u0008\u0006\u0010\u0007\u00a8\u0006\u001d"
    }
    d2 = {
        "androidx/compose/foundation/text/modifiers/SelectionControllerKt$makeDefaultSelectionModifier$mouseSelectionObserver$1",
        "Landroidx/compose/foundation/text/selection/MouseSelectionObserver;",
        "lastPosition",
        "Landroidx/compose/ui/geometry/Offset;",
        "getLastPosition",
        "()J",
        "setLastPosition",
        "(J)V",
        "J",
        "onExtend",
        "",
        "downPosition",
        "onExtend-k-4lQ0M",
        "(J)Z",
        "onExtendDrag",
        "dragPosition",
        "onExtendDrag-k-4lQ0M",
        "onStart",
        "adjustment",
        "Landroidx/compose/foundation/text/selection/SelectionAdjustment;",
        "clickCount",
        "",
        "onStart-9KIMszo",
        "(JLandroidx/compose/foundation/text/selection/SelectionAdjustment;I)Z",
        "onDrag",
        "onDrag-3MmeM6k",
        "(JLandroidx/compose/foundation/text/selection/SelectionAdjustment;)Z",
        "onDragDone",
        "",
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

.field private lastPosition:J


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

    iput-object p1, p0, Landroidx/compose/foundation/text/modifiers/SelectionControllerKt$makeDefaultSelectionModifier$mouseSelectionObserver$1;->$layoutCoordinates:Lkotlin/jvm/functions/Function0;

    iput-object p2, p0, Landroidx/compose/foundation/text/modifiers/SelectionControllerKt$makeDefaultSelectionModifier$mouseSelectionObserver$1;->$this_makeDefaultSelectionModifier:Landroidx/compose/foundation/text/selection/SelectionRegistrar;

    iput-wide p3, p0, Landroidx/compose/foundation/text/modifiers/SelectionControllerKt$makeDefaultSelectionModifier$mouseSelectionObserver$1;->$selectableId:J

    .line 268
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 269
    sget-object v0, Landroidx/compose/ui/geometry/Offset;->Companion:Landroidx/compose/ui/geometry/Offset$Companion;

    invoke-virtual {v0}, Landroidx/compose/ui/geometry/Offset$Companion;->getZero-F1C5BW0()J

    move-result-wide v0

    iput-wide v0, p0, Landroidx/compose/foundation/text/modifiers/SelectionControllerKt$makeDefaultSelectionModifier$mouseSelectionObserver$1;->lastPosition:J

    .line 268
    return-void
.end method


# virtual methods
.method public final getLastPosition()J
    .locals 2

    .line 269
    iget-wide v0, p0, Landroidx/compose/foundation/text/modifiers/SelectionControllerKt$makeDefaultSelectionModifier$mouseSelectionObserver$1;->lastPosition:J

    return-wide v0
.end method

.method public onDrag-3MmeM6k(JLandroidx/compose/foundation/text/selection/SelectionAdjustment;)Z
    .locals 11
    .param p1, "$v$c$androidx-compose-ui-geometry-Offset$-dragPosition$0"    # J
    .param p3, "adjustment"    # Landroidx/compose/foundation/text/selection/SelectionAdjustment;

    .line 336
    iget-object v0, p0, Landroidx/compose/foundation/text/modifiers/SelectionControllerKt$makeDefaultSelectionModifier$mouseSelectionObserver$1;->$layoutCoordinates:Lkotlin/jvm/functions/Function0;

    invoke-interface {v0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/compose/ui/layout/LayoutCoordinates;

    if-eqz v0, :cond_3

    iget-object v1, p0, Landroidx/compose/foundation/text/modifiers/SelectionControllerKt$makeDefaultSelectionModifier$mouseSelectionObserver$1;->$this_makeDefaultSelectionModifier:Landroidx/compose/foundation/text/selection/SelectionRegistrar;

    iget-wide v2, p0, Landroidx/compose/foundation/text/modifiers/SelectionControllerKt$makeDefaultSelectionModifier$mouseSelectionObserver$1;->$selectableId:J

    .local v0, "it":Landroidx/compose/ui/layout/LayoutCoordinates;
    const/4 v10, 0x0

    .line 337
    .local v10, "$i$a$-let-SelectionControllerKt$makeDefaultSelectionModifier$mouseSelectionObserver$1$onDrag$1":I
    invoke-interface {v0}, Landroidx/compose/ui/layout/LayoutCoordinates;->isAttached()Z

    move-result v4

    const/4 v5, 0x0

    if-nez v4, :cond_0

    return v5

    .line 338
    :cond_0
    invoke-static {v1, v2, v3}, Landroidx/compose/foundation/text/selection/SelectionRegistrarKt;->hasSelection(Landroidx/compose/foundation/text/selection/SelectionRegistrar;J)Z

    move-result v2

    if-nez v2, :cond_1

    return v5

    .line 343
    :cond_1
    iget-wide v5, p0, Landroidx/compose/foundation/text/modifiers/SelectionControllerKt$makeDefaultSelectionModifier$mouseSelectionObserver$1;->lastPosition:J

    .line 341
    nop

    .line 342
    nop

    .line 344
    nop

    .line 343
    nop

    .line 345
    nop

    .line 346
    nop

    .line 347
    nop

    .line 341
    const/4 v7, 0x0

    const/4 v9, 0x0

    move-wide v3, p1

    move-object v8, p3

    move-object v2, v0

    .end local v0    # "it":Landroidx/compose/ui/layout/LayoutCoordinates;
    .end local p1    # "$v$c$androidx-compose-ui-geometry-Offset$-dragPosition$0":J
    .end local p3    # "adjustment":Landroidx/compose/foundation/text/selection/SelectionAdjustment;
    .local v2, "it":Landroidx/compose/ui/layout/LayoutCoordinates;
    .local v3, "$v$c$androidx-compose-ui-geometry-Offset$-dragPosition$0":J
    .local v8, "adjustment":Landroidx/compose/foundation/text/selection/SelectionAdjustment;
    invoke-interface/range {v1 .. v9}, Landroidx/compose/foundation/text/selection/SelectionRegistrar;->notifySelectionUpdate-njBpvok(Landroidx/compose/ui/layout/LayoutCoordinates;JJZLandroidx/compose/foundation/text/selection/SelectionAdjustment;Z)Z

    move-result p1

    .line 340
    nop

    .line 349
    .local p1, "consumed":Z
    if-eqz p1, :cond_2

    .line 350
    iput-wide v3, p0, Landroidx/compose/foundation/text/modifiers/SelectionControllerKt$makeDefaultSelectionModifier$mouseSelectionObserver$1;->lastPosition:J

    .line 352
    :cond_2
    nop

    .end local v2    # "it":Landroidx/compose/ui/layout/LayoutCoordinates;
    .end local v10    # "$i$a$-let-SelectionControllerKt$makeDefaultSelectionModifier$mouseSelectionObserver$1$onDrag$1":I
    .end local p1    # "consumed":Z
    goto :goto_0

    .line 336
    .end local v3    # "$v$c$androidx-compose-ui-geometry-Offset$-dragPosition$0":J
    .end local v8    # "adjustment":Landroidx/compose/foundation/text/selection/SelectionAdjustment;
    .local p1, "$v$c$androidx-compose-ui-geometry-Offset$-dragPosition$0":J
    .restart local p3    # "adjustment":Landroidx/compose/foundation/text/selection/SelectionAdjustment;
    :cond_3
    move-wide v3, p1

    move-object v8, p3

    .end local p1    # "$v$c$androidx-compose-ui-geometry-Offset$-dragPosition$0":J
    .end local p3    # "adjustment":Landroidx/compose/foundation/text/selection/SelectionAdjustment;
    .restart local v3    # "$v$c$androidx-compose-ui-geometry-Offset$-dragPosition$0":J
    .restart local v8    # "adjustment":Landroidx/compose/foundation/text/selection/SelectionAdjustment;
    :goto_0
    nop

    .line 353
    const/4 p1, 0x1

    return p1
.end method

.method public onDragDone()V
    .locals 1

    .line 357
    iget-object v0, p0, Landroidx/compose/foundation/text/modifiers/SelectionControllerKt$makeDefaultSelectionModifier$mouseSelectionObserver$1;->$this_makeDefaultSelectionModifier:Landroidx/compose/foundation/text/selection/SelectionRegistrar;

    invoke-interface {v0}, Landroidx/compose/foundation/text/selection/SelectionRegistrar;->notifySelectionUpdateEnd()V

    .line 358
    return-void
.end method

.method public onExtend-k-4lQ0M(J)Z
    .locals 13
    .param p1, "$v$c$androidx-compose-ui-geometry-Offset$-downPosition$0"    # J

    .line 272
    iget-object v0, p0, Landroidx/compose/foundation/text/modifiers/SelectionControllerKt$makeDefaultSelectionModifier$mouseSelectionObserver$1;->$layoutCoordinates:Lkotlin/jvm/functions/Function0;

    invoke-interface {v0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/compose/ui/layout/LayoutCoordinates;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    iget-object v2, p0, Landroidx/compose/foundation/text/modifiers/SelectionControllerKt$makeDefaultSelectionModifier$mouseSelectionObserver$1;->$this_makeDefaultSelectionModifier:Landroidx/compose/foundation/text/selection/SelectionRegistrar;

    iget-wide v11, p0, Landroidx/compose/foundation/text/modifiers/SelectionControllerKt$makeDefaultSelectionModifier$mouseSelectionObserver$1;->$selectableId:J

    move-object v3, v0

    .local v3, "layoutCoordinates":Landroidx/compose/ui/layout/LayoutCoordinates;
    const/4 v0, 0x0

    .line 273
    .local v0, "$i$a$-let-SelectionControllerKt$makeDefaultSelectionModifier$mouseSelectionObserver$1$onExtend$1":I
    invoke-interface {v3}, Landroidx/compose/ui/layout/LayoutCoordinates;->isAttached()Z

    move-result v4

    if-nez v4, :cond_0

    return v1

    .line 275
    :cond_0
    nop

    .line 276
    nop

    .line 277
    nop

    .line 278
    iget-wide v6, p0, Landroidx/compose/foundation/text/modifiers/SelectionControllerKt$makeDefaultSelectionModifier$mouseSelectionObserver$1;->lastPosition:J

    .line 279
    nop

    .line 280
    sget-object v1, Landroidx/compose/foundation/text/selection/SelectionAdjustment;->Companion:Landroidx/compose/foundation/text/selection/SelectionAdjustment$Companion;

    invoke-virtual {v1}, Landroidx/compose/foundation/text/selection/SelectionAdjustment$Companion;->getNone()Landroidx/compose/foundation/text/selection/SelectionAdjustment;

    move-result-object v9

    .line 281
    nop

    .line 275
    const/4 v8, 0x0

    const/4 v10, 0x0

    move-wide v4, p1

    .end local p1    # "$v$c$androidx-compose-ui-geometry-Offset$-downPosition$0":J
    .local v4, "$v$c$androidx-compose-ui-geometry-Offset$-downPosition$0":J
    invoke-interface/range {v2 .. v10}, Landroidx/compose/foundation/text/selection/SelectionRegistrar;->notifySelectionUpdate-njBpvok(Landroidx/compose/ui/layout/LayoutCoordinates;JJZLandroidx/compose/foundation/text/selection/SelectionAdjustment;Z)Z

    move-result p1

    .line 274
    nop

    .line 283
    .local p1, "consumed":Z
    if-eqz p1, :cond_1

    .line 284
    iput-wide v4, p0, Landroidx/compose/foundation/text/modifiers/SelectionControllerKt$makeDefaultSelectionModifier$mouseSelectionObserver$1;->lastPosition:J

    .line 286
    :cond_1
    invoke-static {v2, v11, v12}, Landroidx/compose/foundation/text/selection/SelectionRegistrarKt;->hasSelection(Landroidx/compose/foundation/text/selection/SelectionRegistrar;J)Z

    move-result p2

    return p2

    .line 288
    .end local v0    # "$i$a$-let-SelectionControllerKt$makeDefaultSelectionModifier$mouseSelectionObserver$1$onExtend$1":I
    .end local v3    # "layoutCoordinates":Landroidx/compose/ui/layout/LayoutCoordinates;
    .end local v4    # "$v$c$androidx-compose-ui-geometry-Offset$-downPosition$0":J
    .local p1, "$v$c$androidx-compose-ui-geometry-Offset$-downPosition$0":J
    :cond_2
    return v1
.end method

.method public onExtendDrag-k-4lQ0M(J)Z
    .locals 11
    .param p1, "$v$c$androidx-compose-ui-geometry-Offset$-dragPosition$0"    # J

    .line 292
    iget-object v0, p0, Landroidx/compose/foundation/text/modifiers/SelectionControllerKt$makeDefaultSelectionModifier$mouseSelectionObserver$1;->$layoutCoordinates:Lkotlin/jvm/functions/Function0;

    invoke-interface {v0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/compose/ui/layout/LayoutCoordinates;

    if-eqz v0, :cond_3

    iget-object v1, p0, Landroidx/compose/foundation/text/modifiers/SelectionControllerKt$makeDefaultSelectionModifier$mouseSelectionObserver$1;->$this_makeDefaultSelectionModifier:Landroidx/compose/foundation/text/selection/SelectionRegistrar;

    iget-wide v2, p0, Landroidx/compose/foundation/text/modifiers/SelectionControllerKt$makeDefaultSelectionModifier$mouseSelectionObserver$1;->$selectableId:J

    .local v0, "layoutCoordinates":Landroidx/compose/ui/layout/LayoutCoordinates;
    const/4 v10, 0x0

    .line 293
    .local v10, "$i$a$-let-SelectionControllerKt$makeDefaultSelectionModifier$mouseSelectionObserver$1$onExtendDrag$1":I
    invoke-interface {v0}, Landroidx/compose/ui/layout/LayoutCoordinates;->isAttached()Z

    move-result v4

    const/4 v5, 0x0

    if-nez v4, :cond_0

    return v5

    .line 294
    :cond_0
    invoke-static {v1, v2, v3}, Landroidx/compose/foundation/text/selection/SelectionRegistrarKt;->hasSelection(Landroidx/compose/foundation/text/selection/SelectionRegistrar;J)Z

    move-result v2

    if-nez v2, :cond_1

    return v5

    .line 297
    :cond_1
    nop

    .line 298
    nop

    .line 299
    nop

    .line 300
    iget-wide v5, p0, Landroidx/compose/foundation/text/modifiers/SelectionControllerKt$makeDefaultSelectionModifier$mouseSelectionObserver$1;->lastPosition:J

    .line 301
    nop

    .line 302
    sget-object v2, Landroidx/compose/foundation/text/selection/SelectionAdjustment;->Companion:Landroidx/compose/foundation/text/selection/SelectionAdjustment$Companion;

    invoke-virtual {v2}, Landroidx/compose/foundation/text/selection/SelectionAdjustment$Companion;->getNone()Landroidx/compose/foundation/text/selection/SelectionAdjustment;

    move-result-object v8

    .line 303
    nop

    .line 297
    const/4 v7, 0x0

    const/4 v9, 0x0

    move-wide v3, p1

    move-object v2, v0

    .end local v0    # "layoutCoordinates":Landroidx/compose/ui/layout/LayoutCoordinates;
    .end local p1    # "$v$c$androidx-compose-ui-geometry-Offset$-dragPosition$0":J
    .local v2, "layoutCoordinates":Landroidx/compose/ui/layout/LayoutCoordinates;
    .local v3, "$v$c$androidx-compose-ui-geometry-Offset$-dragPosition$0":J
    invoke-interface/range {v1 .. v9}, Landroidx/compose/foundation/text/selection/SelectionRegistrar;->notifySelectionUpdate-njBpvok(Landroidx/compose/ui/layout/LayoutCoordinates;JJZLandroidx/compose/foundation/text/selection/SelectionAdjustment;Z)Z

    move-result p1

    .line 296
    nop

    .line 306
    .local p1, "consumed":Z
    if-eqz p1, :cond_2

    .line 307
    iput-wide v3, p0, Landroidx/compose/foundation/text/modifiers/SelectionControllerKt$makeDefaultSelectionModifier$mouseSelectionObserver$1;->lastPosition:J

    .line 309
    :cond_2
    nop

    .end local v2    # "layoutCoordinates":Landroidx/compose/ui/layout/LayoutCoordinates;
    .end local v10    # "$i$a$-let-SelectionControllerKt$makeDefaultSelectionModifier$mouseSelectionObserver$1$onExtendDrag$1":I
    .end local p1    # "consumed":Z
    goto :goto_0

    .line 292
    .end local v3    # "$v$c$androidx-compose-ui-geometry-Offset$-dragPosition$0":J
    .local p1, "$v$c$androidx-compose-ui-geometry-Offset$-dragPosition$0":J
    :cond_3
    move-wide v3, p1

    .end local p1    # "$v$c$androidx-compose-ui-geometry-Offset$-dragPosition$0":J
    .restart local v3    # "$v$c$androidx-compose-ui-geometry-Offset$-dragPosition$0":J
    :goto_0
    nop

    .line 310
    const/4 p1, 0x1

    return p1
.end method

.method public onStart-9KIMszo(JLandroidx/compose/foundation/text/selection/SelectionAdjustment;I)Z
    .locals 10
    .param p1, "$v$c$androidx-compose-ui-geometry-Offset$-downPosition$0"    # J
    .param p3, "adjustment"    # Landroidx/compose/foundation/text/selection/SelectionAdjustment;
    .param p4, "clickCount"    # I

    .line 318
    iget-object v0, p0, Landroidx/compose/foundation/text/modifiers/SelectionControllerKt$makeDefaultSelectionModifier$mouseSelectionObserver$1;->$layoutCoordinates:Lkotlin/jvm/functions/Function0;

    invoke-interface {v0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/compose/ui/layout/LayoutCoordinates;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-object v2, p0, Landroidx/compose/foundation/text/modifiers/SelectionControllerKt$makeDefaultSelectionModifier$mouseSelectionObserver$1;->$this_makeDefaultSelectionModifier:Landroidx/compose/foundation/text/selection/SelectionRegistrar;

    iget-wide v8, p0, Landroidx/compose/foundation/text/modifiers/SelectionControllerKt$makeDefaultSelectionModifier$mouseSelectionObserver$1;->$selectableId:J

    move-object v3, v0

    .local v3, "it":Landroidx/compose/ui/layout/LayoutCoordinates;
    const/4 v0, 0x0

    .line 319
    .local v0, "$i$a$-let-SelectionControllerKt$makeDefaultSelectionModifier$mouseSelectionObserver$1$onStart$1":I
    invoke-interface {v3}, Landroidx/compose/ui/layout/LayoutCoordinates;->isAttached()Z

    move-result v4

    if-nez v4, :cond_0

    return v1

    .line 321
    :cond_0
    nop

    .line 322
    nop

    .line 323
    nop

    .line 324
    nop

    .line 325
    nop

    .line 321
    const/4 v7, 0x0

    move-wide v4, p1

    move-object v6, p3

    .end local p1    # "$v$c$androidx-compose-ui-geometry-Offset$-downPosition$0":J
    .end local p3    # "adjustment":Landroidx/compose/foundation/text/selection/SelectionAdjustment;
    .local v4, "$v$c$androidx-compose-ui-geometry-Offset$-downPosition$0":J
    .local v6, "adjustment":Landroidx/compose/foundation/text/selection/SelectionAdjustment;
    invoke-interface/range {v2 .. v7}, Landroidx/compose/foundation/text/selection/SelectionRegistrar;->notifySelectionUpdateStart-ubNVwUQ(Landroidx/compose/ui/layout/LayoutCoordinates;JLandroidx/compose/foundation/text/selection/SelectionAdjustment;Z)V

    .line 328
    iput-wide v4, p0, Landroidx/compose/foundation/text/modifiers/SelectionControllerKt$makeDefaultSelectionModifier$mouseSelectionObserver$1;->lastPosition:J

    .line 329
    invoke-static {v2, v8, v9}, Landroidx/compose/foundation/text/selection/SelectionRegistrarKt;->hasSelection(Landroidx/compose/foundation/text/selection/SelectionRegistrar;J)Z

    move-result p1

    return p1

    .line 332
    .end local v0    # "$i$a$-let-SelectionControllerKt$makeDefaultSelectionModifier$mouseSelectionObserver$1$onStart$1":I
    .end local v3    # "it":Landroidx/compose/ui/layout/LayoutCoordinates;
    .end local v4    # "$v$c$androidx-compose-ui-geometry-Offset$-downPosition$0":J
    .end local v6    # "adjustment":Landroidx/compose/foundation/text/selection/SelectionAdjustment;
    .restart local p1    # "$v$c$androidx-compose-ui-geometry-Offset$-downPosition$0":J
    .restart local p3    # "adjustment":Landroidx/compose/foundation/text/selection/SelectionAdjustment;
    :cond_1
    return v1
.end method

.method public final setLastPosition(J)V
    .locals 0
    .param p1, "<set-?>"    # J

    .line 269
    iput-wide p1, p0, Landroidx/compose/foundation/text/modifiers/SelectionControllerKt$makeDefaultSelectionModifier$mouseSelectionObserver$1;->lastPosition:J

    return-void
.end method
