.class public abstract Landroidx/media3/exoplayer/BaseRenderer;
.super Ljava/lang/Object;
.source "BaseRenderer.java"

# interfaces
.implements Landroidx/media3/exoplayer/Renderer;
.implements Landroidx/media3/exoplayer/RendererCapabilities;


# instance fields
.field private clock:Landroidx/media3/common/util/Clock;

.field private configuration:Landroidx/media3/exoplayer/RendererConfiguration;

.field private final formatHolder:Landroidx/media3/exoplayer/FormatHolder;

.field private index:I

.field private lastResetPositionUs:J

.field private final lock:Ljava/lang/Object;

.field private mediaPeriodId:Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

.field private playerId:Landroidx/media3/exoplayer/analytics/PlayerId;

.field private readingPositionUs:J

.field private rendererCapabilitiesListener:Landroidx/media3/exoplayer/RendererCapabilities$Listener;

.field private state:I

.field private stream:Landroidx/media3/exoplayer/source/SampleStream;

.field private streamFormats:[Landroidx/media3/common/Format;

.field private streamIsFinal:Z

.field private streamOffsetUs:J

.field private throwRendererExceptionIsExecuting:Z

.field private timeline:Landroidx/media3/common/Timeline;

.field private final trackType:I


# direct methods
.method public constructor <init>(I)V
    .locals 2
    .param p1, "trackType"    # I

    .line 97
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 98
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroidx/media3/exoplayer/BaseRenderer;->lock:Ljava/lang/Object;

    .line 99
    iput p1, p0, Landroidx/media3/exoplayer/BaseRenderer;->trackType:I

    .line 100
    new-instance v0, Landroidx/media3/exoplayer/FormatHolder;

    invoke-direct {v0}, Landroidx/media3/exoplayer/FormatHolder;-><init>()V

    iput-object v0, p0, Landroidx/media3/exoplayer/BaseRenderer;->formatHolder:Landroidx/media3/exoplayer/FormatHolder;

    .line 101
    const-wide/high16 v0, -0x8000000000000000L

    iput-wide v0, p0, Landroidx/media3/exoplayer/BaseRenderer;->readingPositionUs:J

    .line 102
    sget-object v0, Landroidx/media3/common/Timeline;->EMPTY:Landroidx/media3/common/Timeline;

    iput-object v0, p0, Landroidx/media3/exoplayer/BaseRenderer;->timeline:Landroidx/media3/common/Timeline;

    .line 103
    return-void
.end method

.method private resetPosition(JZZ)V
    .locals 2
    .param p1, "positionUs"    # J
    .param p3, "joining"    # Z
    .param p4, "sampleStreamIsResetToKeyFrame"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media3/exoplayer/ExoPlaybackException;
        }
    .end annotation

    .line 229
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/media3/exoplayer/BaseRenderer;->streamIsFinal:Z

    .line 230
    iput-wide p1, p0, Landroidx/media3/exoplayer/BaseRenderer;->lastResetPositionUs:J

    .line 231
    iput-wide p1, p0, Landroidx/media3/exoplayer/BaseRenderer;->readingPositionUs:J

    .line 232
    if-nez p4, :cond_1

    .line 233
    invoke-virtual {p0, p1, p2}, Landroidx/media3/exoplayer/BaseRenderer;->skipSource(J)I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    move p4, v0

    .line 235
    :cond_1
    invoke-virtual {p0, p1, p2, p3, p4}, Landroidx/media3/exoplayer/BaseRenderer;->onPositionReset(JZZ)V

    .line 236
    return-void
.end method


# virtual methods
.method public final clearListener()V
    .locals 2

    .line 286
    iget-object v0, p0, Landroidx/media3/exoplayer/BaseRenderer;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 287
    const/4 v1, 0x0

    :try_start_0
    iput-object v1, p0, Landroidx/media3/exoplayer/BaseRenderer;->rendererCapabilitiesListener:Landroidx/media3/exoplayer/RendererCapabilities$Listener;

    .line 288
    monitor-exit v0

    .line 289
    return-void

    .line 288
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method protected final createRendererException(Ljava/lang/Throwable;Landroidx/media3/common/Format;I)Landroidx/media3/exoplayer/ExoPlaybackException;
    .locals 1
    .param p1, "cause"    # Ljava/lang/Throwable;
    .param p2, "format"    # Landroidx/media3/common/Format;
    .param p3, "errorCode"    # I

    .line 527
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0, p3}, Landroidx/media3/exoplayer/BaseRenderer;->createRendererException(Ljava/lang/Throwable;Landroidx/media3/common/Format;ZI)Landroidx/media3/exoplayer/ExoPlaybackException;

    move-result-object v0

    return-object v0
