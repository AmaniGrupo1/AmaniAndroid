.class public final Landroidx/media3/exoplayer/video/VideoFrameReleaseHelper;
.super Ljava/lang/Object;
.source "VideoFrameReleaseHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media3/exoplayer/video/VideoFrameReleaseHelper$VSyncSampler;,
        Landroidx/media3/exoplayer/video/VideoFrameReleaseHelper$Api30;,
        Landroidx/media3/exoplayer/video/VideoFrameReleaseHelper$VSyncSamplerV33;,
        Landroidx/media3/exoplayer/video/VideoFrameReleaseHelper$VSyncSamplerBase;
    }
.end annotation


# static fields
.field private static final MAX_ALLOWED_ADJUSTMENT_NS:J = 0x1312d00L

.field private static final MINIMUM_FRAMES_WITHOUT_SYNC_TO_CLEAR_SURFACE_FRAME_RATE:I = 0x1e

.field private static final MINIMUM_MATCHING_FRAME_DURATION_FOR_HIGH_CONFIDENCE_NS:J = 0x12a05f200L

.field private static final MINIMUM_MEDIA_FRAME_RATE_CHANGE_FOR_UPDATE_HIGH_CONFIDENCE:F = 0.1f

.field private static final MINIMUM_MEDIA_FRAME_RATE_CHANGE_FOR_UPDATE_LOW_CONFIDENCE:F = 1.0f

.field private static final TAG:Ljava/lang/String; = "VideoFrameReleaseHelper"

.field private static final VSYNC_OFFSET_PERCENTAGE:J = 0x50L

.field public static final VSYNC_SAMPLE_UPDATE_PERIOD_MS:J = 0x1f4L


# instance fields
.field private changeFrameRateStrategy:I

.field private final context:Landroid/content/Context;

.field private formatFrameRate:F

.field private frameIndex:J

.field private final frameRateEstimator:Landroidx/media3/exoplayer/video/FixedFrameRateEstimator;

.field private lastAdjustedFrameIndex:J

.field private lastAdjustedPresentationTimeUs:J

.field private lastAdjustedReleaseTimeNs:J

.field private lastVsyncHysteresisOffsetNs:J

.field private pendingLastAdjustedFrameIndex:J

.field private pendingLastAdjustedReleaseTimeNs:J

.field private pendingLastPresentationTimeUs:J

.field private pendingVsyncHysteresisOffsetNs:J

.field private playbackSpeed:F

.field private started:Z

.field private surface:Landroid/view/Surface;

.field private surfaceMediaFrameRate:F

.field private surfacePlaybackFrameRate:F

.field private vsyncSampleBuilt:Z

.field private vsyncSampler:Landroidx/media3/exoplayer/video/VideoFrameReleaseHelper$VSyncSampler;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 135
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 136
    iput-object p1, p0, Landroidx/media3/exoplayer/video/VideoFrameReleaseHelper;->context:Landroid/content/Context;

    .line 137
    new-instance v0, Landroidx/media3/exoplayer/video/FixedFrameRateEstimator;

    invoke-direct {v0}, Landroidx/media3/exoplayer/video/FixedFrameRateEstimator;-><init>()V

    iput-object v0, p0, Landroidx/media3/exoplayer/video/VideoFrameReleaseHelper;->frameRateEstimator:Landroidx/media3/exoplayer/video/FixedFrameRateEstimator;

    .line 138
    const/high16 v0, -0x40800000    # -1.0f

    iput v0, p0, Landroidx/media3/exoplayer/video/VideoFrameReleaseHelper;->formatFrameRate:F

    .line 139
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Landroidx/media3/exoplayer/video/VideoFrameReleaseHelper;->playbackSpeed:F

    .line 140
    const/4 v0, 0x0

    iput v0, p0, Landroidx/media3/exoplayer/video/VideoFrameReleaseHelper;->changeFrameRateStrategy:I

    .line 141
    return-void
.end method

