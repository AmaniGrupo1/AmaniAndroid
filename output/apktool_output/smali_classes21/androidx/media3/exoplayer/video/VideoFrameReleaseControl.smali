.class public final Landroidx/media3/exoplayer/video/VideoFrameReleaseControl;
.super Ljava/lang/Object;
.source "VideoFrameReleaseControl.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media3/exoplayer/video/VideoFrameReleaseControl$FrameTimingEvaluator;,
        Landroidx/media3/exoplayer/video/VideoFrameReleaseControl$FrameReleaseInfo;,
        Landroidx/media3/exoplayer/video/VideoFrameReleaseControl$FrameReleaseAction;
    }
.end annotation


# static fields
.field public static final FRAME_RELEASE_DROP:I = 0x2

.field public static final FRAME_RELEASE_IGNORE:I = 0x4

.field public static final FRAME_RELEASE_IMMEDIATELY:I = 0x0

.field public static final FRAME_RELEASE_SCHEDULED:I = 0x1

.field public static final FRAME_RELEASE_SKIP:I = 0x3

.field public static final FRAME_RELEASE_TRY_AGAIN_LATER:I = 0x5

.field private static final MAX_EARLY_US_THRESHOLD:J = 0xc350L


# instance fields
.field private final allowedJoiningTimeMs:J

.field private clock:Landroidx/media3/common/util/Clock;

.field private disableAdvancingTimestampChecks:Z

.field private firstFrameState:I

.field private frameReadyWithoutSurface:Z

.field private final frameReleaseHelper:Landroidx/media3/exoplayer/video/VideoFrameReleaseHelper;

.field private final frameTimingEvaluator:Landroidx/media3/exoplayer/video/VideoFrameReleaseControl$FrameTimingEvaluator;

.field private hasOutputSurface:Z

.field private initialPositionUs:J

.field private joiningDeadlineMs:J

.field private joiningRenderNextFrameImmediately:Z

.field private lastPresentationTimeUs:J

.field private lastReleaseRealtimeUs:J

.field private playbackSpeed:F

.field private requiresOutputSurface:Z

.field private started:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroidx/media3/exoplayer/video/VideoFrameReleaseControl$FrameTimingEvaluator;J)V
    .locals 2
    .param p1, "applicationContext"    # Landroid/content/Context;
    .param p2, "frameTimingEvaluator"    # Landroidx/media3/exoplayer/video/VideoFrameReleaseControl$FrameTimingEvaluator;
    .param p3, "allowedJoiningTimeMs"    # J

    .line 203
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 204
    iput-object p2, p0, Landroidx/media3/exoplayer/video/VideoFrameReleaseControl;->frameTimingEvaluator:Landroidx/media3/exoplayer/video/VideoFrameReleaseControl$FrameTimingEvaluator;

    .line 205
    iput-wide p3, p0, Landroidx/media3/exoplayer/video/VideoFrameReleaseControl;->allowedJoiningTimeMs:J

    .line 206
    new-instance v0, Landroidx/media3/exoplayer/video/VideoFrameReleaseHelper;

    invoke-direct {v0, p1}, Landroidx/media3/exoplayer/video/VideoFrameReleaseHelper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Landroidx/media3/exoplayer/video/VideoFrameReleaseControl;->frameReleaseHelper:Landroidx/media3/exoplayer/video/VideoFrameReleaseHelper;

    .line 207
    const/4 v0, 0x0

    iput v0, p0, Landroidx/media3/exoplayer/video/VideoFrameReleaseControl;->firstFrameState:I

    .line 208
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v0, p0, Landroidx/media3/exoplayer/video/VideoFrameReleaseControl;->initialPositionUs:J

    .line 209
    iput-wide v0, p0, Landroidx/media3/exoplayer/video/VideoFrameReleaseControl;->lastPresentationTimeUs:J

    .line 210
    iput-wide v0, p0, Landroidx/media3/exoplayer/video/VideoFrameReleaseControl;->joiningDeadlineMs:J

    .line 211
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Landroidx/media3/exoplayer/video/VideoFrameReleaseControl;->playbackSpeed:F

    .line 212
    sget-object v0, Landroidx/media3/common/util/Clock;->DEFAULT:Landroidx/media3/common/util/Clock;

    iput-object v0, p0, Landroidx/media3/exoplayer/video/VideoFrameReleaseControl;->clock:Landroidx/media3/common/util/Clock;

    .line 213
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/media3/exoplayer/video/VideoFrameReleaseControl;->requiresOutputSurface:Z

    .line 214
    return-void
