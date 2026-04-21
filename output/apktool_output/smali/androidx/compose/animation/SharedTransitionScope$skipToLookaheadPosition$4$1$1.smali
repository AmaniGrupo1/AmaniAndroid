.class final Landroidx/compose/animation/SharedTransitionScope$skipToLookaheadPosition$4$1$1;
.super Lkotlin/jvm/internal/Lambda;
.source "SharedTransitionScope.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/compose/animation/SharedTransitionScope$skipToLookaheadPosition$4;->invoke-3p2s80s(Landroidx/compose/ui/layout/ApproachMeasureScope;Landroidx/compose/ui/layout/Measurable;J)Landroidx/compose/ui/layout/MeasureResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Landroidx/compose/ui/layout/Placeable$PlacementScope;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n\u00a2\u0006\u0002\u0008\u0003"
    }
    d2 = {
        "<anonymous>",
        "",
        "Landroidx/compose/ui/layout/Placeable$PlacementScope;",
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
.field final synthetic $enabled:Lkotlin/jvm/functions/Function0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function0<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $this_run:Landroidx/compose/ui/layout/Placeable;

.field final synthetic this$0:Landroidx/compose/animation/SharedTransitionScope;


# direct methods
.method constructor <init>(Lkotlin/jvm/functions/Function0;Landroidx/compose/ui/layout/Placeable;Landroidx/compose/animation/SharedTransitionScope;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function0<",
            "Ljava/lang/Boolean;",
            ">;",
            "Landroidx/compose/ui/layout/Placeable;",
            "Landroidx/compose/animation/SharedTransitionScope;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Landroidx/compose/animation/SharedTransitionScope$skipToLookaheadPosition$4$1$1;->$enabled:Lkotlin/jvm/functions/Function0;

    iput-object p2, p0, Landroidx/compose/animation/SharedTransitionScope$skipToLookaheadPosition$4$1$1;->$this_run:Landroidx/compose/ui/layout/Placeable;

    iput-object p3, p0, Landroidx/compose/animation/SharedTransitionScope$skipToLookaheadPosition$4$1$1;->this$0:Landroidx/compose/animation/SharedTransitionScope;

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "p1"    # Ljava/lang/Object;

    .line 431
    move-object v0, p1

    check-cast v0, Landroidx/compose/ui/layout/Placeable$PlacementScope;

    invoke-virtual {p0, v0}, Landroidx/compose/animation/SharedTransitionScope$skipToLookaheadPosition$4$1$1;->invoke(Landroidx/compose/ui/layout/Placeable$PlacementScope;)V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method public final invoke(Landroidx/compose/ui/layout/Placeable$PlacementScope;)V
    .locals 23
    .param p1, "$this$layout"    # Landroidx/compose/ui/layout/Placeable$PlacementScope;

    .line 432
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget-object v2, v0, Landroidx/compose/animation/SharedTransitionScope$skipToLookaheadPosition$4$1$1;->$enabled:Lkotlin/jvm/functions/Function0;

    invoke-interface {v2}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 433
    invoke-virtual {v1}, Landroidx/compose/ui/layout/Placeable$PlacementScope;->getCoordinates()Landroidx/compose/ui/layout/LayoutCoordinates;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v3, v0, Landroidx/compose/animation/SharedTransitionScope$skipToLookaheadPosition$4$1$1;->this$0:Landroidx/compose/animation/SharedTransitionScope;

    move-object v4, v2

    iget-object v2, v0, Landroidx/compose/animation/SharedTransitionScope$skipToLookaheadPosition$4$1$1;->$this_run:Landroidx/compose/ui/layout/Placeable;

    move-object v5, v4

    .local v5, "it":Landroidx/compose/ui/layout/LayoutCoordinates;
    const/4 v13, 0x0

    .line 434
    .local v13, "$i$a$-let-SharedTransitionScope$skipToLookaheadPosition$4$1$1$1":I
    move-object v6, v5

    .end local v5    # "it":Landroidx/compose/ui/layout/LayoutCoordinates;
    .local v6, "it":Landroidx/compose/ui/layout/LayoutCoordinates;
    move-object v5, v3

    check-cast v5, Landroidx/compose/ui/layout/LookaheadScope;

    move-object v7, v6

    .end local v6    # "it":Landroidx/compose/ui/layout/LayoutCoordinates;
    .local v7, "it":Landroidx/compose/ui/layout/LayoutCoordinates;
    invoke-interface {v3, v1}, Landroidx/compose/animation/SharedTransitionScope;->getLookaheadScopeCoordinates(Landroidx/compose/ui/layout/Placeable$PlacementScope;)Landroidx/compose/ui/layout/LayoutCoordinates;

    move-result-object v6

    const/4 v11, 0x6

    const/4 v12, 0x0

    const-wide/16 v8, 0x0

    const/4 v10, 0x0

    invoke-static/range {v5 .. v12}, Landroidx/compose/ui/layout/LookaheadScope;->localLookaheadPositionOf-au-aQtc$default(Landroidx/compose/ui/layout/LookaheadScope;Landroidx/compose/ui/layout/LayoutCoordinates;Landroidx/compose/ui/layout/LayoutCoordinates;JZILjava/lang/Object;)J

    move-result-wide v14

    .line 435
    move-object v6, v7

    .end local v7    # "it":Landroidx/compose/ui/layout/LayoutCoordinates;
    .restart local v6    # "it":Landroidx/compose/ui/layout/LayoutCoordinates;
    .local v14, "target":J
    invoke-interface {v3, v1}, Landroidx/compose/animation/SharedTransitionScope;->getLookaheadScopeCoordinates(Landroidx/compose/ui/layout/Placeable$PlacementScope;)Landroidx/compose/ui/layout/LayoutCoordinates;

    move-result-object v5

    const/4 v10, 0x6

    const/4 v11, 0x0

    const-wide/16 v7, 0x0

    const/4 v9, 0x0

    invoke-static/range {v5 .. v11}, Landroidx/compose/ui/layout/LayoutCoordinates;->localPositionOf-S_NoaFU$default(Landroidx/compose/ui/layout/LayoutCoordinates;Landroidx/compose/ui/layout/LayoutCoordinates;JZILjava/lang/Object;)J

    move-result-wide v4

    .line 436
    .local v4, "actual":J
    invoke-static {v14, v15, v4, v5}, Landroidx/compose/ui/geometry/Offset;->minus-MK-Hz9U(JJ)J

    move-result-wide v7

    .line 439
    .local v7, "delta":J
    invoke-interface {v3, v1}, Landroidx/compose/animation/SharedTransitionScope;->getLookaheadScopeCoordinates(Landroidx/compose/ui/layout/Placeable$PlacementScope;)Landroidx/compose/ui/layout/LayoutCoordinates;

    move-result-object v9

    invoke-interface {v6, v9, v7, v8}, Landroidx/compose/ui/layout/LayoutCoordinates;->localPositionOf-R5De75A(Landroidx/compose/ui/layout/LayoutCoordinates;J)J

    move-result-wide v9

    .line 440
    invoke-interface {v3, v1}, Landroidx/compose/animation/SharedTransitionScope;->getLookaheadScopeCoordinates(Landroidx/compose/ui/layout/Placeable$PlacementScope;)Landroidx/compose/ui/layout/LayoutCoordinates;

    move-result-object v3

    move-wide v11, v9

    const/4 v10, 0x6

    move-wide/from16 v16, v11

    const/4 v11, 0x0

    move-wide/from16 v18, v7

    .end local v7    # "delta":J
    .local v18, "delta":J
    const-wide/16 v7, 0x0

    const/4 v9, 0x0

    move-object/from16 v20, v6

    move-object v6, v3

    move-wide/from16 v21, v4

    move-object/from16 v5, v20

    move-wide/from16 v3, v16

    move-wide/from16 v16, v21

    .end local v4    # "actual":J
    .end local v6    # "it":Landroidx/compose/ui/layout/LayoutCoordinates;
    .restart local v5    # "it":Landroidx/compose/ui/layout/LayoutCoordinates;
    .local v16, "actual":J
    invoke-static/range {v5 .. v11}, Landroidx/compose/ui/layout/LayoutCoordinates;->localPositionOf-S_NoaFU$default(Landroidx/compose/ui/layout/LayoutCoordinates;Landroidx/compose/ui/layout/LayoutCoordinates;JZILjava/lang/Object;)J

    move-result-wide v6

    .line 439
    move-object v8, v5

    .end local v5    # "it":Landroidx/compose/ui/layout/LayoutCoordinates;
    .local v8, "it":Landroidx/compose/ui/layout/LayoutCoordinates;
    invoke-static {v3, v4, v6, v7}, Landroidx/compose/ui/geometry/Offset;->minus-MK-Hz9U(JJ)J

    move-result-wide v3

    .line 438
    move-wide v9, v3

    .line 442
    .local v9, "offset":J
    invoke-static {v9, v10}, Landroidx/compose/ui/unit/IntOffsetKt;->round-k-4lQ0M(J)J

    move-result-wide v3

    const/4 v6, 0x2

    const/4 v7, 0x0

    const/4 v5, 0x0

    invoke-static/range {v1 .. v7}, Landroidx/compose/ui/layout/Placeable$PlacementScope;->place-70tqf50$default(Landroidx/compose/ui/layout/Placeable$PlacementScope;Landroidx/compose/ui/layout/Placeable;JFILjava/lang/Object;)V

    .line 443
    nop

    .line 433
    .end local v8    # "it":Landroidx/compose/ui/layout/LayoutCoordinates;
    .end local v9    # "offset":J
    .end local v13    # "$i$a$-let-SharedTransitionScope$skipToLookaheadPosition$4$1$1$1":I
    .end local v14    # "target":J
    .end local v16    # "actual":J
    .end local v18    # "delta":J
    goto :goto_0

    .line 443
    :cond_0
    iget-object v2, v0, Landroidx/compose/animation/SharedTransitionScope$skipToLookaheadPosition$4$1$1;->$this_run:Landroidx/compose/ui/layout/Placeable;

    const/4 v6, 0x4

    const/4 v7, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object/from16 v1, p1

    invoke-static/range {v1 .. v7}, Landroidx/compose/ui/layout/Placeable$PlacementScope;->place$default(Landroidx/compose/ui/layout/Placeable$PlacementScope;Landroidx/compose/ui/layout/Placeable;IIFILjava/lang/Object;)V

    goto :goto_0

    .line 445
    :cond_1
    iget-object v2, v0, Landroidx/compose/animation/SharedTransitionScope$skipToLookaheadPosition$4$1$1;->$this_run:Landroidx/compose/ui/layout/Placeable;

    const/4 v6, 0x4

    const/4 v7, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object/from16 v1, p1

    invoke-static/range {v1 .. v7}, Landroidx/compose/ui/layout/Placeable$PlacementScope;->place$default(Landroidx/compose/ui/layout/Placeable$PlacementScope;Landroidx/compose/ui/layout/Placeable;IIFILjava/lang/Object;)V

    .line 447
    :goto_0
    return-void
.end method