.method private static adjustmentAllowed(JJ)Z
    .locals 4
    .param p0, "unadjustedReleaseTimeNs"    # J
    .param p2, "adjustedReleaseTimeNs"    # J

    .line 312
    sub-long v0, p0, p2

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(J)J

    move-result-wide v0

    const-wide/32 v2, 0x1312d00

    cmp-long v0, v0, v2

    if-gtz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private clearSurfaceFrameRate()V
    .locals 2

    .line 398
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1e

    if-lt v0, v1, :cond_1

    iget-object v0, p0, Landroidx/media3/exoplayer/video/VideoFrameReleaseHelper;->surface:Landroid/view/Surface;

    if-eqz v0, :cond_1

    iget v0, p0, Landroidx/media3/exoplayer/video/VideoFrameReleaseHelper;->changeFrameRateStrategy:I

    const/high16 v1, -0x80000000

    if-eq v0, v1, :cond_1

    iget v0, p0, Landroidx/media3/exoplayer/video/VideoFrameReleaseHelper;->surfacePlaybackFrameRate:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroidx/media3/exoplayer/video/VideoFrameReleaseHelper;->surface:Landroid/view/Surface;

    .line 402
    invoke-virtual {v0}, Landroid/view/Surface;->isValid()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 405
    :cond_0
    iput v1, p0, Landroidx/media3/exoplayer/video/VideoFrameReleaseHelper;->surfacePlaybackFrameRate:F

    .line 406
    iget-object v0, p0, Landroidx/media3/exoplayer/video/VideoFrameReleaseHelper;->surface:Landroid/view/Surface;

    invoke-static {v0, v1}, Landroidx/media3/exoplayer/video/VideoFrameReleaseHelper$Api30;->setSurfaceFrameRate(Landroid/view/Surface;F)V

    .line 407
    return-void

    .line 403
    :cond_1
    :goto_0
    return-void
.end method

.method private findClosestVsyncAndUpdateHysteresis(JJJ)J
    .locals 24
    .param p1, "releaseTimeNs"    # J
    .param p3, "sampledVsyncTimeNs"    # J
    .param p5, "vsyncDurationNs"    # J

    .line 411
    move-object/from16 v0, p0

    sub-long v1, p1, p3

    div-long v1, v1, p5

    .line 412
    .local v1, "vsyncCount":J
    mul-long v3, p5, v1

    add-long v3, p3, v3

    .line 415
    .local v3, "snappedTimeNs":J
    cmp-long v5, p1, v3

    if-gtz v5, :cond_0

    .line 416
    sub-long v5, v3, p5

    .line 417
    .local v5, "snappedBeforeNs":J
    move-wide v7, v3

    .local v7, "snappedAfterNs":J
    goto :goto_0

    .line 419
    .end local v5    # "snappedBeforeNs":J
    .end local v7    # "snappedAfterNs":J
    :cond_0
    move-wide v5, v3

    .line 420
    .restart local v5    # "snappedBeforeNs":J
    add-long v7, v3, p5

    .line 422
    .restart local v7    # "snappedAfterNs":J
    :goto_0
    sub-long v9, v7, p1

    .line 423
    .local v9, "snappedAfterDiffNs":J
    sub-long v11, p1, v5

    .line 428
    .local v11, "snappedBeforeDiffNs":J
    sub-long v13, v9, v11

    invoke-static {v13, v14}, Ljava/lang/Math;->abs(J)J

    move-result-wide v13

    .line 429
    .local v13, "snappedDiffsDiffNs":J
    const-wide/16 v15, 0x2

    div-long v15, p5, v15

    cmp-long v15, v13, v15

    const/16 v16, 0x1

    const/16 v17, 0x0

    if-gez v15, :cond_1

    move/from16 v15, v16

    goto :goto_1

    :cond_1
    move/from16 v15, v17

    .line 430
    .local v15, "shouldEvaluateHysteresis":Z
    :goto_1
    if-eqz v15, :cond_6

    .line 432
    const-wide/16 v18, 0x4

    move-wide/from16 v20, v1

    .end local v1    # "vsyncCount":J
    .local v20, "vsyncCount":J
    div-long v1, p5, v18

    .line 433
    .local v1, "hysteresisRangeNs":J
    cmp-long v18, v13, v1

    if-gez v18, :cond_2

    goto :goto_2

    :cond_2
    move/from16 v16, v17

    .line 434
    .local v16, "isInHysteresisRange":Z
    :goto_2
    move-wide/from16 v17, v3

    .end local v3    # "snappedTimeNs":J
    .local v17, "snappedTimeNs":J
    if-eqz v16, :cond_5

    .line 435
    const-wide/16 v22, 0x0

    iget-wide v3, v0, Landroidx/media3/exoplayer/video/VideoFrameReleaseHelper;->lastVsyncHysteresisOffsetNs:J

    cmp-long v3, v3, v22

    if-eqz v3, :cond_3

    .line 436
    iget-wide v3, v0, Landroidx/media3/exoplayer/video/VideoFrameReleaseHelper;->lastVsyncHysteresisOffsetNs:J

    iput-wide v3, v0, Landroidx/media3/exoplayer/video/VideoFrameReleaseHelper;->pendingVsyncHysteresisOffsetNs:J

    goto :goto_4

    .line 438
    :cond_3
    nop

    .line 439
    cmp-long v3, v9, v11

    if-gez v3, :cond_4

    neg-long v3, v1

    goto :goto_3

    :cond_4
    move-wide v3, v1

    :goto_3
    iput-wide v3, v0, Landroidx/media3/exoplayer/video/VideoFrameReleaseHelper;->pendingVsyncHysteresisOffsetNs:J

    goto :goto_4

    .line 442
    :cond_5
    const-wide/16 v22, 0x0

    move-wide/from16 v3, v22

    iput-wide v3, v0, Landroidx/media3/exoplayer/video/VideoFrameReleaseHelper;->pendingVsyncHysteresisOffsetNs:J

    .line 444
    .end local v1    # "hysteresisRangeNs":J
    .end local v16    # "isInHysteresisRange":Z
    :goto_4
    goto :goto_5

    .line 445
    .end local v17    # "snappedTimeNs":J
    .end local v20    # "vsyncCount":J
    .local v1, "vsyncCount":J
    .restart local v3    # "snappedTimeNs":J
    :cond_6
    move-wide/from16 v20, v1

    move-wide/from16 v17, v3

    .end local v1    # "vsyncCount":J
    .end local v3    # "snappedTimeNs":J
    .restart local v17    # "snappedTimeNs":J
    .restart local v20    # "vsyncCount":J
    iget-wide v1, v0, Landroidx/media3/exoplayer/video/VideoFrameReleaseHelper;->lastVsyncHysteresisOffsetNs:J

    iput-wide v1, v0, Landroidx/media3/exoplayer/video/VideoFrameReleaseHelper;->pendingVsyncHysteresisOffsetNs:J

    .line 447
    :goto_5
    iget-wide v1, v0, Landroidx/media3/exoplayer/video/VideoFrameReleaseHelper;->pendingVsyncHysteresisOffsetNs:J

    add-long/2addr v1, v9

    cmp-long v1, v1, v11

    if-gez v1, :cond_7

    .line 448
    move-wide v1, v7

    goto :goto_6

    .line 449
    :cond_7
    move-wide v1, v5

    .line 447
    :goto_6
    return-wide v1
