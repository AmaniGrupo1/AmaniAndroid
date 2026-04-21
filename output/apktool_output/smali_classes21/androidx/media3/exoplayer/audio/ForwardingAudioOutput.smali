.class public Landroidx/media3/exoplayer/audio/ForwardingAudioOutput;
.super Ljava/lang/Object;
.source "ForwardingAudioOutput.java"

# interfaces
.implements Landroidx/media3/exoplayer/audio/AudioOutput;


# instance fields
.field private final audioOutput:Landroidx/media3/exoplayer/audio/AudioOutput;


# direct methods
.method public constructor <init>(Landroidx/media3/exoplayer/audio/AudioOutput;)V
    .locals 0
    .param p1, "audioOutput"    # Landroidx/media3/exoplayer/audio/AudioOutput;

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-object p1, p0, Landroidx/media3/exoplayer/audio/ForwardingAudioOutput;->audioOutput:Landroidx/media3/exoplayer/audio/AudioOutput;

    .line 37
    return-void
.end method


# virtual methods
.method public addListener(Landroidx/media3/exoplayer/audio/AudioOutput$Listener;)V
    .locals 1
    .param p1, "listener"    # Landroidx/media3/exoplayer/audio/AudioOutput$Listener;

    .line 41
    iget-object v0, p0, Landroidx/media3/exoplayer/audio/ForwardingAudioOutput;->audioOutput:Landroidx/media3/exoplayer/audio/AudioOutput;

    invoke-interface {v0, p1}, Landroidx/media3/exoplayer/audio/AudioOutput;->addListener(Landroidx/media3/exoplayer/audio/AudioOutput$Listener;)V

    .line 42
    return-void
.end method

.method public attachAuxEffect(I)V
    .locals 1
    .param p1, "effectId"    # I

    .line 143
    iget-object v0, p0, Landroidx/media3/exoplayer/audio/ForwardingAudioOutput;->audioOutput:Landroidx/media3/exoplayer/audio/AudioOutput;

    invoke-interface {v0, p1}, Landroidx/media3/exoplayer/audio/AudioOutput;->attachAuxEffect(I)V

    .line 144
    return-void
.end method

.method public canReuseAudioOutput(Landroidx/media3/exoplayer/audio/AudioOutputProvider$OutputConfig;Landroidx/media3/exoplayer/audio/AudioOutputProvider$FormatConfig;Landroidx/media3/exoplayer/audio/AudioOutputProvider$OutputConfig;)Z
    .locals 1
    .param p1, "currentConfig"    # Landroidx/media3/exoplayer/audio/AudioOutputProvider$OutputConfig;
    .param p2, "newFormat"    # Landroidx/media3/exoplayer/audio/AudioOutputProvider$FormatConfig;
    .param p3, "newConfig"    # Landroidx/media3/exoplayer/audio/AudioOutputProvider$OutputConfig;

    .line 162
    iget-object v0, p0, Landroidx/media3/exoplayer/audio/ForwardingAudioOutput;->audioOutput:Landroidx/media3/exoplayer/audio/AudioOutput;

    invoke-interface {v0, p1, p2, p3}, Landroidx/media3/exoplayer/audio/AudioOutput;->canReuseAudioOutput(Landroidx/media3/exoplayer/audio/AudioOutputProvider$OutputConfig;Landroidx/media3/exoplayer/audio/AudioOutputProvider$FormatConfig;Landroidx/media3/exoplayer/audio/AudioOutputProvider$OutputConfig;)Z

    move-result v0

    return v0
.end method

.method public flush()V
    .locals 1

    .line 62
    iget-object v0, p0, Landroidx/media3/exoplayer/audio/ForwardingAudioOutput;->audioOutput:Landroidx/media3/exoplayer/audio/AudioOutput;

    invoke-interface {v0}, Landroidx/media3/exoplayer/audio/AudioOutput;->flush()V

    .line 63
    return-void
.end method

.method public getAudioSessionId()I
    .locals 1

    .line 87
    iget-object v0, p0, Landroidx/media3/exoplayer/audio/ForwardingAudioOutput;->audioOutput:Landroidx/media3/exoplayer/audio/AudioOutput;

    invoke-interface {v0}, Landroidx/media3/exoplayer/audio/AudioOutput;->getAudioSessionId()I

    move-result v0

    return v0
.end method

.method public getBufferSizeInFrames()J
    .locals 2

    .line 97
    iget-object v0, p0, Landroidx/media3/exoplayer/audio/ForwardingAudioOutput;->audioOutput:Landroidx/media3/exoplayer/audio/AudioOutput;

    invoke-interface {v0}, Landroidx/media3/exoplayer/audio/AudioOutput;->getBufferSizeInFrames()J

    move-result-wide v0

    return-wide v0
