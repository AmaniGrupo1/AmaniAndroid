.class public final Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer$Builder;
.super Ljava/lang/Object;
.source "MediaCodecVideoRenderer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private allowedJoiningTimeMs:J

.field private assumedMinimumCodecOperatingRate:F

.field private buildCalled:Z

.field private codecAdapterFactory:Landroidx/media3/exoplayer/mediacodec/MediaCodecAdapter$Factory;

.field private final context:Landroid/content/Context;

.field private enableDecoderFallback:Z

.field private enableDurationToProgressUs:Z

.field private enableMediaCodecBufferDecodeOnlyFlag:Z

.field private eventHandler:Landroid/os/Handler;

.field private eventListener:Landroidx/media3/exoplayer/video/VideoRendererEventListener;

.field private lateThresholdToDropDecoderInputUs:J

.field private maxDroppedFramesToNotify:I

.field private mediaCodecSelector:Landroidx/media3/exoplayer/mediacodec/MediaCodecSelector;

.field private parseAv1SampleDependencies:Z

.field private videoSink:Landroidx/media3/exoplayer/video/VideoSink;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .line 281
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 282
    iput-object p1, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer$Builder;->context:Landroid/content/Context;

    .line 283
    sget-object v0, Landroidx/media3/exoplayer/mediacodec/MediaCodecSelector;->DEFAULT:Landroidx/media3/exoplayer/mediacodec/MediaCodecSelector;

    iput-object v0, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer$Builder;->mediaCodecSelector:Landroidx/media3/exoplayer/mediacodec/MediaCodecSelector;

    .line 284
    invoke-static {p1}, Landroidx/media3/exoplayer/mediacodec/MediaCodecAdapter$Factory;->getDefault(Landroid/content/Context;)Landroidx/media3/exoplayer/mediacodec/MediaCodecAdapter$Factory;

    move-result-object v0

    iput-object v0, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer$Builder;->codecAdapterFactory:Landroidx/media3/exoplayer/mediacodec/MediaCodecAdapter$Factory;

    .line 285
    const/high16 v0, 0x41f00000    # 30.0f

    iput v0, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer$Builder;->assumedMinimumCodecOperatingRate:F

    .line 286
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer$Builder;->parseAv1SampleDependencies:Z

    .line 287
    const-wide/16 v0, 0x3a98

    iput-wide v0, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer$Builder;->lateThresholdToDropDecoderInputUs:J

    .line 288
    return-void
.end method