.end method

.method private resetAdjustment()V
    .locals 4

    .line 303
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroidx/media3/exoplayer/video/VideoFrameReleaseHelper;->frameIndex:J

    .line 304
    const-wide/16 v2, -0x1

    iput-wide v2, p0, Landroidx/media3/exoplayer/video/VideoFrameReleaseHelper;->lastAdjustedFrameIndex:J

    .line 305
    iput-wide v2, p0, Landroidx/media3/exoplayer/video/VideoFrameReleaseHelper;->pendingLastAdjustedFrameIndex:J

    .line 306
    iput-wide v0, p0, Landroidx/media3/exoplayer/video/VideoFrameReleaseHelper;->lastVsyncHysteresisOffsetNs:J

    .line 307
    iput-wide v0, p0, Landroidx/media3/exoplayer/video/VideoFrameReleaseHelper;->pendingVsyncHysteresisOffsetNs:J

    .line 308
    return-void
.end method

.method private updateSurfaceMediaFrameRate()V
    .locals 8

    .line 323
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1e

    if-lt v0, v1, :cond_a

    iget-object v0, p0, Landroidx/media3/exoplayer/video/VideoFrameReleaseHelper;->surface:Landroid/view/Surface;

    if-nez v0, :cond_0

    goto/16 :goto_5

    .line 328
    :cond_0
    iget-object v0, p0, Landroidx/media3/exoplayer/video/VideoFrameReleaseHelper;->frameRateEstimator:Landroidx/media3/exoplayer/video/FixedFrameRateEstimator;

    invoke-virtual {v0}, Landroidx/media3/exoplayer/video/FixedFrameRateEstimator;->isSynced()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroidx/media3/exoplayer/video/VideoFrameReleaseHelper;->frameRateEstimator:Landroidx/media3/exoplayer/video/FixedFrameRateEstimator;

    invoke-virtual {v0}, Landroidx/media3/exoplayer/video/FixedFrameRateEstimator;->getFrameRate()F

    move-result v0

    goto :goto_0

    :cond_1
    iget v0, p0, Landroidx/media3/exoplayer/video/VideoFrameReleaseHelper;->formatFrameRate:F

    .line 329
    .local v0, "candidateFrameRate":F
    :goto_0
    iget v2, p0, Landroidx/media3/exoplayer/video/VideoFrameReleaseHelper;->surfaceMediaFrameRate:F

    cmpl-float v2, v0, v2

    if-nez v2, :cond_2

    .line 330
    return-void

    .line 336
    :cond_2
    const/high16 v2, -0x40800000    # -1.0f

    cmpl-float v3, v0, v2

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v3, :cond_6

    iget v3, p0, Landroidx/media3/exoplayer/video/VideoFrameReleaseHelper;->surfaceMediaFrameRate:F

    cmpl-float v3, v3, v2

    if-eqz v3, :cond_6

    .line 337
    iget-object v1, p0, Landroidx/media3/exoplayer/video/VideoFrameReleaseHelper;->frameRateEstimator:Landroidx/media3/exoplayer/video/FixedFrameRateEstimator;

    .line 338
    invoke-virtual {v1}, Landroidx/media3/exoplayer/video/FixedFrameRateEstimator;->isSynced()Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Landroidx/media3/exoplayer/video/VideoFrameReleaseHelper;->frameRateEstimator:Landroidx/media3/exoplayer/video/FixedFrameRateEstimator;

    .line 339
    invoke-virtual {v1}, Landroidx/media3/exoplayer/video/FixedFrameRateEstimator;->getMatchingFrameDurationSumNs()J

    move-result-wide v1

    const-wide v6, 0x12a05f200L

    cmp-long v1, v1, v6

    if-ltz v1, :cond_3

    move v1, v4

    goto :goto_1

    :cond_3
    move v1, v5

    .line 342
    .local v1, "candidateIsHighConfidence":Z
    :goto_1
    if-eqz v1, :cond_4

    .line 343
    const v2, 0x3dcccccd    # 0.1f

    goto :goto_2

    .line 344
    :cond_4
    const/high16 v2, 0x3f800000    # 1.0f

    :goto_2
    nop

    .line 345
    .local v2, "minimumChangeForUpdate":F
    iget v3, p0, Landroidx/media3/exoplayer/video/VideoFrameReleaseHelper;->surfaceMediaFrameRate:F

    sub-float v3, v0, v3

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    cmpl-float v3, v3, v2

    if-ltz v3, :cond_5

    goto :goto_3

    :cond_5
    move v4, v5

    .line 346
    .end local v1    # "candidateIsHighConfidence":Z
    .end local v2    # "minimumChangeForUpdate":F
    .local v4, "shouldUpdate":Z
    :goto_3
    goto :goto_4

    .end local v4    # "shouldUpdate":Z
    :cond_6
    cmpl-float v2, v0, v2

    if-eqz v2, :cond_7

    .line 347
    const/4 v4, 0x1

    .restart local v4    # "shouldUpdate":Z
    goto :goto_4

    .line 349
    .end local v4    # "shouldUpdate":Z
    :cond_7
    iget-object v2, p0, Landroidx/media3/exoplayer/video/VideoFrameReleaseHelper;->frameRateEstimator:Landroidx/media3/exoplayer/video/FixedFrameRateEstimator;

    .line 350
    invoke-virtual {v2}, Landroidx/media3/exoplayer/video/FixedFrameRateEstimator;->getFramesWithoutSyncCount()I

    move-result v2

    if-lt v2, v1, :cond_8

    goto :goto_4

    :cond_8
    move v4, v5

    .line 354
    .restart local v4    # "shouldUpdate":Z
    :goto_4
    if-eqz v4, :cond_9

    .line 355
    iput v0, p0, Landroidx/media3/exoplayer/video/VideoFrameReleaseHelper;->surfaceMediaFrameRate:F

    .line 356
    invoke-direct {p0, v5}, Landroidx/media3/exoplayer/video/VideoFrameReleaseHelper;->updateSurfacePlaybackFrameRate(Z)V

    .line 358
    :cond_9
    return-void

    .line 324
    .end local v0    # "candidateFrameRate":F
    .end local v4    # "shouldUpdate":Z
    :cond_a
    :goto_5
    return-void
