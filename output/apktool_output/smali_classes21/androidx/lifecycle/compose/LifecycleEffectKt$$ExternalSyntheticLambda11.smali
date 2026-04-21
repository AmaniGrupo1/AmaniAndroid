.class public final synthetic Landroidx/lifecycle/compose/LifecycleEffectKt$$ExternalSyntheticLambda11;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroidx/lifecycle/LifecycleEventObserver;


# annotations
.annotation runtime Lcom/android/tools/r8/annotations/LambdaMethod;
    holder = "Landroidx/lifecycle/compose/LifecycleEffectKt;"
    method = "LifecycleEventEffect$lambda$1$0$0"
    proto = "(Landroidx/lifecycle/Lifecycle$Event;Landroidx/compose/runtime/State;Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Lifecycle$Event;)V"
.end annotation

.annotation build Lcom/android/tools/r8/annotations/SynthesizedClassV2;
    apiLevel = -0x2
    kind = 0x13
    versionHash = "9aaf5f34c4c84da429ef7f8f6217a1817876f2618cfcf539aba3d7d5a0c703e0"
.end annotation


# instance fields
.field public final synthetic f$0:Landroidx/lifecycle/Lifecycle$Event;

.field public final synthetic f$1:Landroidx/compose/runtime/State;


# direct methods
.method public synthetic constructor <init>(Landroidx/lifecycle/Lifecycle$Event;Landroidx/compose/runtime/State;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/lifecycle/compose/LifecycleEffectKt$$ExternalSyntheticLambda11;->f$0:Landroidx/lifecycle/Lifecycle$Event;

    iput-object p2, p0, Landroidx/lifecycle/compose/LifecycleEffectKt$$ExternalSyntheticLambda11;->f$1:Landroidx/compose/runtime/State;

    return-void
.end method


# virtual methods
.method public final onStateChanged(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Lifecycle$Event;)V
    .locals 2

    .line 0
    iget-object v0, p0, Landroidx/lifecycle/compose/LifecycleEffectKt$$ExternalSyntheticLambda11;->f$0:Landroidx/lifecycle/Lifecycle$Event;

    iget-object v1, p0, Landroidx/lifecycle/compose/LifecycleEffectKt$$ExternalSyntheticLambda11;->f$1:Landroidx/compose/runtime/State;

    invoke-static {v0, v1, p1, p2}, Landroidx/lifecycle/compose/LifecycleEffectKt;->$r8$lambda$A6QyfzS99xVcWsa9fXn_JRBHe1Q(Landroidx/lifecycle/Lifecycle$Event;Landroidx/compose/runtime/State;Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Lifecycle$Event;)V

    return-void
.end method
