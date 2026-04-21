.class public abstract Landroidx/media3/exoplayer/NoSampleRenderer;
.super Ljava/lang/Object;
.source "NoSampleRenderer.java"

# interfaces
.implements Landroidx/media3/exoplayer/Renderer;
.implements Landroidx/media3/exoplayer/RendererCapabilities;


# instance fields
.field private configuration:Landroidx/media3/exoplayer/RendererConfiguration;

.field private index:I

.field private state:I

.field private stream:Landroidx/media3/exoplayer/source/SampleStream;

.field private streamIsFinal:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final disable()V
    .locals 3

    .line 156
    iget v0, p0, Landroidx/media3/exoplayer/NoSampleRenderer;->state:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    goto :goto_0

    :cond_0
    move v2, v1

    :goto_0
    invoke-static {v2}, Lcom/google/common/base/Preconditions;->checkState(Z)V

    .line 157
    iput v1, p0, Landroidx/media3/exoplayer/NoSampleRenderer;->state:I

    .line 158
    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/media3/exoplayer/NoSampleRenderer;->stream:Landroidx/media3/exoplayer/source/SampleStream;

    .line 159
    iput-boolean v1, p0, Landroidx/media3/exoplayer/NoSampleRenderer;->streamIsFinal:Z

    .line 160
    invoke-virtual {p0}, Landroidx/media3/exoplayer/NoSampleRenderer;->onDisabled()V

    .line 161
    return-void
.end method

.method public final enable(Landroidx/media3/exoplayer/RendererConfiguration;[Landroidx/media3/common/Format;Landroidx/media3/exoplayer/source/SampleStream;JZZJJLandroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;)V
    .locals 10
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

    .line 83
    move/from16 v8, p6

    iget v1, p0, Landroidx/media3/exoplayer/NoSampleRenderer;->state:I

    const/4 v9, 0x1

    if-nez v1, :cond_0

    move v1, v9

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-static {v1}, Lcom/google/common/base/Preconditions;->checkState(Z)V

    .line 84
    iput-object p1, p0, Landroidx/media3/exoplayer/NoSampleRenderer;->configuration:Landroidx/media3/exoplayer/RendererConfiguration;

    .line 85
    iput v9, p0, Landroidx/media3/exoplayer/NoSampleRenderer;->state:I

    .line 86
    invoke-virtual {p0, v8}, Landroidx/media3/exoplayer/NoSampleRenderer;->onEnabled(Z)V

    .line 87
    move-object v0, p0

    move-object v1, p2

    move-object v2, p3

    move-wide/from16 v3, p8

    move-wide/from16 v5, p10

    move-object/from16 v7, p12

    invoke-virtual/range {v0 .. v7}, Landroidx/media3/exoplayer/NoSampleRenderer;->replaceStream([Landroidx/media3/common/Format;Landroidx/media3/exoplayer/source/SampleStream;JJLandroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;)V

    .line 88
    move-wide v1, p4

    invoke-virtual {p0, p4, p5, v8, v9}, Landroidx/media3/exoplayer/NoSampleRenderer;->onPositionReset(JZZ)V

    .line 89
    return-void
.end method

.method public final getCapabilities()Landroidx/media3/exoplayer/RendererCapabilities;
    .locals 0

    .line 52
    return-object p0
.end method

.method protected final getConfiguration()Landroidx/media3/exoplayer/RendererConfiguration;
    .locals 1

    .line 295
    iget-object v0, p0, Landroidx/media3/exoplayer/NoSampleRenderer;->configuration:Landroidx/media3/exoplayer/RendererConfiguration;

    return-object v0
.end method

.method protected final getIndex()I
    .locals 1

    .line 300
    iget v0, p0, Landroidx/media3/exoplayer/NoSampleRenderer;->index:I

    return v0
.end method

.method public getMediaClock()Landroidx/media3/exoplayer/MediaClock;
    .locals 1

    .line 63
    const/4 v0, 0x0

    return-object v0
.end method

.method public getReadingPositionUs()J
    .locals 2

    .line 124
    const-wide/high16 v0, -0x8000000000000000L

    return-wide v0
.end method

.method public final getState()I
    .locals 1

    .line 68
    iget v0, p0, Landroidx/media3/exoplayer/NoSampleRenderer;->state:I

    return v0
.end method

.method public final getStream()Landroidx/media3/exoplayer/source/SampleStream;
    .locals 1

    .line 114
    iget-object v0, p0, Landroidx/media3/exoplayer/NoSampleRenderer;->stream:Landroidx/media3/exoplayer/source/SampleStream;

    return-object v0
.end method

.method public final getTrackType()I
    .locals 1

    .line 47
    const/4 v0, -0x2

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

    .line 197
    return-void
.end method

.method public final hasReadStreamToEnd()Z
    .locals 1

    .line 119
    const/4 v0, 0x1

    return v0
.end method

.method public final init(ILandroidx/media3/exoplayer/analytics/PlayerId;Landroidx/media3/common/util/Clock;)V
    .locals 0
    .param p1, "index"    # I
    .param p2, "playerId"    # Landroidx/media3/exoplayer/analytics/PlayerId;
    .param p3, "clock"    # Landroidx/media3/common/util/Clock;

    .line 57
    iput p1, p0, Landroidx/media3/exoplayer/NoSampleRenderer;->index:I

    .line 58
    return-void
.end method

.method public final isCurrentStreamFinal()Z
    .locals 1

    .line 134
    iget-boolean v0, p0, Landroidx/media3/exoplayer/NoSampleRenderer;->streamIsFinal:Z

    return v0
.end method

.method public isEnded()Z
    .locals 1

    .line 176
    const/4 v0, 0x1

    return v0
.end method

.method public isReady()Z
    .locals 1

    .line 171
    const/4 v0, 0x1

    return v0
.end method

.method public final maybeThrowStreamError()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 138
    return-void
.end method

.method protected onDisabled()V
    .locals 0

    .line 276
    return-void
.end method

.method protected onEnabled(Z)V
    .locals 0
    .param p1, "joining"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media3/exoplayer/ExoPlaybackException;
        }
    .end annotation

    .line 216
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

    .line 247
    return-void
.end method

.method protected onRendererOffsetChanged(J)V
    .locals 0
    .param p1, "offsetUs"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media3/exoplayer/ExoPlaybackException;
        }
    .end annotation

    .line 229
    return-void
