.class public interface abstract Landroidx/media3/exoplayer/video/VideoRendererEventListener;
.super Ljava/lang/Object;
.source "VideoRendererEventListener.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media3/exoplayer/video/VideoRendererEventListener$EventDispatcher;
    }
.end annotation


# virtual methods
.method public onDroppedFrames(IJ)V
    .locals 0
    .param p1, "count"    # I
    .param p2, "elapsedMs"    # J

    .line 84
    return-void
.end method

.method public onRenderedFirstFrame(Ljava/lang/Object;J)V
    .locals 0
    .param p1, "output"    # Ljava/lang/Object;
    .param p2, "renderTimeMs"    # J

    .line 122
    return-void
.end method

.method public onVideoCodecError(Ljava/lang/Exception;)V
    .locals 0
    .param p1, "videoCodecError"    # Ljava/lang/Exception;

    .line 151
    return-void
.end method

.method public onVideoCodecParametersChanged(Landroidx/media3/exoplayer/CodecParameters;)V
    .locals 0
    .param p1, "codecParameters"    # Landroidx/media3/exoplayer/CodecParameters;

    .line 158
    return-void
.end method

.method public onVideoDecoderInitialized(Ljava/lang/String;JJ)V
    .locals 0
    .param p1, "decoderName"    # Ljava/lang/String;
    .param p2, "initializedTimestampMs"    # J
    .param p4, "initializationDurationMs"    # J

    .line 61
    return-void
.end method

.method public onVideoDecoderReleased(Ljava/lang/String;)V
    .locals 0
    .param p1, "decoderName"    # Ljava/lang/String;

    .line 129
    return-void
.end method

.method public onVideoDisabled(Landroidx/media3/exoplayer/DecoderCounters;)V
    .locals 0
    .param p1, "counters"    # Landroidx/media3/exoplayer/DecoderCounters;

    .line 136
    return-void
.end method

.method public onVideoEnabled(Landroidx/media3/exoplayer/DecoderCounters;)V
    .locals 0
    .param p1, "counters"    # Landroidx/media3/exoplayer/DecoderCounters;

    .line 50
    return-void
.end method

.method public onVideoFrameProcessingOffset(JI)V
    .locals 0
    .param p1, "totalProcessingOffsetUs"    # J
    .param p3, "frameCount"    # I

    .line 104
    return-void
.end method

.method public onVideoInputFormatChanged(Landroidx/media3/common/Format;Landroidx/media3/exoplayer/DecoderReuseEvaluation;)V
    .locals 0
    .param p1, "format"    # Landroidx/media3/common/Format;
    .param p2, "decoderReuseEvaluation"    # Landroidx/media3/exoplayer/DecoderReuseEvaluation;

    .line 72
    return-void
.end method

.method public onVideoSizeChanged(Landroidx/media3/common/VideoSize;)V
    .locals 0
    .param p1, "videoSize"    # Landroidx/media3/common/VideoSize;

    .line 112
    return-void
.end method