.end method

.method private updateSurfacePlaybackFrameRate(Z)V
    .locals 3
    .param p1, "forceUpdate"    # Z

    .line 371
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1e

    if-lt v0, v1, :cond_3

    iget-object v0, p0, Landroidx/media3/exoplayer/video/VideoFrameReleaseHelper;->surface:Landroid/view/Surface;

    if-eqz v0, :cond_3

    iget v0, p0, Landroidx/media3/exoplayer/video/VideoFrameReleaseHelper;->changeFrameRateStrategy:I

    const/high16 v1, -0x80000000

    if-eq v0, v1, :cond_3

    iget-object v0, p0, Landroidx/media3/exoplayer/video/VideoFrameReleaseHelper;->surface:Landroid/view/Surface;

    .line 374
    invoke-virtual {v0}, Landroid/view/Surface;->isValid()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 378
    :cond_0
    const/4 v0, 0x0

    .line 379
    .local v0, "surfacePlaybackFrameRate":F
    iget-boolean v1, p0, Landroidx/media3/exoplayer/video/VideoFrameReleaseHelper;->started:Z

    if-eqz v1, :cond_1

    iget v1, p0, Landroidx/media3/exoplayer/video/VideoFrameReleaseHelper;->surfaceMediaFrameRate:F

    const/high16 v2, -0x40800000    # -1.0f

    cmpl-float v1, v1, v2

    if-eqz v1, :cond_1

    .line 380
    iget v1, p0, Landroidx/media3/exoplayer/video/VideoFrameReleaseHelper;->surfaceMediaFrameRate:F

    iget v2, p0, Landroidx/media3/exoplayer/video/VideoFrameReleaseHelper;->playbackSpeed:F

    mul-float v0, v1, v2

    .line 384
    :cond_1
    if-nez p1, :cond_2

    iget v1, p0, Landroidx/media3/exoplayer/video/VideoFrameReleaseHelper;->surfacePlaybackFrameRate:F

    cmpl-float v1, v1, v0

    if-nez v1, :cond_2

    .line 385
    return-void

    .line 387
    :cond_2
    iput v0, p0, Landroidx/media3/exoplayer/video/VideoFrameReleaseHelper;->surfacePlaybackFrameRate:F

    .line 388
    iget-object v1, p0, Landroidx/media3/exoplayer/video/VideoFrameReleaseHelper;->surface:Landroid/view/Surface;

    invoke-static {v1, v0}, Landroidx/media3/exoplayer/video/VideoFrameReleaseHelper$Api30;->setSurfaceFrameRate(Landroid/view/Surface;F)V

    .line 389
    return-void

    .line 375
    .end local v0    # "surfacePlaybackFrameRate":F
    :cond_3
    :goto_0
    return-void