.end method

.method private calculateEarlyTimeUs(JJJ)J
    .locals 4
    .param p1, "positionUs"    # J
    .param p3, "elapsedRealtimeUs"    # J
    .param p5, "framePresentationTimeUs"    # J

    .line 494
    sub-long v0, p5, p1

    long-to-double v0, v0

    iget v2, p0, Landroidx/media3/exoplayer/video/VideoFrameReleaseControl;->playbackSpeed:F

    float-to-double v2, v2

    div-double/2addr v0, v2

    double-to-long v0, v0

    .line 495
    .local v0, "earlyUs":J
    iget-boolean v2, p0, Landroidx/media3/exoplayer/video/VideoFrameReleaseControl;->started:Z

    if-eqz v2, :cond_0

    .line 497
    iget-object v2, p0, Landroidx/media3/exoplayer/video/VideoFrameReleaseControl;->clock:Landroidx/media3/common/util/Clock;

    invoke-interface {v2}, Landroidx/media3/common/util/Clock;->elapsedRealtime()J

    move-result-wide v2

    invoke-static {v2, v3}, Landroidx/media3/common/util/Util;->msToUs(J)J

    move-result-wide v2

    sub-long/2addr v2, p3

    sub-long/2addr v0, v2

    .line 500
    :cond_0
    return-wide v0
.end method

