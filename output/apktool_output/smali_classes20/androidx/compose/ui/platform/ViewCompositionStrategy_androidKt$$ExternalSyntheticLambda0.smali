.class public final synthetic Landroidx/compose/ui/platform/ViewCompositionStrategy_androidKt$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroidx/lifecycle/LifecycleEventObserver;


# annotations
.annotation runtime Lcom/android/tools/r8/annotations/LambdaMethod;
    holder = "Landroidx/compose/ui/platform/ViewCompositionStrategy_androidKt;"
    method = "installForLifecycle$lambda$1"
    proto = "(Landroidx/compose/ui/platform/AbstractComposeView;Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Lifecycle$Event;)V"
.end annotation

.annotation build Lcom/android/tools/r8/annotations/SynthesizedClassV2;
    apiLevel = -0x2
    kind = 0x13
    versionHash = "9aaf5f34c4c84da429ef7f8f6217a1817876f2618cfcf539aba3d7d5a0c703e0"
.end annotation


# instance fields
.field public final synthetic f$0:Landroidx/compose/ui/platform/AbstractComposeView;


# direct methods
.method public synthetic constructor <init>(Landroidx/compose/ui/platform/AbstractComposeView;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/compose/ui/platform/ViewCompositionStrategy_androidKt$$ExternalSyntheticLambda0;->f$0:Landroidx/compose/ui/platform/AbstractComposeView;

    return-void
.end method


# virtual methods
.method public final onStateChanged(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Lifecycle$Event;)V
    .locals 1

    .line 0
    iget-object v0, p0, Landroidx/compose/ui/platform/ViewCompositionStrategy_androidKt$$ExternalSyntheticLambda0;->f$0:Landroidx/compose/ui/platform/AbstractComposeView;

    invoke-static {v0, p1, p2}, Landroidx/compose/ui/platform/ViewCompositionStrategy_androidKt;->installForLifecycle$lambda$1(Landroidx/compose/ui/platform/AbstractComposeView;Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Lifecycle$Event;)V

    return-void
.end method
