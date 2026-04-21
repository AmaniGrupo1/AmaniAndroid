.class public final synthetic Landroidx/media3/exoplayer/source/preload/PreloadMediaSource$PreloadMediaPeriodCallback$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation runtime Lcom/android/tools/r8/annotations/LambdaMethod;
    holder = "Landroidx/media3/exoplayer/source/preload/PreloadMediaSource$PreloadMediaPeriodCallback;"
    method = "lambda$maybeContinueLoading$2"
    proto = "(Landroidx/media3/exoplayer/source/MediaPeriod;Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;)V"
.end annotation

.annotation build Lcom/android/tools/r8/annotations/SynthesizedClassV2;
    apiLevel = -0x2
    kind = 0x13
    versionHash = "9aaf5f34c4c84da429ef7f8f6217a1817876f2618cfcf539aba3d7d5a0c703e0"
.end annotation


# instance fields
.field public final synthetic f$0:Landroidx/media3/exoplayer/source/preload/PreloadMediaSource$PreloadMediaPeriodCallback;

.field public final synthetic f$1:Landroidx/media3/exoplayer/source/MediaPeriod;

.field public final synthetic f$2:Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;


# direct methods
.method public synthetic constructor <init>(Landroidx/media3/exoplayer/source/preload/PreloadMediaSource$PreloadMediaPeriodCallback;Landroidx/media3/exoplayer/source/MediaPeriod;Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/media3/exoplayer/source/preload/PreloadMediaSource$PreloadMediaPeriodCallback$$ExternalSyntheticLambda0;->f$0:Landroidx/media3/exoplayer/source/preload/PreloadMediaSource$PreloadMediaPeriodCallback;

    iput-object p2, p0, Landroidx/media3/exoplayer/source/preload/PreloadMediaSource$PreloadMediaPeriodCallback$$ExternalSyntheticLambda0;->f$1:Landroidx/media3/exoplayer/source/MediaPeriod;

    iput-object p3, p0, Landroidx/media3/exoplayer/source/preload/PreloadMediaSource$PreloadMediaPeriodCallback$$ExternalSyntheticLambda0;->f$2:Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 0
    iget-object v0, p0, Landroidx/media3/exoplayer/source/preload/PreloadMediaSource$PreloadMediaPeriodCallback$$ExternalSyntheticLambda0;->f$0:Landroidx/media3/exoplayer/source/preload/PreloadMediaSource$PreloadMediaPeriodCallback;

    iget-object v1, p0, Landroidx/media3/exoplayer/source/preload/PreloadMediaSource$PreloadMediaPeriodCallback$$ExternalSyntheticLambda0;->f$1:Landroidx/media3/exoplayer/source/MediaPeriod;

    iget-object v2, p0, Landroidx/media3/exoplayer/source/preload/PreloadMediaSource$PreloadMediaPeriodCallback$$ExternalSyntheticLambda0;->f$2:Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    invoke-virtual {v0, v1, v2}, Landroidx/media3/exoplayer/source/preload/PreloadMediaSource$PreloadMediaPeriodCallback;->lambda$maybeContinueLoading$2$androidx-media3-exoplayer-source-preload-PreloadMediaSource$PreloadMediaPeriodCallback(Landroidx/media3/exoplayer/source/MediaPeriod;Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;)V

    return-void
.end method
