.class final Landroidx/media3/exoplayer/audio/AudioTimestampPoller;
.super Ljava/lang/Object;
.source "AudioTimestampPoller.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media3/exoplayer/audio/AudioTimestampPoller$AudioTimestampWrapper;
    }
.end annotation


# static fields
.field private static final ERROR_POLL_INTERVAL_US:I = 0x7a120

.field private static final FAST_POLL_INTERVAL_US:I = 0x2710

.field private static final INITIALIZING_DURATION_US:I = 0x7a120

.field private static final MAX_AUDIO_TIMESTAMP_OFFSET_US:J = 0x4c4b40L

.field private static final MAX_POSITION_DRIFT_ADVANCING_TIMESTAMP_US:J = 0x3e8L

.field private static final SLOW_POLL_INTERVAL_US:I = 0x989680

.field private static final STATE_ERROR:I = 0x4

.field private static final STATE_INITIALIZING:I = 0x0

.field private static final STATE_NO_TIMESTAMP:I = 0x3

.field private static final STATE_TIMESTAMP:I = 0x1

.field private static final STATE_TIMESTAMP_ADVANCING:I = 0x2

.field private static final WAIT_FOR_ADVANCE_DURATION_US:I = 0x1e8480


# instance fields
.field private final audioTimestamp:Landroidx/media3/exoplayer/audio/AudioTimestampPoller$AudioTimestampWrapper;

.field private final errorListener:Landroidx/media3/exoplayer/audio/AudioTrackPositionTracker$Listener;

.field private initialTimestampPositionFrames:J

.field private initialTimestampSystemTimeUs:J

.field private initializeSystemTimeUs:J

.field private lastTimestampSampleTimeUs:J

.field private sampleIntervalUs:J

.field private final sampleRate:I

.field private state:I


# direct methods
.method public constructor <init>(Landroid/media/AudioTrack;Landroidx/media3/exoplayer/audio/AudioTrackPositionTracker$Listener;)V
    .locals 1
    .param p1, "audioTrack"    # Landroid/media/AudioTrack;
    .param p2, "errorListener"    # Landroidx/media3/exoplayer/audio/AudioTrackPositionTracker$Listener;

    .line 128
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 129
    new-instance v0, Landroidx/media3/exoplayer/audio/AudioTimestampPoller$AudioTimestampWrapper;

    invoke-direct {v0, p1}, Landroidx/media3/exoplayer/audio/AudioTimestampPoller$AudioTimestampWrapper;-><init>(Landroid/media/AudioTrack;)V

    iput-object v0, p0, Landroidx/media3/exoplayer/audio/AudioTimestampPoller;->audioTimestamp:Landroidx/media3/exoplayer/audio/AudioTimestampPoller$AudioTimestampWrapper;

    .line 130
    invoke-virtual {p1}, Landroid/media/AudioTrack;->getSampleRate()I

    move-result v0

    iput v0, p0, Landroidx/media3/exoplayer/audio/AudioTimestampPoller;->sampleRate:I

    .line 131
    iput-object p2, p0, Landroidx/media3/exoplayer/audio/AudioTimestampPoller;->errorListener:Landroidx/media3/exoplayer/audio/AudioTrackPositionTracker$Listener;

    .line 132
    invoke-virtual {p0}, Landroidx/media3/exoplayer/audio/AudioTimestampPoller;->reset()V

    .line 133
    return-void
.end method