.method private lowerFirstFrameState(I)V
    .locals 1
    .param p1, "firstFrameState"    # I

    .line 475
    iget v0, p0, Landroidx/media3/exoplayer/video/VideoFrameReleaseControl;->firstFrameState:I

    invoke-static {v0, p1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Landroidx/media3/exoplayer/video/VideoFrameReleaseControl;->firstFrameState:I

    .line 476
    return-void
.end method

.method private shouldForceRelease(JJJ)Z
    .locals 9
    .param p1, "positionUs"    # J
    .param p3, "earlyUs"    # J
    .param p5, "outputStreamStartPositionUs"    # J

    .line 506
    iget-wide v0, p0, Landroidx/media3/exoplayer/video/VideoFrameReleaseControl;->joiningDeadlineMs:J

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v0, v0, v2

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Landroidx/media3/exoplayer/video/VideoFrameReleaseControl;->joiningRenderNextFrameImmediately:Z

    if-nez v0, :cond_0

    .line 508
    return v1

    .line 510
    :cond_0
    iget v0, p0, Landroidx/media3/exoplayer/video/VideoFrameReleaseControl;->firstFrameState:I

    const/4 v4, 0x1

    packed-switch v0, :pswitch_data_0

    .line 525
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 518
    :pswitch_0
    iget-object v0, p0, Landroidx/media3/exoplayer/video/VideoFrameReleaseControl;->clock:Landroidx/media3/common/util/Clock;

    .line 519
    invoke-interface {v0}, Landroidx/media3/common/util/Clock;->elapsedRealtime()J

    move-result-wide v5

    invoke-static {v5, v6}, Landroidx/media3/common/util/Util;->msToUs(J)J

    move-result-wide v5

    iget-wide v7, p0, Landroidx/media3/exoplayer/video/VideoFrameReleaseControl;->lastReleaseRealtimeUs:J

    sub-long/2addr v5, v7

    .line 520
    .local v5, "elapsedTimeSinceLastReleaseUs":J
    iget-boolean v0, p0, Landroidx/media3/exoplayer/video/VideoFrameReleaseControl;->started:Z

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Landroidx/media3/exoplayer/video/VideoFrameReleaseControl;->disableAdvancingTimestampChecks:Z

    if-nez v0, :cond_1

    iget-wide v7, p0, Landroidx/media3/exoplayer/video/VideoFrameReleaseControl;->initialPositionUs:J

    cmp-long v0, v7, v2

    if-eqz v0, :cond_2

    iget-wide v2, p0, Landroidx/media3/exoplayer/video/VideoFrameReleaseControl;->initialPositionUs:J

    cmp-long v0, v2, p1

    if-eqz v0, :cond_2

    :cond_1
    iget-object v0, p0, Landroidx/media3/exoplayer/video/VideoFrameReleaseControl;->frameTimingEvaluator:Landroidx/media3/exoplayer/video/VideoFrameReleaseControl$FrameTimingEvaluator;

    .line 523
    invoke-interface {v0, p3, p4, v5, v6}, Landroidx/media3/exoplayer/video/VideoFrameReleaseControl$FrameTimingEvaluator;->shouldForceReleaseFrame(JJ)Z

    move-result v0

    if-eqz v0, :cond_2

    move v1, v4

    goto :goto_0

    :cond_2
    nop

    .line 520
    :goto_0
    return v1

    .line 516
    .end local v5    # "elapsedTimeSinceLastReleaseUs":J
    :pswitch_1
    cmp-long v0, p1, p5

    if-ltz v0, :cond_3

    move v1, v4

    :cond_3
    return v1

    .line 514
    :pswitch_2
    return v4

    .line 512
    :pswitch_3
    iget-boolean v0, p0, Landroidx/media3/exoplayer/video/VideoFrameReleaseControl;->started:Z

    return v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public allowReleaseFirstFrameBeforeStarted()V
    .locals 1

    .line 297
    iget v0, p0, Landroidx/media3/exoplayer/video/VideoFrameReleaseControl;->firstFrameState:I

    if-nez v0, :cond_0

    .line 298
    const/4 v0, 0x1

    iput v0, p0, Landroidx/media3/exoplayer/video/VideoFrameReleaseControl;->firstFrameState:I

    .line 300
    :cond_0
    return-void
.end method

.method experimentalDisableAdvancingTimestampChecks()V
    .locals 1

    .line 471
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/media3/exoplayer/video/VideoFrameReleaseControl;->disableAdvancingTimestampChecks:Z

    .line 472
    return-void
.end method

.method public getFrameReleaseAction(JJJJZZLandroidx/media3/exoplayer/video/VideoFrameReleaseControl$FrameReleaseInfo;)I
    .locals 19
    .param p1, "presentationTimeUs"    # J
    .param p3, "positionUs"    # J
    .param p5, "elapsedRealtimeUs"    # J
    .param p7, "outputStreamStartPositionUs"    # J
    .param p9, "isDecodeOnlyFrame"    # Z
    .param p10, "isLastFrame"    # Z
    .param p11, "frameReleaseInfo"    # Landroidx/media3/exoplayer/video/VideoFrameReleaseControl$FrameReleaseInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media3/exoplayer/ExoPlaybackException;
        }
    .end annotation

    .line 370
    move-object/from16 v0, p0

    move-wide/from16 v5, p1

    move-wide/from16 v1, p3

    move-object/from16 v9, p11

    invoke-static {v9}, Landroidx/media3/exoplayer/video/VideoFrameReleaseControl$FrameReleaseInfo;->access$000(Landroidx/media3/exoplayer/video/VideoFrameReleaseControl$FrameReleaseInfo;)V

    .line 372
    iget-boolean v3, v0, Landroidx/media3/exoplayer/video/VideoFrameReleaseControl;->started:Z

    const-wide v7, -0x7fffffffffffffffL    # -4.9E-324

    if-eqz v3, :cond_0

    iget-wide v3, v0, Landroidx/media3/exoplayer/video/VideoFrameReleaseControl;->initialPositionUs:J

    cmp-long v3, v3, v7

    if-nez v3, :cond_0

    .line 373
    iput-wide v1, v0, Landroidx/media3/exoplayer/video/VideoFrameReleaseControl;->initialPositionUs:J

    .line 375
    :cond_0
    iget-wide v3, v0, Landroidx/media3/exoplayer/video/VideoFrameReleaseControl;->lastPresentationTimeUs:J

    cmp-long v3, v3, v5

    if-eqz v3, :cond_1

    .line 376
    iget-object v3, v0, Landroidx/media3/exoplayer/video/VideoFrameReleaseControl;->frameReleaseHelper:Landroidx/media3/exoplayer/video/VideoFrameReleaseHelper;

    invoke-virtual {v3, v5, v6}, Landroidx/media3/exoplayer/video/VideoFrameReleaseHelper;->onNextFrame(J)V

    .line 377
    iput-wide v5, v0, Landroidx/media3/exoplayer/video/VideoFrameReleaseControl;->lastPresentationTimeUs:J

    .line 380
    :cond_1
    nop

    .line 381
    move-wide/from16 v3, p5

    invoke-direct/range {v0 .. v6}, Landroidx/media3/exoplayer/video/VideoFrameReleaseControl;->calculateEarlyTimeUs(JJJ)J

    move-result-wide v10

    .line 380
    move-object v12, v0

    move-wide v13, v5

    invoke-static {v9, v10, v11}, Landroidx/media3/exoplayer/video/VideoFrameReleaseControl$FrameReleaseInfo;->access$102(Landroidx/media3/exoplayer/video/VideoFrameReleaseControl$FrameReleaseInfo;J)J

    .line 383
    const/4 v10, 0x3

    if-eqz p9, :cond_2

    if-nez p10, :cond_2

    .line 384
    return v10

    .line 386
    :cond_2
    iget-boolean v0, v12, Landroidx/media3/exoplayer/video/VideoFrameReleaseControl;->hasOutputSurface:Z

    const/4 v11, 0x4

    const/4 v15, 0x5

    const/4 v1, 0x1

    if-nez v0, :cond_5

    iget-boolean v0, v12, Landroidx/media3/exoplayer/video/VideoFrameReleaseControl;->requiresOutputSurface:Z

    if-eqz v0, :cond_5

    .line 388
    iget-object v0, v12, Landroidx/media3/exoplayer/video/VideoFrameReleaseControl;->frameTimingEvaluator:Landroidx/media3/exoplayer/video/VideoFrameReleaseControl$FrameTimingEvaluator;

    .line 389
    move v3, v1

    invoke-static {v9}, Landroidx/media3/exoplayer/video/VideoFrameReleaseControl$FrameReleaseInfo;->access$100(Landroidx/media3/exoplayer/video/VideoFrameReleaseControl$FrameReleaseInfo;)J

    move-result-wide v1

    .line 388
    const/4 v8, 0x1

    move-wide/from16 v5, p5

    move/from16 v7, p10

    move/from16 v16, v10

    move v10, v3

    move-wide/from16 v3, p3

    invoke-interface/range {v0 .. v8}, Landroidx/media3/exoplayer/video/VideoFrameReleaseControl$FrameTimingEvaluator;->shouldIgnoreFrame(JJJZZ)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 394
    return v11

    .line 396
    :cond_3
    iget-boolean v0, v12, Landroidx/media3/exoplayer/video/VideoFrameReleaseControl;->started:Z

    if-eqz v0, :cond_4

    invoke-static {v9}, Landroidx/media3/exoplayer/video/VideoFrameReleaseControl$FrameReleaseInfo;->access$100(Landroidx/media3/exoplayer/video/VideoFrameReleaseControl$FrameReleaseInfo;)J

    move-result-wide v0

    const-wide/16 v2, 0x7530

    cmp-long v0, v0, v2

    if-gez v0, :cond_4

    .line 397
    return v16

    .line 399
    :cond_4
    iput-boolean v10, v12, Landroidx/media3/exoplayer/video/VideoFrameReleaseControl;->frameReadyWithoutSurface:Z

    .line 400
    return v15

    .line 386
    :cond_5
    move/from16 v16, v10

    move v10, v1

    .line 402
    iget-boolean v0, v12, Landroidx/media3/exoplayer/video/VideoFrameReleaseControl;->requiresOutputSurface:Z

    if-nez v0, :cond_6

    .line 403
    iput-boolean v10, v12, Landroidx/media3/exoplayer/video/VideoFrameReleaseControl;->frameReadyWithoutSurface:Z

    .line 405
    :cond_6
    invoke-static {v9}, Landroidx/media3/exoplayer/video/VideoFrameReleaseControl$FrameReleaseInfo;->access$100(Landroidx/media3/exoplayer/video/VideoFrameReleaseControl$FrameReleaseInfo;)J

    move-result-wide v3

    move-wide/from16 v1, p3

    move-wide/from16 v5, p7

    move-object v0, v12

    invoke-direct/range {v0 .. v6}, Landroidx/media3/exoplayer/video/VideoFrameReleaseControl;->shouldForceRelease(JJJ)Z

    move-result v3

    const/4 v1, 0x0

    if-eqz v3, :cond_7

    .line 406
    return v1

    .line 408
    :cond_7
    iget-boolean v0, v12, Landroidx/media3/exoplayer/video/VideoFrameReleaseControl;->started:Z

    if-eqz v0, :cond_e

    iget-wide v2, v12, Landroidx/media3/exoplayer/video/VideoFrameReleaseControl;->initialPositionUs:J

    cmp-long v0, p3, v2

    if-nez v0, :cond_8

    goto :goto_2

    .line 413
    :cond_8
    iget-object v0, v12, Landroidx/media3/exoplayer/video/VideoFrameReleaseControl;->clock:Landroidx/media3/common/util/Clock;

    invoke-interface {v0}, Landroidx/media3/common/util/Clock;->nanoTime()J

    move-result-wide v17

    .line 414
    .local v17, "systemTimeNs":J
    iget-object v0, v12, Landroidx/media3/exoplayer/video/VideoFrameReleaseControl;->frameReleaseHelper:Landroidx/media3/exoplayer/video/VideoFrameReleaseHelper;

    .line 416
    invoke-static {v9}, Landroidx/media3/exoplayer/video/VideoFrameReleaseControl$FrameReleaseInfo;->access$100(Landroidx/media3/exoplayer/video/VideoFrameReleaseControl$FrameReleaseInfo;)J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    mul-long/2addr v2, v4

    add-long v2, v17, v2

    .line 415
    invoke-virtual {v0, v2, v3, v13, v14}, Landroidx/media3/exoplayer/video/VideoFrameReleaseHelper;->adjustReleaseTime(JJ)J

    move-result-wide v2

    .line 414
    invoke-static {v9, v2, v3}, Landroidx/media3/exoplayer/video/VideoFrameReleaseControl$FrameReleaseInfo;->access$202(Landroidx/media3/exoplayer/video/VideoFrameReleaseControl$FrameReleaseInfo;J)J

    .line 417
    invoke-static {v9}, Landroidx/media3/exoplayer/video/VideoFrameReleaseControl$FrameReleaseInfo;->access$200(Landroidx/media3/exoplayer/video/VideoFrameReleaseControl$FrameReleaseInfo;)J

    move-result-wide v2

    sub-long v2, v2, v17

    div-long/2addr v2, v4

    invoke-static {v9, v2, v3}, Landroidx/media3/exoplayer/video/VideoFrameReleaseControl$FrameReleaseInfo;->access$102(Landroidx/media3/exoplayer/video/VideoFrameReleaseControl$FrameReleaseInfo;J)J

    .line 419
    iget-wide v2, v12, Landroidx/media3/exoplayer/video/VideoFrameReleaseControl;->joiningDeadlineMs:J

    cmp-long v0, v2, v7

    if-eqz v0, :cond_9

    iget-boolean v0, v12, Landroidx/media3/exoplayer/video/VideoFrameReleaseControl;->joiningRenderNextFrameImmediately:Z

    if-nez v0, :cond_9

    move v8, v10

    goto :goto_0

    :cond_9
    move v8, v1

    .line 421
    .local v8, "treatDropAsSkip":Z
    :goto_0
    iget-object v0, v12, Landroidx/media3/exoplayer/video/VideoFrameReleaseControl;->frameTimingEvaluator:Landroidx/media3/exoplayer/video/VideoFrameReleaseControl$FrameTimingEvaluator;

    .line 422
    invoke-static {v9}, Landroidx/media3/exoplayer/video/VideoFrameReleaseControl$FrameReleaseInfo;->access$100(Landroidx/media3/exoplayer/video/VideoFrameReleaseControl$FrameReleaseInfo;)J

    move-result-wide v1

    .line 421
    move-wide/from16 v3, p3

    move-wide/from16 v5, p5

    move/from16 v7, p10

    invoke-interface/range {v0 .. v8}, Landroidx/media3/exoplayer/video/VideoFrameReleaseControl$FrameTimingEvaluator;->shouldIgnoreFrame(JJJZZ)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 423
    return v11

    .line 424
    :cond_a
    iget-object v0, v12, Landroidx/media3/exoplayer/video/VideoFrameReleaseControl;->frameTimingEvaluator:Landroidx/media3/exoplayer/video/VideoFrameReleaseControl$FrameTimingEvaluator;

    .line 425
    invoke-static {v9}, Landroidx/media3/exoplayer/video/VideoFrameReleaseControl$FrameReleaseInfo;->access$100(Landroidx/media3/exoplayer/video/VideoFrameReleaseControl$FrameReleaseInfo;)J

    move-result-wide v1

    .line 424
    move-wide/from16 v3, p5

    move/from16 v5, p10

    invoke-interface/range {v0 .. v5}, Landroidx/media3/exoplayer/video/VideoFrameReleaseControl$FrameTimingEvaluator;->shouldDropFrame(JJZ)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 427
    if-eqz v8, :cond_b

    move/from16 v10, v16

    goto :goto_1

    :cond_b
    const/4 v10, 0x2

    :goto_1
    return v10

    .line 428
    :cond_c
    invoke-static {v9}, Landroidx/media3/exoplayer/video/VideoFrameReleaseControl$FrameReleaseInfo;->access$100(Landroidx/media3/exoplayer/video/VideoFrameReleaseControl$FrameReleaseInfo;)J

    move-result-wide v0

    const-wide/32 v2, 0xc350

    cmp-long v0, v0, v2

    if-lez v0, :cond_d

    .line 429
    return v15

    .line 431
    :cond_d
    return v10

    .line 409
    .end local v8    # "treatDropAsSkip":Z
    .end local v17    # "systemTimeNs":J
    :cond_e
    :goto_2
    return v15