.end method


# virtual methods
.method public adjustReleaseTime(JJ)J
    .locals 17
    .param p1, "releaseTimeNs"    # J
    .param p3, "presentationTimeUs"    # J

    .line 256
    move-object/from16 v0, p0

    move-wide/from16 v7, p3

    move-wide/from16 v1, p1

    .line 258
    .local v1, "adjustedReleaseTimeNs":J
    iget-wide v3, v0, Landroidx/media3/exoplayer/video/VideoFrameReleaseHelper;->lastAdjustedFrameIndex:J

    const-wide/16 v5, -0x1

    cmp-long v3, v3, v5

    if-eqz v3, :cond_2

    .line 260
    iget-object v3, v0, Landroidx/media3/exoplayer/video/VideoFrameReleaseHelper;->frameRateEstimator:Landroidx/media3/exoplayer/video/FixedFrameRateEstimator;

    invoke-virtual {v3}, Landroidx/media3/exoplayer/video/FixedFrameRateEstimator;->isSynced()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 261
    iget-object v3, v0, Landroidx/media3/exoplayer/video/VideoFrameReleaseHelper;->frameRateEstimator:Landroidx/media3/exoplayer/video/FixedFrameRateEstimator;

    invoke-virtual {v3}, Landroidx/media3/exoplayer/video/FixedFrameRateEstimator;->getFrameDurationNs()J

    move-result-wide v3

    .line 262
    .local v3, "frameDurationNs":J
    iget-wide v5, v0, Landroidx/media3/exoplayer/video/VideoFrameReleaseHelper;->frameIndex:J

    iget-wide v9, v0, Landroidx/media3/exoplayer/video/VideoFrameReleaseHelper;->lastAdjustedFrameIndex:J

    sub-long/2addr v5, v9

    mul-long/2addr v5, v3

    long-to-float v5, v5

    iget v6, v0, Landroidx/media3/exoplayer/video/VideoFrameReleaseHelper;->playbackSpeed:F

    div-float/2addr v5, v6

    float-to-long v3, v5

    .line 264
    .local v3, "elapsedReleaseTimeSinceLastFrameNs":J
    goto :goto_0

    .line 265
    .end local v3    # "elapsedReleaseTimeSinceLastFrameNs":J
    :cond_0
    iget-wide v3, v0, Landroidx/media3/exoplayer/video/VideoFrameReleaseHelper;->lastAdjustedPresentationTimeUs:J

    sub-long v3, v7, v3

    const-wide/16 v5, 0x3e8

    mul-long/2addr v3, v5

    long-to-float v3, v3

    iget v4, v0, Landroidx/media3/exoplayer/video/VideoFrameReleaseHelper;->playbackSpeed:F

    div-float/2addr v3, v4

    float-to-long v3, v3

    .line 268
    .restart local v3    # "elapsedReleaseTimeSinceLastFrameNs":J
    :goto_0
    iget-wide v5, v0, Landroidx/media3/exoplayer/video/VideoFrameReleaseHelper;->lastAdjustedReleaseTimeNs:J

    add-long/2addr v5, v3

    .line 270
    .local v5, "candidateAdjustedReleaseTimeNs":J
    move-wide/from16 v9, p1

    invoke-static {v9, v10, v5, v6}, Landroidx/media3/exoplayer/video/VideoFrameReleaseHelper;->adjustmentAllowed(JJ)Z

    move-result v11

    if-eqz v11, :cond_1

    .line 271
    move-wide v1, v5

    goto :goto_1

    .line 273
    :cond_1
    invoke-direct {v0}, Landroidx/media3/exoplayer/video/VideoFrameReleaseHelper;->resetAdjustment()V

    goto :goto_1

    .line 258
    .end local v3    # "elapsedReleaseTimeSinceLastFrameNs":J
    .end local v5    # "candidateAdjustedReleaseTimeNs":J
    :cond_2
    move-wide/from16 v9, p1

    .line 276
    :goto_1
    iget-wide v3, v0, Landroidx/media3/exoplayer/video/VideoFrameReleaseHelper;->frameIndex:J

    iput-wide v3, v0, Landroidx/media3/exoplayer/video/VideoFrameReleaseHelper;->pendingLastAdjustedFrameIndex:J

    .line 277
    iput-wide v1, v0, Landroidx/media3/exoplayer/video/VideoFrameReleaseHelper;->pendingLastAdjustedReleaseTimeNs:J

    .line 278
    iput-wide v7, v0, Landroidx/media3/exoplayer/video/VideoFrameReleaseHelper;->pendingLastPresentationTimeUs:J

    .line 280
    iget-object v3, v0, Landroidx/media3/exoplayer/video/VideoFrameReleaseHelper;->vsyncSampler:Landroidx/media3/exoplayer/video/VideoFrameReleaseHelper$VSyncSampler;

    if-nez v3, :cond_3

    .line 281
    return-wide v1

    .line 283
    :cond_3
    iget-object v3, v0, Landroidx/media3/exoplayer/video/VideoFrameReleaseHelper;->vsyncSampler:Landroidx/media3/exoplayer/video/VideoFrameReleaseHelper$VSyncSampler;

    iget-wide v3, v3, Landroidx/media3/exoplayer/video/VideoFrameReleaseHelper$VSyncSampler;->sampledVsyncTimeNs:J

    .line 284
    .local v3, "sampledVsyncTimeNs":J
    iget-object v5, v0, Landroidx/media3/exoplayer/video/VideoFrameReleaseHelper;->vsyncSampler:Landroidx/media3/exoplayer/video/VideoFrameReleaseHelper$VSyncSampler;

    iget-wide v5, v5, Landroidx/media3/exoplayer/video/VideoFrameReleaseHelper$VSyncSampler;->vsyncDurationNs:J

    .line 285
    .local v5, "vsyncDurationNs":J
    const-wide v11, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v13, v3, v11

    if-eqz v13, :cond_5

    cmp-long v11, v5, v11

    if-nez v11, :cond_4

    goto :goto_2

    .line 289
    :cond_4
    nop

    .line 290
    invoke-direct/range {v0 .. v6}, Landroidx/media3/exoplayer/video/VideoFrameReleaseHelper;->findClosestVsyncAndUpdateHysteresis(JJJ)J

    move-result-wide v11

    .line 293
    .local v11, "snappedTimeNs":J
    const-wide/16 v13, 0x50

    mul-long/2addr v13, v5

    const-wide/16 v15, 0x64

    div-long/2addr v13, v15

    sub-long v13, v11, v13

    return-wide v13

    .line 286
    .end local v11    # "snappedTimeNs":J
    :cond_5
    :goto_2
    return-wide v1