.method private checkTimestampIsPlausibleAndUpdateErrorState(JFJ)V
    .locals 13
    .param p1, "systemTimeUs"    # J
    .param p3, "audioTrackPlaybackSpeed"    # F
    .param p4, "playbackHeadPositionEstimateUs"    # J

    .line 323
    iget-object v0, p0, Landroidx/media3/exoplayer/audio/AudioTimestampPoller;->audioTimestamp:Landroidx/media3/exoplayer/audio/AudioTimestampPoller$AudioTimestampWrapper;

    invoke-virtual {v0}, Landroidx/media3/exoplayer/audio/AudioTimestampPoller$AudioTimestampWrapper;->getTimestampSystemTimeUs()J

    move-result-wide v4

    .line 324
    .local v4, "timestampSystemTimeUs":J
    invoke-direct/range {p0 .. p3}, Landroidx/media3/exoplayer/audio/AudioTimestampPoller;->computeTimestampPositionUs(JF)J

    move-result-wide v10

    .line 325
    .local v10, "timestampPositionUs":J
    sub-long v0, v4, p1

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(J)J

    move-result-wide v0

    const-wide/32 v2, 0x4c4b40

    cmp-long v0, v0, v2

    const/4 v12, 0x4

    if-lez v0, :cond_0

    .line 326
    iget-object v1, p0, Landroidx/media3/exoplayer/audio/AudioTimestampPoller;->errorListener:Landroidx/media3/exoplayer/audio/AudioTrackPositionTracker$Listener;

    iget-object v0, p0, Landroidx/media3/exoplayer/audio/AudioTimestampPoller;->audioTimestamp:Landroidx/media3/exoplayer/audio/AudioTimestampPoller$AudioTimestampWrapper;

    .line 327
    invoke-virtual {v0}, Landroidx/media3/exoplayer/audio/AudioTimestampPoller$AudioTimestampWrapper;->getTimestampPositionFrames()J

    move-result-wide v2

    .line 326
    move-wide v6, p1

    move-wide/from16 v8, p4

    invoke-interface/range {v1 .. v9}, Landroidx/media3/exoplayer/audio/AudioTrackPositionTracker$Listener;->onSystemTimeUsMismatch(JJJJ)V

    .line 331
    invoke-direct {p0, v12}, Landroidx/media3/exoplayer/audio/AudioTimestampPoller;->updateState(I)V

    goto :goto_0

    .line 332
    :cond_0
    sub-long v0, v10, p4

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(J)J

    move-result-wide v0

    cmp-long v0, v0, v2

    if-lez v0, :cond_1

    .line 334
    iget-object v1, p0, Landroidx/media3/exoplayer/audio/AudioTimestampPoller;->errorListener:Landroidx/media3/exoplayer/audio/AudioTrackPositionTracker$Listener;

    iget-object v0, p0, Landroidx/media3/exoplayer/audio/AudioTimestampPoller;->audioTimestamp:Landroidx/media3/exoplayer/audio/AudioTimestampPoller$AudioTimestampWrapper;

    .line 335
    invoke-virtual {v0}, Landroidx/media3/exoplayer/audio/AudioTimestampPoller$AudioTimestampWrapper;->getTimestampPositionFrames()J

    move-result-wide v2

    .line 334
    move-wide v6, p1

    move-wide/from16 v8, p4

    invoke-interface/range {v1 .. v9}, Landroidx/media3/exoplayer/audio/AudioTrackPositionTracker$Listener;->onPositionFramesMismatch(JJJJ)V

    .line 339
    invoke-direct {p0, v12}, Landroidx/media3/exoplayer/audio/AudioTimestampPoller;->updateState(I)V

    goto :goto_0

    .line 340
    :cond_1
    iget v0, p0, Landroidx/media3/exoplayer/audio/AudioTimestampPoller;->state:I

    if-ne v0, v12, :cond_2

    .line 341
    invoke-virtual {p0}, Landroidx/media3/exoplayer/audio/AudioTimestampPoller;->reset()V

    .line 343
    :cond_2
    :goto_0
    return-void
.end method

.method private computeTimestampPositionUs(JF)J
    .locals 9
    .param p1, "systemTimeUs"    # J
    .param p3, "audioTrackPlaybackSpeed"    # F

    .line 302
    iget-object v0, p0, Landroidx/media3/exoplayer/audio/AudioTimestampPoller;->audioTimestamp:Landroidx/media3/exoplayer/audio/AudioTimestampPoller$AudioTimestampWrapper;

    .line 303
    invoke-virtual {v0}, Landroidx/media3/exoplayer/audio/AudioTimestampPoller$AudioTimestampWrapper;->getTimestampPositionFrames()J

    move-result-wide v2

    iget-object v0, p0, Landroidx/media3/exoplayer/audio/AudioTimestampPoller;->audioTimestamp:Landroidx/media3/exoplayer/audio/AudioTimestampPoller$AudioTimestampWrapper;

    .line 304
    invoke-virtual {v0}, Landroidx/media3/exoplayer/audio/AudioTimestampPoller$AudioTimestampWrapper;->getTimestampSystemTimeUs()J

    move-result-wide v4

    .line 302
    move-object v1, p0

    move-wide v6, p1

    move v8, p3

    .end local p1    # "systemTimeUs":J
    .end local p3    # "audioTrackPlaybackSpeed":F
    .local v6, "systemTimeUs":J
    .local v8, "audioTrackPlaybackSpeed":F
    invoke-direct/range {v1 .. v8}, Landroidx/media3/exoplayer/audio/AudioTimestampPoller;->computeTimestampPositionUs(JJJF)J

    move-result-wide p1

    return-wide p1
