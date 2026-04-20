.class public final Landroidx/media3/exoplayer/audio/AudioOutputProvider$OutputConfig$Builder;
.super Ljava/lang/Object;
.source "AudioOutputProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media3/exoplayer/audio/AudioOutputProvider$OutputConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private audioAttributes:Landroidx/media3/common/AudioAttributes;

.field private audioSessionId:I

.field private bufferSize:I

.field private channelMask:I

.field private encoding:I

.field private isOffload:Z

.field private isTunneling:Z

.field private sampleRate:I

.field private useOffloadGapless:Z

.field private usePlaybackParameters:Z

.field private virtualDeviceId:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 381
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 382
    sget-object v0, Landroidx/media3/common/AudioAttributes;->DEFAULT:Landroidx/media3/common/AudioAttributes;

    iput-object v0, p0, Landroidx/media3/exoplayer/audio/AudioOutputProvider$OutputConfig$Builder;->audioAttributes:Landroidx/media3/common/AudioAttributes;

    .line 383
    const/4 v0, 0x0

    iput v0, p0, Landroidx/media3/exoplayer/audio/AudioOutputProvider$OutputConfig$Builder;->audioSessionId:I

    .line 384
    const/4 v0, -0x1

    iput v0, p0, Landroidx/media3/exoplayer/audio/AudioOutputProvider$OutputConfig$Builder;->virtualDeviceId:I

    .line 385
    return-void
.end method

.method private constructor <init>(Landroidx/media3/exoplayer/audio/AudioOutputProvider$OutputConfig;)V
    .locals 1
    .param p1, "config"    # Landroidx/media3/exoplayer/audio/AudioOutputProvider$OutputConfig;

    .line 387
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 388
    iget v0, p1, Landroidx/media3/exoplayer/audio/AudioOutputProvider$OutputConfig;->encoding:I

    iput v0, p0, Landroidx/media3/exoplayer/audio/AudioOutputProvider$OutputConfig$Builder;->encoding:I

    .line 389
    iget v0, p1, Landroidx/media3/exoplayer/audio/AudioOutputProvider$OutputConfig;->sampleRate:I

    iput v0, p0, Landroidx/media3/exoplayer/audio/AudioOutputProvider$OutputConfig$Builder;->sampleRate:I

    .line 390
    iget v0, p1, Landroidx/media3/exoplayer/audio/AudioOutputProvider$OutputConfig;->channelMask:I

    iput v0, p0, Landroidx/media3/exoplayer/audio/AudioOutputProvider$OutputConfig$Builder;->channelMask:I

    .line 391
    iget-boolean v0, p1, Landroidx/media3/exoplayer/audio/AudioOutputProvider$OutputConfig;->isTunneling:Z

    iput-boolean v0, p0, Landroidx/media3/exoplayer/audio/AudioOutputProvider$OutputConfig$Builder;->isTunneling:Z

    .line 392
    iget-boolean v0, p1, Landroidx/media3/exoplayer/audio/AudioOutputProvider$OutputConfig;->isOffload:Z

    iput-boolean v0, p0, Landroidx/media3/exoplayer/audio/AudioOutputProvider$OutputConfig$Builder;->isOffload:Z

    .line 393
    iget v0, p1, Landroidx/media3/exoplayer/audio/AudioOutputProvider$OutputConfig;->bufferSize:I

    iput v0, p0, Landroidx/media3/exoplayer/audio/AudioOutputProvider$OutputConfig$Builder;->bufferSize:I

    .line 394
    iget-object v0, p1, Landroidx/media3/exoplayer/audio/AudioOutputProvider$OutputConfig;->audioAttributes:Landroidx/media3/common/AudioAttributes;

    iput-object v0, p0, Landroidx/media3/exoplayer/audio/AudioOutputProvider$OutputConfig$Builder;->audioAttributes:Landroidx/media3/common/AudioAttributes;

    .line 395
    iget v0, p1, Landroidx/media3/exoplayer/audio/AudioOutputProvider$OutputConfig;->audioSessionId:I

    iput v0, p0, Landroidx/media3/exoplayer/audio/AudioOutputProvider$OutputConfig$Builder;->audioSessionId:I

    .line 396
    iget v0, p1, Landroidx/media3/exoplayer/audio/AudioOutputProvider$OutputConfig;->virtualDeviceId:I

    iput v0, p0, Landroidx/media3/exoplayer/audio/AudioOutputProvider$OutputConfig$Builder;->virtualDeviceId:I

    .line 397
    iget-boolean v0, p1, Landroidx/media3/exoplayer/audio/AudioOutputProvider$OutputConfig;->usePlaybackParameters:Z

    iput-boolean v0, p0, Landroidx/media3/exoplayer/audio/AudioOutputProvider$OutputConfig$Builder;->usePlaybackParameters:Z

    .line 398
    iget-boolean v0, p1, Landroidx/media3/exoplayer/audio/AudioOutputProvider$OutputConfig;->useOffloadGapless:Z

    iput-boolean v0, p0, Landroidx/media3/exoplayer/audio/AudioOutputProvider$OutputConfig$Builder;->useOffloadGapless:Z

    .line 399
    return-void
