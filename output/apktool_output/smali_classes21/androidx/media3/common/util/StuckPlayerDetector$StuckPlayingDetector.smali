.class final Landroidx/media3/common/util/StuckPlayerDetector$StuckPlayingDetector;
.super Ljava/lang/Object;
.source "StuckPlayerDetector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media3/common/util/StuckPlayerDetector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "StuckPlayingDetector"
.end annotation


# instance fields
.field private adGroupIndex:I

.field private adIndexInAdGroup:I

.field private currentPositionInPeriodMs:J

.field private isPlaying:Z

.field private periodUid:Ljava/lang/Object;

.field private startRealtimeMs:J

.field private final stuckPlayingTimeoutMs:I

.field final synthetic this$0:Landroidx/media3/common/util/StuckPlayerDetector;


# direct methods
.method public constructor <init>(Landroidx/media3/common/util/StuckPlayerDetector;I)V
    .locals 0
    .param p2, "stuckPlayingTimeoutMs"    # I
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

    .line 224
    iput-object p1, p0, Landroidx/media3/common/util/StuckPlayerDetector$StuckPlayingDetector;->this$0:Landroidx/media3/common/util/StuckPlayerDetector;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 225
    iput p2, p0, Landroidx/media3/common/util/StuckPlayerDetector$StuckPlayingDetector;->stuckPlayingTimeoutMs:I

    .line 226
    return-void
.end method


