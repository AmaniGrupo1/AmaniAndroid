.class public interface abstract Landroidx/media3/exoplayer/RendererCapabilities;
.super Ljava/lang/Object;
.source "RendererCapabilities.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media3/exoplayer/RendererCapabilities$Capabilities;,
        Landroidx/media3/exoplayer/RendererCapabilities$AudioOffloadSupport;,
        Landroidx/media3/exoplayer/RendererCapabilities$DecoderSupport;,
        Landroidx/media3/exoplayer/RendererCapabilities$HardwareAccelerationSupport;,
        Landroidx/media3/exoplayer/RendererCapabilities$TunnelingSupport;,
        Landroidx/media3/exoplayer/RendererCapabilities$AdaptiveSupport;,
        Landroidx/media3/exoplayer/RendererCapabilities$Listener;
    }
.end annotation


# static fields
.field public static final ADAPTIVE_NOT_SEAMLESS:I = 0x8

.field public static final ADAPTIVE_NOT_SUPPORTED:I = 0x0

.field public static final ADAPTIVE_SEAMLESS:I = 0x10

.field public static final ADAPTIVE_SUPPORT_MASK:I = 0x18

.field public static final AUDIO_OFFLOAD_GAPLESS_SUPPORTED:I = 0x400

.field public static final AUDIO_OFFLOAD_NOT_SUPPORTED:I = 0x0

.field public static final AUDIO_OFFLOAD_SPEED_CHANGE_SUPPORTED:I = 0x800

.field public static final AUDIO_OFFLOAD_SUPPORTED:I = 0x200

.field public static final AUDIO_OFFLOAD_SUPPORT_MASK:I = 0xe00

.field public static final DECODER_SUPPORT_FALLBACK:I = 0x0

.field public static final DECODER_SUPPORT_FALLBACK_MIMETYPE:I = 0x100

.field public static final DECODER_SUPPORT_MASK:I = 0x180

.field public static final DECODER_SUPPORT_PRIMARY:I = 0x80

.field public static final FORMAT_SUPPORT_MASK:I = 0x7

.field public static final HARDWARE_ACCELERATION_NOT_SUPPORTED:I = 0x0

.field public static final HARDWARE_ACCELERATION_SUPPORTED:I = 0x40

.field public static final HARDWARE_ACCELERATION_SUPPORT_MASK:I = 0x40

.field public static final TUNNELING_NOT_SUPPORTED:I = 0x0

.field public static final TUNNELING_SUPPORTED:I = 0x20

.field public static final TUNNELING_SUPPORT_MASK:I = 0x20


# direct methods
.method public static create(I)I
    .locals 1
    .param p0, "formatSupport"    # I

    .line 245
    const/4 v0, 0x0

    invoke-static {p0, v0, v0, v0}, Landroidx/media3/exoplayer/RendererCapabilities;->create(IIII)I

    move-result v0

    return v0
.end method

.method public static create(III)I
    .locals 6
    .param p0, "formatSupport"    # I
    .param p1, "adaptiveSupport"    # I
    .param p2, "tunnelingSupport"    # I

    .line 269
    const/16 v4, 0x80

    const/4 v5, 0x0

    const/4 v3, 0x0

    move v0, p0

    move v1, p1

    move v2, p2

    .end local p0    # "formatSupport":I
    .end local p1    # "adaptiveSupport":I
    .end local p2    # "tunnelingSupport":I
    .local v0, "formatSupport":I
    .local v1, "adaptiveSupport":I
    .local v2, "tunnelingSupport":I
    invoke-static/range {v0 .. v5}, Landroidx/media3/exoplayer/RendererCapabilities;->create(IIIIII)I

    move-result p0

    return p0
.end method

.method public static create(IIII)I
    .locals 6
    .param p0, "formatSupport"    # I
    .param p1, "adaptiveSupport"    # I
    .param p2, "tunnelingSupport"    # I
    .param p3, "audioOffloadSupport"    # I

    .line 296
    const/4 v3, 0x0

    const/16 v4, 0x80

    move v0, p0

    move v1, p1

    move v2, p2

    move v5, p3

    .end local p0    # "formatSupport":I
    .end local p1    # "adaptiveSupport":I
    .end local p2    # "tunnelingSupport":I
    .end local p3    # "audioOffloadSupport":I
    .local v0, "formatSupport":I
    .local v1, "adaptiveSupport":I
    .local v2, "tunnelingSupport":I
    .local v5, "audioOffloadSupport":I
    invoke-static/range {v0 .. v5}, Landroidx/media3/exoplayer/RendererCapabilities;->create(IIIIII)I

    move-result p0

    return p0