.end method

.method public isReady(Z)Z
    .locals 9
    .param p1, "otherwiseReady"    # Z

    .line 309
    const/4 v0, 0x1

    const-wide v1, -0x7fffffffffffffffL    # -4.9E-324

    if-eqz p1, :cond_1

    iget v3, p0, Landroidx/media3/exoplayer/video/VideoFrameReleaseControl;->firstFrameState:I

    const/4 v4, 0x3

    if-eq v3, v4, :cond_0

    iget-boolean v3, p0, Landroidx/media3/exoplayer/video/VideoFrameReleaseControl;->frameReadyWithoutSurface:Z

    if-eqz v3, :cond_1

    iget-boolean v3, p0, Landroidx/media3/exoplayer/video/VideoFrameReleaseControl;->hasOutputSurface:Z

    if-eqz v3, :cond_0

    iget-boolean v3, p0, Landroidx/media3/exoplayer/video/VideoFrameReleaseControl;->requiresOutputSurface:Z

    if-nez v3, :cond_1

    .line 313
    :cond_0
    iput-wide v1, p0, Landroidx/media3/exoplayer/video/VideoFrameReleaseControl;->joiningDeadlineMs:J

    .line 314
    return v0

    .line 315
    :cond_1
    iget-wide v3, p0, Landroidx/media3/exoplayer/video/VideoFrameReleaseControl;->joiningDeadlineMs:J

    cmp-long v3, v3, v1

    const/4 v4, 0x0

    if-nez v3, :cond_2

    .line 317
    return v4

    .line 318
    :cond_2
    iget-object v3, p0, Landroidx/media3/exoplayer/video/VideoFrameReleaseControl;->clock:Landroidx/media3/common/util/Clock;

    invoke-interface {v3}, Landroidx/media3/common/util/Clock;->elapsedRealtime()J

    move-result-wide v5

    iget-wide v7, p0, Landroidx/media3/exoplayer/video/VideoFrameReleaseControl;->joiningDeadlineMs:J

    cmp-long v3, v5, v7

    if-gez v3, :cond_3

    .line 320
    return v0

    .line 323
    :cond_3
    iput-wide v1, p0, Landroidx/media3/exoplayer/video/VideoFrameReleaseControl;->joiningDeadlineMs:J

    .line 324
    return v4
