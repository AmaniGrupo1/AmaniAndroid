.class final Landroidx/media3/common/audio/Sonic;
.super Ljava/lang/Object;
.source "Sonic.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media3/common/audio/Sonic$SonicFloatImpl;,
        Landroidx/media3/common/audio/Sonic$SonicShortImpl;,
        Landroidx/media3/common/audio/Sonic$SonicImpl;
    }
.end annotation


# static fields
.field private static final AMDF_FREQUENCY:I = 0xfa0

.field private static final MAXIMUM_PITCH:I = 0x190

.field private static final MINIMUM_PITCH:I = 0x41

.field private static final MINIMUM_SLOWDOWN_RATE:F = 0.99999f

.field private static final MINIMUM_SPEEDUP_RATE:F = 1.00001f


# instance fields
.field private accumulatedSpeedAdjustmentError:D

.field private final channelCount:I

.field private final impl:Landroidx/media3/common/audio/Sonic$SonicImpl;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/media3/common/audio/Sonic$SonicImpl<",
            "*>;"
        }
    .end annotation
.end field

.field private inputFrameCount:I

.field private final inputSampleRateHz:I

.field private final maxPeriod:I

.field private final maxRequiredFrameCount:I

.field private final minPeriod:I

.field private newRatePosition:I

.field private oldRatePosition:I

.field private outputFrameCount:I

.field private final pitch:F

.field private pitchFrameCount:I

.field private prevPeriod:I

.field private final rate:F

.field private remainingInputToCopyFrameCount:I

.field private final speed:F


# direct methods
.method public constructor <init>(IIFFIZ)V
    .locals 2
    .param p1, "inputSampleRateHz"    # I
    .param p2, "channelCount"    # I
    .param p3, "speed"    # F
    .param p4, "pitch"    # F
    .param p5, "outputSampleRateHz"    # I
    .param p6, "useFloatSamples"    # Z

    .line 217
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 218
    iput p1, p0, Landroidx/media3/common/audio/Sonic;->inputSampleRateHz:I

    .line 219
    iput p2, p0, Landroidx/media3/common/audio/Sonic;->channelCount:I

    .line 220
    iput p3, p0, Landroidx/media3/common/audio/Sonic;->speed:F

    .line 221
    iput p4, p0, Landroidx/media3/common/audio/Sonic;->pitch:F

    .line 222
    int-to-float v0, p1

    int-to-float v1, p5

    div-float/2addr v0, v1

    iput v0, p0, Landroidx/media3/common/audio/Sonic;->rate:F

    .line 223
    div-int/lit16 v0, p1, 0x190

    iput v0, p0, Landroidx/media3/common/audio/Sonic;->minPeriod:I

    .line 224
    div-int/lit8 v0, p1, 0x41

    iput v0, p0, Landroidx/media3/common/audio/Sonic;->maxPeriod:I

    .line 225
    iget v0, p0, Landroidx/media3/common/audio/Sonic;->maxPeriod:I

    mul-int/lit8 v0, v0, 0x2

    iput v0, p0, Landroidx/media3/common/audio/Sonic;->maxRequiredFrameCount:I

    .line 226
    if-eqz p6, :cond_0

    new-instance v0, Landroidx/media3/common/audio/Sonic$SonicFloatImpl;

    invoke-direct {v0, p0}, Landroidx/media3/common/audio/Sonic$SonicFloatImpl;-><init>(Landroidx/media3/common/audio/Sonic;)V

    goto :goto_0

    :cond_0
    new-instance v0, Landroidx/media3/common/audio/Sonic$SonicShortImpl;

    invoke-direct {v0, p0}, Landroidx/media3/common/audio/Sonic$SonicShortImpl;-><init>(Landroidx/media3/common/audio/Sonic;)V

    :goto_0
    iput-object v0, p0, Landroidx/media3/common/audio/Sonic;->impl:Landroidx/media3/common/audio/Sonic$SonicImpl;

    .line 227
    return-void
.end method

.method static synthetic access$000(Landroidx/media3/common/audio/Sonic;)I
    .locals 1
    .param p0, "x0"    # Landroidx/media3/common/audio/Sonic;

    .line 34
    iget v0, p0, Landroidx/media3/common/audio/Sonic;->maxRequiredFrameCount:I

    return v0
.end method

.method static synthetic access$100(Landroidx/media3/common/audio/Sonic;)I
    .locals 1
    .param p0, "x0"    # Landroidx/media3/common/audio/Sonic;

    .line 34
    iget v0, p0, Landroidx/media3/common/audio/Sonic;->channelCount:I

    return v0
.end method

.method static synthetic access$200(Landroidx/media3/common/audio/Sonic;)I
    .locals 1
    .param p0, "x0"    # Landroidx/media3/common/audio/Sonic;

    .line 34
    iget v0, p0, Landroidx/media3/common/audio/Sonic;->outputFrameCount:I

    return v0
.end method

.method static synthetic access$300(Landroidx/media3/common/audio/Sonic;)I
    .locals 1
    .param p0, "x0"    # Landroidx/media3/common/audio/Sonic;

    .line 34
    iget v0, p0, Landroidx/media3/common/audio/Sonic;->prevPeriod:I

    return v0
.end method

.method static synthetic access$400(Landroidx/media3/common/audio/Sonic;)I
    .locals 1
    .param p0, "x0"    # Landroidx/media3/common/audio/Sonic;

    .line 34
    iget v0, p0, Landroidx/media3/common/audio/Sonic;->inputFrameCount:I

    return v0
.end method

.method static synthetic access$500(Landroidx/media3/common/audio/Sonic;)I
    .locals 1
    .param p0, "x0"    # Landroidx/media3/common/audio/Sonic;

    .line 34
    iget v0, p0, Landroidx/media3/common/audio/Sonic;->pitchFrameCount:I

    return v0
.end method

.method static synthetic access$600(Landroidx/media3/common/audio/Sonic;)I
    .locals 1
    .param p0, "x0"    # Landroidx/media3/common/audio/Sonic;

    .line 34
    iget v0, p0, Landroidx/media3/common/audio/Sonic;->newRatePosition:I

    return v0
.end method

.method static synthetic access$700(Landroidx/media3/common/audio/Sonic;)I
    .locals 1
    .param p0, "x0"    # Landroidx/media3/common/audio/Sonic;

    .line 34
    iget v0, p0, Landroidx/media3/common/audio/Sonic;->oldRatePosition:I

    return v0
.end method

