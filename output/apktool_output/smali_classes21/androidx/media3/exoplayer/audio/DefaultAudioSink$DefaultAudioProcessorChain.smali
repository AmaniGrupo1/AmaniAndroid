.class public Landroidx/media3/exoplayer/audio/DefaultAudioSink$DefaultAudioProcessorChain;
.super Ljava/lang/Object;
.source "DefaultAudioSink.java"

# interfaces
.implements Landroidx/media3/exoplayer/audio/DefaultAudioSink$AudioProcessorChain;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media3/exoplayer/audio/DefaultAudioSink;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DefaultAudioProcessorChain"
.end annotation


# instance fields
.field private final audioProcessors:[Landroidx/media3/common/audio/AudioProcessor;

.field private final silenceSkippingAudioProcessor:Landroidx/media3/exoplayer/audio/SilenceSkippingAudioProcessor;

.field private final sonicAudioProcessor:Landroidx/media3/common/audio/SonicAudioProcessor;


# direct methods
.method public varargs constructor <init>([Landroidx/media3/common/audio/AudioProcessor;)V
    .locals 2
    .param p1, "audioProcessors"    # [Landroidx/media3/common/audio/AudioProcessor;

    .line 168
    new-instance v0, Landroidx/media3/exoplayer/audio/SilenceSkippingAudioProcessor;

    invoke-direct {v0}, Landroidx/media3/exoplayer/audio/SilenceSkippingAudioProcessor;-><init>()V

    new-instance v1, Landroidx/media3/common/audio/SonicAudioProcessor;

    invoke-direct {v1}, Landroidx/media3/common/audio/SonicAudioProcessor;-><init>()V

    invoke-direct {p0, p1, v0, v1}, Landroidx/media3/exoplayer/audio/DefaultAudioSink$DefaultAudioProcessorChain;-><init>([Landroidx/media3/common/audio/AudioProcessor;Landroidx/media3/exoplayer/audio/SilenceSkippingAudioProcessor;Landroidx/media3/common/audio/SonicAudioProcessor;)V

    .line 169
    return-void
.end method

.method public constructor <init>([Landroidx/media3/common/audio/AudioProcessor;Landroidx/media3/exoplayer/audio/SilenceSkippingAudioProcessor;Landroidx/media3/common/audio/SonicAudioProcessor;)V
    .locals 3
    .param p1, "audioProcessors"    # [Landroidx/media3/common/audio/AudioProcessor;
    .param p2, "silenceSkippingAudioProcessor"    # Landroidx/media3/exoplayer/audio/SilenceSkippingAudioProcessor;
    .param p3, "sonicAudioProcessor"    # Landroidx/media3/common/audio/SonicAudioProcessor;

    .line 178
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 181
    array-length v0, p1

    add-int/lit8 v0, v0, 0x2

    new-array v0, v0, [Landroidx/media3/common/audio/AudioProcessor;

    iput-object v0, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink$DefaultAudioProcessorChain;->audioProcessors:[Landroidx/media3/common/audio/AudioProcessor;

    .line 182
    iget-object v0, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink$DefaultAudioProcessorChain;->audioProcessors:[Landroidx/media3/common/audio/AudioProcessor;

    array-length v1, p1

    const/4 v2, 0x0

    invoke-static {p1, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 188
    iput-object p2, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink$DefaultAudioProcessorChain;->silenceSkippingAudioProcessor:Landroidx/media3/exoplayer/audio/SilenceSkippingAudioProcessor;

    .line 189
    iput-object p3, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink$DefaultAudioProcessorChain;->sonicAudioProcessor:Landroidx/media3/common/audio/SonicAudioProcessor;

    .line 190
    iget-object v0, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink$DefaultAudioProcessorChain;->audioProcessors:[Landroidx/media3/common/audio/AudioProcessor;

    array-length v1, p1

    aput-object p2, v0, v1

    .line 191
    iget-object v0, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink$DefaultAudioProcessorChain;->audioProcessors:[Landroidx/media3/common/audio/AudioProcessor;

    array-length v1, p1

    add-int/lit8 v1, v1, 0x1

    aput-object p3, v0, v1

    .line 192
    return-void
.end method


# virtual methods
.method public applyPlaybackParameters(Landroidx/media3/common/PlaybackParameters;)Landroidx/media3/common/PlaybackParameters;
    .locals 2
    .param p1, "playbackParameters"    # Landroidx/media3/common/PlaybackParameters;

    .line 201
    iget-object v0, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink$DefaultAudioProcessorChain;->sonicAudioProcessor:Landroidx/media3/common/audio/SonicAudioProcessor;

    iget v1, p1, Landroidx/media3/common/PlaybackParameters;->speed:F

    invoke-virtual {v0, v1}, Landroidx/media3/common/audio/SonicAudioProcessor;->setSpeed(F)V

    .line 202
    iget-object v0, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink$DefaultAudioProcessorChain;->sonicAudioProcessor:Landroidx/media3/common/audio/SonicAudioProcessor;

    iget v1, p1, Landroidx/media3/common/PlaybackParameters;->pitch:F

    invoke-virtual {v0, v1}, Landroidx/media3/common/audio/SonicAudioProcessor;->setPitch(F)V

    .line 203
    return-object p1
.end method

.method public applySkipSilenceEnabled(Z)Z
    .locals 1
    .param p1, "skipSilenceEnabled"    # Z

    .line 208
    iget-object v0, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink$DefaultAudioProcessorChain;->silenceSkippingAudioProcessor:Landroidx/media3/exoplayer/audio/SilenceSkippingAudioProcessor;

    invoke-virtual {v0, p1}, Landroidx/media3/exoplayer/audio/SilenceSkippingAudioProcessor;->setEnabled(Z)V

    .line 209
    return p1
.end method

.method public getAudioProcessors()[Landroidx/media3/common/audio/AudioProcessor;
    .locals 1

    .line 196
    iget-object v0, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink$DefaultAudioProcessorChain;->audioProcessors:[Landroidx/media3/common/audio/AudioProcessor;

    return-object v0
.end method

.method public getMediaDuration(J)J
    .locals 2
    .param p1, "playoutDuration"    # J

    .line 214
    iget-object v0, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink$DefaultAudioProcessorChain;->sonicAudioProcessor:Landroidx/media3/common/audio/SonicAudioProcessor;

    invoke-virtual {v0}, Landroidx/media3/common/audio/SonicAudioProcessor;->isActive()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 215
    iget-object v0, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink$DefaultAudioProcessorChain;->sonicAudioProcessor:Landroidx/media3/common/audio/SonicAudioProcessor;

    invoke-virtual {v0, p1, p2}, Landroidx/media3/common/audio/SonicAudioProcessor;->getMediaDuration(J)J

    move-result-wide v0

    goto :goto_0

    .line 216
    :cond_0
    move-wide v0, p1

    .line 214
    :goto_0
    return-wide v0
.end method

.method public getSkippedOutputFrameCount()J
    .locals 2

    .line 221
    iget-object v0, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink$DefaultAudioProcessorChain;->silenceSkippingAudioProcessor:Landroidx/media3/exoplayer/audio/SilenceSkippingAudioProcessor;

    invoke-virtual {v0}, Landroidx/media3/exoplayer/audio/SilenceSkippingAudioProcessor;->getSkippedFrames()J

    move-result-wide v0

    return-wide v0
.end method