.end method

.method public join(Z)V
    .locals 4
    .param p1, "renderNextFrameImmediately"    # Z

    .line 338
    iput-boolean p1, p0, Landroidx/media3/exoplayer/video/VideoFrameReleaseControl;->joiningRenderNextFrameImmediately:Z

    .line 339
    nop

    .line 340
    iget-wide v0, p0, Landroidx/media3/exoplayer/video/VideoFrameReleaseControl;->allowedJoiningTimeMs:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    iget-object v0, p0, Landroidx/media3/exoplayer/video/VideoFrameReleaseControl;->clock:Landroidx/media3/common/util/Clock;

    invoke-interface {v0}, Landroidx/media3/common/util/Clock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Landroidx/media3/exoplayer/video/VideoFrameReleaseControl;->allowedJoiningTimeMs:J

    add-long/2addr v0, v2

    goto :goto_0

    :cond_0
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    :goto_0
    iput-wide v0, p0, Landroidx/media3/exoplayer/video/VideoFrameReleaseControl;->joiningDeadlineMs:J

    .line 341
    return-void
.end method

.method public onFrameReleasedIsFirstFrame()Z
    .locals 3

    .line 281
    iget v0, p0, Landroidx/media3/exoplayer/video/VideoFrameReleaseControl;->firstFrameState:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 282
    .local v0, "firstFrame":Z
    :goto_0
    iput v1, p0, Landroidx/media3/exoplayer/video/VideoFrameReleaseControl;->firstFrameState:I

    .line 283
    iget-object v1, p0, Landroidx/media3/exoplayer/video/VideoFrameReleaseControl;->clock:Landroidx/media3/common/util/Clock;

    invoke-interface {v1}, Landroidx/media3/common/util/Clock;->elapsedRealtime()J

    move-result-wide v1

    invoke-static {v1, v2}, Landroidx/media3/common/util/Util;->msToUs(J)J

    move-result-wide v1

    iput-wide v1, p0, Landroidx/media3/exoplayer/video/VideoFrameReleaseControl;->lastReleaseRealtimeUs:J

    .line 284
    return v0