.end method

.method protected final createRendererException(Ljava/lang/Throwable;Landroidx/media3/common/Format;ZI)Landroidx/media3/exoplayer/ExoPlaybackException;
    .locals 11
    .param p1, "cause"    # Ljava/lang/Throwable;
    .param p2, "format"    # Landroidx/media3/common/Format;
    .param p3, "isRecoverable"    # Z
    .param p4, "errorCode"    # I

    .line 546
    const/4 v1, 0x4

    .line 547
    .local v1, "formatSupport":I
    if-eqz p2, :cond_0

    iget-boolean v0, p0, Landroidx/media3/exoplayer/BaseRenderer;->throwRendererExceptionIsExecuting:Z

    if-nez v0, :cond_0

    .line 549
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/media3/exoplayer/BaseRenderer;->throwRendererExceptionIsExecuting:Z

    .line 551
    const/4 v2, 0x0

    :try_start_0
    invoke-virtual {p0, p2}, Landroidx/media3/exoplayer/BaseRenderer;->supportsFormat(Landroidx/media3/common/Format;)I

    move-result v0

    invoke-static {v0}, Landroidx/media3/exoplayer/RendererCapabilities;->getFormatSupport(I)I

    move-result v0
    :try_end_0
    .catch Landroidx/media3/exoplayer/ExoPlaybackException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v1, v0

    .line 555
    iput-boolean v2, p0, Landroidx/media3/exoplayer/BaseRenderer;->throwRendererExceptionIsExecuting:Z

    .line 556
    move v7, v1

    goto :goto_0

    .line 555
    :catchall_0
    move-exception v0

    iput-boolean v2, p0, Landroidx/media3/exoplayer/BaseRenderer;->throwRendererExceptionIsExecuting:Z

    .line 556
    throw v0

    .line 552
    :catch_0
    move-exception v0

    .line 555
    iput-boolean v2, p0, Landroidx/media3/exoplayer/BaseRenderer;->throwRendererExceptionIsExecuting:Z

    .line 556
    nop

    .line 558
    :cond_0
    move v7, v1

    .end local v1    # "formatSupport":I
    .local v7, "formatSupport":I
    :goto_0
    nop

    .line 560
    invoke-virtual {p0}, Landroidx/media3/exoplayer/BaseRenderer;->getName()Ljava/lang/String;

    move-result-object v4

    .line 561
    invoke-virtual {p0}, Landroidx/media3/exoplayer/BaseRenderer;->getIndex()I

    move-result v5

    iget-object v8, p0, Landroidx/media3/exoplayer/BaseRenderer;->mediaPeriodId:Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    .line 558
    move-object v3, p1

    move-object v6, p2

    move v9, p3

    move v10, p4

    .end local p1    # "cause":Ljava/lang/Throwable;
    .end local p2    # "format":Landroidx/media3/common/Format;
    .end local p3    # "isRecoverable":Z
    .end local p4    # "errorCode":I
    .local v3, "cause":Ljava/lang/Throwable;
    .local v6, "format":Landroidx/media3/common/Format;
    .local v9, "isRecoverable":Z
    .local v10, "errorCode":I
    invoke-static/range {v3 .. v10}, Landroidx/media3/exoplayer/ExoPlaybackException;->createForRenderer(Ljava/lang/Throwable;Ljava/lang/String;ILandroidx/media3/common/Format;ILandroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;ZI)Landroidx/media3/exoplayer/ExoPlaybackException;

    move-result-object p1

    return-object p1
.end method

