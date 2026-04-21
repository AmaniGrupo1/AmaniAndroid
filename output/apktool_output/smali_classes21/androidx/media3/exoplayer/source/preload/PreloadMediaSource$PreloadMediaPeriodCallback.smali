.class Landroidx/media3/exoplayer/source/preload/PreloadMediaSource$PreloadMediaPeriodCallback;
.super Ljava/lang/Object;
.source "PreloadMediaSource.java"

# interfaces
.implements Landroidx/media3/exoplayer/source/MediaPeriod$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media3/exoplayer/source/preload/PreloadMediaSource;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PreloadMediaPeriodCallback"
.end annotation


# instance fields
.field private continueLoadingRetryCountBeforeCallingPreloadControlAgain:I

.field private maybeContinueLoadingRunnable:Ljava/lang/Runnable;

.field private onLoadToTheEndOfSourceNotified:Z

.field private final periodStartPositionUs:J

.field private prepared:Z

.field final synthetic this$0:Landroidx/media3/exoplayer/source/preload/PreloadMediaSource;


# direct methods
.method public constructor <init>(Landroidx/media3/exoplayer/source/preload/PreloadMediaSource;J)V
    .locals 0
    .param p2, "periodStartPositionUs"    # J
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

    .line 524
    iput-object p1, p0, Landroidx/media3/exoplayer/source/preload/PreloadMediaSource$PreloadMediaPeriodCallback;->this$0:Landroidx/media3/exoplayer/source/preload/PreloadMediaSource;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 525
    iput-wide p2, p0, Landroidx/media3/exoplayer/source/preload/PreloadMediaSource$PreloadMediaPeriodCallback;->periodStartPositionUs:J

    .line 526
    const/4 p1, -0x1

    iput p1, p0, Landroidx/media3/exoplayer/source/preload/PreloadMediaSource$PreloadMediaPeriodCallback;->continueLoadingRetryCountBeforeCallingPreloadControlAgain:I

    .line 527
    return-void
.end method

.method private createLoadControlParameters(Landroidx/media3/exoplayer/analytics/PlayerId;Landroidx/media3/common/Timeline;Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;J)Landroidx/media3/exoplayer/LoadControl$Parameters;
    .locals 15
    .param p1, "playerId"    # Landroidx/media3/exoplayer/analytics/PlayerId;
    .param p2, "timeline"    # Landroidx/media3/common/Timeline;
    .param p3, "mediaPeriodId"    # Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;
    .param p4, "bufferedDurationUs"    # J

    .line 653
    new-instance v0, Landroidx/media3/exoplayer/LoadControl$Parameters;

    const-wide v11, -0x7fffffffffffffffL    # -4.9E-324

    const-wide v13, -0x7fffffffffffffffL    # -4.9E-324

    const-wide/16 v4, 0x0

    const/high16 v8, 0x3f800000    # 1.0f

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-wide/from16 v6, p4

    invoke-direct/range {v0 .. v14}, Landroidx/media3/exoplayer/LoadControl$Parameters;-><init>(Landroidx/media3/exoplayer/analytics/PlayerId;Landroidx/media3/common/Timeline;Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;JJFZZJJ)V

    return-object v0
.end method