.end method

.method public onStarted()V
    .locals 2

    .line 241
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/media3/exoplayer/video/VideoFrameReleaseControl;->started:Z

    .line 242
    iget-object v0, p0, Landroidx/media3/exoplayer/video/VideoFrameReleaseControl;->clock:Landroidx/media3/common/util/Clock;

    invoke-interface {v0}, Landroidx/media3/common/util/Clock;->elapsedRealtime()J

    move-result-wide v0

    invoke-static {v0, v1}, Landroidx/media3/common/util/Util;->msToUs(J)J

    move-result-wide v0

    iput-wide v0, p0, Landroidx/media3/exoplayer/video/VideoFrameReleaseControl;->lastReleaseRealtimeUs:J

    .line 243
    iget-object v0, p0, Landroidx/media3/exoplayer/video/VideoFrameReleaseControl;->frameReleaseHelper:Landroidx/media3/exoplayer/video/VideoFrameReleaseHelper;

    invoke-virtual {v0}, Landroidx/media3/exoplayer/video/VideoFrameReleaseHelper;->onStarted()V

    .line 244
    return-void
.end method

.method public onStopped()V
    .locals 2

    .line 248
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/media3/exoplayer/video/VideoFrameReleaseControl;->started:Z

    .line 249
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v0, p0, Landroidx/media3/exoplayer/video/VideoFrameReleaseControl;->joiningDeadlineMs:J

    .line 250
    iget-object v0, p0, Landroidx/media3/exoplayer/video/VideoFrameReleaseControl;->frameReleaseHelper:Landroidx/media3/exoplayer/video/VideoFrameReleaseHelper;

    invoke-virtual {v0}, Landroidx/media3/exoplayer/video/VideoFrameReleaseHelper;->onStopped()V

    .line 251
    return-void
