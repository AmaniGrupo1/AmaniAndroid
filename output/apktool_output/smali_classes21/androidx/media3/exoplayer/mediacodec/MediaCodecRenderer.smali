.class public abstract Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;
.super Landroidx/media3/exoplayer/BaseRenderer;
.source "MediaCodecRenderer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer$DecoderInitializationException;,
        Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer$OutputStreamInfo;,
        Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer$Api31;,
        Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer$MediaCodecRendererCodecAdapterListener;
    }
.end annotation


# static fields
.field private static final ADAPTATION_WORKAROUND_BUFFER:[B

.field private static final ADAPTATION_WORKAROUND_MODE_ALWAYS:I = 0x2

.field private static final ADAPTATION_WORKAROUND_MODE_NEVER:I = 0x0

.field private static final ADAPTATION_WORKAROUND_MODE_SAME_RESOLUTION:I = 0x1

.field private static final ADAPTATION_WORKAROUND_SLICE_WIDTH_HEIGHT:I = 0x20

.field protected static final CODEC_OPERATING_RATE_UNSET:F = -1.0f

.field protected static final DEBUG_LOG_ENABLED:Z = false

.field protected static final DEBUG_LOG_TAG:Ljava/lang/String; = "MCRdebug"

.field private static final DRAIN_ACTION_FLUSH:I = 0x1

.field private static final DRAIN_ACTION_FLUSH_AND_UPDATE_DRM_SESSION:I = 0x2

.field private static final DRAIN_ACTION_NONE:I = 0x0

.field private static final DRAIN_ACTION_REINITIALIZE:I = 0x3

.field private static final DRAIN_STATE_NONE:I = 0x0

.field private static final DRAIN_STATE_SIGNAL_END_OF_STREAM:I = 0x1

.field private static final DRAIN_STATE_WAIT_END_OF_STREAM:I = 0x2

.field private static final MAX_CODEC_HOTSWAP_TIME_MS:J = 0x3e8L

.field private static final RECONFIGURATION_STATE_NONE:I = 0x0

.field private static final RECONFIGURATION_STATE_QUEUE_PENDING:I = 0x2

.field private static final RECONFIGURATION_STATE_WRITE_PENDING:I = 0x1

.field private static final TAG:Ljava/lang/String; = "MediaCodecRenderer"


# instance fields
.field private activeCodecParameters:Landroidx/media3/exoplayer/CodecParameters;

.field private final assumedMinimumCodecOperatingRate:F

.field private availableCodecInfos:Ljava/util/ArrayDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayDeque<",
            "Landroidx/media3/exoplayer/mediacodec/MediaCodecInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final buffer:Landroidx/media3/decoder/DecoderInputBuffer;

.field private final bypassBatchBuffer:Landroidx/media3/exoplayer/mediacodec/BatchBuffer;

.field private bypassDrainAndReinitialize:Z

.field private bypassEnabled:Z

.field private final bypassSampleBuffer:Landroidx/media3/decoder/DecoderInputBuffer;

.field private bypassSampleBufferPending:Z

.field private codec:Landroidx/media3/exoplayer/mediacodec/MediaCodecAdapter;

.field private codecAdaptationWorkaroundMode:I

.field private final codecAdapterFactory:Landroidx/media3/exoplayer/mediacodec/MediaCodecAdapter$Factory;

.field private codecDrainAction:I

.field private codecDrainState:I

.field private codecDrmSession:Landroidx/media3/exoplayer/drm/DrmSession;

.field private codecHasOutputMediaFormat:Z

.field private codecHotswapDeadlineMs:J

.field private codecInfo:Landroidx/media3/exoplayer/mediacodec/MediaCodecInfo;

.field private codecInputFormat:Landroidx/media3/common/Format;

.field private codecNeedsAdaptationWorkaroundBuffer:Z

.field private codecNeedsEosFlushWorkaround:Z

.field private codecNeedsEosPropagation:Z

.field private codecNeedsSosFlushWorkaround:Z

.field private codecOperatingRate:F

.field private codecOutputMediaFormat:Landroid/media/MediaFormat;

.field private codecOutputMediaFormatChanged:Z

.field private codecReceivedBuffers:Z

.field private codecReceivedEos:Z

.field private codecReconfigurationState:I

.field private codecReconfigured:Z

.field private codecRegisteredOnBufferAvailableListener:Z

.field private final context:Landroid/content/Context;

.field private currentPlaybackSpeed:F

.field protected decoderCounters:Landroidx/media3/exoplayer/DecoderCounters;

.field private final enableDecoderFallback:Z

.field private experimentalEnableProcessedStreamChangedAtStart:Z

.field private hasSkippedFlushAndWaitingForQueueInputBuffer:Z

.field private inputFormat:Landroidx/media3/common/Format;

.field private inputIndex:I

.field private inputStreamEnded:Z

.field private isDecodeOnlyOutputBuffer:Z

.field private isLastOutputBuffer:Z

.field private largestQueuedPresentationTimeUs:J

.field private lastDispatchedCodecParameters:Landroidx/media3/exoplayer/CodecParameters;

.field private lastOutputBufferProcessedRealtimeMs:J

.field private lastProcessedOutputBufferTimeUs:J

.field private final mediaCodecSelector:Landroidx/media3/exoplayer/mediacodec/MediaCodecSelector;

.field private mediaCrypto:Landroid/media/MediaCrypto;

.field private needToNotifyOutputFormatChangeAfterStreamChange:Z

.field private final noDataBuffer:Landroidx/media3/decoder/DecoderInputBuffer;

.field private final oggOpusAudioPacketizer:Landroidx/media3/exoplayer/audio/OggOpusAudioPacketizer;

.field private outputBuffer:Ljava/nio/ByteBuffer;

.field private final outputBufferInfo:Landroid/media/MediaCodec$BufferInfo;

.field private outputFormat:Landroidx/media3/common/Format;

.field private outputIndex:I

.field private outputStreamEnded:Z

.field private outputStreamInfo:Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer$OutputStreamInfo;

.field private pendingOutputEndOfStream:Z

.field private final pendingOutputStreamChanges:Ljava/util/ArrayDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayDeque<",
            "Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer$OutputStreamInfo;",
            ">;"
        }
    .end annotation
.end field

.field private pendingPlaybackException:Landroidx/media3/exoplayer/ExoPlaybackException;

.field private preferredDecoderInitializationException:Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer$DecoderInitializationException;

.field private final readDataResultHolder:Ljava/util/concurrent/atomic/AtomicInteger;

.field private renderTimeLimitMs:J

.field private shouldSkipAdaptationWorkaroundOutputBuffer:Z

.field private skippedFlushOffsetUs:J

.field private sourceDrmSession:Landroidx/media3/exoplayer/drm/DrmSession;

.field private subscribedCodecParameterKeys:Lcom/google/common/collect/ImmutableSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/ImmutableSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private targetPlaybackSpeed:F

.field private waitingForFirstSampleInFormat:Z

.field private wakeupListener:Landroidx/media3/exoplayer/Renderer$WakeupListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 327
    const/16 v0, 0x26

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->ADAPTATION_WORKAROUND_BUFFER:[B

    return-void

    :array_0
    .array-data 1
        0x0t
        0x0t
        0x1t
        0x67t
        0x42t
        -0x40t
        0xbt
        -0x26t
        0x25t
        -0x70t
        0x0t
        0x0t
        0x1t
        0x68t
        -0x32t
        0xft
        0x13t
        0x20t
        0x0t
        0x0t
        0x1t
        0x65t
        -0x78t
        -0x7ct
        0xdt
        -0x32t
        0x71t
        0x18t
        -0x60t
        0x0t
        0x2ft
        -0x41t
        0x1ct
        0x31t
        -0x3dt
        0x27t
        0x5dt
        0x78t
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;ILandroidx/media3/exoplayer/mediacodec/MediaCodecAdapter$Factory;Landroidx/media3/exoplayer/mediacodec/MediaCodecSelector;ZF)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "trackType"    # I
    .param p3, "codecAdapterFactory"    # Landroidx/media3/exoplayer/mediacodec/MediaCodecAdapter$Factory;
    .param p4, "mediaCodecSelector"    # Landroidx/media3/exoplayer/mediacodec/MediaCodecSelector;
    .param p5, "enableDecoderFallback"    # Z
    .param p6, "assumedMinimumCodecOperatingRate"    # F

    .line 439
    invoke-direct {p0, p2}, Landroidx/media3/exoplayer/BaseRenderer;-><init>(I)V

    .line 440
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->context:Landroid/content/Context;

    .line 441
    iput-object p3, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->codecAdapterFactory:Landroidx/media3/exoplayer/mediacodec/MediaCodecAdapter$Factory;

    .line 442
    invoke-static {p4}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media3/exoplayer/mediacodec/MediaCodecSelector;

    iput-object v0, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->mediaCodecSelector:Landroidx/media3/exoplayer/mediacodec/MediaCodecSelector;

    .line 443
    iput-boolean p5, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->enableDecoderFallback:Z

    .line 444
    iput p6, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->assumedMinimumCodecOperatingRate:F

    .line 445
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v0, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->readDataResultHolder:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 446
    invoke-static {}, Landroidx/media3/decoder/DecoderInputBuffer;->newNoDataInstance()Landroidx/media3/decoder/DecoderInputBuffer;

    move-result-object v0

    iput-object v0, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->noDataBuffer:Landroidx/media3/decoder/DecoderInputBuffer;

    .line 447
    new-instance v0, Landroidx/media3/decoder/DecoderInputBuffer;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroidx/media3/decoder/DecoderInputBuffer;-><init>(I)V

    iput-object v0, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->buffer:Landroidx/media3/decoder/DecoderInputBuffer;

    .line 448
    new-instance v0, Landroidx/media3/decoder/DecoderInputBuffer;

    const/4 v2, 0x2

    invoke-direct {v0, v2}, Landroidx/media3/decoder/DecoderInputBuffer;-><init>(I)V

    iput-object v0, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->bypassSampleBuffer:Landroidx/media3/decoder/DecoderInputBuffer;

    .line 449
    new-instance v0, Landroidx/media3/exoplayer/mediacodec/BatchBuffer;

    invoke-direct {v0}, Landroidx/media3/exoplayer/mediacodec/BatchBuffer;-><init>()V

    iput-object v0, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->bypassBatchBuffer:Landroidx/media3/exoplayer/mediacodec/BatchBuffer;

    .line 450
    new-instance v0, Landroid/media/MediaCodec$BufferInfo;

    invoke-direct {v0}, Landroid/media/MediaCodec$BufferInfo;-><init>()V

    iput-object v0, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->outputBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    .line 451
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->currentPlaybackSpeed:F

    .line 452
    iput v0, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->targetPlaybackSpeed:F

    .line 453
    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v2, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->renderTimeLimitMs:J

    .line 454
    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->pendingOutputStreamChanges:Ljava/util/ArrayDeque;

    .line 455
    sget-object v0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer$OutputStreamInfo;->UNSET:Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer$OutputStreamInfo;

    iput-object v0, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->outputStreamInfo:Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer$OutputStreamInfo;

    .line 461
    iget-object v0, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->bypassBatchBuffer:Landroidx/media3/exoplayer/mediacodec/BatchBuffer;

    invoke-virtual {v0, v1}, Landroidx/media3/exoplayer/mediacodec/BatchBuffer;->ensureSpaceForWrite(I)V

    .line 462
    iget-object v0, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->bypassBatchBuffer:Landroidx/media3/exoplayer/mediacodec/BatchBuffer;

    iget-object v0, v0, Landroidx/media3/exoplayer/mediacodec/BatchBuffer;->data:Ljava/nio/ByteBuffer;

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 463
    new-instance v0, Landroidx/media3/exoplayer/audio/OggOpusAudioPacketizer;

    invoke-direct {v0}, Landroidx/media3/exoplayer/audio/OggOpusAudioPacketizer;-><init>()V

    iput-object v0, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->oggOpusAudioPacketizer:Landroidx/media3/exoplayer/audio/OggOpusAudioPacketizer;

    .line 465
    const/high16 v0, -0x40800000    # -1.0f

    iput v0, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->codecOperatingRate:F

    .line 466
    iput v1, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->codecAdaptationWorkaroundMode:I

    .line 467
    iput v1, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->codecReconfigurationState:I

    .line 468
    const/4 v0, -0x1

    iput v0, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->inputIndex:I

    .line 469
    iput v0, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->outputIndex:I

    .line 470
    iput-wide v2, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->codecHotswapDeadlineMs:J

    .line 471
    iput-wide v2, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->largestQueuedPresentationTimeUs:J

    .line 472
    iput-wide v2, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->lastProcessedOutputBufferTimeUs:J

    .line 473
    iput-wide v2, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->lastOutputBufferProcessedRealtimeMs:J

    .line 474
    iput v1, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->codecDrainState:I

    .line 475
    iput v1, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->codecDrainAction:I

    .line 476
    new-instance v0, Landroidx/media3/exoplayer/DecoderCounters;

    invoke-direct {v0}, Landroidx/media3/exoplayer/DecoderCounters;-><init>()V

    iput-object v0, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->decoderCounters:Landroidx/media3/exoplayer/DecoderCounters;

    .line 477
    iput-boolean v1, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->hasSkippedFlushAndWaitingForQueueInputBuffer:Z

    .line 478
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->skippedFlushOffsetUs:J

    .line 479
    invoke-static {}, Lcom/google/common/collect/ImmutableSet;->of()Lcom/google/common/collect/ImmutableSet;

    move-result-object v0

    iput-object v0, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->subscribedCodecParameterKeys:Lcom/google/common/collect/ImmutableSet;

    .line 480
    sget-object v0, Landroidx/media3/exoplayer/CodecParameters;->EMPTY:Landroidx/media3/exoplayer/CodecParameters;

    iput-object v0, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->activeCodecParameters:Landroidx/media3/exoplayer/CodecParameters;

    .line 481
    sget-object v0, Landroidx/media3/exoplayer/CodecParameters;->EMPTY:Landroidx/media3/exoplayer/CodecParameters;

    iput-object v0, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->lastDispatchedCodecParameters:Landroidx/media3/exoplayer/CodecParameters;

    .line 482
    return-void
.end method

.method static synthetic access$200(Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;)Landroidx/media3/exoplayer/Renderer$WakeupListener;
    .locals 1
    .param p0, "x0"    # Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;

    .line 124
    iget-object v0, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->wakeupListener:Landroidx/media3/exoplayer/Renderer$WakeupListener;

    return-object v0
.end method

