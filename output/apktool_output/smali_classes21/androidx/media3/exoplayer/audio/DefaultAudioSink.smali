.class public final Landroidx/media3/exoplayer/audio/DefaultAudioSink;
.super Ljava/lang/Object;
.source "DefaultAudioSink.java"

# interfaces
.implements Landroidx/media3/exoplayer/audio/AudioSink;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media3/exoplayer/audio/DefaultAudioSink$Configuration;,
        Landroidx/media3/exoplayer/audio/DefaultAudioSink$AudioOutputListener;,
        Landroidx/media3/exoplayer/audio/DefaultAudioSink$Builder;,
        Landroidx/media3/exoplayer/audio/DefaultAudioSink$MediaPositionParameters;,
        Landroidx/media3/exoplayer/audio/DefaultAudioSink$PendingExceptionHolder;,
        Landroidx/media3/exoplayer/audio/DefaultAudioSink$OutputMode;,
        Landroidx/media3/exoplayer/audio/DefaultAudioSink$AudioOffloadSupportProvider;,
        Landroidx/media3/exoplayer/audio/DefaultAudioSink$AudioTrackBufferSizeProvider;,
        Landroidx/media3/exoplayer/audio/DefaultAudioSink$DefaultAudioProcessorChain;,
        Landroidx/media3/exoplayer/audio/DefaultAudioSink$AudioProcessorChain;,
        Landroidx/media3/exoplayer/audio/DefaultAudioSink$AudioTrackProvider;
    }
.end annotation


# static fields
.field private static final AUDIO_OUTPUT_RETRY_BUFFER_SIZE_THRESHOLD:I = 0xf4240

.field private static final AUDIO_OUTPUT_VOLUME_RAMP_TIME_MS:I = 0x14

.field public static final DEFAULT_PLAYBACK_SPEED:F = 1.0f

.field private static final DEFAULT_SKIP_SILENCE:Z = false

.field public static final MAX_PITCH:F = 8.0f

.field public static final MAX_PLAYBACK_SPEED:F = 8.0f

.field private static final MINIMUM_REPORT_SKIPPED_SILENCE_DURATION_US:I = 0x493e0

.field public static final MIN_PITCH:F = 0.1f

.field public static final MIN_PLAYBACK_SPEED:F = 0.1f

.field public static final OUTPUT_MODE_OFFLOAD:I = 0x1

.field public static final OUTPUT_MODE_PASSTHROUGH:I = 0x2

.field public static final OUTPUT_MODE_PCM:I = 0x0

.field private static final REPORT_SKIPPED_SILENCE_DELAY_MS:I = 0x64

.field private static final TAG:Ljava/lang/String; = "DefaultAudioSink"

.field private static final pendingReleaseCount:Ljava/util/concurrent/atomic/AtomicInteger;


# instance fields
.field private accumulatedSkippedSilenceDurationUs:J

.field private afterDrainParameters:Landroidx/media3/exoplayer/audio/DefaultAudioSink$MediaPositionParameters;

.field private audioAttributes:Landroidx/media3/common/AudioAttributes;

.field private final audioOffloadListener:Landroidx/media3/exoplayer/ExoPlayer$AudioOffloadListener;

.field private audioOutput:Landroidx/media3/exoplayer/audio/AudioOutput;

.field private audioOutputListener:Landroidx/media3/exoplayer/audio/DefaultAudioSink$AudioOutputListener;

.field private audioOutputProvider:Landroidx/media3/exoplayer/audio/AudioOutputProvider;

.field private audioOutputProviderListener:Landroidx/media3/exoplayer/audio/AudioOutputProvider$Listener;

.field private audioProcessingPipeline:Landroidx/media3/common/audio/AudioProcessingPipeline;

.field private final audioProcessorChain:Landroidx/media3/common/audio/AudioProcessorChain;

.field private audioSessionId:I

.field private auxEffectInfo:Landroidx/media3/common/AuxEffectInfo;

.field private final availableAudioProcessors:Lcom/google/common/collect/ImmutableList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/ImmutableList<",
            "Landroidx/media3/common/audio/AudioProcessor;",
            ">;"
        }
    .end annotation
.end field

.field private final channelMappingAudioProcessor:Landroidx/media3/exoplayer/audio/ChannelMappingAudioProcessor;

.field private configuration:Landroidx/media3/exoplayer/audio/DefaultAudioSink$Configuration;

.field private final context:Landroid/content/Context;

.field private final enableFloatOutput:Z

.field private externalAudioSessionIdProvided:Z

.field private framesPerEncodedSample:I

.field private handledEndOfStream:Z

.field private handledOffloadOnPresentationEnded:Z

.field private final initializationExceptionPendingExceptionHolder:Landroidx/media3/exoplayer/audio/DefaultAudioSink$PendingExceptionHolder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/media3/exoplayer/audio/DefaultAudioSink$PendingExceptionHolder<",
            "Landroidx/media3/exoplayer/audio/AudioSink$InitializationException;",
            ">;"
        }
    .end annotation
.end field

.field private inputBuffer:Ljava/nio/ByteBuffer;

.field private inputBufferAccessUnitCount:I

.field private isWaitingForOffloadEndOfStreamHandled:Z

.field private lastFeedElapsedRealtimeMs:J

.field private listener:Landroidx/media3/exoplayer/audio/AudioSink$Listener;

.field private mediaPositionParameters:Landroidx/media3/exoplayer/audio/DefaultAudioSink$MediaPositionParameters;

.field private final mediaPositionParametersCheckpoints:Ljava/util/ArrayDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayDeque<",
            "Landroidx/media3/exoplayer/audio/DefaultAudioSink$MediaPositionParameters;",
            ">;"
        }
    .end annotation
.end field

.field private offloadDisabledUntilNextConfiguration:Z

.field private offloadMode:I

.field private outputBuffer:Ljava/nio/ByteBuffer;

.field private pendingAudioSessionIdChangeConfirmation:Z

.field private pendingConfiguration:Landroidx/media3/exoplayer/audio/DefaultAudioSink$Configuration;

.field private playbackParameters:Landroidx/media3/common/PlaybackParameters;

.field private playerId:Landroidx/media3/exoplayer/analytics/PlayerId;

.field private playing:Z

.field private final preferAudioOutputPlaybackParameters:Z

.field private preferredDevice:Landroid/media/AudioDeviceInfo;

.field private reportSkippedSilenceHandler:Landroid/os/Handler;

.field private skipSilenceEnabled:Z

.field private skippedOutputFrameCountAtLastPosition:J

.field private startMediaTimeUs:J

.field private startMediaTimeUsNeedsInit:Z

.field private startMediaTimeUsNeedsSync:Z

.field private stoppedAudioOutput:Z

.field private submittedEncodedFrames:J

.field private submittedPcmBytes:J

.field private final toFloatPcmAudioProcessor:Landroidx/media3/exoplayer/audio/ToFloatPcmAudioProcessor;

.field private final toInt16PcmAudioProcessor:Landroidx/media3/common/audio/ToInt16PcmAudioProcessor;

.field private final trimmingAudioProcessor:Landroidx/media3/exoplayer/audio/TrimmingAudioProcessor;

.field private tunneling:Z

.field private virtualDeviceId:I

.field private volume:F

.field private final writeExceptionPendingExceptionHolder:Landroidx/media3/exoplayer/audio/DefaultAudioSink$PendingExceptionHolder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/media3/exoplayer/audio/DefaultAudioSink$PendingExceptionHolder<",
            "Landroidx/media3/exoplayer/audio/AudioSink$WriteException;",
            ">;"
        }
    .end annotation
.end field

.field private writtenEncodedFrames:J

.field private writtenPcmBytes:J


# direct methods
.method public static synthetic $r8$lambda$eQpBSvvM7qMitmX5MdwoTJRm8SQ(Landroidx/media3/exoplayer/audio/DefaultAudioSink;)V
    .locals 0

    invoke-direct {p0}, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->maybeReportSkippedSilence()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .line 563
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    sput-object v0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->pendingReleaseCount:Ljava/util/concurrent/atomic/AtomicInteger;

    return-void
.end method

