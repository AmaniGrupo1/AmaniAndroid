.class final Landroidx/media3/exoplayer/video/VideoFrameRenderControl;
.super Ljava/lang/Object;
.source "VideoFrameRenderControl.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media3/exoplayer/video/VideoFrameRenderControl$FrameRenderer;
    }
.end annotation


# instance fields
.field private final frameRenderer:Landroidx/media3/exoplayer/video/VideoFrameRenderControl$FrameRenderer;

.field private lastPresentationTimeUs:J

.field private latestInputPresentationTimeUs:J

.field private latestOutputPresentationTimeUs:J

.field private outputStreamStartPositionUs:J

.field private outputVideoSize:Landroidx/media3/common/VideoSize;

.field private final presentationTimestampsUs:Landroidx/media3/common/util/LongArrayQueue;

.field private final streamStartPositionsUs:Landroidx/media3/common/util/TimedValueQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/media3/common/util/TimedValueQueue<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private final videoFrameReleaseControl:Landroidx/media3/exoplayer/video/VideoFrameReleaseControl;

.field private final videoFrameReleaseEarlyTimeForecaster:Landroidx/media3/exoplayer/video/VideoFrameReleaseEarlyTimeForecaster;

.field private final videoFrameReleaseInfo:Landroidx/media3/exoplayer/video/VideoFrameReleaseControl$FrameReleaseInfo;

.field private final videoSizes:Landroidx/media3/common/util/TimedValueQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/media3/common/util/TimedValueQueue<",
            "Landroidx/media3/common/VideoSize;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroidx/media3/exoplayer/video/VideoFrameRenderControl$FrameRenderer;Landroidx/media3/exoplayer/video/VideoFrameReleaseControl;Landroidx/media3/exoplayer/video/VideoFrameReleaseEarlyTimeForecaster;)V
    .locals 3
    .param p1, "frameRenderer"    # Landroidx/media3/exoplayer/video/VideoFrameRenderControl$FrameRenderer;
    .param p2, "videoFrameReleaseControl"    # Landroidx/media3/exoplayer/video/VideoFrameReleaseControl;
    .param p3, "videoFrameReleaseEarlyTimeForecaster"    # Landroidx/media3/exoplayer/video/VideoFrameReleaseEarlyTimeForecaster;

    .line 95
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 96
    iput-object p1, p0, Landroidx/media3/exoplayer/video/VideoFrameRenderControl;->frameRenderer:Landroidx/media3/exoplayer/video/VideoFrameRenderControl$FrameRenderer;

    .line 97
    iput-object p2, p0, Landroidx/media3/exoplayer/video/VideoFrameRenderControl;->videoFrameReleaseControl:Landroidx/media3/exoplayer/video/VideoFrameReleaseControl;

    .line 98
    iput-object p3, p0, Landroidx/media3/exoplayer/video/VideoFrameRenderControl;->videoFrameReleaseEarlyTimeForecaster:Landroidx/media3/exoplayer/video/VideoFrameReleaseEarlyTimeForecaster;

    .line 99
    new-instance v0, Landroidx/media3/exoplayer/video/VideoFrameReleaseControl$FrameReleaseInfo;

    invoke-direct {v0}, Landroidx/media3/exoplayer/video/VideoFrameReleaseControl$FrameReleaseInfo;-><init>()V

    iput-object v0, p0, Landroidx/media3/exoplayer/video/VideoFrameRenderControl;->videoFrameReleaseInfo:Landroidx/media3/exoplayer/video/VideoFrameReleaseControl$FrameReleaseInfo;

    .line 100
    new-instance v0, Landroidx/media3/common/util/TimedValueQueue;

    invoke-direct {v0}, Landroidx/media3/common/util/TimedValueQueue;-><init>()V

    iput-object v0, p0, Landroidx/media3/exoplayer/video/VideoFrameRenderControl;->videoSizes:Landroidx/media3/common/util/TimedValueQueue;

    .line 101
    new-instance v0, Landroidx/media3/common/util/TimedValueQueue;

    invoke-direct {v0}, Landroidx/media3/common/util/TimedValueQueue;-><init>()V

    iput-object v0, p0, Landroidx/media3/exoplayer/video/VideoFrameRenderControl;->streamStartPositionsUs:Landroidx/media3/common/util/TimedValueQueue;

    .line 102
    new-instance v0, Landroidx/media3/common/util/LongArrayQueue;

    invoke-direct {v0}, Landroidx/media3/common/util/LongArrayQueue;-><init>()V

    iput-object v0, p0, Landroidx/media3/exoplayer/video/VideoFrameRenderControl;->presentationTimestampsUs:Landroidx/media3/common/util/LongArrayQueue;

    .line 103
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v0, p0, Landroidx/media3/exoplayer/video/VideoFrameRenderControl;->latestInputPresentationTimeUs:J

    .line 104
    sget-object v2, Landroidx/media3/common/VideoSize;->UNKNOWN:Landroidx/media3/common/VideoSize;

    iput-object v2, p0, Landroidx/media3/exoplayer/video/VideoFrameRenderControl;->outputVideoSize:Landroidx/media3/common/VideoSize;

    .line 105
    iput-wide v0, p0, Landroidx/media3/exoplayer/video/VideoFrameRenderControl;->latestOutputPresentationTimeUs:J

    .line 106
    iput-wide v0, p0, Landroidx/media3/exoplayer/video/VideoFrameRenderControl;->lastPresentationTimeUs:J

    .line 107
    return-void