.end method

.method synthetic constructor <init>(Landroidx/media3/exoplayer/audio/AudioOutputProvider$OutputConfig;Landroidx/media3/exoplayer/audio/AudioOutputProvider$1;)V
    .locals 0
    .param p1, "x0"    # Landroidx/media3/exoplayer/audio/AudioOutputProvider$OutputConfig;
    .param p2, "x1"    # Landroidx/media3/exoplayer/audio/AudioOutputProvider$1;

    .line 367
    invoke-direct {p0, p1}, Landroidx/media3/exoplayer/audio/AudioOutputProvider$OutputConfig$Builder;-><init>(Landroidx/media3/exoplayer/audio/AudioOutputProvider$OutputConfig;)V

    return-void
.end method

.method static synthetic access$1200(Landroidx/media3/exoplayer/audio/AudioOutputProvider$OutputConfig$Builder;)I
    .locals 1
    .param p0, "x0"    # Landroidx/media3/exoplayer/audio/AudioOutputProvider$OutputConfig$Builder;

    .line 367
    iget v0, p0, Landroidx/media3/exoplayer/audio/AudioOutputProvider$OutputConfig$Builder;->encoding:I

    return v0
.end method

.method static synthetic access$1300(Landroidx/media3/exoplayer/audio/AudioOutputProvider$OutputConfig$Builder;)I
    .locals 1
    .param p0, "x0"    # Landroidx/media3/exoplayer/audio/AudioOutputProvider$OutputConfig$Builder;

    .line 367
    iget v0, p0, Landroidx/media3/exoplayer/audio/AudioOutputProvider$OutputConfig$Builder;->sampleRate:I

    return v0
.end method

.method static synthetic access$1400(Landroidx/media3/exoplayer/audio/AudioOutputProvider$OutputConfig$Builder;)I
    .locals 1
    .param p0, "x0"    # Landroidx/media3/exoplayer/audio/AudioOutputProvider$OutputConfig$Builder;

    .line 367
    iget v0, p0, Landroidx/media3/exoplayer/audio/AudioOutputProvider$OutputConfig$Builder;->channelMask:I

    return v0
.end method

.method static synthetic access$1500(Landroidx/media3/exoplayer/audio/AudioOutputProvider$OutputConfig$Builder;)Z
    .locals 1
    .param p0, "x0"    # Landroidx/media3/exoplayer/audio/AudioOutputProvider$OutputConfig$Builder;

    .line 367
    iget-boolean v0, p0, Landroidx/media3/exoplayer/audio/AudioOutputProvider$OutputConfig$Builder;->isTunneling:Z

    return v0
.end method

.method static synthetic access$1600(Landroidx/media3/exoplayer/audio/AudioOutputProvider$OutputConfig$Builder;)Z
    .locals 1
    .param p0, "x0"    # Landroidx/media3/exoplayer/audio/AudioOutputProvider$OutputConfig$Builder;

    .line 367
    iget-boolean v0, p0, Landroidx/media3/exoplayer/audio/AudioOutputProvider$OutputConfig$Builder;->isOffload:Z

    return v0