.method private maybeContinueLoading(Landroidx/media3/exoplayer/source/MediaPeriod;Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;)V
    .locals 7
    .param p1, "mediaPeriod"    # Landroidx/media3/exoplayer/source/MediaPeriod;
    .param p2, "mediaPeriodId"    # Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    .line 599
    iget-object v0, p0, Landroidx/media3/exoplayer/source/preload/PreloadMediaSource$PreloadMediaPeriodCallback;->this$0:Landroidx/media3/exoplayer/source/preload/PreloadMediaSource;

    invoke-static {v0}, Landroidx/media3/exoplayer/source/preload/PreloadMediaSource;->access$200(Landroidx/media3/exoplayer/source/preload/PreloadMediaSource;)Landroid/util/Pair;

    move-result-object v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Landroidx/media3/exoplayer/source/preload/PreloadMediaSource$PreloadMediaPeriodCallback;->this$0:Landroidx/media3/exoplayer/source/preload/PreloadMediaSource;

    invoke-static {v0}, Landroidx/media3/exoplayer/source/preload/PreloadMediaSource;->access$200(Landroidx/media3/exoplayer/source/preload/PreloadMediaSource;)Landroid/util/Pair;

    move-result-object v0

    iget-object v0, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    if-eq v0, p1, :cond_0

    move-object v1, p0

    move-object v4, p2

    goto/16 :goto_2

    .line 602
    :cond_0
    iget-object v0, p0, Landroidx/media3/exoplayer/source/preload/PreloadMediaSource$PreloadMediaPeriodCallback;->maybeContinueLoadingRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_1

    .line 604
    iget-object v0, p0, Landroidx/media3/exoplayer/source/preload/PreloadMediaSource$PreloadMediaPeriodCallback;->this$0:Landroidx/media3/exoplayer/source/preload/PreloadMediaSource;

    invoke-static {v0}, Landroidx/media3/exoplayer/source/preload/PreloadMediaSource;->access$100(Landroidx/media3/exoplayer/source/preload/PreloadMediaSource;)Landroidx/media3/common/util/HandlerWrapper;

    move-result-object v0

    iget-object v1, p0, Landroidx/media3/exoplayer/source/preload/PreloadMediaSource$PreloadMediaPeriodCallback;->maybeContinueLoadingRunnable:Ljava/lang/Runnable;

    invoke-interface {v0, v1}, Landroidx/media3/common/util/HandlerWrapper;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 605
    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/media3/exoplayer/source/preload/PreloadMediaSource$PreloadMediaPeriodCallback;->maybeContinueLoadingRunnable:Ljava/lang/Runnable;

    .line 608
    :cond_1
    iget-object v0, p0, Landroidx/media3/exoplayer/source/preload/PreloadMediaSource$PreloadMediaPeriodCallback;->this$0:Landroidx/media3/exoplayer/source/preload/PreloadMediaSource;

    .line 610
    invoke-static {v0}, Landroidx/media3/exoplayer/source/preload/PreloadMediaSource;->access$300(Landroidx/media3/exoplayer/source/preload/PreloadMediaSource;)Landroidx/media3/exoplayer/analytics/PlayerId;

    move-result-object v2

    iget-object v0, p0, Landroidx/media3/exoplayer/source/preload/PreloadMediaSource$PreloadMediaPeriodCallback;->this$0:Landroidx/media3/exoplayer/source/preload/PreloadMediaSource;

    .line 611
    invoke-static {v0}, Landroidx/media3/exoplayer/source/preload/PreloadMediaSource;->access$400(Landroidx/media3/exoplayer/source/preload/PreloadMediaSource;)Landroidx/media3/common/Timeline;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Landroidx/media3/common/Timeline;

    .line 613
    iget-boolean v0, p0, Landroidx/media3/exoplayer/source/preload/PreloadMediaSource$PreloadMediaPeriodCallback;->prepared:Z

    if-eqz v0, :cond_2

    invoke-interface {p1}, Landroidx/media3/exoplayer/source/MediaPeriod;->getBufferedPositionUs()J

    move-result-wide v0

    goto :goto_0

    :cond_2
    const-wide/16 v0, 0x0

    :goto_0
    move-wide v5, v0

    .line 609
    move-object v1, p0

    move-object v4, p2

    .end local p2    # "mediaPeriodId":Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;
    .local v4, "mediaPeriodId":Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;
    invoke-direct/range {v1 .. v6}, Landroidx/media3/exoplayer/source/preload/PreloadMediaSource$PreloadMediaPeriodCallback;->createLoadControlParameters(Landroidx/media3/exoplayer/analytics/PlayerId;Landroidx/media3/common/Timeline;Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;J)Landroidx/media3/exoplayer/LoadControl$Parameters;

    move-result-object p2

    .line 614
    .local p2, "parameters":Landroidx/media3/exoplayer/LoadControl$Parameters;
    iget-object v0, v1, Landroidx/media3/exoplayer/source/preload/PreloadMediaSource$PreloadMediaPeriodCallback;->this$0:Landroidx/media3/exoplayer/source/preload/PreloadMediaSource;

    invoke-static {v0}, Landroidx/media3/exoplayer/source/preload/PreloadMediaSource;->access$500(Landroidx/media3/exoplayer/source/preload/PreloadMediaSource;)Landroidx/media3/exoplayer/LoadControl;

    move-result-object v0

    invoke-interface {v0, p2}, Landroidx/media3/exoplayer/LoadControl;->shouldContinueLoading(Landroidx/media3/exoplayer/LoadControl$Parameters;)Z

    move-result v0

    const/4 v2, -0x1

    if-eqz v0, :cond_4

    .line 615
    iput v2, v1, Landroidx/media3/exoplayer/source/preload/PreloadMediaSource$PreloadMediaPeriodCallback;->continueLoadingRetryCountBeforeCallingPreloadControlAgain:I

    .line 616
    new-instance v0, Landroidx/media3/exoplayer/LoadingInfo$Builder;

    invoke-direct {v0}, Landroidx/media3/exoplayer/LoadingInfo$Builder;-><init>()V

    iget-wide v2, v1, Landroidx/media3/exoplayer/source/preload/PreloadMediaSource$PreloadMediaPeriodCallback;->periodStartPositionUs:J

    .line 617
    invoke-virtual {v0, v2, v3}, Landroidx/media3/exoplayer/LoadingInfo$Builder;->setPlaybackPositionUs(J)Landroidx/media3/exoplayer/LoadingInfo$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/media3/exoplayer/LoadingInfo$Builder;->build()Landroidx/media3/exoplayer/LoadingInfo;

    move-result-object v0

    .line 616
    invoke-interface {p1, v0}, Landroidx/media3/exoplayer/source/MediaPeriod;->continueLoading(Landroidx/media3/exoplayer/LoadingInfo;)Z

    .line 618
    iget-boolean v0, v1, Landroidx/media3/exoplayer/source/preload/PreloadMediaSource$PreloadMediaPeriodCallback;->prepared:Z

    if-eqz v0, :cond_3

    invoke-interface {p1}, Landroidx/media3/exoplayer/source/MediaPeriod;->getBufferedPositionUs()J

    move-result-wide v2

    const-wide/high16 v5, -0x8000000000000000L

    cmp-long v0, v2, v5

    if-nez v0, :cond_3

    .line 619
    invoke-direct {p0}, Landroidx/media3/exoplayer/source/preload/PreloadMediaSource$PreloadMediaPeriodCallback;->onLoadToTheEndOfSource()V

    .line 621
    :cond_3
    return-void

    .line 625
    :cond_4
    iget v0, v1, Landroidx/media3/exoplayer/source/preload/PreloadMediaSource$PreloadMediaPeriodCallback;->continueLoadingRetryCountBeforeCallingPreloadControlAgain:I

    if-eq v0, v2, :cond_5

    iget v0, v1, Landroidx/media3/exoplayer/source/preload/PreloadMediaSource$PreloadMediaPeriodCallback;->continueLoadingRetryCountBeforeCallingPreloadControlAgain:I

    const/16 v3, 0xa

    if-ge v0, v3, :cond_5

    .line 631
    iget v0, v1, Landroidx/media3/exoplayer/source/preload/PreloadMediaSource$PreloadMediaPeriodCallback;->continueLoadingRetryCountBeforeCallingPreloadControlAgain:I

    add-int/lit8 v0, v0, 0x1

    iput v0, v1, Landroidx/media3/exoplayer/source/preload/PreloadMediaSource$PreloadMediaPeriodCallback;->continueLoadingRetryCountBeforeCallingPreloadControlAgain:I

    goto :goto_1

    .line 632
    :cond_5
    iget-object v0, v1, Landroidx/media3/exoplayer/source/preload/PreloadMediaSource$PreloadMediaPeriodCallback;->this$0:Landroidx/media3/exoplayer/source/preload/PreloadMediaSource;

    invoke-static {v0}, Landroidx/media3/exoplayer/source/preload/PreloadMediaSource;->access$600(Landroidx/media3/exoplayer/source/preload/PreloadMediaSource;)Landroidx/media3/exoplayer/source/preload/PreloadMediaSource$PreloadControl;

    move-result-object v0

    iget-object v3, v1, Landroidx/media3/exoplayer/source/preload/PreloadMediaSource$PreloadMediaPeriodCallback;->this$0:Landroidx/media3/exoplayer/source/preload/PreloadMediaSource;

    invoke-interface {v0, v3}, Landroidx/media3/exoplayer/source/preload/PreloadMediaSource$PreloadControl;->onLoadingUnableToContinue(Landroidx/media3/exoplayer/source/preload/PreloadMediaSource;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 637
    const/4 v0, 0x0

    iput v0, v1, Landroidx/media3/exoplayer/source/preload/PreloadMediaSource$PreloadMediaPeriodCallback;->continueLoadingRetryCountBeforeCallingPreloadControlAgain:I

    goto :goto_1

    .line 642
    :cond_6
    iput v2, v1, Landroidx/media3/exoplayer/source/preload/PreloadMediaSource$PreloadMediaPeriodCallback;->continueLoadingRetryCountBeforeCallingPreloadControlAgain:I

    .line 644
    :goto_1
    new-instance v0, Landroidx/media3/exoplayer/source/preload/PreloadMediaSource$PreloadMediaPeriodCallback$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, p1, v4}, Landroidx/media3/exoplayer/source/preload/PreloadMediaSource$PreloadMediaPeriodCallback$$ExternalSyntheticLambda0;-><init>(Landroidx/media3/exoplayer/source/preload/PreloadMediaSource$PreloadMediaPeriodCallback;Landroidx/media3/exoplayer/source/MediaPeriod;Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;)V

    iput-object v0, v1, Landroidx/media3/exoplayer/source/preload/PreloadMediaSource$PreloadMediaPeriodCallback;->maybeContinueLoadingRunnable:Ljava/lang/Runnable;

    .line 645
    iget-object v0, v1, Landroidx/media3/exoplayer/source/preload/PreloadMediaSource$PreloadMediaPeriodCallback;->this$0:Landroidx/media3/exoplayer/source/preload/PreloadMediaSource;

    invoke-static {v0}, Landroidx/media3/exoplayer/source/preload/PreloadMediaSource;->access$100(Landroidx/media3/exoplayer/source/preload/PreloadMediaSource;)Landroidx/media3/common/util/HandlerWrapper;

    move-result-object v0

    iget-object v2, v1, Landroidx/media3/exoplayer/source/preload/PreloadMediaSource$PreloadMediaPeriodCallback;->maybeContinueLoadingRunnable:Ljava/lang/Runnable;

    const-wide/16 v5, 0x64

    invoke-interface {v0, v2, v5, v6}, Landroidx/media3/common/util/HandlerWrapper;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 646
    return-void

    .line 599
    .end local v4    # "mediaPeriodId":Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;
    .local p2, "mediaPeriodId":Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;
    :cond_7
    move-object v1, p0

    move-object v4, p2

    .line 600
    .end local p2    # "mediaPeriodId":Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;
    .restart local v4    # "mediaPeriodId":Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;
    :goto_2
    return-void
