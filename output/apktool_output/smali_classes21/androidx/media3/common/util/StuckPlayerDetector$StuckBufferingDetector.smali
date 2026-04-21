.class final Landroidx/media3/common/util/StuckPlayerDetector$StuckBufferingDetector;
.super Ljava/lang/Object;
.source "StuckPlayerDetector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media3/common/util/StuckPlayerDetector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "StuckBufferingDetector"
.end annotation


# instance fields
.field private adGroupIndex:I

.field private adIndexInAdGroup:I

.field private bufferedDurationInOtherPeriodsMs:J

.field private bufferedPositionInPeriodMs:J

.field private isBuffering:Z

.field private periodUid:Ljava/lang/Object;

.field private startRealtimeMs:J

.field private final stuckBufferingTimeoutMs:I

.field final synthetic this$0:Landroidx/media3/common/util/StuckPlayerDetector;


# direct methods
.method public constructor <init>(Landroidx/media3/common/util/StuckPlayerDetector;I)V
    .locals 0
    .param p2, "stuckBufferingTimeoutMs"    # I
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

    .line 155
    iput-object p1, p0, Landroidx/media3/common/util/StuckPlayerDetector$StuckBufferingDetector;->this$0:Landroidx/media3/common/util/StuckPlayerDetector;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 156
    iput p2, p0, Landroidx/media3/common/util/StuckPlayerDetector$StuckBufferingDetector;->stuckBufferingTimeoutMs:I

    .line 157
    return-void
.end method


