.class Landroidx/media3/exoplayer/mediacodec/SynchronousMediaCodecBufferEnqueuer;
.super Ljava/lang/Object;
.source "SynchronousMediaCodecBufferEnqueuer.java"

# interfaces
.implements Landroidx/media3/exoplayer/mediacodec/MediaCodecBufferEnqueuer;


# instance fields
.field private final codec:Landroid/media/MediaCodec;


# direct methods
.method public constructor <init>(Landroid/media/MediaCodec;)V
    .locals 0
    .param p1, "codec"    # Landroid/media/MediaCodec;

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-object p1, p0, Landroidx/media3/exoplayer/mediacodec/SynchronousMediaCodecBufferEnqueuer;->codec:Landroid/media/MediaCodec;

    .line 28
    return-void
.end method


# virtual methods
.method public flush()V
    .locals 0

    .line 56
    return-void
.end method

.method public maybeThrowException()V
    .locals 0

    .line 71
    return-void
.end method

.method public queueInputBuffer(IIIJI)V
    .locals 7
    .param p1, "index"    # I
    .param p2, "offset"    # I
    .param p3, "size"    # I
    .param p4, "presentationTimeUs"    # J
    .param p6, "flags"    # I

    .line 38
    iget-object v0, p0, Landroidx/media3/exoplayer/mediacodec/SynchronousMediaCodecBufferEnqueuer;->codec:Landroid/media/MediaCodec;

    move v1, p1

    move v2, p2

    move v3, p3

    move-wide v4, p4

    move v6, p6

    .end local p1    # "index":I
    .end local p2    # "offset":I
    .end local p3    # "size":I
    .end local p4    # "presentationTimeUs":J
    .end local p6    # "flags":I
    .local v1, "index":I
    .local v2, "offset":I
    .local v3, "size":I
    .local v4, "presentationTimeUs":J
    .local v6, "flags":I
    invoke-virtual/range {v0 .. v6}, Landroid/media/MediaCodec;->queueInputBuffer(IIIJI)V

    .line 39
    return-void
.end method

.method public queueSecureInputBuffer(IILandroidx/media3/decoder/CryptoInfo;JI)V
    .locals 7
    .param p1, "index"    # I
    .param p2, "offset"    # I
    .param p3, "info"    # Landroidx/media3/decoder/CryptoInfo;
    .param p4, "presentationTimeUs"    # J
    .param p6, "flags"    # I

    .line 44
    iget-object v0, p0, Landroidx/media3/exoplayer/mediacodec/SynchronousMediaCodecBufferEnqueuer;->codec:Landroid/media/MediaCodec;

    .line 45
    invoke-virtual {p3}, Landroidx/media3/decoder/CryptoInfo;->getFrameworkCryptoInfo()Landroid/media/MediaCodec$CryptoInfo;

    move-result-object v3

    .line 44
    move v1, p1

    move v2, p2

    move-wide v4, p4

    move v6, p6

    .end local p1    # "index":I
    .end local p2    # "offset":I
    .end local p4    # "presentationTimeUs":J
    .end local p6    # "flags":I
    .local v1, "index":I
    .local v2, "offset":I
    .local v4, "presentationTimeUs":J
    .local v6, "flags":I
    invoke-virtual/range {v0 .. v6}, Landroid/media/MediaCodec;->queueSecureInputBuffer(IILandroid/media/MediaCodec$CryptoInfo;JI)V

    .line 46
    return-void
.end method

.method public setParameters(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "parameters"    # Landroid/os/Bundle;

    .line 50
    iget-object v0, p0, Landroidx/media3/exoplayer/mediacodec/SynchronousMediaCodecBufferEnqueuer;->codec:Landroid/media/MediaCodec;

    invoke-virtual {v0, p1}, Landroid/media/MediaCodec;->setParameters(Landroid/os/Bundle;)V

    .line 51
    return-void
.end method

.method public shutdown()V
    .locals 0

    .line 61
    return-void
.end method

.method public start()V
    .locals 0

    .line 33
    return-void
.end method

.method public waitUntilQueueingComplete()V
    .locals 0

    .line 66
    return-void
.end method
