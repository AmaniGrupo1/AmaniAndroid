.class final Landroidx/compose/animation/SharedBoundsNode$approachPlace$1;
.super Lkotlin/jvm/internal/Lambda;
.source "SharedContentNode.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/compose/animation/SharedBoundsNode;->approachPlace(Landroidx/compose/ui/layout/MeasureScope;Landroidx/compose/ui/layout/Placeable;)Landroidx/compose/ui/layout/MeasureResult;
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
.field final synthetic $placeable:Landroidx/compose/ui/layout/Placeable;

.field final synthetic this$0:Landroidx/compose/animation/SharedBoundsNode;


# direct methods
.method constructor <init>(Landroidx/compose/animation/SharedBoundsNode;Landroidx/compose/ui/layout/Placeable;)V
    .locals 1

    iput-object p1, p0, Landroidx/compose/animation/SharedBoundsNode$approachPlace$1;->this$0:Landroidx/compose/animation/SharedBoundsNode;

    iput-object p2, p0, Landroidx/compose/animation/SharedBoundsNode$approachPlace$1;->$placeable:Landroidx/compose/ui/layout/Placeable;

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "p1"    # Ljava/lang/Object;

    .line 322
    move-object v0, p1

    check-cast v0, Landroidx/compose/ui/layout/Placeable$PlacementScope;

    invoke-virtual {p0, v0}, Landroidx/compose/animation/SharedBoundsNode$approachPlace$1;->invoke(Landroidx/compose/ui/layout/Placeable$PlacementScope;)V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method public final invoke(Landroidx/compose/ui/layout/Placeable$PlacementScope;)V
    .locals 8
    .param p1, "$this$layout"    # Landroidx/compose/ui/layout/Placeable$PlacementScope;

    .line 323
    iget-object v0, p0, Landroidx/compose/animation/SharedBoundsNode$approachPlace$1;->this$0:Landroidx/compose/animation/SharedBoundsNode;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Landroidx/compose/animation/SharedBoundsNode;->access$setPlaced$p(Landroidx/compose/animation/SharedBoundsNode;Z)V

    .line 324
    iget-object v0, p0, Landroidx/compose/animation/SharedBoundsNode$approachPlace$1;->this$0:Landroidx/compose/animation/SharedBoundsNode;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroidx/compose/animation/SharedBoundsNode;->access$setBoundsBeforeDetached$p(Landroidx/compose/animation/SharedBoundsNode;Landroidx/compose/ui/geometry/Rect;)V

    .line 326
    iget-object v0, p0, Landroidx/compose/animation/SharedBoundsNode$approachPlace$1;->this$0:Landroidx/compose/animation/SharedBoundsNode;

    invoke-static {v0}, Landroidx/compose/animation/SharedBoundsNode;->access$getSharedElement(Landroidx/compose/animation/SharedBoundsNode;)Landroidx/compose/animation/SharedElement;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/compose/animation/SharedElement;->getState$animation()Landroidx/compose/animation/SharedTransitionStateMachine$State;

    move-result-object v7

    .line 327
    .local v7, "matchState":Landroidx/compose/animation/SharedTransitionStateMachine$State;
    iget-object v0, p0, Landroidx/compose/animation/SharedBoundsNode$approachPlace$1;->this$0:Landroidx/compose/animation/SharedBoundsNode;

    invoke-virtual {v0}, Landroidx/compose/animation/SharedBoundsNode;->getSharedElementEntry()Landroidx/compose/animation/SharedElementEntry;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/compose/animation/SharedElementEntry;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 329
    iget-object v1, p0, Landroidx/compose/animation/SharedBoundsNode$approachPlace$1;->$placeable:Landroidx/compose/ui/layout/Placeable;

    const/4 v5, 0x4

    const/4 v6, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v0, p1

    invoke-static/range {v0 .. v6}, Landroidx/compose/ui/layout/Placeable$PlacementScope;->place$default(Landroidx/compose/ui/layout/Placeable$PlacementScope;Landroidx/compose/ui/layout/Placeable;IIFILjava/lang/Object;)V

    goto/16 :goto_0

    .line 330
    :cond_0
    invoke-virtual {v7}, Landroidx/compose/animation/SharedTransitionStateMachine$State;->getMatchIsOrHasBeenConfigured()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 332
    invoke-virtual {v7}, Landroidx/compose/animation/SharedTransitionStateMachine$State;->getTargetData()Landroidx/compose/animation/TargetData;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 331
    nop

    .line 336
    .local v1, "targetData":Landroidx/compose/animation/TargetData;
    invoke-virtual {v7}, Landroidx/compose/animation/SharedTransitionStateMachine$State;->getCurrentBounds()Landroidx/compose/ui/geometry/Rect;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 335
    nop

    .line 339
    .local v2, "currentBounds":Landroidx/compose/ui/geometry/Rect;
    iget-object v3, p0, Landroidx/compose/animation/SharedBoundsNode$approachPlace$1;->this$0:Landroidx/compose/animation/SharedBoundsNode;

    invoke-static {v3}, Landroidx/compose/animation/SharedBoundsNode;->access$getSharedElement(Landroidx/compose/animation/SharedBoundsNode;)Landroidx/compose/animation/SharedElement;

    move-result-object v3

    invoke-virtual {v3}, Landroidx/compose/animation/SharedElement;->getScope()Landroidx/compose/animation/SharedTransitionScopeImpl;

    move-result-object v3

    invoke-virtual {v3}, Landroidx/compose/animation/SharedTransitionScopeImpl;->isTransitionActive()Z

    move-result v3

    .line 347
    iget-object v4, p0, Landroidx/compose/animation/SharedBoundsNode$approachPlace$1;->this$0:Landroidx/compose/animation/SharedBoundsNode;

    .line 339
    if-eqz v3, :cond_1

    .line 340
    iget-object v3, p0, Landroidx/compose/animation/SharedBoundsNode$approachPlace$1;->$placeable:Landroidx/compose/ui/layout/Placeable;

    invoke-virtual {v4, p1, v3, v1, v2}, Landroidx/compose/animation/SharedBoundsNode;->approachPlaceMatchInTransition$animation(Landroidx/compose/ui/layout/Placeable$PlacementScope;Landroidx/compose/ui/layout/Placeable;Landroidx/compose/animation/TargetData;Landroidx/compose/ui/geometry/Rect;)V

    goto :goto_0

    .line 347
    :cond_1
    iget-object v3, p0, Landroidx/compose/animation/SharedBoundsNode$approachPlace$1;->$placeable:Landroidx/compose/ui/layout/Placeable;

    invoke-static {v4, p1, v3, v2}, Landroidx/compose/animation/SharedBoundsNode;->access$approachPlaceMatchBeyondTransition(Landroidx/compose/animation/SharedBoundsNode;Landroidx/compose/ui/layout/Placeable$PlacementScope;Landroidx/compose/ui/layout/Placeable;Landroidx/compose/ui/geometry/Rect;)V

    .end local v1    # "targetData":Landroidx/compose/animation/TargetData;
    .end local v2    # "currentBounds":Landroidx/compose/ui/geometry/Rect;
    goto :goto_0

    .line 336
    .restart local v1    # "targetData":Landroidx/compose/animation/TargetData;
    :cond_2
    const/4 v2, 0x0

    .line 337
    .local v2, "$i$a$-requireNotNull-SharedBoundsNode$approachPlace$1$currentBounds$1":I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Match State is configured, but current bounds is null. State = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 336
    .end local v2    # "$i$a$-requireNotNull-SharedBoundsNode$approachPlace$1$currentBounds$1":I
    new-instance v3, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 332
    .end local v1    # "targetData":Landroidx/compose/animation/TargetData;
    :cond_3
    const/4 v1, 0x0

    .line 333
    .local v1, "$i$a$-requireNotNull-SharedBoundsNode$approachPlace$1$targetData$1":I
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Match State is configured, but target data is null. State = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 332
    .end local v1    # "$i$a$-requireNotNull-SharedBoundsNode$approachPlace$1$targetData$1":I
    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 351
    :cond_4
    iget-object v1, p0, Landroidx/compose/animation/SharedBoundsNode$approachPlace$1;->$placeable:Landroidx/compose/ui/layout/Placeable;

    const/4 v5, 0x4

    const/4 v6, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v0, p1

    invoke-static/range {v0 .. v6}, Landroidx/compose/ui/layout/Placeable$PlacementScope;->place$default(Landroidx/compose/ui/layout/Placeable$PlacementScope;Landroidx/compose/ui/layout/Placeable;IIFILjava/lang/Object;)V

    .line 353
    :goto_0
    return-void
.end method
