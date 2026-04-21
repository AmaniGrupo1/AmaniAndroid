.class public final synthetic Landroidx/compose/runtime/snapshots/tooling/SnapshotObserverKt$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroidx/compose/runtime/snapshots/ObserverHandle;


# annotations
.annotation runtime Lcom/android/tools/r8/annotations/LambdaMethod;
    holder = "Landroidx/compose/runtime/snapshots/tooling/SnapshotObserverKt;"
    method = "observeSnapshots$lambda$1"
    proto = "(Landroidx/compose/runtime/snapshots/tooling/SnapshotObserver;)V"
.end annotation

.annotation build Lcom/android/tools/r8/annotations/SynthesizedClassV2;
    apiLevel = -0x2
    kind = 0x13
    versionHash = "9aaf5f34c4c84da429ef7f8f6217a1817876f2618cfcf539aba3d7d5a0c703e0"
.end annotation


# instance fields
.field public final synthetic f$0:Landroidx/compose/runtime/snapshots/tooling/SnapshotObserver;


# direct methods
.method public synthetic constructor <init>(Landroidx/compose/runtime/snapshots/tooling/SnapshotObserver;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/compose/runtime/snapshots/tooling/SnapshotObserverKt$$ExternalSyntheticLambda1;->f$0:Landroidx/compose/runtime/snapshots/tooling/SnapshotObserver;

    return-void
.end method


# virtual methods
.method public final dispose()V
    .locals 1

    .line 0
    iget-object v0, p0, Landroidx/compose/runtime/snapshots/tooling/SnapshotObserverKt$$ExternalSyntheticLambda1;->f$0:Landroidx/compose/runtime/snapshots/tooling/SnapshotObserver;

    invoke-static {v0}, Landroidx/compose/runtime/snapshots/tooling/SnapshotObserverKt;->observeSnapshots$lambda$1(Landroidx/compose/runtime/snapshots/tooling/SnapshotObserver;)V

    return-void
.end method