.end method

.method private dropFrame()V
    .locals 1

    .line 250
    iget-object v0, p0, Landroidx/media3/exoplayer/video/VideoFrameRenderControl;->presentationTimestampsUs:Landroidx/media3/common/util/LongArrayQueue;

    invoke-virtual {v0}, Landroidx/media3/common/util/LongArrayQueue;->remove()J

    .line 251
    iget-object v0, p0, Landroidx/media3/exoplayer/video/VideoFrameRenderControl;->frameRenderer:Landroidx/media3/exoplayer/video/VideoFrameRenderControl$FrameRenderer;

    invoke-interface {v0}, Landroidx/media3/exoplayer/video/VideoFrameRenderControl$FrameRenderer;->dropFrame()V

    .line 252
    return-void
.end method

.method private static getLastAndClear(Landroidx/media3/common/util/TimedValueQueue;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroidx/media3/common/util/TimedValueQueue<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 292
    .local p0, "queue":Landroidx/media3/common/util/TimedValueQueue;, "Landroidx/media3/common/util/TimedValueQueue<TT;>;"
    invoke-virtual {p0}, Landroidx/media3/common/util/TimedValueQueue;->size()I

    move-result v0

    const/4 v1, 0x1

    if-lez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    .line 293
    :goto_1
    invoke-virtual {p0}, Landroidx/media3/common/util/TimedValueQueue;->size()I

    move-result v0

    if-le v0, v1, :cond_1

    .line 294
    invoke-virtual {p0}, Landroidx/media3/common/util/TimedValueQueue;->pollFirst()Ljava/lang/Object;

    goto :goto_1

    .line 296
    :cond_1
    invoke-virtual {p0}, Landroidx/media3/common/util/TimedValueQueue;->pollFirst()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method private maybeUpdateOutputStream(J)Z
    .locals 5
    .param p1, "presentationTimeUs"    # J

    .line 271
    iget-object v0, p0, Landroidx/media3/exoplayer/video/VideoFrameRenderControl;->streamStartPositionsUs:Landroidx/media3/common/util/TimedValueQueue;

    invoke-virtual {v0, p1, p2}, Landroidx/media3/common/util/TimedValueQueue;->pollFloor(J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    .line 272
    .local v0, "newOutputStreamStartPositionUs":Ljava/lang/Long;
    if-eqz v0, :cond_0

    .line 273
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    iget-wide v3, p0, Landroidx/media3/exoplayer/video/VideoFrameRenderControl;->outputStreamStartPositionUs:J

    cmp-long v1, v1, v3

    if-eqz v1, :cond_0

    .line 274
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    iput-wide v1, p0, Landroidx/media3/exoplayer/video/VideoFrameRenderControl;->outputStreamStartPositionUs:J

    .line 275
    const/4 v1, 0x1

    return v1

    .line 277
    :cond_0
    const/4 v1, 0x0

    return v1
.end method

.method private maybeUpdateOutputVideoSize(J)Z
    .locals 2
    .param p1, "presentationTimeUs"    # J

    .line 281
    iget-object v0, p0, Landroidx/media3/exoplayer/video/VideoFrameRenderControl;->videoSizes:Landroidx/media3/common/util/TimedValueQueue;

    invoke-virtual {v0, p1, p2}, Landroidx/media3/common/util/TimedValueQueue;->pollFloor(J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media3/common/VideoSize;

    .line 282
    .local v0, "newOutputVideoSize":Landroidx/media3/common/VideoSize;
    if-eqz v0, :cond_0

    sget-object v1, Landroidx/media3/common/VideoSize;->UNKNOWN:Landroidx/media3/common/VideoSize;

    .line 283
    invoke-virtual {v0, v1}, Landroidx/media3/common/VideoSize;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Landroidx/media3/exoplayer/video/VideoFrameRenderControl;->outputVideoSize:Landroidx/media3/common/VideoSize;

    .line 284
    invoke-virtual {v0, v1}, Landroidx/media3/common/VideoSize;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 285
    iput-object v0, p0, Landroidx/media3/exoplayer/video/VideoFrameRenderControl;->outputVideoSize:Landroidx/media3/common/VideoSize;

    .line 286
    const/4 v1, 0x1

    return v1

    .line 288
    :cond_0
    const/4 v1, 0x0

    return v1
.end method

.method private renderFrame(Z)V
    .locals 7
    .param p1, "shouldRenderImmediately"    # Z

    .line 255
    iget-object v0, p0, Landroidx/media3/exoplayer/video/VideoFrameRenderControl;->presentationTimestampsUs:Landroidx/media3/common/util/LongArrayQueue;

    invoke-virtual {v0}, Landroidx/media3/common/util/LongArrayQueue;->remove()J

    move-result-wide v4

    .line 257
    .local v4, "presentationTimeUs":J
    invoke-direct {p0, v4, v5}, Landroidx/media3/exoplayer/video/VideoFrameRenderControl;->maybeUpdateOutputVideoSize(J)Z

    move-result v0

    .line 258
    .local v0, "videoSizeUpdated":Z
    if-eqz v0, :cond_0

    .line 259
    iget-object v1, p0, Landroidx/media3/exoplayer/video/VideoFrameRenderControl;->frameRenderer:Landroidx/media3/exoplayer/video/VideoFrameRenderControl$FrameRenderer;

    iget-object v2, p0, Landroidx/media3/exoplayer/video/VideoFrameRenderControl;->outputVideoSize:Landroidx/media3/common/VideoSize;

    invoke-interface {v1, v2}, Landroidx/media3/exoplayer/video/VideoFrameRenderControl$FrameRenderer;->onVideoSizeChanged(Landroidx/media3/common/VideoSize;)V

    .line 262
    :cond_0
    if-eqz p1, :cond_1

    .line 263
    sget-object v1, Landroidx/media3/common/util/SystemClock;->DEFAULT:Landroidx/media3/common/util/Clock;

    invoke-interface {v1}, Landroidx/media3/common/util/Clock;->nanoTime()J

    move-result-wide v1

    move-wide v2, v1

    goto :goto_0

    .line 264
    :cond_1
    iget-object v1, p0, Landroidx/media3/exoplayer/video/VideoFrameRenderControl;->videoFrameReleaseInfo:Landroidx/media3/exoplayer/video/VideoFrameReleaseControl$FrameReleaseInfo;

    invoke-virtual {v1}, Landroidx/media3/exoplayer/video/VideoFrameReleaseControl$FrameReleaseInfo;->getReleaseTimeNs()J

    move-result-wide v1

    move-wide v2, v1

    :goto_0
    nop

    .line 265
    .local v2, "renderTimeNs":J
    iget-object v1, p0, Landroidx/media3/exoplayer/video/VideoFrameRenderControl;->frameRenderer:Landroidx/media3/exoplayer/video/VideoFrameRenderControl$FrameRenderer;

    iget-object v6, p0, Landroidx/media3/exoplayer/video/VideoFrameRenderControl;->videoFrameReleaseControl:Landroidx/media3/exoplayer/video/VideoFrameReleaseControl;

    .line 266
    invoke-virtual {v6}, Landroidx/media3/exoplayer/video/VideoFrameReleaseControl;->onFrameReleasedIsFirstFrame()Z

    move-result v6

    .line 265
    invoke-interface/range {v1 .. v6}, Landroidx/media3/exoplayer/video/VideoFrameRenderControl$FrameRenderer;->renderFrame(JJZ)V

    .line 267
    return-void
.end method


# virtual methods
.method public flush()V
    .locals 4

    .line 111
    iget-object v0, p0, Landroidx/media3/exoplayer/video/VideoFrameRenderControl;->presentationTimestampsUs:Landroidx/media3/common/util/LongArrayQueue;

    invoke-virtual {v0}, Landroidx/media3/common/util/LongArrayQueue;->clear()V

    .line 112
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v0, p0, Landroidx/media3/exoplayer/video/VideoFrameRenderControl;->latestInputPresentationTimeUs:J

    .line 113
    iput-wide v0, p0, Landroidx/media3/exoplayer/video/VideoFrameRenderControl;->latestOutputPresentationTimeUs:J

    .line 114
    iput-wide v0, p0, Landroidx/media3/exoplayer/video/VideoFrameRenderControl;->lastPresentationTimeUs:J

    .line 115
    iget-object v0, p0, Landroidx/media3/exoplayer/video/VideoFrameRenderControl;->streamStartPositionsUs:Landroidx/media3/common/util/TimedValueQueue;

    invoke-virtual {v0}, Landroidx/media3/common/util/TimedValueQueue;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 120
    iget-object v0, p0, Landroidx/media3/exoplayer/video/VideoFrameRenderControl;->streamStartPositionsUs:Landroidx/media3/common/util/TimedValueQueue;

    invoke-static {v0}, Landroidx/media3/exoplayer/video/VideoFrameRenderControl;->getLastAndClear(Landroidx/media3/common/util/TimedValueQueue;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    iput-wide v0, p0, Landroidx/media3/exoplayer/video/VideoFrameRenderControl;->outputStreamStartPositionUs:J

    .line 122
    :cond_0
    iget-object v0, p0, Landroidx/media3/exoplayer/video/VideoFrameRenderControl;->videoSizes:Landroidx/media3/common/util/TimedValueQueue;

    invoke-virtual {v0}, Landroidx/media3/common/util/TimedValueQueue;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 125
    iget-object v0, p0, Landroidx/media3/exoplayer/video/VideoFrameRenderControl;->videoSizes:Landroidx/media3/common/util/TimedValueQueue;

    invoke-static {v0}, Landroidx/media3/exoplayer/video/VideoFrameRenderControl;->getLastAndClear(Landroidx/media3/common/util/TimedValueQueue;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media3/common/VideoSize;

    .line 126
    .local v0, "lastVideoSize":Landroidx/media3/common/VideoSize;
    iget-object v1, p0, Landroidx/media3/exoplayer/video/VideoFrameRenderControl;->videoSizes:Landroidx/media3/common/util/TimedValueQueue;

    const-wide/16 v2, 0x0

    invoke-virtual {v1, v2, v3, v0}, Landroidx/media3/common/util/TimedValueQueue;->add(JLjava/lang/Object;)V

    .line 128
    .end local v0    # "lastVideoSize":Landroidx/media3/common/VideoSize;
    :cond_1
    return-void
.end method

.method public isEnded()Z
    .locals 4

    .line 245
    iget-wide v0, p0, Landroidx/media3/exoplayer/video/VideoFrameRenderControl;->lastPresentationTimeUs:J

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    iget-wide v0, p0, Landroidx/media3/exoplayer/video/VideoFrameRenderControl;->latestOutputPresentationTimeUs:J

    iget-wide v2, p0, Landroidx/media3/exoplayer/video/VideoFrameRenderControl;->lastPresentationTimeUs:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public onFrameAvailableForRendering(J)V
    .locals 2
    .param p1, "presentationTimeUs"    # J

    .line 214
    iget-object v0, p0, Landroidx/media3/exoplayer/video/VideoFrameRenderControl;->presentationTimestampsUs:Landroidx/media3/common/util/LongArrayQueue;

    invoke-virtual {v0, p1, p2}, Landroidx/media3/common/util/LongArrayQueue;->add(J)V

    .line 215
    iput-wide p1, p0, Landroidx/media3/exoplayer/video/VideoFrameRenderControl;->latestInputPresentationTimeUs:J

    .line 216
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v0, p0, Landroidx/media3/exoplayer/video/VideoFrameRenderControl;->lastPresentationTimeUs:J

    .line 217
    return-void
.end method

.method public onStreamChanged(IJ)V
    .locals 5
    .param p1, "firstFrameReleaseInstruction"    # I
    .param p2, "streamStartPositionUs"    # J

    .line 194
    iget-object v0, p0, Landroidx/media3/exoplayer/video/VideoFrameRenderControl;->presentationTimestampsUs:Landroidx/media3/common/util/LongArrayQueue;

    invoke-virtual {v0}, Landroidx/media3/common/util/LongArrayQueue;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 195
    iget-object v0, p0, Landroidx/media3/exoplayer/video/VideoFrameRenderControl;->videoFrameReleaseControl:Landroidx/media3/exoplayer/video/VideoFrameReleaseControl;

    invoke-virtual {v0, p1}, Landroidx/media3/exoplayer/video/VideoFrameReleaseControl;->onStreamChanged(I)V

    .line 196
    iput-wide p2, p0, Landroidx/media3/exoplayer/video/VideoFrameRenderControl;->outputStreamStartPositionUs:J

    goto :goto_1

    .line 200
    :cond_0
    iget-object v0, p0, Landroidx/media3/exoplayer/video/VideoFrameRenderControl;->streamStartPositionsUs:Landroidx/media3/common/util/TimedValueQueue;

    .line 201
    iget-wide v1, p0, Landroidx/media3/exoplayer/video/VideoFrameRenderControl;->latestInputPresentationTimeUs:J

    const-wide v3, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v1, v1, v3

    if-nez v1, :cond_1

    .line 202
    const-wide/high16 v1, -0x4000000000000000L    # -2.0

    goto :goto_0

    .line 203
    :cond_1
    iget-wide v1, p0, Landroidx/media3/exoplayer/video/VideoFrameRenderControl;->latestInputPresentationTimeUs:J

    const-wide/16 v3, 0x1

    add-long/2addr v1, v3

    .line 204
    :goto_0
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    .line 200
    invoke-virtual {v0, v1, v2, v3}, Landroidx/media3/common/util/TimedValueQueue;->add(JLjava/lang/Object;)V

    .line 206
    :goto_1
    return-void
.end method

.method public onVideoSizeChanged(II)V
    .locals 5
    .param p1, "width"    # I
    .param p2, "height"    # I

    .line 186
    iget-object v0, p0, Landroidx/media3/exoplayer/video/VideoFrameRenderControl;->videoSizes:Landroidx/media3/common/util/TimedValueQueue;

    .line 187
    iget-wide v1, p0, Landroidx/media3/exoplayer/video/VideoFrameRenderControl;->latestInputPresentationTimeUs:J

    const-wide v3, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v1, v1, v3

    if-nez v1, :cond_0

    const-wide/16 v1, 0x0

    goto :goto_0

    :cond_0
    iget-wide v1, p0, Landroidx/media3/exoplayer/video/VideoFrameRenderControl;->latestInputPresentationTimeUs:J

    const-wide/16 v3, 0x1

    add-long/2addr v1, v3

    :goto_0
    new-instance v3, Landroidx/media3/common/VideoSize;

    invoke-direct {v3, p1, p2}, Landroidx/media3/common/VideoSize;-><init>(II)V

    .line 186
    invoke-virtual {v0, v1, v2, v3}, Landroidx/media3/common/util/TimedValueQueue;->add(JLjava/lang/Object;)V

    .line 189
    return-void
.end method

.method public render(JJ)V
    .locals 13
    .param p1, "positionUs"    # J
    .param p3, "elapsedRealtimeUs"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media3/exoplayer/ExoPlaybackException;
        }
    .end annotation

    .line 138
    nop

    :goto_0
    iget-object v0, p0, Landroidx/media3/exoplayer/video/VideoFrameRenderControl;->presentationTimestampsUs:Landroidx/media3/common/util/LongArrayQueue;

    invoke-virtual {v0}, Landroidx/media3/common/util/LongArrayQueue;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    .line 139
    iget-object v0, p0, Landroidx/media3/exoplayer/video/VideoFrameRenderControl;->presentationTimestampsUs:Landroidx/media3/common/util/LongArrayQueue;

    invoke-virtual {v0}, Landroidx/media3/common/util/LongArrayQueue;->element()J

    move-result-wide v2

    .line 141
    .local v2, "presentationTimeUs":J
    invoke-direct {p0, v2, v3}, Landroidx/media3/exoplayer/video/VideoFrameRenderControl;->maybeUpdateOutputStream(J)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 142
    iget-object v0, p0, Landroidx/media3/exoplayer/video/VideoFrameRenderControl;->videoFrameReleaseControl:Landroidx/media3/exoplayer/video/VideoFrameReleaseControl;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroidx/media3/exoplayer/video/VideoFrameReleaseControl;->onStreamChanged(I)V

    .line 146
    :cond_0
    iget-object v1, p0, Landroidx/media3/exoplayer/video/VideoFrameRenderControl;->videoFrameReleaseControl:Landroidx/media3/exoplayer/video/VideoFrameReleaseControl;

    iget-wide v8, p0, Landroidx/media3/exoplayer/video/VideoFrameRenderControl;->outputStreamStartPositionUs:J

    iget-object v12, p0, Landroidx/media3/exoplayer/video/VideoFrameRenderControl;->videoFrameReleaseInfo:Landroidx/media3/exoplayer/video/VideoFrameReleaseControl$FrameReleaseInfo;

    .line 147
    const/4 v10, 0x0

    const/4 v11, 0x0

    move-wide v4, p1

    move-wide/from16 v6, p3

    invoke-virtual/range {v1 .. v12}, Landroidx/media3/exoplayer/video/VideoFrameReleaseControl;->getFrameReleaseAction(JJJJZZLandroidx/media3/exoplayer/video/VideoFrameReleaseControl$FrameReleaseInfo;)I

    move-result v0

    .line 155
    .local v0, "frameReleaseAction":I
    const/4 v1, 0x5

    if-eq v0, v1, :cond_1

    const/4 v1, 0x4

    if-eq v0, v1, :cond_1

    .line 157
    iget-object v1, p0, Landroidx/media3/exoplayer/video/VideoFrameRenderControl;->videoFrameReleaseEarlyTimeForecaster:Landroidx/media3/exoplayer/video/VideoFrameReleaseEarlyTimeForecaster;

    iget-object v4, p0, Landroidx/media3/exoplayer/video/VideoFrameRenderControl;->videoFrameReleaseInfo:Landroidx/media3/exoplayer/video/VideoFrameReleaseControl$FrameReleaseInfo;

    .line 158
    invoke-virtual {v4}, Landroidx/media3/exoplayer/video/VideoFrameReleaseControl$FrameReleaseInfo;->getEarlyUs()J

    move-result-wide v4

    .line 157
    invoke-virtual {v1, v2, v3, v4, v5}, Landroidx/media3/exoplayer/video/VideoFrameReleaseEarlyTimeForecaster;->onVideoFrameProcessed(JJ)V

    .line 160
    :cond_1
    packed-switch v0, :pswitch_data_0

    .line 179
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 162
    :pswitch_0
    return-void

    .line 169
    :pswitch_1
    iput-wide v2, p0, Landroidx/media3/exoplayer/video/VideoFrameRenderControl;->latestOutputPresentationTimeUs:J

    .line 170
    goto :goto_2

    .line 165
    :pswitch_2
    iput-wide v2, p0, Landroidx/media3/exoplayer/video/VideoFrameRenderControl;->latestOutputPresentationTimeUs:J

    .line 166
    invoke-direct {p0}, Landroidx/media3/exoplayer/video/VideoFrameRenderControl;->dropFrame()V

    .line 167
    goto :goto_2

    .line 173
    :pswitch_3
    iput-wide v2, p0, Landroidx/media3/exoplayer/video/VideoFrameRenderControl;->latestOutputPresentationTimeUs:J

    .line 174
    if-nez v0, :cond_2

    const/4 v1, 0x1

    goto :goto_1

    :cond_2
    const/4 v1, 0x0

    :goto_1
    invoke-direct {p0, v1}, Landroidx/media3/exoplayer/video/VideoFrameRenderControl;->renderFrame(Z)V

    .line 177
    nop

    .line 181
    .end local v0    # "frameReleaseAction":I
    .end local v2    # "presentationTimeUs":J
    :goto_2
    goto :goto_0

    .line 182
    :cond_3
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public signalEndOfInput()V
    .locals 4

    .line 226
    iget-wide v0, p0, Landroidx/media3/exoplayer/video/VideoFrameRenderControl;->latestInputPresentationTimeUs:J

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 230
    const-wide/high16 v0, -0x8000000000000000L

    iput-wide v0, p0, Landroidx/media3/exoplayer/video/VideoFrameRenderControl;->latestInputPresentationTimeUs:J

    .line 231
    iput-wide v0, p0, Landroidx/media3/exoplayer/video/VideoFrameRenderControl;->latestOutputPresentationTimeUs:J

    .line 233
    :cond_0
    iget-wide v0, p0, Landroidx/media3/exoplayer/video/VideoFrameRenderControl;->latestInputPresentationTimeUs:J

    iput-wide v0, p0, Landroidx/media3/exoplayer/video/VideoFrameRenderControl;->lastPresentationTimeUs:J

    .line 234
    return-void
.end method