.end method

.method public onStreamChanged(I)V
    .locals 1
    .param p1, "firstFrameReleaseInstruction"    # I

    .line 223
    packed-switch p1, :pswitch_data_0

    .line 234
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 231
    :pswitch_0
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Landroidx/media3/exoplayer/video/VideoFrameReleaseControl;->lowerFirstFrameState(I)V

    .line 232
    goto :goto_0

    .line 228
    :pswitch_1
    const/4 v0, 0x0

    iput v0, p0, Landroidx/media3/exoplayer/video/VideoFrameReleaseControl;->firstFrameState:I

    .line 229
    goto :goto_0

    .line 225
    :pswitch_2
    const/4 v0, 0x1

    iput v0, p0, Landroidx/media3/exoplayer/video/VideoFrameReleaseControl;->firstFrameState:I

    .line 226
    nop

    .line 236
    :goto_0
    iget-object v0, p0, Landroidx/media3/exoplayer/video/VideoFrameReleaseControl;->frameReleaseHelper:Landroidx/media3/exoplayer/video/VideoFrameReleaseHelper;

    invoke-virtual {v0}, Landroidx/media3/exoplayer/video/VideoFrameReleaseHelper;->onPositionReset()V

    .line 237
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public reset()V
    .locals 3

    .line 436
    iget-object v0, p0, Landroidx/media3/exoplayer/video/VideoFrameReleaseControl;->frameReleaseHelper:Landroidx/media3/exoplayer/video/VideoFrameReleaseHelper;

    invoke-virtual {v0}, Landroidx/media3/exoplayer/video/VideoFrameReleaseHelper;->onPositionReset()V

    .line 437
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v0, p0, Landroidx/media3/exoplayer/video/VideoFrameReleaseControl;->lastPresentationTimeUs:J

    .line 438
    iput-wide v0, p0, Landroidx/media3/exoplayer/video/VideoFrameReleaseControl;->initialPositionUs:J

    .line 439
    const/4 v2, 0x1

    invoke-direct {p0, v2}, Landroidx/media3/exoplayer/video/VideoFrameReleaseControl;->lowerFirstFrameState(I)V

    .line 440
    iput-wide v0, p0, Landroidx/media3/exoplayer/video/VideoFrameReleaseControl;->joiningDeadlineMs:J

    .line 441
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/media3/exoplayer/video/VideoFrameReleaseControl;->frameReadyWithoutSurface:Z

    .line 442
    return-void