.end method

.method private onLoadToTheEndOfSource()V
    .locals 2

    .line 667
    iget-boolean v0, p0, Landroidx/media3/exoplayer/source/preload/PreloadMediaSource$PreloadMediaPeriodCallback;->onLoadToTheEndOfSourceNotified:Z

    if-nez v0, :cond_0

    .line 668
    iget-object v0, p0, Landroidx/media3/exoplayer/source/preload/PreloadMediaSource$PreloadMediaPeriodCallback;->this$0:Landroidx/media3/exoplayer/source/preload/PreloadMediaSource;

    invoke-static {v0}, Landroidx/media3/exoplayer/source/preload/PreloadMediaSource;->access$600(Landroidx/media3/exoplayer/source/preload/PreloadMediaSource;)Landroidx/media3/exoplayer/source/preload/PreloadMediaSource$PreloadControl;

    move-result-object v0

    iget-object v1, p0, Landroidx/media3/exoplayer/source/preload/PreloadMediaSource$PreloadMediaPeriodCallback;->this$0:Landroidx/media3/exoplayer/source/preload/PreloadMediaSource;

    invoke-interface {v0, v1}, Landroidx/media3/exoplayer/source/preload/PreloadMediaSource$PreloadControl;->onLoadedToTheEndOfSource(Landroidx/media3/exoplayer/source/preload/PreloadMediaSource;)V

    .line 669
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/media3/exoplayer/source/preload/PreloadMediaSource$PreloadMediaPeriodCallback;->onLoadToTheEndOfSourceNotified:Z

    .line 671
    :cond_0
    iget-object v0, p0, Landroidx/media3/exoplayer/source/preload/PreloadMediaSource$PreloadMediaPeriodCallback;->this$0:Landroidx/media3/exoplayer/source/preload/PreloadMediaSource;

    invoke-static {v0}, Landroidx/media3/exoplayer/source/preload/PreloadMediaSource;->access$700(Landroidx/media3/exoplayer/source/preload/PreloadMediaSource;)V

    .line 672
    return-void