.end method

.method public getPlaybackParameters()Landroidx/media3/common/PlaybackParameters;
    .locals 1

    .line 107
    iget-object v0, p0, Landroidx/media3/exoplayer/audio/ForwardingAudioOutput;->audioOutput:Landroidx/media3/exoplayer/audio/AudioOutput;

    invoke-interface {v0}, Landroidx/media3/exoplayer/audio/AudioOutput;->getPlaybackParameters()Landroidx/media3/common/PlaybackParameters;

    move-result-object v0

    return-object v0
.end method

.method public getPositionUs()J
    .locals 2

    .line 102
    iget-object v0, p0, Landroidx/media3/exoplayer/audio/ForwardingAudioOutput;->audioOutput:Landroidx/media3/exoplayer/audio/AudioOutput;

    invoke-interface {v0}, Landroidx/media3/exoplayer/audio/AudioOutput;->getPositionUs()J

    move-result-wide v0

    return-wide v0
.end method

.method public getSampleRate()I
    .locals 1

    .line 92
    iget-object v0, p0, Landroidx/media3/exoplayer/audio/ForwardingAudioOutput;->audioOutput:Landroidx/media3/exoplayer/audio/AudioOutput;

    invoke-interface {v0}, Landroidx/media3/exoplayer/audio/AudioOutput;->getSampleRate()I

    move-result v0

    return v0
.end method

.method public isOffloadedPlayback()Z
    .locals 1

    .line 82
    iget-object v0, p0, Landroidx/media3/exoplayer/audio/ForwardingAudioOutput;->audioOutput:Landroidx/media3/exoplayer/audio/AudioOutput;

    invoke-interface {v0}, Landroidx/media3/exoplayer/audio/AudioOutput;->isOffloadedPlayback()Z

    move-result v0

    return v0
.end method

.method public isStalled()Z
    .locals 1

    .line 112
    iget-object v0, p0, Landroidx/media3/exoplayer/audio/ForwardingAudioOutput;->audioOutput:Landroidx/media3/exoplayer/audio/AudioOutput;

    invoke-interface {v0}, Landroidx/media3/exoplayer/audio/AudioOutput;->isStalled()Z

    move-result v0

    return v0
.end method

.method public pause()V
    .locals 1

    .line 51
    iget-object v0, p0, Landroidx/media3/exoplayer/audio/ForwardingAudioOutput;->audioOutput:Landroidx/media3/exoplayer/audio/AudioOutput;

    invoke-interface {v0}, Landroidx/media3/exoplayer/audio/AudioOutput;->pause()V

    .line 52
    return-void
.end method

.method public play()V
    .locals 1

    .line 46
    iget-object v0, p0, Landroidx/media3/exoplayer/audio/ForwardingAudioOutput;->audioOutput:Landroidx/media3/exoplayer/audio/AudioOutput;

    invoke-interface {v0}, Landroidx/media3/exoplayer/audio/AudioOutput;->play()V

    .line 47
    return-void
.end method

.method public release()V
    .locals 1

    .line 72
    iget-object v0, p0, Landroidx/media3/exoplayer/audio/ForwardingAudioOutput;->audioOutput:Landroidx/media3/exoplayer/audio/AudioOutput;

    invoke-interface {v0}, Landroidx/media3/exoplayer/audio/AudioOutput;->release()V

    .line 73
    return-void
.end method

.method public removeListener(Landroidx/media3/exoplayer/audio/AudioOutput$Listener;)V
    .locals 1
    .param p1, "listener"    # Landroidx/media3/exoplayer/audio/AudioOutput$Listener;

    .line 117
    iget-object v0, p0, Landroidx/media3/exoplayer/audio/ForwardingAudioOutput;->audioOutput:Landroidx/media3/exoplayer/audio/AudioOutput;

    invoke-interface {v0, p1}, Landroidx/media3/exoplayer/audio/AudioOutput;->removeListener(Landroidx/media3/exoplayer/audio/AudioOutput$Listener;)V

    .line 118
    return-void
.end method

.method public setAuxEffectSendLevel(F)V
    .locals 1
    .param p1, "level"    # F

    .line 148
    iget-object v0, p0, Landroidx/media3/exoplayer/audio/ForwardingAudioOutput;->audioOutput:Landroidx/media3/exoplayer/audio/AudioOutput;

    invoke-interface {v0, p1}, Landroidx/media3/exoplayer/audio/AudioOutput;->setAuxEffectSendLevel(F)V

    .line 149
    return-void