.end method

.method public onFormatChanged(F)V
    .locals 1
    .param p1, "formatFrameRate"    # F

    .line 206
    iput p1, p0, Landroidx/media3/exoplayer/video/VideoFrameReleaseHelper;->formatFrameRate:F

    .line 207
    iget-object v0, p0, Landroidx/media3/exoplayer/video/VideoFrameReleaseHelper;->frameRateEstimator:Landroidx/media3/exoplayer/video/FixedFrameRateEstimator;

    invoke-virtual {v0}, Landroidx/media3/exoplayer/video/FixedFrameRateEstimator;->reset()V

    .line 208
    invoke-direct {p0}, Landroidx/media3/exoplayer/video/VideoFrameReleaseHelper;->updateSurfaceMediaFrameRate()V

    .line 209
    return-void
.end method

.method public onNextFrame(J)V
    .locals 4
    .param p1, "framePresentationTimeUs"    # J

    .line 217
    iget-wide v0, p0, Landroidx/media3/exoplayer/video/VideoFrameReleaseHelper;->pendingLastAdjustedFrameIndex:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 218
    iget-wide v0, p0, Landroidx/media3/exoplayer/video/VideoFrameReleaseHelper;->pendingLastAdjustedFrameIndex:J

    iput-wide v0, p0, Landroidx/media3/exoplayer/video/VideoFrameReleaseHelper;->lastAdjustedFrameIndex:J

    .line 219
    iget-wide v0, p0, Landroidx/media3/exoplayer/video/VideoFrameReleaseHelper;->pendingLastAdjustedReleaseTimeNs:J

    iput-wide v0, p0, Landroidx/media3/exoplayer/video/VideoFrameReleaseHelper;->lastAdjustedReleaseTimeNs:J

    .line 220
    iget-wide v0, p0, Landroidx/media3/exoplayer/video/VideoFrameReleaseHelper;->pendingLastPresentationTimeUs:J

    iput-wide v0, p0, Landroidx/media3/exoplayer/video/VideoFrameReleaseHelper;->lastAdjustedPresentationTimeUs:J

    .line 221
    iget-wide v0, p0, Landroidx/media3/exoplayer/video/VideoFrameReleaseHelper;->pendingVsyncHysteresisOffsetNs:J

    iput-wide v0, p0, Landroidx/media3/exoplayer/video/VideoFrameReleaseHelper;->lastVsyncHysteresisOffsetNs:J

    .line 223
    :cond_0
    iget-wide v0, p0, Landroidx/media3/exoplayer/video/VideoFrameReleaseHelper;->frameIndex:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Landroidx/media3/exoplayer/video/VideoFrameReleaseHelper;->frameIndex:J

    .line 224
    iget-object v0, p0, Landroidx/media3/exoplayer/video/VideoFrameReleaseHelper;->frameRateEstimator:Landroidx/media3/exoplayer/video/FixedFrameRateEstimator;

    const-wide/16 v1, 0x3e8

    mul-long/2addr v1, p1

    invoke-virtual {v0, v1, v2}, Landroidx/media3/exoplayer/video/FixedFrameRateEstimator;->onNextFrame(J)V

    .line 225
    invoke-direct {p0}, Landroidx/media3/exoplayer/video/VideoFrameReleaseHelper;->updateSurfaceMediaFrameRate()V

    .line 226
    return-void
