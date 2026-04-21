.class final Landroidx/media3/common/util/StuckPlayerDetector$StuckPlayingNotEndingDetector;
.super Ljava/lang/Object;
.source "StuckPlayerDetector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media3/common/util/StuckPlayerDetector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "StuckPlayingNotEndingDetector"
.end annotation


# instance fields
.field private adGroupIndex:I

.field private adIndexInAdGroup:I

.field private isPlayingAndReachedDuration:Z

.field private periodUid:Ljava/lang/Object;

.field private startRealtimeMs:J

.field private final stuckPlayingNotEndingTimeoutMs:I

.field final synthetic this$0:Landroidx/media3/common/util/StuckPlayerDetector;


# direct methods
.method public constructor <init>(Landroidx/media3/common/util/StuckPlayerDetector;I)V
    .locals 0
    .param p2, "stuckPlayingNotEndingTimeoutMs"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x0
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 284
    iput-object p1, p0, Landroidx/media3/common/util/StuckPlayerDetector$StuckPlayingNotEndingDetector;->this$0:Landroidx/media3/common/util/StuckPlayerDetector;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 285
    iput p2, p0, Landroidx/media3/common/util/StuckPlayerDetector$StuckPlayingNotEndingDetector;->stuckPlayingNotEndingTimeoutMs:I

    .line 286
    return-void
.end method