.method private adjustRate(FI)V
    .locals 12
    .param p1, "rate"    # F
    .param p2, "originalOutputFrameCount"    # I

    .line 398
    iget v0, p0, Landroidx/media3/common/audio/Sonic;->outputFrameCount:I

    if-ne v0, p2, :cond_0

    .line 399
    return-void

    .line 404
    :cond_0
    iget v0, p0, Landroidx/media3/common/audio/Sonic;->inputSampleRateHz:I

    int-to-float v0, v0

    div-float/2addr v0, p1

    float-to-long v0, v0

    .line 405
    .local v0, "newSampleRate":J
    iget v2, p0, Landroidx/media3/common/audio/Sonic;->inputSampleRateHz:I

    int-to-long v2, v2

    move-wide v8, v0

    move-wide v6, v2

    .line 407
    .end local v0    # "newSampleRate":J
    .local v6, "oldSampleRate":J
    .local v8, "newSampleRate":J
    :goto_0
    const-wide/16 v0, 0x0

    cmp-long v2, v8, v0

    if-eqz v2, :cond_1

    cmp-long v2, v6, v0

    if-eqz v2, :cond_1

    const-wide/16 v2, 0x2

    rem-long v4, v8, v2

    cmp-long v4, v4, v0

    if-nez v4, :cond_1

    rem-long v4, v6, v2

    cmp-long v0, v4, v0

    if-nez v0, :cond_1

    .line 411
    div-long/2addr v8, v2

    .line 412
    div-long/2addr v6, v2

    goto :goto_0

    .line 414
    :cond_1
    invoke-direct {p0, p2}, Landroidx/media3/common/audio/Sonic;->moveNewSamplesToPitchBuffer(I)V

    .line 416
    const/4 v0, 0x0

    move v5, v0

    .local v5, "position":I
    :goto_1
    iget v0, p0, Landroidx/media3/common/audio/Sonic;->pitchFrameCount:I

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    if-ge v5, v0, :cond_5

    .line 418
    :goto_2
    iget v0, p0, Landroidx/media3/common/audio/Sonic;->oldRatePosition:I

    add-int/2addr v0, v1

    int-to-long v2, v0

    mul-long/2addr v2, v8

    iget v0, p0, Landroidx/media3/common/audio/Sonic;->newRatePosition:I

    int-to-long v10, v0

    mul-long/2addr v10, v6

    cmp-long v0, v2, v10

    if-lez v0, :cond_2

    .line 419
    iget-object v0, p0, Landroidx/media3/common/audio/Sonic;->impl:Landroidx/media3/common/audio/Sonic$SonicImpl;

    invoke-interface {v0, v1}, Landroidx/media3/common/audio/Sonic$SonicImpl;->ensureAdditionalFramesInOutputBuffer(I)V

    .line 420
    iget-object v4, p0, Landroidx/media3/common/audio/Sonic;->impl:Landroidx/media3/common/audio/Sonic$SonicImpl;

    invoke-interface/range {v4 .. v9}, Landroidx/media3/common/audio/Sonic$SonicImpl;->interpolateFrame(IJJ)V

    .line 421
    iget v0, p0, Landroidx/media3/common/audio/Sonic;->newRatePosition:I

    add-int/2addr v0, v1

    iput v0, p0, Landroidx/media3/common/audio/Sonic;->newRatePosition:I

    .line 422
    iget v0, p0, Landroidx/media3/common/audio/Sonic;->outputFrameCount:I

    add-int/2addr v0, v1

    iput v0, p0, Landroidx/media3/common/audio/Sonic;->outputFrameCount:I

    goto :goto_2

    .line 424
    :cond_2
    iget v0, p0, Landroidx/media3/common/audio/Sonic;->oldRatePosition:I

    add-int/2addr v0, v1

    iput v0, p0, Landroidx/media3/common/audio/Sonic;->oldRatePosition:I

    .line 425
    iget v0, p0, Landroidx/media3/common/audio/Sonic;->oldRatePosition:I

    int-to-long v2, v0

    cmp-long v0, v2, v6

    if-nez v0, :cond_4

    .line 426
    const/4 v0, 0x0

    iput v0, p0, Landroidx/media3/common/audio/Sonic;->oldRatePosition:I

    .line 427
    iget v2, p0, Landroidx/media3/common/audio/Sonic;->newRatePosition:I

    int-to-long v2, v2

    cmp-long v2, v2, v8

    if-nez v2, :cond_3

    goto :goto_3

    :cond_3
    move v1, v0

    :goto_3
    invoke-static {v1}, Lcom/google/common/base/Preconditions;->checkState(Z)V

    .line 428
    iput v0, p0, Landroidx/media3/common/audio/Sonic;->newRatePosition:I

    .line 416
    :cond_4
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 431
    .end local v5    # "position":I
    :cond_5
    iget v0, p0, Landroidx/media3/common/audio/Sonic;->pitchFrameCount:I

    sub-int/2addr v0, v1

    invoke-direct {p0, v0}, Landroidx/media3/common/audio/Sonic;->removePitchFrames(I)V

    .line 432
    return-void
.end method