.method private constructor <init>(Landroidx/media3/exoplayer/audio/DefaultAudioSink$Builder;)V
    .locals 10
    .param p1, "builder"    # Landroidx/media3/exoplayer/audio/DefaultAudioSink$Builder;
    .annotation runtime Lorg/checkerframework/checker/nullness/qual/RequiresNonNull;
        value = {
            "#1.audioProcessorChain"
        }
    .end annotation

    .line 630
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 631
    invoke-static {p1}, Landroidx/media3/exoplayer/audio/DefaultAudioSink$Builder;->access$100(Landroidx/media3/exoplayer/audio/DefaultAudioSink$Builder;)Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-static {p1}, Landroidx/media3/exoplayer/audio/DefaultAudioSink$Builder;->access$100(Landroidx/media3/exoplayer/audio/DefaultAudioSink$Builder;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->context:Landroid/content/Context;

    .line 632
    sget-object v0, Landroidx/media3/common/AudioAttributes;->DEFAULT:Landroidx/media3/common/AudioAttributes;

    iput-object v0, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->audioAttributes:Landroidx/media3/common/AudioAttributes;

    .line 633
    invoke-static {p1}, Landroidx/media3/exoplayer/audio/DefaultAudioSink$Builder;->access$200(Landroidx/media3/exoplayer/audio/DefaultAudioSink$Builder;)Landroidx/media3/common/audio/AudioProcessorChain;

    move-result-object v0

    iput-object v0, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->audioProcessorChain:Landroidx/media3/common/audio/AudioProcessorChain;

    .line 634
    invoke-static {p1}, Landroidx/media3/exoplayer/audio/DefaultAudioSink$Builder;->access$300(Landroidx/media3/exoplayer/audio/DefaultAudioSink$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->enableFloatOutput:Z

    .line 635
    invoke-static {p1}, Landroidx/media3/exoplayer/audio/DefaultAudioSink$Builder;->access$400(Landroidx/media3/exoplayer/audio/DefaultAudioSink$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->preferAudioOutputPlaybackParameters:Z

    .line 636
    const/4 v0, 0x0

    iput v0, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->offloadMode:I

    .line 637
    invoke-static {p1}, Landroidx/media3/exoplayer/audio/DefaultAudioSink$Builder;->access$500(Landroidx/media3/exoplayer/audio/DefaultAudioSink$Builder;)Landroidx/media3/exoplayer/audio/AudioOutputProvider;

    move-result-object v1

    iput-object v1, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->audioOutputProvider:Landroidx/media3/exoplayer/audio/AudioOutputProvider;

    .line 638
    new-instance v1, Landroidx/media3/exoplayer/audio/ChannelMappingAudioProcessor;

    invoke-direct {v1}, Landroidx/media3/exoplayer/audio/ChannelMappingAudioProcessor;-><init>()V

    iput-object v1, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->channelMappingAudioProcessor:Landroidx/media3/exoplayer/audio/ChannelMappingAudioProcessor;

    .line 639
    new-instance v1, Landroidx/media3/exoplayer/audio/TrimmingAudioProcessor;

    invoke-direct {v1}, Landroidx/media3/exoplayer/audio/TrimmingAudioProcessor;-><init>()V

    iput-object v1, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->trimmingAudioProcessor:Landroidx/media3/exoplayer/audio/TrimmingAudioProcessor;

    .line 640
    new-instance v1, Landroidx/media3/common/audio/ToInt16PcmAudioProcessor;

    invoke-direct {v1}, Landroidx/media3/common/audio/ToInt16PcmAudioProcessor;-><init>()V

    iput-object v1, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->toInt16PcmAudioProcessor:Landroidx/media3/common/audio/ToInt16PcmAudioProcessor;

    .line 641
    new-instance v1, Landroidx/media3/exoplayer/audio/ToFloatPcmAudioProcessor;

    invoke-direct {v1}, Landroidx/media3/exoplayer/audio/ToFloatPcmAudioProcessor;-><init>()V

    iput-object v1, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->toFloatPcmAudioProcessor:Landroidx/media3/exoplayer/audio/ToFloatPcmAudioProcessor;

    .line 642
    iget-object v1, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->trimmingAudioProcessor:Landroidx/media3/exoplayer/audio/TrimmingAudioProcessor;

    iget-object v2, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->channelMappingAudioProcessor:Landroidx/media3/exoplayer/audio/ChannelMappingAudioProcessor;

    .line 643
    invoke-static {v1, v2}, Lcom/google/common/collect/ImmutableList;->of(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList;

    move-result-object v1

    iput-object v1, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->availableAudioProcessors:Lcom/google/common/collect/ImmutableList;

    .line 644
    const/high16 v1, 0x3f800000    # 1.0f

    iput v1, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->volume:F

    .line 645
    iput v0, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->audioSessionId:I

    .line 646
    new-instance v1, Landroidx/media3/common/AuxEffectInfo;

    const/4 v2, 0x0

    invoke-direct {v1, v0, v2}, Landroidx/media3/common/AuxEffectInfo;-><init>(IF)V

    iput-object v1, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->auxEffectInfo:Landroidx/media3/common/AuxEffectInfo;

    .line 647
    new-instance v3, Landroidx/media3/exoplayer/audio/DefaultAudioSink$MediaPositionParameters;

    sget-object v4, Landroidx/media3/common/PlaybackParameters;->DEFAULT:Landroidx/media3/common/PlaybackParameters;

    const-wide/16 v7, 0x0

    const/4 v9, 0x0

    const-wide/16 v5, 0x0

    invoke-direct/range {v3 .. v9}, Landroidx/media3/exoplayer/audio/DefaultAudioSink$MediaPositionParameters;-><init>(Landroidx/media3/common/PlaybackParameters;JJLandroidx/media3/exoplayer/audio/DefaultAudioSink$1;)V

    iput-object v3, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->mediaPositionParameters:Landroidx/media3/exoplayer/audio/DefaultAudioSink$MediaPositionParameters;

    .line 650
    sget-object v1, Landroidx/media3/common/PlaybackParameters;->DEFAULT:Landroidx/media3/common/PlaybackParameters;

    iput-object v1, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->playbackParameters:Landroidx/media3/common/PlaybackParameters;

    .line 651
    iput-boolean v0, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->skipSilenceEnabled:Z

    .line 652
    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->mediaPositionParametersCheckpoints:Ljava/util/ArrayDeque;

    .line 653
    new-instance v0, Landroidx/media3/exoplayer/audio/DefaultAudioSink$PendingExceptionHolder;

    invoke-direct {v0}, Landroidx/media3/exoplayer/audio/DefaultAudioSink$PendingExceptionHolder;-><init>()V

    iput-object v0, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->initializationExceptionPendingExceptionHolder:Landroidx/media3/exoplayer/audio/DefaultAudioSink$PendingExceptionHolder;

    .line 654
    new-instance v0, Landroidx/media3/exoplayer/audio/DefaultAudioSink$PendingExceptionHolder;

    invoke-direct {v0}, Landroidx/media3/exoplayer/audio/DefaultAudioSink$PendingExceptionHolder;-><init>()V

    iput-object v0, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->writeExceptionPendingExceptionHolder:Landroidx/media3/exoplayer/audio/DefaultAudioSink$PendingExceptionHolder;

    .line 655
    invoke-static {p1}, Landroidx/media3/exoplayer/audio/DefaultAudioSink$Builder;->access$700(Landroidx/media3/exoplayer/audio/DefaultAudioSink$Builder;)Landroidx/media3/exoplayer/ExoPlayer$AudioOffloadListener;

    move-result-object v0

    iput-object v0, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->audioOffloadListener:Landroidx/media3/exoplayer/ExoPlayer$AudioOffloadListener;

    .line 656
    nop

    .line 657
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x22

    if-lt v0, v1, :cond_2

    invoke-static {p1}, Landroidx/media3/exoplayer/audio/DefaultAudioSink$Builder;->access$100(Landroidx/media3/exoplayer/audio/DefaultAudioSink$Builder;)Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_1

    goto :goto_1

    .line 659
    :cond_1
    invoke-static {p1}, Landroidx/media3/exoplayer/audio/DefaultAudioSink$Builder;->access$100(Landroidx/media3/exoplayer/audio/DefaultAudioSink$Builder;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->getDeviceIdFromContext(Landroid/content/Context;)I

    move-result v0

    goto :goto_2

    .line 658
    :cond_2
    :goto_1
    const/4 v0, -0x1

    .line 659
    :goto_2
    iput v0, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->virtualDeviceId:I

    .line 660
    return-void
.end method

.method synthetic constructor <init>(Landroidx/media3/exoplayer/audio/DefaultAudioSink$Builder;Landroidx/media3/exoplayer/audio/DefaultAudioSink$1;)V
    .locals 0
    .param p1, "x0"    # Landroidx/media3/exoplayer/audio/DefaultAudioSink$Builder;
    .param p2, "x1"    # Landroidx/media3/exoplayer/audio/DefaultAudioSink$1;

    .line 94
    invoke-direct {p0, p1}, Landroidx/media3/exoplayer/audio/DefaultAudioSink;-><init>(Landroidx/media3/exoplayer/audio/DefaultAudioSink$Builder;)V

    return-void
.end method

.method static synthetic access$2100(Landroidx/media3/exoplayer/audio/DefaultAudioSink;)Landroidx/media3/exoplayer/audio/DefaultAudioSink$AudioOutputListener;
    .locals 1
    .param p0, "x0"    # Landroidx/media3/exoplayer/audio/DefaultAudioSink;

    .line 94
    iget-object v0, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->audioOutputListener:Landroidx/media3/exoplayer/audio/DefaultAudioSink$AudioOutputListener;

    return-object v0
.end method

.method static synthetic access$2200(Landroidx/media3/exoplayer/audio/DefaultAudioSink;)Landroidx/media3/exoplayer/audio/AudioSink$Listener;
    .locals 1
    .param p0, "x0"    # Landroidx/media3/exoplayer/audio/DefaultAudioSink;

    .line 94
    iget-object v0, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->listener:Landroidx/media3/exoplayer/audio/AudioSink$Listener;

    return-object v0
.end method

.method static synthetic access$2300(Landroidx/media3/exoplayer/audio/DefaultAudioSink;)Z
    .locals 1
    .param p0, "x0"    # Landroidx/media3/exoplayer/audio/DefaultAudioSink;

    .line 94
    iget-boolean v0, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->playing:Z

    return v0
.end method

.method static synthetic access$2400(Landroidx/media3/exoplayer/audio/DefaultAudioSink;)Z
    .locals 1
    .param p0, "x0"    # Landroidx/media3/exoplayer/audio/DefaultAudioSink;

    .line 94
    iget-boolean v0, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->stoppedAudioOutput:Z

    return v0
.end method

.method static synthetic access$2502(Landroidx/media3/exoplayer/audio/DefaultAudioSink;Z)Z
    .locals 0
    .param p0, "x0"    # Landroidx/media3/exoplayer/audio/DefaultAudioSink;
    .param p1, "x1"    # Z

    .line 94
    iput-boolean p1, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->handledOffloadOnPresentationEnded:Z

    return p1
.end method

.method static synthetic access$2600(Landroidx/media3/exoplayer/audio/DefaultAudioSink;)Landroidx/media3/exoplayer/audio/DefaultAudioSink$Configuration;
    .locals 1
    .param p0, "x0"    # Landroidx/media3/exoplayer/audio/DefaultAudioSink;

    .line 94
    iget-object v0, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->configuration:Landroidx/media3/exoplayer/audio/DefaultAudioSink$Configuration;

    return-object v0
.end method

.method static synthetic access$2700(Landroidx/media3/exoplayer/audio/DefaultAudioSink;)Landroidx/media3/exoplayer/audio/AudioOutput;
    .locals 1
    .param p0, "x0"    # Landroidx/media3/exoplayer/audio/DefaultAudioSink;

    .line 94
    iget-object v0, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->audioOutput:Landroidx/media3/exoplayer/audio/AudioOutput;

    return-object v0
.end method

.method static synthetic access$2800(Landroidx/media3/exoplayer/audio/DefaultAudioSink;)J
    .locals 2
    .param p0, "x0"    # Landroidx/media3/exoplayer/audio/DefaultAudioSink;

    .line 94
    iget-wide v0, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->lastFeedElapsedRealtimeMs:J

    return-wide v0
.end method

.method static synthetic access$2900()Ljava/util/concurrent/atomic/AtomicInteger;
    .locals 1

    .line 94
    sget-object v0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->pendingReleaseCount:Ljava/util/concurrent/atomic/AtomicInteger;

    return-object v0
.end method

.method static synthetic access$3000()Z
    .locals 1

    .line 94
    invoke-static {}, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->hasPendingAudioOutputReleases()Z

    move-result v0

    return v0
.end method

.method private applyAudioProcessorPlaybackParametersAndSkipSilence(J)V
    .locals 8
    .param p1, "presentationTimeUs"    # J

    .line 1630
    invoke-direct {p0}, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->useAudioOutputPlaybackParams()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1631
    nop

    .line 1632
    invoke-direct {p0}, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->shouldApplyAudioProcessorPlaybackParameters()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1633
    iget-object v0, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->audioProcessorChain:Landroidx/media3/common/audio/AudioProcessorChain;

    iget-object v1, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->playbackParameters:Landroidx/media3/common/PlaybackParameters;

    invoke-interface {v0, v1}, Landroidx/media3/common/audio/AudioProcessorChain;->applyPlaybackParameters(Landroidx/media3/common/PlaybackParameters;)Landroidx/media3/common/PlaybackParameters;

    move-result-object v0

    goto :goto_0

    .line 1634
    :cond_0
    sget-object v0, Landroidx/media3/common/PlaybackParameters;->DEFAULT:Landroidx/media3/common/PlaybackParameters;

    :goto_0
    iput-object v0, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->playbackParameters:Landroidx/media3/common/PlaybackParameters;

    .line 1635
    iget-object v0, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->playbackParameters:Landroidx/media3/common/PlaybackParameters;

    move-object v2, v0

    .local v0, "audioProcessorPlaybackParameters":Landroidx/media3/common/PlaybackParameters;
    goto :goto_1

    .line 1637
    .end local v0    # "audioProcessorPlaybackParameters":Landroidx/media3/common/PlaybackParameters;
    :cond_1
    sget-object v0, Landroidx/media3/common/PlaybackParameters;->DEFAULT:Landroidx/media3/common/PlaybackParameters;

    move-object v2, v0

    .line 1639
    .local v2, "audioProcessorPlaybackParameters":Landroidx/media3/common/PlaybackParameters;
    :goto_1
    nop

    .line 1640
    invoke-direct {p0}, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->shouldApplyAudioProcessorPlaybackParameters()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1641
    iget-object v0, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->audioProcessorChain:Landroidx/media3/common/audio/AudioProcessorChain;

    iget-boolean v1, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->skipSilenceEnabled:Z

    invoke-interface {v0, v1}, Landroidx/media3/common/audio/AudioProcessorChain;->applySkipSilenceEnabled(Z)Z

    move-result v0

    goto :goto_2

    .line 1642
    :cond_2
    const/4 v0, 0x0

    :goto_2
    iput-boolean v0, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->skipSilenceEnabled:Z

    .line 1643
    iget-object v0, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->mediaPositionParametersCheckpoints:Ljava/util/ArrayDeque;

    new-instance v1, Landroidx/media3/exoplayer/audio/DefaultAudioSink$MediaPositionParameters;

    .line 1646
    const-wide/16 v3, 0x0

    invoke-static {v3, v4, p1, p2}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v3

    iget-object v5, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->configuration:Landroidx/media3/exoplayer/audio/DefaultAudioSink$Configuration;

    .line 1647
    invoke-direct {p0}, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->getWrittenFrames()J

    move-result-wide v6

    invoke-static {v5, v6, v7}, Landroidx/media3/exoplayer/audio/DefaultAudioSink$Configuration;->access$800(Landroidx/media3/exoplayer/audio/DefaultAudioSink$Configuration;J)J

    move-result-wide v5

    const/4 v7, 0x0

    invoke-direct/range {v1 .. v7}, Landroidx/media3/exoplayer/audio/DefaultAudioSink$MediaPositionParameters;-><init>(Landroidx/media3/common/PlaybackParameters;JJLandroidx/media3/exoplayer/audio/DefaultAudioSink$1;)V

    .line 1643
    invoke-virtual {v0, v1}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    .line 1648
    invoke-direct {p0}, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->setupAudioProcessors()V

    .line 1649
    iget-object v0, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->listener:Landroidx/media3/exoplayer/audio/AudioSink$Listener;

    if-eqz v0, :cond_3

    .line 1650
    iget-object v0, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->listener:Landroidx/media3/exoplayer/audio/AudioSink$Listener;

    iget-boolean v1, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->skipSilenceEnabled:Z

    invoke-interface {v0, v1}, Landroidx/media3/exoplayer/audio/AudioSink$Listener;->onSkipSilenceEnabledChanged(Z)V

    .line 1652
    :cond_3
    return-void
.end method

.method private applyMediaPositionParameters(J)J
    .locals 11
    .param p1, "positionUs"    # J

    .line 1690
    nop

    :goto_0
    iget-object v0, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->mediaPositionParametersCheckpoints:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->mediaPositionParametersCheckpoints:Ljava/util/ArrayDeque;

    .line 1691
    invoke-virtual {v0}, Ljava/util/ArrayDeque;->getFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media3/exoplayer/audio/DefaultAudioSink$MediaPositionParameters;

    iget-wide v0, v0, Landroidx/media3/exoplayer/audio/DefaultAudioSink$MediaPositionParameters;->audioOutputPositionUs:J

    cmp-long v0, p1, v0

    if-ltz v0, :cond_0

    .line 1693
    iget-object v0, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->mediaPositionParametersCheckpoints:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->remove()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media3/exoplayer/audio/DefaultAudioSink$MediaPositionParameters;

    iput-object v0, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->mediaPositionParameters:Landroidx/media3/exoplayer/audio/DefaultAudioSink$MediaPositionParameters;

    goto :goto_0

    .line 1696
    :cond_0
    iget-object v0, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->mediaPositionParameters:Landroidx/media3/exoplayer/audio/DefaultAudioSink$MediaPositionParameters;

    iget-wide v0, v0, Landroidx/media3/exoplayer/audio/DefaultAudioSink$MediaPositionParameters;->audioOutputPositionUs:J

    sub-long v0, p1, v0

    .line 1698
    .local v0, "playoutDurationSinceLastCheckpointUs":J
    iget-object v2, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->mediaPositionParameters:Landroidx/media3/exoplayer/audio/DefaultAudioSink$MediaPositionParameters;

    iget-object v2, v2, Landroidx/media3/exoplayer/audio/DefaultAudioSink$MediaPositionParameters;->playbackParameters:Landroidx/media3/common/PlaybackParameters;

    iget v2, v2, Landroidx/media3/common/PlaybackParameters;->speed:F

    .line 1699
    invoke-static {v0, v1, v2}, Landroidx/media3/common/util/Util;->getMediaDurationForPlayoutDuration(JF)J

    move-result-wide v2

    .line 1701
    .local v2, "estimatedMediaDurationSinceLastCheckpointUs":J
    iget-object v4, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->mediaPositionParametersCheckpoints:Ljava/util/ArrayDeque;

    invoke-virtual {v4}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1702
    iget-object v4, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->audioProcessorChain:Landroidx/media3/common/audio/AudioProcessorChain;

    .line 1703
    invoke-interface {v4, v0, v1}, Landroidx/media3/common/audio/AudioProcessorChain;->getMediaDuration(J)J

    move-result-wide v4

    .line 1704
    .local v4, "actualMediaDurationSinceLastCheckpointUs":J
    iget-object v6, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->mediaPositionParameters:Landroidx/media3/exoplayer/audio/DefaultAudioSink$MediaPositionParameters;

    iget-wide v6, v6, Landroidx/media3/exoplayer/audio/DefaultAudioSink$MediaPositionParameters;->mediaTimeUs:J

    add-long/2addr v6, v4

    .line 1706
    .local v6, "currentMediaPositionUs":J
    iget-object v8, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->mediaPositionParameters:Landroidx/media3/exoplayer/audio/DefaultAudioSink$MediaPositionParameters;

    sub-long v9, v4, v2

    iput-wide v9, v8, Landroidx/media3/exoplayer/audio/DefaultAudioSink$MediaPositionParameters;->mediaPositionDriftUs:J

    .line 1708
    return-wide v6

    .line 1714
    .end local v4    # "actualMediaDurationSinceLastCheckpointUs":J
    .end local v6    # "currentMediaPositionUs":J
    :cond_1
    iget-object v4, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->mediaPositionParameters:Landroidx/media3/exoplayer/audio/DefaultAudioSink$MediaPositionParameters;

    iget-wide v4, v4, Landroidx/media3/exoplayer/audio/DefaultAudioSink$MediaPositionParameters;->mediaTimeUs:J

    add-long/2addr v4, v2

    iget-object v6, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->mediaPositionParameters:Landroidx/media3/exoplayer/audio/DefaultAudioSink$MediaPositionParameters;

    iget-wide v6, v6, Landroidx/media3/exoplayer/audio/DefaultAudioSink$MediaPositionParameters;->mediaPositionDriftUs:J

    add-long/2addr v4, v6

    return-wide v4
.end method

.method private applySkipping(J)J
    .locals 7
    .param p1, "positionUs"    # J

    .line 1721
    iget-object v0, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->audioProcessorChain:Landroidx/media3/common/audio/AudioProcessorChain;

    .line 1722
    invoke-interface {v0}, Landroidx/media3/common/audio/AudioProcessorChain;->getSkippedOutputFrameCount()J

    move-result-wide v0

    .line 1723
    .local v0, "skippedOutputFrameCountAtCurrentPosition":J
    iget-object v2, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->configuration:Landroidx/media3/exoplayer/audio/DefaultAudioSink$Configuration;

    .line 1724
    invoke-static {v2, v0, v1}, Landroidx/media3/exoplayer/audio/DefaultAudioSink$Configuration;->access$800(Landroidx/media3/exoplayer/audio/DefaultAudioSink$Configuration;J)J

    move-result-wide v2

    add-long/2addr v2, p1

    .line 1725
    .local v2, "adjustedPositionUs":J
    iget-wide v4, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->skippedOutputFrameCountAtLastPosition:J

    cmp-long v4, v0, v4

    if-lez v4, :cond_0

    .line 1726
    iget-object v4, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->configuration:Landroidx/media3/exoplayer/audio/DefaultAudioSink$Configuration;

    iget-wide v5, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->skippedOutputFrameCountAtLastPosition:J

    sub-long v5, v0, v5

    .line 1727
    invoke-static {v4, v5, v6}, Landroidx/media3/exoplayer/audio/DefaultAudioSink$Configuration;->access$800(Landroidx/media3/exoplayer/audio/DefaultAudioSink$Configuration;J)J

    move-result-wide v4

    .line 1729
    .local v4, "silenceDurationUs":J
    iput-wide v0, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->skippedOutputFrameCountAtLastPosition:J

    .line 1730
    invoke-direct {p0, v4, v5}, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->handleSkippedSilence(J)V

    .line 1732
    .end local v4    # "silenceDurationUs":J
    :cond_0
    return-wide v2
.end method

.method private buildAudioOutput(Landroidx/media3/exoplayer/audio/AudioOutputProvider$OutputConfig;)Landroidx/media3/exoplayer/audio/AudioOutput;
    .locals 10
    .param p1, "outputConfig"    # Landroidx/media3/exoplayer/audio/AudioOutputProvider$OutputConfig;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media3/exoplayer/audio/AudioSink$InitializationException;
        }
    .end annotation

    .line 1098
    :try_start_0
    iget-object v0, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->audioOutputProvider:Landroidx/media3/exoplayer/audio/AudioOutputProvider;

    invoke-interface {v0, p1}, Landroidx/media3/exoplayer/audio/AudioOutputProvider;->getAudioOutput(Landroidx/media3/exoplayer/audio/AudioOutputProvider$OutputConfig;)Landroidx/media3/exoplayer/audio/AudioOutput;

    move-result-object v0
    :try_end_0
    .catch Landroidx/media3/exoplayer/audio/AudioOutputProvider$InitializationException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 1099
    :catch_0
    move-exception v0

    move-object v9, v0

    .line 1100
    .local v9, "e":Landroidx/media3/exoplayer/audio/AudioOutputProvider$InitializationException;
    new-instance v1, Landroidx/media3/exoplayer/audio/AudioSink$InitializationException;

    iget v3, p1, Landroidx/media3/exoplayer/audio/AudioOutputProvider$OutputConfig;->sampleRate:I

    iget v4, p1, Landroidx/media3/exoplayer/audio/AudioOutputProvider$OutputConfig;->channelMask:I

    iget v5, p1, Landroidx/media3/exoplayer/audio/AudioOutputProvider$OutputConfig;->encoding:I

    iget v6, p1, Landroidx/media3/exoplayer/audio/AudioOutputProvider$OutputConfig;->bufferSize:I

    iget-object v0, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->configuration:Landroidx/media3/exoplayer/audio/DefaultAudioSink$Configuration;

    .line 1107
    invoke-static {v0}, Landroidx/media3/exoplayer/audio/DefaultAudioSink$Configuration;->access$1300(Landroidx/media3/exoplayer/audio/DefaultAudioSink$Configuration;)Landroidx/media3/common/Format;

    move-result-object v7

    iget-boolean v8, p1, Landroidx/media3/exoplayer/audio/AudioOutputProvider$OutputConfig;->isOffload:Z

    const/4 v2, 0x0

    invoke-direct/range {v1 .. v9}, Landroidx/media3/exoplayer/audio/AudioSink$InitializationException;-><init>(IIIIILandroidx/media3/common/Format;ZLjava/lang/Exception;)V

    .line 1110
    .local v1, "exception":Landroidx/media3/exoplayer/audio/AudioSink$InitializationException;
    iget-object v0, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->listener:Landroidx/media3/exoplayer/audio/AudioSink$Listener;

    if-eqz v0, :cond_0

    .line 1111
    iget-object v0, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->listener:Landroidx/media3/exoplayer/audio/AudioSink$Listener;

    invoke-interface {v0, v1}, Landroidx/media3/exoplayer/audio/AudioSink$Listener;->onAudioSinkError(Ljava/lang/Exception;)V

    .line 1113
    :cond_0
    throw v1
.end method

.method private buildAudioOutputWithRetry()Landroidx/media3/exoplayer/audio/AudioOutput;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media3/exoplayer/audio/AudioSink$InitializationException;
        }
    .end annotation

    .line 1066
    :try_start_0
    iget-object v0, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->configuration:Landroidx/media3/exoplayer/audio/DefaultAudioSink$Configuration;

    invoke-static {v0}, Landroidx/media3/exoplayer/audio/DefaultAudioSink$Configuration;->access$1100(Landroidx/media3/exoplayer/audio/DefaultAudioSink$Configuration;)Landroidx/media3/exoplayer/audio/AudioOutputProvider$OutputConfig;

    move-result-object v0

    invoke-direct {p0, v0}, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->buildAudioOutput(Landroidx/media3/exoplayer/audio/AudioOutputProvider$OutputConfig;)Landroidx/media3/exoplayer/audio/AudioOutput;

    move-result-object v0
    :try_end_0
    .catch Landroidx/media3/exoplayer/audio/AudioSink$InitializationException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 1067
    :catch_0
    move-exception v0

    .line 1068
    .local v0, "initialFailure":Landroidx/media3/exoplayer/audio/AudioSink$InitializationException;
    iget-object v1, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->configuration:Landroidx/media3/exoplayer/audio/DefaultAudioSink$Configuration;

    invoke-static {v1}, Landroidx/media3/exoplayer/audio/DefaultAudioSink$Configuration;->access$1100(Landroidx/media3/exoplayer/audio/DefaultAudioSink$Configuration;)Landroidx/media3/exoplayer/audio/AudioOutputProvider$OutputConfig;

    move-result-object v1

    iget v1, v1, Landroidx/media3/exoplayer/audio/AudioOutputProvider$OutputConfig;->bufferSize:I

    .line 1069
    .local v1, "bufferSize":I
    :goto_0
    const v2, 0xf4240

    if-le v1, v2, :cond_2

    .line 1071
    div-int/lit8 v1, v1, 0x2

    .line 1073
    iget-object v2, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->configuration:Landroidx/media3/exoplayer/audio/DefaultAudioSink$Configuration;

    invoke-static {v2}, Landroidx/media3/exoplayer/audio/DefaultAudioSink$Configuration;->access$1900(Landroidx/media3/exoplayer/audio/DefaultAudioSink$Configuration;)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    .line 1074
    iget-object v2, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->configuration:Landroidx/media3/exoplayer/audio/DefaultAudioSink$Configuration;

    invoke-static {v2}, Landroidx/media3/exoplayer/audio/DefaultAudioSink$Configuration;->access$1900(Landroidx/media3/exoplayer/audio/DefaultAudioSink$Configuration;)I

    move-result v2

    goto :goto_1

    .line 1075
    :cond_0
    const/4 v2, 0x1

    :goto_1
    nop

    .line 1076
    .local v2, "frameSize":I
    rem-int v3, v1, v2

    .line 1077
    .local v3, "partialFrameSize":I
    if-eqz v3, :cond_1

    .line 1079
    sub-int v4, v2, v3

    add-int/2addr v1, v4

    .line 1081
    :cond_1
    iget-object v4, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->configuration:Landroidx/media3/exoplayer/audio/DefaultAudioSink$Configuration;

    .line 1082
    invoke-static {v4}, Landroidx/media3/exoplayer/audio/DefaultAudioSink$Configuration;->access$1100(Landroidx/media3/exoplayer/audio/DefaultAudioSink$Configuration;)Landroidx/media3/exoplayer/audio/AudioOutputProvider$OutputConfig;

    move-result-object v4

    invoke-virtual {v4}, Landroidx/media3/exoplayer/audio/AudioOutputProvider$OutputConfig;->buildUpon()Landroidx/media3/exoplayer/audio/AudioOutputProvider$OutputConfig$Builder;

    move-result-object v4

    invoke-virtual {v4, v1}, Landroidx/media3/exoplayer/audio/AudioOutputProvider$OutputConfig$Builder;->setBufferSize(I)Landroidx/media3/exoplayer/audio/AudioOutputProvider$OutputConfig$Builder;

    move-result-object v4

    invoke-virtual {v4}, Landroidx/media3/exoplayer/audio/AudioOutputProvider$OutputConfig$Builder;->build()Landroidx/media3/exoplayer/audio/AudioOutputProvider$OutputConfig;

    move-result-object v4

    .line 1084
    .local v4, "retryConfiguration":Landroidx/media3/exoplayer/audio/AudioOutputProvider$OutputConfig;
    :try_start_1
    invoke-direct {p0, v4}, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->buildAudioOutput(Landroidx/media3/exoplayer/audio/AudioOutputProvider$OutputConfig;)Landroidx/media3/exoplayer/audio/AudioOutput;

    move-result-object v5

    .line 1085
    .local v5, "audioOutput":Landroidx/media3/exoplayer/audio/AudioOutput;
    iget-object v6, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->configuration:Landroidx/media3/exoplayer/audio/DefaultAudioSink$Configuration;

    invoke-static {v6, v4}, Landroidx/media3/exoplayer/audio/DefaultAudioSink$Configuration;->access$1500(Landroidx/media3/exoplayer/audio/DefaultAudioSink$Configuration;Landroidx/media3/exoplayer/audio/AudioOutputProvider$OutputConfig;)Landroidx/media3/exoplayer/audio/DefaultAudioSink$Configuration;

    move-result-object v6

    iput-object v6, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->configuration:Landroidx/media3/exoplayer/audio/DefaultAudioSink$Configuration;
    :try_end_1
    .catch Landroidx/media3/exoplayer/audio/AudioSink$InitializationException; {:try_start_1 .. :try_end_1} :catch_1

    .line 1086
    return-object v5

    .line 1087
    .end local v5    # "audioOutput":Landroidx/media3/exoplayer/audio/AudioOutput;
    :catch_1
    move-exception v5

    .line 1088
    .local v5, "retryFailure":Landroidx/media3/exoplayer/audio/AudioSink$InitializationException;
    invoke-virtual {v0, v5}, Landroidx/media3/exoplayer/audio/AudioSink$InitializationException;->addSuppressed(Ljava/lang/Throwable;)V

    .line 1090
    .end local v2    # "frameSize":I
    .end local v3    # "partialFrameSize":I
    .end local v4    # "retryConfiguration":Landroidx/media3/exoplayer/audio/AudioOutputProvider$OutputConfig;
    .end local v5    # "retryFailure":Landroidx/media3/exoplayer/audio/AudioSink$InitializationException;
    goto :goto_0

    .line 1091
    :cond_2
    invoke-direct {p0}, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->maybeDisableOffload()V

    .line 1092
    throw v0
.end method

.method private drainOutputBuffer(J)V
    .locals 8
    .param p1, "avSyncPresentationTimeUs"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media3/exoplayer/audio/AudioSink$WriteException;
        }
    .end annotation

    .line 1206
    iget-object v0, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->outputBuffer:Ljava/nio/ByteBuffer;

    if-nez v0, :cond_0

    .line 1207
    return-void

    .line 1209
    :cond_0
    iget-object v0, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->writeExceptionPendingExceptionHolder:Landroidx/media3/exoplayer/audio/DefaultAudioSink$PendingExceptionHolder;

    invoke-virtual {v0}, Landroidx/media3/exoplayer/audio/DefaultAudioSink$PendingExceptionHolder;->shouldWaitBeforeRetry()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1210
    return-void

    .line 1212
    :cond_1
    iget-object v0, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->outputBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    .line 1215
    .local v0, "bytesRemaining":I
    const-wide/16 v1, 0x0

    :try_start_0
    iget-object v3, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->audioOutput:Landroidx/media3/exoplayer/audio/AudioOutput;

    iget-object v4, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->outputBuffer:Ljava/nio/ByteBuffer;

    iget v5, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->inputBufferAccessUnitCount:I

    .line 1216
    invoke-interface {v3, v4, v5, p1, p2}, Landroidx/media3/exoplayer/audio/AudioOutput;->write(Ljava/nio/ByteBuffer;IJ)Z

    move-result v3
    :try_end_0
    .catch Landroidx/media3/exoplayer/audio/AudioOutput$WriteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1241
    .local v3, "fullyHandled":Z
    nop

    .line 1243
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    iput-wide v4, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->lastFeedElapsedRealtimeMs:J

    .line 1244
    iget-object v4, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->writeExceptionPendingExceptionHolder:Landroidx/media3/exoplayer/audio/DefaultAudioSink$PendingExceptionHolder;

    invoke-virtual {v4}, Landroidx/media3/exoplayer/audio/DefaultAudioSink$PendingExceptionHolder;->clear()V

    .line 1246
    iget-object v4, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->audioOutput:Landroidx/media3/exoplayer/audio/AudioOutput;

    invoke-interface {v4}, Landroidx/media3/exoplayer/audio/AudioOutput;->isOffloadedPlayback()Z

    move-result v4

    const/4 v5, 0x0

    if-eqz v4, :cond_3

    .line 1251
    iget-wide v6, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->writtenEncodedFrames:J

    cmp-long v1, v6, v1

    if-lez v1, :cond_2

    .line 1252
    iput-boolean v5, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->isWaitingForOffloadEndOfStreamHandled:Z

    .line 1258
    :cond_2
    iget-boolean v1, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->playing:Z

    if-eqz v1, :cond_3

    iget-object v1, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->listener:Landroidx/media3/exoplayer/audio/AudioSink$Listener;

    if-eqz v1, :cond_3

    if-nez v3, :cond_3

    iget-boolean v1, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->isWaitingForOffloadEndOfStreamHandled:Z

    if-nez v1, :cond_3

    .line 1259
    iget-object v1, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->listener:Landroidx/media3/exoplayer/audio/AudioSink$Listener;

    invoke-interface {v1}, Landroidx/media3/exoplayer/audio/AudioSink$Listener;->onOffloadBufferFull()V

    .line 1263
    :cond_3
    iget-object v1, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->configuration:Landroidx/media3/exoplayer/audio/DefaultAudioSink$Configuration;

    invoke-static {v1}, Landroidx/media3/exoplayer/audio/DefaultAudioSink$Configuration;->access$1700(Landroidx/media3/exoplayer/audio/DefaultAudioSink$Configuration;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1264
    iget-wide v1, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->writtenPcmBytes:J

    iget-object v4, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->outputBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v4

    sub-int v4, v0, v4

    int-to-long v6, v4

    add-long/2addr v1, v6

    iput-wide v1, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->writtenPcmBytes:J

    .line 1266
    :cond_4
    if-eqz v3, :cond_7

    .line 1267
    iget-object v1, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->configuration:Landroidx/media3/exoplayer/audio/DefaultAudioSink$Configuration;

    invoke-static {v1}, Landroidx/media3/exoplayer/audio/DefaultAudioSink$Configuration;->access$1700(Landroidx/media3/exoplayer/audio/DefaultAudioSink$Configuration;)Z

    move-result v1

    if-nez v1, :cond_6

    .line 1270
    iget-object v1, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->outputBuffer:Ljava/nio/ByteBuffer;

    iget-object v2, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->inputBuffer:Ljava/nio/ByteBuffer;

    if-ne v1, v2, :cond_5

    const/4 v5, 0x1

    :cond_5
    invoke-static {v5}, Lcom/google/common/base/Preconditions;->checkState(Z)V

    .line 1271
    iget-wide v1, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->writtenEncodedFrames:J

    iget v4, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->framesPerEncodedSample:I

    int-to-long v4, v4

    iget v6, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->inputBufferAccessUnitCount:I

    int-to-long v6, v6

    mul-long/2addr v4, v6

    add-long/2addr v1, v4

    iput-wide v1, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->writtenEncodedFrames:J

    .line 1273
    :cond_6
    const/4 v1, 0x0

    iput-object v1, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->outputBuffer:Ljava/nio/ByteBuffer;

    .line 1275
    :cond_7
    return-void

    .line 1217
    .end local v3    # "fullyHandled":Z
    :catch_0
    move-exception v3

    .line 1221
    .local v3, "e":Landroidx/media3/exoplayer/audio/AudioOutput$WriteException;
    const/4 v4, 0x0

    .line 1222
    .local v4, "shouldRetry":Z
    iget-boolean v5, v3, Landroidx/media3/exoplayer/audio/AudioOutput$WriteException;->isRecoverable:Z

    if-eqz v5, :cond_9

    .line 1223
    invoke-direct {p0}, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->getWrittenFrames()J

    move-result-wide v5

    cmp-long v1, v5, v1

    if-lez v1, :cond_8

    .line 1224
    const/4 v4, 0x1

    goto :goto_0

    .line 1225
    :cond_8
    iget-object v1, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->audioOutput:Landroidx/media3/exoplayer/audio/AudioOutput;

    invoke-interface {v1}, Landroidx/media3/exoplayer/audio/AudioOutput;->isOffloadedPlayback()Z

    move-result v1

    if-eqz v1, :cond_9

    .line 1226
    invoke-direct {p0}, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->maybeDisableOffload()V

    .line 1227
    const/4 v4, 0x1

    .line 1231
    :cond_9
    :goto_0
    new-instance v1, Landroidx/media3/exoplayer/audio/AudioSink$WriteException;

    iget v2, v3, Landroidx/media3/exoplayer/audio/AudioOutput$WriteException;->errorCode:I

    iget-object v5, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->configuration:Landroidx/media3/exoplayer/audio/DefaultAudioSink$Configuration;

    .line 1232
    invoke-static {v5}, Landroidx/media3/exoplayer/audio/DefaultAudioSink$Configuration;->access$1300(Landroidx/media3/exoplayer/audio/DefaultAudioSink$Configuration;)Landroidx/media3/common/Format;

    move-result-object v5

    invoke-direct {v1, v2, v5, v4}, Landroidx/media3/exoplayer/audio/AudioSink$WriteException;-><init>(ILandroidx/media3/common/Format;Z)V

    .line 1233
    .local v1, "error":Landroidx/media3/exoplayer/audio/AudioSink$WriteException;
    iget-object v2, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->listener:Landroidx/media3/exoplayer/audio/AudioSink$Listener;

    if-eqz v2, :cond_a

    .line 1234
    iget-object v2, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->listener:Landroidx/media3/exoplayer/audio/AudioSink$Listener;

    invoke-interface {v2, v1}, Landroidx/media3/exoplayer/audio/AudioSink$Listener;->onAudioSinkError(Ljava/lang/Exception;)V

    .line 1236
    :cond_a
    iget-boolean v2, v3, Landroidx/media3/exoplayer/audio/AudioOutput$WriteException;->isRecoverable:Z

    if-nez v2, :cond_b

    .line 1239
    iget-object v2, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->writeExceptionPendingExceptionHolder:Landroidx/media3/exoplayer/audio/DefaultAudioSink$PendingExceptionHolder;

    invoke-virtual {v2, v1}, Landroidx/media3/exoplayer/audio/DefaultAudioSink$PendingExceptionHolder;->throwExceptionIfDeadlineIsReached(Ljava/lang/Exception;)V

    .line 1240
    return-void

    .line 1237
    :cond_b
    throw v1
.end method

.method private drainToEndOfStream()Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media3/exoplayer/audio/AudioSink$WriteException;
        }
    .end annotation

    .line 1169
    iget-object v0, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->audioProcessingPipeline:Landroidx/media3/common/audio/AudioProcessingPipeline;

    invoke-virtual {v0}, Landroidx/media3/common/audio/AudioProcessingPipeline;->isOperational()Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    const-wide/high16 v3, -0x8000000000000000L

    if-nez v0, :cond_1

    .line 1170
    invoke-direct {p0, v3, v4}, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->drainOutputBuffer(J)V

    .line 1171
    iget-object v0, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->outputBuffer:Ljava/nio/ByteBuffer;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    return v1

    .line 1174
    :cond_1
    iget-object v0, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->audioProcessingPipeline:Landroidx/media3/common/audio/AudioProcessingPipeline;

    invoke-virtual {v0}, Landroidx/media3/common/audio/AudioProcessingPipeline;->queueEndOfStream()V

    .line 1175
    invoke-direct {p0, v3, v4}, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->processBuffers(J)V

    .line 1176
    iget-object v0, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->audioProcessingPipeline:Landroidx/media3/common/audio/AudioProcessingPipeline;

    invoke-virtual {v0}, Landroidx/media3/common/audio/AudioProcessingPipeline;->isEnded()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->outputBuffer:Ljava/nio/ByteBuffer;

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->outputBuffer:Ljava/nio/ByteBuffer;

    .line 1177
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v0

    if-nez v0, :cond_3

    :cond_2
    goto :goto_1

    :cond_3
    move v1, v2

    .line 1176
    :goto_1
    return v1
.end method

.method private static getDeviceIdFromContext(Landroid/content/Context;)I
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .line 1891
    invoke-virtual {p0}, Landroid/content/Context;->getDeviceId()I

    move-result v0

    invoke-static {v0}, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->resolveDefaultVirtualDeviceIds(I)I

    move-result v0

    return v0
.end method

.method private getFormatConfig(Landroidx/media3/common/Format;)Landroidx/media3/exoplayer/audio/AudioOutputProvider$FormatConfig;
    .locals 1
    .param p1, "format"    # Landroidx/media3/common/Format;

    .line 1776
    const/4 v0, -0x1

    invoke-direct {p0, p1, v0}, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->getFormatConfig(Landroidx/media3/common/Format;I)Landroidx/media3/exoplayer/audio/AudioOutputProvider$FormatConfig;

    move-result-object v0

    return-object v0
.end method

.method private getFormatConfig(Landroidx/media3/common/Format;I)Landroidx/media3/exoplayer/audio/AudioOutputProvider$FormatConfig;
    .locals 2
    .param p1, "format"    # Landroidx/media3/common/Format;
    .param p2, "preferredBufferSize"    # I

    .line 1780
    new-instance v0, Landroidx/media3/exoplayer/audio/AudioOutputProvider$FormatConfig$Builder;

    invoke-direct {v0, p1}, Landroidx/media3/exoplayer/audio/AudioOutputProvider$FormatConfig$Builder;-><init>(Landroidx/media3/common/Format;)V

    iget-object v1, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->audioAttributes:Landroidx/media3/common/AudioAttributes;

    .line 1781
    invoke-virtual {v0, v1}, Landroidx/media3/exoplayer/audio/AudioOutputProvider$FormatConfig$Builder;->setAudioAttributes(Landroidx/media3/common/AudioAttributes;)Landroidx/media3/exoplayer/audio/AudioOutputProvider$FormatConfig$Builder;

    move-result-object v0

    iget-boolean v1, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->enableFloatOutput:Z

    .line 1782
    invoke-virtual {v0, v1}, Landroidx/media3/exoplayer/audio/AudioOutputProvider$FormatConfig$Builder;->setEnableHighResolutionPcmOutput(Z)Landroidx/media3/exoplayer/audio/AudioOutputProvider$FormatConfig$Builder;

    move-result-object v0

    iget-boolean v1, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->preferAudioOutputPlaybackParameters:Z

    .line 1783
    invoke-virtual {v0, v1}, Landroidx/media3/exoplayer/audio/AudioOutputProvider$FormatConfig$Builder;->setEnablePlaybackParameters(Z)Landroidx/media3/exoplayer/audio/AudioOutputProvider$FormatConfig$Builder;

    move-result-object v0

    iget v1, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->offloadMode:I

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 1784
    :goto_0
    invoke-virtual {v0, v1}, Landroidx/media3/exoplayer/audio/AudioOutputProvider$FormatConfig$Builder;->setEnableOffload(Z)Landroidx/media3/exoplayer/audio/AudioOutputProvider$FormatConfig$Builder;

    move-result-object v0

    iget-object v1, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->preferredDevice:Landroid/media/AudioDeviceInfo;

    .line 1785
    invoke-virtual {v0, v1}, Landroidx/media3/exoplayer/audio/AudioOutputProvider$FormatConfig$Builder;->setPreferredDevice(Landroid/media/AudioDeviceInfo;)Landroidx/media3/exoplayer/audio/AudioOutputProvider$FormatConfig$Builder;

    move-result-object v0

    iget v1, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->audioSessionId:I

    .line 1786
    invoke-virtual {v0, v1}, Landroidx/media3/exoplayer/audio/AudioOutputProvider$FormatConfig$Builder;->setAudioSessionId(I)Landroidx/media3/exoplayer/audio/AudioOutputProvider$FormatConfig$Builder;

    move-result-object v0

    iget-boolean v1, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->tunneling:Z

    .line 1787
    invoke-virtual {v0, v1}, Landroidx/media3/exoplayer/audio/AudioOutputProvider$FormatConfig$Builder;->setEnableTunneling(Z)Landroidx/media3/exoplayer/audio/AudioOutputProvider$FormatConfig$Builder;

    move-result-object v0

    .line 1788
    invoke-virtual {v0, p2}, Landroidx/media3/exoplayer/audio/AudioOutputProvider$FormatConfig$Builder;->setPreferredBufferSize(I)Landroidx/media3/exoplayer/audio/AudioOutputProvider$FormatConfig$Builder;

    move-result-object v0

    iget v1, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->virtualDeviceId:I

    .line 1789
    invoke-virtual {v0, v1}, Landroidx/media3/exoplayer/audio/AudioOutputProvider$FormatConfig$Builder;->setVirtualDeviceId(I)Landroidx/media3/exoplayer/audio/AudioOutputProvider$FormatConfig$Builder;

    move-result-object v0

    .line 1790
    invoke-virtual {v0}, Landroidx/media3/exoplayer/audio/AudioOutputProvider$FormatConfig$Builder;->build()Landroidx/media3/exoplayer/audio/AudioOutputProvider$FormatConfig;

    move-result-object v0

    .line 1780
    return-object v0
.end method

.method static getFramesPerEncodedSample(ILjava/nio/ByteBuffer;)I
    .locals 3
    .param p0, "encoding"    # I
    .param p1, "buffer"    # Ljava/nio/ByteBuffer;

    .line 1794
    const/16 v0, 0x400

    const/4 v1, -0x1

    packed-switch p0, :pswitch_data_0

    .line 1843
    :pswitch_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected audio encoding: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1828
    :pswitch_1
    invoke-static {p1}, Landroidx/media3/container/OpusUtil;->parseOggPacketAudioSampleCount(Ljava/nio/ByteBuffer;)I

    move-result v0

    return v0

    .line 1820
    :pswitch_2
    invoke-static {p1}, Landroidx/media3/extractor/Ac4Util;->parseAc4SyncframeAudioSampleCount(Ljava/nio/ByteBuffer;)I

    move-result v0

    return v0

    .line 1808
    :pswitch_3
    return v0

    .line 1810
    :pswitch_4
    const/16 v0, 0x200

    return v0

    .line 1822
    :pswitch_5
    invoke-static {p1}, Landroidx/media3/extractor/Ac3Util;->findTrueHdSyncframeOffset(Ljava/nio/ByteBuffer;)I

    move-result v0

    .line 1823
    .local v0, "syncframeOffset":I
    if-ne v0, v1, :cond_0

    .line 1824
    const/4 v1, 0x0

    goto :goto_0

    .line 1825
    :cond_0
    invoke-static {p1, v0}, Landroidx/media3/extractor/Ac3Util;->parseTrueHdSyncframeAudioSampleCount(Ljava/nio/ByteBuffer;I)I

    move-result v1

    mul-int/lit8 v1, v1, 0x10

    .line 1823
    :goto_0
    return v1

    .line 1806
    .end local v0    # "syncframeOffset":I
    :pswitch_6
    const/16 v0, 0x800

    return v0

    .line 1803
    :pswitch_7
    return v0

    .line 1796
    :pswitch_8
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    invoke-static {p1, v0}, Landroidx/media3/common/util/Util;->getBigEndianInt(Ljava/nio/ByteBuffer;I)I

    move-result v0

    .line 1797
    .local v0, "headerDataInBigEndian":I
    invoke-static {v0}, Landroidx/media3/extractor/MpegAudioUtil;->parseMpegAudioFrameSampleCount(I)I

    move-result v2

    .line 1798
    .local v2, "frameCount":I
    if-eq v2, v1, :cond_1

    .line 1801
    return v2

    .line 1799
    :cond_1
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v1

    .line 1814
    .end local v0    # "headerDataInBigEndian":I
    .end local v2    # "frameCount":I
    :pswitch_9
    invoke-static {p1}, Landroidx/media3/extractor/DtsUtil;->parseDtsAudioSampleCount(Ljava/nio/ByteBuffer;)I

    move-result v0

    return v0

    .line 1818
    :pswitch_a
    invoke-static {p1}, Landroidx/media3/extractor/Ac3Util;->parseAc3SyncframeAudioSampleCount(Ljava/nio/ByteBuffer;)I

    move-result v0

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x5
        :pswitch_a
        :pswitch_a
        :pswitch_9
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_6
        :pswitch_0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_a
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_9
    .end packed-switch
.end method

.method private static getNonPcmMaximumEncodedRateBytesPerSecond(I)I
    .locals 2
    .param p0, "encoding"    # I

    .line 2144
    invoke-static {p0}, Landroidx/media3/extractor/ExtractorUtil;->getMaximumEncodedRateBytesPerSecond(I)I

    move-result v0

    .line 2145
    .local v0, "rate":I
    const v1, -0x7fffffff

    if-eq v0, v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-static {v1}, Lcom/google/common/base/Preconditions;->checkState(Z)V

    .line 2146
    return v0
.end method

.method private getSubmittedFrames()J
    .locals 4

    .line 1750
    iget-object v0, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->configuration:Landroidx/media3/exoplayer/audio/DefaultAudioSink$Configuration;

    invoke-static {v0}, Landroidx/media3/exoplayer/audio/DefaultAudioSink$Configuration;->access$1700(Landroidx/media3/exoplayer/audio/DefaultAudioSink$Configuration;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1751
    iget-wide v0, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->submittedPcmBytes:J

    iget-object v2, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->configuration:Landroidx/media3/exoplayer/audio/DefaultAudioSink$Configuration;

    invoke-static {v2}, Landroidx/media3/exoplayer/audio/DefaultAudioSink$Configuration;->access$2000(Landroidx/media3/exoplayer/audio/DefaultAudioSink$Configuration;)I

    move-result v2

    int-to-long v2, v2

    div-long/2addr v0, v2

    goto :goto_0

    .line 1752
    :cond_0
    iget-wide v0, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->submittedEncodedFrames:J

    .line 1750
    :goto_0
    return-wide v0
.end method

.method private getWrittenFrames()J
    .locals 4

    .line 1756
    iget-object v0, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->configuration:Landroidx/media3/exoplayer/audio/DefaultAudioSink$Configuration;

    invoke-static {v0}, Landroidx/media3/exoplayer/audio/DefaultAudioSink$Configuration;->access$1700(Landroidx/media3/exoplayer/audio/DefaultAudioSink$Configuration;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1757
    iget-wide v0, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->writtenPcmBytes:J

    iget-object v2, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->configuration:Landroidx/media3/exoplayer/audio/DefaultAudioSink$Configuration;

    invoke-static {v2}, Landroidx/media3/exoplayer/audio/DefaultAudioSink$Configuration;->access$1900(Landroidx/media3/exoplayer/audio/DefaultAudioSink$Configuration;)I

    move-result v2

    int-to-long v2, v2

    invoke-static {v0, v1, v2, v3}, Landroidx/media3/common/util/Util;->ceilDivide(JJ)J

    move-result-wide v0

    goto :goto_0

    .line 1758
    :cond_0
    iget-wide v0, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->writtenEncodedFrames:J

    .line 1756
    :goto_0
    return-wide v0
.end method

.method private handleSkippedSilence(J)V
    .locals 4
    .param p1, "silenceDurationUs"    # J

    .line 1736
    iget-wide v0, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->accumulatedSkippedSilenceDurationUs:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->accumulatedSkippedSilenceDurationUs:J

    .line 1737
    iget-object v0, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->reportSkippedSilenceHandler:Landroid/os/Handler;

    if-nez v0, :cond_0

    .line 1738
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->reportSkippedSilenceHandler:Landroid/os/Handler;

    .line 1740
    :cond_0
    iget-object v0, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->reportSkippedSilenceHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 1741
    iget-object v0, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->reportSkippedSilenceHandler:Landroid/os/Handler;

    new-instance v1, Landroidx/media3/exoplayer/audio/DefaultAudioSink$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Landroidx/media3/exoplayer/audio/DefaultAudioSink$$ExternalSyntheticLambda1;-><init>(Landroidx/media3/exoplayer/audio/DefaultAudioSink;)V

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1743
    return-void
.end method

.method private hasAudioOutputPendingData(J)Z
    .locals 3
    .param p1, "writtenFrames"    # J

    .line 1879
    iget-object v0, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->audioOutput:Landroidx/media3/exoplayer/audio/AudioOutput;

    .line 1881
    invoke-interface {v0}, Landroidx/media3/exoplayer/audio/AudioOutput;->getPositionUs()J

    move-result-wide v0

    iget-object v2, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->audioOutput:Landroidx/media3/exoplayer/audio/AudioOutput;

    invoke-static {v2}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/media3/exoplayer/audio/AudioOutput;

    invoke-interface {v2}, Landroidx/media3/exoplayer/audio/AudioOutput;->getSampleRate()I

    move-result v2

    .line 1880
    invoke-static {v0, v1, v2}, Landroidx/media3/common/util/Util;->durationUsToSampleCount(JI)J

    move-result-wide v0

    .line 1882
    .local v0, "currentPositionFrames":J
    cmp-long v2, p1, v0

    if-lez v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    return v2
.end method

.method private static hasPendingAudioOutputReleases()Z
    .locals 1

    .line 1886
    sget-object v0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->pendingReleaseCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private initializeAudioOutput()Z
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media3/exoplayer/audio/AudioSink$InitializationException;
        }
    .end annotation

    .line 836
    iget-object v0, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->initializationExceptionPendingExceptionHolder:Landroidx/media3/exoplayer/audio/DefaultAudioSink$PendingExceptionHolder;

    invoke-virtual {v0}, Landroidx/media3/exoplayer/audio/DefaultAudioSink$PendingExceptionHolder;->shouldWaitBeforeRetry()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 837
    return v1

    .line 840
    :cond_0
    invoke-direct {p0}, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->buildAudioOutputWithRetry()Landroidx/media3/exoplayer/audio/AudioOutput;

    move-result-object v0

    iput-object v0, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->audioOutput:Landroidx/media3/exoplayer/audio/AudioOutput;

    .line 841
    new-instance v0, Landroidx/media3/exoplayer/audio/DefaultAudioSink$AudioOutputListener;

    iget-object v2, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->configuration:Landroidx/media3/exoplayer/audio/DefaultAudioSink$Configuration;

    invoke-static {v2}, Landroidx/media3/exoplayer/audio/DefaultAudioSink$Configuration;->access$1100(Landroidx/media3/exoplayer/audio/DefaultAudioSink$Configuration;)Landroidx/media3/exoplayer/audio/AudioOutputProvider$OutputConfig;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v0, p0, v2, v3}, Landroidx/media3/exoplayer/audio/DefaultAudioSink$AudioOutputListener;-><init>(Landroidx/media3/exoplayer/audio/DefaultAudioSink;Landroidx/media3/exoplayer/audio/AudioOutputProvider$OutputConfig;Landroidx/media3/exoplayer/audio/DefaultAudioSink$1;)V

    iput-object v0, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->audioOutputListener:Landroidx/media3/exoplayer/audio/DefaultAudioSink$AudioOutputListener;

    .line 842
    iget-object v0, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->audioOutput:Landroidx/media3/exoplayer/audio/AudioOutput;

    iget-object v2, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->audioOutputListener:Landroidx/media3/exoplayer/audio/DefaultAudioSink$AudioOutputListener;

    invoke-interface {v0, v2}, Landroidx/media3/exoplayer/audio/AudioOutput;->addListener(Landroidx/media3/exoplayer/audio/AudioOutput$Listener;)V

    .line 843
    iget-object v0, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->audioOffloadListener:Landroidx/media3/exoplayer/ExoPlayer$AudioOffloadListener;

    if-eqz v0, :cond_1

    .line 844
    iget-object v0, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->audioOffloadListener:Landroidx/media3/exoplayer/ExoPlayer$AudioOffloadListener;

    iget-object v2, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->audioOutput:Landroidx/media3/exoplayer/audio/AudioOutput;

    invoke-interface {v2}, Landroidx/media3/exoplayer/audio/AudioOutput;->isOffloadedPlayback()Z

    move-result v2

    invoke-interface {v0, v2}, Landroidx/media3/exoplayer/ExoPlayer$AudioOffloadListener;->onOffloadedPlayback(Z)V

    .line 846
    :cond_1
    iget-object v0, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->audioOutput:Landroidx/media3/exoplayer/audio/AudioOutput;

    invoke-interface {v0}, Landroidx/media3/exoplayer/audio/AudioOutput;->isOffloadedPlayback()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 847
    iget-object v0, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->configuration:Landroidx/media3/exoplayer/audio/DefaultAudioSink$Configuration;

    invoke-static {v0}, Landroidx/media3/exoplayer/audio/DefaultAudioSink$Configuration;->access$1100(Landroidx/media3/exoplayer/audio/DefaultAudioSink$Configuration;)Landroidx/media3/exoplayer/audio/AudioOutputProvider$OutputConfig;

    move-result-object v0

    iget-boolean v0, v0, Landroidx/media3/exoplayer/audio/AudioOutputProvider$OutputConfig;->useOffloadGapless:Z

    if-eqz v0, :cond_2

    .line 848
    iget-object v0, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->audioOutput:Landroidx/media3/exoplayer/audio/AudioOutput;

    iget-object v2, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->configuration:Landroidx/media3/exoplayer/audio/DefaultAudioSink$Configuration;

    .line 849
    invoke-static {v2}, Landroidx/media3/exoplayer/audio/DefaultAudioSink$Configuration;->access$1300(Landroidx/media3/exoplayer/audio/DefaultAudioSink$Configuration;)Landroidx/media3/common/Format;

    move-result-object v2

    iget v2, v2, Landroidx/media3/common/Format;->encoderDelay:I

    iget-object v3, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->configuration:Landroidx/media3/exoplayer/audio/DefaultAudioSink$Configuration;

    invoke-static {v3}, Landroidx/media3/exoplayer/audio/DefaultAudioSink$Configuration;->access$1300(Landroidx/media3/exoplayer/audio/DefaultAudioSink$Configuration;)Landroidx/media3/common/Format;

    move-result-object v3

    iget v3, v3, Landroidx/media3/common/Format;->encoderPadding:I

    .line 848
    invoke-interface {v0, v2, v3}, Landroidx/media3/exoplayer/audio/AudioOutput;->setOffloadDelayPadding(II)V

    .line 852
    :cond_2
    iget-object v0, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->playerId:Landroidx/media3/exoplayer/analytics/PlayerId;

    if-eqz v0, :cond_3

    .line 853
    iget-object v0, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->audioOutput:Landroidx/media3/exoplayer/audio/AudioOutput;

    iget-object v2, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->playerId:Landroidx/media3/exoplayer/analytics/PlayerId;

    invoke-interface {v0, v2}, Landroidx/media3/exoplayer/audio/AudioOutput;->setPlayerId(Landroidx/media3/exoplayer/analytics/PlayerId;)V

    .line 855
    :cond_3
    invoke-direct {p0}, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->setVolumeInternal()V

    .line 857
    iget-object v0, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->auxEffectInfo:Landroidx/media3/common/AuxEffectInfo;

    iget v0, v0, Landroidx/media3/common/AuxEffectInfo;->effectId:I

    if-eqz v0, :cond_4

    .line 858
    iget-object v0, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->audioOutput:Landroidx/media3/exoplayer/audio/AudioOutput;

    iget-object v2, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->auxEffectInfo:Landroidx/media3/common/AuxEffectInfo;

    iget v2, v2, Landroidx/media3/common/AuxEffectInfo;->effectId:I

    invoke-interface {v0, v2}, Landroidx/media3/exoplayer/audio/AudioOutput;->attachAuxEffect(I)V

    .line 859
    iget-object v0, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->audioOutput:Landroidx/media3/exoplayer/audio/AudioOutput;

    iget-object v2, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->auxEffectInfo:Landroidx/media3/common/AuxEffectInfo;

    iget v2, v2, Landroidx/media3/common/AuxEffectInfo;->sendLevel:F

    invoke-interface {v0, v2}, Landroidx/media3/exoplayer/audio/AudioOutput;->setAuxEffectSendLevel(F)V

    .line 861
    :cond_4
    iget-object v0, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->preferredDevice:Landroid/media/AudioDeviceInfo;

    if-eqz v0, :cond_5

    .line 862
    iget-object v0, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->audioOutput:Landroidx/media3/exoplayer/audio/AudioOutput;

    iget-object v2, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->preferredDevice:Landroid/media/AudioDeviceInfo;

    invoke-interface {v0, v2}, Landroidx/media3/exoplayer/audio/AudioOutput;->setPreferredDevice(Landroid/media/AudioDeviceInfo;)V

    .line 864
    :cond_5
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->startMediaTimeUsNeedsInit:Z

    .line 866
    iget-object v2, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->audioOutput:Landroidx/media3/exoplayer/audio/AudioOutput;

    invoke-interface {v2}, Landroidx/media3/exoplayer/audio/AudioOutput;->getAudioSessionId()I

    move-result v2

    .line 867
    .local v2, "newAudioSessionId":I
    iget v3, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->audioSessionId:I

    if-eq v2, v3, :cond_6

    move v1, v0

    .line 868
    .local v1, "audioSessionIdChanged":Z
    :cond_6
    iput v2, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->audioSessionId:I

    .line 870
    iget-object v3, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->listener:Landroidx/media3/exoplayer/audio/AudioSink$Listener;

    if-eqz v3, :cond_8

    .line 871
    iget-object v3, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->listener:Landroidx/media3/exoplayer/audio/AudioSink$Listener;

    iget-object v4, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->configuration:Landroidx/media3/exoplayer/audio/DefaultAudioSink$Configuration;

    invoke-static {v4}, Landroidx/media3/exoplayer/audio/DefaultAudioSink$Configuration;->access$1400(Landroidx/media3/exoplayer/audio/DefaultAudioSink$Configuration;)Landroidx/media3/exoplayer/audio/AudioSink$AudioTrackConfig;

    move-result-object v4

    invoke-interface {v3, v4}, Landroidx/media3/exoplayer/audio/AudioSink$Listener;->onAudioTrackInitialized(Landroidx/media3/exoplayer/audio/AudioSink$AudioTrackConfig;)V

    .line 872
    if-eqz v1, :cond_8

    .line 873
    iput-boolean v0, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->pendingAudioSessionIdChangeConfirmation:Z

    .line 874
    iget-object v3, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->configuration:Landroidx/media3/exoplayer/audio/DefaultAudioSink$Configuration;

    iget-object v4, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->configuration:Landroidx/media3/exoplayer/audio/DefaultAudioSink$Configuration;

    .line 876
    invoke-static {v4}, Landroidx/media3/exoplayer/audio/DefaultAudioSink$Configuration;->access$1100(Landroidx/media3/exoplayer/audio/DefaultAudioSink$Configuration;)Landroidx/media3/exoplayer/audio/AudioOutputProvider$OutputConfig;

    move-result-object v4

    invoke-virtual {v4}, Landroidx/media3/exoplayer/audio/AudioOutputProvider$OutputConfig;->buildUpon()Landroidx/media3/exoplayer/audio/AudioOutputProvider$OutputConfig$Builder;

    move-result-object v4

    iget v5, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->audioSessionId:I

    invoke-virtual {v4, v5}, Landroidx/media3/exoplayer/audio/AudioOutputProvider$OutputConfig$Builder;->setAudioSessionId(I)Landroidx/media3/exoplayer/audio/AudioOutputProvider$OutputConfig$Builder;

    move-result-object v4

    invoke-virtual {v4}, Landroidx/media3/exoplayer/audio/AudioOutputProvider$OutputConfig$Builder;->build()Landroidx/media3/exoplayer/audio/AudioOutputProvider$OutputConfig;

    move-result-object v4

    .line 875
    invoke-static {v3, v4}, Landroidx/media3/exoplayer/audio/DefaultAudioSink$Configuration;->access$1500(Landroidx/media3/exoplayer/audio/DefaultAudioSink$Configuration;Landroidx/media3/exoplayer/audio/AudioOutputProvider$OutputConfig;)Landroidx/media3/exoplayer/audio/DefaultAudioSink$Configuration;

    move-result-object v3

    iput-object v3, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->configuration:Landroidx/media3/exoplayer/audio/DefaultAudioSink$Configuration;

    .line 877
    iget-object v3, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->pendingConfiguration:Landroidx/media3/exoplayer/audio/DefaultAudioSink$Configuration;

    if-eqz v3, :cond_7

    .line 878
    iget-object v3, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->pendingConfiguration:Landroidx/media3/exoplayer/audio/DefaultAudioSink$Configuration;

    iget-object v4, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->pendingConfiguration:Landroidx/media3/exoplayer/audio/DefaultAudioSink$Configuration;

    .line 881
    invoke-static {v4}, Landroidx/media3/exoplayer/audio/DefaultAudioSink$Configuration;->access$1100(Landroidx/media3/exoplayer/audio/DefaultAudioSink$Configuration;)Landroidx/media3/exoplayer/audio/AudioOutputProvider$OutputConfig;

    move-result-object v4

    .line 882
    invoke-virtual {v4}, Landroidx/media3/exoplayer/audio/AudioOutputProvider$OutputConfig;->buildUpon()Landroidx/media3/exoplayer/audio/AudioOutputProvider$OutputConfig$Builder;

    move-result-object v4

    iget v5, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->audioSessionId:I

    .line 883
    invoke-virtual {v4, v5}, Landroidx/media3/exoplayer/audio/AudioOutputProvider$OutputConfig$Builder;->setAudioSessionId(I)Landroidx/media3/exoplayer/audio/AudioOutputProvider$OutputConfig$Builder;

    move-result-object v4

    .line 884
    invoke-virtual {v4}, Landroidx/media3/exoplayer/audio/AudioOutputProvider$OutputConfig$Builder;->build()Landroidx/media3/exoplayer/audio/AudioOutputProvider$OutputConfig;

    move-result-object v4

    .line 879
    invoke-static {v3, v4}, Landroidx/media3/exoplayer/audio/DefaultAudioSink$Configuration;->access$1500(Landroidx/media3/exoplayer/audio/DefaultAudioSink$Configuration;Landroidx/media3/exoplayer/audio/AudioOutputProvider$OutputConfig;)Landroidx/media3/exoplayer/audio/DefaultAudioSink$Configuration;

    move-result-object v3

    iput-object v3, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->pendingConfiguration:Landroidx/media3/exoplayer/audio/DefaultAudioSink$Configuration;

    .line 886
    :cond_7
    iget-object v3, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->listener:Landroidx/media3/exoplayer/audio/AudioSink$Listener;

    iget v4, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->audioSessionId:I

    invoke-interface {v3, v4}, Landroidx/media3/exoplayer/audio/AudioSink$Listener;->onAudioSessionIdChanged(I)V

    .line 890
    :cond_8
    return v0
.end method

.method private isAudioOutputInitialized()Z
    .locals 1

    .line 1746
    iget-object v0, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->audioOutput:Landroidx/media3/exoplayer/audio/AudioOutput;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private maybeAddAudioOutputProviderListener()V
    .locals 2

    .line 1762
    iget-object v0, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->audioOutputProviderListener:Landroidx/media3/exoplayer/audio/AudioOutputProvider$Listener;

    if-nez v0, :cond_0

    iget-object v0, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->context:Landroid/content/Context;

    if-eqz v0, :cond_0

    .line 1765
    new-instance v0, Landroidx/media3/exoplayer/audio/DefaultAudioSink$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Landroidx/media3/exoplayer/audio/DefaultAudioSink$$ExternalSyntheticLambda0;-><init>(Landroidx/media3/exoplayer/audio/DefaultAudioSink;)V

    iput-object v0, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->audioOutputProviderListener:Landroidx/media3/exoplayer/audio/AudioOutputProvider$Listener;

    .line 1771
    iget-object v0, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->audioOutputProvider:Landroidx/media3/exoplayer/audio/AudioOutputProvider;

    iget-object v1, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->audioOutputProviderListener:Landroidx/media3/exoplayer/audio/AudioOutputProvider$Listener;

    invoke-interface {v0, v1}, Landroidx/media3/exoplayer/audio/AudioOutputProvider;->addListener(Landroidx/media3/exoplayer/audio/AudioOutputProvider$Listener;)V

    .line 1773
    :cond_0
    return-void
.end method

.method private maybeDisableOffload()V
    .locals 1

    .line 1286
    iget-object v0, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->configuration:Landroidx/media3/exoplayer/audio/DefaultAudioSink$Configuration;

    invoke-static {v0}, Landroidx/media3/exoplayer/audio/DefaultAudioSink$Configuration;->access$1100(Landroidx/media3/exoplayer/audio/DefaultAudioSink$Configuration;)Landroidx/media3/exoplayer/audio/AudioOutputProvider$OutputConfig;

    move-result-object v0

    iget-boolean v0, v0, Landroidx/media3/exoplayer/audio/AudioOutputProvider$OutputConfig;->isOffload:Z

    if-nez v0, :cond_0

    .line 1287
    return-void

    .line 1292
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->offloadDisabledUntilNextConfiguration:Z

    .line 1293
    return-void
.end method

.method private maybeRampUpVolume(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;
    .locals 8
    .param p1, "buffer"    # Ljava/nio/ByteBuffer;

    .line 1860
    iget-object v0, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->configuration:Landroidx/media3/exoplayer/audio/DefaultAudioSink$Configuration;

    invoke-static {v0}, Landroidx/media3/exoplayer/audio/DefaultAudioSink$Configuration;->access$1700(Landroidx/media3/exoplayer/audio/DefaultAudioSink$Configuration;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1861
    return-object p1

    .line 1863
    :cond_0
    const-wide/16 v0, 0x14

    invoke-static {v0, v1}, Landroidx/media3/common/util/Util;->msToUs(J)J

    move-result-wide v0

    .line 1864
    .local v0, "rampDurationUs":J
    iget-object v2, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->configuration:Landroidx/media3/exoplayer/audio/DefaultAudioSink$Configuration;

    .line 1865
    invoke-static {v2}, Landroidx/media3/exoplayer/audio/DefaultAudioSink$Configuration;->access$1100(Landroidx/media3/exoplayer/audio/DefaultAudioSink$Configuration;)Landroidx/media3/exoplayer/audio/AudioOutputProvider$OutputConfig;

    move-result-object v2

    iget v2, v2, Landroidx/media3/exoplayer/audio/AudioOutputProvider$OutputConfig;->sampleRate:I

    invoke-static {v0, v1, v2}, Landroidx/media3/common/util/Util;->durationUsToSampleCount(JI)J

    move-result-wide v2

    long-to-int v2, v2

    .line 1866
    .local v2, "rampFrameCount":I
    invoke-direct {p0}, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->getWrittenFrames()J

    move-result-wide v3

    .line 1867
    .local v3, "writtenFrames":J
    int-to-long v5, v2

    cmp-long v5, v3, v5

    if-ltz v5, :cond_1

    .line 1868
    return-object p1

    .line 1870
    :cond_1
    iget-object v5, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->configuration:Landroidx/media3/exoplayer/audio/DefaultAudioSink$Configuration;

    .line 1872
    invoke-static {v5}, Landroidx/media3/exoplayer/audio/DefaultAudioSink$Configuration;->access$1100(Landroidx/media3/exoplayer/audio/DefaultAudioSink$Configuration;)Landroidx/media3/exoplayer/audio/AudioOutputProvider$OutputConfig;

    move-result-object v5

    iget v5, v5, Landroidx/media3/exoplayer/audio/AudioOutputProvider$OutputConfig;->encoding:I

    iget-object v6, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->configuration:Landroidx/media3/exoplayer/audio/DefaultAudioSink$Configuration;

    .line 1873
    invoke-static {v6}, Landroidx/media3/exoplayer/audio/DefaultAudioSink$Configuration;->access$1900(Landroidx/media3/exoplayer/audio/DefaultAudioSink$Configuration;)I

    move-result v6

    long-to-int v7, v3

    .line 1870
    invoke-static {p1, v5, v6, v7, v2}, Landroidx/media3/exoplayer/audio/PcmAudioUtil;->rampUpVolume(Ljava/nio/ByteBuffer;IIII)Ljava/nio/ByteBuffer;

    move-result-object v5

    return-object v5
.end method

.method private maybeReportSkippedSilence()V
    .locals 4

    .line 2136
    iget-wide v0, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->accumulatedSkippedSilenceDurationUs:J

    const-wide/32 v2, 0x493e0

    cmp-long v0, v0, v2

    if-ltz v0, :cond_0

    .line 2138
    iget-object v0, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->listener:Landroidx/media3/exoplayer/audio/AudioSink$Listener;

    invoke-interface {v0}, Landroidx/media3/exoplayer/audio/AudioSink$Listener;->onSilenceSkipped()V

    .line 2139
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->accumulatedSkippedSilenceDurationUs:J

    .line 2141
    :cond_0
    return-void
.end method

.method private playPendingData()V
    .locals 1

    .line 1848
    iget-boolean v0, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->stoppedAudioOutput:Z

    if-nez v0, :cond_1

    .line 1849
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->stoppedAudioOutput:Z

    .line 1850
    iget-object v0, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->audioOutput:Landroidx/media3/exoplayer/audio/AudioOutput;

    invoke-interface {v0}, Landroidx/media3/exoplayer/audio/AudioOutput;->isOffloadedPlayback()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1853
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->handledOffloadOnPresentationEnded:Z

    .line 1855
    :cond_0
    iget-object v0, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->audioOutput:Landroidx/media3/exoplayer/audio/AudioOutput;

    invoke-interface {v0}, Landroidx/media3/exoplayer/audio/AudioOutput;->stop()V

    .line 1857
    :cond_1
    return-void
.end method

.method private processBuffers(J)V
    .locals 3
    .param p1, "avSyncPresentationTimeUs"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media3/exoplayer/audio/AudioSink$WriteException;
        }
    .end annotation

    .line 1131
    invoke-direct {p0, p1, p2}, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->drainOutputBuffer(J)V

    .line 1132
    iget-object v0, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->outputBuffer:Ljava/nio/ByteBuffer;

    if-eqz v0, :cond_0

    .line 1134
    return-void

    .line 1138
    :cond_0
    iget-object v0, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->audioProcessingPipeline:Landroidx/media3/common/audio/AudioProcessingPipeline;

    invoke-virtual {v0}, Landroidx/media3/common/audio/AudioProcessingPipeline;->isOperational()Z

    move-result v0

    if-nez v0, :cond_2

    .line 1139
    iget-object v0, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->inputBuffer:Ljava/nio/ByteBuffer;

    if-eqz v0, :cond_1

    .line 1140
    iget-object v0, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->inputBuffer:Ljava/nio/ByteBuffer;

    invoke-direct {p0, v0}, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->setOutputBuffer(Ljava/nio/ByteBuffer;)V

    .line 1141
    invoke-direct {p0, p1, p2}, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->drainOutputBuffer(J)V

    .line 1143
    :cond_1
    return-void

    .line 1146
    :cond_2
    :goto_0
    iget-object v0, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->audioProcessingPipeline:Landroidx/media3/common/audio/AudioProcessingPipeline;

    invoke-virtual {v0}, Landroidx/media3/common/audio/AudioProcessingPipeline;->isEnded()Z

    move-result v0

    if-nez v0, :cond_7

    .line 1148
    :cond_3
    iget-object v0, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->audioProcessingPipeline:Landroidx/media3/common/audio/AudioProcessingPipeline;

    invoke-virtual {v0}, Landroidx/media3/common/audio/AudioProcessingPipeline;->getOutput()Ljava/nio/ByteBuffer;

    move-result-object v0

    move-object v1, v0

    .local v1, "bufferToWrite":Ljava/nio/ByteBuffer;
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1149
    invoke-direct {p0, v1}, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->setOutputBuffer(Ljava/nio/ByteBuffer;)V

    .line 1150
    invoke-direct {p0, p1, p2}, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->drainOutputBuffer(J)V

    .line 1151
    iget-object v0, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->outputBuffer:Ljava/nio/ByteBuffer;

    if-eqz v0, :cond_3

    .line 1153
    return-void

    .line 1156
    :cond_4
    iget-object v0, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->inputBuffer:Ljava/nio/ByteBuffer;

    if-eqz v0, :cond_6

    iget-object v0, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->inputBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v0

    if-nez v0, :cond_5

    goto :goto_1

    .line 1159
    :cond_5
    iget-object v0, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->audioProcessingPipeline:Landroidx/media3/common/audio/AudioProcessingPipeline;

    iget-object v2, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->inputBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, v2}, Landroidx/media3/common/audio/AudioProcessingPipeline;->queueInput(Ljava/nio/ByteBuffer;)V

    .line 1160
    .end local v1    # "bufferToWrite":Ljava/nio/ByteBuffer;
    goto :goto_0

    .line 1157
    .restart local v1    # "bufferToWrite":Ljava/nio/ByteBuffer;
    :cond_6
    :goto_1
    return-void

    .line 1161
    .end local v1    # "bufferToWrite":Ljava/nio/ByteBuffer;
    :cond_7
    return-void
.end method

.method private reconfigureAndFlush()V
    .locals 9

    .line 1554
    iget-object v0, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->configuration:Landroidx/media3/exoplayer/audio/DefaultAudioSink$Configuration;

    if-eqz v0, :cond_1

    .line 1555
    iget-object v0, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->pendingConfiguration:Landroidx/media3/exoplayer/audio/DefaultAudioSink$Configuration;

    if-eqz v0, :cond_0

    .line 1556
    iget-object v0, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->pendingConfiguration:Landroidx/media3/exoplayer/audio/DefaultAudioSink$Configuration;

    iput-object v0, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->configuration:Landroidx/media3/exoplayer/audio/DefaultAudioSink$Configuration;

    .line 1557
    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->pendingConfiguration:Landroidx/media3/exoplayer/audio/DefaultAudioSink$Configuration;

    .line 1561
    :cond_0
    :try_start_0
    iget-object v0, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->audioOutputProvider:Landroidx/media3/exoplayer/audio/AudioOutputProvider;

    iget-object v1, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->configuration:Landroidx/media3/exoplayer/audio/DefaultAudioSink$Configuration;

    .line 1563
    invoke-static {v1}, Landroidx/media3/exoplayer/audio/DefaultAudioSink$Configuration;->access$1600(Landroidx/media3/exoplayer/audio/DefaultAudioSink$Configuration;)Landroidx/media3/common/Format;

    move-result-object v1

    invoke-direct {p0, v1}, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->getFormatConfig(Landroidx/media3/common/Format;)Landroidx/media3/exoplayer/audio/AudioOutputProvider$FormatConfig;

    move-result-object v1

    .line 1562
    invoke-interface {v0, v1}, Landroidx/media3/exoplayer/audio/AudioOutputProvider;->getOutputConfig(Landroidx/media3/exoplayer/audio/AudioOutputProvider$FormatConfig;)Landroidx/media3/exoplayer/audio/AudioOutputProvider$OutputConfig;

    move-result-object v0
    :try_end_0
    .catch Landroidx/media3/exoplayer/audio/AudioOutputProvider$ConfigurationException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v6, v0

    .line 1567
    .local v6, "outputConfig":Landroidx/media3/exoplayer/audio/AudioOutputProvider$OutputConfig;
    nop

    .line 1568
    new-instance v1, Landroidx/media3/exoplayer/audio/DefaultAudioSink$Configuration;

    iget-object v0, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->configuration:Landroidx/media3/exoplayer/audio/DefaultAudioSink$Configuration;

    .line 1570
    invoke-static {v0}, Landroidx/media3/exoplayer/audio/DefaultAudioSink$Configuration;->access$1300(Landroidx/media3/exoplayer/audio/DefaultAudioSink$Configuration;)Landroidx/media3/common/Format;

    move-result-object v2

    iget-object v0, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->configuration:Landroidx/media3/exoplayer/audio/DefaultAudioSink$Configuration;

    .line 1571
    invoke-static {v0}, Landroidx/media3/exoplayer/audio/DefaultAudioSink$Configuration;->access$1600(Landroidx/media3/exoplayer/audio/DefaultAudioSink$Configuration;)Landroidx/media3/common/Format;

    move-result-object v3

    iget-object v0, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->configuration:Landroidx/media3/exoplayer/audio/DefaultAudioSink$Configuration;

    .line 1572
    invoke-static {v0}, Landroidx/media3/exoplayer/audio/DefaultAudioSink$Configuration;->access$2000(Landroidx/media3/exoplayer/audio/DefaultAudioSink$Configuration;)I

    move-result v4

    iget-object v0, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->configuration:Landroidx/media3/exoplayer/audio/DefaultAudioSink$Configuration;

    .line 1573
    invoke-static {v0}, Landroidx/media3/exoplayer/audio/DefaultAudioSink$Configuration;->access$1900(Landroidx/media3/exoplayer/audio/DefaultAudioSink$Configuration;)I

    move-result v5

    iget-object v0, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->configuration:Landroidx/media3/exoplayer/audio/DefaultAudioSink$Configuration;

    .line 1575
    invoke-static {v0}, Landroidx/media3/exoplayer/audio/DefaultAudioSink$Configuration;->access$1000(Landroidx/media3/exoplayer/audio/DefaultAudioSink$Configuration;)Landroidx/media3/common/audio/AudioProcessingPipeline;

    move-result-object v7

    const/4 v8, 0x0

    invoke-direct/range {v1 .. v8}, Landroidx/media3/exoplayer/audio/DefaultAudioSink$Configuration;-><init>(Landroidx/media3/common/Format;Landroidx/media3/common/Format;IILandroidx/media3/exoplayer/audio/AudioOutputProvider$OutputConfig;Landroidx/media3/common/audio/AudioProcessingPipeline;Landroidx/media3/exoplayer/audio/DefaultAudioSink$1;)V

    iput-object v1, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->configuration:Landroidx/media3/exoplayer/audio/DefaultAudioSink$Configuration;

    goto :goto_0

    .line 1564
    .end local v6    # "outputConfig":Landroidx/media3/exoplayer/audio/AudioOutputProvider$OutputConfig;
    :catch_0
    move-exception v0

    .line 1566
    .local v0, "e":Landroidx/media3/exoplayer/audio/AudioOutputProvider$ConfigurationException;
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Landroidx/media3/exoplayer/audio/AudioSink$ConfigurationException;

    iget-object v3, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->configuration:Landroidx/media3/exoplayer/audio/DefaultAudioSink$Configuration;

    invoke-static {v3}, Landroidx/media3/exoplayer/audio/DefaultAudioSink$Configuration;->access$1300(Landroidx/media3/exoplayer/audio/DefaultAudioSink$Configuration;)Landroidx/media3/common/Format;

    move-result-object v3

    invoke-direct {v2, v0, v3}, Landroidx/media3/exoplayer/audio/AudioSink$ConfigurationException;-><init>(Ljava/lang/Throwable;Landroidx/media3/common/Format;)V

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 1577
    .end local v0    # "e":Landroidx/media3/exoplayer/audio/AudioOutputProvider$ConfigurationException;
    :cond_1
    :goto_0
    invoke-virtual {p0}, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->flush()V

    .line 1578
    return-void
.end method

.method private resetSinkStateForFlush()V
    .locals 10

    .line 1581
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->submittedPcmBytes:J

    .line 1582
    iput-wide v0, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->submittedEncodedFrames:J

    .line 1583
    iput-wide v0, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->writtenPcmBytes:J

    .line 1584
    iput-wide v0, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->writtenEncodedFrames:J

    .line 1585
    const/4 v2, 0x0

    iput-boolean v2, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->isWaitingForOffloadEndOfStreamHandled:Z

    .line 1586
    iput v2, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->framesPerEncodedSample:I

    .line 1587
    new-instance v3, Landroidx/media3/exoplayer/audio/DefaultAudioSink$MediaPositionParameters;

    iget-object v4, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->playbackParameters:Landroidx/media3/common/PlaybackParameters;

    const-wide/16 v7, 0x0

    const/4 v9, 0x0

    const-wide/16 v5, 0x0

    invoke-direct/range {v3 .. v9}, Landroidx/media3/exoplayer/audio/DefaultAudioSink$MediaPositionParameters;-><init>(Landroidx/media3/common/PlaybackParameters;JJLandroidx/media3/exoplayer/audio/DefaultAudioSink$1;)V

    iput-object v3, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->mediaPositionParameters:Landroidx/media3/exoplayer/audio/DefaultAudioSink$MediaPositionParameters;

    .line 1590
    iput-wide v0, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->startMediaTimeUs:J

    .line 1591
    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->afterDrainParameters:Landroidx/media3/exoplayer/audio/DefaultAudioSink$MediaPositionParameters;

    .line 1592
    iget-object v1, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->mediaPositionParametersCheckpoints:Ljava/util/ArrayDeque;

    invoke-virtual {v1}, Ljava/util/ArrayDeque;->clear()V

    .line 1593
    iput-object v0, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->inputBuffer:Ljava/nio/ByteBuffer;

    .line 1594
    iput v2, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->inputBufferAccessUnitCount:I

    .line 1595
    iput-object v0, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->outputBuffer:Ljava/nio/ByteBuffer;

    .line 1596
    iput-boolean v2, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->stoppedAudioOutput:Z

    .line 1597
    iput-boolean v2, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->handledEndOfStream:Z

    .line 1598
    iput-boolean v2, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->handledOffloadOnPresentationEnded:Z

    .line 1599
    iget-object v0, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->trimmingAudioProcessor:Landroidx/media3/exoplayer/audio/TrimmingAudioProcessor;

    invoke-virtual {v0}, Landroidx/media3/exoplayer/audio/TrimmingAudioProcessor;->resetTrimmedFrameCount()V

    .line 1600
    invoke-direct {p0}, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->setupAudioProcessors()V

    .line 1601
    return-void
.end method

.method private static resolveDefaultVirtualDeviceIds(I)I
    .locals 1
    .param p0, "deviceId"    # I

    .line 1895
    const/4 v0, -0x1

    if-eqz p0, :cond_0

    if-eq p0, v0, :cond_0

    .line 1896
    move v0, p0

    goto :goto_0

    .line 1897
    :cond_0
    nop

    .line 1895
    :goto_0
    return v0
.end method

.method private setAudioOutputPlaybackParameters()V
    .locals 2

    .line 1604
    invoke-direct {p0}, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->isAudioOutputInitialized()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1605
    iget-object v0, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->audioOutput:Landroidx/media3/exoplayer/audio/AudioOutput;

    iget-object v1, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->playbackParameters:Landroidx/media3/common/PlaybackParameters;

    invoke-interface {v0, v1}, Landroidx/media3/exoplayer/audio/AudioOutput;->setPlaybackParameters(Landroidx/media3/common/PlaybackParameters;)V

    .line 1607
    iget-object v0, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->audioOutput:Landroidx/media3/exoplayer/audio/AudioOutput;

    invoke-interface {v0}, Landroidx/media3/exoplayer/audio/AudioOutput;->getPlaybackParameters()Landroidx/media3/common/PlaybackParameters;

    move-result-object v0

    iput-object v0, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->playbackParameters:Landroidx/media3/common/PlaybackParameters;

    .line 1609
    :cond_0
    return-void
.end method

.method private setAudioProcessorPlaybackParameters(Landroidx/media3/common/PlaybackParameters;)V
    .locals 7
    .param p1, "playbackParameters"    # Landroidx/media3/common/PlaybackParameters;

    .line 1612
    new-instance v0, Landroidx/media3/exoplayer/audio/DefaultAudioSink$MediaPositionParameters;

    const-wide v4, -0x7fffffffffffffffL    # -4.9E-324

    const/4 v6, 0x0

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    move-object v1, p1

    .end local p1    # "playbackParameters":Landroidx/media3/common/PlaybackParameters;
    .local v1, "playbackParameters":Landroidx/media3/common/PlaybackParameters;
    invoke-direct/range {v0 .. v6}, Landroidx/media3/exoplayer/audio/DefaultAudioSink$MediaPositionParameters;-><init>(Landroidx/media3/common/PlaybackParameters;JJLandroidx/media3/exoplayer/audio/DefaultAudioSink$1;)V

    .line 1617
    .local v0, "mediaPositionParameters":Landroidx/media3/exoplayer/audio/DefaultAudioSink$MediaPositionParameters;
    invoke-direct {p0}, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->isAudioOutputInitialized()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 1620
    iput-object v0, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->afterDrainParameters:Landroidx/media3/exoplayer/audio/DefaultAudioSink$MediaPositionParameters;

    goto :goto_0

    .line 1624
    :cond_0
    iput-object v0, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->mediaPositionParameters:Landroidx/media3/exoplayer/audio/DefaultAudioSink$MediaPositionParameters;

    .line 1626
    :goto_0
    return-void
.end method

.method private setOutputBuffer(Ljava/nio/ByteBuffer;)V
    .locals 1
    .param p1, "buffer"    # Ljava/nio/ByteBuffer;

    .line 1189
    iget-object v0, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->outputBuffer:Ljava/nio/ByteBuffer;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkState(Z)V

    .line 1190
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1191
    return-void

    .line 1193
    :cond_1
    invoke-direct {p0, p1}, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->maybeRampUpVolume(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->outputBuffer:Ljava/nio/ByteBuffer;

    .line 1194
    return-void
.end method

.method private setVolumeInternal()V
    .locals 2

    .line 1492
    invoke-direct {p0}, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->isAudioOutputInitialized()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1493
    iget-object v0, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->audioOutput:Landroidx/media3/exoplayer/audio/AudioOutput;

    iget v1, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->volume:F

    invoke-interface {v0, v1}, Landroidx/media3/exoplayer/audio/AudioOutput;->setVolume(F)V

    .line 1495
    :cond_0
    return-void
.end method

.method private setupAudioProcessors()V
    .locals 1

    .line 831
    iget-object v0, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->configuration:Landroidx/media3/exoplayer/audio/DefaultAudioSink$Configuration;

    invoke-static {v0}, Landroidx/media3/exoplayer/audio/DefaultAudioSink$Configuration;->access$1000(Landroidx/media3/exoplayer/audio/DefaultAudioSink$Configuration;)Landroidx/media3/common/audio/AudioProcessingPipeline;

    move-result-object v0

    iput-object v0, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->audioProcessingPipeline:Landroidx/media3/common/audio/AudioProcessingPipeline;

    .line 832
    iget-object v0, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->audioProcessingPipeline:Landroidx/media3/common/audio/AudioProcessingPipeline;

    invoke-virtual {v0}, Landroidx/media3/common/audio/AudioProcessingPipeline;->flush()V

    .line 833
    return-void
.end method

.method private shouldApplyAudioProcessorPlaybackParameters()Z
    .locals 1

    .line 1666
    iget-boolean v0, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->tunneling:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->configuration:Landroidx/media3/exoplayer/audio/DefaultAudioSink$Configuration;

    .line 1667
    invoke-static {v0}, Landroidx/media3/exoplayer/audio/DefaultAudioSink$Configuration;->access$1700(Landroidx/media3/exoplayer/audio/DefaultAudioSink$Configuration;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->configuration:Landroidx/media3/exoplayer/audio/DefaultAudioSink$Configuration;

    .line 1668
    invoke-static {v0}, Landroidx/media3/exoplayer/audio/DefaultAudioSink$Configuration;->access$1300(Landroidx/media3/exoplayer/audio/DefaultAudioSink$Configuration;)Landroidx/media3/common/Format;

    move-result-object v0

    iget v0, v0, Landroidx/media3/common/Format;->pcmEncoding:I

    invoke-direct {p0, v0}, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->shouldUseFloatOutput(I)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 1666
    :goto_0
    return v0
.end method

.method private shouldUseFloatOutput(I)Z
    .locals 1
    .param p1, "pcmEncoding"    # I

    .line 1680
    iget-boolean v0, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->enableFloatOutput:Z

    if-eqz v0, :cond_0

    invoke-static {p1}, Landroidx/media3/common/util/Util;->isEncodingHighResolutionPcm(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private useAudioOutputPlaybackParams()Z
    .locals 1

    .line 1672
    iget-object v0, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->configuration:Landroidx/media3/exoplayer/audio/DefaultAudioSink$Configuration;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->configuration:Landroidx/media3/exoplayer/audio/DefaultAudioSink$Configuration;

    invoke-static {v0}, Landroidx/media3/exoplayer/audio/DefaultAudioSink$Configuration;->access$1100(Landroidx/media3/exoplayer/audio/DefaultAudioSink$Configuration;)Landroidx/media3/exoplayer/audio/AudioOutputProvider$OutputConfig;

    move-result-object v0

    iget-boolean v0, v0, Landroidx/media3/exoplayer/audio/AudioOutputProvider$OutputConfig;->usePlaybackParameters:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method


# virtual methods
.method public configure(Landroidx/media3/common/Format;I[I)V
    .locals 13
    .param p1, "inputFormat"    # Landroidx/media3/common/Format;
    .param p2, "specifiedBufferSize"    # I
    .param p3, "outputChannels"    # [I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media3/exoplayer/audio/AudioSink$ConfigurationException;
        }
    .end annotation

    .line 743
    invoke-direct {p0}, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->maybeAddAudioOutputProviderListener()V

    .line 745
    const-string v0, "audio/raw"

    iget-object v1, p1, Landroidx/media3/common/Format;->sampleMimeType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 746
    iget v0, p1, Landroidx/media3/common/Format;->pcmEncoding:I

    invoke-static {v0}, Landroidx/media3/common/util/Util;->isEncodingLinearPcm(I)Z

    move-result v0

    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    .line 748
    iget v0, p1, Landroidx/media3/common/Format;->pcmEncoding:I

    iget v1, p1, Landroidx/media3/common/Format;->channelCount:I

    invoke-static {v0, v1}, Landroidx/media3/common/util/Util;->getPcmFrameSize(II)I

    move-result v1

    .line 750
    .local v1, "inputPcmFrameSize":I
    new-instance v0, Lcom/google/common/collect/ImmutableList$Builder;

    invoke-direct {v0}, Lcom/google/common/collect/ImmutableList$Builder;-><init>()V

    move-object v3, v0

    .line 751
    .local v3, "pipelineProcessors":Lcom/google/common/collect/ImmutableList$Builder;, "Lcom/google/common/collect/ImmutableList$Builder<Landroidx/media3/common/audio/AudioProcessor;>;"
    iget-object v0, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->availableAudioProcessors:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v3, v0}, Lcom/google/common/collect/ImmutableList$Builder;->addAll(Ljava/lang/Iterable;)Lcom/google/common/collect/ImmutableList$Builder;

    .line 752
    iget v0, p1, Landroidx/media3/common/Format;->pcmEncoding:I

    invoke-direct {p0, v0}, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->shouldUseFloatOutput(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 753
    iget-object v0, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->toFloatPcmAudioProcessor:Landroidx/media3/exoplayer/audio/ToFloatPcmAudioProcessor;

    invoke-virtual {v3, v0}, Lcom/google/common/collect/ImmutableList$Builder;->add(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList$Builder;

    goto :goto_0

    .line 755
    :cond_0
    iget-object v0, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->toInt16PcmAudioProcessor:Landroidx/media3/common/audio/ToInt16PcmAudioProcessor;

    invoke-virtual {v3, v0}, Lcom/google/common/collect/ImmutableList$Builder;->add(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList$Builder;

    .line 756
    iget-object v0, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->audioProcessorChain:Landroidx/media3/common/audio/AudioProcessorChain;

    invoke-interface {v0}, Landroidx/media3/common/audio/AudioProcessorChain;->getAudioProcessors()[Landroidx/media3/common/audio/AudioProcessor;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/google/common/collect/ImmutableList$Builder;->add([Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList$Builder;

    .line 758
    :goto_0
    new-instance v0, Landroidx/media3/common/audio/AudioProcessingPipeline;

    invoke-virtual {v3}, Lcom/google/common/collect/ImmutableList$Builder;->build()Lcom/google/common/collect/ImmutableList;

    move-result-object v4

    invoke-direct {v0, v4}, Landroidx/media3/common/audio/AudioProcessingPipeline;-><init>(Lcom/google/common/collect/ImmutableList;)V

    .line 762
    .local v0, "audioProcessingPipeline":Landroidx/media3/common/audio/AudioProcessingPipeline;
    iget-object v4, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->audioProcessingPipeline:Landroidx/media3/common/audio/AudioProcessingPipeline;

    invoke-virtual {v0, v4}, Landroidx/media3/common/audio/AudioProcessingPipeline;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 763
    iget-object v0, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->audioProcessingPipeline:Landroidx/media3/common/audio/AudioProcessingPipeline;

    move-object v4, v0

    goto :goto_1

    .line 762
    :cond_1
    move-object v4, v0

    .line 766
    .end local v0    # "audioProcessingPipeline":Landroidx/media3/common/audio/AudioProcessingPipeline;
    .local v4, "audioProcessingPipeline":Landroidx/media3/common/audio/AudioProcessingPipeline;
    :goto_1
    iget-object v0, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->trimmingAudioProcessor:Landroidx/media3/exoplayer/audio/TrimmingAudioProcessor;

    iget v5, p1, Landroidx/media3/common/Format;->encoderDelay:I

    iget v6, p1, Landroidx/media3/common/Format;->encoderPadding:I

    invoke-virtual {v0, v5, v6}, Landroidx/media3/exoplayer/audio/TrimmingAudioProcessor;->setTrimFrameCount(II)V

    .line 769
    iget-object v0, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->channelMappingAudioProcessor:Landroidx/media3/exoplayer/audio/ChannelMappingAudioProcessor;

    move-object/from16 v9, p3

    invoke-virtual {v0, v9}, Landroidx/media3/exoplayer/audio/ChannelMappingAudioProcessor;->setChannelMap([I)V

    .line 771
    new-instance v0, Landroidx/media3/common/audio/AudioProcessor$AudioFormat;

    invoke-direct {v0, p1}, Landroidx/media3/common/audio/AudioProcessor$AudioFormat;-><init>(Landroidx/media3/common/Format;)V

    move-object v5, v0

    .line 773
    .local v5, "outputFormat":Landroidx/media3/common/audio/AudioProcessor$AudioFormat;
    :try_start_0
    invoke-virtual {v4, v5}, Landroidx/media3/common/audio/AudioProcessingPipeline;->configure(Landroidx/media3/common/audio/AudioProcessor$AudioFormat;)Landroidx/media3/common/audio/AudioProcessor$AudioFormat;

    move-result-object v0
    :try_end_0
    .catch Landroidx/media3/common/audio/AudioProcessor$UnhandledAudioFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 776
    .end local v5    # "outputFormat":Landroidx/media3/common/audio/AudioProcessor$AudioFormat;
    .local v0, "outputFormat":Landroidx/media3/common/audio/AudioProcessor$AudioFormat;
    nop

    .line 778
    nop

    .line 780
    invoke-virtual {p1}, Landroidx/media3/common/Format;->buildUpon()Landroidx/media3/common/Format$Builder;

    move-result-object v5

    iget v6, v0, Landroidx/media3/common/audio/AudioProcessor$AudioFormat;->encoding:I

    .line 781
    invoke-virtual {v5, v6}, Landroidx/media3/common/Format$Builder;->setPcmEncoding(I)Landroidx/media3/common/Format$Builder;

    move-result-object v5

    iget v6, v0, Landroidx/media3/common/audio/AudioProcessor$AudioFormat;->sampleRate:I

    .line 782
    invoke-virtual {v5, v6}, Landroidx/media3/common/Format$Builder;->setSampleRate(I)Landroidx/media3/common/Format$Builder;

    move-result-object v5

    iget v6, v0, Landroidx/media3/common/audio/AudioProcessor$AudioFormat;->channelCount:I

    .line 783
    invoke-virtual {v5, v6}, Landroidx/media3/common/Format$Builder;->setChannelCount(I)Landroidx/media3/common/Format$Builder;

    move-result-object v5

    .line 784
    invoke-virtual {v5}, Landroidx/media3/common/Format$Builder;->build()Landroidx/media3/common/Format;

    move-result-object v5

    .line 785
    .local v5, "afterProcessingFormat":Landroidx/media3/common/Format;
    iget v6, v0, Landroidx/media3/common/audio/AudioProcessor$AudioFormat;->encoding:I

    iget v7, v0, Landroidx/media3/common/audio/AudioProcessor$AudioFormat;->channelCount:I

    invoke-static {v6, v7}, Landroidx/media3/common/util/Util;->getPcmFrameSize(II)I

    move-result v0

    .line 786
    .end local v3    # "pipelineProcessors":Lcom/google/common/collect/ImmutableList$Builder;, "Lcom/google/common/collect/ImmutableList$Builder<Landroidx/media3/common/audio/AudioProcessor;>;"
    .local v0, "outputPcmFrameSize":I
    move-object v7, v4

    move-object v3, v5

    move v5, v0

    move v4, v1

    goto :goto_2

    .line 774
    .end local v0    # "outputPcmFrameSize":I
    .restart local v3    # "pipelineProcessors":Lcom/google/common/collect/ImmutableList$Builder;, "Lcom/google/common/collect/ImmutableList$Builder<Landroidx/media3/common/audio/AudioProcessor;>;"
    .local v5, "outputFormat":Landroidx/media3/common/audio/AudioProcessor$AudioFormat;
    :catch_0
    move-exception v0

    .line 775
    .local v0, "e":Landroidx/media3/common/audio/AudioProcessor$UnhandledAudioFormatException;
    new-instance v6, Landroidx/media3/exoplayer/audio/AudioSink$ConfigurationException;

    invoke-direct {v6, v0, p1}, Landroidx/media3/exoplayer/audio/AudioSink$ConfigurationException;-><init>(Ljava/lang/Throwable;Landroidx/media3/common/Format;)V

    throw v6

    .line 788
    .end local v0    # "e":Landroidx/media3/common/audio/AudioProcessor$UnhandledAudioFormatException;
    .end local v1    # "inputPcmFrameSize":I
    .end local v3    # "pipelineProcessors":Lcom/google/common/collect/ImmutableList$Builder;, "Lcom/google/common/collect/ImmutableList$Builder<Landroidx/media3/common/audio/AudioProcessor;>;"
    .end local v4    # "audioProcessingPipeline":Landroidx/media3/common/audio/AudioProcessingPipeline;
    .end local v5    # "outputFormat":Landroidx/media3/common/audio/AudioProcessor$AudioFormat;
    :cond_2
    move-object/from16 v9, p3

    new-instance v0, Landroidx/media3/common/audio/AudioProcessingPipeline;

    invoke-static {}, Lcom/google/common/collect/ImmutableList;->of()Lcom/google/common/collect/ImmutableList;

    move-result-object v1

    invoke-direct {v0, v1}, Landroidx/media3/common/audio/AudioProcessingPipeline;-><init>(Lcom/google/common/collect/ImmutableList;)V

    move-object v4, v0

    .line 789
    .restart local v4    # "audioProcessingPipeline":Landroidx/media3/common/audio/AudioProcessingPipeline;
    const/4 v1, -0x1

    .line 790
    .restart local v1    # "inputPcmFrameSize":I
    const/4 v0, -0x1

    .line 791
    .local v0, "outputPcmFrameSize":I
    move-object v5, p1

    move-object v7, v4

    move-object v3, v5

    move v5, v0

    move v4, v1

    .line 795
    .end local v0    # "outputPcmFrameSize":I
    .end local v1    # "inputPcmFrameSize":I
    .local v3, "afterProcessingFormat":Landroidx/media3/common/Format;
    .local v4, "inputPcmFrameSize":I
    .local v5, "outputPcmFrameSize":I
    .local v7, "audioProcessingPipeline":Landroidx/media3/common/audio/AudioProcessingPipeline;
    :goto_2
    if-eqz p2, :cond_3

    move v0, p2

    goto :goto_3

    :cond_3
    const/4 v0, -0x1

    :goto_3
    move v10, v0

    .line 796
    .local v10, "preferredBufferSize":I
    invoke-direct {p0, v3, v10}, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->getFormatConfig(Landroidx/media3/common/Format;I)Landroidx/media3/exoplayer/audio/AudioOutputProvider$FormatConfig;

    move-result-object v11

    .line 798
    .local v11, "formatConfig":Landroidx/media3/exoplayer/audio/AudioOutputProvider$FormatConfig;
    :try_start_1
    iget-object v0, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->audioOutputProvider:Landroidx/media3/exoplayer/audio/AudioOutputProvider;

    invoke-interface {v0, v11}, Landroidx/media3/exoplayer/audio/AudioOutputProvider;->getOutputConfig(Landroidx/media3/exoplayer/audio/AudioOutputProvider$FormatConfig;)Landroidx/media3/exoplayer/audio/AudioOutputProvider$OutputConfig;

    move-result-object v6
    :try_end_1
    .catch Landroidx/media3/exoplayer/audio/AudioOutputProvider$ConfigurationException; {:try_start_1 .. :try_end_1} :catch_1

    .line 801
    .local v6, "outputConfig":Landroidx/media3/exoplayer/audio/AudioOutputProvider$OutputConfig;
    nop

    .line 803
    iget v0, v6, Landroidx/media3/exoplayer/audio/AudioOutputProvider$OutputConfig;->encoding:I

    const-string v1, ")"

    if-eqz v0, :cond_6

    .line 808
    iget v0, v6, Landroidx/media3/exoplayer/audio/AudioOutputProvider$OutputConfig;->channelMask:I

    if-eqz v0, :cond_5

    .line 814
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->offloadDisabledUntilNextConfiguration:Z

    .line 815
    new-instance v1, Landroidx/media3/exoplayer/audio/DefaultAudioSink$Configuration;

    const/4 v8, 0x0

    move-object v2, p1

    invoke-direct/range {v1 .. v8}, Landroidx/media3/exoplayer/audio/DefaultAudioSink$Configuration;-><init>(Landroidx/media3/common/Format;Landroidx/media3/common/Format;IILandroidx/media3/exoplayer/audio/AudioOutputProvider$OutputConfig;Landroidx/media3/common/audio/AudioProcessingPipeline;Landroidx/media3/exoplayer/audio/DefaultAudioSink$1;)V

    .line 823
    .local v1, "pendingConfiguration":Landroidx/media3/exoplayer/audio/DefaultAudioSink$Configuration;
    invoke-direct {p0}, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->isAudioOutputInitialized()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 824
    iput-object v1, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->pendingConfiguration:Landroidx/media3/exoplayer/audio/DefaultAudioSink$Configuration;

    goto :goto_4

    .line 826
    :cond_4
    iput-object v1, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->configuration:Landroidx/media3/exoplayer/audio/DefaultAudioSink$Configuration;

    .line 828
    :goto_4
    return-void

    .line 809
    .end local v1    # "pendingConfiguration":Landroidx/media3/exoplayer/audio/DefaultAudioSink$Configuration;
    :cond_5
    new-instance v0, Landroidx/media3/exoplayer/audio/AudioSink$ConfigurationException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Invalid output channel config (isOffload="

    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-boolean v12, v6, Landroidx/media3/exoplayer/audio/AudioOutputProvider$OutputConfig;->isOffload:Z

    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v8, v11, Landroidx/media3/exoplayer/audio/AudioOutputProvider$FormatConfig;->format:Landroidx/media3/common/Format;

    invoke-direct {v0, v1, v8}, Landroidx/media3/exoplayer/audio/AudioSink$ConfigurationException;-><init>(Ljava/lang/String;Landroidx/media3/common/Format;)V

    throw v0

    .line 804
    :cond_6
    new-instance v0, Landroidx/media3/exoplayer/audio/AudioSink$ConfigurationException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Invalid output encoding (isOffload="

    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-boolean v12, v6, Landroidx/media3/exoplayer/audio/AudioOutputProvider$OutputConfig;->isOffload:Z

    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v8, v11, Landroidx/media3/exoplayer/audio/AudioOutputProvider$FormatConfig;->format:Landroidx/media3/common/Format;

    invoke-direct {v0, v1, v8}, Landroidx/media3/exoplayer/audio/AudioSink$ConfigurationException;-><init>(Ljava/lang/String;Landroidx/media3/common/Format;)V

    throw v0

    .line 799
    .end local v6    # "outputConfig":Landroidx/media3/exoplayer/audio/AudioOutputProvider$OutputConfig;
    :catch_1
    move-exception v0

    .line 800
    .local v0, "e":Landroidx/media3/exoplayer/audio/AudioOutputProvider$ConfigurationException;
    new-instance v1, Landroidx/media3/exoplayer/audio/AudioSink$ConfigurationException;

    invoke-direct {v1, v0, p1}, Landroidx/media3/exoplayer/audio/AudioSink$ConfigurationException;-><init>(Ljava/lang/Throwable;Landroidx/media3/common/Format;)V

    throw v1
.end method

.method public disableTunneling()V
    .locals 1

    .line 1446
    iget-boolean v0, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->tunneling:Z

    if-eqz v0, :cond_0

    .line 1447
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->tunneling:Z

    .line 1448
    invoke-direct {p0}, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->reconfigureAndFlush()V

    .line 1450
    :cond_0
    return-void
.end method

.method public enableTunnelingV21()V
    .locals 1

    .line 1437
    iget-boolean v0, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->externalAudioSessionIdProvided:Z

    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkState(Z)V

    .line 1438
    iget-boolean v0, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->tunneling:Z

    if-nez v0, :cond_0

    .line 1439
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->tunneling:Z

    .line 1440
    invoke-direct {p0}, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->reconfigureAndFlush()V

    .line 1442
    :cond_0
    return-void
.end method

.method public flush()V
    .locals 4

    .line 1507
    invoke-direct {p0}, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->isAudioOutputInitialized()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 1508
    invoke-direct {p0}, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->resetSinkStateForFlush()V

    .line 1509
    iput-object v1, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->audioOutputListener:Landroidx/media3/exoplayer/audio/DefaultAudioSink$AudioOutputListener;

    .line 1510
    iget-object v0, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->pendingConfiguration:Landroidx/media3/exoplayer/audio/DefaultAudioSink$Configuration;

    if-eqz v0, :cond_0

    .line 1511
    iget-object v0, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->pendingConfiguration:Landroidx/media3/exoplayer/audio/DefaultAudioSink$Configuration;

    iput-object v0, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->configuration:Landroidx/media3/exoplayer/audio/DefaultAudioSink$Configuration;

    .line 1512
    iput-object v1, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->pendingConfiguration:Landroidx/media3/exoplayer/audio/DefaultAudioSink$Configuration;

    .line 1517
    :cond_0
    sget-object v0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->pendingReleaseCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    .line 1518
    iget-object v0, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->audioOutput:Landroidx/media3/exoplayer/audio/AudioOutput;

    invoke-interface {v0}, Landroidx/media3/exoplayer/audio/AudioOutput;->release()V

    .line 1519
    iput-object v1, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->audioOutput:Landroidx/media3/exoplayer/audio/AudioOutput;

    .line 1521
    :cond_1
    iget-object v0, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->writeExceptionPendingExceptionHolder:Landroidx/media3/exoplayer/audio/DefaultAudioSink$PendingExceptionHolder;

    invoke-virtual {v0}, Landroidx/media3/exoplayer/audio/DefaultAudioSink$PendingExceptionHolder;->clear()V

    .line 1522
    iget-object v0, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->initializationExceptionPendingExceptionHolder:Landroidx/media3/exoplayer/audio/DefaultAudioSink$PendingExceptionHolder;

    invoke-virtual {v0}, Landroidx/media3/exoplayer/audio/DefaultAudioSink$PendingExceptionHolder;->clear()V

    .line 1523
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->skippedOutputFrameCountAtLastPosition:J

    .line 1524
    iput-wide v2, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->accumulatedSkippedSilenceDurationUs:J

    .line 1525
    iget-object v0, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->reportSkippedSilenceHandler:Landroid/os/Handler;

    if-eqz v0, :cond_2

    .line 1526
    iget-object v0, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->reportSkippedSilenceHandler:Landroid/os/Handler;

    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 1528
    :cond_2
    return-void
.end method

.method public getAudioAttributes()Landroidx/media3/common/AudioAttributes;
    .locals 1

    .line 1357
    iget-object v0, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->audioAttributes:Landroidx/media3/common/AudioAttributes;

    return-object v0
.end method

.method public getAudioCapabilities()Landroidx/media3/exoplayer/audio/AudioCapabilities;
    .locals 1

    .line 1363
    iget-object v0, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->audioOutputProvider:Landroidx/media3/exoplayer/audio/AudioOutputProvider;

    instance-of v0, v0, Landroidx/media3/exoplayer/audio/AudioTrackAudioOutputProvider;

    if-eqz v0, :cond_0

    .line 1364
    iget-object v0, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->audioOutputProvider:Landroidx/media3/exoplayer/audio/AudioOutputProvider;

    check-cast v0, Landroidx/media3/exoplayer/audio/AudioTrackAudioOutputProvider;

    invoke-virtual {v0}, Landroidx/media3/exoplayer/audio/AudioTrackAudioOutputProvider;->getAudioCapabilities()Landroidx/media3/exoplayer/audio/AudioCapabilities;

    move-result-object v0

    return-object v0

    .line 1366
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getAudioTrackBufferSizeUs()J
    .locals 8

    .line 1423
    invoke-direct {p0}, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->isAudioOutputInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1424
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    return-wide v0

    .line 1426
    :cond_0
    iget-object v0, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->configuration:Landroidx/media3/exoplayer/audio/DefaultAudioSink$Configuration;

    invoke-static {v0}, Landroidx/media3/exoplayer/audio/DefaultAudioSink$Configuration;->access$1700(Landroidx/media3/exoplayer/audio/DefaultAudioSink$Configuration;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1427
    iget-object v0, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->configuration:Landroidx/media3/exoplayer/audio/DefaultAudioSink$Configuration;

    iget-object v1, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->audioOutput:Landroidx/media3/exoplayer/audio/AudioOutput;

    invoke-interface {v1}, Landroidx/media3/exoplayer/audio/AudioOutput;->getBufferSizeInFrames()J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Landroidx/media3/exoplayer/audio/DefaultAudioSink$Configuration;->access$800(Landroidx/media3/exoplayer/audio/DefaultAudioSink$Configuration;J)J

    move-result-wide v0

    goto :goto_0

    .line 1428
    :cond_1
    iget-object v0, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->audioOutput:Landroidx/media3/exoplayer/audio/AudioOutput;

    .line 1429
    invoke-interface {v0}, Landroidx/media3/exoplayer/audio/AudioOutput;->getBufferSizeInFrames()J

    move-result-wide v1

    iget-object v0, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->configuration:Landroidx/media3/exoplayer/audio/DefaultAudioSink$Configuration;

    .line 1431
    invoke-static {v0}, Landroidx/media3/exoplayer/audio/DefaultAudioSink$Configuration;->access$1100(Landroidx/media3/exoplayer/audio/DefaultAudioSink$Configuration;)Landroidx/media3/exoplayer/audio/AudioOutputProvider$OutputConfig;

    move-result-object v0

    iget v0, v0, Landroidx/media3/exoplayer/audio/AudioOutputProvider$OutputConfig;->encoding:I

    invoke-static {v0}, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->getNonPcmMaximumEncodedRateBytesPerSecond(I)I

    move-result v0

    int-to-long v5, v0

    sget-object v7, Ljava/math/RoundingMode;->DOWN:Ljava/math/RoundingMode;

    .line 1428
    const-wide/32 v3, 0xf4240

    invoke-static/range {v1 .. v7}, Landroidx/media3/common/util/Util;->scaleLargeValue(JJJLjava/math/RoundingMode;)J

    move-result-wide v0

    .line 1426
    :goto_0
    return-wide v0
.end method

.method public getCurrentPositionUs(Z)J
    .locals 5
    .param p1, "sourceEnded"    # Z

    .line 727
    invoke-direct {p0}, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->isAudioOutputInitialized()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->startMediaTimeUsNeedsInit:Z

    if-eqz v0, :cond_0

    goto :goto_0

    .line 730
    :cond_0
    iget-object v0, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->audioOutput:Landroidx/media3/exoplayer/audio/AudioOutput;

    invoke-interface {v0}, Landroidx/media3/exoplayer/audio/AudioOutput;->getPositionUs()J

    move-result-wide v0

    .line 731
    .local v0, "positionUs":J
    iget-object v2, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->configuration:Landroidx/media3/exoplayer/audio/DefaultAudioSink$Configuration;

    invoke-direct {p0}, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->getWrittenFrames()J

    move-result-wide v3

    invoke-static {v2, v3, v4}, Landroidx/media3/exoplayer/audio/DefaultAudioSink$Configuration;->access$800(Landroidx/media3/exoplayer/audio/DefaultAudioSink$Configuration;J)J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    .line 732
    invoke-direct {p0, v0, v1}, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->applyMediaPositionParameters(J)J

    move-result-wide v2

    invoke-direct {p0, v2, v3}, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->applySkipping(J)J

    move-result-wide v2

    return-wide v2

    .line 728
    .end local v0    # "positionUs":J
    :cond_1
    :goto_0
    const-wide/high16 v0, -0x8000000000000000L

    return-wide v0
.end method

.method public getFormatOffloadSupport(Landroidx/media3/common/Format;)Landroidx/media3/exoplayer/audio/AudioOffloadSupport;
    .locals 3
    .param p1, "format"    # Landroidx/media3/common/Format;

    .line 714
    iget-boolean v0, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->offloadDisabledUntilNextConfiguration:Z

    if-eqz v0, :cond_0

    .line 715
    sget-object v0, Landroidx/media3/exoplayer/audio/AudioOffloadSupport;->DEFAULT_UNSUPPORTED:Landroidx/media3/exoplayer/audio/AudioOffloadSupport;

    return-object v0

    .line 717
    :cond_0
    iget-object v0, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->audioOutputProvider:Landroidx/media3/exoplayer/audio/AudioOutputProvider;

    invoke-direct {p0, p1}, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->getFormatConfig(Landroidx/media3/common/Format;)Landroidx/media3/exoplayer/audio/AudioOutputProvider$FormatConfig;

    move-result-object v1

    invoke-interface {v0, v1}, Landroidx/media3/exoplayer/audio/AudioOutputProvider;->getFormatSupport(Landroidx/media3/exoplayer/audio/AudioOutputProvider$FormatConfig;)Landroidx/media3/exoplayer/audio/AudioOutputProvider$FormatSupport;

    move-result-object v0

    .line 718
    .local v0, "formatSupport":Landroidx/media3/exoplayer/audio/AudioOutputProvider$FormatSupport;
    new-instance v1, Landroidx/media3/exoplayer/audio/AudioOffloadSupport$Builder;

    invoke-direct {v1}, Landroidx/media3/exoplayer/audio/AudioOffloadSupport$Builder;-><init>()V

    iget-boolean v2, v0, Landroidx/media3/exoplayer/audio/AudioOutputProvider$FormatSupport;->isFormatSupportedForOffload:Z

    .line 719
    invoke-virtual {v1, v2}, Landroidx/media3/exoplayer/audio/AudioOffloadSupport$Builder;->setIsFormatSupported(Z)Landroidx/media3/exoplayer/audio/AudioOffloadSupport$Builder;

    move-result-object v1

    iget-boolean v2, v0, Landroidx/media3/exoplayer/audio/AudioOutputProvider$FormatSupport;->isGaplessSupportedForOffload:Z

    .line 720
    invoke-virtual {v1, v2}, Landroidx/media3/exoplayer/audio/AudioOffloadSupport$Builder;->setIsGaplessSupported(Z)Landroidx/media3/exoplayer/audio/AudioOffloadSupport$Builder;

    move-result-object v1

    iget-boolean v2, v0, Landroidx/media3/exoplayer/audio/AudioOutputProvider$FormatSupport;->isSpeedChangeSupportedForOffload:Z

    .line 721
    invoke-virtual {v1, v2}, Landroidx/media3/exoplayer/audio/AudioOffloadSupport$Builder;->setIsSpeedChangeSupported(Z)Landroidx/media3/exoplayer/audio/AudioOffloadSupport$Builder;

    move-result-object v1

    .line 722
    invoke-virtual {v1}, Landroidx/media3/exoplayer/audio/AudioOffloadSupport$Builder;->build()Landroidx/media3/exoplayer/audio/AudioOffloadSupport;

    move-result-object v1

    .line 718
    return-object v1
.end method

.method public getFormatSupport(Landroidx/media3/common/Format;)I
    .locals 5
    .param p1, "format"    # Landroidx/media3/common/Format;

    .line 687
    const/4 v0, 0x0

    .line 688
    .local v0, "transcodingViaAudioProcessors":Z
    iget v1, p1, Landroidx/media3/common/Format;->pcmEncoding:I

    invoke-static {v1}, Landroidx/media3/common/util/Util;->isEncodingLinearPcm(I)Z

    move-result v1

    const/4 v2, 0x2

    if-eqz v1, :cond_1

    .line 689
    iget v1, p1, Landroidx/media3/common/Format;->pcmEncoding:I

    invoke-direct {p0, v1}, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->shouldUseFloatOutput(I)Z

    move-result v1

    .line 690
    .local v1, "usesFloatPcm":Z
    if-eqz v1, :cond_0

    iget v3, p1, Landroidx/media3/common/Format;->pcmEncoding:I

    const/4 v4, 0x4

    if-eq v3, v4, :cond_0

    .line 691
    invoke-virtual {p1}, Landroidx/media3/common/Format;->buildUpon()Landroidx/media3/common/Format$Builder;

    move-result-object v3

    invoke-virtual {v3, v4}, Landroidx/media3/common/Format$Builder;->setPcmEncoding(I)Landroidx/media3/common/Format$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroidx/media3/common/Format$Builder;->build()Landroidx/media3/common/Format;

    move-result-object p1

    .line 692
    const/4 v0, 0x1

    .line 694
    :cond_0
    if-nez v1, :cond_1

    iget v3, p1, Landroidx/media3/common/Format;->pcmEncoding:I

    if-eq v3, v2, :cond_1

    .line 695
    invoke-virtual {p1}, Landroidx/media3/common/Format;->buildUpon()Landroidx/media3/common/Format$Builder;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroidx/media3/common/Format$Builder;->setPcmEncoding(I)Landroidx/media3/common/Format$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroidx/media3/common/Format$Builder;->build()Landroidx/media3/common/Format;

    move-result-object p1

    .line 696
    const/4 v0, 0x1

    .line 699
    .end local v1    # "usesFloatPcm":Z
    :cond_1
    iget-object v1, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->audioOutputProvider:Landroidx/media3/exoplayer/audio/AudioOutputProvider;

    invoke-direct {p0, p1}, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->getFormatConfig(Landroidx/media3/common/Format;)Landroidx/media3/exoplayer/audio/AudioOutputProvider$FormatConfig;

    move-result-object v3

    invoke-interface {v1, v3}, Landroidx/media3/exoplayer/audio/AudioOutputProvider;->getFormatSupport(Landroidx/media3/exoplayer/audio/AudioOutputProvider$FormatConfig;)Landroidx/media3/exoplayer/audio/AudioOutputProvider$FormatSupport;

    move-result-object v1

    iget v1, v1, Landroidx/media3/exoplayer/audio/AudioOutputProvider$FormatSupport;->supportLevel:I

    const/4 v3, 0x1

    packed-switch v1, :pswitch_data_0

    .line 708
    const/4 v1, 0x0

    return v1

    .line 701
    :pswitch_0
    if-eqz v0, :cond_2

    .line 702
    move v2, v3

    goto :goto_0

    .line 703
    :cond_2
    nop

    .line 701
    :goto_0
    return v2

    .line 705
    :pswitch_1
    return v3

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getPlaybackParameters()Landroidx/media3/common/PlaybackParameters;
    .locals 1

    .line 1325
    iget-object v0, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->playbackParameters:Landroidx/media3/common/PlaybackParameters;

    return-object v0
.end method

.method public getSkipSilenceEnabled()Z
    .locals 1

    .line 1339
    iget-boolean v0, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->skipSilenceEnabled:Z

    return v0
.end method

.method public handleBuffer(Ljava/nio/ByteBuffer;JI)Z
    .locals 17
    .param p1, "buffer"    # Ljava/nio/ByteBuffer;
    .param p2, "presentationTimeUs"    # J
    .param p4, "encodedAccessUnitCount"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media3/exoplayer/audio/AudioSink$InitializationException;,
            Landroidx/media3/exoplayer/audio/AudioSink$WriteException;
        }
    .end annotation

    .line 911
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-wide/from16 v3, p2

    move/from16 v5, p4

    iget-object v0, v1, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->inputBuffer:Ljava/nio/ByteBuffer;

    const/4 v6, 0x1

    const/4 v7, 0x0

    if-eqz v0, :cond_1

    iget-object v0, v1, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->inputBuffer:Ljava/nio/ByteBuffer;

    if-ne v2, v0, :cond_0

    goto :goto_0

    :cond_0
    move v0, v7

    goto :goto_1

    :cond_1
    :goto_0
    move v0, v6

    :goto_1
    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    .line 913
    iget-object v0, v1, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->pendingConfiguration:Landroidx/media3/exoplayer/audio/DefaultAudioSink$Configuration;

    const/4 v8, 0x0

    if-eqz v0, :cond_6

    .line 914
    invoke-direct {v1}, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->drainToEndOfStream()Z

    move-result v0

    if-nez v0, :cond_2

    .line 916
    return v7

    .line 917
    :cond_2
    iget-object v0, v1, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->audioOutput:Landroidx/media3/exoplayer/audio/AudioOutput;

    if-eqz v0, :cond_4

    iget-object v0, v1, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->audioOutput:Landroidx/media3/exoplayer/audio/AudioOutput;

    iget-object v9, v1, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->configuration:Landroidx/media3/exoplayer/audio/DefaultAudioSink$Configuration;

    .line 919
    invoke-static {v9}, Landroidx/media3/exoplayer/audio/DefaultAudioSink$Configuration;->access$1100(Landroidx/media3/exoplayer/audio/DefaultAudioSink$Configuration;)Landroidx/media3/exoplayer/audio/AudioOutputProvider$OutputConfig;

    move-result-object v9

    iget-object v10, v1, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->pendingConfiguration:Landroidx/media3/exoplayer/audio/DefaultAudioSink$Configuration;

    .line 920
    invoke-static {v10}, Landroidx/media3/exoplayer/audio/DefaultAudioSink$Configuration;->access$1600(Landroidx/media3/exoplayer/audio/DefaultAudioSink$Configuration;)Landroidx/media3/common/Format;

    move-result-object v10

    invoke-direct {v1, v10}, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->getFormatConfig(Landroidx/media3/common/Format;)Landroidx/media3/exoplayer/audio/AudioOutputProvider$FormatConfig;

    move-result-object v10

    iget-object v11, v1, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->pendingConfiguration:Landroidx/media3/exoplayer/audio/DefaultAudioSink$Configuration;

    .line 921
    invoke-static {v11}, Landroidx/media3/exoplayer/audio/DefaultAudioSink$Configuration;->access$1100(Landroidx/media3/exoplayer/audio/DefaultAudioSink$Configuration;)Landroidx/media3/exoplayer/audio/AudioOutputProvider$OutputConfig;

    move-result-object v11

    .line 918
    invoke-interface {v0, v9, v10, v11}, Landroidx/media3/exoplayer/audio/AudioOutput;->canReuseAudioOutput(Landroidx/media3/exoplayer/audio/AudioOutputProvider$OutputConfig;Landroidx/media3/exoplayer/audio/AudioOutputProvider$FormatConfig;Landroidx/media3/exoplayer/audio/AudioOutputProvider$OutputConfig;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 922
    invoke-direct {v1}, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->playPendingData()V

    .line 923
    invoke-virtual {v1}, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->hasPendingData()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 925
    return v7

    .line 927
    :cond_3
    invoke-virtual {v1}, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->flush()V

    goto :goto_2

    .line 930
    :cond_4
    iget-object v0, v1, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->pendingConfiguration:Landroidx/media3/exoplayer/audio/DefaultAudioSink$Configuration;

    iput-object v0, v1, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->configuration:Landroidx/media3/exoplayer/audio/DefaultAudioSink$Configuration;

    .line 931
    iput-object v8, v1, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->pendingConfiguration:Landroidx/media3/exoplayer/audio/DefaultAudioSink$Configuration;

    .line 932
    iget-object v0, v1, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->audioOutput:Landroidx/media3/exoplayer/audio/AudioOutput;

    if-eqz v0, :cond_5

    iget-object v0, v1, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->audioOutput:Landroidx/media3/exoplayer/audio/AudioOutput;

    .line 933
    invoke-interface {v0}, Landroidx/media3/exoplayer/audio/AudioOutput;->isOffloadedPlayback()Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, v1, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->configuration:Landroidx/media3/exoplayer/audio/DefaultAudioSink$Configuration;

    .line 934
    invoke-static {v0}, Landroidx/media3/exoplayer/audio/DefaultAudioSink$Configuration;->access$1100(Landroidx/media3/exoplayer/audio/DefaultAudioSink$Configuration;)Landroidx/media3/exoplayer/audio/AudioOutputProvider$OutputConfig;

    move-result-object v0

    iget-boolean v0, v0, Landroidx/media3/exoplayer/audio/AudioOutputProvider$OutputConfig;->useOffloadGapless:Z

    if-eqz v0, :cond_5

    .line 935
    iget-object v0, v1, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->audioOutput:Landroidx/media3/exoplayer/audio/AudioOutput;

    invoke-interface {v0}, Landroidx/media3/exoplayer/audio/AudioOutput;->setOffloadEndOfStream()V

    .line 936
    iget-object v0, v1, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->audioOutput:Landroidx/media3/exoplayer/audio/AudioOutput;

    iget-object v9, v1, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->configuration:Landroidx/media3/exoplayer/audio/DefaultAudioSink$Configuration;

    .line 937
    invoke-static {v9}, Landroidx/media3/exoplayer/audio/DefaultAudioSink$Configuration;->access$1300(Landroidx/media3/exoplayer/audio/DefaultAudioSink$Configuration;)Landroidx/media3/common/Format;

    move-result-object v9

    iget v9, v9, Landroidx/media3/common/Format;->encoderDelay:I

    iget-object v10, v1, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->configuration:Landroidx/media3/exoplayer/audio/DefaultAudioSink$Configuration;

    invoke-static {v10}, Landroidx/media3/exoplayer/audio/DefaultAudioSink$Configuration;->access$1300(Landroidx/media3/exoplayer/audio/DefaultAudioSink$Configuration;)Landroidx/media3/common/Format;

    move-result-object v10

    iget v10, v10, Landroidx/media3/common/Format;->encoderPadding:I

    .line 936
    invoke-interface {v0, v9, v10}, Landroidx/media3/exoplayer/audio/AudioOutput;->setOffloadDelayPadding(II)V

    .line 938
    iput-boolean v6, v1, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->isWaitingForOffloadEndOfStreamHandled:Z

    .line 942
    :cond_5
    :goto_2
    invoke-direct {v1, v3, v4}, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->applyAudioProcessorPlaybackParametersAndSkipSilence(J)V

    .line 945
    :cond_6
    invoke-direct {v1}, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->isAudioOutputInitialized()Z

    move-result v0

    if-nez v0, :cond_9

    .line 947
    :try_start_0
    invoke-direct {v1}, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->initializeAudioOutput()Z

    move-result v0
    :try_end_0
    .catch Landroidx/media3/exoplayer/audio/AudioSink$InitializationException; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v0, :cond_7

    .line 949
    return v7

    .line 957
    :cond_7
    goto :goto_3

    .line 951
    :catch_0
    move-exception v0

    .line 952
    .local v0, "e":Landroidx/media3/exoplayer/audio/AudioSink$InitializationException;
    iget-boolean v6, v0, Landroidx/media3/exoplayer/audio/AudioSink$InitializationException;->isRecoverable:Z

    if-nez v6, :cond_8

    .line 955
    iget-object v6, v1, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->initializationExceptionPendingExceptionHolder:Landroidx/media3/exoplayer/audio/DefaultAudioSink$PendingExceptionHolder;

    invoke-virtual {v6, v0}, Landroidx/media3/exoplayer/audio/DefaultAudioSink$PendingExceptionHolder;->throwExceptionIfDeadlineIsReached(Ljava/lang/Exception;)V

    .line 956
    return v7

    .line 953
    :cond_8
    throw v0

    .line 959
    .end local v0    # "e":Landroidx/media3/exoplayer/audio/AudioSink$InitializationException;
    :cond_9
    :goto_3
    iget-object v0, v1, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->initializationExceptionPendingExceptionHolder:Landroidx/media3/exoplayer/audio/DefaultAudioSink$PendingExceptionHolder;

    invoke-virtual {v0}, Landroidx/media3/exoplayer/audio/DefaultAudioSink$PendingExceptionHolder;->clear()V

    .line 961
    iget-boolean v0, v1, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->startMediaTimeUsNeedsInit:Z

    const-wide/16 v9, 0x0

    if-eqz v0, :cond_b

    .line 962
    invoke-static {v9, v10, v3, v4}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v11

    iput-wide v11, v1, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->startMediaTimeUs:J

    .line 963
    iput-boolean v7, v1, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->startMediaTimeUsNeedsSync:Z

    .line 964
    iput-boolean v7, v1, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->startMediaTimeUsNeedsInit:Z

    .line 966
    invoke-direct {v1}, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->useAudioOutputPlaybackParams()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 967
    invoke-direct {v1}, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->setAudioOutputPlaybackParameters()V

    .line 969
    :cond_a
    invoke-direct {v1, v3, v4}, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->applyAudioProcessorPlaybackParametersAndSkipSilence(J)V

    .line 971
    iget-boolean v0, v1, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->playing:Z

    if-eqz v0, :cond_b

    .line 972
    invoke-virtual {v1}, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->play()V

    .line 976
    :cond_b
    iget-object v0, v1, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->inputBuffer:Ljava/nio/ByteBuffer;

    if-nez v0, :cond_16

    .line 978
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->order()Ljava/nio/ByteOrder;

    move-result-object v0

    sget-object v11, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    if-ne v0, v11, :cond_c

    move v0, v6

    goto :goto_4

    :cond_c
    move v0, v7

    :goto_4
    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    .line 979
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v0

    if-nez v0, :cond_d

    .line 981
    return v6

    .line 984
    :cond_d
    iget-object v0, v1, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->configuration:Landroidx/media3/exoplayer/audio/DefaultAudioSink$Configuration;

    invoke-static {v0}, Landroidx/media3/exoplayer/audio/DefaultAudioSink$Configuration;->access$1700(Landroidx/media3/exoplayer/audio/DefaultAudioSink$Configuration;)Z

    move-result v0

    if-nez v0, :cond_e

    iget v0, v1, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->framesPerEncodedSample:I

    if-nez v0, :cond_e

    .line 986
    iget-object v0, v1, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->configuration:Landroidx/media3/exoplayer/audio/DefaultAudioSink$Configuration;

    .line 987
    invoke-static {v0}, Landroidx/media3/exoplayer/audio/DefaultAudioSink$Configuration;->access$1100(Landroidx/media3/exoplayer/audio/DefaultAudioSink$Configuration;)Landroidx/media3/exoplayer/audio/AudioOutputProvider$OutputConfig;

    move-result-object v0

    iget v0, v0, Landroidx/media3/exoplayer/audio/AudioOutputProvider$OutputConfig;->encoding:I

    invoke-static {v0, v2}, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->getFramesPerEncodedSample(ILjava/nio/ByteBuffer;)I

    move-result v0

    iput v0, v1, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->framesPerEncodedSample:I

    .line 988
    iget v0, v1, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->framesPerEncodedSample:I

    if-nez v0, :cond_e

    .line 993
    return v6

    .line 997
    :cond_e
    iget-object v0, v1, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->afterDrainParameters:Landroidx/media3/exoplayer/audio/DefaultAudioSink$MediaPositionParameters;

    if-eqz v0, :cond_10

    .line 998
    invoke-direct {v1}, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->drainToEndOfStream()Z

    move-result v0

    if-nez v0, :cond_f

    .line 1000
    return v7

    .line 1002
    :cond_f
    invoke-direct {v1, v3, v4}, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->applyAudioProcessorPlaybackParametersAndSkipSilence(J)V

    .line 1003
    iput-object v8, v1, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->afterDrainParameters:Landroidx/media3/exoplayer/audio/DefaultAudioSink$MediaPositionParameters;

    .line 1007
    :cond_10
    iget-wide v11, v1, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->startMediaTimeUs:J

    iget-object v0, v1, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->configuration:Landroidx/media3/exoplayer/audio/DefaultAudioSink$Configuration;

    .line 1010
    invoke-direct {v1}, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->getSubmittedFrames()J

    move-result-wide v13

    iget-object v15, v1, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->trimmingAudioProcessor:Landroidx/media3/exoplayer/audio/TrimmingAudioProcessor;

    invoke-virtual {v15}, Landroidx/media3/exoplayer/audio/TrimmingAudioProcessor;->getTrimmedFrameCount()J

    move-result-wide v15

    sub-long/2addr v13, v15

    .line 1009
    invoke-static {v0, v13, v14}, Landroidx/media3/exoplayer/audio/DefaultAudioSink$Configuration;->access$1800(Landroidx/media3/exoplayer/audio/DefaultAudioSink$Configuration;J)J

    move-result-wide v13

    add-long/2addr v11, v13

    .line 1011
    .local v11, "expectedPresentationTimeUs":J
    iget-boolean v0, v1, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->startMediaTimeUsNeedsSync:Z

    if-nez v0, :cond_12

    sub-long v13, v11, v3

    .line 1012
    invoke-static {v13, v14}, Ljava/lang/Math;->abs(J)J

    move-result-wide v13

    const-wide/32 v15, 0x30d40

    cmp-long v0, v13, v15

    if-lez v0, :cond_12

    .line 1013
    iget-object v0, v1, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->listener:Landroidx/media3/exoplayer/audio/AudioSink$Listener;

    if-eqz v0, :cond_11

    .line 1014
    iget-object v0, v1, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->listener:Landroidx/media3/exoplayer/audio/AudioSink$Listener;

    new-instance v13, Landroidx/media3/exoplayer/audio/AudioSink$UnexpectedDiscontinuityException;

    invoke-direct {v13, v3, v4, v11, v12}, Landroidx/media3/exoplayer/audio/AudioSink$UnexpectedDiscontinuityException;-><init>(JJ)V

    invoke-interface {v0, v13}, Landroidx/media3/exoplayer/audio/AudioSink$Listener;->onAudioSinkError(Ljava/lang/Exception;)V

    .line 1018
    :cond_11
    iput-boolean v6, v1, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->startMediaTimeUsNeedsSync:Z

    .line 1020
    :cond_12
    iget-boolean v0, v1, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->startMediaTimeUsNeedsSync:Z

    if-eqz v0, :cond_14

    .line 1021
    invoke-direct {v1}, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->drainToEndOfStream()Z

    move-result v0

    if-nez v0, :cond_13

    .line 1023
    return v7

    .line 1027
    :cond_13
    sub-long v13, v3, v11

    .line 1028
    .local v13, "adjustmentUs":J
    move-wide v15, v9

    iget-wide v9, v1, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->startMediaTimeUs:J

    add-long/2addr v9, v13

    iput-wide v9, v1, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->startMediaTimeUs:J

    .line 1029
    iput-boolean v7, v1, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->startMediaTimeUsNeedsSync:Z

    .line 1031
    invoke-direct {v1, v3, v4}, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->applyAudioProcessorPlaybackParametersAndSkipSilence(J)V

    .line 1032
    iget-object v0, v1, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->listener:Landroidx/media3/exoplayer/audio/AudioSink$Listener;

    if-eqz v0, :cond_14

    cmp-long v0, v13, v15

    if-eqz v0, :cond_14

    .line 1033
    iget-object v0, v1, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->listener:Landroidx/media3/exoplayer/audio/AudioSink$Listener;

    invoke-interface {v0}, Landroidx/media3/exoplayer/audio/AudioSink$Listener;->onPositionDiscontinuity()V

    .line 1037
    .end local v13    # "adjustmentUs":J
    :cond_14
    iget-object v0, v1, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->configuration:Landroidx/media3/exoplayer/audio/DefaultAudioSink$Configuration;

    invoke-static {v0}, Landroidx/media3/exoplayer/audio/DefaultAudioSink$Configuration;->access$1700(Landroidx/media3/exoplayer/audio/DefaultAudioSink$Configuration;)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 1038
    iget-wide v9, v1, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->submittedPcmBytes:J

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    int-to-long v13, v0

    add-long/2addr v9, v13

    iput-wide v9, v1, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->submittedPcmBytes:J

    move v0, v6

    goto :goto_5

    .line 1040
    :cond_15
    iget-wide v9, v1, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->submittedEncodedFrames:J

    iget v0, v1, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->framesPerEncodedSample:I

    int-to-long v13, v0

    move v0, v6

    int-to-long v6, v5

    mul-long/2addr v13, v6

    add-long/2addr v9, v13

    iput-wide v9, v1, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->submittedEncodedFrames:J

    .line 1043
    :goto_5
    iput-object v2, v1, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->inputBuffer:Ljava/nio/ByteBuffer;

    .line 1044
    iput v5, v1, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->inputBufferAccessUnitCount:I

    goto :goto_6

    .line 976
    .end local v11    # "expectedPresentationTimeUs":J
    :cond_16
    move v0, v6

    .line 1047
    :goto_6
    invoke-direct {v1, v3, v4}, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->processBuffers(J)V

    .line 1049
    iget-object v6, v1, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->inputBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v6

    if-nez v6, :cond_17

    .line 1050
    iput-object v8, v1, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->inputBuffer:Ljava/nio/ByteBuffer;

    .line 1051
    const/4 v15, 0x0

    iput v15, v1, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->inputBufferAccessUnitCount:I

    .line 1052
    return v0

    .line 1055
    :cond_17
    iget-object v6, v1, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->audioOutput:Landroidx/media3/exoplayer/audio/AudioOutput;

    invoke-interface {v6}, Landroidx/media3/exoplayer/audio/AudioOutput;->isStalled()Z

    move-result v6

    if-eqz v6, :cond_18

    .line 1056
    const-string v6, "DefaultAudioSink"

    const-string v7, "Resetting stalled audio output"

    invoke-static {v6, v7}, Landroidx/media3/common/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1057
    invoke-virtual {v1}, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->flush()V

    .line 1058
    return v0

    .line 1061
    :cond_18
    const/4 v15, 0x0

    return v15
.end method

.method public handleDiscontinuity()V
    .locals 1

    .line 903
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->startMediaTimeUsNeedsSync:Z

    .line 904
    return-void
.end method

.method public hasPendingData()Z
    .locals 2

    .line 1302
    invoke-direct {p0}, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->isAudioOutputInitialized()Z

    move-result v0

    if-eqz v0, :cond_1

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1d

    if-lt v0, v1, :cond_0

    iget-object v0, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->audioOutput:Landroidx/media3/exoplayer/audio/AudioOutput;

    .line 1304
    invoke-interface {v0}, Landroidx/media3/exoplayer/audio/AudioOutput;->isOffloadedPlayback()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->handledOffloadOnPresentationEnded:Z

    if-nez v0, :cond_1

    .line 1306
    :cond_0
    invoke-direct {p0}, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->getWrittenFrames()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->hasAudioOutputPendingData(J)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 1302
    :goto_0
    return v0
.end method

.method public isEnded()Z
    .locals 1

    .line 1297
    invoke-direct {p0}, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->isAudioOutputInitialized()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->handledEndOfStream:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->hasPendingData()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method synthetic lambda$maybeAddAudioOutputProviderListener$0$androidx-media3-exoplayer-audio-DefaultAudioSink()V
    .locals 1

    .line 1767
    iget-object v0, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->listener:Landroidx/media3/exoplayer/audio/AudioSink$Listener;

    if-eqz v0, :cond_0

    .line 1768
    iget-object v0, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->listener:Landroidx/media3/exoplayer/audio/AudioSink$Listener;

    invoke-interface {v0}, Landroidx/media3/exoplayer/audio/AudioSink$Listener;->onAudioCapabilitiesChanged()V

    .line 1770
    :cond_0
    return-void
.end method

.method public pause()V
    .locals 1

    .line 1499
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->playing:Z

    .line 1500
    invoke-direct {p0}, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->isAudioOutputInitialized()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1501
    iget-object v0, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->audioOutput:Landroidx/media3/exoplayer/audio/AudioOutput;

    invoke-interface {v0}, Landroidx/media3/exoplayer/audio/AudioOutput;->pause()V

    .line 1503
    :cond_0
    return-void
.end method

.method public play()V
    .locals 1

    .line 895
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->playing:Z

    .line 896
    invoke-direct {p0}, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->isAudioOutputInitialized()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 897
    iget-object v0, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->audioOutput:Landroidx/media3/exoplayer/audio/AudioOutput;

    invoke-interface {v0}, Landroidx/media3/exoplayer/audio/AudioOutput;->play()V

    .line 899
    :cond_0
    return-void
.end method

.method public playToEndOfStream()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media3/exoplayer/audio/AudioSink$WriteException;
        }
    .end annotation

    .line 1279
    iget-boolean v0, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->handledEndOfStream:Z

    if-nez v0, :cond_0

    invoke-direct {p0}, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->isAudioOutputInitialized()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->drainToEndOfStream()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1280
    invoke-direct {p0}, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->playPendingData()V

    .line 1281
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->handledEndOfStream:Z

    .line 1283
    :cond_0
    return-void
.end method

.method public release()V
    .locals 1

    .line 1548
    iget-object v0, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->audioOutputProvider:Landroidx/media3/exoplayer/audio/AudioOutputProvider;

    invoke-interface {v0}, Landroidx/media3/exoplayer/audio/AudioOutputProvider;->release()V

    .line 1549
    return-void
.end method

.method public reset()V
    .locals 2

    .line 1532
    invoke-virtual {p0}, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->flush()V

    .line 1533
    iget-object v0, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->availableAudioProcessors:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableList;->iterator()Lcom/google/common/collect/UnmodifiableIterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/media3/common/audio/AudioProcessor;

    .line 1534
    .local v1, "audioProcessor":Landroidx/media3/common/audio/AudioProcessor;
    invoke-interface {v1}, Landroidx/media3/common/audio/AudioProcessor;->reset()V

    .line 1535
    .end local v1    # "audioProcessor":Landroidx/media3/common/audio/AudioProcessor;
    goto :goto_0

    .line 1536
    :cond_0
    iget-object v0, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->toInt16PcmAudioProcessor:Landroidx/media3/common/audio/ToInt16PcmAudioProcessor;

    invoke-virtual {v0}, Landroidx/media3/common/audio/ToInt16PcmAudioProcessor;->reset()V

    .line 1537
    iget-object v0, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->toFloatPcmAudioProcessor:Landroidx/media3/exoplayer/audio/ToFloatPcmAudioProcessor;

    invoke-virtual {v0}, Landroidx/media3/exoplayer/audio/ToFloatPcmAudioProcessor;->reset()V

    .line 1539
    iget-object v0, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->audioProcessingPipeline:Landroidx/media3/common/audio/AudioProcessingPipeline;

    if-eqz v0, :cond_1

    .line 1540
    iget-object v0, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->audioProcessingPipeline:Landroidx/media3/common/audio/AudioProcessingPipeline;

    invoke-virtual {v0}, Landroidx/media3/common/audio/AudioProcessingPipeline;->reset()V

    .line 1542
    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->playing:Z

    .line 1543
    iput-boolean v0, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->offloadDisabledUntilNextConfiguration:Z

    .line 1544
    return-void
.end method

.method public setAudioAttributes(Landroidx/media3/common/AudioAttributes;)V
    .locals 1
    .param p1, "audioAttributes"    # Landroidx/media3/common/AudioAttributes;

    .line 1344
    iget-object v0, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->audioAttributes:Landroidx/media3/common/AudioAttributes;

    invoke-virtual {v0, p1}, Landroidx/media3/common/AudioAttributes;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1345
    return-void

    .line 1347
    :cond_0
    iput-object p1, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->audioAttributes:Landroidx/media3/common/AudioAttributes;

    .line 1348
    iget-boolean v0, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->tunneling:Z

    if-eqz v0, :cond_1

    .line 1350
    return-void

    .line 1352
    :cond_1
    invoke-direct {p0}, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->reconfigureAndFlush()V

    .line 1353
    return-void
.end method

.method public setAudioOutputProvider(Landroidx/media3/exoplayer/audio/AudioOutputProvider;)V
    .locals 1
    .param p1, "audioOutputProvider"    # Landroidx/media3/exoplayer/audio/AudioOutputProvider;

    .line 1472
    iget-object v0, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->audioOutputProvider:Landroidx/media3/exoplayer/audio/AudioOutputProvider;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1473
    return-void

    .line 1475
    :cond_0
    iget-object v0, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->audioOutputProvider:Landroidx/media3/exoplayer/audio/AudioOutputProvider;

    invoke-interface {v0}, Landroidx/media3/exoplayer/audio/AudioOutputProvider;->release()V

    .line 1476
    iput-object p1, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->audioOutputProvider:Landroidx/media3/exoplayer/audio/AudioOutputProvider;

    .line 1477
    iget-object v0, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->audioOutputProviderListener:Landroidx/media3/exoplayer/audio/AudioOutputProvider$Listener;

    if-eqz v0, :cond_1

    .line 1478
    iget-object v0, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->audioOutputProviderListener:Landroidx/media3/exoplayer/audio/AudioOutputProvider$Listener;

    invoke-interface {p1, v0}, Landroidx/media3/exoplayer/audio/AudioOutputProvider;->addListener(Landroidx/media3/exoplayer/audio/AudioOutputProvider$Listener;)V

    .line 1480
    :cond_1
    invoke-direct {p0}, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->reconfigureAndFlush()V

    .line 1481
    return-void
.end method

.method public setAudioSessionId(I)V
    .locals 2
    .param p1, "audioSessionId"    # I

    .line 1371
    iget-boolean v0, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->pendingAudioSessionIdChangeConfirmation:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 1372
    iget v0, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->audioSessionId:I

    if-ne v0, p1, :cond_0

    .line 1373
    iput-boolean v1, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->pendingAudioSessionIdChangeConfirmation:Z

    goto :goto_0

    .line 1375
    :cond_0
    return-void

    .line 1378
    :cond_1
    :goto_0
    iget v0, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->audioSessionId:I

    if-eq v0, p1, :cond_3

    .line 1379
    iput p1, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->audioSessionId:I

    .line 1380
    if-eqz p1, :cond_2

    const/4 v1, 0x1

    :cond_2
    iput-boolean v1, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->externalAudioSessionIdProvided:Z

    .line 1381
    invoke-direct {p0}, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->reconfigureAndFlush()V

    .line 1383
    :cond_3
    return-void
.end method

.method public setAuxEffectInfo(Landroidx/media3/common/AuxEffectInfo;)V
    .locals 3
    .param p1, "auxEffectInfo"    # Landroidx/media3/common/AuxEffectInfo;

    .line 1387
    iget-object v0, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->auxEffectInfo:Landroidx/media3/common/AuxEffectInfo;

    invoke-virtual {v0, p1}, Landroidx/media3/common/AuxEffectInfo;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1388
    return-void

    .line 1390
    :cond_0
    iget v0, p1, Landroidx/media3/common/AuxEffectInfo;->effectId:I

    .line 1391
    .local v0, "effectId":I
    iget v1, p1, Landroidx/media3/common/AuxEffectInfo;->sendLevel:F

    .line 1392
    .local v1, "sendLevel":F
    iget-object v2, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->audioOutput:Landroidx/media3/exoplayer/audio/AudioOutput;

    if-eqz v2, :cond_2

    .line 1393
    iget-object v2, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->auxEffectInfo:Landroidx/media3/common/AuxEffectInfo;

    iget v2, v2, Landroidx/media3/common/AuxEffectInfo;->effectId:I

    if-eq v2, v0, :cond_1

    .line 1394
    iget-object v2, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->audioOutput:Landroidx/media3/exoplayer/audio/AudioOutput;

    invoke-interface {v2, v0}, Landroidx/media3/exoplayer/audio/AudioOutput;->attachAuxEffect(I)V

    .line 1396
    :cond_1
    if-eqz v0, :cond_2

    .line 1397
    iget-object v2, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->audioOutput:Landroidx/media3/exoplayer/audio/AudioOutput;

    invoke-interface {v2, v1}, Landroidx/media3/exoplayer/audio/AudioOutput;->setAuxEffectSendLevel(F)V

    .line 1400
    :cond_2
    iput-object p1, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->auxEffectInfo:Landroidx/media3/common/AuxEffectInfo;

    .line 1401
    return-void
.end method

.method public setClock(Landroidx/media3/common/util/Clock;)V
    .locals 1
    .param p1, "clock"    # Landroidx/media3/common/util/Clock;

    .line 676
    iget-object v0, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->audioOutputProvider:Landroidx/media3/exoplayer/audio/AudioOutputProvider;

    invoke-interface {v0, p1}, Landroidx/media3/exoplayer/audio/AudioOutputProvider;->setClock(Landroidx/media3/common/util/Clock;)V

    .line 677
    return-void
.end method

.method public setListener(Landroidx/media3/exoplayer/audio/AudioSink$Listener;)V
    .locals 0
    .param p1, "listener"    # Landroidx/media3/exoplayer/audio/AudioSink$Listener;

    .line 666
    iput-object p1, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->listener:Landroidx/media3/exoplayer/audio/AudioSink$Listener;

    .line 667
    return-void
.end method

.method public setOffloadDelayPadding(II)V
    .locals 1
    .param p1, "delayInFrames"    # I
    .param p2, "paddingInFrames"    # I

    .line 1462
    iget-object v0, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->audioOutput:Landroidx/media3/exoplayer/audio/AudioOutput;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->audioOutput:Landroidx/media3/exoplayer/audio/AudioOutput;

    .line 1463
    invoke-interface {v0}, Landroidx/media3/exoplayer/audio/AudioOutput;->isOffloadedPlayback()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->configuration:Landroidx/media3/exoplayer/audio/DefaultAudioSink$Configuration;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->configuration:Landroidx/media3/exoplayer/audio/DefaultAudioSink$Configuration;

    .line 1465
    invoke-static {v0}, Landroidx/media3/exoplayer/audio/DefaultAudioSink$Configuration;->access$1100(Landroidx/media3/exoplayer/audio/DefaultAudioSink$Configuration;)Landroidx/media3/exoplayer/audio/AudioOutputProvider$OutputConfig;

    move-result-object v0

    iget-boolean v0, v0, Landroidx/media3/exoplayer/audio/AudioOutputProvider$OutputConfig;->useOffloadGapless:Z

    if-eqz v0, :cond_0

    .line 1466
    iget-object v0, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->audioOutput:Landroidx/media3/exoplayer/audio/AudioOutput;

    invoke-interface {v0, p1, p2}, Landroidx/media3/exoplayer/audio/AudioOutput;->setOffloadDelayPadding(II)V

    .line 1468
    :cond_0
    return-void
.end method

.method public setOffloadMode(I)V
    .locals 2
    .param p1, "offloadMode"    # I

    .line 1455
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1d

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkState(Z)V

    .line 1456
    iput p1, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->offloadMode:I

    .line 1457
    return-void
.end method

.method public setPlaybackParameters(Landroidx/media3/common/PlaybackParameters;)V
    .locals 5
    .param p1, "playbackParameters"    # Landroidx/media3/common/PlaybackParameters;

    .line 1311
    invoke-direct {p0}, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->useAudioOutputPlaybackParams()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1312
    iput-object p1, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->playbackParameters:Landroidx/media3/common/PlaybackParameters;

    .line 1313
    invoke-direct {p0}, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->setAudioOutputPlaybackParameters()V

    goto :goto_0

    .line 1315
    :cond_0
    new-instance v0, Landroidx/media3/common/PlaybackParameters;

    iget v1, p1, Landroidx/media3/common/PlaybackParameters;->speed:F

    .line 1317
    const v2, 0x3dcccccd    # 0.1f

    const/high16 v3, 0x41000000    # 8.0f

    invoke-static {v1, v2, v3}, Landroidx/media3/common/util/Util;->constrainValue(FFF)F

    move-result v1

    iget v4, p1, Landroidx/media3/common/PlaybackParameters;->pitch:F

    .line 1318
    invoke-static {v4, v2, v3}, Landroidx/media3/common/util/Util;->constrainValue(FFF)F

    move-result v2

    invoke-direct {v0, v1, v2}, Landroidx/media3/common/PlaybackParameters;-><init>(FF)V

    iput-object v0, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->playbackParameters:Landroidx/media3/common/PlaybackParameters;

    .line 1319
    iget-object v0, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->playbackParameters:Landroidx/media3/common/PlaybackParameters;

    invoke-direct {p0, v0}, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->setAudioProcessorPlaybackParameters(Landroidx/media3/common/PlaybackParameters;)V

    .line 1321
    :goto_0
    return-void
.end method

.method public setPlayerId(Landroidx/media3/exoplayer/analytics/PlayerId;)V
    .locals 0
    .param p1, "playerId"    # Landroidx/media3/exoplayer/analytics/PlayerId;

    .line 671
    iput-object p1, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->playerId:Landroidx/media3/exoplayer/analytics/PlayerId;

    .line 672
    return-void
.end method

.method public setPreferredDevice(Landroid/media/AudioDeviceInfo;)V
    .locals 2
    .param p1, "audioDeviceInfo"    # Landroid/media/AudioDeviceInfo;

    .line 1405
    iput-object p1, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->preferredDevice:Landroid/media/AudioDeviceInfo;

    .line 1406
    iget-object v0, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->audioOutput:Landroidx/media3/exoplayer/audio/AudioOutput;

    if-eqz v0, :cond_0

    .line 1407
    iget-object v0, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->audioOutput:Landroidx/media3/exoplayer/audio/AudioOutput;

    iget-object v1, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->preferredDevice:Landroid/media/AudioDeviceInfo;

    invoke-interface {v0, v1}, Landroidx/media3/exoplayer/audio/AudioOutput;->setPreferredDevice(Landroid/media/AudioDeviceInfo;)V

    .line 1409
    :cond_0
    return-void
.end method

.method public setSkipSilenceEnabled(Z)V
    .locals 1
    .param p1, "skipSilenceEnabled"    # Z

    .line 1330
    iput-boolean p1, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->skipSilenceEnabled:Z

    .line 1333
    nop

    .line 1334
    invoke-direct {p0}, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->useAudioOutputPlaybackParams()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Landroidx/media3/common/PlaybackParameters;->DEFAULT:Landroidx/media3/common/PlaybackParameters;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->playbackParameters:Landroidx/media3/common/PlaybackParameters;

    .line 1333
    :goto_0
    invoke-direct {p0, v0}, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->setAudioProcessorPlaybackParameters(Landroidx/media3/common/PlaybackParameters;)V

    .line 1335
    return-void
.end method

.method public setVirtualDeviceId(I)V
    .locals 1
    .param p1, "virtualDeviceId"    # I

    .line 1413
    invoke-static {p1}, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->resolveDefaultVirtualDeviceIds(I)I

    move-result p1

    .line 1414
    iget v0, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->virtualDeviceId:I

    if-ne v0, p1, :cond_0

    .line 1415
    return-void

    .line 1417
    :cond_0
    iput p1, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->virtualDeviceId:I

    .line 1418
    invoke-direct {p0}, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->reconfigureAndFlush()V

    .line 1419
    return-void
.end method

.method public setVolume(F)V
    .locals 1
    .param p1, "volume"    # F

    .line 1485
    iget v0, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->volume:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_0

    .line 1486
    iput p1, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->volume:F

    .line 1487
    invoke-direct {p0}, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->setVolumeInternal()V

    .line 1489
    :cond_0
    return-void
.end method

.method public supportsFormat(Landroidx/media3/common/Format;)Z
    .locals 1
    .param p1, "format"    # Landroidx/media3/common/Format;

    .line 681
    invoke-virtual {p0, p1}, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->getFormatSupport(Landroidx/media3/common/Format;)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
