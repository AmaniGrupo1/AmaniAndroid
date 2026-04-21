.class public final synthetic Landroidx/media3/exoplayer/MediaSourceList$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroidx/media3/exoplayer/source/MediaSource$MediaSourceCaller;


# annotations
.annotation runtime Lcom/android/tools/r8/annotations/LambdaMethod;
    holder = "Landroidx/media3/exoplayer/MediaSourceList;"
    method = "lambda$prepareChildSource$0"
    proto = "(Landroidx/media3/exoplayer/source/MediaSource;Landroidx/media3/common/Timeline;)V"
.end annotation

.annotation build Lcom/android/tools/r8/annotations/SynthesizedClassV2;
    apiLevel = -0x2
    kind = 0x13
    versionHash = "9aaf5f34c4c84da429ef7f8f6217a1817876f2618cfcf539aba3d7d5a0c703e0"
.end annotation


# instance fields
.field public final synthetic f$0:Landroidx/media3/exoplayer/MediaSourceList;


# direct methods
.method public synthetic constructor <init>(Landroidx/media3/exoplayer/MediaSourceList;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/media3/exoplayer/MediaSourceList$$ExternalSyntheticLambda0;->f$0:Landroidx/media3/exoplayer/MediaSourceList;

    return-void
.end method


# virtual methods
.method public final onSourceInfoRefreshed(Landroidx/media3/exoplayer/source/MediaSource;Landroidx/media3/common/Timeline;)V
    .locals 1

    .line 0
    iget-object v0, p0, Landroidx/media3/exoplayer/MediaSourceList$$ExternalSyntheticLambda0;->f$0:Landroidx/media3/exoplayer/MediaSourceList;

    invoke-virtual {v0, p1, p2}, Landroidx/media3/exoplayer/MediaSourceList;->lambda$prepareChildSource$0$androidx-media3-exoplayer-MediaSourceList(Landroidx/media3/exoplayer/source/MediaSource;Landroidx/media3/common/Timeline;)V

    return-void
.end method