.end method

.method private computeTimestampPositionUs(JJJF)J
    .locals 6
    .param p1, "timestampPositionFrames"    # J
    .param p3, "timestampSystemTimeUs"    # J
    .param p5, "systemTimeUs"    # J
    .param p7, "audioTrackPlaybackSpeed"    # F

    .line 314
    iget v0, p0, Landroidx/media3/exoplayer/audio/AudioTimestampPoller;->sampleRate:I

    invoke-static {p1, p2, v0}, Landroidx/media3/common/util/Util;->sampleCountToDurationUs(JI)J

    move-result-wide v0

    .line 315
    .local v0, "timestampPositionUs":J
    sub-long v2, p5, p3

    .line 316
    .local v2, "elapsedSinceTimestampUs":J
    nop

    .line 317
    invoke-static {v2, v3, p7}, Landroidx/media3/common/util/Util;->getMediaDurationForPlayoutDuration(JF)J

    move-result-wide v2

    .line 318
    add-long v4, v0, v2

    return-wide v4
.end method

.method private isTimestampAdvancingFromInitialTimestamp(JF)Z
    .locals 12
    .param p1, "systemTimeUs"    # J
    .param p3, "audioTrackPlaybackSpeed"    # F

    .line 284
    iget-object v0, p0, Landroidx/media3/exoplayer/audio/AudioTimestampPoller;->audioTimestamp:Landroidx/media3/exoplayer/audio/AudioTimestampPoller$AudioTimestampWrapper;

    invoke-virtual {v0}, Landroidx/media3/exoplayer/audio/AudioTimestampPoller$AudioTimestampWrapper;->getTimestampPositionFrames()J

    move-result-wide v0

    iget-wide v2, p0, Landroidx/media3/exoplayer/audio/AudioTimestampPoller;->initialTimestampPositionFrames:J

    cmp-long v0, v0, v2

    const/4 v1, 0x0

    if-gtz v0, :cond_0

    .line 286
    return v1

    .line 288
    :cond_0
    iget-wide v3, p0, Landroidx/media3/exoplayer/audio/AudioTimestampPoller;->initialTimestampPositionFrames:J

    iget-wide v5, p0, Landroidx/media3/exoplayer/audio/AudioTimestampPoller;->initialTimestampSystemTimeUs:J

    .line 289
    move-object v2, p0

    move-wide v7, p1

    move v9, p3

    .end local p1    # "systemTimeUs":J
    .end local p3    # "audioTrackPlaybackSpeed":F
    .local v7, "systemTimeUs":J
    .local v9, "audioTrackPlaybackSpeed":F
    invoke-direct/range {v2 .. v9}, Landroidx/media3/exoplayer/audio/AudioTimestampPoller;->computeTimestampPositionUs(JJJF)J

    move-result-wide p1

    .line 294
    .local p1, "positionEstimateUsingInitialTimestampUs":J
    nop

    .line 295
    invoke-direct {p0, v7, v8, v9}, Landroidx/media3/exoplayer/audio/AudioTimestampPoller;->computeTimestampPositionUs(JF)J

    move-result-wide v2

    .line 296
    .local v2, "positionEstimateUsingCurrentTimestampUs":J
    sub-long v4, v2, p1

    .line 297
    invoke-static {v4, v5}, Ljava/lang/Math;->abs(J)J

    move-result-wide v4

    .line 298
    .local v4, "positionDriftUs":J
    const-wide/16 v10, 0x3e8

    cmp-long p3, v4, v10

    if-gez p3, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method private updateState(I)V
    .locals 6
    .param p1, "state"    # I

    .line 257
    iput p1, p0, Landroidx/media3/exoplayer/audio/AudioTimestampPoller;->state:I

    .line 258
    const-wide/16 v0, 0x2710

    packed-switch p1, :pswitch_data_0

    .line 278
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 275
    :pswitch_0
    const-wide/32 v0, 0x7a120

    iput-wide v0, p0, Landroidx/media3/exoplayer/audio/AudioTimestampPoller;->sampleIntervalUs:J

    .line 276
    goto :goto_0

    .line 272
    :pswitch_1
    const-wide/32 v0, 0x989680

    iput-wide v0, p0, Landroidx/media3/exoplayer/audio/AudioTimestampPoller;->sampleIntervalUs:J

    .line 273
    goto :goto_0

    .line 268
    :pswitch_2
    iput-wide v0, p0, Landroidx/media3/exoplayer/audio/AudioTimestampPoller;->sampleIntervalUs:J

    .line 269
    goto :goto_0

    .line 261
    :pswitch_3
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Landroidx/media3/exoplayer/audio/AudioTimestampPoller;->lastTimestampSampleTimeUs:J

    .line 262
    const-wide/16 v2, -0x1

    iput-wide v2, p0, Landroidx/media3/exoplayer/audio/AudioTimestampPoller;->initialTimestampPositionFrames:J

    .line 263
    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v2, p0, Landroidx/media3/exoplayer/audio/AudioTimestampPoller;->initialTimestampSystemTimeUs:J

    .line 264
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    iput-wide v2, p0, Landroidx/media3/exoplayer/audio/AudioTimestampPoller;->initializeSystemTimeUs:J

    .line 265
    iput-wide v0, p0, Landroidx/media3/exoplayer/audio/AudioTimestampPoller;->sampleIntervalUs:J

    .line 266
    nop

    .line 280
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public expectTimestampFramePositionReset()V
    .locals 1

    .line 253
    iget-object v0, p0, Landroidx/media3/exoplayer/audio/AudioTimestampPoller;->audioTimestamp:Landroidx/media3/exoplayer/audio/AudioTimestampPoller$AudioTimestampWrapper;

    invoke-virtual {v0}, Landroidx/media3/exoplayer/audio/AudioTimestampPoller$AudioTimestampWrapper;->expectTimestampFramePositionReset()V

    .line 254
    return-void