.end method

.method public onPlaybackSpeed(F)V
    .locals 1
    .param p1, "playbackSpeed"    # F

    .line 196
    iput p1, p0, Landroidx/media3/exoplayer/video/VideoFrameReleaseHelper;->playbackSpeed:F

    .line 197
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroidx/media3/exoplayer/video/VideoFrameReleaseHelper;->updateSurfacePlaybackFrameRate(Z)V

    .line 198
    return-void
.end method

.method public onPositionReset()V
    .locals 0

    .line 187
    invoke-direct {p0}, Landroidx/media3/exoplayer/video/VideoFrameReleaseHelper;->resetAdjustment()V

    .line 188
    return-void
.end method

.method public onStarted()V
    .locals 1

    .line 160
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/media3/exoplayer/video/VideoFrameReleaseHelper;->started:Z

    .line 161
    invoke-direct {p0}, Landroidx/media3/exoplayer/video/VideoFrameReleaseHelper;->resetAdjustment()V

    .line 162
    iget-boolean v0, p0, Landroidx/media3/exoplayer/video/VideoFrameReleaseHelper;->vsyncSampleBuilt:Z

    if-nez v0, :cond_0

    .line 163
    iget-object v0, p0, Landroidx/media3/exoplayer/video/VideoFrameReleaseHelper;->context:Landroid/content/Context;

    invoke-static {v0}, Landroidx/media3/exoplayer/video/VideoFrameReleaseHelper$VSyncSampler;->access$000(Landroid/content/Context;)Landroidx/media3/exoplayer/video/VideoFrameReleaseHelper$VSyncSampler;

    move-result-object v0

    iput-object v0, p0, Landroidx/media3/exoplayer/video/VideoFrameReleaseHelper;->vsyncSampler:Landroidx/media3/exoplayer/video/VideoFrameReleaseHelper$VSyncSampler;

    .line 165
    :cond_0
    iget-object v0, p0, Landroidx/media3/exoplayer/video/VideoFrameReleaseHelper;->vsyncSampler:Landroidx/media3/exoplayer/video/VideoFrameReleaseHelper$VSyncSampler;

    if-eqz v0, :cond_1

    .line 166
    iget-object v0, p0, Landroidx/media3/exoplayer/video/VideoFrameReleaseHelper;->vsyncSampler:Landroidx/media3/exoplayer/video/VideoFrameReleaseHelper$VSyncSampler;

    invoke-virtual {v0}, Landroidx/media3/exoplayer/video/VideoFrameReleaseHelper$VSyncSampler;->register()V

    .line 168
    :cond_1
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroidx/media3/exoplayer/video/VideoFrameReleaseHelper;->updateSurfacePlaybackFrameRate(Z)V

    .line 169
    return-void