.end method

.method public static create(IIIII)I
    .locals 6
    .param p0, "formatSupport"    # I
    .param p1, "adaptiveSupport"    # I
    .param p2, "tunnelingSupport"    # I
    .param p3, "hardwareAccelerationSupport"    # I
    .param p4, "decoderSupport"    # I

    .line 325
    const/4 v5, 0x0

    move v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    .end local p0    # "formatSupport":I
    .end local p1    # "adaptiveSupport":I
    .end local p2    # "tunnelingSupport":I
    .end local p3    # "hardwareAccelerationSupport":I
    .end local p4    # "decoderSupport":I
    .local v0, "formatSupport":I
    .local v1, "adaptiveSupport":I
    .local v2, "tunnelingSupport":I
    .local v3, "hardwareAccelerationSupport":I
    .local v4, "decoderSupport":I
    invoke-static/range {v0 .. v5}, Landroidx/media3/exoplayer/RendererCapabilities;->create(IIIIII)I

    move-result p0

    return p0
.end method

.method public static create(IIIIII)I
    .locals 1
    .param p0, "formatSupport"    # I
    .param p1, "adaptiveSupport"    # I
    .param p2, "tunnelingSupport"    # I
    .param p3, "hardwareAccelerationSupport"    # I
    .param p4, "decoderSupport"    # I
    .param p5, "audioOffloadSupport"    # I

    .line 356
    or-int v0, p0, p1

    or-int/2addr v0, p2

    or-int/2addr v0, p3

    or-int/2addr v0, p4

    or-int/2addr v0, p5

    return v0
.end method

.method public static getAdaptiveSupport(I)I
    .locals 1
    .param p0, "supportFlags"    # I

    .line 405
    and-int/lit8 v0, p0, 0x18

    return v0
.end method

.method public static getAudioOffloadSupport(I)I
    .locals 1
    .param p0, "supportFlags"    # I

    .line 454
    and-int/lit16 v0, p0, 0xe00

    return v0
.end method

.method public static getDecoderSupport(I)I
    .locals 1
    .param p0, "supportFlags"    # I

    .line 442
    and-int/lit16 v0, p0, 0x180

    return v0
.end method

.method public static getFormatSupport(I)I
    .locals 1
    .param p0, "supportFlags"    # I

    .line 373
    and-int/lit8 v0, p0, 0x7

    return v0
.end method

.method public static getHardwareAccelerationSupport(I)I
    .locals 1
    .param p0, "supportFlags"    # I

    .line 430
    and-int/lit8 v0, p0, 0x40

    return v0
.end method

.method public static getTunnelingSupport(I)I
    .locals 1
    .param p0, "supportFlags"    # I

    .line 417
    and-int/lit8 v0, p0, 0x20

    return v0
.end method

.method public static isFormatSupported(IZ)Z
    .locals 2
    .param p0, "supportFlags"    # I
    .param p1, "allowExceedsCapabilities"    # Z

    .line 391
    invoke-static {p0}, Landroidx/media3/exoplayer/RendererCapabilities;->getFormatSupport(I)I

    move-result v0

    .line 392
    .local v0, "formatSupport":I
    const/4 v1, 0x4

    if-eq v0, v1, :cond_1

    if-eqz p1, :cond_0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v1, 0x1

    :goto_1
    return v1
.end method


# virtual methods
.method public clearListener()V
    .locals 0

    .line 504
    return-void
.end method

.method public abstract getName()Ljava/lang/String;
.end method

.method public abstract getTrackType()I
.end method

.method public setListener(Landroidx/media3/exoplayer/RendererCapabilities$Listener;)V
    .locals 0
    .param p1, "listener"    # Landroidx/media3/exoplayer/RendererCapabilities$Listener;

    .line 499
    return-void
.end method

.method public abstract supportsFormat(Landroidx/media3/common/Format;)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media3/exoplayer/ExoPlaybackException;
        }
    .end annotation
.end method

.method public abstract supportsMixedMimeTypeAdaptation()I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media3/exoplayer/ExoPlaybackException;
        }
    .end annotation
.end method