.end method

.method public setOffloadDelayPadding(II)V
    .locals 1
    .param p1, "delayInFrames"    # I
    .param p2, "paddingInFrames"    # I

    .line 127
    iget-object v0, p0, Landroidx/media3/exoplayer/audio/ForwardingAudioOutput;->audioOutput:Landroidx/media3/exoplayer/audio/AudioOutput;

    invoke-interface {v0, p1, p2}, Landroidx/media3/exoplayer/audio/AudioOutput;->setOffloadDelayPadding(II)V

    .line 128
    return-void
.end method

.method public setOffloadEndOfStream()V
    .locals 1

    .line 132
    iget-object v0, p0, Landroidx/media3/exoplayer/audio/ForwardingAudioOutput;->audioOutput:Landroidx/media3/exoplayer/audio/AudioOutput;

    invoke-interface {v0}, Landroidx/media3/exoplayer/audio/AudioOutput;->setOffloadEndOfStream()V

    .line 133
    return-void
.end method

.method public setPlaybackParameters(Landroidx/media3/common/PlaybackParameters;)V
    .locals 1
    .param p1, "playbackParams"    # Landroidx/media3/common/PlaybackParameters;

    .line 122
    iget-object v0, p0, Landroidx/media3/exoplayer/audio/ForwardingAudioOutput;->audioOutput:Landroidx/media3/exoplayer/audio/AudioOutput;

    invoke-interface {v0, p1}, Landroidx/media3/exoplayer/audio/AudioOutput;->setPlaybackParameters(Landroidx/media3/common/PlaybackParameters;)V

    .line 123
    return-void
.end method

.method public setPlayerId(Landroidx/media3/exoplayer/analytics/PlayerId;)V
    .locals 1
    .param p1, "playerId"    # Landroidx/media3/exoplayer/analytics/PlayerId;

    .line 138
    iget-object v0, p0, Landroidx/media3/exoplayer/audio/ForwardingAudioOutput;->audioOutput:Landroidx/media3/exoplayer/audio/AudioOutput;

    invoke-interface {v0, p1}, Landroidx/media3/exoplayer/audio/AudioOutput;->setPlayerId(Landroidx/media3/exoplayer/analytics/PlayerId;)V

    .line 139
    return-void
.end method

.method public setPreferredDevice(Landroid/media/AudioDeviceInfo;)V
    .locals 1
    .param p1, "preferredDevice"    # Landroid/media/AudioDeviceInfo;

    .line 153
    iget-object v0, p0, Landroidx/media3/exoplayer/audio/ForwardingAudioOutput;->audioOutput:Landroidx/media3/exoplayer/audio/AudioOutput;

    invoke-interface {v0, p1}, Landroidx/media3/exoplayer/audio/AudioOutput;->setPreferredDevice(Landroid/media/AudioDeviceInfo;)V

    .line 154
    return-void
.end method

.method public setVolume(F)V
    .locals 1
    .param p1, "volume"    # F

    .line 77
    iget-object v0, p0, Landroidx/media3/exoplayer/audio/ForwardingAudioOutput;->audioOutput:Landroidx/media3/exoplayer/audio/AudioOutput;

    invoke-interface {v0, p1}, Landroidx/media3/exoplayer/audio/AudioOutput;->setVolume(F)V

    .line 78
    return-void
.end method

.method public stop()V
    .locals 1

    .line 67
    iget-object v0, p0, Landroidx/media3/exoplayer/audio/ForwardingAudioOutput;->audioOutput:Landroidx/media3/exoplayer/audio/AudioOutput;

    invoke-interface {v0}, Landroidx/media3/exoplayer/audio/AudioOutput;->stop()V

    .line 68
    return-void
.end method

.method public write(Ljava/nio/ByteBuffer;IJ)Z
    .locals 1
    .param p1, "buffer"    # Ljava/nio/ByteBuffer;
    .param p2, "encodedAccessUnitCount"    # I
    .param p3, "presentationTimeUs"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media3/exoplayer/audio/AudioOutput$WriteException;
        }
    .end annotation

    .line 57
    iget-object v0, p0, Landroidx/media3/exoplayer/audio/ForwardingAudioOutput;->audioOutput:Landroidx/media3/exoplayer/audio/AudioOutput;

    invoke-interface {v0, p1, p2, p3, p4}, Landroidx/media3/exoplayer/audio/AudioOutput;->write(Ljava/nio/ByteBuffer;IJ)Z

    move-result v0

    return v0
.end method