.end method

.method public onStopped()V
    .locals 1

    .line 230
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/media3/exoplayer/video/VideoFrameReleaseHelper;->started:Z

    .line 231
    iget-object v0, p0, Landroidx/media3/exoplayer/video/VideoFrameReleaseHelper;->vsyncSampler:Landroidx/media3/exoplayer/video/VideoFrameReleaseHelper$VSyncSampler;

    if-eqz v0, :cond_0

    .line 232
    iget-object v0, p0, Landroidx/media3/exoplayer/video/VideoFrameReleaseHelper;->vsyncSampler:Landroidx/media3/exoplayer/video/VideoFrameReleaseHelper$VSyncSampler;

    invoke-virtual {v0}, Landroidx/media3/exoplayer/video/VideoFrameReleaseHelper$VSyncSampler;->unregister()V

    .line 234
    :cond_0
    invoke-direct {p0}, Landroidx/media3/exoplayer/video/VideoFrameReleaseHelper;->clearSurfaceFrameRate()V

    .line 235
    return-void
.end method

.method public onSurfaceChanged(Landroid/view/Surface;)V
    .locals 1
    .param p1, "surface"    # Landroid/view/Surface;

    .line 177
    iget-object v0, p0, Landroidx/media3/exoplayer/video/VideoFrameReleaseHelper;->surface:Landroid/view/Surface;

    if-ne v0, p1, :cond_0

    .line 178
    return-void

    .line 180
    :cond_0
    invoke-direct {p0}, Landroidx/media3/exoplayer/video/VideoFrameReleaseHelper;->clearSurfaceFrameRate()V

    .line 181
    iput-object p1, p0, Landroidx/media3/exoplayer/video/VideoFrameReleaseHelper;->surface:Landroid/view/Surface;

    .line 182
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroidx/media3/exoplayer/video/VideoFrameReleaseHelper;->updateSurfacePlaybackFrameRate(Z)V

    .line 183
    return-void
.end method

.method public setChangeFrameRateStrategy(I)V
    .locals 1
    .param p1, "changeFrameRateStrategy"    # I

    .line 151
    iget v0, p0, Landroidx/media3/exoplayer/video/VideoFrameReleaseHelper;->changeFrameRateStrategy:I

    if-ne v0, p1, :cond_0

    .line 152
    return-void

    .line 154
    :cond_0
    iput p1, p0, Landroidx/media3/exoplayer/video/VideoFrameReleaseHelper;->changeFrameRateStrategy:I

    .line 155
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroidx/media3/exoplayer/video/VideoFrameReleaseHelper;->updateSurfacePlaybackFrameRate(Z)V

    .line 156
    return-void
.end method

.method public setVsyncData(JJ)V
    .locals 1
    .param p1, "vsyncSampleTimeNs"    # J
    .param p3, "vsyncDurationNs"    # J

    .line 298
    iget-object v0, p0, Landroidx/media3/exoplayer/video/VideoFrameReleaseHelper;->vsyncSampler:Landroidx/media3/exoplayer/video/VideoFrameReleaseHelper$VSyncSampler;

    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media3/exoplayer/video/VideoFrameReleaseHelper$VSyncSampler;

    iput-wide p1, v0, Landroidx/media3/exoplayer/video/VideoFrameReleaseHelper$VSyncSampler;->sampledVsyncTimeNs:J

    .line 299
    iget-object v0, p0, Landroidx/media3/exoplayer/video/VideoFrameReleaseHelper;->vsyncSampler:Landroidx/media3/exoplayer/video/VideoFrameReleaseHelper$VSyncSampler;

    iput-wide p3, v0, Landroidx/media3/exoplayer/video/VideoFrameReleaseHelper$VSyncSampler;->vsyncDurationNs:J

    .line 300
    return-void
.end method