.method public final disable()V
    .locals 3

    .line 247
    iget v0, p0, Landroidx/media3/exoplayer/BaseRenderer;->state:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    goto :goto_0

    :cond_0
    move v2, v1

    :goto_0
    invoke-static {v2}, Lcom/google/common/base/Preconditions;->checkState(Z)V

    .line 248
    iget-object v0, p0, Landroidx/media3/exoplayer/BaseRenderer;->formatHolder:Landroidx/media3/exoplayer/FormatHolder;

    invoke-virtual {v0}, Landroidx/media3/exoplayer/FormatHolder;->clear()V

    .line 249
    iput v1, p0, Landroidx/media3/exoplayer/BaseRenderer;->state:I

    .line 250
    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/media3/exoplayer/BaseRenderer;->stream:Landroidx/media3/exoplayer/source/SampleStream;

    .line 251
    iput-object v0, p0, Landroidx/media3/exoplayer/BaseRenderer;->streamFormats:[Landroidx/media3/common/Format;

    .line 252
    iput-boolean v1, p0, Landroidx/media3/exoplayer/BaseRenderer;->streamIsFinal:Z

    .line 253
    invoke-virtual {p0}, Landroidx/media3/exoplayer/BaseRenderer;->onDisabled()V

    .line 254
    iput-object v0, p0, Landroidx/media3/exoplayer/BaseRenderer;->mediaPeriodId:Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    .line 255
    return-void
.end method

.method public final enable(Landroidx/media3/exoplayer/RendererConfiguration;[Landroidx/media3/common/Format;Landroidx/media3/exoplayer/source/SampleStream;JZZJJLandroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;)V
    .locals 11
    .param p1, "configuration"    # Landroidx/media3/exoplayer/RendererConfiguration;
    .param p2, "formats"    # [Landroidx/media3/common/Format;
    .param p3, "stream"    # Landroidx/media3/exoplayer/source/SampleStream;
    .param p4, "positionUs"    # J
    .param p6, "joining"    # Z
    .param p7, "mayRenderStartOfStream"    # Z
    .param p8, "startPositionUs"    # J
    .param p10, "offsetUs"    # J
    .param p12, "mediaPeriodId"    # Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media3/exoplayer/ExoPlaybackException;
        }
    .end annotation

    .line 146
    move/from16 v0, p6

    iget v1, p0, Landroidx/media3/exoplayer/BaseRenderer;->state:I

    const/4 v2, 0x1

    if-nez v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-static {v1}, Lcom/google/common/base/Preconditions;->checkState(Z)V

    .line 147
    iput-object p1, p0, Landroidx/media3/exoplayer/BaseRenderer;->configuration:Landroidx/media3/exoplayer/RendererConfiguration;

    .line 148
    move-object/from16 v10, p12

    iput-object v10, p0, Landroidx/media3/exoplayer/BaseRenderer;->mediaPeriodId:Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    .line 149
    iput v2, p0, Landroidx/media3/exoplayer/BaseRenderer;->state:I

    .line 150
    move/from16 v1, p7

    invoke-virtual {p0, v0, v1}, Landroidx/media3/exoplayer/BaseRenderer;->onEnabled(ZZ)V

    .line 151
    move-object v3, p0

    move-object v4, p2

    move-object v5, p3

    move-wide/from16 v6, p8

    move-wide/from16 v8, p10

    invoke-virtual/range {v3 .. v10}, Landroidx/media3/exoplayer/BaseRenderer;->replaceStream([Landroidx/media3/common/Format;Landroidx/media3/exoplayer/source/SampleStream;JJLandroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;)V

    .line 152
    invoke-direct {p0, v6, v7, v0, v2}, Landroidx/media3/exoplayer/BaseRenderer;->resetPosition(JZZ)V

    .line 153
    return-void
.end method

.method public final getCapabilities()Landroidx/media3/exoplayer/RendererCapabilities;
    .locals 0

    .line 112
    return-object p0
.end method

.method protected final getClock()Landroidx/media3/common/util/Clock;
    .locals 1

    .line 497
    iget-object v0, p0, Landroidx/media3/exoplayer/BaseRenderer;->clock:Landroidx/media3/common/util/Clock;

    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media3/common/util/Clock;

    return-object v0
.end method

.method protected final getConfiguration()Landroidx/media3/exoplayer/RendererConfiguration;
    .locals 1

    .line 470
    iget-object v0, p0, Landroidx/media3/exoplayer/BaseRenderer;->configuration:Landroidx/media3/exoplayer/RendererConfiguration;

    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media3/exoplayer/RendererConfiguration;

    return-object v0
.end method

.method protected final getFormatHolder()Landroidx/media3/exoplayer/FormatHolder;
    .locals 1

    .line 449
    iget-object v0, p0, Landroidx/media3/exoplayer/BaseRenderer;->formatHolder:Landroidx/media3/exoplayer/FormatHolder;

    invoke-virtual {v0}, Landroidx/media3/exoplayer/FormatHolder;->clear()V

    .line 450
    iget-object v0, p0, Landroidx/media3/exoplayer/BaseRenderer;->formatHolder:Landroidx/media3/exoplayer/FormatHolder;

    return-object v0
.end method

.method protected final getIndex()I
    .locals 1

    .line 479
    iget v0, p0, Landroidx/media3/exoplayer/BaseRenderer;->index:I

    return v0
.end method

.method protected final getLastResetPositionUs()J
    .locals 2

    .line 435
    iget-wide v0, p0, Landroidx/media3/exoplayer/BaseRenderer;->lastResetPositionUs:J

    return-wide v0
.end method

.method public getMediaClock()Landroidx/media3/exoplayer/MediaClock;
    .locals 1

    .line 126
    const/4 v0, 0x0

    return-object v0
.end method

.method protected final getMediaPeriodId()Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;
    .locals 1

    .line 511
    iget-object v0, p0, Landroidx/media3/exoplayer/BaseRenderer;->mediaPeriodId:Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    return-object v0
.end method

.method protected final getPlayerId()Landroidx/media3/exoplayer/analytics/PlayerId;
    .locals 1

    .line 488
    iget-object v0, p0, Landroidx/media3/exoplayer/BaseRenderer;->playerId:Landroidx/media3/exoplayer/analytics/PlayerId;

    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media3/exoplayer/analytics/PlayerId;

    return-object v0
.end method

.method public final getReadingPositionUs()J
    .locals 2

    .line 194
    iget-wide v0, p0, Landroidx/media3/exoplayer/BaseRenderer;->readingPositionUs:J

    return-wide v0
.end method

.method public final getState()I
    .locals 1

    .line 131
    iget v0, p0, Landroidx/media3/exoplayer/BaseRenderer;->state:I

    return v0
.end method

.method public final getStream()Landroidx/media3/exoplayer/source/SampleStream;
    .locals 1

    .line 184
    iget-object v0, p0, Landroidx/media3/exoplayer/BaseRenderer;->stream:Landroidx/media3/exoplayer/source/SampleStream;

    return-object v0
.end method

.method protected final getStreamFormats()[Landroidx/media3/common/Format;
    .locals 1

    .line 460
    iget-object v0, p0, Landroidx/media3/exoplayer/BaseRenderer;->streamFormats:[Landroidx/media3/common/Format;

    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroidx/media3/common/Format;

    return-object v0
.end method

.method protected final getStreamOffsetUs()J
    .locals 2

    .line 444
    iget-wide v0, p0, Landroidx/media3/exoplayer/BaseRenderer;->streamOffsetUs:J

    return-wide v0
.end method

.method protected final getTimeline()Landroidx/media3/common/Timeline;
    .locals 1

    .line 502
    iget-object v0, p0, Landroidx/media3/exoplayer/BaseRenderer;->timeline:Landroidx/media3/common/Timeline;

    return-object v0
.end method

.method public final getTrackType()I
    .locals 1

    .line 107
    iget v0, p0, Landroidx/media3/exoplayer/BaseRenderer;->trackType:I

    return v0
.end method

.method public handleMessage(ILjava/lang/Object;)V
    .locals 0
    .param p1, "messageType"    # I
    .param p2, "message"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media3/exoplayer/ExoPlaybackException;
        }
    .end annotation

    .line 297
    return-void
.end method

.method public final hasReadStreamToEnd()Z
    .locals 4

    .line 189
    iget-wide v0, p0, Landroidx/media3/exoplayer/BaseRenderer;->readingPositionUs:J

    const-wide/high16 v2, -0x8000000000000000L

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final init(ILandroidx/media3/exoplayer/analytics/PlayerId;Landroidx/media3/common/util/Clock;)V
    .locals 0
    .param p1, "index"    # I
    .param p2, "playerId"    # Landroidx/media3/exoplayer/analytics/PlayerId;
    .param p3, "clock"    # Landroidx/media3/common/util/Clock;

    .line 117
    iput p1, p0, Landroidx/media3/exoplayer/BaseRenderer;->index:I

    .line 118
    iput-object p2, p0, Landroidx/media3/exoplayer/BaseRenderer;->playerId:Landroidx/media3/exoplayer/analytics/PlayerId;

    .line 119
    iput-object p3, p0, Landroidx/media3/exoplayer/BaseRenderer;->clock:Landroidx/media3/common/util/Clock;

    .line 120
    invoke-virtual {p0}, Landroidx/media3/exoplayer/BaseRenderer;->onInit()V

    .line 121
    return-void
.end method

.method public final isCurrentStreamFinal()Z
    .locals 1

    .line 204
    iget-boolean v0, p0, Landroidx/media3/exoplayer/BaseRenderer;->streamIsFinal:Z

    return v0
.end method

.method protected final isSourceReady()Z
    .locals 1

    .line 632
    invoke-virtual {p0}, Landroidx/media3/exoplayer/BaseRenderer;->hasReadStreamToEnd()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Landroidx/media3/exoplayer/BaseRenderer;->streamIsFinal:Z

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroidx/media3/exoplayer/BaseRenderer;->stream:Landroidx/media3/exoplayer/source/SampleStream;

    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media3/exoplayer/source/SampleStream;

    invoke-interface {v0}, Landroidx/media3/exoplayer/source/SampleStream;->isReady()Z

    move-result v0

    :goto_0
    return v0
.end method

.method public final maybeThrowStreamError()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 209
    iget-object v0, p0, Landroidx/media3/exoplayer/BaseRenderer;->stream:Landroidx/media3/exoplayer/source/SampleStream;

    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media3/exoplayer/source/SampleStream;

    invoke-interface {v0}, Landroidx/media3/exoplayer/source/SampleStream;->maybeThrowError()V

    .line 210
    return-void
.end method

.method protected onDisabled()V
    .locals 0

    .line 397
    return-void
.end method

.method protected onEnabled(ZZ)V
    .locals 0
    .param p1, "joining"    # Z
    .param p2, "mayRenderStartOfStream"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media3/exoplayer/ExoPlaybackException;
        }
    .end annotation

    .line 319
    return-void
.end method

.method protected onInit()V
    .locals 0

    .line 304
    return-void
.end method

.method protected onPositionReset(JZZ)V
    .locals 0
    .param p1, "positionUs"    # J
    .param p3, "joining"    # Z
    .param p4, "sampleStreamIsResetToKeyFrame"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media3/exoplayer/ExoPlaybackException;
        }
    .end annotation

    .line 368
    return-void
.end method

.method protected onRelease()V
    .locals 0

    .line 415
    return-void
.end method

.method protected final onRendererCapabilitiesChanged()V
    .locals 2

    .line 638
    iget-object v0, p0, Landroidx/media3/exoplayer/BaseRenderer;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 639
    :try_start_0
    iget-object v1, p0, Landroidx/media3/exoplayer/BaseRenderer;->rendererCapabilitiesListener:Landroidx/media3/exoplayer/RendererCapabilities$Listener;

    .line 640
    .local v1, "listener":Landroidx/media3/exoplayer/RendererCapabilities$Listener;
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 641
    if-eqz v1, :cond_0

    .line 642
    invoke-interface {v1, p0}, Landroidx/media3/exoplayer/RendererCapabilities$Listener;->onRendererCapabilitiesChanged(Landroidx/media3/exoplayer/Renderer;)V

    .line 644
    :cond_0
    return-void

    .line 640
    .end local v1    # "listener":Landroidx/media3/exoplayer/RendererCapabilities$Listener;
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method protected onReset()V
    .locals 0

    .line 406
    return-void
.end method

.method protected onStarted()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media3/exoplayer/ExoPlaybackException;
        }
    .end annotation

    .line 379
    return-void
