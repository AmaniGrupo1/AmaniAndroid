.class public final synthetic Landroidx/activity/compose/BackHandlerKt$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation runtime Lcom/android/tools/r8/annotations/LambdaMethod;
    holder = "Landroidx/activity/compose/BackHandlerKt;"
    method = "BackHandler$lambda$3$0"
    proto = "(Landroidx/activity/compose/ComposeBackHandler;ZLandroidx/lifecycle/compose/LifecycleStartStopEffectScope;)Landroidx/lifecycle/compose/LifecycleStopOrDisposeEffectResult;"
.end annotation

.annotation build Lcom/android/tools/r8/annotations/SynthesizedClassV2;
    apiLevel = -0x2
    kind = 0x13
    versionHash = "9aaf5f34c4c84da429ef7f8f6217a1817876f2618cfcf539aba3d7d5a0c703e0"
.end annotation


# instance fields
.field public final synthetic f$0:Landroidx/activity/compose/ComposeBackHandler;

.field public final synthetic f$1:Z


# direct methods
.method public synthetic constructor <init>(Landroidx/activity/compose/ComposeBackHandler;Z)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/activity/compose/BackHandlerKt$$ExternalSyntheticLambda1;->f$0:Landroidx/activity/compose/ComposeBackHandler;

    iput-boolean p2, p0, Landroidx/activity/compose/BackHandlerKt$$ExternalSyntheticLambda1;->f$1:Z

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 0
    iget-object v0, p0, Landroidx/activity/compose/BackHandlerKt$$ExternalSyntheticLambda1;->f$0:Landroidx/activity/compose/ComposeBackHandler;

    iget-boolean v1, p0, Landroidx/activity/compose/BackHandlerKt$$ExternalSyntheticLambda1;->f$1:Z

    check-cast p1, Landroidx/lifecycle/compose/LifecycleStartStopEffectScope;

    invoke-static {v0, v1, p1}, Landroidx/activity/compose/BackHandlerKt;->$r8$lambda$kM0UcaP40dPddLQ78INQJof-AtI(Landroidx/activity/compose/ComposeBackHandler;ZLandroidx/lifecycle/compose/LifecycleStartStopEffectScope;)Landroidx/lifecycle/compose/LifecycleStopOrDisposeEffectResult;

    move-result-object p1

    return-object p1
.end method
