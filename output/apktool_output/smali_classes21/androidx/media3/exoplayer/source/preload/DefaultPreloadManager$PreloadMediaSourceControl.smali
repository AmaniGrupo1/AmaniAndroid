.class final Landroidx/media3/exoplayer/source/preload/DefaultPreloadManager$PreloadMediaSourceControl;
.super Ljava/lang/Object;
.source "DefaultPreloadManager.java"

# interfaces
.implements Landroidx/media3/exoplayer/source/preload/PreloadMediaSource$PreloadControl;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media3/exoplayer/source/preload/DefaultPreloadManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "PreloadMediaSourceControl"
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/media3/exoplayer/source/preload/DefaultPreloadManager;


# direct methods
.method private constructor <init>(Landroidx/media3/exoplayer/source/preload/DefaultPreloadManager;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            null
        }
    .end annotation

    .line 802
    iput-object p1, p0, Landroidx/media3/exoplayer/source/preload/DefaultPreloadManager$PreloadMediaSourceControl;->this$0:Landroidx/media3/exoplayer/source/preload/DefaultPreloadManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroidx/media3/exoplayer/source/preload/DefaultPreloadManager;Landroidx/media3/exoplayer/source/preload/DefaultPreloadManager$1;)V
    .locals 0
    .param p1, "x0"    # Landroidx/media3/exoplayer/source/preload/DefaultPreloadManager;
    .param p2, "x1"    # Landroidx/media3/exoplayer/source/preload/DefaultPreloadManager$1;

    .line 802
    invoke-direct {p0, p1}, Landroidx/media3/exoplayer/source/preload/DefaultPreloadManager$PreloadMediaSourceControl;-><init>(Landroidx/media3/exoplayer/source/preload/DefaultPreloadManager;)V

    return-void
.end method