.end method

.method public getTimestampPositionUs(JF)J
    .locals 2
    .param p1, "systemTimeUs"    # J
    .param p3, "audioTrackPlaybackSpeed"    # F

    .line 245
    invoke-direct {p0, p1, p2, p3}, Landroidx/media3/exoplayer/audio/AudioTimestampPoller;->computeTimestampPositionUs(JF)J

    move-result-wide v0

    return-wide v0
.end method

.method public hasAdvancingTimestamp()Z
    .locals 2

    .line 220
    iget v0, p0, Landroidx/media3/exoplayer/audio/AudioTimestampPoller;->state:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isWaitingForAdvancingTimestamp()Z
    .locals 2

    .line 229
    iget v0, p0, Landroidx/media3/exoplayer/audio/AudioTimestampPoller;->state:I

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    iget v0, p0, Landroidx/media3/exoplayer/audio/AudioTimestampPoller;->state:I

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :cond_1
    :goto_0
    return v1
.end method

.method public maybePollTimestamp(JFJZ)V
    .locals 8
    .param p1, "systemTimeUs"    # J
    .param p3, "audioTrackPlaybackSpeed"    # F
    .param p4, "playbackHeadPositionEstimateUs"    # J
    .param p6, "forceUpdate"    # Z

    .line 152
    if-nez p6, :cond_0

    iget-wide v0, p0, Landroidx/media3/exoplayer/audio/AudioTimestampPoller;->lastTimestampSampleTimeUs:J

    sub-long v0, p1, v0

    iget-wide v2, p0, Landroidx/media3/exoplayer/audio/AudioTimestampPoller;->sampleIntervalUs:J

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    .line 153
    return-void

    .line 155
    :cond_0
    iput-wide p1, p0, Landroidx/media3/exoplayer/audio/AudioTimestampPoller;->lastTimestampSampleTimeUs:J

    .line 156
    iget-object v0, p0, Landroidx/media3/exoplayer/audio/AudioTimestampPoller;->audioTimestamp:Landroidx/media3/exoplayer/audio/AudioTimestampPoller$AudioTimestampWrapper;

    invoke-virtual {v0}, Landroidx/media3/exoplayer/audio/AudioTimestampPoller$AudioTimestampWrapper;->maybeUpdateTimestamp()Z

    move-result v0

    .line 157
    .local v0, "updatedTimestamp":Z
    if-eqz v0, :cond_1

    .line 158
    invoke-direct/range {p0 .. p5}, Landroidx/media3/exoplayer/audio/AudioTimestampPoller;->checkTimestampIsPlausibleAndUpdateErrorState(JFJ)V

    move-wide v1, p4

    move p4, p3

    move-wide p2, p1

    move-object p1, p0

    .end local p1    # "systemTimeUs":J
    .end local p3    # "audioTrackPlaybackSpeed":F
    .local v1, "playbackHeadPositionEstimateUs":J
    .local p2, "systemTimeUs":J
    .local p4, "audioTrackPlaybackSpeed":F
    goto :goto_0

    .line 157
    .end local v1    # "playbackHeadPositionEstimateUs":J
    .end local p2    # "systemTimeUs":J
    .restart local p1    # "systemTimeUs":J
    .restart local p3    # "audioTrackPlaybackSpeed":F
    .local p4, "playbackHeadPositionEstimateUs":J
    :cond_1
    move-wide v1, p4

    move p4, p3

    move-wide p2, p1

    move-object p1, p0

    .line 161
    .end local p1    # "systemTimeUs":J
    .end local p3    # "audioTrackPlaybackSpeed":F
    .restart local v1    # "playbackHeadPositionEstimateUs":J
    .restart local p2    # "systemTimeUs":J
    .local p4, "audioTrackPlaybackSpeed":F
    :goto_0
    iget p5, p1, Landroidx/media3/exoplayer/audio/AudioTimestampPoller;->state:I

    const/4 v3, 0x3

    packed-switch p5, :pswitch_data_0

    .line 211
    new-instance p5, Ljava/lang/IllegalStateException;

    invoke-direct {p5}, Ljava/lang/IllegalStateException;-><init>()V

    throw p5

    .line 209
    :pswitch_0
    goto/16 :goto_1

    .line 202
    :pswitch_1
    if-eqz v0, :cond_6

    .line 204
    invoke-virtual {p0}, Landroidx/media3/exoplayer/audio/AudioTimestampPoller;->reset()V

    goto :goto_1

    .line 196
    :pswitch_2
    if-nez v0, :cond_6

    .line 198
    invoke-virtual {p0}, Landroidx/media3/exoplayer/audio/AudioTimestampPoller;->reset()V

    goto :goto_1

    .line 179
    :pswitch_3
    if-eqz v0, :cond_4

    .line 180
    invoke-direct {p0, p2, p3, p4}, Landroidx/media3/exoplayer/audio/AudioTimestampPoller;->isTimestampAdvancingFromInitialTimestamp(JF)Z

    move-result p5

    if-eqz p5, :cond_2

    .line 181
    const/4 p5, 0x2

    invoke-direct {p0, p5}, Landroidx/media3/exoplayer/audio/AudioTimestampPoller;->updateState(I)V

    goto :goto_1

    .line 182
    :cond_2
    iget-wide v4, p1, Landroidx/media3/exoplayer/audio/AudioTimestampPoller;->initializeSystemTimeUs:J

    sub-long v4, p2, v4

    const-wide/32 v6, 0x1e8480

    cmp-long p5, v4, v6

    if-lez p5, :cond_3

    .line 185
    invoke-direct {p0, v3}, Landroidx/media3/exoplayer/audio/AudioTimestampPoller;->updateState(I)V

    goto :goto_1

    .line 188
    :cond_3
    iget-object p5, p1, Landroidx/media3/exoplayer/audio/AudioTimestampPoller;->audioTimestamp:Landroidx/media3/exoplayer/audio/AudioTimestampPoller$AudioTimestampWrapper;

    invoke-virtual {p5}, Landroidx/media3/exoplayer/audio/AudioTimestampPoller$AudioTimestampWrapper;->getTimestampPositionFrames()J

    move-result-wide v3

    iput-wide v3, p1, Landroidx/media3/exoplayer/audio/AudioTimestampPoller;->initialTimestampPositionFrames:J

    .line 189
    iget-object p5, p1, Landroidx/media3/exoplayer/audio/AudioTimestampPoller;->audioTimestamp:Landroidx/media3/exoplayer/audio/AudioTimestampPoller$AudioTimestampWrapper;

    invoke-virtual {p5}, Landroidx/media3/exoplayer/audio/AudioTimestampPoller$AudioTimestampWrapper;->getTimestampSystemTimeUs()J

    move-result-wide v3

    iput-wide v3, p1, Landroidx/media3/exoplayer/audio/AudioTimestampPoller;->initialTimestampSystemTimeUs:J

    goto :goto_1

    .line 192
    :cond_4
    invoke-virtual {p0}, Landroidx/media3/exoplayer/audio/AudioTimestampPoller;->reset()V

    .line 194
    goto :goto_1

    .line 163
    :pswitch_4
    if-eqz v0, :cond_5

    .line 164
    iget-object p5, p1, Landroidx/media3/exoplayer/audio/AudioTimestampPoller;->audioTimestamp:Landroidx/media3/exoplayer/audio/AudioTimestampPoller$AudioTimestampWrapper;

    invoke-virtual {p5}, Landroidx/media3/exoplayer/audio/AudioTimestampPoller$AudioTimestampWrapper;->getTimestampSystemTimeUs()J

    move-result-wide v3

    iget-wide v5, p1, Landroidx/media3/exoplayer/audio/AudioTimestampPoller;->initializeSystemTimeUs:J

    cmp-long p5, v3, v5

    if-ltz p5, :cond_6

    .line 166
    iget-object p5, p1, Landroidx/media3/exoplayer/audio/AudioTimestampPoller;->audioTimestamp:Landroidx/media3/exoplayer/audio/AudioTimestampPoller$AudioTimestampWrapper;

    invoke-virtual {p5}, Landroidx/media3/exoplayer/audio/AudioTimestampPoller$AudioTimestampWrapper;->getTimestampPositionFrames()J

    move-result-wide v3

    iput-wide v3, p1, Landroidx/media3/exoplayer/audio/AudioTimestampPoller;->initialTimestampPositionFrames:J

    .line 167
    iget-object p5, p1, Landroidx/media3/exoplayer/audio/AudioTimestampPoller;->audioTimestamp:Landroidx/media3/exoplayer/audio/AudioTimestampPoller$AudioTimestampWrapper;

    invoke-virtual {p5}, Landroidx/media3/exoplayer/audio/AudioTimestampPoller$AudioTimestampWrapper;->getTimestampSystemTimeUs()J

    move-result-wide v3

    iput-wide v3, p1, Landroidx/media3/exoplayer/audio/AudioTimestampPoller;->initialTimestampSystemTimeUs:J

    .line 168
    const/4 p5, 0x1

    invoke-direct {p0, p5}, Landroidx/media3/exoplayer/audio/AudioTimestampPoller;->updateState(I)V

    goto :goto_1

    .line 170
    :cond_5
    iget-wide v4, p1, Landroidx/media3/exoplayer/audio/AudioTimestampPoller;->initializeSystemTimeUs:J

    sub-long v4, p2, v4

    const-wide/32 v6, 0x7a120

    cmp-long p5, v4, v6

    if-lez p5, :cond_6

    .line 175
    invoke-direct {p0, v3}, Landroidx/media3/exoplayer/audio/AudioTimestampPoller;->updateState(I)V

    .line 213
    :cond_6
    :goto_1
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public reset()V
    .locals 1

    .line 234
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroidx/media3/exoplayer/audio/AudioTimestampPoller;->updateState(I)V

    .line 235
    return-void
.end method