# virtual methods
.method public update()V
    .locals 18

    .line 289
    move-object/from16 v0, p0

    iget-object v1, v0, Landroidx/media3/common/util/StuckPlayerDetector$StuckPlayingNotEndingDetector;->this$0:Landroidx/media3/common/util/StuckPlayerDetector;

    invoke-static {v1}, Landroidx/media3/common/util/StuckPlayerDetector;->access$100(Landroidx/media3/common/util/StuckPlayerDetector;)Landroidx/media3/common/Player;

    move-result-object v1

    invoke-interface {v1}, Landroidx/media3/common/Player;->getCurrentTimeline()Landroidx/media3/common/Timeline;

    move-result-object v1

    .line 292
    .local v1, "timeline":Landroidx/media3/common/Timeline;
    invoke-virtual {v1}, Landroidx/media3/common/Timeline;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x0

    goto :goto_0

    :cond_0
    iget-object v2, v0, Landroidx/media3/common/util/StuckPlayerDetector$StuckPlayingNotEndingDetector;->this$0:Landroidx/media3/common/util/StuckPlayerDetector;

    invoke-static {v2}, Landroidx/media3/common/util/StuckPlayerDetector;->access$100(Landroidx/media3/common/util/StuckPlayerDetector;)Landroidx/media3/common/Player;

    move-result-object v2

    invoke-interface {v2}, Landroidx/media3/common/Player;->getCurrentPeriodIndex()I

    move-result v2

    invoke-virtual {v1, v2}, Landroidx/media3/common/Timeline;->getUidOfPeriod(I)Ljava/lang/Object;

    move-result-object v2

    .line 293
    .local v2, "periodUid":Ljava/lang/Object;
    :goto_0
    iget-object v3, v0, Landroidx/media3/common/util/StuckPlayerDetector$StuckPlayingNotEndingDetector;->this$0:Landroidx/media3/common/util/StuckPlayerDetector;

    invoke-static {v3}, Landroidx/media3/common/util/StuckPlayerDetector;->access$100(Landroidx/media3/common/util/StuckPlayerDetector;)Landroidx/media3/common/Player;

    move-result-object v3

    invoke-interface {v3}, Landroidx/media3/common/Player;->getCurrentAdGroupIndex()I

    move-result v3

    .line 294
    .local v3, "adGroupIndex":I
    iget-object v4, v0, Landroidx/media3/common/util/StuckPlayerDetector$StuckPlayingNotEndingDetector;->this$0:Landroidx/media3/common/util/StuckPlayerDetector;

    invoke-static {v4}, Landroidx/media3/common/util/StuckPlayerDetector;->access$100(Landroidx/media3/common/util/StuckPlayerDetector;)Landroidx/media3/common/Player;

    move-result-object v4

    invoke-interface {v4}, Landroidx/media3/common/Player;->getCurrentAdIndexInAdGroup()I

    move-result v4

    .line 295
    .local v4, "adIndexInAdGroup":I
    iget-object v5, v0, Landroidx/media3/common/util/StuckPlayerDetector$StuckPlayingNotEndingDetector;->this$0:Landroidx/media3/common/util/StuckPlayerDetector;

    invoke-static {v5}, Landroidx/media3/common/util/StuckPlayerDetector;->access$100(Landroidx/media3/common/util/StuckPlayerDetector;)Landroidx/media3/common/Player;

    move-result-object v5

    invoke-interface {v5}, Landroidx/media3/common/Player;->getCurrentPosition()J

    move-result-wide v5

    .line 296
    .local v5, "currentPositionInPeriodOrAdMs":J
    const-wide v7, -0x7fffffffffffffffL    # -4.9E-324

    .line 297
    .local v7, "durationOfPeriodOrAdMs":J
    const/4 v9, -0x1

    if-eqz v2, :cond_1

    if-ne v3, v9, :cond_1

    .line 298
    iget-object v9, v0, Landroidx/media3/common/util/StuckPlayerDetector$StuckPlayingNotEndingDetector;->this$0:Landroidx/media3/common/util/StuckPlayerDetector;

    invoke-static {v9}, Landroidx/media3/common/util/StuckPlayerDetector;->access$300(Landroidx/media3/common/util/StuckPlayerDetector;)Landroidx/media3/common/Timeline$Period;

    move-result-object v9

    invoke-virtual {v1, v2, v9}, Landroidx/media3/common/Timeline;->getPeriodByUid(Ljava/lang/Object;Landroidx/media3/common/Timeline$Period;)Landroidx/media3/common/Timeline$Period;

    .line 299
    iget-object v9, v0, Landroidx/media3/common/util/StuckPlayerDetector$StuckPlayingNotEndingDetector;->this$0:Landroidx/media3/common/util/StuckPlayerDetector;

    invoke-static {v9}, Landroidx/media3/common/util/StuckPlayerDetector;->access$300(Landroidx/media3/common/util/StuckPlayerDetector;)Landroidx/media3/common/Timeline$Period;

    move-result-object v9

    invoke-virtual {v9}, Landroidx/media3/common/Timeline$Period;->getPositionInWindowMs()J

    move-result-wide v9

    sub-long/2addr v5, v9

    .line 300
    iget-object v9, v0, Landroidx/media3/common/util/StuckPlayerDetector$StuckPlayingNotEndingDetector;->this$0:Landroidx/media3/common/util/StuckPlayerDetector;

    invoke-static {v9}, Landroidx/media3/common/util/StuckPlayerDetector;->access$300(Landroidx/media3/common/util/StuckPlayerDetector;)Landroidx/media3/common/Timeline$Period;

    move-result-object v9

    invoke-virtual {v9}, Landroidx/media3/common/Timeline$Period;->getDurationMs()J

    move-result-wide v7

    goto :goto_1

    .line 301
    :cond_1
    if-eq v3, v9, :cond_2

    .line 302
    iget-object v9, v0, Landroidx/media3/common/util/StuckPlayerDetector$StuckPlayingNotEndingDetector;->this$0:Landroidx/media3/common/util/StuckPlayerDetector;

    invoke-static {v9}, Landroidx/media3/common/util/StuckPlayerDetector;->access$100(Landroidx/media3/common/util/StuckPlayerDetector;)Landroidx/media3/common/Player;

    move-result-object v9

    invoke-interface {v9}, Landroidx/media3/common/Player;->getDuration()J

    move-result-wide v7

    .line 304
    :cond_2
    :goto_1
    iget-object v9, v0, Landroidx/media3/common/util/StuckPlayerDetector$StuckPlayingNotEndingDetector;->this$0:Landroidx/media3/common/util/StuckPlayerDetector;

    invoke-static {v9}, Landroidx/media3/common/util/StuckPlayerDetector;->access$100(Landroidx/media3/common/util/StuckPlayerDetector;)Landroidx/media3/common/Player;

    move-result-object v9

    invoke-interface {v9}, Landroidx/media3/common/Player;->isPlaying()Z

    move-result v9

    .line 305
    .local v9, "isPlaying":Z
    const-wide v10, -0x7fffffffffffffffL    # -4.9E-324

    if-eqz v9, :cond_6

    cmp-long v13, v7, v10

    if-eqz v13, :cond_6

    cmp-long v13, v5, v7

    if-gez v13, :cond_3

    const/4 v15, 0x3

    goto :goto_3

    .line 323
    :cond_3
    iget-object v10, v0, Landroidx/media3/common/util/StuckPlayerDetector$StuckPlayingNotEndingDetector;->this$0:Landroidx/media3/common/util/StuckPlayerDetector;

    invoke-static {v10}, Landroidx/media3/common/util/StuckPlayerDetector;->access$400(Landroidx/media3/common/util/StuckPlayerDetector;)Landroidx/media3/common/util/Clock;

    move-result-object v10

    invoke-interface {v10}, Landroidx/media3/common/util/Clock;->elapsedRealtime()J

    move-result-wide v10

    .line 324
    .local v10, "nowRealtimeMs":J
    iget-boolean v13, v0, Landroidx/media3/common/util/StuckPlayerDetector$StuckPlayingNotEndingDetector;->isPlayingAndReachedDuration:Z

    if-eqz v13, :cond_4

    iget-object v13, v0, Landroidx/media3/common/util/StuckPlayerDetector$StuckPlayingNotEndingDetector;->periodUid:Ljava/lang/Object;

    .line 325
    invoke-static {v2, v13}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_4

    iget v13, v0, Landroidx/media3/common/util/StuckPlayerDetector$StuckPlayingNotEndingDetector;->adGroupIndex:I

    if-ne v3, v13, :cond_4

    iget v13, v0, Landroidx/media3/common/util/StuckPlayerDetector$StuckPlayingNotEndingDetector;->adIndexInAdGroup:I

    if-ne v4, v13, :cond_4

    .line 329
    iget-wide v13, v0, Landroidx/media3/common/util/StuckPlayerDetector$StuckPlayingNotEndingDetector;->startRealtimeMs:J

    sub-long v13, v10, v13

    iget v15, v0, Landroidx/media3/common/util/StuckPlayerDetector$StuckPlayingNotEndingDetector;->stuckPlayingNotEndingTimeoutMs:I

    move-wide/from16 v16, v13

    int-to-long v12, v15

    cmp-long v12, v16, v12

    if-ltz v12, :cond_5

    .line 330
    iget-object v12, v0, Landroidx/media3/common/util/StuckPlayerDetector$StuckPlayingNotEndingDetector;->this$0:Landroidx/media3/common/util/StuckPlayerDetector;

    invoke-static {v12}, Landroidx/media3/common/util/StuckPlayerDetector;->access$500(Landroidx/media3/common/util/StuckPlayerDetector;)Landroidx/media3/common/util/StuckPlayerDetector$Callback;

    move-result-object v12

    new-instance v13, Landroidx/media3/common/util/StuckPlayerException;

    iget v14, v0, Landroidx/media3/common/util/StuckPlayerDetector$StuckPlayingNotEndingDetector;->stuckPlayingNotEndingTimeoutMs:I

    const/4 v15, 0x3

    invoke-direct {v13, v15, v14}, Landroidx/media3/common/util/StuckPlayerException;-><init>(II)V

    invoke-interface {v12, v13}, Landroidx/media3/common/util/StuckPlayerDetector$Callback;->onStuckPlayerDetected(Landroidx/media3/common/util/StuckPlayerException;)V

    goto :goto_2

    .line 336
    :cond_4
    const/4 v12, 0x1

    iput-boolean v12, v0, Landroidx/media3/common/util/StuckPlayerDetector$StuckPlayingNotEndingDetector;->isPlayingAndReachedDuration:Z

    .line 337
    iput-wide v10, v0, Landroidx/media3/common/util/StuckPlayerDetector$StuckPlayingNotEndingDetector;->startRealtimeMs:J

    .line 338
    iput-object v2, v0, Landroidx/media3/common/util/StuckPlayerDetector$StuckPlayingNotEndingDetector;->periodUid:Ljava/lang/Object;

    .line 339
    iput v3, v0, Landroidx/media3/common/util/StuckPlayerDetector$StuckPlayingNotEndingDetector;->adGroupIndex:I

    .line 340
    iput v4, v0, Landroidx/media3/common/util/StuckPlayerDetector$StuckPlayingNotEndingDetector;->adIndexInAdGroup:I

    .line 341
    iget-object v12, v0, Landroidx/media3/common/util/StuckPlayerDetector$StuckPlayingNotEndingDetector;->this$0:Landroidx/media3/common/util/StuckPlayerDetector;

    invoke-static {v12}, Landroidx/media3/common/util/StuckPlayerDetector;->access$200(Landroidx/media3/common/util/StuckPlayerDetector;)Landroidx/media3/common/util/HandlerWrapper;

    move-result-object v12

    const/4 v15, 0x3

    invoke-interface {v12, v15}, Landroidx/media3/common/util/HandlerWrapper;->removeMessages(I)V

    .line 342
    iget-object v12, v0, Landroidx/media3/common/util/StuckPlayerDetector$StuckPlayingNotEndingDetector;->this$0:Landroidx/media3/common/util/StuckPlayerDetector;

    invoke-static {v12}, Landroidx/media3/common/util/StuckPlayerDetector;->access$200(Landroidx/media3/common/util/StuckPlayerDetector;)Landroidx/media3/common/util/HandlerWrapper;

    move-result-object v12

    iget v13, v0, Landroidx/media3/common/util/StuckPlayerDetector$StuckPlayingNotEndingDetector;->stuckPlayingNotEndingTimeoutMs:I

    invoke-interface {v12, v15, v13}, Landroidx/media3/common/util/HandlerWrapper;->sendEmptyMessageDelayed(II)Z

    .line 345
    :cond_5
    :goto_2
    return-void

    .line 305
    .end local v10    # "nowRealtimeMs":J
    :cond_6
    const/4 v15, 0x3

    .line 310
    :goto_3
    iget-object v12, v0, Landroidx/media3/common/util/StuckPlayerDetector$StuckPlayingNotEndingDetector;->this$0:Landroidx/media3/common/util/StuckPlayerDetector;

    invoke-static {v12}, Landroidx/media3/common/util/StuckPlayerDetector;->access$200(Landroidx/media3/common/util/StuckPlayerDetector;)Landroidx/media3/common/util/HandlerWrapper;

    move-result-object v12

    invoke-interface {v12, v15}, Landroidx/media3/common/util/HandlerWrapper;->removeMessages(I)V

    .line 311
    if-eqz v9, :cond_7

    cmp-long v10, v7, v10

    if-eqz v10, :cond_7

    .line 313
    sub-long v10, v7, v5

    long-to-float v10, v10

    iget-object v11, v0, Landroidx/media3/common/util/StuckPlayerDetector$StuckPlayingNotEndingDetector;->this$0:Landroidx/media3/common/util/StuckPlayerDetector;

    .line 315
    invoke-static {v11}, Landroidx/media3/common/util/StuckPlayerDetector;->access$100(Landroidx/media3/common/util/StuckPlayerDetector;)Landroidx/media3/common/Player;

    move-result-object v11

    invoke-interface {v11}, Landroidx/media3/common/Player;->getPlaybackParameters()Landroidx/media3/common/PlaybackParameters;

    move-result-object v11

    iget v11, v11, Landroidx/media3/common/PlaybackParameters;->speed:F

    div-float/2addr v10, v11

    .line 316
    .local v10, "realtimeUntilDurationReachedMs":F
    iget-object v11, v0, Landroidx/media3/common/util/StuckPlayerDetector$StuckPlayingNotEndingDetector;->this$0:Landroidx/media3/common/util/StuckPlayerDetector;

    invoke-static {v11}, Landroidx/media3/common/util/StuckPlayerDetector;->access$200(Landroidx/media3/common/util/StuckPlayerDetector;)Landroidx/media3/common/util/HandlerWrapper;

    move-result-object v11

    float-to-double v12, v10

    .line 318
    invoke-static {v12, v13}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v12

    double-to-int v12, v12

    .line 316
    const/4 v15, 0x3

    invoke-interface {v11, v15, v12}, Landroidx/media3/common/util/HandlerWrapper;->sendEmptyMessageDelayed(II)Z

    .line 320
    .end local v10    # "realtimeUntilDurationReachedMs":F
    :cond_7
    const/4 v10, 0x0

    iput-boolean v10, v0, Landroidx/media3/common/util/StuckPlayerDetector$StuckPlayingNotEndingDetector;->isPlayingAndReachedDuration:Z

    .line 321
    return-void
.end method