.method private continueOrCompletePreloading(Landroidx/media3/exoplayer/source/preload/PreloadMediaSource;Lcom/google/common/base/Predicate;)Z
    .locals 3
    .param p1, "mediaSource"    # Landroidx/media3/exoplayer/source/preload/PreloadMediaSource;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/media3/exoplayer/source/preload/PreloadMediaSource;",
            "Lcom/google/common/base/Predicate<",
            "Landroidx/media3/exoplayer/source/preload/DefaultPreloadManager$PreloadStatus;",
            ">;)Z"
        }
    .end annotation

    .line 882
    .local p2, "continueLoadingPredicate":Lcom/google/common/base/Predicate;, "Lcom/google/common/base/Predicate<Landroidx/media3/exoplayer/source/preload/DefaultPreloadManager$PreloadStatus;>;"
    iget-object v0, p0, Landroidx/media3/exoplayer/source/preload/DefaultPreloadManager$PreloadMediaSourceControl;->this$0:Landroidx/media3/exoplayer/source/preload/DefaultPreloadManager;

    invoke-virtual {v0, p1}, Landroidx/media3/exoplayer/source/preload/DefaultPreloadManager;->getTargetPreloadStatusIfCurrentlyPreloading(Landroidx/media3/exoplayer/source/MediaSource;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media3/exoplayer/source/preload/DefaultPreloadManager$PreloadStatus;

    .line 883
    .local v0, "targetPreloadStatus":Landroidx/media3/exoplayer/source/preload/DefaultPreloadManager$PreloadStatus;
    if-eqz v0, :cond_1

    invoke-static {v0}, Landroidx/media3/exoplayer/source/preload/DefaultPreloadManager$PreloadStatus;->access$1600(Landroidx/media3/exoplayer/source/preload/DefaultPreloadManager$PreloadStatus;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 884
    invoke-interface {p2, v0}, Lcom/google/common/base/Predicate;->apply(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 885
    const/4 v1, 0x1

    return v1

    .line 887
    :cond_0
    iget-object v1, p0, Landroidx/media3/exoplayer/source/preload/DefaultPreloadManager$PreloadMediaSourceControl;->this$0:Landroidx/media3/exoplayer/source/preload/DefaultPreloadManager;

    new-instance v2, Landroidx/media3/exoplayer/source/preload/DefaultPreloadManager$PreloadMediaSourceControl$$ExternalSyntheticLambda6;

    invoke-direct {v2, v0}, Landroidx/media3/exoplayer/source/preload/DefaultPreloadManager$PreloadMediaSourceControl$$ExternalSyntheticLambda6;-><init>(Landroidx/media3/exoplayer/source/preload/DefaultPreloadManager$PreloadStatus;)V

    invoke-virtual {v1, p1, v2}, Landroidx/media3/exoplayer/source/preload/DefaultPreloadManager;->onCompleted(Landroidx/media3/exoplayer/source/MediaSource;Lcom/google/common/base/Predicate;)V

    .line 892
    :cond_1
    const/4 v1, 0x0

    return v1
.end method

.method static synthetic lambda$continueOrCompletePreloading$6(Landroidx/media3/exoplayer/source/preload/DefaultPreloadManager$PreloadStatus;Landroidx/media3/exoplayer/source/preload/DefaultPreloadManager$PreloadStatus;)Z
    .locals 1
    .param p0, "targetPreloadStatus"    # Landroidx/media3/exoplayer/source/preload/DefaultPreloadManager$PreloadStatus;
    .param p1, "preloadStatus"    # Landroidx/media3/exoplayer/source/preload/DefaultPreloadManager$PreloadStatus;

    .line 888
    invoke-virtual {p1, p0}, Landroidx/media3/exoplayer/source/preload/DefaultPreloadManager$PreloadStatus;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method static synthetic lambda$onContinueLoadingRequested$2(JLandroidx/media3/exoplayer/source/preload/DefaultPreloadManager$PreloadStatus;)Z
    .locals 4
    .param p0, "bufferedDurationUs"    # J
    .param p2, "status"    # Landroidx/media3/exoplayer/source/preload/DefaultPreloadManager$PreloadStatus;

    .line 825
    iget v0, p2, Landroidx/media3/exoplayer/source/preload/DefaultPreloadManager$PreloadStatus;->stage:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    iget-wide v0, p2, Landroidx/media3/exoplayer/source/preload/DefaultPreloadManager$PreloadStatus;->durationMs:J

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    iget-wide v0, p2, Landroidx/media3/exoplayer/source/preload/DefaultPreloadManager$PreloadStatus;->durationMs:J

    .line 827
    invoke-static {p0, p1}, Landroidx/media3/common/util/Util;->usToMs(J)J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 825
    :goto_0
    return v0
.end method

.method static synthetic lambda$onLoadedToTheEndOfSource$4(Landroidx/media3/exoplayer/source/preload/DefaultPreloadManager$PreloadStatus;Landroidx/media3/exoplayer/source/preload/DefaultPreloadManager$PreloadStatus;)Z
    .locals 1
    .param p0, "targetPreloadStatus"    # Landroidx/media3/exoplayer/source/preload/DefaultPreloadManager$PreloadStatus;
    .param p1, "preloadStatus"    # Landroidx/media3/exoplayer/source/preload/DefaultPreloadManager$PreloadStatus;

    .line 851
    invoke-virtual {p1, p0}, Landroidx/media3/exoplayer/source/preload/DefaultPreloadManager$PreloadStatus;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method static synthetic lambda$onPreloadError$5(Landroidx/media3/exoplayer/source/preload/DefaultPreloadManager$PreloadStatus;Landroidx/media3/exoplayer/source/preload/DefaultPreloadManager$PreloadStatus;)Z
    .locals 1
    .param p0, "targetPreloadStatus"    # Landroidx/media3/exoplayer/source/preload/DefaultPreloadManager$PreloadStatus;
    .param p1, "preloadStatus"    # Landroidx/media3/exoplayer/source/preload/DefaultPreloadManager$PreloadStatus;

    .line 864
    invoke-virtual {p1, p0}, Landroidx/media3/exoplayer/source/preload/DefaultPreloadManager$PreloadStatus;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method static synthetic lambda$onSourcePrepared$0(Landroidx/media3/exoplayer/source/preload/DefaultPreloadManager$PreloadStatus;)Z
    .locals 1
    .param p0, "status"    # Landroidx/media3/exoplayer/source/preload/DefaultPreloadManager$PreloadStatus;

    .line 808
    iget v0, p0, Landroidx/media3/exoplayer/source/preload/DefaultPreloadManager$PreloadStatus;->stage:I

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method static synthetic lambda$onTracksSelected$1(Landroidx/media3/exoplayer/source/preload/DefaultPreloadManager$PreloadStatus;)Z
    .locals 2
    .param p0, "status"    # Landroidx/media3/exoplayer/source/preload/DefaultPreloadManager$PreloadStatus;

    .line 816
    iget v0, p0, Landroidx/media3/exoplayer/source/preload/DefaultPreloadManager$PreloadStatus;->stage:I

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method static synthetic lambda$onUsedByPlayer$3(Landroidx/media3/exoplayer/source/preload/DefaultPreloadManager$PreloadStatus;Landroidx/media3/exoplayer/source/preload/DefaultPreloadManager$PreloadStatus;)Z
    .locals 1
    .param p0, "targetPreloadStatus"    # Landroidx/media3/exoplayer/source/preload/DefaultPreloadManager$PreloadStatus;
    .param p1, "preloadStatus"    # Landroidx/media3/exoplayer/source/preload/DefaultPreloadManager$PreloadStatus;

    .line 839
    invoke-virtual {p1, p0}, Landroidx/media3/exoplayer/source/preload/DefaultPreloadManager$PreloadStatus;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public onContinueLoadingRequested(Landroidx/media3/exoplayer/source/preload/PreloadMediaSource;J)Z
    .locals 1
    .param p1, "mediaSource"    # Landroidx/media3/exoplayer/source/preload/PreloadMediaSource;
    .param p2, "bufferedDurationUs"    # J

    .line 822
    new-instance v0, Landroidx/media3/exoplayer/source/preload/DefaultPreloadManager$PreloadMediaSourceControl$$ExternalSyntheticLambda3;

    invoke-direct {v0, p2, p3}, Landroidx/media3/exoplayer/source/preload/DefaultPreloadManager$PreloadMediaSourceControl$$ExternalSyntheticLambda3;-><init>(J)V

    invoke-direct {p0, p1, v0}, Landroidx/media3/exoplayer/source/preload/DefaultPreloadManager$PreloadMediaSourceControl;->continueOrCompletePreloading(Landroidx/media3/exoplayer/source/preload/PreloadMediaSource;Lcom/google/common/base/Predicate;)Z

    move-result v0

    return v0
.end method

.method public onLoadedToTheEndOfSource(Landroidx/media3/exoplayer/source/preload/PreloadMediaSource;)V
    .locals 3
    .param p1, "mediaSource"    # Landroidx/media3/exoplayer/source/preload/PreloadMediaSource;

    .line 844
    iget-object v0, p0, Landroidx/media3/exoplayer/source/preload/DefaultPreloadManager$PreloadMediaSourceControl;->this$0:Landroidx/media3/exoplayer/source/preload/DefaultPreloadManager;

    invoke-virtual {v0, p1}, Landroidx/media3/exoplayer/source/preload/DefaultPreloadManager;->getTargetPreloadStatusIfCurrentlyPreloading(Landroidx/media3/exoplayer/source/MediaSource;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media3/exoplayer/source/preload/DefaultPreloadManager$PreloadStatus;

    .line 845
    .local v0, "targetPreloadStatus":Landroidx/media3/exoplayer/source/preload/DefaultPreloadManager$PreloadStatus;
    if-eqz v0, :cond_1

    invoke-static {v0}, Landroidx/media3/exoplayer/source/preload/DefaultPreloadManager$PreloadStatus;->access$1600(Landroidx/media3/exoplayer/source/preload/DefaultPreloadManager$PreloadStatus;)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 850
    :cond_0
    iget-object v1, p0, Landroidx/media3/exoplayer/source/preload/DefaultPreloadManager$PreloadMediaSourceControl;->this$0:Landroidx/media3/exoplayer/source/preload/DefaultPreloadManager;

    new-instance v2, Landroidx/media3/exoplayer/source/preload/DefaultPreloadManager$PreloadMediaSourceControl$$ExternalSyntheticLambda5;

    invoke-direct {v2, v0}, Landroidx/media3/exoplayer/source/preload/DefaultPreloadManager$PreloadMediaSourceControl$$ExternalSyntheticLambda5;-><init>(Landroidx/media3/exoplayer/source/preload/DefaultPreloadManager$PreloadStatus;)V

    invoke-virtual {v1, p1, v2}, Landroidx/media3/exoplayer/source/preload/DefaultPreloadManager;->onCompleted(Landroidx/media3/exoplayer/source/MediaSource;Lcom/google/common/base/Predicate;)V

    .line 852
    return-void

    .line 848
    :cond_1
    :goto_0
    return-void
.end method

.method public onLoadingUnableToContinue(Landroidx/media3/exoplayer/source/preload/PreloadMediaSource;)Z
    .locals 3
    .param p1, "mediaSource"    # Landroidx/media3/exoplayer/source/preload/PreloadMediaSource;

    .line 869
    iget-object v0, p0, Landroidx/media3/exoplayer/source/preload/DefaultPreloadManager$PreloadMediaSourceControl;->this$0:Landroidx/media3/exoplayer/source/preload/DefaultPreloadManager;

    invoke-virtual {v0}, Landroidx/media3/exoplayer/source/preload/DefaultPreloadManager;->getMediaSourceHolderToClear()Landroidx/media3/exoplayer/source/preload/BasePreloadManager$MediaSourceHolder;

    move-result-object v0

    .line 870
    .local v0, "sourceHolder":Landroidx/media3/exoplayer/source/preload/BasePreloadManager$MediaSourceHolder;, "Landroidx/media3/exoplayer/source/preload/BasePreloadManager<Ljava/lang/Integer;Landroidx/media3/exoplayer/source/preload/DefaultPreloadManager$PreloadStatus;>.MediaSourceHolder;"
    if-eqz v0, :cond_0

    .line 871
    nop

    .line 872
    invoke-virtual {v0}, Landroidx/media3/exoplayer/source/preload/BasePreloadManager$MediaSourceHolder;->getMediaSource()Landroidx/media3/exoplayer/source/MediaSource;

    move-result-object v1

    check-cast v1, Landroidx/media3/exoplayer/source/preload/PreloadMediaSource;

    .line 873
    .local v1, "lowestPriorityPreloadMediaSource":Landroidx/media3/exoplayer/source/preload/PreloadMediaSource;
    invoke-virtual {v1}, Landroidx/media3/exoplayer/source/preload/PreloadMediaSource;->clear()V

    .line 874
    iget-object v2, p0, Landroidx/media3/exoplayer/source/preload/DefaultPreloadManager$PreloadMediaSourceControl;->this$0:Landroidx/media3/exoplayer/source/preload/DefaultPreloadManager;

    invoke-virtual {v2}, Landroidx/media3/exoplayer/source/preload/DefaultPreloadManager;->onSourceCleared()V

    .line 875
    const/4 v2, 0x1

    return v2

    .line 877
    .end local v1    # "lowestPriorityPreloadMediaSource":Landroidx/media3/exoplayer/source/preload/PreloadMediaSource;
    :cond_0
    const/4 v1, 0x0

    return v1
.end method

.method public onPreloadError(Landroidx/media3/exoplayer/source/preload/PreloadException;Landroidx/media3/exoplayer/source/preload/PreloadMediaSource;)V
    .locals 3
    .param p1, "error"    # Landroidx/media3/exoplayer/source/preload/PreloadException;
    .param p2, "mediaSource"    # Landroidx/media3/exoplayer/source/preload/PreloadMediaSource;

    .line 857
    iget-object v0, p0, Landroidx/media3/exoplayer/source/preload/DefaultPreloadManager$PreloadMediaSourceControl;->this$0:Landroidx/media3/exoplayer/source/preload/DefaultPreloadManager;

    invoke-virtual {v0, p2}, Landroidx/media3/exoplayer/source/preload/DefaultPreloadManager;->getTargetPreloadStatusIfCurrentlyPreloading(Landroidx/media3/exoplayer/source/MediaSource;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media3/exoplayer/source/preload/DefaultPreloadManager$PreloadStatus;

    .line 858
    .local v0, "targetPreloadStatus":Landroidx/media3/exoplayer/source/preload/DefaultPreloadManager$PreloadStatus;
    if-eqz v0, :cond_1

    invoke-static {v0}, Landroidx/media3/exoplayer/source/preload/DefaultPreloadManager$PreloadStatus;->access$1600(Landroidx/media3/exoplayer/source/preload/DefaultPreloadManager$PreloadStatus;)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 863
    :cond_0
    iget-object v1, p0, Landroidx/media3/exoplayer/source/preload/DefaultPreloadManager$PreloadMediaSourceControl;->this$0:Landroidx/media3/exoplayer/source/preload/DefaultPreloadManager;

    new-instance v2, Landroidx/media3/exoplayer/source/preload/DefaultPreloadManager$PreloadMediaSourceControl$$ExternalSyntheticLambda4;

    invoke-direct {v2, v0}, Landroidx/media3/exoplayer/source/preload/DefaultPreloadManager$PreloadMediaSourceControl$$ExternalSyntheticLambda4;-><init>(Landroidx/media3/exoplayer/source/preload/DefaultPreloadManager$PreloadStatus;)V

    invoke-virtual {v1, p1, p2, v2}, Landroidx/media3/exoplayer/source/preload/DefaultPreloadManager;->onError(Landroidx/media3/exoplayer/source/preload/PreloadException;Landroidx/media3/exoplayer/source/MediaSource;Lcom/google/common/base/Predicate;)V

    .line 865
    return-void

    .line 861
    :cond_1
    :goto_0
    return-void
.end method

.method public onSourcePrepared(Landroidx/media3/exoplayer/source/preload/PreloadMediaSource;)Z
    .locals 1
    .param p1, "mediaSource"    # Landroidx/media3/exoplayer/source/preload/PreloadMediaSource;

    .line 805
    new-instance v0, Landroidx/media3/exoplayer/source/preload/DefaultPreloadManager$PreloadMediaSourceControl$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Landroidx/media3/exoplayer/source/preload/DefaultPreloadManager$PreloadMediaSourceControl$$ExternalSyntheticLambda0;-><init>()V

    invoke-direct {p0, p1, v0}, Landroidx/media3/exoplayer/source/preload/DefaultPreloadManager$PreloadMediaSourceControl;->continueOrCompletePreloading(Landroidx/media3/exoplayer/source/preload/PreloadMediaSource;Lcom/google/common/base/Predicate;)Z

    move-result v0

    return v0
.end method

.method public onTracksSelected(Landroidx/media3/exoplayer/source/preload/PreloadMediaSource;)Z
    .locals 1
    .param p1, "mediaSource"    # Landroidx/media3/exoplayer/source/preload/PreloadMediaSource;

    .line 813
    new-instance v0, Landroidx/media3/exoplayer/source/preload/DefaultPreloadManager$PreloadMediaSourceControl$$ExternalSyntheticLambda2;

    invoke-direct {v0}, Landroidx/media3/exoplayer/source/preload/DefaultPreloadManager$PreloadMediaSourceControl$$ExternalSyntheticLambda2;-><init>()V

    invoke-direct {p0, p1, v0}, Landroidx/media3/exoplayer/source/preload/DefaultPreloadManager$PreloadMediaSourceControl;->continueOrCompletePreloading(Landroidx/media3/exoplayer/source/preload/PreloadMediaSource;Lcom/google/common/base/Predicate;)Z

    move-result v0

    return v0
.end method

.method public onUsedByPlayer(Landroidx/media3/exoplayer/source/preload/PreloadMediaSource;)V
    .locals 3
    .param p1, "mediaSource"    # Landroidx/media3/exoplayer/source/preload/PreloadMediaSource;

    .line 832
    iget-object v0, p0, Landroidx/media3/exoplayer/source/preload/DefaultPreloadManager$PreloadMediaSourceControl;->this$0:Landroidx/media3/exoplayer/source/preload/DefaultPreloadManager;

    invoke-virtual {v0, p1}, Landroidx/media3/exoplayer/source/preload/DefaultPreloadManager;->getTargetPreloadStatusIfCurrentlyPreloading(Landroidx/media3/exoplayer/source/MediaSource;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media3/exoplayer/source/preload/DefaultPreloadManager$PreloadStatus;

    .line 833
    .local v0, "targetPreloadStatus":Landroidx/media3/exoplayer/source/preload/DefaultPreloadManager$PreloadStatus;
    if-eqz v0, :cond_1

    invoke-static {v0}, Landroidx/media3/exoplayer/source/preload/DefaultPreloadManager$PreloadStatus;->access$1600(Landroidx/media3/exoplayer/source/preload/DefaultPreloadManager$PreloadStatus;)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 838
    :cond_0
    iget-object v1, p0, Landroidx/media3/exoplayer/source/preload/DefaultPreloadManager$PreloadMediaSourceControl;->this$0:Landroidx/media3/exoplayer/source/preload/DefaultPreloadManager;

    new-instance v2, Landroidx/media3/exoplayer/source/preload/DefaultPreloadManager$PreloadMediaSourceControl$$ExternalSyntheticLambda1;

    invoke-direct {v2, v0}, Landroidx/media3/exoplayer/source/preload/DefaultPreloadManager$PreloadMediaSourceControl$$ExternalSyntheticLambda1;-><init>(Landroidx/media3/exoplayer/source/preload/DefaultPreloadManager$PreloadStatus;)V

    invoke-virtual {v1, p1, v2}, Landroidx/media3/exoplayer/source/preload/DefaultPreloadManager;->onSkipped(Landroidx/media3/exoplayer/source/MediaSource;Lcom/google/common/base/Predicate;)V

    .line 840
    return-void

    .line 836
    :cond_1
    :goto_0
    return-void
.end method