.method static calculateAccumulatedTruncationErrorForResampling(Ljava/math/BigDecimal;Ljava/math/BigDecimal;Ljava/math/BigDecimal;)J
    .locals 5
    .param p0, "length"    # Ljava/math/BigDecimal;
    .param p1, "sampleRate"    # Ljava/math/BigDecimal;
    .param p2, "resamplingRate"    # Ljava/math/BigDecimal;

    .line 128
    sget-object v0, Ljava/math/RoundingMode;->HALF_EVEN:Ljava/math/RoundingMode;

    const/16 v1, 0x14

    invoke-virtual {p0, p1, v1, v0}, Ljava/math/BigDecimal;->divide(Ljava/math/BigDecimal;ILjava/math/RoundingMode;)Ljava/math/BigDecimal;

    move-result-object v0

    .line 133
    .local v0, "errorCount":Ljava/math/BigDecimal;
    sget-object v2, Ljava/math/RoundingMode;->HALF_EVEN:Ljava/math/RoundingMode;

    .line 134
    invoke-virtual {p1, p2, v1, v2}, Ljava/math/BigDecimal;->divide(Ljava/math/BigDecimal;ILjava/math/RoundingMode;)Ljava/math/BigDecimal;

    move-result-object v1

    .line 135
    .local v1, "individualError":Ljava/math/BigDecimal;
    sget-object v2, Ljava/math/RoundingMode;->FLOOR:Ljava/math/RoundingMode;

    .line 136
    const/4 v3, 0x0

    invoke-virtual {v1, v3, v2}, Ljava/math/BigDecimal;->setScale(ILjava/math/RoundingMode;)Ljava/math/BigDecimal;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/math/BigDecimal;->subtract(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object v1

    .line 138
    nop

    .line 139
    invoke-virtual {v0, v1}, Ljava/math/BigDecimal;->multiply(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object v2

    sget-object v4, Ljava/math/RoundingMode;->FLOOR:Ljava/math/RoundingMode;

    invoke-virtual {v2, v3, v4}, Ljava/math/BigDecimal;->setScale(ILjava/math/RoundingMode;)Ljava/math/BigDecimal;

    move-result-object v2

    .line 141
    .local v2, "accumulatedError":Ljava/math/BigDecimal;
    invoke-virtual {v2}, Ljava/math/BigDecimal;->longValueExact()J

    move-result-wide v3

    return-wide v3
.end method

.method private changeSpeed(D)V
    .locals 5
    .param p1, "speed"    # D

    .line 508
    iget v0, p0, Landroidx/media3/common/audio/Sonic;->inputFrameCount:I

    iget v1, p0, Landroidx/media3/common/audio/Sonic;->maxRequiredFrameCount:I

    if-ge v0, v1, :cond_0

    .line 509
    return-void

    .line 511
    :cond_0
    iget v0, p0, Landroidx/media3/common/audio/Sonic;->inputFrameCount:I

    .line 512
    .local v0, "frameCount":I
    const/4 v1, 0x0

    .line 514
    .local v1, "positionFrames":I
    :cond_1
    iget v2, p0, Landroidx/media3/common/audio/Sonic;->remainingInputToCopyFrameCount:I

    if-lez v2, :cond_2

    .line 515
    invoke-direct {p0, v1}, Landroidx/media3/common/audio/Sonic;->copyInputToOutput(I)I

    move-result v2

    add-int/2addr v1, v2

    goto :goto_0

    .line 517
    :cond_2
    invoke-direct {p0, v1}, Landroidx/media3/common/audio/Sonic;->findPitchPeriod(I)I

    move-result v2

    .line 518
    .local v2, "period":I
    const-wide/high16 v3, 0x3ff0000000000000L    # 1.0

    cmpl-double v3, p1, v3

    if-lez v3, :cond_3

    .line 519
    invoke-direct {p0, v1, p1, p2, v2}, Landroidx/media3/common/audio/Sonic;->skipPitchPeriod(IDI)I

    move-result v3

    add-int/2addr v3, v2

    add-int/2addr v1, v3

    goto :goto_0

    .line 521
    :cond_3
    invoke-direct {p0, v1, p1, p2, v2}, Landroidx/media3/common/audio/Sonic;->insertPitchPeriod(IDI)I

    move-result v3

    add-int/2addr v1, v3

    .line 524
    .end local v2    # "period":I
    :goto_0
    iget v2, p0, Landroidx/media3/common/audio/Sonic;->maxRequiredFrameCount:I

    add-int/2addr v2, v1

    if-le v2, v0, :cond_1

    .line 525
    invoke-direct {p0, v1}, Landroidx/media3/common/audio/Sonic;->removeProcessedInputFrames(I)V

    .line 526
    return-void
.end method

.method private copyInputToOutput(I)I
    .locals 2
    .param p1, "positionFrames"    # I

    .line 349
    iget v0, p0, Landroidx/media3/common/audio/Sonic;->maxRequiredFrameCount:I

    iget v1, p0, Landroidx/media3/common/audio/Sonic;->remainingInputToCopyFrameCount:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 350
    .local v0, "frameCount":I
    invoke-direct {p0, p1, v0}, Landroidx/media3/common/audio/Sonic;->copyToOutput(II)V

    .line 351
    iget v1, p0, Landroidx/media3/common/audio/Sonic;->remainingInputToCopyFrameCount:I

    sub-int/2addr v1, v0

    iput v1, p0, Landroidx/media3/common/audio/Sonic;->remainingInputToCopyFrameCount:I

    .line 352
    return v0
.end method

.method private copyToOutput(II)V
    .locals 5
    .param p1, "positionFrames"    # I
    .param p2, "frameCount"    # I

    .line 338
    iget-object v0, p0, Landroidx/media3/common/audio/Sonic;->impl:Landroidx/media3/common/audio/Sonic$SonicImpl;

    invoke-interface {v0, p2}, Landroidx/media3/common/audio/Sonic$SonicImpl;->ensureAdditionalFramesInOutputBuffer(I)V

    .line 339
    iget-object v0, p0, Landroidx/media3/common/audio/Sonic;->impl:Landroidx/media3/common/audio/Sonic$SonicImpl;

    .line 340
    invoke-interface {v0}, Landroidx/media3/common/audio/Sonic$SonicImpl;->getInputBuffer()Ljava/lang/Object;

    move-result-object v0

    iget v1, p0, Landroidx/media3/common/audio/Sonic;->channelCount:I

    mul-int/2addr v1, p1

    iget-object v2, p0, Landroidx/media3/common/audio/Sonic;->impl:Landroidx/media3/common/audio/Sonic$SonicImpl;

    .line 342
    invoke-interface {v2}, Landroidx/media3/common/audio/Sonic$SonicImpl;->getOutputBuffer()Ljava/lang/Object;

    move-result-object v2

    iget v3, p0, Landroidx/media3/common/audio/Sonic;->outputFrameCount:I

    iget v4, p0, Landroidx/media3/common/audio/Sonic;->channelCount:I

    mul-int/2addr v3, v4

    iget v4, p0, Landroidx/media3/common/audio/Sonic;->channelCount:I

    mul-int/2addr v4, p2

    .line 339
    invoke-static {v0, v1, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 345
    iget v0, p0, Landroidx/media3/common/audio/Sonic;->outputFrameCount:I

    add-int/2addr v0, p2

    iput v0, p0, Landroidx/media3/common/audio/Sonic;->outputFrameCount:I

    .line 346
    return-void
.end method

.method private findPitchPeriod(I)I
    .locals 8
    .param p1, "positionFrames"    # I

    .line 362
    iget v0, p0, Landroidx/media3/common/audio/Sonic;->inputSampleRateHz:I

    const/4 v1, 0x1

    const/16 v2, 0xfa0

    if-le v0, v2, :cond_0

    iget v0, p0, Landroidx/media3/common/audio/Sonic;->inputSampleRateHz:I

    div-int/2addr v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    .line 363
    .local v0, "skip":I
    :goto_0
    iget v2, p0, Landroidx/media3/common/audio/Sonic;->channelCount:I

    if-ne v2, v1, :cond_1

    if-ne v0, v1, :cond_1

    .line 364
    iget-object v1, p0, Landroidx/media3/common/audio/Sonic;->impl:Landroidx/media3/common/audio/Sonic$SonicImpl;

    iget v2, p0, Landroidx/media3/common/audio/Sonic;->minPeriod:I

    iget v3, p0, Landroidx/media3/common/audio/Sonic;->maxPeriod:I

    invoke-interface {v1, p1, v2, v3}, Landroidx/media3/common/audio/Sonic$SonicImpl;->findPitchPeriodInRangeWithInputBuffer(III)I

    move-result v1

    .local v1, "period":I
    goto :goto_1

    .line 366
    .end local v1    # "period":I
    :cond_1
    iget-object v2, p0, Landroidx/media3/common/audio/Sonic;->impl:Landroidx/media3/common/audio/Sonic$SonicImpl;

    invoke-interface {v2, p1, v0}, Landroidx/media3/common/audio/Sonic$SonicImpl;->downSampleInput(II)V

    .line 367
    iget-object v2, p0, Landroidx/media3/common/audio/Sonic;->impl:Landroidx/media3/common/audio/Sonic$SonicImpl;

    iget v3, p0, Landroidx/media3/common/audio/Sonic;->minPeriod:I

    div-int/2addr v3, v0

    iget v4, p0, Landroidx/media3/common/audio/Sonic;->maxPeriod:I

    div-int/2addr v4, v0

    .line 368
    const/4 v5, 0x0

    invoke-interface {v2, v5, v3, v4}, Landroidx/media3/common/audio/Sonic$SonicImpl;->findPitchPeriodInRangeWithDownsampleBuffer(III)I

    move-result v2

    .line 369
    .local v2, "period":I
    if-eq v0, v1, :cond_5

    .line 370
    mul-int/2addr v2, v0

    .line 371
    mul-int/lit8 v3, v0, 0x4

    sub-int v3, v2, v3

    .line 372
    .local v3, "minP":I
    mul-int/lit8 v4, v0, 0x4

    add-int/2addr v4, v2

    .line 373
    .local v4, "maxP":I
    iget v6, p0, Landroidx/media3/common/audio/Sonic;->minPeriod:I

    if-ge v3, v6, :cond_2

    .line 374
    iget v3, p0, Landroidx/media3/common/audio/Sonic;->minPeriod:I

    .line 376
    :cond_2
    iget v6, p0, Landroidx/media3/common/audio/Sonic;->maxPeriod:I

    if-le v4, v6, :cond_3

    .line 377
    iget v4, p0, Landroidx/media3/common/audio/Sonic;->maxPeriod:I

    .line 379
    :cond_3
    iget v6, p0, Landroidx/media3/common/audio/Sonic;->channelCount:I

    .line 382
    iget-object v7, p0, Landroidx/media3/common/audio/Sonic;->impl:Landroidx/media3/common/audio/Sonic$SonicImpl;

    .line 379
    if-ne v6, v1, :cond_4

    .line 380
    invoke-interface {v7, p1, v3, v4}, Landroidx/media3/common/audio/Sonic$SonicImpl;->findPitchPeriodInRangeWithInputBuffer(III)I

    move-result v1

    .end local v2    # "period":I
    .restart local v1    # "period":I
    goto :goto_1

    .line 382
    .end local v1    # "period":I
    .restart local v2    # "period":I
    :cond_4
    invoke-interface {v7, p1, v1}, Landroidx/media3/common/audio/Sonic$SonicImpl;->downSampleInput(II)V

    .line 383
    iget-object v1, p0, Landroidx/media3/common/audio/Sonic;->impl:Landroidx/media3/common/audio/Sonic$SonicImpl;

    invoke-interface {v1, v5, v3, v4}, Landroidx/media3/common/audio/Sonic$SonicImpl;->findPitchPeriodInRangeWithDownsampleBuffer(III)I

    move-result v1

    .end local v2    # "period":I
    .restart local v1    # "period":I
    goto :goto_1

    .line 369
    .end local v1    # "period":I
    .end local v3    # "minP":I
    .end local v4    # "maxP":I
    .restart local v2    # "period":I
    :cond_5
    move v1, v2

    .line 387
    .end local v2    # "period":I
    .restart local v1    # "period":I
    :goto_1
    iget-object v2, p0, Landroidx/media3/common/audio/Sonic;->impl:Landroidx/media3/common/audio/Sonic$SonicImpl;

    invoke-interface {v2}, Landroidx/media3/common/audio/Sonic$SonicImpl;->isPreviousPeriodBetter()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 388
    iget v2, p0, Landroidx/media3/common/audio/Sonic;->prevPeriod:I

    .local v2, "retPeriod":I
    goto :goto_2

    .line 390
    .end local v2    # "retPeriod":I
    :cond_6
    move v2, v1

    .line 392
    .restart local v2    # "retPeriod":I
    :goto_2
    iget-object v3, p0, Landroidx/media3/common/audio/Sonic;->impl:Landroidx/media3/common/audio/Sonic$SonicImpl;

    invoke-interface {v3}, Landroidx/media3/common/audio/Sonic$SonicImpl;->updatePreviousMinDiff()V

    .line 393
    iput v1, p0, Landroidx/media3/common/audio/Sonic;->prevPeriod:I

    .line 394
    return v2
.end method

.method public static getExpectedFrameCountAfterProcessorApplied(IIFFJ)J
    .locals 11
    .param p0, "inputSampleRateHz"    # I
    .param p1, "outputSampleRateHz"    # I
    .param p2, "speed"    # F
    .param p3, "pitch"    # F
    .param p4, "inputFrameCount"    # J

    .line 85
    int-to-float v0, p0

    int-to-float v1, p1

    div-float/2addr v0, v1

    .line 86
    .local v0, "resamplingRate":F
    mul-float/2addr v0, p3

    .line 87
    div-float v1, p2, p3

    float-to-double v1, v1

    .line 88
    .local v1, "speedRate":D
    new-instance v3, Ljava/math/BigDecimal;

    invoke-static {v0}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    .line 90
    .local v3, "bigResamplingRate":Ljava/math/BigDecimal;
    invoke-static/range {p4 .. p5}, Ljava/math/BigDecimal;->valueOf(J)Ljava/math/BigDecimal;

    move-result-object v4

    .line 92
    .local v4, "length":Ljava/math/BigDecimal;
    const-wide v5, 0x3ff0000a80000000L    # 1.0000100135803223

    cmpl-double v5, v1, v5

    if-gtz v5, :cond_1

    const-wide v5, 0x3fefffeb00000000L    # 0.9999899864196777

    cmpg-double v5, v1, v5

    if-gez v5, :cond_0

    goto :goto_0

    .line 97
    :cond_0
    move-object v5, v4

    .local v5, "framesAfterTimeStretching":Ljava/math/BigDecimal;
    goto :goto_1

    .line 93
    .end local v5    # "framesAfterTimeStretching":Ljava/math/BigDecimal;
    :cond_1
    :goto_0
    nop

    .line 94
    invoke-static {v1, v2}, Ljava/math/BigDecimal;->valueOf(D)Ljava/math/BigDecimal;

    move-result-object v5

    sget-object v6, Ljava/math/RoundingMode;->HALF_EVEN:Ljava/math/RoundingMode;

    invoke-virtual {v4, v5, v6}, Ljava/math/BigDecimal;->divide(Ljava/math/BigDecimal;Ljava/math/RoundingMode;)Ljava/math/BigDecimal;

    move-result-object v5

    .line 100
    .restart local v5    # "framesAfterTimeStretching":Ljava/math/BigDecimal;
    :goto_1
    const/high16 v6, 0x3f800000    # 1.0f

    cmpl-float v6, v0, v6

    if-nez v6, :cond_2

    .line 101
    invoke-virtual {v5}, Ljava/math/BigDecimal;->longValueExact()J

    move-result-wide v6

    return-wide v6

    .line 104
    :cond_2
    sget-object v6, Ljava/math/RoundingMode;->HALF_EVEN:Ljava/math/RoundingMode;

    .line 105
    invoke-virtual {v5, v3, v6}, Ljava/math/BigDecimal;->divide(Ljava/math/BigDecimal;Ljava/math/RoundingMode;)Ljava/math/BigDecimal;

    move-result-object v6

    .line 107
    .local v6, "framesAfterResampling":Ljava/math/BigDecimal;
    invoke-virtual {v6}, Ljava/math/BigDecimal;->longValueExact()J

    move-result-wide v7

    int-to-long v9, p0

    .line 109
    invoke-static {v9, v10}, Ljava/math/BigDecimal;->valueOf(J)Ljava/math/BigDecimal;

    move-result-object v9

    .line 108
    invoke-static {v5, v9, v3}, Landroidx/media3/common/audio/Sonic;->calculateAccumulatedTruncationErrorForResampling(Ljava/math/BigDecimal;Ljava/math/BigDecimal;Ljava/math/BigDecimal;)J

    move-result-wide v9

    sub-long/2addr v7, v9

    .line 107
    return-wide v7
.end method

.method static getExpectedInputFrameCountForOutputFrameCount(IIFFJ)J
    .locals 9
    .param p0, "inputSampleRateHz"    # I
    .param p1, "outputSampleRateHz"    # I
    .param p2, "speed"    # F
    .param p3, "pitch"    # F
    .param p4, "outputFrameCount"    # J

    .line 162
    int-to-float v0, p0

    int-to-float v1, p1

    div-float/2addr v0, v1

    .line 163
    .local v0, "resamplingRate":F
    mul-float/2addr v0, p3

    .line 164
    new-instance v1, Ljava/math/BigDecimal;

    invoke-static {v0}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    .line 165
    .local v1, "bigResamplingRate":Ljava/math/BigDecimal;
    int-to-long v2, p0

    .line 167
    invoke-static {v2, v3}, Ljava/math/BigDecimal;->valueOf(J)Ljava/math/BigDecimal;

    move-result-object v2

    .line 169
    invoke-static {p4, p5}, Ljava/math/BigDecimal;->valueOf(J)Ljava/math/BigDecimal;

    move-result-object v3

    .line 166
    invoke-static {v2, v1, v3}, Landroidx/media3/common/audio/Sonic;->getFrameCountBeforeResamplingForOutputCount(Ljava/math/BigDecimal;Ljava/math/BigDecimal;Ljava/math/BigDecimal;)J

    move-result-wide v2

    .line 170
    .local v2, "framesBeforeResampling":J
    div-float v4, p2, p3

    float-to-double v4, v4

    .line 172
    .local v4, "speedRate":D
    const-wide v6, 0x3ff0000a80000000L    # 1.0000100135803223

    cmpl-double v6, v4, v6

    if-gtz v6, :cond_1

    const-wide v6, 0x3fefffeb00000000L    # 0.9999899864196777

    cmpg-double v6, v4, v6

    if-gez v6, :cond_0

    goto :goto_0

    .line 179
    :cond_0
    return-wide v2

    .line 173
    :cond_1
    :goto_0
    invoke-static {v2, v3}, Ljava/math/BigDecimal;->valueOf(J)Ljava/math/BigDecimal;

    move-result-object v6

    .line 174
    invoke-static {v4, v5}, Ljava/math/BigDecimal;->valueOf(D)Ljava/math/BigDecimal;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/math/BigDecimal;->multiply(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object v6

    sget-object v7, Ljava/math/RoundingMode;->FLOOR:Ljava/math/RoundingMode;

    .line 175
    const/4 v8, 0x0

    invoke-virtual {v6, v8, v7}, Ljava/math/BigDecimal;->setScale(ILjava/math/RoundingMode;)Ljava/math/BigDecimal;

    move-result-object v6

    .line 176
    invoke-virtual {v6}, Ljava/math/BigDecimal;->longValueExact()J

    move-result-wide v6

    .line 173
    return-wide v6
.end method

.method private static getFrameCountBeforeResamplingForOutputCount(Ljava/math/BigDecimal;Ljava/math/BigDecimal;Ljava/math/BigDecimal;)J
    .locals 5
    .param p0, "sampleRate"    # Ljava/math/BigDecimal;
    .param p1, "resamplingRate"    # Ljava/math/BigDecimal;
    .param p2, "outputLength"    # Ljava/math/BigDecimal;

    .line 195
    sget-object v0, Ljava/math/RoundingMode;->FLOOR:Ljava/math/RoundingMode;

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Ljava/math/BigDecimal;->divide(Ljava/math/BigDecimal;ILjava/math/RoundingMode;)Ljava/math/BigDecimal;

    move-result-object v0

    .line 196
    .local v0, "denominator":Ljava/math/BigDecimal;
    invoke-virtual {p0, p2}, Ljava/math/BigDecimal;->multiply(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object v2

    .line 197
    .local v2, "numerator":Ljava/math/BigDecimal;
    sget-object v3, Ljava/math/RoundingMode;->FLOOR:Ljava/math/RoundingMode;

    invoke-virtual {v2, v0, v1, v3}, Ljava/math/BigDecimal;->divide(Ljava/math/BigDecimal;ILjava/math/RoundingMode;)Ljava/math/BigDecimal;

    move-result-object v1

    invoke-virtual {v1}, Ljava/math/BigDecimal;->longValueExact()J

    move-result-wide v3

    return-wide v3
.end method

.method private insertPitchPeriod(IDI)I
    .locals 14
    .param p1, "position"    # I
    .param p2, "speed"    # D
    .param p4, "period"    # I

    .line 483
    move/from16 v0, p4

    const-wide/high16 v1, 0x3fe0000000000000L    # 0.5

    cmpg-double v1, p2, v1

    .line 489
    iget-wide v2, p0, Landroidx/media3/common/audio/Sonic;->accumulatedSpeedAdjustmentError:D

    .line 483
    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    if-gez v1, :cond_0

    .line 484
    int-to-double v6, v0

    mul-double v6, v6, p2

    sub-double v4, v4, p2

    div-double/2addr v6, v4

    add-double/2addr v6, v2

    .line 485
    .local v6, "expectedFrameCount":D
    invoke-static {v6, v7}, Ljava/lang/Math;->round(D)J

    move-result-wide v1

    long-to-int v1, v1

    .line 486
    .local v1, "newFrameCount":I
    int-to-double v2, v1

    sub-double v2, v6, v2

    iput-wide v2, p0, Landroidx/media3/common/audio/Sonic;->accumulatedSpeedAdjustmentError:D

    .line 487
    .end local v6    # "expectedFrameCount":D
    move v9, v1

    goto :goto_0

    .line 488
    .end local v1    # "newFrameCount":I
    :cond_0
    move/from16 v1, p4

    .line 489
    .restart local v1    # "newFrameCount":I
    int-to-double v6, v0

    const-wide/high16 v8, 0x4000000000000000L    # 2.0

    mul-double v8, v8, p2

    sub-double/2addr v8, v4

    mul-double/2addr v6, v8

    sub-double v4, v4, p2

    div-double/2addr v6, v4

    add-double/2addr v6, v2

    .line 491
    .local v6, "expectedInputToCopy":D
    invoke-static {v6, v7}, Ljava/lang/Math;->round(D)J

    move-result-wide v2

    long-to-int v2, v2

    iput v2, p0, Landroidx/media3/common/audio/Sonic;->remainingInputToCopyFrameCount:I

    .line 492
    iget v2, p0, Landroidx/media3/common/audio/Sonic;->remainingInputToCopyFrameCount:I

    int-to-double v2, v2

    sub-double v2, v6, v2

    iput-wide v2, p0, Landroidx/media3/common/audio/Sonic;->accumulatedSpeedAdjustmentError:D

    move v9, v1

    .line 494
    .end local v1    # "newFrameCount":I
    .end local v6    # "expectedInputToCopy":D
    .local v9, "newFrameCount":I
    :goto_0
    iget-object v1, p0, Landroidx/media3/common/audio/Sonic;->impl:Landroidx/media3/common/audio/Sonic$SonicImpl;

    add-int v2, v0, v9

    invoke-interface {v1, v2}, Landroidx/media3/common/audio/Sonic$SonicImpl;->ensureAdditionalFramesInOutputBuffer(I)V

    .line 495
    iget-object v1, p0, Landroidx/media3/common/audio/Sonic;->impl:Landroidx/media3/common/audio/Sonic$SonicImpl;

    .line 496
    invoke-interface {v1}, Landroidx/media3/common/audio/Sonic$SonicImpl;->getInputBuffer()Ljava/lang/Object;

    move-result-object v1

    iget v2, p0, Landroidx/media3/common/audio/Sonic;->channelCount:I

    mul-int/2addr v2, p1

    iget-object v3, p0, Landroidx/media3/common/audio/Sonic;->impl:Landroidx/media3/common/audio/Sonic$SonicImpl;

    .line 498
    invoke-interface {v3}, Landroidx/media3/common/audio/Sonic$SonicImpl;->getOutputBuffer()Ljava/lang/Object;

    move-result-object v3

    iget v4, p0, Landroidx/media3/common/audio/Sonic;->outputFrameCount:I

    iget v5, p0, Landroidx/media3/common/audio/Sonic;->channelCount:I

    mul-int/2addr v4, v5

    iget v5, p0, Landroidx/media3/common/audio/Sonic;->channelCount:I

    mul-int/2addr v5, v0

    .line 495
    invoke-static {v1, v2, v3, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 501
    iget-object v8, p0, Landroidx/media3/common/audio/Sonic;->impl:Landroidx/media3/common/audio/Sonic$SonicImpl;

    iget v10, p0, Landroidx/media3/common/audio/Sonic;->channelCount:I

    iget v1, p0, Landroidx/media3/common/audio/Sonic;->outputFrameCount:I

    add-int v11, v1, v0

    add-int v12, p1, v0

    move v13, p1

    invoke-interface/range {v8 .. v13}, Landroidx/media3/common/audio/Sonic$SonicImpl;->overlapAdd(IIIII)V

    .line 503
    iget v1, p0, Landroidx/media3/common/audio/Sonic;->outputFrameCount:I

    add-int v2, v0, v9

    add-int/2addr v1, v2

    iput v1, p0, Landroidx/media3/common/audio/Sonic;->outputFrameCount:I

    .line 504
    return v9
.end method

.method private moveNewSamplesToPitchBuffer(I)V
    .locals 6
    .param p1, "originalOutputFrameCount"    # I

    .line 435
    iget v0, p0, Landroidx/media3/common/audio/Sonic;->outputFrameCount:I

    sub-int/2addr v0, p1

    .line 436
    .local v0, "frameCount":I
    iget-object v1, p0, Landroidx/media3/common/audio/Sonic;->impl:Landroidx/media3/common/audio/Sonic$SonicImpl;

    invoke-interface {v1, v0}, Landroidx/media3/common/audio/Sonic$SonicImpl;->ensureAdditionalFramesInPitchBuffer(I)V

    .line 437
    iget-object v1, p0, Landroidx/media3/common/audio/Sonic;->impl:Landroidx/media3/common/audio/Sonic$SonicImpl;

    .line 438
    invoke-interface {v1}, Landroidx/media3/common/audio/Sonic$SonicImpl;->getOutputBuffer()Ljava/lang/Object;

    move-result-object v1

    iget v2, p0, Landroidx/media3/common/audio/Sonic;->channelCount:I

    mul-int/2addr v2, p1

    iget-object v3, p0, Landroidx/media3/common/audio/Sonic;->impl:Landroidx/media3/common/audio/Sonic$SonicImpl;

    .line 440
    invoke-interface {v3}, Landroidx/media3/common/audio/Sonic$SonicImpl;->getPitchBuffer()Ljava/lang/Object;

    move-result-object v3

    iget v4, p0, Landroidx/media3/common/audio/Sonic;->pitchFrameCount:I

    iget v5, p0, Landroidx/media3/common/audio/Sonic;->channelCount:I

    mul-int/2addr v4, v5

    iget v5, p0, Landroidx/media3/common/audio/Sonic;->channelCount:I

    mul-int/2addr v5, v0

    .line 437
    invoke-static {v1, v2, v3, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 443
    iput p1, p0, Landroidx/media3/common/audio/Sonic;->outputFrameCount:I

    .line 444
    iget v1, p0, Landroidx/media3/common/audio/Sonic;->pitchFrameCount:I

    add-int/2addr v1, v0

    iput v1, p0, Landroidx/media3/common/audio/Sonic;->pitchFrameCount:I

    .line 445
    return-void
.end method

.method private processStreamInput()V
    .locals 6

    .line 541
    iget v0, p0, Landroidx/media3/common/audio/Sonic;->outputFrameCount:I

    .line 542
    .local v0, "originalOutputFrameCount":I
    iget v1, p0, Landroidx/media3/common/audio/Sonic;->speed:F

    iget v2, p0, Landroidx/media3/common/audio/Sonic;->pitch:F

    div-float/2addr v1, v2

    float-to-double v1, v1

    .line 543
    .local v1, "s":D
    iget v3, p0, Landroidx/media3/common/audio/Sonic;->rate:F

    iget v4, p0, Landroidx/media3/common/audio/Sonic;->pitch:F

    mul-float/2addr v3, v4

    .line 544
    .local v3, "r":F
    const-wide v4, 0x3ff0000a80000000L    # 1.0000100135803223

    cmpl-double v4, v1, v4

    if-gtz v4, :cond_1

    const-wide v4, 0x3fefffeb00000000L    # 0.9999899864196777

    cmpg-double v4, v1, v4

    if-gez v4, :cond_0

    goto :goto_0

    .line 547
    :cond_0
    iget v4, p0, Landroidx/media3/common/audio/Sonic;->inputFrameCount:I

    const/4 v5, 0x0

    invoke-direct {p0, v5, v4}, Landroidx/media3/common/audio/Sonic;->copyToOutput(II)V

    .line 548
    iput v5, p0, Landroidx/media3/common/audio/Sonic;->inputFrameCount:I

    goto :goto_1

    .line 545
    :cond_1
    :goto_0
    invoke-direct {p0, v1, v2}, Landroidx/media3/common/audio/Sonic;->changeSpeed(D)V

    .line 550
    :goto_1
    const/high16 v4, 0x3f800000    # 1.0f

    cmpl-float v4, v3, v4

    if-eqz v4, :cond_2

    .line 551
    invoke-direct {p0, v3, v0}, Landroidx/media3/common/audio/Sonic;->adjustRate(FI)V

    .line 553
    :cond_2
    return-void
.end method

.method private removePitchFrames(I)V
    .locals 5
    .param p1, "frameCount"    # I

    .line 448
    if-nez p1, :cond_0

    .line 449
    return-void

    .line 451
    :cond_0
    iget-object v0, p0, Landroidx/media3/common/audio/Sonic;->impl:Landroidx/media3/common/audio/Sonic$SonicImpl;

    .line 452
    invoke-interface {v0}, Landroidx/media3/common/audio/Sonic$SonicImpl;->getPitchBuffer()Ljava/lang/Object;

    move-result-object v0

    iget v1, p0, Landroidx/media3/common/audio/Sonic;->channelCount:I

    mul-int/2addr v1, p1

    iget-object v2, p0, Landroidx/media3/common/audio/Sonic;->impl:Landroidx/media3/common/audio/Sonic$SonicImpl;

    .line 454
    invoke-interface {v2}, Landroidx/media3/common/audio/Sonic$SonicImpl;->getPitchBuffer()Ljava/lang/Object;

    move-result-object v2

    iget v3, p0, Landroidx/media3/common/audio/Sonic;->pitchFrameCount:I

    sub-int/2addr v3, p1

    iget v4, p0, Landroidx/media3/common/audio/Sonic;->channelCount:I

    mul-int/2addr v3, v4

    .line 451
    const/4 v4, 0x0

    invoke-static {v0, v1, v2, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 457
    iget v0, p0, Landroidx/media3/common/audio/Sonic;->pitchFrameCount:I

    sub-int/2addr v0, p1

    iput v0, p0, Landroidx/media3/common/audio/Sonic;->pitchFrameCount:I

    .line 458
    return-void
.end method

.method private removeProcessedInputFrames(I)V
    .locals 6
    .param p1, "positionFrames"    # I

    .line 529
    iget v0, p0, Landroidx/media3/common/audio/Sonic;->inputFrameCount:I

    sub-int/2addr v0, p1

    .line 530
    .local v0, "remainingFrames":I
    iget-object v1, p0, Landroidx/media3/common/audio/Sonic;->impl:Landroidx/media3/common/audio/Sonic$SonicImpl;

    .line 531
    invoke-interface {v1}, Landroidx/media3/common/audio/Sonic$SonicImpl;->getInputBuffer()Ljava/lang/Object;

    move-result-object v1

    iget v2, p0, Landroidx/media3/common/audio/Sonic;->channelCount:I

    mul-int/2addr v2, p1

    iget-object v3, p0, Landroidx/media3/common/audio/Sonic;->impl:Landroidx/media3/common/audio/Sonic$SonicImpl;

    .line 533
    invoke-interface {v3}, Landroidx/media3/common/audio/Sonic$SonicImpl;->getInputBuffer()Ljava/lang/Object;

    move-result-object v3

    iget v4, p0, Landroidx/media3/common/audio/Sonic;->channelCount:I

    mul-int/2addr v4, v0

    .line 530
    const/4 v5, 0x0

    invoke-static {v1, v2, v3, v5, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 536
    iput v0, p0, Landroidx/media3/common/audio/Sonic;->inputFrameCount:I

    .line 537
    return-void
.end method

.method private skipPitchPeriod(IDI)I
    .locals 17
    .param p1, "position"    # I
    .param p2, "speed"    # D
    .param p4, "period"    # I

    .line 463
    move-object/from16 v0, p0

    move/from16 v1, p4

    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    cmpl-double v4, p2, v2

    .line 469
    iget-wide v5, v0, Landroidx/media3/common/audio/Sonic;->accumulatedSpeedAdjustmentError:D

    .line 463
    const-wide/high16 v7, 0x3ff0000000000000L    # 1.0

    if-ltz v4, :cond_0

    .line 464
    int-to-double v2, v1

    sub-double v7, p2, v7

    div-double/2addr v2, v7

    add-double/2addr v2, v5

    .line 465
    .local v2, "expectedFrameCount":D
    invoke-static {v2, v3}, Ljava/lang/Math;->round(D)J

    move-result-wide v4

    long-to-int v4, v4

    .line 466
    .local v4, "newFrameCount":I
    int-to-double v5, v4

    sub-double v5, v2, v5

    iput-wide v5, v0, Landroidx/media3/common/audio/Sonic;->accumulatedSpeedAdjustmentError:D

    .line 467
    .end local v2    # "expectedFrameCount":D
    move v12, v4

    goto :goto_0

    .line 468
    .end local v4    # "newFrameCount":I
    :cond_0
    move/from16 v4, p4

    .line 469
    .restart local v4    # "newFrameCount":I
    int-to-double v9, v1

    sub-double v2, v2, p2

    mul-double/2addr v9, v2

    sub-double v2, p2, v7

    div-double/2addr v9, v2

    add-double/2addr v9, v5

    .line 471
    .local v9, "expectedInputToCopy":D
    invoke-static {v9, v10}, Ljava/lang/Math;->round(D)J

    move-result-wide v2

    long-to-int v2, v2

    iput v2, v0, Landroidx/media3/common/audio/Sonic;->remainingInputToCopyFrameCount:I

    .line 472
    iget v2, v0, Landroidx/media3/common/audio/Sonic;->remainingInputToCopyFrameCount:I

    int-to-double v2, v2

    sub-double v2, v9, v2

    iput-wide v2, v0, Landroidx/media3/common/audio/Sonic;->accumulatedSpeedAdjustmentError:D

    move v12, v4

    .line 474
    .end local v4    # "newFrameCount":I
    .end local v9    # "expectedInputToCopy":D
    .local v12, "newFrameCount":I
    :goto_0
    iget-object v2, v0, Landroidx/media3/common/audio/Sonic;->impl:Landroidx/media3/common/audio/Sonic$SonicImpl;

    invoke-interface {v2, v12}, Landroidx/media3/common/audio/Sonic$SonicImpl;->ensureAdditionalFramesInOutputBuffer(I)V

    .line 475
    iget-object v11, v0, Landroidx/media3/common/audio/Sonic;->impl:Landroidx/media3/common/audio/Sonic$SonicImpl;

    iget v13, v0, Landroidx/media3/common/audio/Sonic;->channelCount:I

    iget v14, v0, Landroidx/media3/common/audio/Sonic;->outputFrameCount:I

    add-int v16, p1, v1

    move/from16 v15, p1

    invoke-interface/range {v11 .. v16}, Landroidx/media3/common/audio/Sonic$SonicImpl;->overlapAdd(IIIII)V

    .line 476
    iget v2, v0, Landroidx/media3/common/audio/Sonic;->outputFrameCount:I

    add-int/2addr v2, v12

    iput v2, v0, Landroidx/media3/common/audio/Sonic;->outputFrameCount:I

    .line 477
    return v12
.end method


# virtual methods
.method public flush()V
    .locals 2

    .line 318
    const/4 v0, 0x0

    iput v0, p0, Landroidx/media3/common/audio/Sonic;->inputFrameCount:I

    .line 319
    iput v0, p0, Landroidx/media3/common/audio/Sonic;->outputFrameCount:I

    .line 320
    iput v0, p0, Landroidx/media3/common/audio/Sonic;->pitchFrameCount:I

    .line 321
    iput v0, p0, Landroidx/media3/common/audio/Sonic;->oldRatePosition:I

    .line 322
    iput v0, p0, Landroidx/media3/common/audio/Sonic;->newRatePosition:I

    .line 323
    iput v0, p0, Landroidx/media3/common/audio/Sonic;->remainingInputToCopyFrameCount:I

    .line 324
    iput v0, p0, Landroidx/media3/common/audio/Sonic;->prevPeriod:I

    .line 325
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroidx/media3/common/audio/Sonic;->accumulatedSpeedAdjustmentError:D

    .line 326
    iget-object v0, p0, Landroidx/media3/common/audio/Sonic;->impl:Landroidx/media3/common/audio/Sonic$SonicImpl;

    invoke-interface {v0}, Landroidx/media3/common/audio/Sonic$SonicImpl;->flush()V

    .line 327
    return-void
.end method

.method public getOutput(Ljava/nio/ByteBuffer;)V
    .locals 7
    .param p1, "buffer"    # Ljava/nio/ByteBuffer;

    .line 260
    iget v0, p0, Landroidx/media3/common/audio/Sonic;->outputFrameCount:I

    const/4 v1, 0x0

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkState(Z)V

    .line 261
    nop

    .line 262
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    iget v2, p0, Landroidx/media3/common/audio/Sonic;->channelCount:I

    iget-object v3, p0, Landroidx/media3/common/audio/Sonic;->impl:Landroidx/media3/common/audio/Sonic$SonicImpl;

    invoke-interface {v3}, Landroidx/media3/common/audio/Sonic$SonicImpl;->bytesPerSample()I

    move-result v3

    mul-int/2addr v2, v3

    div-int/2addr v0, v2

    iget v2, p0, Landroidx/media3/common/audio/Sonic;->outputFrameCount:I

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 263
    .local v0, "framesToRead":I
    iget-object v2, p0, Landroidx/media3/common/audio/Sonic;->impl:Landroidx/media3/common/audio/Sonic$SonicImpl;

    invoke-interface {v2, p1, v0}, Landroidx/media3/common/audio/Sonic$SonicImpl;->copyOutputToByteBuffer(Ljava/nio/ByteBuffer;I)V

    .line 264
    iget v2, p0, Landroidx/media3/common/audio/Sonic;->outputFrameCount:I

    sub-int/2addr v2, v0

    iput v2, p0, Landroidx/media3/common/audio/Sonic;->outputFrameCount:I

    .line 265
    iget-object v2, p0, Landroidx/media3/common/audio/Sonic;->impl:Landroidx/media3/common/audio/Sonic$SonicImpl;

    .line 266
    invoke-interface {v2}, Landroidx/media3/common/audio/Sonic$SonicImpl;->getOutputBuffer()Ljava/lang/Object;

    move-result-object v2

    iget v3, p0, Landroidx/media3/common/audio/Sonic;->channelCount:I

    mul-int/2addr v3, v0

    iget-object v4, p0, Landroidx/media3/common/audio/Sonic;->impl:Landroidx/media3/common/audio/Sonic$SonicImpl;

    .line 268
    invoke-interface {v4}, Landroidx/media3/common/audio/Sonic$SonicImpl;->getOutputBuffer()Ljava/lang/Object;

    move-result-object v4

    iget v5, p0, Landroidx/media3/common/audio/Sonic;->outputFrameCount:I

    iget v6, p0, Landroidx/media3/common/audio/Sonic;->channelCount:I

    mul-int/2addr v5, v6

    .line 265
    invoke-static {v2, v3, v4, v1, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 271
    return-void
.end method

.method public getOutputSize()I
    .locals 2

    .line 331
    iget v0, p0, Landroidx/media3/common/audio/Sonic;->outputFrameCount:I

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkState(Z)V

    .line 332
    iget v0, p0, Landroidx/media3/common/audio/Sonic;->outputFrameCount:I

    iget v1, p0, Landroidx/media3/common/audio/Sonic;->channelCount:I

    mul-int/2addr v0, v1

    iget-object v1, p0, Landroidx/media3/common/audio/Sonic;->impl:Landroidx/media3/common/audio/Sonic$SonicImpl;

    invoke-interface {v1}, Landroidx/media3/common/audio/Sonic$SonicImpl;->bytesPerSample()I

    move-result v1

    mul-int/2addr v0, v1

    return v0
.end method

.method public getPendingInputBytes()I
    .locals 2

    .line 234
    iget v0, p0, Landroidx/media3/common/audio/Sonic;->inputFrameCount:I

    iget v1, p0, Landroidx/media3/common/audio/Sonic;->channelCount:I

    mul-int/2addr v0, v1

    iget-object v1, p0, Landroidx/media3/common/audio/Sonic;->impl:Landroidx/media3/common/audio/Sonic$SonicImpl;

    invoke-interface {v1}, Landroidx/media3/common/audio/Sonic$SonicImpl;->bytesPerSample()I

    move-result v1

    mul-int/2addr v0, v1

    return v0
.end method

.method public queueEndOfStream()V
    .locals 11

    .line 278
    iget v0, p0, Landroidx/media3/common/audio/Sonic;->inputFrameCount:I

    .line 279
    .local v0, "remainingFrameCount":I
    iget v1, p0, Landroidx/media3/common/audio/Sonic;->speed:F

    iget v2, p0, Landroidx/media3/common/audio/Sonic;->pitch:F

    div-float/2addr v1, v2

    float-to-double v1, v1

    .line 280
    .local v1, "s":D
    iget v3, p0, Landroidx/media3/common/audio/Sonic;->rate:F

    iget v4, p0, Landroidx/media3/common/audio/Sonic;->pitch:F

    mul-float/2addr v3, v4

    float-to-double v3, v3

    .line 284
    .local v3, "r":D
    iget v5, p0, Landroidx/media3/common/audio/Sonic;->remainingInputToCopyFrameCount:I

    sub-int v5, v0, v5

    .line 289
    .local v5, "adjustedRemainingFrames":I
    iget v6, p0, Landroidx/media3/common/audio/Sonic;->outputFrameCount:I

    int-to-double v7, v5

    div-double/2addr v7, v1

    iget v9, p0, Landroidx/media3/common/audio/Sonic;->remainingInputToCopyFrameCount:I

    int-to-double v9, v9

    add-double/2addr v7, v9

    iget-wide v9, p0, Landroidx/media3/common/audio/Sonic;->accumulatedSpeedAdjustmentError:D

    add-double/2addr v7, v9

    iget v9, p0, Landroidx/media3/common/audio/Sonic;->pitchFrameCount:I

    int-to-double v9, v9

    add-double/2addr v7, v9

    div-double/2addr v7, v3

    const-wide/high16 v9, 0x3fe0000000000000L    # 0.5

    add-double/2addr v7, v9

    double-to-int v7, v7

    add-int/2addr v6, v7

    .line 298
    .local v6, "expectedOutputFrames":I
    const-wide/16 v7, 0x0

    iput-wide v7, p0, Landroidx/media3/common/audio/Sonic;->accumulatedSpeedAdjustmentError:D

    .line 301
    iget-object v7, p0, Landroidx/media3/common/audio/Sonic;->impl:Landroidx/media3/common/audio/Sonic$SonicImpl;

    iget v8, p0, Landroidx/media3/common/audio/Sonic;->maxRequiredFrameCount:I

    mul-int/lit8 v8, v8, 0x2

    add-int/2addr v8, v0

    invoke-interface {v7, v8}, Landroidx/media3/common/audio/Sonic$SonicImpl;->ensureAdditionalFramesInInputBuffer(I)V

    .line 302
    iget-object v7, p0, Landroidx/media3/common/audio/Sonic;->impl:Landroidx/media3/common/audio/Sonic$SonicImpl;

    iget v8, p0, Landroidx/media3/common/audio/Sonic;->channelCount:I

    mul-int/2addr v8, v0

    iget v9, p0, Landroidx/media3/common/audio/Sonic;->maxRequiredFrameCount:I

    mul-int/lit8 v9, v9, 0x2

    invoke-interface {v7, v8, v9}, Landroidx/media3/common/audio/Sonic$SonicImpl;->zeroInputBuffer(II)V

    .line 303
    iget v7, p0, Landroidx/media3/common/audio/Sonic;->inputFrameCount:I

    iget v8, p0, Landroidx/media3/common/audio/Sonic;->maxRequiredFrameCount:I

    mul-int/lit8 v8, v8, 0x2

    add-int/2addr v7, v8

    iput v7, p0, Landroidx/media3/common/audio/Sonic;->inputFrameCount:I

    .line 304
    invoke-direct {p0}, Landroidx/media3/common/audio/Sonic;->processStreamInput()V

    .line 306
    iget v7, p0, Landroidx/media3/common/audio/Sonic;->outputFrameCount:I

    const/4 v8, 0x0

    if-le v7, v6, :cond_0

    .line 308
    invoke-static {v6, v8}, Ljava/lang/Math;->max(II)I

    move-result v7

    iput v7, p0, Landroidx/media3/common/audio/Sonic;->outputFrameCount:I

    .line 311
    :cond_0
    iput v8, p0, Landroidx/media3/common/audio/Sonic;->inputFrameCount:I

    .line 312
    iput v8, p0, Landroidx/media3/common/audio/Sonic;->remainingInputToCopyFrameCount:I

    .line 313
    iput v8, p0, Landroidx/media3/common/audio/Sonic;->pitchFrameCount:I

    .line 314
    return-void
.end method

.method public queueInput(Ljava/nio/ByteBuffer;)V
    .locals 3
    .param p1, "buffer"    # Ljava/nio/ByteBuffer;

    .line 244
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    .line 245
    .local v0, "bytesToWrite":I
    iget v1, p0, Landroidx/media3/common/audio/Sonic;->channelCount:I

    iget-object v2, p0, Landroidx/media3/common/audio/Sonic;->impl:Landroidx/media3/common/audio/Sonic$SonicImpl;

    invoke-interface {v2}, Landroidx/media3/common/audio/Sonic$SonicImpl;->bytesPerSample()I

    move-result v2

    mul-int/2addr v1, v2

    div-int v1, v0, v1

    .line 246
    .local v1, "framesToWrite":I
    iget-object v2, p0, Landroidx/media3/common/audio/Sonic;->impl:Landroidx/media3/common/audio/Sonic$SonicImpl;

    invoke-interface {v2, v1}, Landroidx/media3/common/audio/Sonic$SonicImpl;->ensureAdditionalFramesInInputBuffer(I)V

    .line 247
    iget-object v2, p0, Landroidx/media3/common/audio/Sonic;->impl:Landroidx/media3/common/audio/Sonic$SonicImpl;

    invoke-interface {v2, p1, v0}, Landroidx/media3/common/audio/Sonic$SonicImpl;->copyBufferToInputBuffer(Ljava/nio/ByteBuffer;I)V

    .line 248
    iget v2, p0, Landroidx/media3/common/audio/Sonic;->inputFrameCount:I

    add-int/2addr v2, v1

    iput v2, p0, Landroidx/media3/common/audio/Sonic;->inputFrameCount:I

    .line 249
    invoke-direct {p0}, Landroidx/media3/common/audio/Sonic;->processStreamInput()V

    .line 250
    return-void
.end method