.method private bypassRead()V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media3/exoplayer/ExoPlaybackException;
        }
    .end annotation

    .line 2672
    iget-boolean v0, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->inputStreamEnded:Z

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkState(Z)V

    .line 2673
    invoke-virtual {p0}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->getFormatHolder()Landroidx/media3/exoplayer/FormatHolder;

    move-result-object v0

    .line 2674
    .local v0, "formatHolder":Landroidx/media3/exoplayer/FormatHolder;
    iget-object v2, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->bypassSampleBuffer:Landroidx/media3/decoder/DecoderInputBuffer;

    invoke-virtual {v2}, Landroidx/media3/decoder/DecoderInputBuffer;->clear()V

    .line 2676
    :goto_0
    iget-object v2, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->bypassSampleBuffer:Landroidx/media3/decoder/DecoderInputBuffer;

    invoke-virtual {v2}, Landroidx/media3/decoder/DecoderInputBuffer;->clear()V

    .line 2677
    iget-object v2, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->bypassSampleBuffer:Landroidx/media3/decoder/DecoderInputBuffer;

    const/4 v3, 0x0

    invoke-virtual {p0, v0, v2, v3}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->readSource(Landroidx/media3/exoplayer/FormatHolder;Landroidx/media3/decoder/DecoderInputBuffer;I)I

    move-result v2

    .line 2678
    .local v2, "result":I
    packed-switch v2, :pswitch_data_0

    .line 2738
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1}, Ljava/lang/IllegalStateException;-><init>()V

    throw v1

    .line 2683
    :pswitch_0
    invoke-virtual {p0}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->hasReadStreamToEnd()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2685
    invoke-direct {p0}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->getLastOutputStreamInfo()Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer$OutputStreamInfo;

    move-result-object v1

    iget-wide v3, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->largestQueuedPresentationTimeUs:J

    iput-wide v3, v1, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer$OutputStreamInfo;->lastBufferTimeUs:J

    .line 2687
    :cond_0
    return-void

    .line 2689
    :pswitch_1
    iget-object v4, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->bypassSampleBuffer:Landroidx/media3/decoder/DecoderInputBuffer;

    invoke-virtual {v4}, Landroidx/media3/decoder/DecoderInputBuffer;->isEndOfStream()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 2690
    iput-boolean v1, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->inputStreamEnded:Z

    .line 2691
    invoke-direct {p0}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->getLastOutputStreamInfo()Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer$OutputStreamInfo;

    move-result-object v1

    iget-wide v3, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->largestQueuedPresentationTimeUs:J

    iput-wide v3, v1, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer$OutputStreamInfo;->lastBufferTimeUs:J

    .line 2692
    return-void

    .line 2694
    :cond_1
    iget-wide v4, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->largestQueuedPresentationTimeUs:J

    iget-object v6, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->bypassSampleBuffer:Landroidx/media3/decoder/DecoderInputBuffer;

    iget-wide v6, v6, Landroidx/media3/decoder/DecoderInputBuffer;->timeUs:J

    .line 2695
    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v4

    iput-wide v4, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->largestQueuedPresentationTimeUs:J

    .line 2696
    invoke-virtual {p0}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->hasReadStreamToEnd()Z

    move-result v4

    if-nez v4, :cond_2

    iget-object v4, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->buffer:Landroidx/media3/decoder/DecoderInputBuffer;

    invoke-virtual {v4}, Landroidx/media3/decoder/DecoderInputBuffer;->isLastSample()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 2698
    :cond_2
    invoke-direct {p0}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->getLastOutputStreamInfo()Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer$OutputStreamInfo;

    move-result-object v4

    iget-wide v5, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->largestQueuedPresentationTimeUs:J

    iput-wide v5, v4, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer$OutputStreamInfo;->lastBufferTimeUs:J

    .line 2700
    :cond_3
    iget-boolean v4, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->waitingForFirstSampleInFormat:Z

    const-string v5, "audio/opus"

    if-eqz v4, :cond_5

    .line 2702
    iget-object v4, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->inputFormat:Landroidx/media3/common/Format;

    invoke-static {v4}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/media3/common/Format;

    iput-object v4, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->outputFormat:Landroidx/media3/common/Format;

    .line 2703
    iget-object v4, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->outputFormat:Landroidx/media3/common/Format;

    iget-object v4, v4, Landroidx/media3/common/Format;->sampleMimeType:Ljava/lang/String;

    invoke-static {v4, v5}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    iget-object v4, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->outputFormat:Landroidx/media3/common/Format;

    iget-object v4, v4, Landroidx/media3/common/Format;->initializationData:Ljava/util/List;

    .line 2704
    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_4

    .line 2707
    iget-object v4, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->outputFormat:Landroidx/media3/common/Format;

    iget-object v4, v4, Landroidx/media3/common/Format;->initializationData:Ljava/util/List;

    .line 2708
    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [B

    invoke-static {v4}, Landroidx/media3/container/OpusUtil;->getPreSkipSamples([B)I

    move-result v4

    .line 2709
    .local v4, "numberPreSkipSamples":I
    iget-object v6, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->outputFormat:Landroidx/media3/common/Format;

    invoke-virtual {v6}, Landroidx/media3/common/Format;->buildUpon()Landroidx/media3/common/Format$Builder;

    move-result-object v6

    invoke-virtual {v6, v4}, Landroidx/media3/common/Format$Builder;->setEncoderDelay(I)Landroidx/media3/common/Format$Builder;

    move-result-object v6

    invoke-virtual {v6}, Landroidx/media3/common/Format$Builder;->build()Landroidx/media3/common/Format;

    move-result-object v6

    iput-object v6, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->outputFormat:Landroidx/media3/common/Format;

    .line 2711
    .end local v4    # "numberPreSkipSamples":I
    :cond_4
    iget-object v4, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->outputFormat:Landroidx/media3/common/Format;

    const/4 v6, 0x0

    invoke-virtual {p0, v4, v6}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->onOutputFormatChanged(Landroidx/media3/common/Format;Landroid/media/MediaFormat;)V

    .line 2712
    iput-boolean v3, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->waitingForFirstSampleInFormat:Z

    .line 2715
    :cond_5
    iget-object v3, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->bypassSampleBuffer:Landroidx/media3/decoder/DecoderInputBuffer;

    invoke-virtual {v3}, Landroidx/media3/decoder/DecoderInputBuffer;->flip()V

    .line 2717
    iget-object v3, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->outputFormat:Landroidx/media3/common/Format;

    if-eqz v3, :cond_7

    iget-object v3, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->outputFormat:Landroidx/media3/common/Format;

    iget-object v3, v3, Landroidx/media3/common/Format;->sampleMimeType:Ljava/lang/String;

    .line 2718
    invoke-static {v3, v5}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 2719
    iget-object v3, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->bypassSampleBuffer:Landroidx/media3/decoder/DecoderInputBuffer;

    invoke-virtual {v3}, Landroidx/media3/decoder/DecoderInputBuffer;->hasSupplementalData()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 2721
    iget-object v3, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->bypassSampleBuffer:Landroidx/media3/decoder/DecoderInputBuffer;

    iget-object v4, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->outputFormat:Landroidx/media3/common/Format;

    iput-object v4, v3, Landroidx/media3/decoder/DecoderInputBuffer;->format:Landroidx/media3/common/Format;

    .line 2722
    iget-object v3, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->bypassSampleBuffer:Landroidx/media3/decoder/DecoderInputBuffer;

    invoke-virtual {p0, v3}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->handleInputBufferSupplementalData(Landroidx/media3/decoder/DecoderInputBuffer;)V

    .line 2724
    :cond_6
    nop

    .line 2725
    invoke-virtual {p0}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->getLastResetPositionUs()J

    move-result-wide v3

    iget-object v5, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->bypassSampleBuffer:Landroidx/media3/decoder/DecoderInputBuffer;

    iget-wide v5, v5, Landroidx/media3/decoder/DecoderInputBuffer;->timeUs:J

    .line 2724
    invoke-static {v3, v4, v5, v6}, Landroidx/media3/container/OpusUtil;->needToDecodeOpusFrame(JJ)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 2728
    iget-object v3, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->oggOpusAudioPacketizer:Landroidx/media3/exoplayer/audio/OggOpusAudioPacketizer;

    iget-object v4, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->bypassSampleBuffer:Landroidx/media3/decoder/DecoderInputBuffer;

    iget-object v5, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->outputFormat:Landroidx/media3/common/Format;

    iget-object v5, v5, Landroidx/media3/common/Format;->initializationData:Ljava/util/List;

    invoke-virtual {v3, v4, v5}, Landroidx/media3/exoplayer/audio/OggOpusAudioPacketizer;->packetize(Landroidx/media3/decoder/DecoderInputBuffer;Ljava/util/List;)V

    .line 2731
    :cond_7
    invoke-direct {p0}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->haveBypassBatchBufferAndNewSampleSameDecodeOnlyState()Z

    move-result v3

    if-eqz v3, :cond_9

    iget-object v3, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->bypassBatchBuffer:Landroidx/media3/exoplayer/mediacodec/BatchBuffer;

    iget-object v4, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->bypassSampleBuffer:Landroidx/media3/decoder/DecoderInputBuffer;

    .line 2732
    invoke-virtual {v3, v4}, Landroidx/media3/exoplayer/mediacodec/BatchBuffer;->append(Landroidx/media3/decoder/DecoderInputBuffer;)Z

    move-result v3

    if-nez v3, :cond_8

    goto :goto_1

    .line 2740
    .end local v2    # "result":I
    :cond_8
    goto/16 :goto_0

    .line 2733
    .restart local v2    # "result":I
    :cond_9
    :goto_1
    iput-boolean v1, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->bypassSampleBufferPending:Z

    .line 2734
    return-void

    .line 2680
    :pswitch_2
    invoke-virtual {p0, v0}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->onInputFormatChanged(Landroidx/media3/exoplayer/FormatHolder;)Landroidx/media3/exoplayer/DecoderReuseEvaluation;

    .line 2681
    return-void

    nop

    :pswitch_data_0
    .packed-switch -0x5
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private bypassRender(JJ)Z
    .locals 17
    .param p1, "positionUs"    # J
    .param p3, "elapsedRealtimeUs"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media3/exoplayer/ExoPlaybackException;
        }
    .end annotation

    .line 2609
    move-object/from16 v0, p0

    iget-boolean v1, v0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->outputStreamEnded:Z

    const/4 v15, 0x1

    xor-int/2addr v1, v15

    invoke-static {v1}, Lcom/google/common/base/Preconditions;->checkState(Z)V

    .line 2610
    iget-object v1, v0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->bypassBatchBuffer:Landroidx/media3/exoplayer/mediacodec/BatchBuffer;

    invoke-virtual {v1}, Landroidx/media3/exoplayer/mediacodec/BatchBuffer;->hasSamples()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    .line 2611
    iget-object v1, v0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->bypassBatchBuffer:Landroidx/media3/exoplayer/mediacodec/BatchBuffer;

    iget-object v6, v1, Landroidx/media3/exoplayer/mediacodec/BatchBuffer;->data:Ljava/nio/ByteBuffer;

    iget v7, v0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->outputIndex:I

    iget-object v1, v0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->bypassBatchBuffer:Landroidx/media3/exoplayer/mediacodec/BatchBuffer;

    .line 2618
    invoke-virtual {v1}, Landroidx/media3/exoplayer/mediacodec/BatchBuffer;->getSampleCount()I

    move-result v9

    iget-object v1, v0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->bypassBatchBuffer:Landroidx/media3/exoplayer/mediacodec/BatchBuffer;

    .line 2619
    invoke-virtual {v1}, Landroidx/media3/exoplayer/mediacodec/BatchBuffer;->getFirstSampleTimeUs()J

    move-result-wide v10

    .line 2620
    invoke-virtual {v0}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->getLastResetPositionUs()J

    move-result-wide v3

    iget-object v1, v0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->bypassBatchBuffer:Landroidx/media3/exoplayer/mediacodec/BatchBuffer;

    invoke-virtual {v1}, Landroidx/media3/exoplayer/mediacodec/BatchBuffer;->getLastSampleTimeUs()J

    move-result-wide v12

    invoke-direct {v0, v3, v4, v12, v13}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->isDecodeOnly(JJ)Z

    move-result v12

    iget-object v1, v0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->bypassBatchBuffer:Landroidx/media3/exoplayer/mediacodec/BatchBuffer;

    .line 2621
    invoke-virtual {v1}, Landroidx/media3/exoplayer/mediacodec/BatchBuffer;->isEndOfStream()Z

    move-result v13

    iget-object v1, v0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->outputFormat:Landroidx/media3/common/Format;

    .line 2622
    invoke-static {v1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v14, v1

    check-cast v14, Landroidx/media3/common/Format;

    .line 2611
    const/4 v5, 0x0

    const/4 v8, 0x0

    move-wide/from16 v3, p3

    move v15, v2

    move-wide/from16 v1, p1

    invoke-virtual/range {v0 .. v14}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->processOutputBuffer(JJLandroidx/media3/exoplayer/mediacodec/MediaCodecAdapter;Ljava/nio/ByteBuffer;IIIJZZLandroidx/media3/common/Format;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 2624
    iget-object v1, v0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->bypassBatchBuffer:Landroidx/media3/exoplayer/mediacodec/BatchBuffer;

    invoke-virtual {v1}, Landroidx/media3/exoplayer/mediacodec/BatchBuffer;->getLastSampleTimeUs()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->onProcessedOutputBuffer(J)V

    .line 2625
    iget-object v1, v0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->bypassBatchBuffer:Landroidx/media3/exoplayer/mediacodec/BatchBuffer;

    invoke-virtual {v1}, Landroidx/media3/exoplayer/mediacodec/BatchBuffer;->clear()V

    goto :goto_0

    .line 2628
    :cond_0
    return v15

    .line 2610
    :cond_1
    move v15, v2

    .line 2633
    :goto_0
    iget-boolean v1, v0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->inputStreamEnded:Z

    if-eqz v1, :cond_2

    .line 2634
    const/4 v1, 0x1

    iput-boolean v1, v0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->outputStreamEnded:Z

    .line 2635
    return v15

    .line 2638
    :cond_2
    iget-boolean v1, v0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->bypassSampleBufferPending:Z

    if-eqz v1, :cond_3

    .line 2639
    iget-object v1, v0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->bypassBatchBuffer:Landroidx/media3/exoplayer/mediacodec/BatchBuffer;

    iget-object v2, v0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->bypassSampleBuffer:Landroidx/media3/decoder/DecoderInputBuffer;

    invoke-virtual {v1, v2}, Landroidx/media3/exoplayer/mediacodec/BatchBuffer;->append(Landroidx/media3/decoder/DecoderInputBuffer;)Z

    move-result v1

    invoke-static {v1}, Lcom/google/common/base/Preconditions;->checkState(Z)V

    .line 2640
    iput-boolean v15, v0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->bypassSampleBufferPending:Z

    .line 2643
    :cond_3
    iget-boolean v1, v0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->bypassDrainAndReinitialize:Z

    if-eqz v1, :cond_5

    .line 2644
    iget-object v1, v0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->bypassBatchBuffer:Landroidx/media3/exoplayer/mediacodec/BatchBuffer;

    invoke-virtual {v1}, Landroidx/media3/exoplayer/mediacodec/BatchBuffer;->hasSamples()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 2647
    const/16 v16, 0x1

    return v16

    .line 2650
    :cond_4
    const/16 v16, 0x1

    invoke-direct {v0}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->disableBypass()V

    .line 2651
    iput-boolean v15, v0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->bypassDrainAndReinitialize:Z

    .line 2652
    invoke-virtual {v0}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->maybeInitCodecOrBypass()V

    .line 2653
    iget-boolean v1, v0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->bypassEnabled:Z

    if-nez v1, :cond_6

    .line 2655
    return v15

    .line 2643
    :cond_5
    const/16 v16, 0x1

    .line 2660
    :cond_6
    invoke-direct {v0}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->bypassRead()V

    .line 2662
    iget-object v1, v0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->bypassBatchBuffer:Landroidx/media3/exoplayer/mediacodec/BatchBuffer;

    invoke-virtual {v1}, Landroidx/media3/exoplayer/mediacodec/BatchBuffer;->hasSamples()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 2663
    iget-object v1, v0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->bypassBatchBuffer:Landroidx/media3/exoplayer/mediacodec/BatchBuffer;

    invoke-virtual {v1}, Landroidx/media3/exoplayer/mediacodec/BatchBuffer;->flip()V

    .line 2668
    :cond_7
    iget-object v1, v0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->bypassBatchBuffer:Landroidx/media3/exoplayer/mediacodec/BatchBuffer;

    invoke-virtual {v1}, Landroidx/media3/exoplayer/mediacodec/BatchBuffer;->hasSamples()Z

    move-result v1

    if-nez v1, :cond_8

    iget-boolean v1, v0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->inputStreamEnded:Z

    if-nez v1, :cond_8

    iget-boolean v1, v0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->bypassDrainAndReinitialize:Z

    if-eqz v1, :cond_9

    :cond_8
    move/from16 v15, v16

    :cond_9
    return v15
.end method

.method private checkAndNotifyCodecParameterChanges(Landroid/media/MediaFormat;)V
    .locals 2
    .param p1, "mediaFormat"    # Landroid/media/MediaFormat;

    .line 1149
    iget-object v0, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->subscribedCodecParameterKeys:Lcom/google/common/collect/ImmutableSet;

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableSet;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1150
    return-void

    .line 1153
    :cond_0
    iget-object v0, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->subscribedCodecParameterKeys:Lcom/google/common/collect/ImmutableSet;

    .line 1154
    invoke-static {p1, v0}, Landroidx/media3/exoplayer/CodecParameters;->createFrom(Landroid/media/MediaFormat;Ljava/util/Set;)Landroidx/media3/exoplayer/CodecParameters$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/media3/exoplayer/CodecParameters$Builder;->build()Landroidx/media3/exoplayer/CodecParameters;

    move-result-object v0

    .line 1156
    .local v0, "currentValues":Landroidx/media3/exoplayer/CodecParameters;
    iget-object v1, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->lastDispatchedCodecParameters:Landroidx/media3/exoplayer/CodecParameters;

    invoke-virtual {v0, v1}, Landroidx/media3/exoplayer/CodecParameters;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1157
    return-void

    .line 1160
    :cond_1
    iput-object v0, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->lastDispatchedCodecParameters:Landroidx/media3/exoplayer/CodecParameters;

    .line 1161
    invoke-virtual {p0, v0}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->onCodecParametersChanged(Landroidx/media3/exoplayer/CodecParameters;)V

    .line 1162
    return-void
.end method

.method private codecAdaptationWorkaroundMode(Ljava/lang/String;)I
    .locals 2
    .param p1, "name"    # Ljava/lang/String;

    .line 2798
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x19

    if-gt v0, v1, :cond_1

    .line 2799
    const-string v0, "OMX.Exynos.avc.dec.secure"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    .line 2800
    const-string v1, "SM-T585"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    .line 2801
    const-string v1, "SM-A510"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    .line 2802
    const-string v1, "SM-A520"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    .line 2803
    const-string v1, "SM-J700"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2804
    :cond_0
    const/4 v0, 0x2

    return v0

    .line 2805
    :cond_1
    nop

    .line 2813
    const/4 v0, 0x0

    return v0
.end method

.method private static codecNeedsEosFlushWorkaround(Ljava/lang/String;)Z
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 2875
    const/4 v0, 0x0

    return v0
.end method

.method private static codecNeedsEosPropagationWorkaround(Landroidx/media3/exoplayer/mediacodec/MediaCodecInfo;)Z
    .locals 3
    .param p0, "codecInfo"    # Landroidx/media3/exoplayer/mediacodec/MediaCodecInfo;

    .line 2849
    iget-object v0, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecInfo;->name:Ljava/lang/String;

    .line 2850
    .local v0, "name":Ljava/lang/String;
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x19

    if-gt v1, v2, :cond_0

    const-string v1, "OMX.rk.video_decoder.avc"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    :cond_0
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1d

    if-gt v1, v2, :cond_1

    .line 2852
    const-string v1, "OMX.broadcom.video_decoder.tunnel"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 2853
    const-string v1, "OMX.broadcom.video_decoder.tunnel.secure"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 2854
    const-string v1, "OMX.bcm.vdec.avc.tunnel"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 2855
    const-string v1, "OMX.bcm.vdec.avc.tunnel.secure"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 2856
    const-string v1, "OMX.bcm.vdec.hevc.tunnel"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 2857
    const-string v1, "OMX.bcm.vdec.hevc.tunnel.secure"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    :cond_1
    sget-object v1, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    .line 2858
    const-string v2, "Amazon"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const-string v1, "AFTS"

    sget-object v2, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-boolean v1, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecInfo;->secure:Z

    if-eqz v1, :cond_3

    :cond_2
    const/4 v1, 0x1

    goto :goto_0

    :cond_3
    const/4 v1, 0x0

    .line 2850
    :goto_0
    return v1
.end method

.method private static codecNeedsSosFlushWorkaround(Ljava/lang/String;)Z
    .locals 2
    .param p0, "name"    # Ljava/lang/String;

    .line 2831
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1d

    if-ne v0, v1, :cond_0

    const-string v0, "c2.android.aac.decoder"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private disableBypass()V
    .locals 1

    .line 848
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->bypassEnabled:Z

    .line 849
    invoke-direct {p0}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->resetBypassState()V

    .line 850
    return-void
.end method

.method private drainAndFlushCodec()Z
    .locals 2

    .line 2147
    iget-boolean v0, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->codecReceivedBuffers:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    .line 2148
    iput v1, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->codecDrainState:I

    .line 2149
    iget-boolean v0, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->codecNeedsEosFlushWorkaround:Z

    if-eqz v0, :cond_0

    .line 2150
    const/4 v0, 0x3

    iput v0, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->codecDrainAction:I

    .line 2151
    const/4 v0, 0x0

    return v0

    .line 2153
    :cond_0
    iput v1, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->codecDrainAction:I

    .line 2156
    :cond_1
    return v1
.end method

.method private drainAndReinitializeCodec()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media3/exoplayer/ExoPlaybackException;
        }
    .end annotation

    .line 2191
    iget-boolean v0, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->codecReceivedBuffers:Z

    if-eqz v0, :cond_0

    .line 2192
    const/4 v0, 0x1

    iput v0, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->codecDrainState:I

    .line 2193
    const/4 v0, 0x3

    iput v0, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->codecDrainAction:I

    goto :goto_0

    .line 2196
    :cond_0
    invoke-direct {p0}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->reinitializeCodec()V

    .line 2198
    :goto_0
    return-void
.end method

.method private drainAndUpdateCodecDrmSession()Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media3/exoplayer/ExoPlaybackException;
        }
    .end annotation

    .line 2169
    iget-boolean v0, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->codecReceivedBuffers:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    .line 2170
    iput v1, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->codecDrainState:I

    .line 2171
    iget-boolean v0, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->codecNeedsEosFlushWorkaround:Z

    if-eqz v0, :cond_0

    .line 2172
    const/4 v0, 0x3

    iput v0, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->codecDrainAction:I

    .line 2173
    const/4 v0, 0x0

    return v0

    .line 2175
    :cond_0
    const/4 v0, 0x2

    iput v0, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->codecDrainAction:I

    goto :goto_0

    .line 2179
    :cond_1
    invoke-direct {p0}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->updateDrmSession()V

    .line 2181
    :goto_0
    return v1
.end method

.method private drainOutputBuffer(JJ)Z
    .locals 17
    .param p1, "positionUs"    # J
    .param p3, "elapsedRealtimeUs"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media3/exoplayer/ExoPlaybackException;
        }
    .end annotation

    .line 2206
    move-object/from16 v0, p0

    iget-object v1, v0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->codec:Landroidx/media3/exoplayer/mediacodec/MediaCodecAdapter;

    invoke-static {v1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Landroidx/media3/exoplayer/mediacodec/MediaCodecAdapter;

    .line 2207
    .local v5, "codec":Landroidx/media3/exoplayer/mediacodec/MediaCodecAdapter;
    invoke-direct {v0}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->hasOutputBuffer()Z

    move-result v1

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    const/4 v15, 0x1

    const/4 v4, 0x0

    if-nez v1, :cond_8

    .line 2208
    iget-object v1, v0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->outputBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    invoke-interface {v5, v1}, Landroidx/media3/exoplayer/mediacodec/MediaCodecAdapter;->dequeueOutputBufferIndex(Landroid/media/MediaCodec$BufferInfo;)I

    move-result v1

    .line 2209
    .local v1, "outputIndex":I
    if-gez v1, :cond_4

    .line 2210
    const/4 v6, -0x2

    if-ne v1, v6, :cond_0

    .line 2211
    invoke-direct {v0}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->processOutputMediaFormatChanged()V

    .line 2212
    return v15

    .line 2215
    :cond_0
    iget-boolean v6, v0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->codecNeedsEosPropagation:Z

    if-eqz v6, :cond_2

    iget-boolean v6, v0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->inputStreamEnded:Z

    if-nez v6, :cond_1

    iget v6, v0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->codecDrainState:I

    const/4 v7, 0x2

    if-ne v6, v7, :cond_2

    .line 2217
    :cond_1
    invoke-direct {v0}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->processEndOfStream()V

    .line 2219
    :cond_2
    iget-wide v6, v0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->lastOutputBufferProcessedRealtimeMs:J

    cmp-long v2, v6, v2

    if-eqz v2, :cond_3

    iget-wide v2, v0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->lastOutputBufferProcessedRealtimeMs:J

    const-wide/16 v6, 0x64

    add-long/2addr v2, v6

    .line 2220
    invoke-virtual {v0}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->getClock()Landroidx/media3/common/util/Clock;

    move-result-object v6

    invoke-interface {v6}, Landroidx/media3/common/util/Clock;->currentTimeMillis()J

    move-result-wide v6

    cmp-long v2, v2, v6

    if-gez v2, :cond_3

    .line 2224
    invoke-direct {v0}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->processEndOfStream()V

    .line 2226
    :cond_3
    return v4

    .line 2230
    :cond_4
    iget-object v6, v0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->outputBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    iget-wide v7, v6, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    iget-wide v9, v0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->skippedFlushOffsetUs:J

    sub-long/2addr v7, v9

    iput-wide v7, v6, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    .line 2231
    iget-boolean v6, v0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->shouldSkipAdaptationWorkaroundOutputBuffer:Z

    if-eqz v6, :cond_5

    .line 2232
    iput-boolean v4, v0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->shouldSkipAdaptationWorkaroundOutputBuffer:Z

    .line 2233
    invoke-interface {v5, v1, v4}, Landroidx/media3/exoplayer/mediacodec/MediaCodecAdapter;->releaseOutputBuffer(IZ)V

    .line 2234
    return v15

    .line 2235
    :cond_5
    iget-object v6, v0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->outputBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    iget v6, v6, Landroid/media/MediaCodec$BufferInfo;->size:I

    if-nez v6, :cond_6

    iget-object v6, v0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->outputBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    iget v6, v6, Landroid/media/MediaCodec$BufferInfo;->flags:I

    and-int/lit8 v6, v6, 0x4

    if-eqz v6, :cond_6

    .line 2238
    invoke-direct {v0}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->processEndOfStream()V

    .line 2239
    return v4

    .line 2242
    :cond_6
    iput v1, v0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->outputIndex:I

    .line 2243
    invoke-interface {v5, v1}, Landroidx/media3/exoplayer/mediacodec/MediaCodecAdapter;->getOutputBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object v6

    iput-object v6, v0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->outputBuffer:Ljava/nio/ByteBuffer;

    .line 2247
    iget-object v6, v0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->outputBuffer:Ljava/nio/ByteBuffer;

    if-eqz v6, :cond_7

    .line 2248
    iget-object v6, v0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->outputBuffer:Ljava/nio/ByteBuffer;

    iget-object v7, v0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->outputBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    iget v7, v7, Landroid/media/MediaCodec$BufferInfo;->offset:I

    invoke-virtual {v6, v7}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 2249
    iget-object v6, v0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->outputBuffer:Ljava/nio/ByteBuffer;

    iget-object v7, v0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->outputBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    iget v7, v7, Landroid/media/MediaCodec$BufferInfo;->offset:I

    iget-object v8, v0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->outputBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    iget v8, v8, Landroid/media/MediaCodec$BufferInfo;->size:I

    add-int/2addr v7, v8

    invoke-virtual {v6, v7}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 2251
    :cond_7
    iget-object v6, v0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->outputBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    iget-wide v6, v6, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    invoke-virtual {v0, v6, v7}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->updateOutputFormatForTime(J)V

    .line 2261
    .end local v1    # "outputIndex":I
    :cond_8
    iget-boolean v1, v0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->hasSkippedFlushAndWaitingForQueueInputBuffer:Z

    if-nez v1, :cond_a

    iget-object v1, v0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->outputBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    iget-wide v6, v1, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    .line 2263
    invoke-virtual {v0}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->getLastResetPositionUs()J

    move-result-wide v8

    cmp-long v1, v6, v8

    if-gez v1, :cond_9

    goto :goto_0

    :cond_9
    move v1, v4

    goto :goto_1

    :cond_a
    :goto_0
    move v1, v15

    :goto_1
    iput-boolean v1, v0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->isDecodeOnlyOutputBuffer:Z

    .line 2264
    iget-object v1, v0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->outputStreamInfo:Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer$OutputStreamInfo;

    iget-wide v6, v1, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer$OutputStreamInfo;->lastBufferTimeUs:J

    cmp-long v1, v6, v2

    if-eqz v1, :cond_b

    iget-object v1, v0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->outputStreamInfo:Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer$OutputStreamInfo;

    iget-wide v1, v1, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer$OutputStreamInfo;->lastBufferTimeUs:J

    iget-object v3, v0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->outputBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    iget-wide v6, v3, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    cmp-long v1, v1, v6

    if-gtz v1, :cond_b

    move v1, v15

    goto :goto_2

    :cond_b
    move v1, v4

    :goto_2
    iput-boolean v1, v0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->isLastOutputBuffer:Z

    .line 2268
    iget-object v6, v0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->outputBuffer:Ljava/nio/ByteBuffer;

    iget v7, v0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->outputIndex:I

    iget-object v1, v0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->outputBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    iget v8, v1, Landroid/media/MediaCodec$BufferInfo;->flags:I

    iget-object v1, v0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->outputBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    iget-wide v10, v1, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    iget-boolean v12, v0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->isDecodeOnlyOutputBuffer:Z

    iget-boolean v13, v0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->isLastOutputBuffer:Z

    iget-object v1, v0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->outputFormat:Landroidx/media3/common/Format;

    .line 2280
    invoke-static {v1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v14, v1

    check-cast v14, Landroidx/media3/common/Format;

    .line 2269
    const/4 v9, 0x1

    move-wide/from16 v1, p1

    move/from16 v16, v4

    move-wide/from16 v3, p3

    invoke-virtual/range {v0 .. v14}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->processOutputBuffer(JJLandroidx/media3/exoplayer/mediacodec/MediaCodecAdapter;Ljava/nio/ByteBuffer;IIIJZZLandroidx/media3/common/Format;)Z

    move-result v6

    .line 2281
    .local v6, "processedOutputBuffer":Z
    if-eqz v6, :cond_f

    .line 2282
    iget-object v1, v0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->outputBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    iget-wide v1, v1, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    invoke-virtual {v0, v1, v2}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->onProcessedOutputBuffer(J)V

    .line 2283
    iget-object v1, v0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->outputBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    iget v1, v1, Landroid/media/MediaCodec$BufferInfo;->flags:I

    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_c

    move v4, v15

    goto :goto_3

    :cond_c
    move/from16 v4, v16

    .line 2284
    .local v4, "isEndOfStream":Z
    :goto_3
    if-nez v4, :cond_d

    iget-boolean v1, v0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->codecReceivedEos:Z

    if-eqz v1, :cond_d

    iget-boolean v1, v0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->isLastOutputBuffer:Z

    if-eqz v1, :cond_d

    .line 2285
    invoke-virtual {v0}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->getClock()Landroidx/media3/common/util/Clock;

    move-result-object v1

    invoke-interface {v1}, Landroidx/media3/common/util/Clock;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, v0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->lastOutputBufferProcessedRealtimeMs:J

    .line 2287
    :cond_d
    invoke-direct {v0}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->resetOutputBuffer()V

    .line 2288
    if-nez v4, :cond_e

    .line 2289
    return v15

    .line 2291
    :cond_e
    invoke-direct {v0}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->processEndOfStream()V

    .line 2294
    .end local v4    # "isEndOfStream":Z
    :cond_f
    return v16
.end method

.method private drmNeedsCodecReinitialization(Landroidx/media3/exoplayer/mediacodec/MediaCodecInfo;Landroidx/media3/common/Format;Landroidx/media3/exoplayer/drm/DrmSession;Landroidx/media3/exoplayer/drm/DrmSession;)Z
    .locals 6
    .param p1, "codecInfo"    # Landroidx/media3/exoplayer/mediacodec/MediaCodecInfo;
    .param p2, "newFormat"    # Landroidx/media3/common/Format;
    .param p3, "oldSession"    # Landroidx/media3/exoplayer/drm/DrmSession;
    .param p4, "newSession"    # Landroidx/media3/exoplayer/drm/DrmSession;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media3/exoplayer/ExoPlaybackException;
        }
    .end annotation

    .line 2508
    const/4 v0, 0x0

    if-ne p3, p4, :cond_0

    .line 2510
    return v0

    .line 2515
    :cond_0
    const/4 v1, 0x1

    if-eqz p4, :cond_c

    if-nez p3, :cond_1

    goto/16 :goto_3

    .line 2520
    :cond_1
    invoke-interface {p4}, Landroidx/media3/exoplayer/drm/DrmSession;->getCryptoConfig()Landroidx/media3/decoder/CryptoConfig;

    move-result-object v2

    .line 2521
    .local v2, "newCryptoConfig":Landroidx/media3/decoder/CryptoConfig;
    if-nez v2, :cond_2

    .line 2529
    return v1

    .line 2532
    :cond_2
    invoke-interface {p3}, Landroidx/media3/exoplayer/drm/DrmSession;->getCryptoConfig()Landroidx/media3/decoder/CryptoConfig;

    move-result-object v3

    .line 2533
    .local v3, "oldCryptoConfig":Landroidx/media3/decoder/CryptoConfig;
    if-eqz v3, :cond_b

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    goto :goto_2

    .line 2540
    :cond_3
    instance-of v4, v2, Landroidx/media3/exoplayer/drm/FrameworkCryptoConfig;

    if-nez v4, :cond_4

    .line 2545
    return v0

    .line 2550
    :cond_4
    invoke-interface {p4}, Landroidx/media3/exoplayer/drm/DrmSession;->getSchemeUuid()Ljava/util/UUID;

    move-result-object v4

    invoke-interface {p3}, Landroidx/media3/exoplayer/drm/DrmSession;->getSchemeUuid()Ljava/util/UUID;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_5

    .line 2552
    return v1

    .line 2555
    :cond_5
    sget-object v4, Landroidx/media3/common/C;->PLAYREADY_UUID:Ljava/util/UUID;

    invoke-interface {p3}, Landroidx/media3/exoplayer/drm/DrmSession;->getSchemeUuid()Ljava/util/UUID;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_a

    sget-object v4, Landroidx/media3/common/C;->PLAYREADY_UUID:Ljava/util/UUID;

    .line 2556
    invoke-interface {p4}, Landroidx/media3/exoplayer/drm/DrmSession;->getSchemeUuid()Ljava/util/UUID;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    goto :goto_1

    .line 2565
    :cond_6
    iget-boolean v4, p1, Landroidx/media3/exoplayer/mediacodec/MediaCodecInfo;->secure:Z

    if-nez v4, :cond_9

    .line 2566
    invoke-interface {p4}, Landroidx/media3/exoplayer/drm/DrmSession;->getState()I

    move-result v4

    const/4 v5, 0x2

    if-eq v4, v5, :cond_8

    .line 2567
    invoke-interface {p4}, Landroidx/media3/exoplayer/drm/DrmSession;->getState()I

    move-result v4

    const/4 v5, 0x3

    if-eq v4, v5, :cond_7

    .line 2568
    invoke-interface {p4}, Landroidx/media3/exoplayer/drm/DrmSession;->getState()I

    move-result v4

    const/4 v5, 0x4

    if-ne v4, v5, :cond_9

    :cond_7
    iget-object v4, p2, Landroidx/media3/common/Format;->sampleMimeType:Ljava/lang/String;

    .line 2569
    invoke-static {v4}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-interface {p4, v4}, Landroidx/media3/exoplayer/drm/DrmSession;->requiresSecureDecoder(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_9

    :cond_8
    move v0, v1

    goto :goto_0

    :cond_9
    nop

    .line 2565
    :goto_0
    return v0

    .line 2560
    :cond_a
    :goto_1
    return v1

    .line 2537
    :cond_b
    :goto_2
    return v1

    .line 2517
    .end local v2    # "newCryptoConfig":Landroidx/media3/decoder/CryptoConfig;
    .end local v3    # "oldCryptoConfig":Landroidx/media3/decoder/CryptoConfig;
    :cond_c
    :goto_3
    return v1
.end method

.method private feedInputBuffer()Z
    .locals 21
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media3/exoplayer/ExoPlaybackException;
        }
    .end annotation

    .line 1475
    move-object/from16 v1, p0

    iget-object v0, v1, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->codec:Landroidx/media3/exoplayer/mediacodec/MediaCodecAdapter;

    const/4 v2, 0x0

    if-eqz v0, :cond_1c

    iget v0, v1, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->codecDrainState:I

    const/4 v3, 0x2

    if-eq v0, v3, :cond_1c

    iget-boolean v0, v1, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->inputStreamEnded:Z

    if-eqz v0, :cond_0

    goto/16 :goto_4

    .line 1478
    :cond_0
    iget v0, v1, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->codecDrainState:I

    if-nez v0, :cond_1

    invoke-virtual {v1}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->shouldReinitCodec()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1479
    invoke-direct {v1}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->drainAndReinitializeCodec()V

    .line 1482
    :cond_1
    iget-object v0, v1, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->codec:Landroidx/media3/exoplayer/mediacodec/MediaCodecAdapter;

    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Landroidx/media3/exoplayer/mediacodec/MediaCodecAdapter;

    .line 1483
    .local v4, "codec":Landroidx/media3/exoplayer/mediacodec/MediaCodecAdapter;
    iget v0, v1, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->inputIndex:I

    if-gez v0, :cond_3

    .line 1484
    invoke-interface {v4}, Landroidx/media3/exoplayer/mediacodec/MediaCodecAdapter;->dequeueInputBufferIndex()I

    move-result v0

    iput v0, v1, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->inputIndex:I

    .line 1485
    iget v0, v1, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->inputIndex:I

    if-gez v0, :cond_2

    .line 1486
    return v2

    .line 1488
    :cond_2
    iget-object v0, v1, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->buffer:Landroidx/media3/decoder/DecoderInputBuffer;

    iget v5, v1, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->inputIndex:I

    invoke-interface {v4, v5}, Landroidx/media3/exoplayer/mediacodec/MediaCodecAdapter;->getInputBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object v5

    iput-object v5, v0, Landroidx/media3/decoder/DecoderInputBuffer;->data:Ljava/nio/ByteBuffer;

    .line 1489
    iget-object v0, v1, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->buffer:Landroidx/media3/decoder/DecoderInputBuffer;

    invoke-virtual {v0}, Landroidx/media3/decoder/DecoderInputBuffer;->clear()V

    .line 1492
    :cond_3
    iget v0, v1, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->codecDrainState:I

    const/4 v11, 0x1

    if-ne v0, v11, :cond_5

    .line 1495
    iget-boolean v0, v1, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->codecNeedsEosPropagation:Z

    if-eqz v0, :cond_4

    goto :goto_0

    .line 1501
    :cond_4
    iput-boolean v11, v1, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->codecReceivedEos:Z

    .line 1502
    iget v5, v1, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->inputIndex:I

    const-wide/16 v8, 0x0

    const/4 v10, 0x4

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-interface/range {v4 .. v10}, Landroidx/media3/exoplayer/mediacodec/MediaCodecAdapter;->queueInputBuffer(IIIJI)V

    .line 1503
    invoke-direct {v1}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->resetInputBuffer()V

    .line 1505
    :goto_0
    iput v3, v1, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->codecDrainState:I

    .line 1506
    return v2

    .line 1509
    :cond_5
    iget-boolean v0, v1, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->codecNeedsAdaptationWorkaroundBuffer:Z

    if-eqz v0, :cond_6

    .line 1510
    iput-boolean v2, v1, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->codecNeedsAdaptationWorkaroundBuffer:Z

    .line 1511
    iget-object v0, v1, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->buffer:Landroidx/media3/decoder/DecoderInputBuffer;

    iget-object v0, v0, Landroidx/media3/decoder/DecoderInputBuffer;->data:Ljava/nio/ByteBuffer;

    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/nio/ByteBuffer;

    sget-object v2, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->ADAPTATION_WORKAROUND_BUFFER:[B

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 1512
    iget v5, v1, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->inputIndex:I

    sget-object v0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->ADAPTATION_WORKAROUND_BUFFER:[B

    array-length v7, v0

    const-wide/16 v8, 0x0

    const/4 v10, 0x0

    const/4 v6, 0x0

    invoke-interface/range {v4 .. v10}, Landroidx/media3/exoplayer/mediacodec/MediaCodecAdapter;->queueInputBuffer(IIIJI)V

    .line 1513
    invoke-direct {v1}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->resetInputBuffer()V

    .line 1514
    iput-boolean v11, v1, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->codecReceivedBuffers:Z

    .line 1515
    return v11

    .line 1520
    :cond_6
    iget v0, v1, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->codecReconfigurationState:I

    if-ne v0, v11, :cond_8

    .line 1521
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v5, v1, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->codecInputFormat:Landroidx/media3/common/Format;

    invoke-static {v5}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/media3/common/Format;

    iget-object v5, v5, Landroidx/media3/common/Format;->initializationData:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v0, v5, :cond_7

    .line 1522
    iget-object v5, v1, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->codecInputFormat:Landroidx/media3/common/Format;

    iget-object v5, v5, Landroidx/media3/common/Format;->initializationData:Ljava/util/List;

    invoke-interface {v5, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [B

    .line 1523
    .local v5, "data":[B
    iget-object v6, v1, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->buffer:Landroidx/media3/decoder/DecoderInputBuffer;

    iget-object v6, v6, Landroidx/media3/decoder/DecoderInputBuffer;->data:Ljava/nio/ByteBuffer;

    invoke-static {v6}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/nio/ByteBuffer;

    invoke-virtual {v6, v5}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 1521
    .end local v5    # "data":[B
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1525
    .end local v0    # "i":I
    :cond_7
    iput v3, v1, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->codecReconfigurationState:I

    .line 1527
    :cond_8
    iget-object v0, v1, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->buffer:Landroidx/media3/decoder/DecoderInputBuffer;

    iget-object v0, v0, Landroidx/media3/decoder/DecoderInputBuffer;->data:Ljava/nio/ByteBuffer;

    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->position()I

    move-result v12

    .line 1529
    .local v12, "adaptiveReconfigurationBytes":I
    invoke-virtual {v1}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->getFormatHolder()Landroidx/media3/exoplayer/FormatHolder;

    move-result-object v13

    .line 1531
    .local v13, "formatHolder":Landroidx/media3/exoplayer/FormatHolder;
    :try_start_0
    new-instance v0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer$$ExternalSyntheticLambda0;

    invoke-direct {v0, v1, v13}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer$$ExternalSyntheticLambda0;-><init>(Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;Landroidx/media3/exoplayer/FormatHolder;)V

    invoke-interface {v4, v0}, Landroidx/media3/exoplayer/mediacodec/MediaCodecAdapter;->useInputBuffer(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Landroidx/media3/decoder/DecoderInputBuffer$InsufficientCapacityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1540
    nop

    .line 1541
    iget-object v0, v1, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->readDataResultHolder:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    .line 1543
    .local v0, "result":I
    const/4 v5, -0x3

    if-ne v0, v5, :cond_a

    .line 1544
    invoke-virtual {v1}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->hasReadStreamToEnd()Z

    move-result v3

    if-eqz v3, :cond_9

    .line 1546
    invoke-direct {v1}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->getLastOutputStreamInfo()Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer$OutputStreamInfo;

    move-result-object v3

    iget-wide v5, v1, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->largestQueuedPresentationTimeUs:J

    iput-wide v5, v3, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer$OutputStreamInfo;->lastBufferTimeUs:J

    .line 1548
    :cond_9
    return v2

    .line 1550
    :cond_a
    const/4 v5, -0x5

    if-ne v0, v5, :cond_c

    .line 1551
    iget v2, v1, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->codecReconfigurationState:I

    if-ne v2, v3, :cond_b

    .line 1554
    iget-object v2, v1, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->buffer:Landroidx/media3/decoder/DecoderInputBuffer;

    invoke-virtual {v2}, Landroidx/media3/decoder/DecoderInputBuffer;->clear()V

    .line 1555
    iput v11, v1, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->codecReconfigurationState:I

    .line 1557
    :cond_b
    invoke-virtual {v1, v13}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->onInputFormatChanged(Landroidx/media3/exoplayer/FormatHolder;)Landroidx/media3/exoplayer/DecoderReuseEvaluation;

    .line 1558
    return v11

    .line 1562
    :cond_c
    iget-object v5, v1, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->buffer:Landroidx/media3/decoder/DecoderInputBuffer;

    invoke-virtual {v5}, Landroidx/media3/decoder/DecoderInputBuffer;->isEndOfStream()Z

    move-result v5

    if-eqz v5, :cond_10

    .line 1563
    invoke-direct {v1}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->getLastOutputStreamInfo()Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer$OutputStreamInfo;

    move-result-object v5

    iget-wide v6, v1, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->largestQueuedPresentationTimeUs:J

    iput-wide v6, v5, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer$OutputStreamInfo;->lastBufferTimeUs:J

    .line 1564
    iget v5, v1, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->codecReconfigurationState:I

    if-ne v5, v3, :cond_d

    .line 1568
    iget-object v3, v1, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->buffer:Landroidx/media3/decoder/DecoderInputBuffer;

    invoke-virtual {v3}, Landroidx/media3/decoder/DecoderInputBuffer;->clear()V

    .line 1569
    iput v11, v1, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->codecReconfigurationState:I

    .line 1571
    :cond_d
    iput-boolean v11, v1, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->inputStreamEnded:Z

    .line 1572
    iget-boolean v3, v1, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->codecReceivedBuffers:Z

    if-nez v3, :cond_e

    .line 1573
    invoke-direct {v1}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->processEndOfStream()V

    .line 1574
    return v2

    .line 1576
    :cond_e
    iget-boolean v3, v1, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->codecNeedsEosPropagation:Z

    if-eqz v3, :cond_f

    goto :goto_2

    .line 1582
    :cond_f
    iput-boolean v11, v1, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->codecReceivedEos:Z

    .line 1583
    iget v5, v1, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->inputIndex:I

    const-wide/16 v8, 0x0

    const/4 v10, 0x4

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-interface/range {v4 .. v10}, Landroidx/media3/exoplayer/mediacodec/MediaCodecAdapter;->queueInputBuffer(IIIJI)V

    .line 1589
    invoke-direct {v1}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->resetInputBuffer()V

    .line 1591
    :goto_2
    return v2

    .line 1600
    :cond_10
    iget-boolean v5, v1, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->codecReceivedBuffers:Z

    if-nez v5, :cond_12

    iget-object v5, v1, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->buffer:Landroidx/media3/decoder/DecoderInputBuffer;

    invoke-virtual {v5}, Landroidx/media3/decoder/DecoderInputBuffer;->isKeyFrame()Z

    move-result v5

    if-nez v5, :cond_12

    .line 1601
    iget-object v2, v1, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->buffer:Landroidx/media3/decoder/DecoderInputBuffer;

    invoke-virtual {v2}, Landroidx/media3/decoder/DecoderInputBuffer;->clear()V

    .line 1602
    iget v2, v1, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->codecReconfigurationState:I

    if-ne v2, v3, :cond_11

    .line 1605
    iput v11, v1, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->codecReconfigurationState:I

    .line 1607
    :cond_11
    return v11

    .line 1610
    :cond_12
    iget-object v3, v1, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->buffer:Landroidx/media3/decoder/DecoderInputBuffer;

    iget-wide v5, v3, Landroidx/media3/decoder/DecoderInputBuffer;->timeUs:J

    .line 1612
    .local v5, "presentationTimeUs":J
    iget-object v3, v1, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->buffer:Landroidx/media3/decoder/DecoderInputBuffer;

    invoke-virtual {v1, v3}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->shouldDiscardDecoderInputBuffer(Landroidx/media3/decoder/DecoderInputBuffer;)Z

    move-result v3

    if-eqz v3, :cond_13

    .line 1618
    return v11

    .line 1621
    :cond_13
    iget-object v3, v1, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->buffer:Landroidx/media3/decoder/DecoderInputBuffer;

    invoke-virtual {v3}, Landroidx/media3/decoder/DecoderInputBuffer;->isEncrypted()Z

    move-result v3

    .line 1622
    .local v3, "bufferEncrypted":Z
    if-eqz v3, :cond_14

    .line 1623
    iget-object v7, v1, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->buffer:Landroidx/media3/decoder/DecoderInputBuffer;

    iget-object v7, v7, Landroidx/media3/decoder/DecoderInputBuffer;->cryptoInfo:Landroidx/media3/decoder/CryptoInfo;

    invoke-virtual {v7, v12}, Landroidx/media3/decoder/CryptoInfo;->increaseClearDataFirstSubSampleBy(I)V

    .line 1626
    :cond_14
    iget-boolean v7, v1, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->waitingForFirstSampleInFormat:Z

    if-eqz v7, :cond_15

    .line 1627
    invoke-direct {v1}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->getLastOutputStreamInfo()Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer$OutputStreamInfo;

    move-result-object v7

    iget-object v7, v7, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer$OutputStreamInfo;->formatQueue:Landroidx/media3/common/util/TimedValueQueue;

    iget-object v8, v1, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->inputFormat:Landroidx/media3/common/Format;

    invoke-static {v8}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroidx/media3/common/Format;

    invoke-virtual {v7, v5, v6, v8}, Landroidx/media3/common/util/TimedValueQueue;->add(JLjava/lang/Object;)V

    .line 1628
    iput-boolean v2, v1, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->waitingForFirstSampleInFormat:Z

    .line 1630
    :cond_15
    iget-wide v7, v1, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->largestQueuedPresentationTimeUs:J

    invoke-static {v7, v8, v5, v6}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v7

    iput-wide v7, v1, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->largestQueuedPresentationTimeUs:J

    .line 1631
    invoke-virtual {v1}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->hasReadStreamToEnd()Z

    move-result v7

    if-nez v7, :cond_16

    iget-object v7, v1, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->buffer:Landroidx/media3/decoder/DecoderInputBuffer;

    invoke-virtual {v7}, Landroidx/media3/decoder/DecoderInputBuffer;->isLastSample()Z

    move-result v7

    if-eqz v7, :cond_17

    .line 1633
    :cond_16
    invoke-direct {v1}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->getLastOutputStreamInfo()Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer$OutputStreamInfo;

    move-result-object v7

    iget-wide v8, v1, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->largestQueuedPresentationTimeUs:J

    iput-wide v8, v7, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer$OutputStreamInfo;->lastBufferTimeUs:J

    .line 1635
    :cond_17
    iget-object v7, v1, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->buffer:Landroidx/media3/decoder/DecoderInputBuffer;

    invoke-virtual {v7}, Landroidx/media3/decoder/DecoderInputBuffer;->flip()V

    .line 1636
    iget-object v7, v1, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->buffer:Landroidx/media3/decoder/DecoderInputBuffer;

    invoke-virtual {v7}, Landroidx/media3/decoder/DecoderInputBuffer;->hasSupplementalData()Z

    move-result v7

    if-eqz v7, :cond_18

    .line 1637
    iget-object v7, v1, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->buffer:Landroidx/media3/decoder/DecoderInputBuffer;

    invoke-virtual {v1, v7}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->handleInputBufferSupplementalData(Landroidx/media3/decoder/DecoderInputBuffer;)V

    .line 1640
    :cond_18
    iget-boolean v7, v1, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->hasSkippedFlushAndWaitingForQueueInputBuffer:Z

    if-eqz v7, :cond_1a

    .line 1641
    iget-wide v7, v1, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->largestQueuedPresentationTimeUs:J

    cmp-long v7, v5, v7

    if-gtz v7, :cond_19

    .line 1642
    iget-wide v7, v1, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->skippedFlushOffsetUs:J

    iget-wide v9, v1, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->largestQueuedPresentationTimeUs:J

    sub-long/2addr v9, v5

    const-wide/16 v14, 0x1

    add-long/2addr v9, v14

    add-long/2addr v7, v9

    iput-wide v7, v1, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->skippedFlushOffsetUs:J

    .line 1644
    :cond_19
    iput-wide v5, v1, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->largestQueuedPresentationTimeUs:J

    .line 1645
    iput-boolean v2, v1, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->hasSkippedFlushAndWaitingForQueueInputBuffer:Z

    .line 1648
    :cond_1a
    iget-object v7, v1, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->buffer:Landroidx/media3/decoder/DecoderInputBuffer;

    invoke-virtual {v1, v7}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->onQueueInputBuffer(Landroidx/media3/decoder/DecoderInputBuffer;)V

    .line 1649
    iget-object v7, v1, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->buffer:Landroidx/media3/decoder/DecoderInputBuffer;

    invoke-virtual {v1, v7}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->getCodecBufferFlags(Landroidx/media3/decoder/DecoderInputBuffer;)I

    move-result v20

    .line 1650
    .local v20, "flags":I
    iget-wide v7, v1, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->skippedFlushOffsetUs:J

    add-long v18, v5, v7

    .line 1651
    .end local v5    # "presentationTimeUs":J
    .local v18, "presentationTimeUs":J
    if-eqz v3, :cond_1b

    .line 1652
    invoke-static {v4}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    move-object v14, v5

    check-cast v14, Landroidx/media3/exoplayer/mediacodec/MediaCodecAdapter;

    iget v15, v1, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->inputIndex:I

    iget-object v5, v1, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->buffer:Landroidx/media3/decoder/DecoderInputBuffer;

    iget-object v5, v5, Landroidx/media3/decoder/DecoderInputBuffer;->cryptoInfo:Landroidx/media3/decoder/CryptoInfo;

    .line 1653
    const/16 v16, 0x0

    move-object/from16 v17, v5

    invoke-interface/range {v14 .. v20}, Landroidx/media3/exoplayer/mediacodec/MediaCodecAdapter;->queueSecureInputBuffer(IILandroidx/media3/decoder/CryptoInfo;JI)V

    goto :goto_3

    .line 1656
    :cond_1b
    invoke-static {v4}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    move-object v14, v5

    check-cast v14, Landroidx/media3/exoplayer/mediacodec/MediaCodecAdapter;

    iget v15, v1, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->inputIndex:I

    iget-object v5, v1, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->buffer:Landroidx/media3/decoder/DecoderInputBuffer;

    iget-object v5, v5, Landroidx/media3/decoder/DecoderInputBuffer;->data:Ljava/nio/ByteBuffer;

    .line 1660
    invoke-static {v5}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/nio/ByteBuffer;

    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->limit()I

    move-result v17

    .line 1657
    const/16 v16, 0x0

    invoke-interface/range {v14 .. v20}, Landroidx/media3/exoplayer/mediacodec/MediaCodecAdapter;->queueInputBuffer(IIIJI)V

    .line 1673
    :goto_3
    invoke-direct {v1}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->resetInputBuffer()V

    .line 1674
    iput-boolean v11, v1, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->codecReceivedBuffers:Z

    .line 1675
    iput v2, v1, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->codecReconfigurationState:I

    .line 1676
    iget-object v2, v1, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->decoderCounters:Landroidx/media3/exoplayer/DecoderCounters;

    iget v5, v2, Landroidx/media3/exoplayer/DecoderCounters;->queuedInputBufferCount:I

    add-int/2addr v5, v11

    iput v5, v2, Landroidx/media3/exoplayer/DecoderCounters;->queuedInputBufferCount:I

    .line 1677
    return v11

    .line 1533
    .end local v0    # "result":I
    .end local v3    # "bufferEncrypted":Z
    .end local v18    # "presentationTimeUs":J
    .end local v20    # "flags":I
    :catch_0
    move-exception v0

    .line 1534
    .local v0, "e":Landroidx/media3/decoder/DecoderInputBuffer$InsufficientCapacityException;
    invoke-virtual {v1, v0}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->onCodecError(Ljava/lang/Exception;)V

    .line 1537
    invoke-direct {v1, v2}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->readSourceOmittingSampleData(I)Z

    .line 1538
    invoke-direct {v1}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->flushCodec()V

    .line 1539
    return v11

    .line 1476
    .end local v0    # "e":Landroidx/media3/decoder/DecoderInputBuffer$InsufficientCapacityException;
    .end local v4    # "codec":Landroidx/media3/exoplayer/mediacodec/MediaCodecAdapter;
    .end local v12    # "adaptiveReconfigurationBytes":I
    .end local v13    # "formatHolder":Landroidx/media3/exoplayer/FormatHolder;
    :cond_1c
    :goto_4
    return v2
.end method

.method private flushCodec()V
    .locals 1

    .line 1077
    :try_start_0
    iget-object v0, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->codec:Landroidx/media3/exoplayer/mediacodec/MediaCodecAdapter;

    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media3/exoplayer/mediacodec/MediaCodecAdapter;

    invoke-interface {v0}, Landroidx/media3/exoplayer/mediacodec/MediaCodecAdapter;->flush()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1079
    invoke-virtual {p0}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->resetCodecStateForFlush()V

    .line 1080
    nop

    .line 1081
    return-void

    .line 1079
    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->resetCodecStateForFlush()V

    .line 1080
    throw v0
.end method

.method private flushOrReleaseCodec()Z
    .locals 3

    .line 1013
    iget-object v0, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->codec:Landroidx/media3/exoplayer/mediacodec/MediaCodecAdapter;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 1014
    return v1

    .line 1016
    :cond_0
    invoke-virtual {p0}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->shouldReleaseCodecInsteadOfFlushing()Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    .line 1017
    invoke-virtual {p0}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->releaseCodec()V

    .line 1018
    return v2

    .line 1019
    :cond_1
    invoke-virtual {p0}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->shouldFlushCodec()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1020
    invoke-direct {p0}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->flushCodec()V

    goto :goto_0

    .line 1022
    :cond_2
    iput-boolean v2, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->hasSkippedFlushAndWaitingForQueueInputBuffer:Z

    .line 1024
    :goto_0
    return v1
.end method

.method private getAvailableCodecInfos(Z)Ljava/util/List;
    .locals 4
    .param p1, "mediaCryptoRequiresSecureDecoder"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/List<",
            "Landroidx/media3/exoplayer/mediacodec/MediaCodecInfo;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media3/exoplayer/mediacodec/MediaCodecUtil$DecoderQueryException;
        }
    .end annotation

    .line 1334
    iget-object v0, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->inputFormat:Landroidx/media3/common/Format;

    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media3/common/Format;

    .line 1335
    .local v0, "inputFormat":Landroidx/media3/common/Format;
    iget-object v1, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->mediaCodecSelector:Landroidx/media3/exoplayer/mediacodec/MediaCodecSelector;

    .line 1336
    invoke-virtual {p0, v1, v0, p1}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->getDecoderInfos(Landroidx/media3/exoplayer/mediacodec/MediaCodecSelector;Landroidx/media3/common/Format;Z)Ljava/util/List;

    move-result-object v1

    .line 1337
    .local v1, "codecInfos":Ljava/util/List;, "Ljava/util/List<Landroidx/media3/exoplayer/mediacodec/MediaCodecInfo;>;"
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    if-eqz p1, :cond_0

    .line 1342
    iget-object v2, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->mediaCodecSelector:Landroidx/media3/exoplayer/mediacodec/MediaCodecSelector;

    .line 1343
    const/4 v3, 0x0

    invoke-virtual {p0, v2, v0, v3}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->getDecoderInfos(Landroidx/media3/exoplayer/mediacodec/MediaCodecSelector;Landroidx/media3/common/Format;Z)Ljava/util/List;

    move-result-object v1

    .line 1344
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 1345
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Drm session requires secure decoder for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v0, Landroidx/media3/common/Format;->sampleMimeType:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", but no secure decoder available. Trying to proceed with "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "MediaCodecRenderer"

    invoke-static {v3, v2}, Landroidx/media3/common/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1354
    :cond_0
    return-object v1
.end method

.method private getLastOutputStreamInfo()Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer$OutputStreamInfo;
    .locals 1

    .line 2486
    iget-object v0, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->pendingOutputStreamChanges:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2487
    iget-object v0, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->pendingOutputStreamChanges:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->getLast()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer$OutputStreamInfo;

    return-object v0

    .line 2489
    :cond_0
    iget-object v0, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->outputStreamInfo:Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer$OutputStreamInfo;

    return-object v0
.end method

.method private hasOutputBuffer()Z
    .locals 1

    .line 1447
    iget v0, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->outputIndex:I

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private haveBypassBatchBufferAndNewSampleSameDecodeOnlyState()Z
    .locals 6

    .line 2747
    iget-object v0, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->bypassBatchBuffer:Landroidx/media3/exoplayer/mediacodec/BatchBuffer;

    invoke-virtual {v0}, Landroidx/media3/exoplayer/mediacodec/BatchBuffer;->hasSamples()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 2748
    return v1

    .line 2750
    :cond_0
    invoke-virtual {p0}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->getLastResetPositionUs()J

    move-result-wide v2

    .line 2751
    .local v2, "lastResetPositionUs":J
    iget-object v0, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->bypassBatchBuffer:Landroidx/media3/exoplayer/mediacodec/BatchBuffer;

    .line 2752
    invoke-virtual {v0}, Landroidx/media3/exoplayer/mediacodec/BatchBuffer;->getLastSampleTimeUs()J

    move-result-wide v4

    invoke-direct {p0, v2, v3, v4, v5}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->isDecodeOnly(JJ)Z

    move-result v0

    .line 2753
    .local v0, "batchBufferIsDecodeOnly":Z
    iget-object v4, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->bypassSampleBuffer:Landroidx/media3/decoder/DecoderInputBuffer;

    iget-wide v4, v4, Landroidx/media3/decoder/DecoderInputBuffer;->timeUs:J

    invoke-direct {p0, v2, v3, v4, v5}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->isDecodeOnly(JJ)Z

    move-result v4

    .line 2754
    .local v4, "sampleBufferIsDecodeOnly":Z
    if-ne v0, v4, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method private initBypass(Landroidx/media3/common/Format;)V
    .locals 4
    .param p1, "format"    # Landroidx/media3/common/Format;

    .line 1359
    invoke-direct {p0}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->disableBypass()V

    .line 1361
    iget-object v0, p1, Landroidx/media3/common/Format;->sampleMimeType:Ljava/lang/String;

    .line 1362
    .local v0, "mimeType":Ljava/lang/String;
    const-string v1, "audio/mp4a-latm"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x1

    if-nez v1, :cond_0

    .line 1363
    const-string v1, "audio/mpeg"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1364
    const-string v1, "audio/opus"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1366
    iget-object v1, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->bypassBatchBuffer:Landroidx/media3/exoplayer/mediacodec/BatchBuffer;

    invoke-virtual {v1, v2}, Landroidx/media3/exoplayer/mediacodec/BatchBuffer;->setMaxSampleCount(I)V

    goto :goto_0

    .line 1368
    :cond_0
    iget-object v1, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->bypassBatchBuffer:Landroidx/media3/exoplayer/mediacodec/BatchBuffer;

    const/16 v3, 0x20

    invoke-virtual {v1, v3}, Landroidx/media3/exoplayer/mediacodec/BatchBuffer;->setMaxSampleCount(I)V

    .line 1370
    :goto_0
    iput-boolean v2, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->bypassEnabled:Z

    .line 1371
    return-void
.end method

.method private initCodec(Landroidx/media3/exoplayer/mediacodec/MediaCodecInfo;Landroid/media/MediaCrypto;)V
    .locals 18
    .param p1, "codecInfo"    # Landroidx/media3/exoplayer/mediacodec/MediaCodecInfo;
    .param p2, "crypto"    # Landroid/media/MediaCrypto;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1374
    move-object/from16 v1, p0

    move-object/from16 v8, p1

    iput-object v8, v1, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->codecInfo:Landroidx/media3/exoplayer/mediacodec/MediaCodecInfo;

    .line 1375
    iget-object v0, v1, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->inputFormat:Landroidx/media3/common/Format;

    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v9, v0

    check-cast v9, Landroidx/media3/common/Format;

    .line 1378
    .local v9, "inputFormat":Landroidx/media3/common/Format;
    iget-object v2, v8, Landroidx/media3/exoplayer/mediacodec/MediaCodecInfo;->name:Ljava/lang/String;

    .line 1379
    .local v2, "codecName":Ljava/lang/String;
    iget v0, v1, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->targetPlaybackSpeed:F

    .line 1380
    invoke-virtual {v1}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->getStreamFormats()[Landroidx/media3/common/Format;

    move-result-object v3

    invoke-virtual {v1, v0, v9, v3}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->getCodecOperatingRateV23(FLandroidx/media3/common/Format;[Landroidx/media3/common/Format;)F

    move-result v0

    .line 1381
    .local v0, "codecOperatingRate":F
    iget v3, v1, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->assumedMinimumCodecOperatingRate:F

    cmpg-float v3, v0, v3

    if-gtz v3, :cond_0

    .line 1382
    const/high16 v0, -0x40800000    # -1.0f

    move v10, v0

    goto :goto_0

    .line 1381
    :cond_0
    move v10, v0

    .line 1384
    .end local v0    # "codecOperatingRate":F
    .local v10, "codecOperatingRate":F
    :goto_0
    invoke-virtual {v1}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->getClock()Landroidx/media3/common/util/Clock;

    move-result-object v0

    invoke-interface {v0}, Landroidx/media3/common/util/Clock;->elapsedRealtime()J

    move-result-wide v11

    .line 1385
    .local v11, "codecInitializingTimestamp":J
    nop

    .line 1386
    move-object/from16 v13, p2

    invoke-virtual {v1, v8, v9, v13, v10}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->getMediaCodecConfiguration(Landroidx/media3/exoplayer/mediacodec/MediaCodecInfo;Landroidx/media3/common/Format;Landroid/media/MediaCrypto;F)Landroidx/media3/exoplayer/mediacodec/MediaCodecAdapter$Configuration;

    move-result-object v3

    .line 1387
    .local v3, "configuration":Landroidx/media3/exoplayer/mediacodec/MediaCodecAdapter$Configuration;
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x1f

    if-lt v0, v4, :cond_1

    .line 1388
    invoke-virtual {v1}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->getPlayerId()Landroidx/media3/exoplayer/analytics/PlayerId;

    move-result-object v0

    invoke-static {v3, v0}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer$Api31;->setLogSessionIdToMediaCodecFormat(Landroidx/media3/exoplayer/mediacodec/MediaCodecAdapter$Configuration;Landroidx/media3/exoplayer/analytics/PlayerId;)V

    .line 1391
    :cond_1
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "createCodec:"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroidx/media3/common/util/TraceUtil;->beginSection(Ljava/lang/String;)V

    .line 1392
    iget-object v0, v1, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->codecAdapterFactory:Landroidx/media3/exoplayer/mediacodec/MediaCodecAdapter$Factory;

    invoke-interface {v0, v3}, Landroidx/media3/exoplayer/mediacodec/MediaCodecAdapter$Factory;->createAdapter(Landroidx/media3/exoplayer/mediacodec/MediaCodecAdapter$Configuration;)Landroidx/media3/exoplayer/mediacodec/MediaCodecAdapter;

    move-result-object v0

    iput-object v0, v1, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->codec:Landroidx/media3/exoplayer/mediacodec/MediaCodecAdapter;

    .line 1393
    iget-object v0, v1, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->codec:Landroidx/media3/exoplayer/mediacodec/MediaCodecAdapter;

    new-instance v5, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer$MediaCodecRendererCodecAdapterListener;

    const/4 v6, 0x0

    invoke-direct {v5, v1, v6}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer$MediaCodecRendererCodecAdapterListener;-><init>(Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer$1;)V

    .line 1394
    invoke-interface {v0, v5}, Landroidx/media3/exoplayer/mediacodec/MediaCodecAdapter;->registerOnBufferAvailableListener(Landroidx/media3/exoplayer/mediacodec/MediaCodecAdapter$OnBufferAvailableListener;)Z

    move-result v0

    iput-boolean v0, v1, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->codecRegisteredOnBufferAvailableListener:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1396
    invoke-static {}, Landroidx/media3/common/util/TraceUtil;->endSection()V

    .line 1397
    nop

    .line 1398
    invoke-virtual {v1}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->getClock()Landroidx/media3/common/util/Clock;

    move-result-object v0

    invoke-interface {v0}, Landroidx/media3/common/util/Clock;->elapsedRealtime()J

    move-result-wide v5

    .line 1400
    .local v5, "codecInitializedTimestamp":J
    iget-object v0, v1, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->context:Landroid/content/Context;

    invoke-virtual {v8, v0, v9}, Landroidx/media3/exoplayer/mediacodec/MediaCodecInfo;->isFormatSupported(Landroid/content/Context;Landroidx/media3/common/Format;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 1401
    nop

    .line 1405
    invoke-static {v9}, Landroidx/media3/common/Format;->toLogString(Landroidx/media3/common/Format;)Ljava/lang/String;

    move-result-object v0

    filled-new-array {v0, v2}, [Ljava/lang/Object;

    move-result-object v0

    .line 1403
    const-string v7, "Format exceeds selected codec\'s capabilities [%s, %s]"

    invoke-static {v7, v0}, Landroidx/media3/common/util/Util;->formatInvariant(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 1401
    const-string v7, "MediaCodecRenderer"

    invoke-static {v7, v0}, Landroidx/media3/common/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1408
    :cond_2
    iput v10, v1, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->codecOperatingRate:F

    .line 1409
    iput-object v9, v1, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->codecInputFormat:Landroidx/media3/common/Format;

    .line 1410
    invoke-direct {v1, v2}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->codecAdaptationWorkaroundMode(Ljava/lang/String;)I

    move-result v0

    iput v0, v1, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->codecAdaptationWorkaroundMode:I

    .line 1411
    invoke-static {v2}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->codecNeedsSosFlushWorkaround(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, v1, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->codecNeedsSosFlushWorkaround:Z

    .line 1412
    invoke-static {v2}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->codecNeedsEosFlushWorkaround(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, v1, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->codecNeedsEosFlushWorkaround:Z

    .line 1413
    invoke-static {v8}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->codecNeedsEosPropagationWorkaround(Landroidx/media3/exoplayer/mediacodec/MediaCodecInfo;)Z

    move-result v0

    iput-boolean v0, v1, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->codecNeedsEosPropagation:Z

    .line 1414
    iget-object v0, v1, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->codec:Landroidx/media3/exoplayer/mediacodec/MediaCodecAdapter;

    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media3/exoplayer/mediacodec/MediaCodecAdapter;

    invoke-interface {v0}, Landroidx/media3/exoplayer/mediacodec/MediaCodecAdapter;->needsReconfiguration()Z

    move-result v0

    const/4 v7, 0x1

    if-eqz v0, :cond_4

    .line 1415
    iput-boolean v7, v1, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->codecReconfigured:Z

    .line 1416
    iput v7, v1, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->codecReconfigurationState:I

    .line 1417
    iget v0, v1, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->codecAdaptationWorkaroundMode:I

    if-eqz v0, :cond_3

    move v0, v7

    goto :goto_1

    :cond_3
    const/4 v0, 0x0

    :goto_1
    iput-boolean v0, v1, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->codecNeedsAdaptationWorkaroundBuffer:Z

    .line 1421
    :cond_4
    invoke-virtual {v1}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->getState()I

    move-result v0

    const/4 v14, 0x2

    if-ne v0, v14, :cond_5

    .line 1422
    invoke-virtual {v1}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->getClock()Landroidx/media3/common/util/Clock;

    move-result-object v0

    invoke-interface {v0}, Landroidx/media3/common/util/Clock;->elapsedRealtime()J

    move-result-wide v14

    const-wide/16 v16, 0x3e8

    add-long v14, v14, v16

    iput-wide v14, v1, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->codecHotswapDeadlineMs:J

    .line 1425
    :cond_5
    iget-object v0, v1, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->decoderCounters:Landroidx/media3/exoplayer/DecoderCounters;

    iget v14, v0, Landroidx/media3/exoplayer/DecoderCounters;->decoderInitCount:I

    add-int/2addr v14, v7

    iput v14, v0, Landroidx/media3/exoplayer/DecoderCounters;->decoderInitCount:I

    .line 1426
    move-wide v14, v5

    .end local v5    # "codecInitializedTimestamp":J
    .local v14, "codecInitializedTimestamp":J
    sub-long v6, v14, v11

    .line 1427
    .local v6, "elapsed":J
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, v4, :cond_6

    iget-object v0, v1, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->subscribedCodecParameterKeys:Lcom/google/common/collect/ImmutableSet;

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableSet;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_6

    .line 1428
    invoke-virtual {v1}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->getCodec()Landroidx/media3/exoplayer/mediacodec/MediaCodecAdapter;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media3/exoplayer/mediacodec/MediaCodecAdapter;

    new-instance v4, Ljava/util/ArrayList;

    iget-object v5, v1, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->subscribedCodecParameterKeys:Lcom/google/common/collect/ImmutableSet;

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 1429
    invoke-interface {v0, v4}, Landroidx/media3/exoplayer/mediacodec/MediaCodecAdapter;->subscribeToVendorParameters(Ljava/util/List;)V

    .line 1431
    :cond_6
    move-wide v4, v14

    .end local v14    # "codecInitializedTimestamp":J
    .local v4, "codecInitializedTimestamp":J
    invoke-virtual/range {v1 .. v7}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->onCodecInitialized(Ljava/lang/String;Landroidx/media3/exoplayer/mediacodec/MediaCodecAdapter$Configuration;JJ)V

    .line 1439
    .end local v4    # "codecInitializedTimestamp":J
    .restart local v14    # "codecInitializedTimestamp":J
    return-void

    .line 1396
    .end local v6    # "elapsed":J
    .end local v14    # "codecInitializedTimestamp":J
    :catchall_0
    move-exception v0

    invoke-static {}, Landroidx/media3/common/util/TraceUtil;->endSection()V

    .line 1397
    throw v0
.end method

.method private initMediaCryptoIfDrmSessionReady()Z
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media3/exoplayer/ExoPlaybackException;
        }
    .end annotation

    .annotation runtime Lorg/checkerframework/checker/nullness/qual/RequiresNonNull;
        value = {
            "this.codecDrmSession"
        }
    .end annotation

    .line 1226
    iget-object v0, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->mediaCrypto:Landroid/media/MediaCrypto;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkState(Z)V

    .line 1227
    iget-object v0, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->codecDrmSession:Landroidx/media3/exoplayer/drm/DrmSession;

    .line 1228
    .local v0, "codecDrmSession":Landroidx/media3/exoplayer/drm/DrmSession;
    invoke-interface {v0}, Landroidx/media3/exoplayer/drm/DrmSession;->getCryptoConfig()Landroidx/media3/decoder/CryptoConfig;

    move-result-object v3

    .line 1229
    .local v3, "cryptoConfig":Landroidx/media3/decoder/CryptoConfig;
    sget-boolean v4, Landroidx/media3/exoplayer/drm/FrameworkCryptoConfig;->WORKAROUND_DEVICE_NEEDS_KEYS_TO_CONFIGURE_CODEC:Z

    if-eqz v4, :cond_2

    instance-of v4, v3, Landroidx/media3/exoplayer/drm/FrameworkCryptoConfig;

    if-eqz v4, :cond_2

    .line 1231
    invoke-interface {v0}, Landroidx/media3/exoplayer/drm/DrmSession;->getState()I

    move-result v4

    .line 1232
    .local v4, "drmSessionState":I
    if-eq v4, v2, :cond_1

    .line 1236
    const/4 v5, 0x4

    if-eq v4, v5, :cond_2

    .line 1238
    return v1

    .line 1233
    :cond_1
    invoke-interface {v0}, Landroidx/media3/exoplayer/drm/DrmSession;->getError()Landroidx/media3/exoplayer/drm/DrmSession$DrmSessionException;

    move-result-object v1

    invoke-static {v1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/media3/exoplayer/drm/DrmSession$DrmSessionException;

    .line 1234
    .local v1, "drmSessionException":Landroidx/media3/exoplayer/drm/DrmSession$DrmSessionException;
    iget-object v2, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->inputFormat:Landroidx/media3/common/Format;

    iget v5, v1, Landroidx/media3/exoplayer/drm/DrmSession$DrmSessionException;->errorCode:I

    invoke-virtual {p0, v1, v2, v5}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->createRendererException(Ljava/lang/Throwable;Landroidx/media3/common/Format;I)Landroidx/media3/exoplayer/ExoPlaybackException;

    move-result-object v2

    throw v2

    .line 1241
    .end local v1    # "drmSessionException":Landroidx/media3/exoplayer/drm/DrmSession$DrmSessionException;
    .end local v4    # "drmSessionState":I
    :cond_2
    if-nez v3, :cond_4

    .line 1242
    invoke-interface {v0}, Landroidx/media3/exoplayer/drm/DrmSession;->getError()Landroidx/media3/exoplayer/drm/DrmSession$DrmSessionException;

    move-result-object v4

    .line 1243
    .local v4, "drmError":Landroidx/media3/exoplayer/drm/DrmSession$DrmSessionException;
    if-eqz v4, :cond_3

    .line 1246
    return v2

    .line 1249
    :cond_3
    return v1

    .line 1251
    .end local v4    # "drmError":Landroidx/media3/exoplayer/drm/DrmSession$DrmSessionException;
    :cond_4
    instance-of v1, v3, Landroidx/media3/exoplayer/drm/FrameworkCryptoConfig;

    if-eqz v1, :cond_5

    .line 1252
    move-object v1, v3

    check-cast v1, Landroidx/media3/exoplayer/drm/FrameworkCryptoConfig;

    .line 1254
    .local v1, "frameworkCryptoConfig":Landroidx/media3/exoplayer/drm/FrameworkCryptoConfig;
    :try_start_0
    new-instance v4, Landroid/media/MediaCrypto;

    iget-object v5, v1, Landroidx/media3/exoplayer/drm/FrameworkCryptoConfig;->uuid:Ljava/util/UUID;

    iget-object v6, v1, Landroidx/media3/exoplayer/drm/FrameworkCryptoConfig;->sessionId:[B

    invoke-direct {v4, v5, v6}, Landroid/media/MediaCrypto;-><init>(Ljava/util/UUID;[B)V

    iput-object v4, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->mediaCrypto:Landroid/media/MediaCrypto;
    :try_end_0
    .catch Landroid/media/MediaCryptoException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1258
    goto :goto_1

    .line 1255
    :catch_0
    move-exception v2

    .line 1256
    .local v2, "e":Landroid/media/MediaCryptoException;
    iget-object v4, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->inputFormat:Landroidx/media3/common/Format;

    const/16 v5, 0x1776

    invoke-virtual {p0, v2, v4, v5}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->createRendererException(Ljava/lang/Throwable;Landroidx/media3/common/Format;I)Landroidx/media3/exoplayer/ExoPlaybackException;

    move-result-object v4

    throw v4

    .line 1260
    .end local v1    # "frameworkCryptoConfig":Landroidx/media3/exoplayer/drm/FrameworkCryptoConfig;
    .end local v2    # "e":Landroid/media/MediaCryptoException;
    :cond_5
    :goto_1
    return v2
.end method

.method private isDecodeOnly(JJ)Z
    .locals 2
    .param p1, "startTimeUs"    # J
    .param p3, "frameTimeUs"    # J

    .line 2769
    cmp-long v0, p3, p1

    if-gez v0, :cond_1

    iget-object v0, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->outputFormat:Landroidx/media3/common/Format;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->outputFormat:Landroidx/media3/common/Format;

    iget-object v0, v0, Landroidx/media3/common/Format;->sampleMimeType:Ljava/lang/String;

    .line 2771
    const-string v1, "audio/opus"

    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2772
    invoke-static {p1, p2, p3, p4}, Landroidx/media3/container/OpusUtil;->needToDecodeOpusFrame(JJ)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 2769
    :goto_0
    return v0
.end method

.method private static isMediaCodecException(Ljava/lang/IllegalStateException;)Z
    .locals 5
    .param p0, "error"    # Ljava/lang/IllegalStateException;

    .line 2777
    instance-of v0, p0, Landroid/media/MediaCodec$CodecException;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 2778
    return v1

    .line 2780
    :cond_0
    invoke-virtual {p0}, Ljava/lang/IllegalStateException;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v0

    .line 2781
    .local v0, "stackTrace":[Ljava/lang/StackTraceElement;
    array-length v2, v0

    const/4 v3, 0x0

    if-lez v2, :cond_1

    aget-object v2, v0, v3

    invoke-virtual {v2}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v2

    const-string v4, "android.media.MediaCodec"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_0

    :cond_1
    move v1, v3

    :goto_0
    return v1
.end method

.method private maybeInitCodecWithFallback(Landroid/media/MediaCrypto;Z)V
    .locals 7
    .param p1, "crypto"    # Landroid/media/MediaCrypto;
    .param p2, "mediaCryptoRequiresSecureDecoder"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer$DecoderInitializationException;,
            Landroidx/media3/exoplayer/ExoPlaybackException;
        }
    .end annotation

    .line 1266
    iget-object v0, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->inputFormat:Landroidx/media3/common/Format;

    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media3/common/Format;

    .line 1267
    .local v0, "inputFormat":Landroidx/media3/common/Format;
    iget-object v1, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->availableCodecInfos:Ljava/util/ArrayDeque;

    const/4 v2, 0x0

    if-nez v1, :cond_2

    .line 1269
    nop

    .line 1270
    :try_start_0
    invoke-direct {p0, p2}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->getAvailableCodecInfos(Z)Ljava/util/List;

    move-result-object v1

    .line 1271
    .local v1, "allAvailableCodecInfos":Ljava/util/List;, "Ljava/util/List<Landroidx/media3/exoplayer/mediacodec/MediaCodecInfo;>;"
    new-instance v3, Ljava/util/ArrayDeque;

    invoke-direct {v3}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v3, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->availableCodecInfos:Ljava/util/ArrayDeque;

    .line 1272
    iget-boolean v3, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->enableDecoderFallback:Z

    if-eqz v3, :cond_0

    .line 1273
    iget-object v3, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->availableCodecInfos:Ljava/util/ArrayDeque;

    invoke-virtual {v3, v1}, Ljava/util/ArrayDeque;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    .line 1274
    :cond_0
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_1

    .line 1275
    iget-object v3, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->availableCodecInfos:Ljava/util/ArrayDeque;

    const/4 v4, 0x0

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/media3/exoplayer/mediacodec/MediaCodecInfo;

    invoke-virtual {v3, v4}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    .line 1277
    :cond_1
    :goto_0
    iput-object v2, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->preferredDecoderInitializationException:Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer$DecoderInitializationException;
    :try_end_0
    .catch Landroidx/media3/exoplayer/mediacodec/MediaCodecUtil$DecoderQueryException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1284
    .end local v1    # "allAvailableCodecInfos":Ljava/util/List;, "Ljava/util/List<Landroidx/media3/exoplayer/mediacodec/MediaCodecInfo;>;"
    goto :goto_1

    .line 1278
    :catch_0
    move-exception v1

    .line 1279
    .local v1, "e":Landroidx/media3/exoplayer/mediacodec/MediaCodecUtil$DecoderQueryException;
    new-instance v2, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer$DecoderInitializationException;

    const v3, -0xc34e

    invoke-direct {v2, v0, v1, p2, v3}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer$DecoderInitializationException;-><init>(Landroidx/media3/common/Format;Ljava/lang/Throwable;ZI)V

    throw v2

    .line 1287
    .end local v1    # "e":Landroidx/media3/exoplayer/mediacodec/MediaCodecUtil$DecoderQueryException;
    :cond_2
    :goto_1
    iget-object v1, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->availableCodecInfos:Ljava/util/ArrayDeque;

    invoke-virtual {v1}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_8

    .line 1295
    iget-object v1, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->availableCodecInfos:Ljava/util/ArrayDeque;

    invoke-static {v1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayDeque;

    .line 1296
    .local v1, "availableCodecInfos":Ljava/util/ArrayDeque;, "Ljava/util/ArrayDeque<Landroidx/media3/exoplayer/mediacodec/MediaCodecInfo;>;"
    :goto_2
    iget-object v3, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->codec:Landroidx/media3/exoplayer/mediacodec/MediaCodecAdapter;

    if-nez v3, :cond_7

    .line 1297
    invoke-virtual {v1}, Ljava/util/ArrayDeque;->peekFirst()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/media3/exoplayer/mediacodec/MediaCodecInfo;

    invoke-static {v3}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/media3/exoplayer/mediacodec/MediaCodecInfo;

    .line 1298
    .local v3, "codecInfo":Landroidx/media3/exoplayer/mediacodec/MediaCodecInfo;
    invoke-virtual {p0, v0}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->maybeInitializeProcessingPipeline(Landroidx/media3/common/Format;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 1299
    return-void

    .line 1302
    :cond_3
    invoke-virtual {p0, v3}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->shouldInitCodec(Landroidx/media3/exoplayer/mediacodec/MediaCodecInfo;)Z

    move-result v4

    if-nez v4, :cond_4

    .line 1303
    return-void

    .line 1306
    :cond_4
    :try_start_1
    invoke-direct {p0, v3, p1}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->initCodec(Landroidx/media3/exoplayer/mediacodec/MediaCodecInfo;Landroid/media/MediaCrypto;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 1326
    goto :goto_4

    .line 1307
    :catch_1
    move-exception v4

    .line 1308
    .local v4, "e":Ljava/lang/Exception;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Failed to initialize decoder: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "MediaCodecRenderer"

    invoke-static {v6, v5, v4}, Landroidx/media3/common/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1312
    invoke-virtual {v1}, Ljava/util/ArrayDeque;->removeFirst()Ljava/lang/Object;

    .line 1313
    new-instance v5, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer$DecoderInitializationException;

    invoke-direct {v5, v0, v4, p2, v3}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer$DecoderInitializationException;-><init>(Landroidx/media3/common/Format;Ljava/lang/Throwable;ZLandroidx/media3/exoplayer/mediacodec/MediaCodecInfo;)V

    .line 1316
    .local v5, "exception":Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer$DecoderInitializationException;
    invoke-virtual {p0, v5}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->onCodecError(Ljava/lang/Exception;)V

    .line 1317
    iget-object v6, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->preferredDecoderInitializationException:Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer$DecoderInitializationException;

    if-nez v6, :cond_5

    .line 1318
    iput-object v5, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->preferredDecoderInitializationException:Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer$DecoderInitializationException;

    goto :goto_3

    .line 1320
    :cond_5
    iget-object v6, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->preferredDecoderInitializationException:Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer$DecoderInitializationException;

    .line 1321
    invoke-static {v6, v5}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer$DecoderInitializationException;->access$000(Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer$DecoderInitializationException;Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer$DecoderInitializationException;)Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer$DecoderInitializationException;

    move-result-object v6

    iput-object v6, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->preferredDecoderInitializationException:Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer$DecoderInitializationException;

    .line 1323
    :goto_3
    invoke-virtual {v1}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_6

    .line 1327
    .end local v3    # "codecInfo":Landroidx/media3/exoplayer/mediacodec/MediaCodecInfo;
    .end local v4    # "e":Ljava/lang/Exception;
    .end local v5    # "exception":Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer$DecoderInitializationException;
    :goto_4
    goto :goto_2

    .line 1324
    .restart local v3    # "codecInfo":Landroidx/media3/exoplayer/mediacodec/MediaCodecInfo;
    .restart local v4    # "e":Ljava/lang/Exception;
    .restart local v5    # "exception":Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer$DecoderInitializationException;
    :cond_6
    iget-object v2, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->preferredDecoderInitializationException:Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer$DecoderInitializationException;

    throw v2

    .line 1329
    .end local v3    # "codecInfo":Landroidx/media3/exoplayer/mediacodec/MediaCodecInfo;
    .end local v4    # "e":Ljava/lang/Exception;
    .end local v5    # "exception":Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer$DecoderInitializationException;
    :cond_7
    iput-object v2, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->availableCodecInfos:Ljava/util/ArrayDeque;

    .line 1330
    return-void

    .line 1288
    .end local v1    # "availableCodecInfos":Ljava/util/ArrayDeque;, "Ljava/util/ArrayDeque<Landroidx/media3/exoplayer/mediacodec/MediaCodecInfo;>;"
    :cond_8
    new-instance v1, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer$DecoderInitializationException;

    const v3, -0xc34f

    invoke-direct {v1, v0, v2, p2, v3}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer$DecoderInitializationException;-><init>(Landroidx/media3/common/Format;Ljava/lang/Throwable;ZI)V

    throw v1
.end method

.method private processEndOfStream()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media3/exoplayer/ExoPlaybackException;
        }
    .end annotation

    .line 2396
    iget v0, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->codecDrainAction:I

    packed-switch v0, :pswitch_data_0

    .line 2409
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->outputStreamEnded:Z

    .line 2410
    invoke-virtual {p0}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->renderToEndOfStream()V

    goto :goto_0

    .line 2398
    :pswitch_0
    invoke-direct {p0}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->reinitializeCodec()V

    .line 2399
    goto :goto_0

    .line 2401
    :pswitch_1
    invoke-direct {p0}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->flushCodec()V

    .line 2402
    invoke-direct {p0}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->updateDrmSession()V

    .line 2403
    goto :goto_0

    .line 2405
    :pswitch_2
    invoke-direct {p0}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->flushCodec()V

    .line 2406
    nop

    .line 2413
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private processOutputMediaFormatChanged()V
    .locals 4

    .line 2299
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->codecHasOutputMediaFormat:Z

    .line 2300
    iget-object v1, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->codec:Landroidx/media3/exoplayer/mediacodec/MediaCodecAdapter;

    invoke-static {v1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/media3/exoplayer/mediacodec/MediaCodecAdapter;

    invoke-interface {v1}, Landroidx/media3/exoplayer/mediacodec/MediaCodecAdapter;->getOutputFormat()Landroid/media/MediaFormat;

    move-result-object v1

    .line 2301
    .local v1, "mediaFormat":Landroid/media/MediaFormat;
    iget v2, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->codecAdaptationWorkaroundMode:I

    if-eqz v2, :cond_0

    .line 2302
    const-string/jumbo v2, "width"

    invoke-virtual {v1, v2}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v2

    const/16 v3, 0x20

    if-ne v2, v3, :cond_0

    .line 2303
    const-string v2, "height"

    invoke-virtual {v1, v2}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v2

    if-ne v2, v3, :cond_0

    .line 2306
    iput-boolean v0, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->shouldSkipAdaptationWorkaroundOutputBuffer:Z

    .line 2307
    return-void

    .line 2309
    :cond_0
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x1d

    if-lt v2, v3, :cond_1

    .line 2310
    invoke-direct {p0, v1}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->checkAndNotifyCodecParameterChanges(Landroid/media/MediaFormat;)V

    .line 2312
    :cond_1
    iput-object v1, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->codecOutputMediaFormat:Landroid/media/MediaFormat;

    .line 2313
    iput-boolean v0, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->codecOutputMediaFormatChanged:Z

    .line 2314
    return-void
.end method

.method private readSourceOmittingSampleData(I)Z
    .locals 4
    .param p1, "readFlags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media3/exoplayer/ExoPlaybackException;
        }
    .end annotation

    .line 1203
    invoke-virtual {p0}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->getFormatHolder()Landroidx/media3/exoplayer/FormatHolder;

    move-result-object v0

    .line 1204
    .local v0, "formatHolder":Landroidx/media3/exoplayer/FormatHolder;
    iget-object v1, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->noDataBuffer:Landroidx/media3/decoder/DecoderInputBuffer;

    invoke-virtual {v1}, Landroidx/media3/decoder/DecoderInputBuffer;->clear()V

    .line 1206
    iget-object v1, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->noDataBuffer:Landroidx/media3/decoder/DecoderInputBuffer;

    or-int/lit8 v2, p1, 0x4

    invoke-virtual {p0, v0, v1, v2}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->readSource(Landroidx/media3/exoplayer/FormatHolder;Landroidx/media3/decoder/DecoderInputBuffer;I)I

    move-result v1

    .line 1207
    .local v1, "result":I
    const/4 v2, -0x5

    const/4 v3, 0x1

    if-ne v1, v2, :cond_0

    .line 1208
    invoke-virtual {p0, v0}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->onInputFormatChanged(Landroidx/media3/exoplayer/FormatHolder;)Landroidx/media3/exoplayer/DecoderReuseEvaluation;

    .line 1209
    return v3

    .line 1210
    :cond_0
    const/4 v2, -0x4

    if-ne v1, v2, :cond_1

    iget-object v2, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->noDataBuffer:Landroidx/media3/decoder/DecoderInputBuffer;

    invoke-virtual {v2}, Landroidx/media3/decoder/DecoderInputBuffer;->isEndOfStream()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1211
    iput-boolean v3, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->inputStreamEnded:Z

    .line 1212
    invoke-direct {p0}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->processEndOfStream()V

    .line 1214
    :cond_1
    const/4 v2, 0x0

    return v2
.end method

.method private reinitializeCodec()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media3/exoplayer/ExoPlaybackException;
        }
    .end annotation

    .line 2573
    invoke-virtual {p0}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->releaseCodec()V

    .line 2574
    invoke-virtual {p0}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->maybeInitCodecOrBypass()V

    .line 2575
    return-void
.end method

.method private resetBypassState()V
    .locals 2

    .line 853
    invoke-direct {p0}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->resetCommonStateForFlush()V

    .line 854
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->bypassDrainAndReinitialize:Z

    .line 855
    iget-object v1, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->bypassBatchBuffer:Landroidx/media3/exoplayer/mediacodec/BatchBuffer;

    invoke-virtual {v1}, Landroidx/media3/exoplayer/mediacodec/BatchBuffer;->clear()V

    .line 856
    iget-object v1, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->bypassSampleBuffer:Landroidx/media3/decoder/DecoderInputBuffer;

    invoke-virtual {v1}, Landroidx/media3/decoder/DecoderInputBuffer;->clear()V

    .line 857
    iput-boolean v0, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->bypassSampleBufferPending:Z

    .line 858
    iget-object v0, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->oggOpusAudioPacketizer:Landroidx/media3/exoplayer/audio/OggOpusAudioPacketizer;

    invoke-virtual {v0}, Landroidx/media3/exoplayer/audio/OggOpusAudioPacketizer;->reset()V

    .line 859
    return-void
.end method

.method private resetCommonStateForFlush()V
    .locals 3

    .line 1085
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v0, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->largestQueuedPresentationTimeUs:J

    .line 1086
    invoke-direct {p0}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->getLastOutputStreamInfo()Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer$OutputStreamInfo;

    move-result-object v2

    iput-wide v0, v2, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer$OutputStreamInfo;->lastBufferTimeUs:J

    .line 1087
    iput-wide v0, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->lastProcessedOutputBufferTimeUs:J

    .line 1088
    return-void
.end method

.method private resetInputBuffer()V
    .locals 2

    .line 1451
    const/4 v0, -0x1

    iput v0, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->inputIndex:I

    .line 1452
    iget-object v0, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->buffer:Landroidx/media3/decoder/DecoderInputBuffer;

    const/4 v1, 0x0

    iput-object v1, v0, Landroidx/media3/decoder/DecoderInputBuffer;->data:Ljava/nio/ByteBuffer;

    .line 1453
    return-void
.end method

.method private resetOutputBuffer()V
    .locals 1

    .line 1456
    const/4 v0, -0x1

    iput v0, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->outputIndex:I

    .line 1457
    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->outputBuffer:Ljava/nio/ByteBuffer;

    .line 1458
    return-void
.end method

.method private setCodecDrmSession(Landroidx/media3/exoplayer/drm/DrmSession;)V
    .locals 1
    .param p1, "session"    # Landroidx/media3/exoplayer/drm/DrmSession;

    .line 1466
    iget-object v0, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->codecDrmSession:Landroidx/media3/exoplayer/drm/DrmSession;

    invoke-static {v0, p1}, Landroidx/media3/exoplayer/drm/DrmSession;->replaceSession(Landroidx/media3/exoplayer/drm/DrmSession;Landroidx/media3/exoplayer/drm/DrmSession;)V

    .line 1467
    iput-object p1, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->codecDrmSession:Landroidx/media3/exoplayer/drm/DrmSession;

    .line 1468
    return-void
.end method

.method private setOutputStreamInfo(Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer$OutputStreamInfo;)V
    .locals 4
    .param p1, "outputStreamInfo"    # Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer$OutputStreamInfo;

    .line 2478
    iput-object p1, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->outputStreamInfo:Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer$OutputStreamInfo;

    .line 2479
    iget-wide v0, p1, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer$OutputStreamInfo;->streamOffsetUs:J

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 2480
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->needToNotifyOutputFormatChangeAfterStreamChange:Z

    .line 2481
    iget-wide v0, p1, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer$OutputStreamInfo;->streamOffsetUs:J

    invoke-virtual {p0, v0, v1}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->onOutputStreamOffsetUsChanged(J)V

    .line 2483
    :cond_0
    return-void
.end method

.method private setSourceDrmSession(Landroidx/media3/exoplayer/drm/DrmSession;)V
    .locals 1
    .param p1, "session"    # Landroidx/media3/exoplayer/drm/DrmSession;

    .line 1461
    iget-object v0, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->sourceDrmSession:Landroidx/media3/exoplayer/drm/DrmSession;

    invoke-static {v0, p1}, Landroidx/media3/exoplayer/drm/DrmSession;->replaceSession(Landroidx/media3/exoplayer/drm/DrmSession;Landroidx/media3/exoplayer/drm/DrmSession;)V

    .line 1462
    iput-object p1, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->sourceDrmSession:Landroidx/media3/exoplayer/drm/DrmSession;

    .line 1463
    return-void
.end method

.method private shouldContinueRendering(J)Z
    .locals 4
    .param p1, "renderStartTimeMs"    # J

    .line 1442
    iget-wide v0, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->renderTimeLimitMs:J

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    .line 1443
    invoke-virtual {p0}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->getClock()Landroidx/media3/common/util/Clock;

    move-result-object v0

    invoke-interface {v0}, Landroidx/media3/common/util/Clock;->elapsedRealtime()J

    move-result-wide v0

    sub-long/2addr v0, p1

    iget-wide v2, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->renderTimeLimitMs:J

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 1442
    :goto_1
    return v0
.end method

.method protected static supportsFormatDrm(Landroidx/media3/common/Format;)Z
    .locals 2
    .param p0, "format"    # Landroidx/media3/common/Format;

    .line 2494
    iget v0, p0, Landroidx/media3/common/Format;->cryptoType:I

    if-eqz v0, :cond_1

    iget v0, p0, Landroidx/media3/common/Format;->cryptoType:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

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

.method private updateCodecOperatingRate(Landroidx/media3/common/Format;)Z
    .locals 4
    .param p1, "format"    # Landroidx/media3/common/Format;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media3/exoplayer/ExoPlaybackException;
        }
    .end annotation

    .line 2108
    iget-object v0, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->codec:Landroidx/media3/exoplayer/mediacodec/MediaCodecAdapter;

    const/4 v1, 0x1

    if-eqz v0, :cond_5

    iget v0, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->codecDrainAction:I

    const/4 v2, 0x3

    if-eq v0, v2, :cond_5

    .line 2110
    invoke-virtual {p0}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->getState()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 2115
    :cond_0
    iget v0, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->targetPlaybackSpeed:F

    .line 2116
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/media3/common/Format;

    invoke-virtual {p0}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->getStreamFormats()[Landroidx/media3/common/Format;

    move-result-object v3

    invoke-virtual {p0, v0, v2, v3}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->getCodecOperatingRateV23(FLandroidx/media3/common/Format;[Landroidx/media3/common/Format;)F

    move-result v0

    .line 2117
    .local v0, "newCodecOperatingRate":F
    iget v2, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->codecOperatingRate:F

    cmpl-float v2, v2, v0

    if-nez v2, :cond_1

    .line 2119
    return v1

    .line 2120
    :cond_1
    const/high16 v2, -0x40800000    # -1.0f

    cmpl-float v3, v0, v2

    if-nez v3, :cond_2

    .line 2123
    invoke-direct {p0}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->drainAndReinitializeCodec()V

    .line 2124
    const/4 v1, 0x0

    return v1

    .line 2125
    :cond_2
    iget v3, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->codecOperatingRate:F

    cmpl-float v2, v3, v2

    if-nez v2, :cond_4

    iget v2, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->assumedMinimumCodecOperatingRate:F

    cmpl-float v2, v0, v2

    if-lez v2, :cond_3

    goto :goto_0

    .line 2136
    :cond_3
    return v1

    .line 2129
    :cond_4
    :goto_0
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 2130
    .local v2, "codecParameters":Landroid/os/Bundle;
    const-string/jumbo v3, "operating-rate"

    invoke-virtual {v2, v3, v0}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    .line 2131
    iget-object v3, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->codec:Landroidx/media3/exoplayer/mediacodec/MediaCodecAdapter;

    invoke-static {v3}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/media3/exoplayer/mediacodec/MediaCodecAdapter;

    invoke-interface {v3, v2}, Landroidx/media3/exoplayer/mediacodec/MediaCodecAdapter;->setParameters(Landroid/os/Bundle;)V

    .line 2132
    iput v0, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->codecOperatingRate:F

    .line 2133
    return v1

    .line 2112
    .end local v0    # "newCodecOperatingRate":F
    .end local v2    # "codecParameters":Landroid/os/Bundle;
    :cond_5
    :goto_1
    return v1
.end method

.method private updateCodecSubscriptions(Lcom/google/common/collect/ImmutableSet;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/ImmutableSet<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1166
    .local p1, "newKeys":Lcom/google/common/collect/ImmutableSet;, "Lcom/google/common/collect/ImmutableSet<Ljava/lang/String;>;"
    iget-object v0, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->subscribedCodecParameterKeys:Lcom/google/common/collect/ImmutableSet;

    invoke-virtual {v0, p1}, Lcom/google/common/collect/ImmutableSet;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1167
    return-void

    .line 1170
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1f

    if-lt v0, v1, :cond_4

    .line 1171
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0, p1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 1172
    .local v0, "addedKeys":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 1173
    .local v1, "removedKeys":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    iget-object v2, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->subscribedCodecParameterKeys:Lcom/google/common/collect/ImmutableSet;

    invoke-virtual {v2}, Lcom/google/common/collect/ImmutableSet;->iterator()Lcom/google/common/collect/UnmodifiableIterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 1174
    .local v3, "oldKey":Ljava/lang/String;
    invoke-interface {v0, v3}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 1175
    invoke-interface {v1, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1177
    .end local v3    # "oldKey":Ljava/lang/String;
    :cond_1
    goto :goto_0

    .line 1179
    :cond_2
    invoke-virtual {p0}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->getCodec()Landroidx/media3/exoplayer/mediacodec/MediaCodecAdapter;

    move-result-object v2

    .line 1180
    .local v2, "codec":Landroidx/media3/exoplayer/mediacodec/MediaCodecAdapter;
    if-eqz v2, :cond_4

    .line 1181
    invoke-interface {v1}, Ljava/util/Set;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_3

    .line 1182
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-interface {v2, v3}, Landroidx/media3/exoplayer/mediacodec/MediaCodecAdapter;->unsubscribeFromVendorParameters(Ljava/util/List;)V

    .line 1184
    :cond_3
    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_4

    .line 1185
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-interface {v2, v3}, Landroidx/media3/exoplayer/mediacodec/MediaCodecAdapter;->subscribeToVendorParameters(Ljava/util/List;)V

    .line 1190
    .end local v0    # "addedKeys":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v1    # "removedKeys":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v2    # "codec":Landroidx/media3/exoplayer/mediacodec/MediaCodecAdapter;
    :cond_4
    iput-object p1, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->subscribedCodecParameterKeys:Lcom/google/common/collect/ImmutableSet;

    .line 1191
    return-void
.end method

.method private updateDrmSession()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media3/exoplayer/ExoPlaybackException;
        }
    .end annotation

    .line 2578
    iget-object v0, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->sourceDrmSession:Landroidx/media3/exoplayer/drm/DrmSession;

    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media3/exoplayer/drm/DrmSession;

    invoke-interface {v0}, Landroidx/media3/exoplayer/drm/DrmSession;->getCryptoConfig()Landroidx/media3/decoder/CryptoConfig;

    move-result-object v0

    .line 2579
    .local v0, "cryptoConfig":Landroidx/media3/decoder/CryptoConfig;
    instance-of v1, v0, Landroidx/media3/exoplayer/drm/FrameworkCryptoConfig;

    if-eqz v1, :cond_0

    .line 2581
    :try_start_0
    iget-object v1, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->mediaCrypto:Landroid/media/MediaCrypto;

    invoke-static {v1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/MediaCrypto;

    move-object v2, v0

    check-cast v2, Landroidx/media3/exoplayer/drm/FrameworkCryptoConfig;

    iget-object v2, v2, Landroidx/media3/exoplayer/drm/FrameworkCryptoConfig;->sessionId:[B

    .line 2582
    invoke-virtual {v1, v2}, Landroid/media/MediaCrypto;->setMediaDrmSession([B)V
    :try_end_0
    .catch Landroid/media/MediaCryptoException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2586
    goto :goto_0

    .line 2583
    :catch_0
    move-exception v1

    .line 2584
    .local v1, "e":Landroid/media/MediaCryptoException;
    iget-object v2, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->inputFormat:Landroidx/media3/common/Format;

    const/16 v3, 0x1776

    invoke-virtual {p0, v1, v2, v3}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->createRendererException(Ljava/lang/Throwable;Landroidx/media3/common/Format;I)Landroidx/media3/exoplayer/ExoPlaybackException;

    move-result-object v2

    throw v2

    .line 2588
    .end local v1    # "e":Landroid/media/MediaCryptoException;
    :cond_0
    :goto_0
    iget-object v1, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->sourceDrmSession:Landroidx/media3/exoplayer/drm/DrmSession;

    invoke-direct {p0, v1}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->setCodecDrmSession(Landroidx/media3/exoplayer/drm/DrmSession;)V

    .line 2589
    const/4 v1, 0x0

    iput v1, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->codecDrainState:I

    .line 2590
    iput v1, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->codecDrainAction:I

    .line 2591
    return-void
.end method


# virtual methods
.method protected final applyCodecParametersToMediaFormat(Landroid/media/MediaFormat;)V
    .locals 2
    .param p1, "mediaFormat"    # Landroid/media/MediaFormat;

    .line 2463
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1d

    if-lt v0, v1, :cond_0

    .line 2464
    iget-object v0, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->activeCodecParameters:Landroidx/media3/exoplayer/CodecParameters;

    invoke-virtual {v0, p1}, Landroidx/media3/exoplayer/CodecParameters;->applyTo(Landroid/media/MediaFormat;)V

    .line 2466
    :cond_0
    return-void
.end method

.method protected canReuseCodec(Landroidx/media3/exoplayer/mediacodec/MediaCodecInfo;Landroidx/media3/common/Format;Landroidx/media3/common/Format;)Landroidx/media3/exoplayer/DecoderReuseEvaluation;
    .locals 6
    .param p1, "codecInfo"    # Landroidx/media3/exoplayer/mediacodec/MediaCodecInfo;
    .param p2, "oldFormat"    # Landroidx/media3/common/Format;
    .param p3, "newFormat"    # Landroidx/media3/common/Format;

    .line 2015
    new-instance v0, Landroidx/media3/exoplayer/DecoderReuseEvaluation;

    iget-object v1, p1, Landroidx/media3/exoplayer/mediacodec/MediaCodecInfo;->name:Ljava/lang/String;

    const/4 v4, 0x0

    const/4 v5, 0x1

    move-object v2, p2

    move-object v3, p3

    .end local p2    # "oldFormat":Landroidx/media3/common/Format;
    .end local p3    # "newFormat":Landroidx/media3/common/Format;
    .local v2, "oldFormat":Landroidx/media3/common/Format;
    .local v3, "newFormat":Landroidx/media3/common/Format;
    invoke-direct/range {v0 .. v5}, Landroidx/media3/exoplayer/DecoderReuseEvaluation;-><init>(Ljava/lang/String;Landroidx/media3/common/Format;Landroidx/media3/common/Format;II)V

    return-object v0
.end method

.method protected createDecoderException(Ljava/lang/Throwable;Landroidx/media3/exoplayer/mediacodec/MediaCodecInfo;)Landroidx/media3/exoplayer/mediacodec/MediaCodecDecoderException;
    .locals 1
    .param p1, "cause"    # Ljava/lang/Throwable;
    .param p2, "codecInfo"    # Landroidx/media3/exoplayer/mediacodec/MediaCodecInfo;

    .line 1144
    new-instance v0, Landroidx/media3/exoplayer/mediacodec/MediaCodecDecoderException;

    invoke-direct {v0, p1, p2}, Landroidx/media3/exoplayer/mediacodec/MediaCodecDecoderException;-><init>(Ljava/lang/Throwable;Landroidx/media3/exoplayer/mediacodec/MediaCodecInfo;)V

    return-object v0
.end method

.method public experimentalEnableProcessedStreamChangedAtStart()V
    .locals 1

    .line 538
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->experimentalEnableProcessedStreamChangedAtStart:Z

    .line 539
    return-void
.end method

.method protected final flushOrReinitializeCodec()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media3/exoplayer/ExoPlaybackException;
        }
    .end annotation

    .line 999
    invoke-direct {p0}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->flushOrReleaseCodec()Z

    move-result v0

    .line 1000
    .local v0, "released":Z
    if-eqz v0, :cond_0

    .line 1001
    invoke-virtual {p0}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->maybeInitCodecOrBypass()V

    .line 1003
    :cond_0
    return v0
.end method

.method protected final getCodec()Landroidx/media3/exoplayer/mediacodec/MediaCodecAdapter;
    .locals 1

    .line 721
    iget-object v0, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->codec:Landroidx/media3/exoplayer/mediacodec/MediaCodecAdapter;

    return-object v0
.end method

.method protected getCodecBufferFlags(Landroidx/media3/decoder/DecoderInputBuffer;)I
    .locals 1
    .param p1, "buffer"    # Landroidx/media3/decoder/DecoderInputBuffer;

    .line 1928
    const/4 v0, 0x0

    return v0
.end method

.method protected final getCodecInfo()Landroidx/media3/exoplayer/mediacodec/MediaCodecInfo;
    .locals 1

    .line 736
    iget-object v0, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->codecInfo:Landroidx/media3/exoplayer/mediacodec/MediaCodecInfo;

    return-object v0
.end method

.method protected final getCodecInputFormat()Landroidx/media3/common/Format;
    .locals 1

    .line 726
    iget-object v0, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->codecInputFormat:Landroidx/media3/common/Format;

    return-object v0
.end method

.method protected getCodecOperatingRate()F
    .locals 1

    .line 2060
    iget v0, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->codecOperatingRate:F

    return v0
.end method

.method protected getCodecOperatingRateV23(FLandroidx/media3/common/Format;[Landroidx/media3/common/Format;)F
    .locals 1
    .param p1, "targetPlaybackSpeed"    # F
    .param p2, "format"    # Landroidx/media3/common/Format;
    .param p3, "streamFormats"    # [Landroidx/media3/common/Format;

    .line 2079
    const/high16 v0, -0x40800000    # -1.0f

    return v0
.end method

.method protected final getCodecOutputMediaFormat()Landroid/media/MediaFormat;
    .locals 1

    .line 731
    iget-object v0, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->codecOutputMediaFormat:Landroid/media/MediaFormat;

    return-object v0
.end method

.method protected abstract getDecoderInfos(Landroidx/media3/exoplayer/mediacodec/MediaCodecSelector;Landroidx/media3/common/Format;Z)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/media3/exoplayer/mediacodec/MediaCodecSelector;",
            "Landroidx/media3/common/Format;",
            "Z)",
            "Ljava/util/List<",
            "Landroidx/media3/exoplayer/mediacodec/MediaCodecInfo;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media3/exoplayer/mediacodec/MediaCodecUtil$DecoderQueryException;
        }
    .end annotation
.end method

.method public final getDurationToProgressUs(JJ)J
    .locals 6
    .param p1, "positionUs"    # J
    .param p3, "elapsedRealtimeUs"    # J

    .line 524
    iget-boolean v5, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->codecRegisteredOnBufferAvailableListener:Z

    move-object v0, p0

    move-wide v1, p1

    move-wide v3, p3

    .end local p1    # "positionUs":J
    .end local p3    # "elapsedRealtimeUs":J
    .local v1, "positionUs":J
    .local v3, "elapsedRealtimeUs":J
    invoke-virtual/range {v0 .. v5}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->getDurationToProgressUs(JJZ)J

    move-result-wide p1

    return-wide p1
.end method

.method protected getDurationToProgressUs(JJZ)J
    .locals 2
    .param p1, "positionUs"    # J
    .param p3, "elapsedRealtimeUs"    # J
    .param p5, "isOnBufferAvailableListenerRegistered"    # Z

    .line 561
    invoke-super {p0, p1, p2, p3, p4}, Landroidx/media3/exoplayer/BaseRenderer;->getDurationToProgressUs(JJ)J

    move-result-wide v0

    return-wide v0
.end method

.method protected getLargestQueuedPresentationTimeUs()J
    .locals 2

    .line 2444
    iget-wide v0, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->largestQueuedPresentationTimeUs:J

    return-wide v0
.end method

.method protected getLastBufferInStreamPresentationTimeUs()J
    .locals 2

    .line 2432
    iget-object v0, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->outputStreamInfo:Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer$OutputStreamInfo;

    iget-wide v0, v0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer$OutputStreamInfo;->lastBufferTimeUs:J

    return-wide v0
.end method

.method protected final getLastProcessedOutputBufferTimeUs()J
    .locals 2

    .line 1979
    iget-wide v0, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->lastProcessedOutputBufferTimeUs:J

    return-wide v0
.end method

.method protected abstract getMediaCodecConfiguration(Landroidx/media3/exoplayer/mediacodec/MediaCodecInfo;Landroidx/media3/common/Format;Landroid/media/MediaCrypto;F)Landroidx/media3/exoplayer/mediacodec/MediaCodecAdapter$Configuration;
.end method

.method protected final getOutputStreamOffsetUs()J
    .locals 2

    .line 2453
    iget-object v0, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->outputStreamInfo:Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer$OutputStreamInfo;

    iget-wide v0, v0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer$OutputStreamInfo;->streamOffsetUs:J

    return-wide v0
.end method

.method protected final getOutputStreamStartPositionUs()J
    .locals 2

    .line 2458
    iget-object v0, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->outputStreamInfo:Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer$OutputStreamInfo;

    iget-wide v0, v0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer$OutputStreamInfo;->startPositionUs:J

    return-wide v0
.end method

.method protected getPlaybackSpeed()F
    .locals 1

    .line 2055
    iget v0, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->currentPlaybackSpeed:F

    return v0
.end method

.method protected getSkippedFlushOffsetUs()J
    .locals 2

    .line 1068
    iget-wide v0, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->skippedFlushOffsetUs:J

    return-wide v0
.end method

.method protected final getWakeupListener()Landroidx/media3/exoplayer/Renderer$WakeupListener;
    .locals 1

    .line 2085
    iget-object v0, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->wakeupListener:Landroidx/media3/exoplayer/Renderer$WakeupListener;

    return-object v0
.end method

.method protected handleInputBufferSupplementalData(Landroidx/media3/decoder/DecoderInputBuffer;)V
    .locals 0
    .param p1, "buffer"    # Landroidx/media3/decoder/DecoderInputBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media3/exoplayer/ExoPlaybackException;
        }
    .end annotation

    .line 1905
    return-void
.end method

.method public handleMessage(ILjava/lang/Object;)V
    .locals 2
    .param p1, "messageType"    # I
    .param p2, "message"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media3/exoplayer/ExoPlaybackException;
        }
    .end annotation

    .line 895
    const/16 v0, 0x1d

    sparse-switch p1, :sswitch_data_0

    .line 917
    invoke-super {p0, p1, p2}, Landroidx/media3/exoplayer/BaseRenderer;->handleMessage(ILjava/lang/Object;)V

    goto :goto_0

    .line 910
    :sswitch_0
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v1, v0, :cond_1

    .line 912
    invoke-static {p2}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/collect/ImmutableSet;

    .line 913
    .local v0, "keys":Lcom/google/common/collect/ImmutableSet;, "Lcom/google/common/collect/ImmutableSet<Ljava/lang/String;>;"
    invoke-direct {p0, v0}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->updateCodecSubscriptions(Lcom/google/common/collect/ImmutableSet;)V

    .line 914
    .end local v0    # "keys":Lcom/google/common/collect/ImmutableSet;, "Lcom/google/common/collect/ImmutableSet<Ljava/lang/String;>;"
    goto :goto_0

    .line 900
    :sswitch_1
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v1, v0, :cond_1

    .line 901
    invoke-static {p2}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media3/exoplayer/CodecParameters;

    iput-object v0, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->activeCodecParameters:Landroidx/media3/exoplayer/CodecParameters;

    .line 903
    invoke-virtual {p0}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->getCodec()Landroidx/media3/exoplayer/mediacodec/MediaCodecAdapter;

    move-result-object v0

    .line 904
    .local v0, "codec":Landroidx/media3/exoplayer/mediacodec/MediaCodecAdapter;
    if-eqz v0, :cond_0

    .line 905
    iget-object v1, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->activeCodecParameters:Landroidx/media3/exoplayer/CodecParameters;

    invoke-virtual {v1}, Landroidx/media3/exoplayer/CodecParameters;->toBundle()Landroid/os/Bundle;

    move-result-object v1

    invoke-interface {v0, v1}, Landroidx/media3/exoplayer/mediacodec/MediaCodecAdapter;->setParameters(Landroid/os/Bundle;)V

    .line 907
    .end local v0    # "codec":Landroidx/media3/exoplayer/mediacodec/MediaCodecAdapter;
    :cond_0
    goto :goto_0

    .line 897
    :sswitch_2
    move-object v0, p2

    check-cast v0, Landroidx/media3/exoplayer/Renderer$WakeupListener;

    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media3/exoplayer/Renderer$WakeupListener;

    iput-object v0, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->wakeupListener:Landroidx/media3/exoplayer/Renderer$WakeupListener;

    .line 898
    nop

    .line 920
    :cond_1
    :goto_0
    return-void

    :sswitch_data_0
    .sparse-switch
        0xb -> :sswitch_2
        0x15 -> :sswitch_1
        0x16 -> :sswitch_0
    .end sparse-switch
.end method

.method protected final isBypassEnabled()Z
    .locals 1

    .line 667
    iget-boolean v0, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->bypassEnabled:Z

    return v0
.end method

.method protected final isBypassPossible(Landroidx/media3/common/Format;)Z
    .locals 1
    .param p1, "format"    # Landroidx/media3/common/Format;

    .line 637
    iget-object v0, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->sourceDrmSession:Landroidx/media3/exoplayer/drm/DrmSession;

    if-nez v0, :cond_0

    invoke-virtual {p0, p1}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->shouldUseBypass(Landroidx/media3/common/Format;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isEnded()Z
    .locals 1

    .line 2036
    iget-boolean v0, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->outputStreamEnded:Z

    return v0
.end method

.method public isReady()Z
    .locals 1

    .line 2041
    invoke-virtual {p0}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->isReadyForDecoding()Z

    move-result v0

    return v0
.end method

.method protected final isReadyForDecoding()Z
    .locals 4

    .line 2046
    iget-object v0, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->inputFormat:Landroidx/media3/common/Format;

    if-eqz v0, :cond_1

    .line 2047
    invoke-virtual {p0}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->isSourceReady()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2048
    invoke-direct {p0}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->hasOutputBuffer()Z

    move-result v0

    if-nez v0, :cond_0

    iget-wide v0, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->codecHotswapDeadlineMs:J

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    .line 2050
    invoke-virtual {p0}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->getClock()Landroidx/media3/common/util/Clock;

    move-result-object v0

    invoke-interface {v0}, Landroidx/media3/common/util/Clock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->codecHotswapDeadlineMs:J

    cmp-long v0, v0, v2

    if-gez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 2046
    :goto_0
    return v0
.end method

.method synthetic lambda$feedInputBuffer$0$androidx-media3-exoplayer-mediacodec-MediaCodecRenderer(Landroidx/media3/exoplayer/FormatHolder;)V
    .locals 3
    .param p1, "formatHolder"    # Landroidx/media3/exoplayer/FormatHolder;

    .line 1532
    iget-object v0, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->readDataResultHolder:Ljava/util/concurrent/atomic/AtomicInteger;

    iget-object v1, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->buffer:Landroidx/media3/decoder/DecoderInputBuffer;

    const/4 v2, 0x0

    invoke-virtual {p0, p1, v1, v2}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->readSource(Landroidx/media3/exoplayer/FormatHolder;Landroidx/media3/decoder/DecoderInputBuffer;I)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    return-void
.end method

.method protected final maybeInitCodecOrBypass()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media3/exoplayer/ExoPlaybackException;
        }
    .end annotation

    .line 595
    iget-object v0, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->codec:Landroidx/media3/exoplayer/mediacodec/MediaCodecAdapter;

    if-nez v0, :cond_7

    iget-boolean v0, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->bypassEnabled:Z

    if-nez v0, :cond_7

    iget-object v0, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->inputFormat:Landroidx/media3/common/Format;

    if-nez v0, :cond_0

    goto :goto_1

    .line 599
    :cond_0
    iget-object v0, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->inputFormat:Landroidx/media3/common/Format;

    .line 601
    .local v0, "inputFormat":Landroidx/media3/common/Format;
    invoke-virtual {p0, v0}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->isBypassPossible(Landroidx/media3/common/Format;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 602
    invoke-direct {p0, v0}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->initBypass(Landroidx/media3/common/Format;)V

    .line 603
    return-void

    .line 606
    :cond_1
    iget-object v1, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->sourceDrmSession:Landroidx/media3/exoplayer/drm/DrmSession;

    invoke-direct {p0, v1}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->setCodecDrmSession(Landroidx/media3/exoplayer/drm/DrmSession;)V

    .line 607
    iget-object v1, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->codecDrmSession:Landroidx/media3/exoplayer/drm/DrmSession;

    if-eqz v1, :cond_2

    invoke-direct {p0}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->initMediaCryptoIfDrmSessionReady()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 609
    :cond_2
    :try_start_0
    iget-object v1, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->codecDrmSession:Landroidx/media3/exoplayer/drm/DrmSession;

    if-eqz v1, :cond_4

    iget-object v1, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->codecDrmSession:Landroidx/media3/exoplayer/drm/DrmSession;

    .line 611
    invoke-interface {v1}, Landroidx/media3/exoplayer/drm/DrmSession;->getState()I

    move-result v1

    const/4 v2, 0x3

    if-eq v1, v2, :cond_3

    iget-object v1, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->codecDrmSession:Landroidx/media3/exoplayer/drm/DrmSession;

    .line 612
    invoke-interface {v1}, Landroidx/media3/exoplayer/drm/DrmSession;->getState()I

    move-result v1

    const/4 v2, 0x4

    if-ne v1, v2, :cond_4

    :cond_3
    iget-object v1, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->codecDrmSession:Landroidx/media3/exoplayer/drm/DrmSession;

    iget-object v2, v0, Landroidx/media3/common/Format;->sampleMimeType:Ljava/lang/String;

    .line 613
    invoke-static {v2}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v1, v2}, Landroidx/media3/exoplayer/drm/DrmSession;->requiresSecureDecoder(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    const/4 v1, 0x1

    goto :goto_0

    :cond_4
    const/4 v1, 0x0

    .line 614
    .local v1, "mediaCryptoRequiresSecureDecoder":Z
    :goto_0
    iget-object v2, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->mediaCrypto:Landroid/media/MediaCrypto;

    invoke-direct {p0, v2, v1}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->maybeInitCodecWithFallback(Landroid/media/MediaCrypto;Z)V
    :try_end_0
    .catch Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer$DecoderInitializationException; {:try_start_0 .. :try_end_0} :catch_0

    .line 618
    .end local v1    # "mediaCryptoRequiresSecureDecoder":Z
    nop

    .line 620
    :cond_5
    iget-object v1, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->mediaCrypto:Landroid/media/MediaCrypto;

    if-eqz v1, :cond_6

    iget-object v1, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->codec:Landroidx/media3/exoplayer/mediacodec/MediaCodecAdapter;

    if-nez v1, :cond_6

    .line 622
    iget-object v1, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->mediaCrypto:Landroid/media/MediaCrypto;

    invoke-virtual {v1}, Landroid/media/MediaCrypto;->release()V

    .line 623
    const/4 v1, 0x0

    iput-object v1, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->mediaCrypto:Landroid/media/MediaCrypto;

    .line 625
    :cond_6
    return-void

    .line 615
    :catch_0
    move-exception v1

    .line 616
    .local v1, "e":Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer$DecoderInitializationException;
    const/16 v2, 0xfa1

    invoke-virtual {p0, v1, v0, v2}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->createRendererException(Ljava/lang/Throwable;Landroidx/media3/common/Format;I)Landroidx/media3/exoplayer/ExoPlaybackException;

    move-result-object v2

    throw v2

    .line 597
    .end local v0    # "inputFormat":Landroidx/media3/common/Format;
    .end local v1    # "e":Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer$DecoderInitializationException;
    :cond_7
    :goto_1
    return-void
.end method

.method protected maybeInitializeProcessingPipeline(Landroidx/media3/common/Format;)Z
    .locals 1
    .param p1, "format"    # Landroidx/media3/common/Format;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media3/exoplayer/ExoPlaybackException;
        }
    .end annotation

    .line 1693
    const/4 v0, 0x1

    return v0
.end method

.method protected onCodecError(Ljava/lang/Exception;)V
    .locals 0
    .param p1, "codecError"    # Ljava/lang/Exception;

    .line 1735
    return-void
.end method

.method protected onCodecInitialized(Ljava/lang/String;Landroidx/media3/exoplayer/mediacodec/MediaCodecAdapter$Configuration;JJ)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "configuration"    # Landroidx/media3/exoplayer/mediacodec/MediaCodecAdapter$Configuration;
    .param p3, "initializedTimestampMs"    # J
    .param p5, "initializationDurationMs"    # J

    .line 1713
    return-void
.end method

.method protected abstract onCodecParametersChanged(Landroidx/media3/exoplayer/CodecParameters;)V
.end method

.method protected onCodecReleased(Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;

    .line 1724
    return-void
.end method

.method protected onDisabled()V
    .locals 1

    .line 827
    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->inputFormat:Landroidx/media3/common/Format;

    .line 828
    sget-object v0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer$OutputStreamInfo;->UNSET:Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer$OutputStreamInfo;

    invoke-direct {p0, v0}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->setOutputStreamInfo(Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer$OutputStreamInfo;)V

    .line 829
    iget-object v0, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->pendingOutputStreamChanges:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->clear()V

    .line 830
    iget-boolean v0, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->bypassEnabled:Z

    if-eqz v0, :cond_0

    .line 831
    invoke-direct {p0}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->disableBypass()V

    goto :goto_0

    .line 833
    :cond_0
    invoke-direct {p0}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->flushOrReleaseCodec()Z

    .line 835
    :goto_0
    return-void
.end method

.method protected onEnabled(ZZ)V
    .locals 1
    .param p1, "joining"    # Z
    .param p2, "mayRenderStartOfStream"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media3/exoplayer/ExoPlaybackException;
        }
    .end annotation

    .line 742
    new-instance v0, Landroidx/media3/exoplayer/DecoderCounters;

    invoke-direct {v0}, Landroidx/media3/exoplayer/DecoderCounters;-><init>()V

    iput-object v0, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->decoderCounters:Landroidx/media3/exoplayer/DecoderCounters;

    .line 743
    return-void
.end method

.method protected onInputFormatChanged(Landroidx/media3/exoplayer/FormatHolder;)Landroidx/media3/exoplayer/DecoderReuseEvaluation;
    .locals 11
    .param p1, "formatHolder"    # Landroidx/media3/exoplayer/FormatHolder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media3/exoplayer/ExoPlaybackException;
        }
    .end annotation

    .line 1756
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->waitingForFirstSampleInFormat:Z

    .line 1757
    iget-object v1, p1, Landroidx/media3/exoplayer/FormatHolder;->format:Landroidx/media3/common/Format;

    invoke-static {v1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/media3/common/Format;

    .line 1758
    .local v1, "newFormat":Landroidx/media3/common/Format;
    iget-object v2, v1, Landroidx/media3/common/Format;->sampleMimeType:Ljava/lang/String;

    if-eqz v2, :cond_f

    .line 1772
    iget-object v2, v1, Landroidx/media3/common/Format;->sampleMimeType:Ljava/lang/String;

    const-string/jumbo v3, "video/av01"

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    const/4 v4, 0x0

    if-nez v2, :cond_0

    iget-object v2, v1, Landroidx/media3/common/Format;->sampleMimeType:Ljava/lang/String;

    .line 1773
    const-string/jumbo v5, "video/x-vnd.on2.vp9"

    invoke-static {v2, v5}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, v1, Landroidx/media3/common/Format;->sampleMimeType:Ljava/lang/String;

    .line 1774
    const-string/jumbo v5, "video/dolby-vision"

    invoke-static {v2, v5}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1776
    invoke-static {v1}, Landroidx/media3/exoplayer/mediacodec/MediaCodecUtil;->getAlternativeCodecMimeType(Landroidx/media3/common/Format;)Ljava/lang/String;

    move-result-object v2

    .line 1775
    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    iget-object v2, v1, Landroidx/media3/common/Format;->initializationData:Ljava/util/List;

    .line 1777
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    .line 1778
    invoke-virtual {v1}, Landroidx/media3/common/Format;->buildUpon()Landroidx/media3/common/Format$Builder;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroidx/media3/common/Format$Builder;->setInitializationData(Ljava/util/List;)Landroidx/media3/common/Format$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/media3/common/Format$Builder;->build()Landroidx/media3/common/Format;

    move-result-object v1

    move-object v8, v1

    goto :goto_0

    .line 1781
    :cond_1
    move-object v8, v1

    .end local v1    # "newFormat":Landroidx/media3/common/Format;
    .local v8, "newFormat":Landroidx/media3/common/Format;
    :goto_0
    iget-object v1, p1, Landroidx/media3/exoplayer/FormatHolder;->drmSession:Landroidx/media3/exoplayer/drm/DrmSession;

    invoke-direct {p0, v1}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->setSourceDrmSession(Landroidx/media3/exoplayer/drm/DrmSession;)V

    .line 1782
    iput-object v8, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->inputFormat:Landroidx/media3/common/Format;

    .line 1784
    iget-boolean v1, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->bypassEnabled:Z

    if-eqz v1, :cond_2

    .line 1785
    iput-boolean v0, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->bypassDrainAndReinitialize:Z

    .line 1786
    return-object v4

    .line 1789
    :cond_2
    iget-object v1, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->codec:Landroidx/media3/exoplayer/mediacodec/MediaCodecAdapter;

    if-nez v1, :cond_3

    .line 1790
    iput-object v4, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->availableCodecInfos:Ljava/util/ArrayDeque;

    .line 1791
    invoke-virtual {p0}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->maybeInitCodecOrBypass()V

    .line 1792
    return-object v4

    .line 1801
    :cond_3
    iget-object v1, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->codec:Landroidx/media3/exoplayer/mediacodec/MediaCodecAdapter;

    .line 1802
    .local v1, "codec":Landroidx/media3/exoplayer/mediacodec/MediaCodecAdapter;
    iget-object v2, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->codecInfo:Landroidx/media3/exoplayer/mediacodec/MediaCodecInfo;

    invoke-static {v2}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/media3/exoplayer/mediacodec/MediaCodecInfo;

    .line 1804
    .local v2, "codecInfo":Landroidx/media3/exoplayer/mediacodec/MediaCodecInfo;
    iget-object v3, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->codecInputFormat:Landroidx/media3/common/Format;

    invoke-static {v3}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object v7, v3

    check-cast v7, Landroidx/media3/common/Format;

    .line 1805
    .local v7, "oldFormat":Landroidx/media3/common/Format;
    iget-object v3, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->codecDrmSession:Landroidx/media3/exoplayer/drm/DrmSession;

    iget-object v4, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->sourceDrmSession:Landroidx/media3/exoplayer/drm/DrmSession;

    invoke-direct {p0, v2, v8, v3, v4}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->drmNeedsCodecReinitialization(Landroidx/media3/exoplayer/mediacodec/MediaCodecInfo;Landroidx/media3/common/Format;Landroidx/media3/exoplayer/drm/DrmSession;Landroidx/media3/exoplayer/drm/DrmSession;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 1806
    invoke-direct {p0}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->drainAndReinitializeCodec()V

    .line 1807
    new-instance v5, Landroidx/media3/exoplayer/DecoderReuseEvaluation;

    iget-object v6, v2, Landroidx/media3/exoplayer/mediacodec/MediaCodecInfo;->name:Ljava/lang/String;

    const/4 v9, 0x0

    const/16 v10, 0x80

    invoke-direct/range {v5 .. v10}, Landroidx/media3/exoplayer/DecoderReuseEvaluation;-><init>(Ljava/lang/String;Landroidx/media3/common/Format;Landroidx/media3/common/Format;II)V

    return-object v5

    .line 1814
    :cond_4
    iget-object v3, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->sourceDrmSession:Landroidx/media3/exoplayer/drm/DrmSession;

    iget-object v4, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->codecDrmSession:Landroidx/media3/exoplayer/drm/DrmSession;

    const/4 v5, 0x0

    if-eq v3, v4, :cond_5

    move v3, v0

    goto :goto_1

    :cond_5
    move v3, v5

    .line 1816
    .local v3, "drainAndUpdateCodecDrmSession":Z
    :goto_1
    invoke-virtual {p0, v2, v7, v8}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->canReuseCodec(Landroidx/media3/exoplayer/mediacodec/MediaCodecInfo;Landroidx/media3/common/Format;Landroidx/media3/common/Format;)Landroidx/media3/exoplayer/DecoderReuseEvaluation;

    move-result-object v4

    .line 1817
    .local v4, "evaluation":Landroidx/media3/exoplayer/DecoderReuseEvaluation;
    const/4 v6, 0x0

    .line 1818
    .local v6, "overridingDiscardReasons":I
    iget v9, v4, Landroidx/media3/exoplayer/DecoderReuseEvaluation;->result:I

    packed-switch v9, :pswitch_data_0

    .line 1864
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 1854
    :pswitch_0
    invoke-direct {p0, v8}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->updateCodecOperatingRate(Landroidx/media3/common/Format;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 1855
    or-int/lit8 v6, v6, 0x10

    move v10, v6

    goto/16 :goto_3

    .line 1857
    :cond_6
    iput-object v8, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->codecInputFormat:Landroidx/media3/common/Format;

    .line 1858
    if-eqz v3, :cond_c

    invoke-direct {p0}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->drainAndUpdateCodecDrmSession()Z

    move-result v0

    if-nez v0, :cond_c

    .line 1859
    or-int/lit8 v6, v6, 0x2

    move v10, v6

    goto/16 :goto_3

    .line 1837
    :pswitch_1
    invoke-direct {p0, v8}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->updateCodecOperatingRate(Landroidx/media3/common/Format;)Z

    move-result v9

    if-nez v9, :cond_7

    .line 1838
    or-int/lit8 v6, v6, 0x10

    move v10, v6

    goto :goto_3

    .line 1840
    :cond_7
    iput-boolean v0, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->codecReconfigured:Z

    .line 1841
    iput v0, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->codecReconfigurationState:I

    .line 1842
    iget v9, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->codecAdaptationWorkaroundMode:I

    const/4 v10, 0x2

    if-eq v9, v10, :cond_9

    iget v9, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->codecAdaptationWorkaroundMode:I

    if-ne v9, v0, :cond_8

    iget v9, v8, Landroidx/media3/common/Format;->width:I

    iget v10, v7, Landroidx/media3/common/Format;->width:I

    if-ne v9, v10, :cond_8

    iget v9, v8, Landroidx/media3/common/Format;->height:I

    iget v10, v7, Landroidx/media3/common/Format;->height:I

    if-ne v9, v10, :cond_8

    goto :goto_2

    :cond_8
    move v0, v5

    :cond_9
    :goto_2
    iput-boolean v0, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->codecNeedsAdaptationWorkaroundBuffer:Z

    .line 1847
    iput-object v8, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->codecInputFormat:Landroidx/media3/common/Format;

    .line 1848
    if-eqz v3, :cond_c

    invoke-direct {p0}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->drainAndUpdateCodecDrmSession()Z

    move-result v0

    if-nez v0, :cond_c

    .line 1849
    or-int/lit8 v6, v6, 0x2

    move v10, v6

    goto :goto_3

    .line 1823
    :pswitch_2
    invoke-direct {p0, v8}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->updateCodecOperatingRate(Landroidx/media3/common/Format;)Z

    move-result v0

    if-nez v0, :cond_a

    .line 1824
    or-int/lit8 v6, v6, 0x10

    move v10, v6

    goto :goto_3

    .line 1826
    :cond_a
    iput-object v8, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->codecInputFormat:Landroidx/media3/common/Format;

    .line 1827
    if-eqz v3, :cond_b

    .line 1828
    invoke-direct {p0}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->drainAndUpdateCodecDrmSession()Z

    move-result v0

    if-nez v0, :cond_c

    .line 1829
    or-int/lit8 v6, v6, 0x2

    move v10, v6

    goto :goto_3

    .line 1831
    :cond_b
    invoke-direct {p0}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->drainAndFlushCodec()Z

    move-result v0

    if-nez v0, :cond_c

    .line 1832
    or-int/lit8 v6, v6, 0x2

    move v10, v6

    goto :goto_3

    .line 1820
    :pswitch_3
    invoke-direct {p0}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->drainAndReinitializeCodec()V

    .line 1821
    nop

    .line 1867
    :cond_c
    move v10, v6

    .end local v6    # "overridingDiscardReasons":I
    .local v10, "overridingDiscardReasons":I
    :goto_3
    iget v0, v4, Landroidx/media3/exoplayer/DecoderReuseEvaluation;->result:I

    if-eqz v0, :cond_e

    iget-object v0, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->codec:Landroidx/media3/exoplayer/mediacodec/MediaCodecAdapter;

    if-ne v0, v1, :cond_d

    iget v0, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->codecDrainAction:I

    const/4 v5, 0x3

    if-ne v0, v5, :cond_e

    .line 1871
    :cond_d
    new-instance v5, Landroidx/media3/exoplayer/DecoderReuseEvaluation;

    iget-object v6, v2, Landroidx/media3/exoplayer/mediacodec/MediaCodecInfo;->name:Ljava/lang/String;

    const/4 v9, 0x0

    invoke-direct/range {v5 .. v10}, Landroidx/media3/exoplayer/DecoderReuseEvaluation;-><init>(Ljava/lang/String;Landroidx/media3/common/Format;Landroidx/media3/common/Format;II)V

    return-object v5

    .line 1875
    :cond_e
    return-object v4

    .line 1761
    .end local v2    # "codecInfo":Landroidx/media3/exoplayer/mediacodec/MediaCodecInfo;
    .end local v3    # "drainAndUpdateCodecDrmSession":Z
    .end local v4    # "evaluation":Landroidx/media3/exoplayer/DecoderReuseEvaluation;
    .end local v7    # "oldFormat":Landroidx/media3/common/Format;
    .end local v8    # "newFormat":Landroidx/media3/common/Format;
    .end local v10    # "overridingDiscardReasons":I
    .local v1, "newFormat":Landroidx/media3/common/Format;
    :cond_f
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v2, "Sample MIME type is null."

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    const/16 v2, 0xfa5

    invoke-virtual {p0, v0, v1, v2}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->createRendererException(Ljava/lang/Throwable;Landroidx/media3/common/Format;I)Landroidx/media3/exoplayer/ExoPlaybackException;

    move-result-object v0

    throw v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected onOutputFormatChanged(Landroidx/media3/common/Format;Landroid/media/MediaFormat;)V
    .locals 0
    .param p1, "format"    # Landroidx/media3/common/Format;
    .param p2, "mediaFormat"    # Landroid/media/MediaFormat;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media3/exoplayer/ExoPlaybackException;
        }
    .end annotation

    .line 1892
    return-void
.end method

.method protected onOutputStreamOffsetUsChanged(J)V
    .locals 0
    .param p1, "outputStreamOffsetUs"    # J

    .line 2032
    return-void
.end method

.method protected onPositionReset(JZZ)V
    .locals 1
    .param p1, "positionUs"    # J
    .param p3, "joining"    # Z
    .param p4, "sampleStreamIsResetToKeyFrame"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media3/exoplayer/ExoPlaybackException;
        }
    .end annotation

    .line 790
    iget-object v0, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->pendingOutputStreamChanges:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 792
    iget-object v0, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->pendingOutputStreamChanges:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->getLast()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer$OutputStreamInfo;

    iput-object v0, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->outputStreamInfo:Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer$OutputStreamInfo;

    .line 794
    :cond_0
    iget-object v0, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->pendingOutputStreamChanges:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->clear()V

    .line 795
    if-nez p4, :cond_1

    .line 798
    return-void

    .line 800
    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->inputStreamEnded:Z

    .line 801
    iput-boolean v0, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->outputStreamEnded:Z

    .line 802
    iput-boolean v0, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->pendingOutputEndOfStream:Z

    .line 803
    iget-boolean v0, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->bypassEnabled:Z

    if-eqz v0, :cond_2

    .line 804
    invoke-direct {p0}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->resetBypassState()V

    goto :goto_0

    .line 806
    :cond_2
    invoke-virtual {p0}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->flushOrReinitializeCodec()Z

    .line 811
    :goto_0
    iget-object v0, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->outputStreamInfo:Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer$OutputStreamInfo;

    iget-object v0, v0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer$OutputStreamInfo;->formatQueue:Landroidx/media3/common/util/TimedValueQueue;

    invoke-virtual {v0}, Landroidx/media3/common/util/TimedValueQueue;->size()I

    move-result v0

    if-lez v0, :cond_3

    .line 812
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->waitingForFirstSampleInFormat:Z

    .line 814
    :cond_3
    iget-object v0, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->outputStreamInfo:Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer$OutputStreamInfo;

    iget-object v0, v0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer$OutputStreamInfo;->formatQueue:Landroidx/media3/common/util/TimedValueQueue;

    invoke-virtual {v0}, Landroidx/media3/common/util/TimedValueQueue;->clear()V

    .line 815
    return-void
.end method

.method protected onProcessedOutputBuffer(J)V
    .locals 2
    .param p1, "presentationTimeUs"    # J

    .line 1989
    iput-wide p1, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->lastProcessedOutputBufferTimeUs:J

    .line 1990
    :goto_0
    iget-object v0, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->pendingOutputStreamChanges:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->pendingOutputStreamChanges:Ljava/util/ArrayDeque;

    .line 1991
    invoke-virtual {v0}, Ljava/util/ArrayDeque;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer$OutputStreamInfo;

    iget-wide v0, v0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer$OutputStreamInfo;->previousStreamLastBufferTimeUs:J

    cmp-long v0, p1, v0

    if-ltz v0, :cond_0

    .line 1992
    iget-object v0, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->pendingOutputStreamChanges:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer$OutputStreamInfo;

    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer$OutputStreamInfo;

    invoke-direct {p0, v0}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->setOutputStreamInfo(Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer$OutputStreamInfo;)V

    .line 1993
    invoke-virtual {p0}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->onProcessedStreamChange()V

    goto :goto_0

    .line 1995
    :cond_0
    return-void
.end method

.method protected onProcessedStreamChange()V
    .locals 0

    .line 2000
    return-void
.end method

.method protected onQueueInputBuffer(Landroidx/media3/decoder/DecoderInputBuffer;)V
    .locals 0
    .param p1, "buffer"    # Landroidx/media3/decoder/DecoderInputBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media3/exoplayer/ExoPlaybackException;
        }
    .end annotation

    .line 1917
    return-void
.end method

.method protected onReset()V
    .locals 2

    .line 840
    const/4 v0, 0x0

    :try_start_0
    invoke-direct {p0}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->disableBypass()V

    .line 841
    invoke-virtual {p0}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->releaseCodec()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 843
    invoke-direct {p0, v0}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->setSourceDrmSession(Landroidx/media3/exoplayer/drm/DrmSession;)V

    .line 844
    nop

    .line 845
    return-void

    .line 843
    :catchall_0
    move-exception v1

    invoke-direct {p0, v0}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->setSourceDrmSession(Landroidx/media3/exoplayer/drm/DrmSession;)V

    .line 844
    throw v1
.end method

.method protected onStarted()V
    .locals 0

    .line 885
    return-void
.end method

.method protected onStopped()V
    .locals 0

    .line 890
    return-void
.end method

.method protected onStreamChanged([Landroidx/media3/common/Format;JJLandroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;)V
    .locals 14
    .param p1, "formats"    # [Landroidx/media3/common/Format;
    .param p2, "startPositionUs"    # J
    .param p4, "offsetUs"    # J
    .param p6, "mediaPeriodId"    # Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media3/exoplayer/ExoPlaybackException;
        }
    .end annotation

    .line 761
    iget-object v0, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->outputStreamInfo:Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer$OutputStreamInfo;

    iget-wide v0, v0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer$OutputStreamInfo;->streamOffsetUs:J

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 763
    new-instance v4, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer$OutputStreamInfo;

    const-wide v5, -0x7fffffffffffffffL    # -4.9E-324

    move-wide/from16 v7, p2

    move-wide/from16 v9, p4

    invoke-direct/range {v4 .. v10}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer$OutputStreamInfo;-><init>(JJJ)V

    invoke-direct {p0, v4}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->setOutputStreamInfo(Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer$OutputStreamInfo;)V

    .line 766
    iget-boolean v0, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->experimentalEnableProcessedStreamChangedAtStart:Z

    if-eqz v0, :cond_3

    .line 767
    invoke-virtual {p0}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->onProcessedStreamChange()V

    goto :goto_0

    .line 769
    :cond_0
    iget-object v0, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->pendingOutputStreamChanges:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-wide v0, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->largestQueuedPresentationTimeUs:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    iget-wide v0, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->lastProcessedOutputBufferTimeUs:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_2

    iget-wide v0, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->lastProcessedOutputBufferTimeUs:J

    iget-wide v4, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->largestQueuedPresentationTimeUs:J

    cmp-long v0, v0, v4

    if-ltz v0, :cond_2

    .line 774
    :cond_1
    new-instance v7, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer$OutputStreamInfo;

    const-wide v8, -0x7fffffffffffffffL    # -4.9E-324

    move-wide/from16 v10, p2

    move-wide/from16 v12, p4

    invoke-direct/range {v7 .. v13}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer$OutputStreamInfo;-><init>(JJJ)V

    invoke-direct {p0, v7}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->setOutputStreamInfo(Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer$OutputStreamInfo;)V

    .line 777
    iget-object v0, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->outputStreamInfo:Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer$OutputStreamInfo;

    iget-wide v0, v0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer$OutputStreamInfo;->streamOffsetUs:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_3

    .line 778
    invoke-virtual {p0}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->onProcessedStreamChange()V

    goto :goto_0

    .line 781
    :cond_2
    iget-object v0, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->pendingOutputStreamChanges:Ljava/util/ArrayDeque;

    new-instance v7, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer$OutputStreamInfo;

    iget-wide v8, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->largestQueuedPresentationTimeUs:J

    move-wide/from16 v10, p2

    move-wide/from16 v12, p4

    invoke-direct/range {v7 .. v13}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer$OutputStreamInfo;-><init>(JJJ)V

    invoke-virtual {v0, v7}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    .line 784
    :cond_3
    :goto_0
    return-void
.end method

.method protected abstract processOutputBuffer(JJLandroidx/media3/exoplayer/mediacodec/MediaCodecAdapter;Ljava/nio/ByteBuffer;IIIJZZLandroidx/media3/common/Format;)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media3/exoplayer/ExoPlaybackException;
        }
    .end annotation
.end method

.method protected releaseCodec()V
    .locals 3

    .line 863
    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->codec:Landroidx/media3/exoplayer/mediacodec/MediaCodecAdapter;

    if-eqz v1, :cond_0

    .line 864
    iget-object v1, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->codec:Landroidx/media3/exoplayer/mediacodec/MediaCodecAdapter;

    invoke-interface {v1}, Landroidx/media3/exoplayer/mediacodec/MediaCodecAdapter;->release()V

    .line 865
    iget-object v1, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->decoderCounters:Landroidx/media3/exoplayer/DecoderCounters;

    iget v2, v1, Landroidx/media3/exoplayer/DecoderCounters;->decoderReleaseCount:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v1, Landroidx/media3/exoplayer/DecoderCounters;->decoderReleaseCount:I

    .line 866
    iget-object v1, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->codecInfo:Landroidx/media3/exoplayer/mediacodec/MediaCodecInfo;

    invoke-static {v1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/media3/exoplayer/mediacodec/MediaCodecInfo;

    iget-object v1, v1, Landroidx/media3/exoplayer/mediacodec/MediaCodecInfo;->name:Ljava/lang/String;

    invoke-virtual {p0, v1}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->onCodecReleased(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 869
    :cond_0
    iput-object v0, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->codec:Landroidx/media3/exoplayer/mediacodec/MediaCodecAdapter;

    .line 871
    :try_start_1
    iget-object v1, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->mediaCrypto:Landroid/media/MediaCrypto;

    if-eqz v1, :cond_1

    .line 872
    iget-object v1, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->mediaCrypto:Landroid/media/MediaCrypto;

    invoke-virtual {v1}, Landroid/media/MediaCrypto;->release()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 875
    :cond_1
    iput-object v0, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->mediaCrypto:Landroid/media/MediaCrypto;

    .line 876
    invoke-direct {p0, v0}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->setCodecDrmSession(Landroidx/media3/exoplayer/drm/DrmSession;)V

    .line 877
    invoke-virtual {p0}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->resetCodecStateForRelease()V

    .line 878
    nop

    .line 879
    nop

    .line 880
    return-void

    .line 875
    :catchall_0
    move-exception v1

    iput-object v0, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->mediaCrypto:Landroid/media/MediaCrypto;

    .line 876
    invoke-direct {p0, v0}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->setCodecDrmSession(Landroidx/media3/exoplayer/drm/DrmSession;)V

    .line 877
    invoke-virtual {p0}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->resetCodecStateForRelease()V

    .line 878
    throw v1

    .line 869
    :catchall_1
    move-exception v1

    iput-object v0, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->codec:Landroidx/media3/exoplayer/mediacodec/MediaCodecAdapter;

    .line 871
    :try_start_2
    iget-object v2, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->mediaCrypto:Landroid/media/MediaCrypto;

    if-eqz v2, :cond_2

    .line 872
    iget-object v2, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->mediaCrypto:Landroid/media/MediaCrypto;

    invoke-virtual {v2}, Landroid/media/MediaCrypto;->release()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 875
    :cond_2
    iput-object v0, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->mediaCrypto:Landroid/media/MediaCrypto;

    .line 876
    invoke-direct {p0, v0}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->setCodecDrmSession(Landroidx/media3/exoplayer/drm/DrmSession;)V

    .line 877
    invoke-virtual {p0}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->resetCodecStateForRelease()V

    .line 878
    nop

    .line 879
    throw v1

    .line 875
    :catchall_2
    move-exception v1

    iput-object v0, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->mediaCrypto:Landroid/media/MediaCrypto;

    .line 876
    invoke-direct {p0, v0}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->setCodecDrmSession(Landroidx/media3/exoplayer/drm/DrmSession;)V

    .line 877
    invoke-virtual {p0}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->resetCodecStateForRelease()V

    .line 878
    throw v1
.end method

.method public render(JJ)V
    .locals 5
    .param p1, "positionUs"    # J
    .param p3, "elapsedRealtimeUs"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media3/exoplayer/ExoPlaybackException;
        }
    .end annotation

    .line 924
    iget-boolean v0, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->pendingOutputEndOfStream:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 925
    iput-boolean v1, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->pendingOutputEndOfStream:Z

    .line 926
    invoke-direct {p0}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->processEndOfStream()V

    .line 928
    :cond_0
    iget-object v0, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->pendingPlaybackException:Landroidx/media3/exoplayer/ExoPlaybackException;

    if-nez v0, :cond_c

    .line 935
    const/4 v0, 0x1

    :try_start_0
    iget-boolean v2, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->outputStreamEnded:Z

    if-eqz v2, :cond_1

    .line 936
    invoke-virtual {p0}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->renderToEndOfStream()V

    .line 937
    return-void

    .line 939
    :cond_1
    iget-object v2, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->inputFormat:Landroidx/media3/common/Format;

    if-nez v2, :cond_2

    const/4 v2, 0x2

    invoke-direct {p0, v2}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->readSourceOmittingSampleData(I)Z

    move-result v2

    if-nez v2, :cond_2

    .line 941
    return-void

    .line 944
    :cond_2
    invoke-virtual {p0}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->maybeInitCodecOrBypass()V

    .line 945
    iget-boolean v2, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->bypassEnabled:Z

    if-eqz v2, :cond_4

    .line 946
    const-string v2, "bypassRender"

    invoke-static {v2}, Landroidx/media3/common/util/TraceUtil;->beginSection(Ljava/lang/String;)V

    .line 947
    :goto_0
    invoke-direct {p0, p1, p2, p3, p4}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->bypassRender(JJ)Z

    move-result v2

    if-eqz v2, :cond_3

    goto :goto_0

    .line 948
    :cond_3
    invoke-static {}, Landroidx/media3/common/util/TraceUtil;->endSection()V

    goto :goto_3

    .line 949
    :cond_4
    iget-object v2, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->codec:Landroidx/media3/exoplayer/mediacodec/MediaCodecAdapter;

    if-eqz v2, :cond_7

    .line 950
    invoke-virtual {p0}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->getClock()Landroidx/media3/common/util/Clock;

    move-result-object v2

    invoke-interface {v2}, Landroidx/media3/common/util/Clock;->elapsedRealtime()J

    move-result-wide v2

    .line 951
    .local v2, "renderStartTimeMs":J
    const-string v4, "drainAndFeed"

    invoke-static {v4}, Landroidx/media3/common/util/TraceUtil;->beginSection(Ljava/lang/String;)V

    .line 952
    :goto_1
    invoke-direct {p0, p1, p2, p3, p4}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->drainOutputBuffer(JJ)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 953
    invoke-direct {p0, v2, v3}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->shouldContinueRendering(J)Z

    move-result v4

    if-eqz v4, :cond_5

    goto :goto_1

    .line 954
    :cond_5
    :goto_2
    invoke-direct {p0}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->feedInputBuffer()Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-direct {p0, v2, v3}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->shouldContinueRendering(J)Z

    move-result v4

    if-eqz v4, :cond_6

    goto :goto_2

    .line 955
    :cond_6
    invoke-static {}, Landroidx/media3/common/util/TraceUtil;->endSection()V

    .line 956
    .end local v2    # "renderStartTimeMs":J
    goto :goto_3

    .line 957
    :cond_7
    iget-object v2, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->decoderCounters:Landroidx/media3/exoplayer/DecoderCounters;

    iget v3, v2, Landroidx/media3/exoplayer/DecoderCounters;->skippedInputBufferCount:I

    invoke-virtual {p0, p1, p2}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->skipSource(J)I

    move-result v4

    add-int/2addr v3, v4

    iput v3, v2, Landroidx/media3/exoplayer/DecoderCounters;->skippedInputBufferCount:I

    .line 962
    invoke-direct {p0, v0}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->readSourceOmittingSampleData(I)Z

    .line 964
    :goto_3
    iget-object v2, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->decoderCounters:Landroidx/media3/exoplayer/DecoderCounters;

    invoke-virtual {v2}, Landroidx/media3/exoplayer/DecoderCounters;->ensureUpdated()V
    :try_end_0
    .catch Landroid/media/MediaCodec$CryptoException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 985
    nop

    .line 986
    return-void

    .line 968
    :catch_0
    move-exception v2

    .line 969
    .local v2, "e":Ljava/lang/IllegalStateException;
    invoke-static {v2}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->isMediaCodecException(Ljava/lang/IllegalStateException;)Z

    move-result v3

    if-eqz v3, :cond_b

    .line 970
    invoke-virtual {p0, v2}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->onCodecError(Ljava/lang/Exception;)V

    .line 971
    instance-of v3, v2, Landroid/media/MediaCodec$CodecException;

    if-eqz v3, :cond_8

    move-object v3, v2

    check-cast v3, Landroid/media/MediaCodec$CodecException;

    .line 972
    invoke-virtual {v3}, Landroid/media/MediaCodec$CodecException;->isRecoverable()Z

    move-result v3

    if-eqz v3, :cond_8

    move v1, v0

    goto :goto_4

    :cond_8
    nop

    .line 973
    .local v1, "isRecoverable":Z
    :goto_4
    if-eqz v1, :cond_9

    .line 974
    invoke-virtual {p0}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->releaseCodec()V

    .line 976
    :cond_9
    invoke-virtual {p0}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->getCodecInfo()Landroidx/media3/exoplayer/mediacodec/MediaCodecInfo;

    move-result-object v0

    invoke-virtual {p0, v2, v0}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->createDecoderException(Ljava/lang/Throwable;Landroidx/media3/exoplayer/mediacodec/MediaCodecInfo;)Landroidx/media3/exoplayer/mediacodec/MediaCodecDecoderException;

    move-result-object v0

    .line 979
    .local v0, "exception":Landroidx/media3/exoplayer/mediacodec/MediaCodecDecoderException;
    iget v3, v0, Landroidx/media3/exoplayer/mediacodec/MediaCodecDecoderException;->errorCode:I

    const/16 v4, 0x44d

    if-ne v3, v4, :cond_a

    .line 980
    const/16 v3, 0xfa6

    goto :goto_5

    .line 981
    :cond_a
    const/16 v3, 0xfa3

    :goto_5
    nop

    .line 982
    .local v3, "errorCode":I
    iget-object v4, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->inputFormat:Landroidx/media3/common/Format;

    invoke-virtual {p0, v0, v4, v1, v3}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->createRendererException(Ljava/lang/Throwable;Landroidx/media3/common/Format;ZI)Landroidx/media3/exoplayer/ExoPlaybackException;

    move-result-object v4

    throw v4

    .line 984
    .end local v0    # "exception":Landroidx/media3/exoplayer/mediacodec/MediaCodecDecoderException;
    .end local v1    # "isRecoverable":Z
    .end local v3    # "errorCode":I
    :cond_b
    throw v2

    .line 965
    .end local v2    # "e":Ljava/lang/IllegalStateException;
    :catch_1
    move-exception v0

    .line 966
    .local v0, "e":Landroid/media/MediaCodec$CryptoException;
    iget-object v1, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->inputFormat:Landroidx/media3/common/Format;

    .line 967
    invoke-virtual {v0}, Landroid/media/MediaCodec$CryptoException;->getErrorCode()I

    move-result v2

    invoke-static {v2}, Landroidx/media3/common/util/Util;->getErrorCodeForMediaDrmErrorCode(I)I

    move-result v2

    .line 966
    invoke-virtual {p0, v0, v1, v2}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->createRendererException(Ljava/lang/Throwable;Landroidx/media3/common/Format;I)Landroidx/media3/exoplayer/ExoPlaybackException;

    move-result-object v1

    throw v1

    .line 929
    .end local v0    # "e":Landroid/media/MediaCodec$CryptoException;
    :cond_c
    iget-object v0, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->pendingPlaybackException:Landroidx/media3/exoplayer/ExoPlaybackException;

    .line 930
    .local v0, "playbackException":Landroidx/media3/exoplayer/ExoPlaybackException;
    const/4 v1, 0x0

    iput-object v1, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->pendingPlaybackException:Landroidx/media3/exoplayer/ExoPlaybackException;

    .line 931
    throw v0
.end method

.method protected renderToEndOfStream()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media3/exoplayer/ExoPlaybackException;
        }
    .end annotation

    .line 2385
    return-void
.end method

.method protected resetCodecStateForFlush()V
    .locals 3

    .line 1093
    invoke-direct {p0}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->resetInputBuffer()V

    .line 1094
    invoke-direct {p0}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->resetOutputBuffer()V

    .line 1095
    invoke-direct {p0}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->resetCommonStateForFlush()V

    .line 1096
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v0, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->codecHotswapDeadlineMs:J

    .line 1097
    const/4 v2, 0x0

    iput-boolean v2, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->codecReceivedEos:Z

    .line 1098
    iput-wide v0, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->lastOutputBufferProcessedRealtimeMs:J

    .line 1099
    iput-boolean v2, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->codecReceivedBuffers:Z

    .line 1100
    iput-boolean v2, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->codecNeedsAdaptationWorkaroundBuffer:Z

    .line 1101
    iput-boolean v2, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->shouldSkipAdaptationWorkaroundOutputBuffer:Z

    .line 1102
    iput-boolean v2, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->isDecodeOnlyOutputBuffer:Z

    .line 1103
    iput-boolean v2, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->isLastOutputBuffer:Z

    .line 1104
    iput v2, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->codecDrainState:I

    .line 1105
    iput v2, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->codecDrainAction:I

    .line 1109
    nop

    .line 1110
    iget-boolean v0, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->codecReconfigured:Z

    iput v0, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->codecReconfigurationState:I

    .line 1111
    iput-boolean v2, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->hasSkippedFlushAndWaitingForQueueInputBuffer:Z

    .line 1112
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->skippedFlushOffsetUs:J

    .line 1113
    return-void
.end method

.method protected resetCodecStateForRelease()V
    .locals 2

    .line 1123
    invoke-virtual {p0}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->resetCodecStateForFlush()V

    .line 1125
    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->pendingPlaybackException:Landroidx/media3/exoplayer/ExoPlaybackException;

    .line 1126
    iput-object v0, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->availableCodecInfos:Ljava/util/ArrayDeque;

    .line 1127
    iput-object v0, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->codecInfo:Landroidx/media3/exoplayer/mediacodec/MediaCodecInfo;

    .line 1128
    iput-object v0, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->codecInputFormat:Landroidx/media3/common/Format;

    .line 1129
    iput-object v0, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->codecOutputMediaFormat:Landroid/media/MediaFormat;

    .line 1130
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->codecOutputMediaFormatChanged:Z

    .line 1131
    iput-boolean v0, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->codecHasOutputMediaFormat:Z

    .line 1132
    const/high16 v1, -0x40800000    # -1.0f

    iput v1, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->codecOperatingRate:F

    .line 1133
    iput v0, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->codecAdaptationWorkaroundMode:I

    .line 1134
    iput-boolean v0, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->codecNeedsSosFlushWorkaround:Z

    .line 1135
    iput-boolean v0, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->codecNeedsEosFlushWorkaround:Z

    .line 1136
    iput-boolean v0, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->codecNeedsEosPropagation:Z

    .line 1137
    iput-boolean v0, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->codecRegisteredOnBufferAvailableListener:Z

    .line 1138
    iput-boolean v0, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->codecReconfigured:Z

    .line 1139
    iput v0, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->codecReconfigurationState:I

    .line 1140
    return-void
.end method

.method protected final setPendingOutputEndOfStream()V
    .locals 1

    .line 2420
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->pendingOutputEndOfStream:Z

    .line 2421
    return-void
.end method

.method protected final setPendingPlaybackException(Landroidx/media3/exoplayer/ExoPlaybackException;)V
    .locals 0
    .param p1, "exception"    # Landroidx/media3/exoplayer/ExoPlaybackException;

    .line 676
    iput-object p1, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->pendingPlaybackException:Landroidx/media3/exoplayer/ExoPlaybackException;

    .line 677
    return-void
.end method

.method public setPlaybackSpeed(FF)V
    .locals 1
    .param p1, "currentPlaybackSpeed"    # F
    .param p2, "targetPlaybackSpeed"    # F
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media3/exoplayer/ExoPlaybackException;
        }
    .end annotation

    .line 820
    iput p1, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->currentPlaybackSpeed:F

    .line 821
    iput p2, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->targetPlaybackSpeed:F

    .line 822
    iget-object v0, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->codecInputFormat:Landroidx/media3/common/Format;

    invoke-direct {p0, v0}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->updateCodecOperatingRate(Landroidx/media3/common/Format;)Z

    .line 823
    return-void
.end method

.method public setRenderTimeLimitMs(J)V
    .locals 0
    .param p1, "renderTimeLimitMs"    # J

    .line 494
    iput-wide p1, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->renderTimeLimitMs:J

    .line 495
    return-void
.end method

.method protected shouldDiscardDecoderInputBuffer(Landroidx/media3/decoder/DecoderInputBuffer;)Z
    .locals 3
    .param p1, "buffer"    # Landroidx/media3/decoder/DecoderInputBuffer;

    .line 1962
    invoke-virtual {p0, p1}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->shouldSkipDecoderInputBuffer(Landroidx/media3/decoder/DecoderInputBuffer;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1963
    invoke-virtual {p1}, Landroidx/media3/decoder/DecoderInputBuffer;->clear()V

    .line 1964
    iget-object v0, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->decoderCounters:Landroidx/media3/exoplayer/DecoderCounters;

    iget v1, v0, Landroidx/media3/exoplayer/DecoderCounters;->skippedInputBufferCount:I

    const/4 v2, 0x1

    add-int/2addr v1, v2

    iput v1, v0, Landroidx/media3/exoplayer/DecoderCounters;->skippedInputBufferCount:I

    .line 1965
    return v2

    .line 1967
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method protected shouldFlushCodec()Z
    .locals 1

    .line 1058
    const/4 v0, 0x1

    return v0
.end method

.method protected shouldInitCodec(Landroidx/media3/exoplayer/mediacodec/MediaCodecInfo;)Z
    .locals 1
    .param p1, "codecInfo"    # Landroidx/media3/exoplayer/mediacodec/MediaCodecInfo;

    .line 654
    const/4 v0, 0x1

    return v0
.end method

.method protected shouldReinitCodec()Z
    .locals 1

    .line 662
    const/4 v0, 0x0

    return v0
.end method

.method protected shouldReleaseCodecInsteadOfFlushing()Z
    .locals 4

    .line 1033
    iget v0, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->codecDrainAction:I

    const/4 v1, 0x3

    const/4 v2, 0x1

    if-eq v0, v1, :cond_3

    iget-boolean v0, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->codecNeedsSosFlushWorkaround:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->codecHasOutputMediaFormat:Z

    if-eqz v0, :cond_3

    :cond_0
    iget-boolean v0, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->codecNeedsEosFlushWorkaround:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->codecReceivedEos:Z

    if-eqz v0, :cond_1

    goto :goto_1

    .line 1038
    :cond_1
    iget v0, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->codecDrainAction:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    .line 1041
    :try_start_0
    invoke-direct {p0}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->updateDrmSession()V
    :try_end_0
    .catch Landroidx/media3/exoplayer/ExoPlaybackException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1045
    goto :goto_0

    .line 1042
    :catch_0
    move-exception v0

    .line 1043
    .local v0, "e":Landroidx/media3/exoplayer/ExoPlaybackException;
    const-string v1, "MediaCodecRenderer"

    const-string v3, "Failed to update the DRM session, releasing the codec instead."

    invoke-static {v1, v3, v0}, Landroidx/media3/common/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1044
    return v2

    .line 1047
    .end local v0    # "e":Landroidx/media3/exoplayer/ExoPlaybackException;
    :cond_2
    :goto_0
    const/4 v0, 0x0

    return v0

    .line 1036
    :cond_3
    :goto_1
    return v2
.end method

.method protected shouldSkipDecoderInputBuffer(Landroidx/media3/decoder/DecoderInputBuffer;)Z
    .locals 1
    .param p1, "buffer"    # Landroidx/media3/decoder/DecoderInputBuffer;

    .line 1940
    const/4 v0, 0x0

    return v0
.end method

.method protected shouldUseBypass(Landroidx/media3/common/Format;)Z
    .locals 1
    .param p1, "format"    # Landroidx/media3/common/Format;

    .line 650
    const/4 v0, 0x0

    return v0
.end method

.method public final supportsFormat(Landroidx/media3/common/Format;)I
    .locals 2
    .param p1, "format"    # Landroidx/media3/common/Format;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media3/exoplayer/ExoPlaybackException;
        }
    .end annotation

    .line 505
    :try_start_0
    iget-object v0, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->mediaCodecSelector:Landroidx/media3/exoplayer/mediacodec/MediaCodecSelector;

    invoke-virtual {p0, v0, p1}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->supportsFormat(Landroidx/media3/exoplayer/mediacodec/MediaCodecSelector;Landroidx/media3/common/Format;)I

    move-result v0
    :try_end_0
    .catch Landroidx/media3/exoplayer/mediacodec/MediaCodecUtil$DecoderQueryException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 506
    :catch_0
    move-exception v0

    .line 507
    .local v0, "e":Landroidx/media3/exoplayer/mediacodec/MediaCodecUtil$DecoderQueryException;
    const/16 v1, 0xfa2

    invoke-virtual {p0, v0, p1, v1}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->createRendererException(Ljava/lang/Throwable;Landroidx/media3/common/Format;I)Landroidx/media3/exoplayer/ExoPlaybackException;

    move-result-object v1

    throw v1
.end method

.method protected abstract supportsFormat(Landroidx/media3/exoplayer/mediacodec/MediaCodecSelector;Landroidx/media3/common/Format;)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media3/exoplayer/mediacodec/MediaCodecUtil$DecoderQueryException;
        }
    .end annotation
.end method

.method public final supportsMixedMimeTypeAdaptation()I
    .locals 1

    .line 499
    const/16 v0, 0x8

    return v0
.end method

.method protected final updateCodecOperatingRate()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media3/exoplayer/ExoPlaybackException;
        }
    .end annotation

    .line 2096
    iget-object v0, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->codecInputFormat:Landroidx/media3/common/Format;

    invoke-direct {p0, v0}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->updateCodecOperatingRate(Landroidx/media3/common/Format;)Z

    move-result v0

    return v0
.end method

.method protected final updateOutputFormatForTime(J)V
    .locals 4
    .param p1, "presentationTimeUs"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media3/exoplayer/ExoPlaybackException;
        }
    .end annotation

    .line 690
    const/4 v0, 0x0

    .line 691
    .local v0, "outputFormatChanged":Z
    iget-object v1, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->outputStreamInfo:Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer$OutputStreamInfo;

    iget-object v1, v1, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer$OutputStreamInfo;->formatQueue:Landroidx/media3/common/util/TimedValueQueue;

    invoke-virtual {v1, p1, p2}, Landroidx/media3/common/util/TimedValueQueue;->pollFloor(J)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/media3/common/Format;

    .line 692
    .local v1, "format":Landroidx/media3/common/Format;
    if-nez v1, :cond_0

    iget-boolean v2, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->needToNotifyOutputFormatChangeAfterStreamChange:Z

    if-eqz v2, :cond_0

    iget-object v2, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->codecOutputMediaFormat:Landroid/media/MediaFormat;

    if-eqz v2, :cond_0

    .line 699
    iget-object v2, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->outputStreamInfo:Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer$OutputStreamInfo;

    iget-object v2, v2, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer$OutputStreamInfo;->formatQueue:Landroidx/media3/common/util/TimedValueQueue;

    invoke-virtual {v2}, Landroidx/media3/common/util/TimedValueQueue;->pollFirst()Ljava/lang/Object;

    move-result-object v2

    move-object v1, v2

    check-cast v1, Landroidx/media3/common/Format;

    .line 701
    :cond_0
    if-eqz v1, :cond_1

    .line 702
    iput-object v1, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->outputFormat:Landroidx/media3/common/Format;

    .line 703
    const/4 v0, 0x1

    .line 705
    :cond_1
    if-nez v0, :cond_2

    iget-boolean v2, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->codecOutputMediaFormatChanged:Z

    if-eqz v2, :cond_3

    iget-object v2, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->outputFormat:Landroidx/media3/common/Format;

    if-eqz v2, :cond_3

    .line 713
    :cond_2
    iget-object v2, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->outputFormat:Landroidx/media3/common/Format;

    invoke-static {v2}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/media3/common/Format;

    iget-object v3, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->codecOutputMediaFormat:Landroid/media/MediaFormat;

    invoke-virtual {p0, v2, v3}, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->onOutputFormatChanged(Landroidx/media3/common/Format;Landroid/media/MediaFormat;)V

    .line 714
    const/4 v2, 0x0

    iput-boolean v2, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->codecOutputMediaFormatChanged:Z

    .line 715
    iput-boolean v2, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;->needToNotifyOutputFormatChangeAfterStreamChange:Z

    .line 717
    :cond_3
    return-void
.end method
