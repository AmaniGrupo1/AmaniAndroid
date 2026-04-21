.class public final Landroidx/media3/exoplayer/video/spherical/CameraMotionRenderer;
.super Landroidx/media3/exoplayer/BaseRenderer;
.source "CameraMotionRenderer.java"


# static fields
.field private static final SAMPLE_WINDOW_DURATION_US:I = 0x186a0

.field private static final TAG:Ljava/lang/String; = "CameraMotionRenderer"


# instance fields
.field private final buffer:Landroidx/media3/decoder/DecoderInputBuffer;

.field private lastTimestampUs:J

.field private listener:Landroidx/media3/exoplayer/video/spherical/CameraMotionListener;

.field private final scratch:Landroidx/media3/common/util/ParsableByteArray;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 49
    const/4 v0, 0x6

    invoke-direct {p0, v0}, Landroidx/media3/exoplayer/BaseRenderer;-><init>(I)V

    .line 50
    new-instance v0, Landroidx/media3/decoder/DecoderInputBuffer;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroidx/media3/decoder/DecoderInputBuffer;-><init>(I)V

    iput-object v0, p0, Landroidx/media3/exoplayer/video/spherical/CameraMotionRenderer;->buffer:Landroidx/media3/decoder/DecoderInputBuffer;

    .line 51
    new-instance v0, Landroidx/media3/common/util/ParsableByteArray;

    invoke-direct {v0}, Landroidx/media3/common/util/ParsableByteArray;-><init>()V

    iput-object v0, p0, Landroidx/media3/exoplayer/video/spherical/CameraMotionRenderer;->scratch:Landroidx/media3/common/util/ParsableByteArray;

    .line 52
    return-void
.end method