# virtual methods
.method public update()V
    .locals 18

    .line 160
    move-object/from16 v0, p0

    iget-object v1, v0, Landroidx/media3/common/util/StuckPlayerDetector$StuckBufferingDetector;->this$0:Landroidx/media3/common/util/StuckPlayerDetector;

    invoke-static {v1}, Landroidx/media3/common/util/StuckPlayerDetector;->access$100(Landroidx/media3/common/util/StuckPlayerDetector;)Landroidx/media3/common/Player;

    move-result-object v1

    invoke-interface {v1}, Landroidx/media3/common/Player;->getPlaybackState()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_6

    iget-object v1, v0, Landroidx/media3/common/util/StuckPlayerDetector$StuckBufferingDetector;->this$0:Landroidx/media3/common/util/StuckPlayerDetector;

    .line 161
    invoke-static {v1}, Landroidx/media3/common/util/StuckPlayerDetector;->access$100(Landroidx/media3/common/util/StuckPlayerDetector;)Landroidx/media3/common/Player;

    move-result-object v1

    invoke-interface {v1}, Landroidx/media3/common/Player;->getPlayWhenReady()Z

    move-result v1

    if-eqz v1, :cond_6

    iget-object v1, v0, Landroidx/media3/common/util/StuckPlayerDetector$StuckBufferingDetector;->this$0:Landroidx/media3/common/util/StuckPlayerDetector;

    .line 162
    invoke-static {v1}, Landroidx/media3/common/util/StuckPlayerDetector;->access$100(Landroidx/media3/common/util/StuckPlayerDetector;)Landroidx/media3/common/Player;

    move-result-object v1

    invoke-interface {v1}, Landroidx/media3/common/Player;->getPlaybackSuppressionReason()I

    move-result v1

    if-eqz v1, :cond_0

    goto/16 :goto_3

    .line 170
    :cond_0
    iget-object v1, v0, Landroidx/media3/common/util/StuckPlayerDetector$StuckBufferingDetector;->this$0:Landroidx/media3/common/util/StuckPlayerDetector;

    invoke-static {v1}, Landroidx/media3/common/util/StuckPlayerDetector;->access$100(Landroidx/media3/common/util/StuckPlayerDetector;)Landroidx/media3/common/Player;

    move-result-object v1

    invoke-interface {v1}, Landroidx/media3/common/Player;->getCurrentTimeline()Landroidx/media3/common/Timeline;

    move-result-object v1

    .line 173
    .local v1, "timeline":Landroidx/media3/common/Timeline;
    invoke-virtual {v1}, Landroidx/media3/common/Timeline;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x0

    goto :goto_0

    :cond_1
    iget-object v2, v0, Landroidx/media3/common/util/StuckPlayerDetector$StuckBufferingDetector;->this$0:Landroidx/media3/common/util/StuckPlayerDetector;

    invoke-static {v2}, Landroidx/media3/common/util/StuckPlayerDetector;->access$100(Landroidx/media3/common/util/StuckPlayerDetector;)Landroidx/media3/common/Player;

    move-result-object v2

    invoke-interface {v2}, Landroidx/media3/common/Player;->getCurrentPeriodIndex()I

    move-result v2

    invoke-virtual {v1, v2}, Landroidx/media3/common/Timeline;->getUidOfPeriod(I)Ljava/lang/Object;

    move-result-object v2

    .line 174
    .local v2, "periodUid":Ljava/lang/Object;
    :goto_0
    iget-object v4, v0, Landroidx/media3/common/util/StuckPlayerDetector$StuckBufferingDetector;->this$0:Landroidx/media3/common/util/StuckPlayerDetector;

    invoke-static {v4}, Landroidx/media3/common/util/StuckPlayerDetector;->access$100(Landroidx/media3/common/util/StuckPlayerDetector;)Landroidx/media3/common/Player;

    move-result-object v4

    invoke-interface {v4}, Landroidx/media3/common/Player;->getCurrentAdGroupIndex()I

    move-result v4

    .line 175
    .local v4, "adGroupIndex":I
    iget-object v5, v0, Landroidx/media3/common/util/StuckPlayerDetector$StuckBufferingDetector;->this$0:Landroidx/media3/common/util/StuckPlayerDetector;

    invoke-static {v5}, Landroidx/media3/common/util/StuckPlayerDetector;->access$100(Landroidx/media3/common/util/StuckPlayerDetector;)Landroidx/media3/common/Player;

    move-result-object v5

    invoke-interface {v5}, Landroidx/media3/common/Player;->getCurrentAdIndexInAdGroup()I

    move-result v5

    .line 176
    .local v5, "adIndexInAdGroup":I
    iget-object v6, v0, Landroidx/media3/common/util/StuckPlayerDetector$StuckBufferingDetector;->this$0:Landroidx/media3/common/util/StuckPlayerDetector;

    invoke-static {v6}, Landroidx/media3/common/util/StuckPlayerDetector;->access$100(Landroidx/media3/common/util/StuckPlayerDetector;)Landroidx/media3/common/Player;

    move-result-object v6

    invoke-interface {v6}, Landroidx/media3/common/Player;->getBufferedPosition()J

    move-result-wide v6

    .line 177
    .local v6, "bufferedPositionInPeriodMs":J
    iget-object v8, v0, Landroidx/media3/common/util/StuckPlayerDetector$StuckBufferingDetector;->this$0:Landroidx/media3/common/util/StuckPlayerDetector;

    .line 178
    invoke-static {v8}, Landroidx/media3/common/util/StuckPlayerDetector;->access$100(Landroidx/media3/common/util/StuckPlayerDetector;)Landroidx/media3/common/Player;

    move-result-object v8

    invoke-interface {v8}, Landroidx/media3/common/Player;->getCurrentPosition()J

    move-result-wide v8

    sub-long v8, v6, v8

    const-wide/16 v10, 0x0

    invoke-static {v10, v11, v8, v9}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v8

    .line 179
    .local v8, "bufferedDurationInPeriodMs":J
    iget-object v12, v0, Landroidx/media3/common/util/StuckPlayerDetector$StuckBufferingDetector;->this$0:Landroidx/media3/common/util/StuckPlayerDetector;

    .line 180
    invoke-static {v12}, Landroidx/media3/common/util/StuckPlayerDetector;->access$100(Landroidx/media3/common/util/StuckPlayerDetector;)Landroidx/media3/common/Player;

    move-result-object v12

    invoke-interface {v12}, Landroidx/media3/common/Player;->getTotalBufferedDuration()J

    move-result-wide v12

    sub-long/2addr v12, v8

    invoke-static {v10, v11, v12, v13}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v10

    .line 181
    .local v10, "bufferedDurationInOtherPeriodsMs":J
    if-eqz v2, :cond_2

    const/4 v12, -0x1

    if-ne v4, v12, :cond_2

    .line 182
    iget-object v12, v0, Landroidx/media3/common/util/StuckPlayerDetector$StuckBufferingDetector;->this$0:Landroidx/media3/common/util/StuckPlayerDetector;

    .line 183
    invoke-static {v12}, Landroidx/media3/common/util/StuckPlayerDetector;->access$300(Landroidx/media3/common/util/StuckPlayerDetector;)Landroidx/media3/common/Timeline$Period;

    move-result-object v12

    invoke-virtual {v1, v2, v12}, Landroidx/media3/common/Timeline;->getPeriodByUid(Ljava/lang/Object;Landroidx/media3/common/Timeline$Period;)Landroidx/media3/common/Timeline$Period;

    move-result-object v12

    invoke-virtual {v12}, Landroidx/media3/common/Timeline$Period;->getPositionInWindowMs()J

    move-result-wide v12

    sub-long/2addr v6, v12

    .line 185
    :cond_2
    iget-object v12, v0, Landroidx/media3/common/util/StuckPlayerDetector$StuckBufferingDetector;->this$0:Landroidx/media3/common/util/StuckPlayerDetector;

    invoke-static {v12}, Landroidx/media3/common/util/StuckPlayerDetector;->access$400(Landroidx/media3/common/util/StuckPlayerDetector;)Landroidx/media3/common/util/Clock;

    move-result-object v12

    invoke-interface {v12}, Landroidx/media3/common/util/Clock;->elapsedRealtime()J

    move-result-wide v12

    .line 186
    .local v12, "nowRealtimeMs":J
    iget-boolean v14, v0, Landroidx/media3/common/util/StuckPlayerDetector$StuckBufferingDetector;->isBuffering:Z

    if-eqz v14, :cond_4

    iget-object v14, v0, Landroidx/media3/common/util/StuckPlayerDetector$StuckBufferingDetector;->periodUid:Ljava/lang/Object;

    .line 187
    invoke-static {v2, v14}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_3

    iget v14, v0, Landroidx/media3/common/util/StuckPlayerDetector$StuckBufferingDetector;->adGroupIndex:I

    if-ne v4, v14, :cond_3

    iget v14, v0, Landroidx/media3/common/util/StuckPlayerDetector$StuckBufferingDetector;->adIndexInAdGroup:I

    if-ne v5, v14, :cond_3

    iget-wide v14, v0, Landroidx/media3/common/util/StuckPlayerDetector$StuckBufferingDetector;->bufferedPositionInPeriodMs:J

    cmp-long v14, v6, v14

    if-nez v14, :cond_3

    iget-wide v14, v0, Landroidx/media3/common/util/StuckPlayerDetector$StuckBufferingDetector;->bufferedDurationInOtherPeriodsMs:J

    cmp-long v14, v10, v14

    if-nez v14, :cond_3

    .line 193
    iget-wide v14, v0, Landroidx/media3/common/util/StuckPlayerDetector$StuckBufferingDetector;->startRealtimeMs:J

    sub-long v14, v12, v14

    iget v3, v0, Landroidx/media3/common/util/StuckPlayerDetector$StuckBufferingDetector;->stuckBufferingTimeoutMs:I

    move-wide/from16 v16, v8

    .end local v8    # "bufferedDurationInPeriodMs":J
    .local v16, "bufferedDurationInPeriodMs":J
    int-to-long v8, v3

    cmp-long v3, v14, v8

    if-ltz v3, :cond_5

    .line 194
    iget-object v3, v0, Landroidx/media3/common/util/StuckPlayerDetector$StuckBufferingDetector;->this$0:Landroidx/media3/common/util/StuckPlayerDetector;

    invoke-static {v3}, Landroidx/media3/common/util/StuckPlayerDetector;->access$500(Landroidx/media3/common/util/StuckPlayerDetector;)Landroidx/media3/common/util/StuckPlayerDetector$Callback;

    move-result-object v3

    new-instance v8, Landroidx/media3/common/util/StuckPlayerException;

    iget v9, v0, Landroidx/media3/common/util/StuckPlayerDetector$StuckBufferingDetector;->stuckBufferingTimeoutMs:I

    const/4 v14, 0x1

    invoke-direct {v8, v14, v9}, Landroidx/media3/common/util/StuckPlayerException;-><init>(II)V

    invoke-interface {v3, v8}, Landroidx/media3/common/util/StuckPlayerDetector$Callback;->onStuckPlayerDetected(Landroidx/media3/common/util/StuckPlayerException;)V

    goto :goto_2

    .line 187
    .end local v16    # "bufferedDurationInPeriodMs":J
    .restart local v8    # "bufferedDurationInPeriodMs":J
    :cond_3
    move-wide/from16 v16, v8

    .end local v8    # "bufferedDurationInPeriodMs":J
    .restart local v16    # "bufferedDurationInPeriodMs":J
    goto :goto_1

    .line 186
    .end local v16    # "bufferedDurationInPeriodMs":J
    .restart local v8    # "bufferedDurationInPeriodMs":J
    :cond_4
    move-wide/from16 v16, v8

    .line 200
    .end local v8    # "bufferedDurationInPeriodMs":J
    .restart local v16    # "bufferedDurationInPeriodMs":J
    :goto_1
    const/4 v14, 0x1

    iput-boolean v14, v0, Landroidx/media3/common/util/StuckPlayerDetector$StuckBufferingDetector;->isBuffering:Z

    .line 201
    iput-wide v12, v0, Landroidx/media3/common/util/StuckPlayerDetector$StuckBufferingDetector;->startRealtimeMs:J

    .line 202
    iput-object v2, v0, Landroidx/media3/common/util/StuckPlayerDetector$StuckBufferingDetector;->periodUid:Ljava/lang/Object;

    .line 203
    iput v4, v0, Landroidx/media3/common/util/StuckPlayerDetector$StuckBufferingDetector;->adGroupIndex:I

    .line 204
    iput v5, v0, Landroidx/media3/common/util/StuckPlayerDetector$StuckBufferingDetector;->adIndexInAdGroup:I

    .line 205
    iput-wide v6, v0, Landroidx/media3/common/util/StuckPlayerDetector$StuckBufferingDetector;->bufferedPositionInPeriodMs:J

    .line 206
    iput-wide v10, v0, Landroidx/media3/common/util/StuckPlayerDetector$StuckBufferingDetector;->bufferedDurationInOtherPeriodsMs:J

    .line 207
    iget-object v3, v0, Landroidx/media3/common/util/StuckPlayerDetector$StuckBufferingDetector;->this$0:Landroidx/media3/common/util/StuckPlayerDetector;

    invoke-static {v3}, Landroidx/media3/common/util/StuckPlayerDetector;->access$200(Landroidx/media3/common/util/StuckPlayerDetector;)Landroidx/media3/common/util/HandlerWrapper;

    move-result-object v3

    const/4 v14, 0x1

    invoke-interface {v3, v14}, Landroidx/media3/common/util/HandlerWrapper;->removeMessages(I)V

    .line 208
    iget-object v3, v0, Landroidx/media3/common/util/StuckPlayerDetector$StuckBufferingDetector;->this$0:Landroidx/media3/common/util/StuckPlayerDetector;

    invoke-static {v3}, Landroidx/media3/common/util/StuckPlayerDetector;->access$200(Landroidx/media3/common/util/StuckPlayerDetector;)Landroidx/media3/common/util/HandlerWrapper;

    move-result-object v3

    iget v8, v0, Landroidx/media3/common/util/StuckPlayerDetector$StuckBufferingDetector;->stuckBufferingTimeoutMs:I

    invoke-interface {v3, v14, v8}, Landroidx/media3/common/util/HandlerWrapper;->sendEmptyMessageDelayed(II)Z

    .line 210
    :cond_5
    :goto_2
    return-void

    .line 164
    .end local v1    # "timeline":Landroidx/media3/common/Timeline;
    .end local v2    # "periodUid":Ljava/lang/Object;
    .end local v4    # "adGroupIndex":I
    .end local v5    # "adIndexInAdGroup":I
    .end local v6    # "bufferedPositionInPeriodMs":J
    .end local v10    # "bufferedDurationInOtherPeriodsMs":J
    .end local v12    # "nowRealtimeMs":J
    .end local v16    # "bufferedDurationInPeriodMs":J
    :cond_6
    :goto_3
    iget-boolean v1, v0, Landroidx/media3/common/util/StuckPlayerDetector$StuckBufferingDetector;->isBuffering:Z

    if-eqz v1, :cond_7

    .line 165
    iget-object v1, v0, Landroidx/media3/common/util/StuckPlayerDetector$StuckBufferingDetector;->this$0:Landroidx/media3/common/util/StuckPlayerDetector;

    invoke-static {v1}, Landroidx/media3/common/util/StuckPlayerDetector;->access$200(Landroidx/media3/common/util/StuckPlayerDetector;)Landroidx/media3/common/util/HandlerWrapper;

    move-result-object v1

    const/4 v14, 0x1

    invoke-interface {v1, v14}, Landroidx/media3/common/util/HandlerWrapper;->removeMessages(I)V

    .line 167
    :cond_7
    const/4 v1, 0x0

    iput-boolean v1, v0, Landroidx/media3/common/util/StuckPlayerDetector$StuckBufferingDetector;->isBuffering:Z

    .line 168
    return-void
.end method
