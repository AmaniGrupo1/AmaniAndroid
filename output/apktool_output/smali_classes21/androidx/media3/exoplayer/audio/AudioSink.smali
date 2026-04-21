.class public interface abstract Landroidx/media3/exoplayer/audio/AudioSink;
.super Ljava/lang/Object;
.source "AudioSink.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media3/exoplayer/audio/AudioSink$OffloadMode;,
        Landroidx/media3/exoplayer/audio/AudioSink$SinkFormatSupport;,
        Landroidx/media3/exoplayer/audio/AudioSink$UnexpectedDiscontinuityException;,
        Landroidx/media3/exoplayer/audio/AudioSink$WriteException;,
        Landroidx/media3/exoplayer/audio/AudioSink$InitializationException;,
        Landroidx/media3/exoplayer/audio/AudioSink$ConfigurationException;,
        Landroidx/media3/exoplayer/audio/AudioSink$AudioTrackConfig;,
        Landroidx/media3/exoplayer/audio/AudioSink$Listener;
    }
.end annotation


# static fields
.field public static final CURRENT_POSITION_NOT_SET:J = -0x8000000000000000L

.field public static final OFFLOAD_MODE_DISABLED:I = 0x0

.field public static final OFFLOAD_MODE_ENABLED_GAPLESS_NOT_REQUIRED:I = 0x2

.field public static final OFFLOAD_MODE_ENABLED_GAPLESS_REQUIRED:I = 0x1

.field public static final SINK_FORMAT_SUPPORTED_DIRECTLY:I = 0x2

.field public static final SINK_FORMAT_SUPPORTED_WITH_TRANSCODING:I = 0x1

.field public static final SINK_FORMAT_UNSUPPORTED:I


# virtual methods
.method public abstract configure(Landroidx/media3/common/Format;I[I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media3/exoplayer/audio/AudioSink$ConfigurationException;
        }
    .end annotation
.end method

.method public abstract disableTunneling()V
.end method

.method public abstract enableTunnelingV21()V
.end method

.method public abstract flush()V
.end method

.method public abstract getAudioAttributes()Landroidx/media3/common/AudioAttributes;
.end method

.method public getAudioCapabilities()Landroidx/media3/exoplayer/audio/AudioCapabilities;
    .locals 1

    .line 597
    const/4 v0, 0x0

    return-object v0
.end method

.method public abstract getAudioTrackBufferSizeUs()J
.end method

.method public abstract getCurrentPositionUs(Z)J
.end method

.method public getFormatOffloadSupport(Landroidx/media3/common/Format;)Landroidx/media3/exoplayer/audio/AudioOffloadSupport;
    .locals 1
    .param p1, "format"    # Landroidx/media3/common/Format;

    .line 486
    sget-object v0, Landroidx/media3/exoplayer/audio/AudioOffloadSupport;->DEFAULT_UNSUPPORTED:Landroidx/media3/exoplayer/audio/AudioOffloadSupport;

    return-object v0
.end method

.method public abstract getFormatSupport(Landroidx/media3/common/Format;)I
.end method

.method public abstract getPlaybackParameters()Landroidx/media3/common/PlaybackParameters;
.end method

.method public abstract getSkipSilenceEnabled()Z
.end method

.method public abstract handleBuffer(Ljava/nio/ByteBuffer;JI)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media3/exoplayer/audio/AudioSink$InitializationException;,
            Landroidx/media3/exoplayer/audio/AudioSink$WriteException;
        }
    .end annotation
.end method

.method public abstract handleDiscontinuity()V
.end method

.method public abstract hasPendingData()Z
.end method

.method public abstract isEnded()Z
.end method

.method public abstract pause()V
.end method

.method public abstract play()V
.end method

.method public abstract playToEndOfStream()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media3/exoplayer/audio/AudioSink$WriteException;
        }
    .end annotation
.end method

.method public release()V
    .locals 0

    .line 695
    return-void
.end method

.method public abstract reset()V
.end method

.method public abstract setAudioAttributes(Landroidx/media3/common/AudioAttributes;)V
.end method

.method public setAudioOutputProvider(Landroidx/media3/exoplayer/audio/AudioOutputProvider;)V
    .locals 2
    .param p1, "audioOutputProvider"    # Landroidx/media3/exoplayer/audio/AudioOutputProvider;

    .line 671
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "AudioSink doesn\'t support setAudioOutputProvider"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public abstract setAudioSessionId(I)V
.end method

.method public abstract setAuxEffectInfo(Landroidx/media3/common/AuxEffectInfo;)V
.end method

.method public setClock(Landroidx/media3/common/util/Clock;)V
    .locals 0
    .param p1, "clock"    # Landroidx/media3/common/util/Clock;

    .line 460
    return-void
.end method

.method public abstract setListener(Landroidx/media3/exoplayer/audio/AudioSink$Listener;)V
.end method

.method public setOffloadDelayPadding(II)V
    .locals 0
    .param p1, "delayInFrames"    # I
    .param p2, "paddingInFrames"    # I

    .line 667
    return-void
.end method

.method public setOffloadMode(I)V
    .locals 0
    .param p1, "offloadMode"    # I

    .line 659
    return-void
.end method

.method public setOutputStreamOffsetUs(J)V
    .locals 0
    .param p1, "outputStreamOffsetUs"    # J

    .line 628
    return-void
.end method

.method public abstract setPlaybackParameters(Landroidx/media3/common/PlaybackParameters;)V
.end method

.method public setPlayerId(Landroidx/media3/exoplayer/analytics/PlayerId;)V
    .locals 0
    .param p1, "playerId"    # Landroidx/media3/exoplayer/analytics/PlayerId;

    .line 453
    return-void
.end method

.method public setPreferredDevice(Landroid/media/AudioDeviceInfo;)V
    .locals 0
    .param p1, "audioDeviceInfo"    # Landroid/media/AudioDeviceInfo;

    .line 612
    return-void
.end method

.method public abstract setSkipSilenceEnabled(Z)V
.end method

.method public setVirtualDeviceId(I)V
    .locals 0
    .param p1, "virtualDeviceId"    # I

    .line 620
    return-void
.end method

.method public abstract setVolume(F)V
.end method

.method public abstract supportsFormat(Landroidx/media3/common/Format;)Z
.end method