.end method

.method static synthetic access$1700(Landroidx/media3/exoplayer/audio/AudioOutputProvider$OutputConfig$Builder;)I
    .locals 1
    .param p0, "x0"    # Landroidx/media3/exoplayer/audio/AudioOutputProvider$OutputConfig$Builder;

    .line 367
    iget v0, p0, Landroidx/media3/exoplayer/audio/AudioOutputProvider$OutputConfig$Builder;->bufferSize:I

    return v0
.end method

.method static synthetic access$1800(Landroidx/media3/exoplayer/audio/AudioOutputProvider$OutputConfig$Builder;)Landroidx/media3/common/AudioAttributes;
    .locals 1
    .param p0, "x0"    # Landroidx/media3/exoplayer/audio/AudioOutputProvider$OutputConfig$Builder;

    .line 367
    iget-object v0, p0, Landroidx/media3/exoplayer/audio/AudioOutputProvider$OutputConfig$Builder;->audioAttributes:Landroidx/media3/common/AudioAttributes;

    return-object v0
.end method

.method static synthetic access$1900(Landroidx/media3/exoplayer/audio/AudioOutputProvider$OutputConfig$Builder;)I
    .locals 1
    .param p0, "x0"    # Landroidx/media3/exoplayer/audio/AudioOutputProvider$OutputConfig$Builder;

    .line 367
    iget v0, p0, Landroidx/media3/exoplayer/audio/AudioOutputProvider$OutputConfig$Builder;->audioSessionId:I

    return v0
.end method

.method static synthetic access$2000(Landroidx/media3/exoplayer/audio/AudioOutputProvider$OutputConfig$Builder;)I
    .locals 1
    .param p0, "x0"    # Landroidx/media3/exoplayer/audio/AudioOutputProvider$OutputConfig$Builder;

    .line 367
    iget v0, p0, Landroidx/media3/exoplayer/audio/AudioOutputProvider$OutputConfig$Builder;->virtualDeviceId:I

    return v0
.end method

.method static synthetic access$2100(Landroidx/media3/exoplayer/audio/AudioOutputProvider$OutputConfig$Builder;)Z
    .locals 1
    .param p0, "x0"    # Landroidx/media3/exoplayer/audio/AudioOutputProvider$OutputConfig$Builder;

    .line 367
    iget-boolean v0, p0, Landroidx/media3/exoplayer/audio/AudioOutputProvider$OutputConfig$Builder;->usePlaybackParameters:Z

    return v0
.end method

.method static synthetic access$2200(Landroidx/media3/exoplayer/audio/AudioOutputProvider$OutputConfig$Builder;)Z
    .locals 1
    .param p0, "x0"    # Landroidx/media3/exoplayer/audio/AudioOutputProvider$OutputConfig$Builder;

    .line 367
    iget-boolean v0, p0, Landroidx/media3/exoplayer/audio/AudioOutputProvider$OutputConfig$Builder;->useOffloadGapless:Z

    return v0
.end method


# virtual methods
.method public build()Landroidx/media3/exoplayer/audio/AudioOutputProvider$OutputConfig;
    .locals 2

    .line 491
    new-instance v0, Landroidx/media3/exoplayer/audio/AudioOutputProvider$OutputConfig;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroidx/media3/exoplayer/audio/AudioOutputProvider$OutputConfig;-><init>(Landroidx/media3/exoplayer/audio/AudioOutputProvider$OutputConfig$Builder;Landroidx/media3/exoplayer/audio/AudioOutputProvider$1;)V

    return-object v0
.end method

.method public setAudioAttributes(Landroidx/media3/common/AudioAttributes;)Landroidx/media3/exoplayer/audio/AudioOutputProvider$OutputConfig$Builder;
    .locals 0
    .param p1, "audioAttributes"    # Landroidx/media3/common/AudioAttributes;

    .line 451
    iput-object p1, p0, Landroidx/media3/exoplayer/audio/AudioOutputProvider$OutputConfig$Builder;->audioAttributes:Landroidx/media3/common/AudioAttributes;

    .line 452
    return-object p0