.end method

.method protected onStopped()V
    .locals 0

    .line 388
    return-void
.end method

.method protected onStreamChanged([Landroidx/media3/common/Format;JJLandroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;)V
    .locals 0
    .param p1, "formats"    # [Landroidx/media3/common/Format;
    .param p2, "startPositionUs"    # J
    .param p4, "offsetUs"    # J
    .param p6, "mediaPeriodId"    # Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media3/exoplayer/ExoPlaybackException;
        }
    .end annotation

    .line 343
    return-void
.end method

.method protected onTimelineChanged(Landroidx/media3/common/Timeline;)V
    .locals 0
    .param p1, "timeline"    # Landroidx/media3/common/Timeline;

    .line 426
    return-void
.end method

.method protected final readSource(Landroidx/media3/exoplayer/FormatHolder;Landroidx/media3/decoder/DecoderInputBuffer;I)I
    .locals 7
    .param p1, "formatHolder"    # Landroidx/media3/exoplayer/FormatHolder;
    .param p2, "buffer"    # Landroidx/media3/decoder/DecoderInputBuffer;
    .param p3, "readFlags"    # I

    .line 589
    iget-object v0, p0, Landroidx/media3/exoplayer/BaseRenderer;->stream:Landroidx/media3/exoplayer/source/SampleStream;

    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media3/exoplayer/source/SampleStream;

    invoke-interface {v0, p1, p2, p3}, Landroidx/media3/exoplayer/source/SampleStream;->readData(Landroidx/media3/exoplayer/FormatHolder;Landroidx/media3/decoder/DecoderInputBuffer;I)I

    move-result v0

    .line 590
    .local v0, "result":I
    const/4 v1, -0x4

    if-ne v0, v1, :cond_2

    .line 591
    invoke-virtual {p2}, Landroidx/media3/decoder/DecoderInputBuffer;->isEndOfStream()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 592
    const-wide/high16 v2, -0x8000000000000000L

    iput-wide v2, p0, Landroidx/media3/exoplayer/BaseRenderer;->readingPositionUs:J

    .line 593
    iget-boolean v2, p0, Landroidx/media3/exoplayer/BaseRenderer;->streamIsFinal:Z

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, -0x3

    :goto_0
    return v1

    .line 595
    :cond_1
    iget-wide v1, p2, Landroidx/media3/decoder/DecoderInputBuffer;->timeUs:J

    iget-wide v3, p0, Landroidx/media3/exoplayer/BaseRenderer;->streamOffsetUs:J

    add-long/2addr v1, v3

    iput-wide v1, p2, Landroidx/media3/decoder/DecoderInputBuffer;->timeUs:J

    .line 596
    iget-wide v1, p0, Landroidx/media3/exoplayer/BaseRenderer;->readingPositionUs:J

    iget-wide v3, p2, Landroidx/media3/decoder/DecoderInputBuffer;->timeUs:J

    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v1

    iput-wide v1, p0, Landroidx/media3/exoplayer/BaseRenderer;->readingPositionUs:J

    goto :goto_1

    .line 597
    :cond_2
    const/4 v1, -0x5

    if-ne v0, v1, :cond_3

    .line 598
    iget-object v1, p1, Landroidx/media3/exoplayer/FormatHolder;->format:Landroidx/media3/common/Format;

    invoke-static {v1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/media3/common/Format;

    .line 599
    .local v1, "format":Landroidx/media3/common/Format;
    iget-wide v2, v1, Landroidx/media3/common/Format;->subsampleOffsetUs:J

    const-wide v4, 0x7fffffffffffffffL

    cmp-long v2, v2, v4

    if-eqz v2, :cond_3

    .line 600
    nop

    .line 602
    invoke-virtual {v1}, Landroidx/media3/common/Format;->buildUpon()Landroidx/media3/common/Format$Builder;

    move-result-object v2

    iget-wide v3, v1, Landroidx/media3/common/Format;->subsampleOffsetUs:J

    iget-wide v5, p0, Landroidx/media3/exoplayer/BaseRenderer;->streamOffsetUs:J

    add-long/2addr v3, v5

    .line 603
    invoke-virtual {v2, v3, v4}, Landroidx/media3/common/Format$Builder;->setSubsampleOffsetUs(J)Landroidx/media3/common/Format$Builder;

    move-result-object v2

    .line 604
    invoke-virtual {v2}, Landroidx/media3/common/Format$Builder;->build()Landroidx/media3/common/Format;

    move-result-object v1

    .line 605
    iput-object v1, p1, Landroidx/media3/exoplayer/FormatHolder;->format:Landroidx/media3/common/Format;

    .line 608
    .end local v1    # "format":Landroidx/media3/common/Format;
    :cond_3
    :goto_1
    return v0
.end method

.method public final release()V
    .locals 1

    .line 266
    iget v0, p0, Landroidx/media3/exoplayer/BaseRenderer;->state:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkState(Z)V

    .line 267
    invoke-virtual {p0}, Landroidx/media3/exoplayer/BaseRenderer;->onRelease()V

    .line 268
    return-void
.end method

.method public final replaceStream([Landroidx/media3/common/Format;Landroidx/media3/exoplayer/source/SampleStream;JJLandroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;)V
    .locals 8
    .param p1, "formats"    # [Landroidx/media3/common/Format;
    .param p2, "stream"    # Landroidx/media3/exoplayer/source/SampleStream;
    .param p3, "startPositionUs"    # J
    .param p5, "offsetUs"    # J
    .param p7, "mediaPeriodId"    # Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media3/exoplayer/ExoPlaybackException;
        }
    .end annotation

    .line 170
    iget-boolean v0, p0, Landroidx/media3/exoplayer/BaseRenderer;->streamIsFinal:Z

    xor-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkState(Z)V

    .line 171
    iput-object p2, p0, Landroidx/media3/exoplayer/BaseRenderer;->stream:Landroidx/media3/exoplayer/source/SampleStream;

    .line 172
    iput-object p7, p0, Landroidx/media3/exoplayer/BaseRenderer;->mediaPeriodId:Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    .line 173
    iget-wide v0, p0, Landroidx/media3/exoplayer/BaseRenderer;->readingPositionUs:J

    const-wide/high16 v2, -0x8000000000000000L

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 174
    iput-wide p3, p0, Landroidx/media3/exoplayer/BaseRenderer;->readingPositionUs:J

    .line 176
    :cond_0
    iput-object p1, p0, Landroidx/media3/exoplayer/BaseRenderer;->streamFormats:[Landroidx/media3/common/Format;

    .line 177
    iput-wide p5, p0, Landroidx/media3/exoplayer/BaseRenderer;->streamOffsetUs:J

    .line 178
    move-object v1, p0

    move-object v2, p1

    move-wide v3, p3

    move-wide v5, p5

    move-object v7, p7

    .end local p1    # "formats":[Landroidx/media3/common/Format;
    .end local p3    # "startPositionUs":J
    .end local p5    # "offsetUs":J
    .end local p7    # "mediaPeriodId":Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;
    .local v2, "formats":[Landroidx/media3/common/Format;
    .local v3, "startPositionUs":J
    .local v5, "offsetUs":J
    .local v7, "mediaPeriodId":Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;
    invoke-virtual/range {v1 .. v7}, Landroidx/media3/exoplayer/BaseRenderer;->onStreamChanged([Landroidx/media3/common/Format;JJLandroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;)V

    .line 179
    return-void
.end method

.method public final reset()V
    .locals 1

    .line 259
    iget v0, p0, Landroidx/media3/exoplayer/BaseRenderer;->state:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkState(Z)V

    .line 260
    iget-object v0, p0, Landroidx/media3/exoplayer/BaseRenderer;->formatHolder:Landroidx/media3/exoplayer/FormatHolder;

    invoke-virtual {v0}, Landroidx/media3/exoplayer/FormatHolder;->clear()V

    .line 261
    invoke-virtual {p0}, Landroidx/media3/exoplayer/BaseRenderer;->onReset()V

    .line 262
    return-void
.end method

.method public final resetPosition(JZ)V
    .locals 1
    .param p1, "positionUs"    # J
    .param p3, "sampleStreamIsResetToKeyFrame"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media3/exoplayer/ExoPlaybackException;
        }
    .end annotation

    .line 223
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0, p3}, Landroidx/media3/exoplayer/BaseRenderer;->resetPosition(JZZ)V

    .line 224
    return-void
.end method

.method public final setCurrentStreamFinal()V
    .locals 1

    .line 199
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/media3/exoplayer/BaseRenderer;->streamIsFinal:Z

    .line 200
    return-void
.end method

.method public final setListener(Landroidx/media3/exoplayer/RendererCapabilities$Listener;)V
    .locals 2
    .param p1, "listener"    # Landroidx/media3/exoplayer/RendererCapabilities$Listener;

    .line 279
    iget-object v0, p0, Landroidx/media3/exoplayer/BaseRenderer;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 280
    :try_start_0
    iput-object p1, p0, Landroidx/media3/exoplayer/BaseRenderer;->rendererCapabilitiesListener:Landroidx/media3/exoplayer/RendererCapabilities$Listener;

    .line 281
    monitor-exit v0

    .line 282
    return-void

    .line 281
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final setTimeline(Landroidx/media3/common/Timeline;)V
    .locals 1
    .param p1, "timeline"    # Landroidx/media3/common/Timeline;

    .line 214
    iget-object v0, p0, Landroidx/media3/exoplayer/BaseRenderer;->timeline:Landroidx/media3/common/Timeline;

    invoke-static {v0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 215
    iput-object p1, p0, Landroidx/media3/exoplayer/BaseRenderer;->timeline:Landroidx/media3/common/Timeline;

    .line 216
    iget-object v0, p0, Landroidx/media3/exoplayer/BaseRenderer;->timeline:Landroidx/media3/common/Timeline;

    invoke-virtual {p0, v0}, Landroidx/media3/exoplayer/BaseRenderer;->onTimelineChanged(Landroidx/media3/common/Timeline;)V

    .line 218
    :cond_0
    return-void
.end method

.method protected skipSource(J)I
    .locals 3
    .param p1, "positionUs"    # J

    .line 622
    iget-object v0, p0, Landroidx/media3/exoplayer/BaseRenderer;->stream:Landroidx/media3/exoplayer/source/SampleStream;

    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media3/exoplayer/source/SampleStream;

    iget-wide v1, p0, Landroidx/media3/exoplayer/BaseRenderer;->streamOffsetUs:J

    sub-long v1, p1, v1

    invoke-interface {v0, v1, v2}, Landroidx/media3/exoplayer/source/SampleStream;->skipData(J)I

    move-result v0

    return v0
.end method

.method public final start()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media3/exoplayer/ExoPlaybackException;
        }
    .end annotation

    .line 157
    iget v0, p0, Landroidx/media3/exoplayer/BaseRenderer;->state:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-static {v1}, Lcom/google/common/base/Preconditions;->checkState(Z)V

    .line 158
    const/4 v0, 0x2

    iput v0, p0, Landroidx/media3/exoplayer/BaseRenderer;->state:I

    .line 159
    invoke-virtual {p0}, Landroidx/media3/exoplayer/BaseRenderer;->onStarted()V

    .line 160
    return-void
.end method

.method public final stop()V
    .locals 3

    .line 240
    iget v0, p0, Landroidx/media3/exoplayer/BaseRenderer;->state:I

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-ne v0, v1, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkState(Z)V

    .line 241
    iput v2, p0, Landroidx/media3/exoplayer/BaseRenderer;->state:I

    .line 242
    invoke-virtual {p0}, Landroidx/media3/exoplayer/BaseRenderer;->onStopped()V

    .line 243
    return-void
.end method

.method public supportsMixedMimeTypeAdaptation()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media3/exoplayer/ExoPlaybackException;
        }
    .end annotation

    .line 274
    const/4 v0, 0x0

    return v0
.end method
