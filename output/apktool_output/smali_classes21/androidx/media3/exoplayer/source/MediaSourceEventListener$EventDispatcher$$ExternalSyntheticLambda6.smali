.class public final synthetic Landroidx/media3/exoplayer/source/MediaSourceEventListener$EventDispatcher$$ExternalSyntheticLambda6;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation runtime Lcom/android/tools/r8/annotations/LambdaMethod;
    holder = "Landroidx/media3/exoplayer/source/MediaSourceEventListener$EventDispatcher;"
    method = "lambda$dispatchEvent$6"
    proto = "(Landroidx/media3/common/util/Consumer;Landroidx/media3/exoplayer/source/MediaSourceEventListener;)V"
.end annotation

.annotation build Lcom/android/tools/r8/annotations/SynthesizedClassV2;
    apiLevel = -0x2
    kind = 0x13
    versionHash = "9aaf5f34c4c84da429ef7f8f6217a1817876f2618cfcf539aba3d7d5a0c703e0"
.end annotation


# instance fields
.field public final synthetic f$0:Landroidx/media3/common/util/Consumer;

.field public final synthetic f$1:Landroidx/media3/exoplayer/source/MediaSourceEventListener;


# direct methods
.method public synthetic constructor <init>(Landroidx/media3/common/util/Consumer;Landroidx/media3/exoplayer/source/MediaSourceEventListener;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/media3/exoplayer/source/MediaSourceEventListener$EventDispatcher$$ExternalSyntheticLambda6;->f$0:Landroidx/media3/common/util/Consumer;

    iput-object p2, p0, Landroidx/media3/exoplayer/source/MediaSourceEventListener$EventDispatcher$$ExternalSyntheticLambda6;->f$1:Landroidx/media3/exoplayer/source/MediaSourceEventListener;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 0
    iget-object v0, p0, Landroidx/media3/exoplayer/source/MediaSourceEventListener$EventDispatcher$$ExternalSyntheticLambda6;->f$0:Landroidx/media3/common/util/Consumer;

    iget-object v1, p0, Landroidx/media3/exoplayer/source/MediaSourceEventListener$EventDispatcher$$ExternalSyntheticLambda6;->f$1:Landroidx/media3/exoplayer/source/MediaSourceEventListener;

    invoke-static {v0, v1}, Landroidx/media3/exoplayer/source/MediaSourceEventListener$EventDispatcher;->lambda$dispatchEvent$6(Landroidx/media3/common/util/Consumer;Landroidx/media3/exoplayer/source/MediaSourceEventListener;)V

    return-void
.end method