.method static synthetic access$000(Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer$Builder;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer$Builder;

    .line 259
    iget-object v0, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer$Builder;->context:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$100(Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer$Builder;)Landroidx/media3/exoplayer/mediacodec/MediaCodecAdapter$Factory;
    .locals 1
    .param p0, "x0"    # Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer$Builder;

    .line 259
    iget-object v0, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer$Builder;->codecAdapterFactory:Landroidx/media3/exoplayer/mediacodec/MediaCodecAdapter$Factory;

    return-object v0
.end method

.method static synthetic access$1000(Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer$Builder;)Z
    .locals 1
    .param p0, "x0"    # Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer$Builder;

    .line 259
    iget-boolean v0, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer$Builder;->parseAv1SampleDependencies:Z

    return v0
.end method

.method static synthetic access$1100(Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer$Builder;)J
    .locals 2
    .param p0, "x0"    # Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer$Builder;

    .line 259
    iget-wide v0, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer$Builder;->lateThresholdToDropDecoderInputUs:J

    return-wide v0
.end method

.method static synthetic access$1200(Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer$Builder;)Z
    .locals 1
    .param p0, "x0"    # Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer$Builder;

    .line 259
    iget-boolean v0, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer$Builder;->enableMediaCodecBufferDecodeOnlyFlag:Z

    return v0
.end method

.method static synthetic access$1300(Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer$Builder;)Z
    .locals 1
    .param p0, "x0"    # Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer$Builder;

    .line 259
    iget-boolean v0, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer$Builder;->enableDurationToProgressUs:Z

    return v0
.end method

.method static synthetic access$200(Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer$Builder;)Landroidx/media3/exoplayer/mediacodec/MediaCodecSelector;
    .locals 1
    .param p0, "x0"    # Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer$Builder;

    .line 259
    iget-object v0, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer$Builder;->mediaCodecSelector:Landroidx/media3/exoplayer/mediacodec/MediaCodecSelector;

    return-object v0
.end method

.method static synthetic access$300(Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer$Builder;)Z
    .locals 1
    .param p0, "x0"    # Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer$Builder;

    .line 259
    iget-boolean v0, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer$Builder;->enableDecoderFallback:Z

    return v0
.end method

.method static synthetic access$400(Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer$Builder;)F
    .locals 1
    .param p0, "x0"    # Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer$Builder;

    .line 259
    iget v0, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer$Builder;->assumedMinimumCodecOperatingRate:F

    return v0
.end method

.method static synthetic access$500(Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer$Builder;)I
    .locals 1
    .param p0, "x0"    # Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer$Builder;

    .line 259
    iget v0, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer$Builder;->maxDroppedFramesToNotify:I

    return v0
.end method

.method static synthetic access$600(Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer$Builder;)Landroidx/media3/exoplayer/video/VideoSink;
    .locals 1
    .param p0, "x0"    # Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer$Builder;

    .line 259
    iget-object v0, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer$Builder;->videoSink:Landroidx/media3/exoplayer/video/VideoSink;

    return-object v0
.end method

.method static synthetic access$700(Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer$Builder;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer$Builder;

    .line 259
    iget-object v0, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer$Builder;->eventHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$800(Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer$Builder;)Landroidx/media3/exoplayer/video/VideoRendererEventListener;
    .locals 1
    .param p0, "x0"    # Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer$Builder;

    .line 259
    iget-object v0, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer$Builder;->eventListener:Landroidx/media3/exoplayer/video/VideoRendererEventListener;

    return-object v0
.end method

.method static synthetic access$900(Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer$Builder;)J
    .locals 2
    .param p0, "x0"    # Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer$Builder;

    .line 259
    iget-wide v0, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer$Builder;->allowedJoiningTimeMs:J

    return-wide v0
.end method


# virtual methods
.method public build()Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;
    .locals 2

    .line 475
    iget-boolean v0, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer$Builder;->buildCalled:Z

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkState(Z)V

    .line 476
    iget-object v0, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer$Builder;->eventHandler:Landroid/os/Handler;

    if-nez v0, :cond_0

    iget-object v0, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer$Builder;->eventListener:Landroidx/media3/exoplayer/video/VideoRendererEventListener;

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer$Builder;->eventHandler:Landroid/os/Handler;

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer$Builder;->eventListener:Landroidx/media3/exoplayer/video/VideoRendererEventListener;

    if-eqz v0, :cond_2

    :cond_1
    move v0, v1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkState(Z)V

    .line 479
    iput-boolean v1, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer$Builder;->buildCalled:Z

    .line 480
    new-instance v0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;

    invoke-direct {v0, p0}, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;-><init>(Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer$Builder;)V

    return-object v0
.end method

.method public experimentalSetEnableMediaCodecBufferDecodeOnlyFlag(Z)Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer$Builder;
    .locals 0
    .param p1, "enableMediaCodecBufferDecodeOnlyFlag"    # Z

    .line 440
    iput-boolean p1, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer$Builder;->enableMediaCodecBufferDecodeOnlyFlag:Z

    .line 441
    return-object p0
.end method

.method public experimentalSetLateThresholdToDropDecoderInputUs(J)Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer$Builder;
    .locals 0
    .param p1, "lateThresholdToDropDecoderInputUs"    # J

    .line 419
    iput-wide p1, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer$Builder;->lateThresholdToDropDecoderInputUs:J

    .line 420
    return-object p0
.end method

.method public experimentalSetParseAv1SampleDependencies(Z)Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer$Builder;
    .locals 0
    .param p1, "parseAv1SampleDependencies"    # Z

    .line 397
    iput-boolean p1, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer$Builder;->parseAv1SampleDependencies:Z

    .line 398
    return-object p0
.end method

.method public setAllowedJoiningTimeMs(J)Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer$Builder;
    .locals 0
    .param p1, "allowedJoiningTimeMs"    # J

    .line 313
    iput-wide p1, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer$Builder;->allowedJoiningTimeMs:J

    .line 314
    return-object p0
.end method

.method public setAssumedMinimumCodecOperatingRate(F)Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer$Builder;
    .locals 0
    .param p1, "assumedMinimumCodecOperatingRate"    # F

    .line 368
    iput p1, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer$Builder;->assumedMinimumCodecOperatingRate:F

    .line 369
    return-object p0
.end method

.method public setCodecAdapterFactory(Landroidx/media3/exoplayer/mediacodec/MediaCodecAdapter$Factory;)Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer$Builder;
    .locals 0
    .param p1, "codecAdapterFactory"    # Landroidx/media3/exoplayer/mediacodec/MediaCodecAdapter$Factory;

    .line 303
    iput-object p1, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer$Builder;->codecAdapterFactory:Landroidx/media3/exoplayer/mediacodec/MediaCodecAdapter$Factory;

    .line 304
    return-object p0
.end method

.method public setEnableDecoderFallback(Z)Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer$Builder;
    .locals 0
    .param p1, "enableDecoderFallback"    # Z

    .line 323
    iput-boolean p1, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer$Builder;->enableDecoderFallback:Z

    .line 324
    return-object p0
.end method

.method public setEnableDurationToProgressUs(Z)Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer$Builder;
    .locals 0
    .param p1, "enableDurationToProgressUs"    # Z

    .line 463
    iput-boolean p1, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer$Builder;->enableDurationToProgressUs:Z

    .line 464
    return-object p0
.end method

.method public setEventHandler(Landroid/os/Handler;)Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer$Builder;
    .locals 0
    .param p1, "eventHandler"    # Landroid/os/Handler;

    .line 335
    iput-object p1, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer$Builder;->eventHandler:Landroid/os/Handler;

    .line 336
    return-object p0
.end method

.method public setEventListener(Landroidx/media3/exoplayer/video/VideoRendererEventListener;)Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer$Builder;
    .locals 0
    .param p1, "eventListener"    # Landroidx/media3/exoplayer/video/VideoRendererEventListener;

    .line 347
    iput-object p1, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer$Builder;->eventListener:Landroidx/media3/exoplayer/video/VideoRendererEventListener;

    .line 348
    return-object p0
.end method

.method public setMaxDroppedFramesToNotify(I)Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer$Builder;
    .locals 0
    .param p1, "maxDroppedFramesToNotify"    # I

    .line 357
    iput p1, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer$Builder;->maxDroppedFramesToNotify:I

    .line 358
    return-object p0
.end method

.method public setMediaCodecSelector(Landroidx/media3/exoplayer/mediacodec/MediaCodecSelector;)Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer$Builder;
    .locals 0
    .param p1, "mediaCodecSelector"    # Landroidx/media3/exoplayer/mediacodec/MediaCodecSelector;

    .line 293
    iput-object p1, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer$Builder;->mediaCodecSelector:Landroidx/media3/exoplayer/mediacodec/MediaCodecSelector;

    .line 294
    return-object p0
.end method

.method public setVideoSink(Landroidx/media3/exoplayer/video/VideoSink;)Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer$Builder;
    .locals 0
    .param p1, "videoSink"    # Landroidx/media3/exoplayer/video/VideoSink;

    .line 381
    iput-object p1, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer$Builder;->videoSink:Landroidx/media3/exoplayer/video/VideoSink;

    .line 382
    return-object p0
.end method
