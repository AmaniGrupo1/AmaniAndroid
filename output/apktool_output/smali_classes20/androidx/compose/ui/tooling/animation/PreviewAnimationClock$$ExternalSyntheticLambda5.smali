.class public final synthetic Landroidx/compose/ui/tooling/animation/PreviewAnimationClock$$ExternalSyntheticLambda5;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation runtime Lcom/android/tools/r8/annotations/LambdaMethod;
    holder = "Landroidx/compose/ui/tooling/animation/PreviewAnimationClock;"
    method = "trackTransition$lambda$0"
    proto = "(Landroidx/compose/animation/core/Transition;Landroidx/compose/ui/tooling/animation/PreviewAnimationClock;Ljava/lang/Object;)Lkotlin/Unit;"
.end annotation

.annotation build Lcom/android/tools/r8/annotations/SynthesizedClassV2;
    apiLevel = -0x2
    kind = 0x13
    versionHash = "9aaf5f34c4c84da429ef7f8f6217a1817876f2618cfcf539aba3d7d5a0c703e0"
.end annotation


# instance fields
.field public final synthetic f$0:Landroidx/compose/animation/core/Transition;

.field public final synthetic f$1:Landroidx/compose/ui/tooling/animation/PreviewAnimationClock;


# direct methods
.method public synthetic constructor <init>(Landroidx/compose/animation/core/Transition;Landroidx/compose/ui/tooling/animation/PreviewAnimationClock;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/compose/ui/tooling/animation/PreviewAnimationClock$$ExternalSyntheticLambda5;->f$0:Landroidx/compose/animation/core/Transition;

    iput-object p2, p0, Landroidx/compose/ui/tooling/animation/PreviewAnimationClock$$ExternalSyntheticLambda5;->f$1:Landroidx/compose/ui/tooling/animation/PreviewAnimationClock;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 0
    iget-object v0, p0, Landroidx/compose/ui/tooling/animation/PreviewAnimationClock$$ExternalSyntheticLambda5;->f$0:Landroidx/compose/animation/core/Transition;

    iget-object v1, p0, Landroidx/compose/ui/tooling/animation/PreviewAnimationClock$$ExternalSyntheticLambda5;->f$1:Landroidx/compose/ui/tooling/animation/PreviewAnimationClock;

    invoke-static {v0, v1, p1}, Landroidx/compose/ui/tooling/animation/PreviewAnimationClock;->trackTransition$lambda$0(Landroidx/compose/animation/core/Transition;Landroidx/compose/ui/tooling/animation/PreviewAnimationClock;Ljava/lang/Object;)Lkotlin/Unit;

    move-result-object p1

    return-object p1
.end method
