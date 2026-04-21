.class public final synthetic Landroidx/media3/common/util/ListenerSet$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation runtime Lcom/android/tools/r8/annotations/LambdaMethod;
    holder = "Landroidx/media3/common/util/ListenerSet;"
    method = "lambda$queueEvent$0"
    proto = "(Ljava/util/concurrent/CopyOnWriteArraySet;ILandroidx/media3/common/util/ListenerSet$Event;)V"
.end annotation

.annotation build Lcom/android/tools/r8/annotations/SynthesizedClassV2;
    apiLevel = -0x2
    kind = 0x13
    versionHash = "9aaf5f34c4c84da429ef7f8f6217a1817876f2618cfcf539aba3d7d5a0c703e0"
.end annotation


# instance fields
.field public final synthetic f$0:Ljava/util/concurrent/CopyOnWriteArraySet;

.field public final synthetic f$1:I

.field public final synthetic f$2:Landroidx/media3/common/util/ListenerSet$Event;


# direct methods
.method public synthetic constructor <init>(Ljava/util/concurrent/CopyOnWriteArraySet;ILandroidx/media3/common/util/ListenerSet$Event;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/media3/common/util/ListenerSet$$ExternalSyntheticLambda1;->f$0:Ljava/util/concurrent/CopyOnWriteArraySet;

    iput p2, p0, Landroidx/media3/common/util/ListenerSet$$ExternalSyntheticLambda1;->f$1:I

    iput-object p3, p0, Landroidx/media3/common/util/ListenerSet$$ExternalSyntheticLambda1;->f$2:Landroidx/media3/common/util/ListenerSet$Event;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 0
    iget-object v0, p0, Landroidx/media3/common/util/ListenerSet$$ExternalSyntheticLambda1;->f$0:Ljava/util/concurrent/CopyOnWriteArraySet;

    iget v1, p0, Landroidx/media3/common/util/ListenerSet$$ExternalSyntheticLambda1;->f$1:I

    iget-object v2, p0, Landroidx/media3/common/util/ListenerSet$$ExternalSyntheticLambda1;->f$2:Landroidx/media3/common/util/ListenerSet$Event;

    invoke-static {v0, v1, v2}, Landroidx/media3/common/util/ListenerSet;->lambda$queueEvent$0(Ljava/util/concurrent/CopyOnWriteArraySet;ILandroidx/media3/common/util/ListenerSet$Event;)V

    return-void
.end method