# virtual methods
.method public update()V
    .locals 13

    .line 229
    iget-object v0, p0, Landroidx/media3/common/util/StuckPlayerDetector$StuckPlayingDetector;->this$0:Landroidx/media3/common/util/StuckPlayerDetector;

    invoke-static {v0}, Landroidx/media3/common/util/StuckPlayerDetector;->access$100(Landroidx/media3/common/util/StuckPlayerDetector;)Landroidx/media3/common/Player;

    move-result-object v0

    invoke-interface {v0}, Landroidx/media3/common/Player;->isPlaying()Z

    move-result v0

    const/4 v1, 0x2

    if-nez v0, :cond_1

    .line 231
    iget-boolean v0, p0, Landroidx/media3/common/util/StuckPlayerDetector$StuckPlayingDetector;->isPlaying:Z

    if-eqz v0, :cond_0

    .line 232
    iget-object v0, p0, Landroidx/media3/common/util/StuckPlayerDetector$StuckPlayingDetector;->this$0:Landroidx/media3/common/util/StuckPlayerDetector;

    invoke-static {v0}, Landroidx/media3/common/util/StuckPlayerDetector;->access$200(Landroidx/media3/common/util/StuckPlayerDetector;)Landroidx/media3/common/util/HandlerWrapper;

    move-result-object v0

    invoke-interface {v0, v1}, Landroidx/media3/common/util/HandlerWrapper;->removeMessages(I)V

    .line 234
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/media3/common/util/StuckPlayerDetector$StuckPlayingDetector;->isPlaying:Z

    .line 235
    return-void

    .line 237
    :cond_1
    iget-object v0, p0, Landroidx/media3/common/util/StuckPlayerDetector$StuckPlayingDetector;->this$0:Landroidx/media3/common/util/StuckPlayerDetector;

    invoke-static {v0}, Landroidx/media3/common/util/StuckPlayerDetector;->access$100(Landroidx/media3/common/util/StuckPlayerDetector;)Landroidx/media3/common/Player;

    move-result-object v0

    invoke-interface {v0}, Landroidx/media3/common/Player;->getCurrentTimeline()Landroidx/media3/common/Timeline;

    move-result-object v0

    .line 240
    .local v0, "timeline":Landroidx/media3/common/Timeline;
    invoke-virtual {v0}, Landroidx/media3/common/Timeline;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v2, 0x0

    goto :goto_0

    :cond_2
    iget-object v2, p0, Landroidx/media3/common/util/StuckPlayerDetector$StuckPlayingDetector;->this$0:Landroidx/media3/common/util/StuckPlayerDetector;

    invoke-static {v2}, Landroidx/media3/common/util/StuckPlayerDetector;->access$100(Landroidx/media3/common/util/StuckPlayerDetector;)Landroidx/media3/common/Player;

    move-result-object v2

    invoke-interface {v2}, Landroidx/media3/common/Player;->getCurrentPeriodIndex()I

    move-result v2

    invoke-virtual {v0, v2}, Landroidx/media3/common/Timeline;->getUidOfPeriod(I)Ljava/lang/Object;

    move-result-object v2

    .line 241
    .local v2, "periodUid":Ljava/lang/Object;
    :goto_0
    iget-object v3, p0, Landroidx/media3/common/util/StuckPlayerDetector$StuckPlayingDetector;->this$0:Landroidx/media3/common/util/StuckPlayerDetector;

    invoke-static {v3}, Landroidx/media3/common/util/StuckPlayerDetector;->access$100(Landroidx/media3/common/util/StuckPlayerDetector;)Landroidx/media3/common/Player;

    move-result-object v3

    invoke-interface {v3}, Landroidx/media3/common/Player;->getCurrentAdGroupIndex()I

    move-result v3

    .line 242
    .local v3, "adGroupIndex":I
    iget-object v4, p0, Landroidx/media3/common/util/StuckPlayerDetector$StuckPlayingDetector;->this$0:Landroidx/media3/common/util/StuckPlayerDetector;

    invoke-static {v4}, Landroidx/media3/common/util/StuckPlayerDetector;->access$100(Landroidx/media3/common/util/StuckPlayerDetector;)Landroidx/media3/common/Player;

    move-result-object v4

    invoke-interface {v4}, Landroidx/media3/common/Player;->getCurrentAdIndexInAdGroup()I

    move-result v4

    .line 243
    .local v4, "adIndexInAdGroup":I
    iget-object v5, p0, Landroidx/media3/common/util/StuckPlayerDetector$StuckPlayingDetector;->this$0:Landroidx/media3/common/util/StuckPlayerDetector;

    invoke-static {v5}, Landroidx/media3/common/util/StuckPlayerDetector;->access$100(Landroidx/media3/common/util/StuckPlayerDetector;)Landroidx/media3/common/Player;

    move-result-object v5

    invoke-interface {v5}, Landroidx/media3/common/Player;->getCurrentPosition()J

    move-result-wide v5

    .line 244
    .local v5, "currentPositionInPeriodMs":J
    if-eqz v2, :cond_3

    const/4 v7, -0x1

    if-ne v3, v7, :cond_3

    .line 245
    iget-object v7, p0, Landroidx/media3/common/util/StuckPlayerDetector$StuckPlayingDetector;->this$0:Landroidx/media3/common/util/StuckPlayerDetector;

    .line 246
    invoke-static {v7}, Landroidx/media3/common/util/StuckPlayerDetector;->access$300(Landroidx/media3/common/util/StuckPlayerDetector;)Landroidx/media3/common/Timeline$Period;

    move-result-object v7

    invoke-virtual {v0, v2, v7}, Landroidx/media3/common/Timeline;->getPeriodByUid(Ljava/lang/Object;Landroidx/media3/common/Timeline$Period;)Landroidx/media3/common/Timeline$Period;

    move-result-object v7

    invoke-virtual {v7}, Landroidx/media3/common/Timeline$Period;->getPositionInWindowMs()J

    move-result-wide v7

    sub-long/2addr v5, v7

    .line 248
    :cond_3
    iget-object v7, p0, Landroidx/media3/common/util/StuckPlayerDetector$StuckPlayingDetector;->this$0:Landroidx/media3/common/util/StuckPlayerDetector;

    invoke-static {v7}, Landroidx/media3/common/util/StuckPlayerDetector;->access$400(Landroidx/media3/common/util/StuckPlayerDetector;)Landroidx/media3/common/util/Clock;

    move-result-object v7

    invoke-interface {v7}, Landroidx/media3/common/util/Clock;->elapsedRealtime()J

    move-result-wide v7

    .line 249
    .local v7, "nowRealtimeMs":J
    iget-boolean v9, p0, Landroidx/media3/common/util/StuckPlayerDetector$StuckPlayingDetector;->isPlaying:Z

    if-eqz v9, :cond_4

    iget-object v9, p0, Landroidx/media3/common/util/StuckPlayerDetector$StuckPlayingDetector;->periodUid:Ljava/lang/Object;

    .line 250
    invoke-static {v2, v9}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_4

    iget v9, p0, Landroidx/media3/common/util/StuckPlayerDetector$StuckPlayingDetector;->adGroupIndex:I

    if-ne v3, v9, :cond_4

    iget v9, p0, Landroidx/media3/common/util/StuckPlayerDetector$StuckPlayingDetector;->adIndexInAdGroup:I

    if-ne v4, v9, :cond_4

    iget-wide v9, p0, Landroidx/media3/common/util/StuckPlayerDetector$StuckPlayingDetector;->currentPositionInPeriodMs:J

    cmp-long v9, v5, v9

    if-nez v9, :cond_4

    .line 255
    iget-wide v9, p0, Landroidx/media3/common/util/StuckPlayerDetector$StuckPlayingDetector;->startRealtimeMs:J

    sub-long v9, v7, v9

    iget v11, p0, Landroidx/media3/common/util/StuckPlayerDetector$StuckPlayingDetector;->stuckPlayingTimeoutMs:I

    int-to-long v11, v11

    cmp-long v9, v9, v11

    if-ltz v9, :cond_5

    .line 256
    iget-object v9, p0, Landroidx/media3/common/util/StuckPlayerDetector$StuckPlayingDetector;->this$0:Landroidx/media3/common/util/StuckPlayerDetector;

    invoke-static {v9}, Landroidx/media3/common/util/StuckPlayerDetector;->access$500(Landroidx/media3/common/util/StuckPlayerDetector;)Landroidx/media3/common/util/StuckPlayerDetector$Callback;

    move-result-object v9

    new-instance v10, Landroidx/media3/common/util/StuckPlayerException;

    iget v11, p0, Landroidx/media3/common/util/StuckPlayerDetector$StuckPlayingDetector;->stuckPlayingTimeoutMs:I

    invoke-direct {v10, v1, v11}, Landroidx/media3/common/util/StuckPlayerException;-><init>(II)V

    invoke-interface {v9, v10}, Landroidx/media3/common/util/StuckPlayerDetector$Callback;->onStuckPlayerDetected(Landroidx/media3/common/util/StuckPlayerException;)V

    goto :goto_1

    .line 262
    :cond_4
    const/4 v9, 0x1

    iput-boolean v9, p0, Landroidx/media3/common/util/StuckPlayerDetector$StuckPlayingDetector;->isPlaying:Z

    .line 263
    iput-wide v7, p0, Landroidx/media3/common/util/StuckPlayerDetector$StuckPlayingDetector;->startRealtimeMs:J

    .line 264
    iput-object v2, p0, Landroidx/media3/common/util/StuckPlayerDetector$StuckPlayingDetector;->periodUid:Ljava/lang/Object;

    .line 265
    iput v3, p0, Landroidx/media3/common/util/StuckPlayerDetector$StuckPlayingDetector;->adGroupIndex:I

    .line 266
    iput v4, p0, Landroidx/media3/common/util/StuckPlayerDetector$StuckPlayingDetector;->adIndexInAdGroup:I

    .line 267
    iput-wide v5, p0, Landroidx/media3/common/util/StuckPlayerDetector$StuckPlayingDetector;->currentPositionInPeriodMs:J

    .line 268
    iget-object v9, p0, Landroidx/media3/common/util/StuckPlayerDetector$StuckPlayingDetector;->this$0:Landroidx/media3/common/util/StuckPlayerDetector;

    invoke-static {v9}, Landroidx/media3/common/util/StuckPlayerDetector;->access$200(Landroidx/media3/common/util/StuckPlayerDetector;)Landroidx/media3/common/util/HandlerWrapper;

    move-result-object v9

    invoke-interface {v9, v1}, Landroidx/media3/common/util/HandlerWrapper;->removeMessages(I)V

    .line 269
    iget-object v9, p0, Landroidx/media3/common/util/StuckPlayerDetector$StuckPlayingDetector;->this$0:Landroidx/media3/common/util/StuckPlayerDetector;

    invoke-static {v9}, Landroidx/media3/common/util/StuckPlayerDetector;->access$200(Landroidx/media3/common/util/StuckPlayerDetector;)Landroidx/media3/common/util/HandlerWrapper;

    move-result-object v9

    iget v10, p0, Landroidx/media3/common/util/StuckPlayerDetector$StuckPlayingDetector;->stuckPlayingTimeoutMs:I

    invoke-interface {v9, v1, v10}, Landroidx/media3/common/util/HandlerWrapper;->sendEmptyMessageDelayed(II)Z

    .line 271
    :cond_5
    :goto_1
    return-void
.end method