.end method

.method protected onReset()V
    .locals 0

    .line 285
    return-void
.end method

.method protected onStarted()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media3/exoplayer/ExoPlaybackException;
        }
    .end annotation

    .line 258
    return-void
.end method

.method protected onStopped()V
    .locals 0

    .line 267
    return-void
.end method

.method public final replaceStream([Landroidx/media3/common/Format;Landroidx/media3/exoplayer/source/SampleStream;JJLandroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;)V
    .locals 1
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

    .line 106
    iget-boolean v0, p0, Landroidx/media3/exoplayer/NoSampleRenderer;->streamIsFinal:Z

    xor-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkState(Z)V

    .line 107
    iput-object p2, p0, Landroidx/media3/exoplayer/NoSampleRenderer;->stream:Landroidx/media3/exoplayer/source/SampleStream;

    .line 108
    invoke-virtual {p0, p5, p6}, Landroidx/media3/exoplayer/NoSampleRenderer;->onRendererOffsetChanged(J)V

    .line 109
    return-void
.end method

.method public final reset()V
    .locals 1

    .line 165
    iget v0, p0, Landroidx/media3/exoplayer/NoSampleRenderer;->state:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkState(Z)V

    .line 166
    invoke-virtual {p0}, Landroidx/media3/exoplayer/NoSampleRenderer;->onReset()V

    .line 167
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

    .line 143
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/media3/exoplayer/NoSampleRenderer;->streamIsFinal:Z

    .line 144
    invoke-virtual {p0, p1, p2, v0, p3}, Landroidx/media3/exoplayer/NoSampleRenderer;->onPositionReset(JZZ)V

    .line 145
    return-void
.end method

.method public final setCurrentStreamFinal()V
    .locals 1

    .line 129
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/media3/exoplayer/NoSampleRenderer;->streamIsFinal:Z

    .line 130
    return-void
.end method

.method public setTimeline(Landroidx/media3/common/Timeline;)V
    .locals 0
    .param p1, "timeline"    # Landroidx/media3/common/Timeline;

    .line 202
    return-void
.end method

.method public final start()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media3/exoplayer/ExoPlaybackException;
        }
    .end annotation

    .line 93
    iget v0, p0, Landroidx/media3/exoplayer/NoSampleRenderer;->state:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-static {v1}, Lcom/google/common/base/Preconditions;->checkState(Z)V

    .line 94
    const/4 v0, 0x2

    iput v0, p0, Landroidx/media3/exoplayer/NoSampleRenderer;->state:I

    .line 95
    invoke-virtual {p0}, Landroidx/media3/exoplayer/NoSampleRenderer;->onStarted()V

    .line 96
    return-void
.end method

.method public final stop()V
    .locals 3

    .line 149
    iget v0, p0, Landroidx/media3/exoplayer/NoSampleRenderer;->state:I

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-ne v0, v1, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkState(Z)V

    .line 150
    iput v2, p0, Landroidx/media3/exoplayer/NoSampleRenderer;->state:I

    .line 151
    invoke-virtual {p0}, Landroidx/media3/exoplayer/NoSampleRenderer;->onStopped()V

    .line 152
    return-void
.end method

.method public supportsFormat(Landroidx/media3/common/Format;)I
    .locals 1
    .param p1, "format"    # Landroidx/media3/common/Format;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media3/exoplayer/ExoPlaybackException;
        }
    .end annotation

    .line 183
    const/4 v0, 0x0

    invoke-static {v0}, Landroidx/media3/exoplayer/RendererCapabilities;->create(I)I

    move-result v0

    return v0
.end method

.method public supportsMixedMimeTypeAdaptation()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media3/exoplayer/ExoPlaybackException;
        }
    .end annotation

    .line 188
    const/4 v0, 0x0

    return v0
.end method
