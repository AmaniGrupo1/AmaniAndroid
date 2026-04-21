.class public final synthetic Landroidx/transition/Transition$TransitionNotification$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroidx/transition/Transition$TransitionNotification;


# annotations
.annotation runtime Lcom/android/tools/r8/annotations/LambdaMethod;
    holder = "Landroidx/transition/Transition$TransitionNotification;"
    method = "lambda$static$1"
    proto = "(Landroidx/transition/Transition$TransitionListener;Landroidx/transition/Transition;Z)V"
.end annotation

.annotation build Lcom/android/tools/r8/annotations/SynthesizedClassV2;
    apiLevel = -0x2
    kind = 0x13
    versionHash = "9aaf5f34c4c84da429ef7f8f6217a1817876f2618cfcf539aba3d7d5a0c703e0"
.end annotation


# direct methods
.method public synthetic constructor <init>()V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final notifyListener(Landroidx/transition/Transition$TransitionListener;Landroidx/transition/Transition;Z)V
    .locals 0

    .line 0
    invoke-static {p1, p2, p3}, Landroidx/transition/Transition$TransitionNotification;->lambda$static$1(Landroidx/transition/Transition$TransitionListener;Landroidx/transition/Transition;Z)V

    return-void
.end method