.end method

.method public setChangeFrameRateStrategy(I)V
    .locals 1
    .param p1, "changeFrameRateStrategy"    # I

    .line 452
    iget-object v0, p0, Landroidx/media3/exoplayer/video/VideoFrameReleaseControl;->frameReleaseHelper:Landroidx/media3/exoplayer/video/VideoFrameReleaseHelper;

    invoke-virtual {v0, p1}, Landroidx/media3/exoplayer/video/VideoFrameReleaseHelper;->setChangeFrameRateStrategy(I)V

    .line 453
    return-void
.end method

.method public setClock(Landroidx/media3/common/util/Clock;)V
    .locals 0
    .param p1, "clock"    # Landroidx/media3/common/util/Clock;

    .line 289
    iput-object p1, p0, Landroidx/media3/exoplayer/video/VideoFrameReleaseControl;->clock:Landroidx/media3/common/util/Clock;

    .line 290
    return-void
.end method

.method public setFrameRate(F)V
    .locals 1
    .param p1, "frameRate"    # F

    .line 263
    iget-object v0, p0, Landroidx/media3/exoplayer/video/VideoFrameReleaseControl;->frameReleaseHelper:Landroidx/media3/exoplayer/video/VideoFrameReleaseHelper;

    invoke-virtual {v0, p1}, Landroidx/media3/exoplayer/video/VideoFrameReleaseHelper;->onFormatChanged(F)V

    .line 264
    return-void
.end method

.method public setOutputSurface(Landroid/view/Surface;)V
    .locals 3
    .param p1, "outputSurface"    # Landroid/view/Surface;

    .line 255
    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    move v2, v0

    goto :goto_0

    :cond_0
    move v2, v1

    :goto_0
    iput-boolean v2, p0, Landroidx/media3/exoplayer/video/VideoFrameReleaseControl;->hasOutputSurface:Z

    .line 256
    iput-boolean v1, p0, Landroidx/media3/exoplayer/video/VideoFrameReleaseControl;->frameReadyWithoutSurface:Z

    .line 257
    iget-object v1, p0, Landroidx/media3/exoplayer/video/VideoFrameReleaseControl;->frameReleaseHelper:Landroidx/media3/exoplayer/video/VideoFrameReleaseHelper;

    invoke-virtual {v1, p1}, Landroidx/media3/exoplayer/video/VideoFrameReleaseHelper;->onSurfaceChanged(Landroid/view/Surface;)V

    .line 258
    invoke-direct {p0, v0}, Landroidx/media3/exoplayer/video/VideoFrameReleaseControl;->lowerFirstFrameState(I)V

    .line 259
    return-void
.end method

.method public setPlaybackSpeed(F)V
    .locals 1
    .param p1, "speed"    # F

    .line 457
    const/4 v0, 0x0

    cmpl-float v0, p1, v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    .line 458
    iget v0, p0, Landroidx/media3/exoplayer/video/VideoFrameReleaseControl;->playbackSpeed:F

    cmpl-float v0, p1, v0

    if-nez v0, :cond_1

    .line 459
    return-void

    .line 461
    :cond_1
    iput p1, p0, Landroidx/media3/exoplayer/video/VideoFrameReleaseControl;->playbackSpeed:F

    .line 462
    iget-object v0, p0, Landroidx/media3/exoplayer/video/VideoFrameReleaseControl;->frameReleaseHelper:Landroidx/media3/exoplayer/video/VideoFrameReleaseHelper;

    invoke-virtual {v0, p1}, Landroidx/media3/exoplayer/video/VideoFrameReleaseHelper;->onPlaybackSpeed(F)V

    .line 463
    return-void
.end method

.method public setRequiresOutputSurface(Z)V
    .locals 0
    .param p1, "requiresOutputSurface"    # Z

    .line 272
    iput-boolean p1, p0, Landroidx/media3/exoplayer/video/VideoFrameReleaseControl;->requiresOutputSurface:Z

    .line 273
    return-void
.end method