.end method

.method public setAudioSessionId(I)Landroidx/media3/exoplayer/audio/AudioOutputProvider$OutputConfig$Builder;
    .locals 0
    .param p1, "audioSessionId"    # I

    .line 458
    iput p1, p0, Landroidx/media3/exoplayer/audio/AudioOutputProvider$OutputConfig$Builder;->audioSessionId:I

    .line 459
    return-object p0
.end method

.method public setBufferSize(I)Landroidx/media3/exoplayer/audio/AudioOutputProvider$OutputConfig$Builder;
    .locals 0
    .param p1, "bufferSize"    # I

    .line 444
    iput p1, p0, Landroidx/media3/exoplayer/audio/AudioOutputProvider$OutputConfig$Builder;->bufferSize:I

    .line 445
    return-object p0
.end method

.method public setChannelMask(I)Landroidx/media3/exoplayer/audio/AudioOutputProvider$OutputConfig$Builder;
    .locals 0
    .param p1, "channelMask"    # I

    .line 423
    iput p1, p0, Landroidx/media3/exoplayer/audio/AudioOutputProvider$OutputConfig$Builder;->channelMask:I

    .line 424
    return-object p0
.end method

.method public setEncoding(I)Landroidx/media3/exoplayer/audio/AudioOutputProvider$OutputConfig$Builder;
    .locals 0
    .param p1, "encoding"    # I

    .line 404
    iput p1, p0, Landroidx/media3/exoplayer/audio/AudioOutputProvider$OutputConfig$Builder;->encoding:I

    .line 405
    return-object p0
.end method

.method public setIsOffload(Z)Landroidx/media3/exoplayer/audio/AudioOutputProvider$OutputConfig$Builder;
    .locals 0
    .param p1, "isOffload"    # Z

    .line 437
    iput-boolean p1, p0, Landroidx/media3/exoplayer/audio/AudioOutputProvider$OutputConfig$Builder;->isOffload:Z

    .line 438
    return-object p0
.end method

.method public setIsTunneling(Z)Landroidx/media3/exoplayer/audio/AudioOutputProvider$OutputConfig$Builder;
    .locals 0
    .param p1, "isTunneling"    # Z

    .line 430
    iput-boolean p1, p0, Landroidx/media3/exoplayer/audio/AudioOutputProvider$OutputConfig$Builder;->isTunneling:Z

    .line 431
    return-object p0
.end method

.method public setSampleRate(I)Landroidx/media3/exoplayer/audio/AudioOutputProvider$OutputConfig$Builder;
    .locals 0
    .param p1, "sampleRate"    # I

    .line 411
    iput p1, p0, Landroidx/media3/exoplayer/audio/AudioOutputProvider$OutputConfig$Builder;->sampleRate:I

    .line 412
    return-object p0
.end method

.method public setUseOffloadGapless(Z)Landroidx/media3/exoplayer/audio/AudioOutputProvider$OutputConfig$Builder;
    .locals 0
    .param p1, "useOffloadGapless"    # Z

    .line 485
    iput-boolean p1, p0, Landroidx/media3/exoplayer/audio/AudioOutputProvider$OutputConfig$Builder;->useOffloadGapless:Z

    .line 486
    return-object p0
.end method

.method public setUsePlaybackParameters(Z)Landroidx/media3/exoplayer/audio/AudioOutputProvider$OutputConfig$Builder;
    .locals 0
    .param p1, "usePlaybackParameters"    # Z

    .line 475
    iput-boolean p1, p0, Landroidx/media3/exoplayer/audio/AudioOutputProvider$OutputConfig$Builder;->usePlaybackParameters:Z

    .line 476
    return-object p0
.end method

.method public setVirtualDeviceId(I)Landroidx/media3/exoplayer/audio/AudioOutputProvider$OutputConfig$Builder;
    .locals 0
    .param p1, "virtualDeviceId"    # I

    .line 468
    iput p1, p0, Landroidx/media3/exoplayer/audio/AudioOutputProvider$OutputConfig$Builder;->virtualDeviceId:I

    .line 469
    return-object p0
.end method