.method private parseMetadata(Ljava/nio/ByteBuffer;)[F
    .locals 4
    .param p1, "data"    # Ljava/nio/ByteBuffer;

    .line 127
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    const/16 v1, 0x10

    if-eq v0, v1, :cond_0

    .line 128
    const/4 v0, 0x0

    return-object v0

    .line 130
    :cond_0
    iget-object v0, p0, Landroidx/media3/exoplayer/video/spherical/CameraMotionRenderer;->scratch:Landroidx/media3/common/util/ParsableByteArray;

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v1

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->limit()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroidx/media3/common/util/ParsableByteArray;->reset([BI)V

    .line 131
    iget-object v0, p0, Landroidx/media3/exoplayer/video/spherical/CameraMotionRenderer;->scratch:Landroidx/media3/common/util/ParsableByteArray;

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v1

    add-int/lit8 v1, v1, 0x4

    invoke-virtual {v0, v1}, Landroidx/media3/common/util/ParsableByteArray;->setPosition(I)V

    .line 132
    const/4 v0, 0x3

    new-array v1, v0, [F

    .line 133
    .local v1, "result":[F
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_1

    .line 134
    iget-object v3, p0, Landroidx/media3/exoplayer/video/spherical/CameraMotionRenderer;->scratch:Landroidx/media3/common/util/ParsableByteArray;

    invoke-virtual {v3}, Landroidx/media3/common/util/ParsableByteArray;->readLittleEndianInt()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v3

    aput v3, v1, v2

    .line 133
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 136
    .end local v2    # "i":I
    :cond_1
    return-object v1
.end method

.method private resetListener()V
    .locals 1

    .line 140
    iget-object v0, p0, Landroidx/media3/exoplayer/video/spherical/CameraMotionRenderer;->listener:Landroidx/media3/exoplayer/video/spherical/CameraMotionListener;

    if-eqz v0, :cond_0

    .line 141
    iget-object v0, p0, Landroidx/media3/exoplayer/video/spherical/CameraMotionRenderer;->listener:Landroidx/media3/exoplayer/video/spherical/CameraMotionListener;

    invoke-interface {v0}, Landroidx/media3/exoplayer/video/spherical/CameraMotionListener;->onCameraMotionReset()V

    .line 143
    :cond_0
    return-void
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 1

    .line 56
    const-string v0, "CameraMotionRenderer"

    return-object v0
.end method

.method public handleMessage(ILjava/lang/Object;)V
    .locals 1
    .param p1, "messageType"    # I
    .param p2, "message"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media3/exoplayer/ExoPlaybackException;
        }
    .end annotation

    .line 69
    const/16 v0, 0x8

    if-ne p1, v0, :cond_0

    .line 70
    move-object v0, p2

    check-cast v0, Landroidx/media3/exoplayer/video/spherical/CameraMotionListener;

    iput-object v0, p0, Landroidx/media3/exoplayer/video/spherical/CameraMotionRenderer;->listener:Landroidx/media3/exoplayer/video/spherical/CameraMotionListener;

    goto :goto_0

    .line 72
    :cond_0
    invoke-super {p0, p1, p2}, Landroidx/media3/exoplayer/BaseRenderer;->handleMessage(ILjava/lang/Object;)V

    .line 74
    :goto_0
    return-void
.end method

.method public isEnded()Z
    .locals 1

    .line 117
    invoke-virtual {p0}, Landroidx/media3/exoplayer/video/spherical/CameraMotionRenderer;->hasReadStreamToEnd()Z

    move-result v0

    return v0
.end method

.method public isReady()Z
    .locals 1

    .line 122
    const/4 v0, 0x1

    return v0
.end method

.method protected onDisabled()V
    .locals 0

    .line 85
    invoke-direct {p0}, Landroidx/media3/exoplayer/video/spherical/CameraMotionRenderer;->resetListener()V

    .line 86
    return-void
.end method

.method protected onPositionReset(JZZ)V
    .locals 2
    .param p1, "positionUs"    # J
    .param p3, "joining"    # Z
    .param p4, "sampleStreamIsResetToKeyFrame"    # Z

    .line 79
    const-wide/high16 v0, -0x8000000000000000L

    iput-wide v0, p0, Landroidx/media3/exoplayer/video/spherical/CameraMotionRenderer;->lastTimestampUs:J

    .line 80
    invoke-direct {p0}, Landroidx/media3/exoplayer/video/spherical/CameraMotionRenderer;->resetListener()V

    .line 81
    return-void
.end method

.method public render(JJ)V
    .locals 9
    .param p1, "positionUs"    # J
    .param p3, "elapsedRealtimeUs"    # J

    .line 91
    nop

    :cond_0
    :goto_0
    invoke-virtual {p0}, Landroidx/media3/exoplayer/video/spherical/CameraMotionRenderer;->hasReadStreamToEnd()Z

    move-result v0

    if-nez v0, :cond_6

    iget-wide v0, p0, Landroidx/media3/exoplayer/video/spherical/CameraMotionRenderer;->lastTimestampUs:J

    const-wide/32 v2, 0x186a0

    add-long/2addr v2, p1

    cmp-long v0, v0, v2

    if-gez v0, :cond_6

    .line 92
    iget-object v0, p0, Landroidx/media3/exoplayer/video/spherical/CameraMotionRenderer;->buffer:Landroidx/media3/decoder/DecoderInputBuffer;

    invoke-virtual {v0}, Landroidx/media3/decoder/DecoderInputBuffer;->clear()V

    .line 93
    invoke-virtual {p0}, Landroidx/media3/exoplayer/video/spherical/CameraMotionRenderer;->getFormatHolder()Landroidx/media3/exoplayer/FormatHolder;

    move-result-object v0

    .line 94
    .local v0, "formatHolder":Landroidx/media3/exoplayer/FormatHolder;
    iget-object v1, p0, Landroidx/media3/exoplayer/video/spherical/CameraMotionRenderer;->buffer:Landroidx/media3/decoder/DecoderInputBuffer;

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Landroidx/media3/exoplayer/video/spherical/CameraMotionRenderer;->readSource(Landroidx/media3/exoplayer/FormatHolder;Landroidx/media3/decoder/DecoderInputBuffer;I)I

    move-result v1

    .line 95
    .local v1, "result":I
    const/4 v3, -0x4

    if-ne v1, v3, :cond_5

    iget-object v3, p0, Landroidx/media3/exoplayer/video/spherical/CameraMotionRenderer;->buffer:Landroidx/media3/decoder/DecoderInputBuffer;

    invoke-virtual {v3}, Landroidx/media3/decoder/DecoderInputBuffer;->isEndOfStream()Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_1

    .line 99
    :cond_1
    iget-object v3, p0, Landroidx/media3/exoplayer/video/spherical/CameraMotionRenderer;->buffer:Landroidx/media3/decoder/DecoderInputBuffer;

    iget-wide v3, v3, Landroidx/media3/decoder/DecoderInputBuffer;->timeUs:J

    iput-wide v3, p0, Landroidx/media3/exoplayer/video/spherical/CameraMotionRenderer;->lastTimestampUs:J

    .line 100
    iget-wide v3, p0, Landroidx/media3/exoplayer/video/spherical/CameraMotionRenderer;->lastTimestampUs:J

    invoke-virtual {p0}, Landroidx/media3/exoplayer/video/spherical/CameraMotionRenderer;->getLastResetPositionUs()J

    move-result-wide v5

    cmp-long v3, v3, v5

    if-gez v3, :cond_2

    const/4 v2, 0x1

    .line 101
    .local v2, "isDecodeOnly":Z
    :cond_2
    iget-object v3, p0, Landroidx/media3/exoplayer/video/spherical/CameraMotionRenderer;->listener:Landroidx/media3/exoplayer/video/spherical/CameraMotionListener;

    if-eqz v3, :cond_0

    if-eqz v2, :cond_3

    .line 102
    goto :goto_0

    .line 105
    :cond_3
    iget-object v3, p0, Landroidx/media3/exoplayer/video/spherical/CameraMotionRenderer;->buffer:Landroidx/media3/decoder/DecoderInputBuffer;

    invoke-virtual {v3}, Landroidx/media3/decoder/DecoderInputBuffer;->flip()V

    .line 106
    iget-object v3, p0, Landroidx/media3/exoplayer/video/spherical/CameraMotionRenderer;->buffer:Landroidx/media3/decoder/DecoderInputBuffer;

    iget-object v3, v3, Landroidx/media3/decoder/DecoderInputBuffer;->data:Ljava/nio/ByteBuffer;

    invoke-static {v3}, Landroidx/media3/common/util/Util;->castNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/nio/ByteBuffer;

    invoke-direct {p0, v3}, Landroidx/media3/exoplayer/video/spherical/CameraMotionRenderer;->parseMetadata(Ljava/nio/ByteBuffer;)[F

    move-result-object v3

    .line 107
    .local v3, "rotation":[F
    if-nez v3, :cond_4

    .line 108
    goto :goto_0

    .line 111
    :cond_4
    iget-object v4, p0, Landroidx/media3/exoplayer/video/spherical/CameraMotionRenderer;->listener:Landroidx/media3/exoplayer/video/spherical/CameraMotionListener;

    invoke-static {v4}, Landroidx/media3/common/util/Util;->castNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/media3/exoplayer/video/spherical/CameraMotionListener;

    iget-wide v5, p0, Landroidx/media3/exoplayer/video/spherical/CameraMotionRenderer;->lastTimestampUs:J

    invoke-virtual {p0}, Landroidx/media3/exoplayer/video/spherical/CameraMotionRenderer;->getStreamOffsetUs()J

    move-result-wide v7

    sub-long/2addr v5, v7

    invoke-interface {v4, v5, v6, v3}, Landroidx/media3/exoplayer/video/spherical/CameraMotionListener;->onCameraMotion(J[F)V

    .line 112
    .end local v0    # "formatHolder":Landroidx/media3/exoplayer/FormatHolder;
    .end local v1    # "result":I
    .end local v2    # "isDecodeOnly":Z
    .end local v3    # "rotation":[F
    goto :goto_0

    .line 96
    .restart local v0    # "formatHolder":Landroidx/media3/exoplayer/FormatHolder;
    .restart local v1    # "result":I
    :cond_5
    :goto_1
    return-void

    .line 113
    .end local v0    # "formatHolder":Landroidx/media3/exoplayer/FormatHolder;
    .end local v1    # "result":I
    :cond_6
    return-void
.end method

.method public supportsFormat(Landroidx/media3/common/Format;)I
    .locals 2
    .param p1, "format"    # Landroidx/media3/common/Format;

    .line 61
    const-string v0, "application/x-camera-motion"

    iget-object v1, p1, Landroidx/media3/common/Format;->sampleMimeType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 62
    const/4 v0, 0x4

    invoke-static {v0}, Landroidx/media3/exoplayer/RendererCapabilities;->create(I)I

    move-result v0

    goto :goto_0

    .line 63
    :cond_0
    const/4 v0, 0x0

    invoke-static {v0}, Landroidx/media3/exoplayer/RendererCapabilities;->create(I)I

    move-result v0

    .line 61
    :goto_0
    return v0
.end method