.end method


# virtual methods
.method synthetic lambda$maybeContinueLoading$2$androidx-media3-exoplayer-source-preload-PreloadMediaSource$PreloadMediaPeriodCallback(Landroidx/media3/exoplayer/source/MediaPeriod;Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;)V
    .locals 0
    .param p1, "mediaPeriod"    # Landroidx/media3/exoplayer/source/MediaPeriod;
    .param p2, "mediaPeriodId"    # Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    .line 644
    invoke-direct {p0, p1, p2}, Landroidx/media3/exoplayer/source/preload/PreloadMediaSource$PreloadMediaPeriodCallback;->maybeContinueLoading(Landroidx/media3/exoplayer/source/MediaPeriod;Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;)V

    return-void
.end method

.method synthetic lambda$onContinueLoadingRequested$1$androidx-media3-exoplayer-source-preload-PreloadMediaSource$PreloadMediaPeriodCallback(Landroidx/media3/exoplayer/source/MediaPeriod;)V
    .locals 7
    .param p1, "mediaPeriod"    # Landroidx/media3/exoplayer/source/MediaPeriod;

    .line 576
    iget-object v0, p0, Landroidx/media3/exoplayer/source/preload/PreloadMediaSource$PreloadMediaPeriodCallback;->this$0:Landroidx/media3/exoplayer/source/preload/PreloadMediaSource;

    invoke-static {v0}, Landroidx/media3/exoplayer/source/preload/PreloadMediaSource;->access$800(Landroidx/media3/exoplayer/source/preload/PreloadMediaSource;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 577
    return-void

    .line 579
    :cond_0
    move-object v0, p1

    check-cast v0, Landroidx/media3/exoplayer/source/preload/PreloadMediaPeriod;

    .line 580
    .local v0, "preloadMediaPeriod":Landroidx/media3/exoplayer/source/preload/PreloadMediaPeriod;
    iget-boolean v1, p0, Landroidx/media3/exoplayer/source/preload/PreloadMediaSource$PreloadMediaPeriodCallback;->prepared:Z

    if-eqz v1, :cond_2

    .line 581
    invoke-interface {p1}, Landroidx/media3/exoplayer/source/MediaPeriod;->getBufferedPositionUs()J

    move-result-wide v1

    .line 582
    .local v1, "bufferedPositionUs":J
    const-wide/high16 v3, -0x8000000000000000L

    cmp-long v3, v1, v3

    if-nez v3, :cond_1

    .line 583
    invoke-direct {p0}, Landroidx/media3/exoplayer/source/preload/PreloadMediaSource$PreloadMediaPeriodCallback;->onLoadToTheEndOfSource()V

    .line 584
    return-void

    .line 586
    :cond_1
    iget-object v3, p0, Landroidx/media3/exoplayer/source/preload/PreloadMediaSource$PreloadMediaPeriodCallback;->this$0:Landroidx/media3/exoplayer/source/preload/PreloadMediaSource;

    invoke-static {v3}, Landroidx/media3/exoplayer/source/preload/PreloadMediaSource;->access$600(Landroidx/media3/exoplayer/source/preload/PreloadMediaSource;)Landroidx/media3/exoplayer/source/preload/PreloadMediaSource$PreloadControl;

    move-result-object v3

    iget-object v4, p0, Landroidx/media3/exoplayer/source/preload/PreloadMediaSource$PreloadMediaPeriodCallback;->this$0:Landroidx/media3/exoplayer/source/preload/PreloadMediaSource;

    iget-wide v5, p0, Landroidx/media3/exoplayer/source/preload/PreloadMediaSource$PreloadMediaPeriodCallback;->periodStartPositionUs:J

    sub-long v5, v1, v5

    invoke-interface {v3, v4, v5, v6}, Landroidx/media3/exoplayer/source/preload/PreloadMediaSource$PreloadControl;->onContinueLoadingRequested(Landroidx/media3/exoplayer/source/preload/PreloadMediaSource;J)Z

    move-result v3

    if-nez v3, :cond_2

    .line 588
    iget-object v3, p0, Landroidx/media3/exoplayer/source/preload/PreloadMediaSource$PreloadMediaPeriodCallback;->this$0:Landroidx/media3/exoplayer/source/preload/PreloadMediaSource;

    invoke-static {v3}, Landroidx/media3/exoplayer/source/preload/PreloadMediaSource;->access$700(Landroidx/media3/exoplayer/source/preload/PreloadMediaSource;)V

    .line 589
    return-void

    .line 592
    .end local v1    # "bufferedPositionUs":J
    :cond_2
    iget-object v1, p0, Landroidx/media3/exoplayer/source/preload/PreloadMediaSource$PreloadMediaPeriodCallback;->this$0:Landroidx/media3/exoplayer/source/preload/PreloadMediaSource;

    invoke-static {v1}, Landroidx/media3/exoplayer/source/preload/PreloadMediaSource;->access$200(Landroidx/media3/exoplayer/source/preload/PreloadMediaSource;)Landroid/util/Pair;

    move-result-object v1

    invoke-static {v1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/Pair;

    iget-object v1, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Landroidx/media3/exoplayer/source/preload/PreloadMediaSource$MediaPeriodKey;

    .line 593
    .local v1, "key":Landroidx/media3/exoplayer/source/preload/PreloadMediaSource$MediaPeriodKey;
    const/4 v2, -0x1

    iput v2, p0, Landroidx/media3/exoplayer/source/preload/PreloadMediaSource$PreloadMediaPeriodCallback;->continueLoadingRetryCountBeforeCallingPreloadControlAgain:I

    .line 594
    iget-object v2, v1, Landroidx/media3/exoplayer/source/preload/PreloadMediaSource$MediaPeriodKey;->mediaPeriodId:Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    invoke-direct {p0, v0, v2}, Landroidx/media3/exoplayer/source/preload/PreloadMediaSource$PreloadMediaPeriodCallback;->maybeContinueLoading(Landroidx/media3/exoplayer/source/MediaPeriod;Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;)V

    .line 595
    return-void
.end method

.method synthetic lambda$onPrepared$0$androidx-media3-exoplayer-source-preload-PreloadMediaSource$PreloadMediaPeriodCallback(Landroidx/media3/exoplayer/source/MediaPeriod;)V
    .locals 11
    .param p1, "mediaPeriod"    # Landroidx/media3/exoplayer/source/MediaPeriod;

    .line 534
    iget-object v0, p0, Landroidx/media3/exoplayer/source/preload/PreloadMediaSource$PreloadMediaPeriodCallback;->this$0:Landroidx/media3/exoplayer/source/preload/PreloadMediaSource;

    invoke-static {v0}, Landroidx/media3/exoplayer/source/preload/PreloadMediaSource;->access$800(Landroidx/media3/exoplayer/source/preload/PreloadMediaSource;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 535
    return-void

    .line 537
    :cond_0
    move-object v1, p1

    check-cast v1, Landroidx/media3/exoplayer/source/preload/PreloadMediaPeriod;

    .line 538
    .local v1, "preloadMediaPeriod":Landroidx/media3/exoplayer/source/preload/PreloadMediaPeriod;
    invoke-virtual {v1}, Landroidx/media3/exoplayer/source/preload/PreloadMediaPeriod;->getTrackGroups()Landroidx/media3/exoplayer/source/TrackGroupArray;

    move-result-object v2

    .line 539
    .local v2, "trackGroups":Landroidx/media3/exoplayer/source/TrackGroupArray;
    const/4 v3, 0x0

    .line 540
    .local v3, "trackSelectorResult":Landroidx/media3/exoplayer/trackselection/TrackSelectorResult;
    iget-object v0, p0, Landroidx/media3/exoplayer/source/preload/PreloadMediaSource$PreloadMediaPeriodCallback;->this$0:Landroidx/media3/exoplayer/source/preload/PreloadMediaSource;

    invoke-static {v0}, Landroidx/media3/exoplayer/source/preload/PreloadMediaSource;->access$200(Landroidx/media3/exoplayer/source/preload/PreloadMediaSource;)Landroid/util/Pair;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Pair;

    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    move-object v4, v0

    check-cast v4, Landroidx/media3/exoplayer/source/preload/PreloadMediaSource$MediaPeriodKey;

    .line 541
    .local v4, "key":Landroidx/media3/exoplayer/source/preload/PreloadMediaSource$MediaPeriodKey;
    iget-object v8, v4, Landroidx/media3/exoplayer/source/preload/PreloadMediaSource$MediaPeriodKey;->mediaPeriodId:Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    .line 543
    .local v8, "mediaPeriodId":Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;
    :try_start_0
    iget-object v0, p0, Landroidx/media3/exoplayer/source/preload/PreloadMediaSource$PreloadMediaPeriodCallback;->this$0:Landroidx/media3/exoplayer/source/preload/PreloadMediaSource;

    .line 544
    invoke-static {v0}, Landroidx/media3/exoplayer/source/preload/PreloadMediaSource;->access$1000(Landroidx/media3/exoplayer/source/preload/PreloadMediaSource;)Landroidx/media3/exoplayer/trackselection/TrackSelector;

    move-result-object v0

    iget-object v5, p0, Landroidx/media3/exoplayer/source/preload/PreloadMediaSource$PreloadMediaPeriodCallback;->this$0:Landroidx/media3/exoplayer/source/preload/PreloadMediaSource;

    .line 545
    invoke-static {v5}, Landroidx/media3/exoplayer/source/preload/PreloadMediaSource;->access$900(Landroidx/media3/exoplayer/source/preload/PreloadMediaSource;)[Landroidx/media3/exoplayer/RendererCapabilities;

    move-result-object v5

    iget-object v6, p0, Landroidx/media3/exoplayer/source/preload/PreloadMediaSource$PreloadMediaPeriodCallback;->this$0:Landroidx/media3/exoplayer/source/preload/PreloadMediaSource;

    invoke-static {v6}, Landroidx/media3/exoplayer/source/preload/PreloadMediaSource;->access$400(Landroidx/media3/exoplayer/source/preload/PreloadMediaSource;)Landroidx/media3/common/Timeline;

    move-result-object v6

    invoke-static {v6}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroidx/media3/common/Timeline;

    .line 544
    invoke-virtual {v0, v5, v2, v8, v6}, Landroidx/media3/exoplayer/trackselection/TrackSelector;->selectTracks([Landroidx/media3/exoplayer/RendererCapabilities;Landroidx/media3/exoplayer/source/TrackGroupArray;Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;Landroidx/media3/common/Timeline;)Landroidx/media3/exoplayer/trackselection/TrackSelectorResult;

    move-result-object v0
    :try_end_0
    .catch Landroidx/media3/exoplayer/ExoPlaybackException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v3, v0

    .line 548
    goto :goto_0

    .line 546
    :catch_0
    move-exception v0

    .line 547
    .local v0, "e":Landroidx/media3/exoplayer/ExoPlaybackException;
    const-string v5, "PreloadMediaSource"

    const-string v6, "Failed to select tracks"

    invoke-static {v5, v6, v0}, Landroidx/media3/common/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 549
    .end local v0    # "e":Landroidx/media3/exoplayer/ExoPlaybackException;
    :goto_0
    if-nez v3, :cond_1

    .line 550
    iget-object v0, p0, Landroidx/media3/exoplayer/source/preload/PreloadMediaSource$PreloadMediaPeriodCallback;->this$0:Landroidx/media3/exoplayer/source/preload/PreloadMediaSource;

    invoke-static {v0}, Landroidx/media3/exoplayer/source/preload/PreloadMediaSource;->access$700(Landroidx/media3/exoplayer/source/preload/PreloadMediaSource;)V

    .line 551
    return-void

    .line 553
    :cond_1
    iget-object v0, v3, Landroidx/media3/exoplayer/trackselection/TrackSelectorResult;->selections:[Landroidx/media3/exoplayer/trackselection/ExoTrackSelection;

    iget-wide v5, p0, Landroidx/media3/exoplayer/source/preload/PreloadMediaSource$PreloadMediaPeriodCallback;->periodStartPositionUs:J

    invoke-virtual {v1, v0, v5, v6}, Landroidx/media3/exoplayer/source/preload/PreloadMediaPeriod;->selectTracksForPreloading([Landroidx/media3/exoplayer/trackselection/ExoTrackSelection;J)J

    .line 555
    iget-object v0, p0, Landroidx/media3/exoplayer/source/preload/PreloadMediaSource$PreloadMediaPeriodCallback;->this$0:Landroidx/media3/exoplayer/source/preload/PreloadMediaSource;

    invoke-static {v0}, Landroidx/media3/exoplayer/source/preload/PreloadMediaSource;->access$600(Landroidx/media3/exoplayer/source/preload/PreloadMediaSource;)Landroidx/media3/exoplayer/source/preload/PreloadMediaSource$PreloadControl;

    move-result-object v0

    iget-object v5, p0, Landroidx/media3/exoplayer/source/preload/PreloadMediaSource$PreloadMediaPeriodCallback;->this$0:Landroidx/media3/exoplayer/source/preload/PreloadMediaSource;

    invoke-interface {v0, v5}, Landroidx/media3/exoplayer/source/preload/PreloadMediaSource$PreloadControl;->onTracksSelected(Landroidx/media3/exoplayer/source/preload/PreloadMediaSource;)Z

    move-result v0

    .line 559
    iget-object v5, p0, Landroidx/media3/exoplayer/source/preload/PreloadMediaSource$PreloadMediaPeriodCallback;->this$0:Landroidx/media3/exoplayer/source/preload/PreloadMediaSource;

    .line 555
    if-nez v0, :cond_2

    .line 556
    invoke-static {v5}, Landroidx/media3/exoplayer/source/preload/PreloadMediaSource;->access$700(Landroidx/media3/exoplayer/source/preload/PreloadMediaSource;)V

    .line 557
    return-void

    .line 559
    :cond_2
    invoke-static {v5}, Landroidx/media3/exoplayer/source/preload/PreloadMediaSource;->access$500(Landroidx/media3/exoplayer/source/preload/PreloadMediaSource;)Landroidx/media3/exoplayer/LoadControl;

    move-result-object v0

    iget-object v5, p0, Landroidx/media3/exoplayer/source/preload/PreloadMediaSource$PreloadMediaPeriodCallback;->this$0:Landroidx/media3/exoplayer/source/preload/PreloadMediaSource;

    .line 561
    invoke-static {v5}, Landroidx/media3/exoplayer/source/preload/PreloadMediaSource;->access$1100(Landroidx/media3/exoplayer/source/preload/PreloadMediaSource;)Landroidx/media3/exoplayer/analytics/PlayerId;

    move-result-object v6

    iget-object v5, p0, Landroidx/media3/exoplayer/source/preload/PreloadMediaSource$PreloadMediaPeriodCallback;->this$0:Landroidx/media3/exoplayer/source/preload/PreloadMediaSource;

    .line 562
    invoke-static {v5}, Landroidx/media3/exoplayer/source/preload/PreloadMediaSource;->access$400(Landroidx/media3/exoplayer/source/preload/PreloadMediaSource;)Landroidx/media3/common/Timeline;

    move-result-object v5

    invoke-static {v5}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    move-object v7, v5

    check-cast v7, Landroidx/media3/common/Timeline;

    .line 564
    invoke-interface {p1}, Landroidx/media3/exoplayer/source/MediaPeriod;->getBufferedPositionUs()J

    move-result-wide v9

    .line 560
    move-object v5, p0

    invoke-direct/range {v5 .. v10}, Landroidx/media3/exoplayer/source/preload/PreloadMediaSource$PreloadMediaPeriodCallback;->createLoadControlParameters(Landroidx/media3/exoplayer/analytics/PlayerId;Landroidx/media3/common/Timeline;Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;J)Landroidx/media3/exoplayer/LoadControl$Parameters;

    move-result-object v6

    iget-object v7, v3, Landroidx/media3/exoplayer/trackselection/TrackSelectorResult;->selections:[Landroidx/media3/exoplayer/trackselection/ExoTrackSelection;

    .line 559
    invoke-interface {v0, v6, v2, v7}, Landroidx/media3/exoplayer/LoadControl;->onTracksSelected(Landroidx/media3/exoplayer/LoadControl$Parameters;Landroidx/media3/exoplayer/source/TrackGroupArray;[Landroidx/media3/exoplayer/trackselection/ExoTrackSelection;)V

    .line 567
    const/4 v0, -0x1

    iput v0, v5, Landroidx/media3/exoplayer/source/preload/PreloadMediaSource$PreloadMediaPeriodCallback;->continueLoadingRetryCountBeforeCallingPreloadControlAgain:I

    .line 568
    invoke-direct {p0, v1, v8}, Landroidx/media3/exoplayer/source/preload/PreloadMediaSource$PreloadMediaPeriodCallback;->maybeContinueLoading(Landroidx/media3/exoplayer/source/MediaPeriod;Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;)V

    .line 569
    return-void
.end method

.method public onContinueLoadingRequested(Landroidx/media3/exoplayer/source/MediaPeriod;)V
    .locals 2
    .param p1, "mediaPeriod"    # Landroidx/media3/exoplayer/source/MediaPeriod;

    .line 574
    iget-object v0, p0, Landroidx/media3/exoplayer/source/preload/PreloadMediaSource$PreloadMediaPeriodCallback;->this$0:Landroidx/media3/exoplayer/source/preload/PreloadMediaSource;

    invoke-static {v0}, Landroidx/media3/exoplayer/source/preload/PreloadMediaSource;->access$100(Landroidx/media3/exoplayer/source/preload/PreloadMediaSource;)Landroidx/media3/common/util/HandlerWrapper;

    move-result-object v0

    new-instance v1, Landroidx/media3/exoplayer/source/preload/PreloadMediaSource$PreloadMediaPeriodCallback$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0, p1}, Landroidx/media3/exoplayer/source/preload/PreloadMediaSource$PreloadMediaPeriodCallback$$ExternalSyntheticLambda2;-><init>(Landroidx/media3/exoplayer/source/preload/PreloadMediaSource$PreloadMediaPeriodCallback;Landroidx/media3/exoplayer/source/MediaPeriod;)V

    invoke-interface {v0, v1}, Landroidx/media3/common/util/HandlerWrapper;->post(Ljava/lang/Runnable;)Z

    .line 596
    return-void
.end method

.method public bridge synthetic onContinueLoadingRequested(Landroidx/media3/exoplayer/source/SequenceableLoader;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 516
    check-cast p1, Landroidx/media3/exoplayer/source/MediaPeriod;

    invoke-virtual {p0, p1}, Landroidx/media3/exoplayer/source/preload/PreloadMediaSource$PreloadMediaPeriodCallback;->onContinueLoadingRequested(Landroidx/media3/exoplayer/source/MediaPeriod;)V

    return-void
.end method

.method public onPrepared(Landroidx/media3/exoplayer/source/MediaPeriod;)V
    .locals 2
    .param p1, "mediaPeriod"    # Landroidx/media3/exoplayer/source/MediaPeriod;

    .line 531
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/media3/exoplayer/source/preload/PreloadMediaSource$PreloadMediaPeriodCallback;->prepared:Z

    .line 532
    iget-object v0, p0, Landroidx/media3/exoplayer/source/preload/PreloadMediaSource$PreloadMediaPeriodCallback;->this$0:Landroidx/media3/exoplayer/source/preload/PreloadMediaSource;

    invoke-static {v0}, Landroidx/media3/exoplayer/source/preload/PreloadMediaSource;->access$100(Landroidx/media3/exoplayer/source/preload/PreloadMediaSource;)Landroidx/media3/common/util/HandlerWrapper;

    move-result-object v0

    new-instance v1, Landroidx/media3/exoplayer/source/preload/PreloadMediaSource$PreloadMediaPeriodCallback$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0, p1}, Landroidx/media3/exoplayer/source/preload/PreloadMediaSource$PreloadMediaPeriodCallback$$ExternalSyntheticLambda1;-><init>(Landroidx/media3/exoplayer/source/preload/PreloadMediaSource$PreloadMediaPeriodCallback;Landroidx/media3/exoplayer/source/MediaPeriod;)V

    invoke-interface {v0, v1}, Landroidx/media3/common/util/HandlerWrapper;->post(Ljava/lang/Runnable;)Z

    .line 570
    return-void
.end method
