.class final Landroidx/media3/exoplayer/source/preload/DefaultPreloadManager$PreCacheHelperListener;
.super Ljava/lang/Object;
.source "DefaultPreloadManager.java"

# interfaces
.implements Landroidx/media3/exoplayer/source/preload/PreCacheHelper$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media3/exoplayer/source/preload/DefaultPreloadManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "PreCacheHelperListener"
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

    .line 742
    iput-object p1, p0, Landroidx/media3/exoplayer/source/preload/DefaultPreloadManager$PreCacheHelperListener;->this$0:Landroidx/media3/exoplayer/source/preload/DefaultPreloadManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroidx/media3/exoplayer/source/preload/DefaultPreloadManager;Landroidx/media3/exoplayer/source/preload/DefaultPreloadManager$1;)V
    .locals 0
    .param p1, "x0"    # Landroidx/media3/exoplayer/source/preload/DefaultPreloadManager;
    .param p2, "x1"    # Landroidx/media3/exoplayer/source/preload/DefaultPreloadManager$1;

    .line 742
    invoke-direct {p0, p1}, Landroidx/media3/exoplayer/source/preload/DefaultPreloadManager$PreCacheHelperListener;-><init>(Landroidx/media3/exoplayer/source/preload/DefaultPreloadManager;)V

    return-void
.end method

.method static synthetic lambda$onDownloadError$2(Landroidx/media3/exoplayer/source/preload/DefaultPreloadManager$PreloadStatus;Landroidx/media3/exoplayer/source/preload/DefaultPreloadManager$PreloadStatus;)Z
    .locals 1
    .param p0, "targetPreloadStatus"    # Landroidx/media3/exoplayer/source/preload/DefaultPreloadManager$PreloadStatus;
    .param p1, "preloadStatus"    # Landroidx/media3/exoplayer/source/preload/DefaultPreloadManager$PreloadStatus;

    .line 798
    invoke-virtual {p1, p0}, Landroidx/media3/exoplayer/source/preload/DefaultPreloadManager$PreloadStatus;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method static synthetic lambda$onPreCacheProgress$0(Landroidx/media3/exoplayer/source/preload/DefaultPreloadManager$PreloadStatus;Landroidx/media3/exoplayer/source/preload/DefaultPreloadManager$PreloadStatus;)Z
    .locals 1
    .param p0, "targetPreloadStatus"    # Landroidx/media3/exoplayer/source/preload/DefaultPreloadManager$PreloadStatus;
    .param p1, "preloadStatus"    # Landroidx/media3/exoplayer/source/preload/DefaultPreloadManager$PreloadStatus;

    .line 769
    invoke-virtual {p1, p0}, Landroidx/media3/exoplayer/source/preload/DefaultPreloadManager$PreloadStatus;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method static synthetic lambda$onPrepareError$1(Landroidx/media3/exoplayer/source/preload/DefaultPreloadManager$PreloadStatus;Landroidx/media3/exoplayer/source/preload/DefaultPreloadManager$PreloadStatus;)Z
    .locals 1
    .param p0, "targetPreloadStatus"    # Landroidx/media3/exoplayer/source/preload/DefaultPreloadManager$PreloadStatus;
    .param p1, "preloadStatus"    # Landroidx/media3/exoplayer/source/preload/DefaultPreloadManager$PreloadStatus;

    .line 784
    invoke-virtual {p1, p0}, Landroidx/media3/exoplayer/source/preload/DefaultPreloadManager$PreloadStatus;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public onDownloadError(Landroidx/media3/common/MediaItem;Ljava/io/IOException;)V
    .locals 4
    .param p1, "mediaItem"    # Landroidx/media3/common/MediaItem;
    .param p2, "error"    # Ljava/io/IOException;

    .line 789
    iget-object v0, p0, Landroidx/media3/exoplayer/source/preload/DefaultPreloadManager$PreCacheHelperListener;->this$0:Landroidx/media3/exoplayer/source/preload/DefaultPreloadManager;

    invoke-virtual {v0, p1}, Landroidx/media3/exoplayer/source/preload/DefaultPreloadManager;->getTargetPreloadStatusIfCurrentlyPreloading(Landroidx/media3/common/MediaItem;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media3/exoplayer/source/preload/DefaultPreloadManager$PreloadStatus;

    .line 790
    .local v0, "targetPreloadStatus":Landroidx/media3/exoplayer/source/preload/DefaultPreloadManager$PreloadStatus;
    if-eqz v0, :cond_1

    invoke-static {v0}, Landroidx/media3/exoplayer/source/preload/DefaultPreloadManager$PreloadStatus;->access$1400(Landroidx/media3/exoplayer/source/preload/DefaultPreloadManager$PreloadStatus;)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 795
    :cond_0
    new-instance v1, Landroidx/media3/exoplayer/source/preload/PreloadException;

    const/4 v2, 0x0

    invoke-direct {v1, p1, v2, p2}, Landroidx/media3/exoplayer/source/preload/PreloadException;-><init>(Landroidx/media3/common/MediaItem;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 797
    .local v1, "preloadException":Landroidx/media3/exoplayer/source/preload/PreloadException;
    iget-object v2, p0, Landroidx/media3/exoplayer/source/preload/DefaultPreloadManager$PreCacheHelperListener;->this$0:Landroidx/media3/exoplayer/source/preload/DefaultPreloadManager;

    new-instance v3, Landroidx/media3/exoplayer/source/preload/DefaultPreloadManager$PreCacheHelperListener$$ExternalSyntheticLambda2;

    invoke-direct {v3, v0}, Landroidx/media3/exoplayer/source/preload/DefaultPreloadManager$PreCacheHelperListener$$ExternalSyntheticLambda2;-><init>(Landroidx/media3/exoplayer/source/preload/DefaultPreloadManager$PreloadStatus;)V

    invoke-virtual {v2, v1, p1, v3}, Landroidx/media3/exoplayer/source/preload/DefaultPreloadManager;->onError(Landroidx/media3/exoplayer/source/preload/PreloadException;Landroidx/media3/common/MediaItem;Lcom/google/common/base/Predicate;)V

    .line 799
    return-void

    .line 793
    .end local v1    # "preloadException":Landroidx/media3/exoplayer/source/preload/PreloadException;
    :cond_1
    :goto_0
    return-void
.end method

.method public onPreCacheProgress(Landroidx/media3/common/MediaItem;JJF)V
    .locals 3
    .param p1, "mediaItem"    # Landroidx/media3/common/MediaItem;
    .param p2, "contentLength"    # J
    .param p4, "bytesDownloaded"    # J
    .param p6, "percentageDownloaded"    # F

    .line 761
    const/high16 v0, 0x42c80000    # 100.0f

    cmpl-float v0, p6, v0

    if-nez v0, :cond_2

    .line 762
    iget-object v0, p0, Landroidx/media3/exoplayer/source/preload/DefaultPreloadManager$PreCacheHelperListener;->this$0:Landroidx/media3/exoplayer/source/preload/DefaultPreloadManager;

    invoke-virtual {v0, p1}, Landroidx/media3/exoplayer/source/preload/DefaultPreloadManager;->getTargetPreloadStatusIfCurrentlyPreloading(Landroidx/media3/common/MediaItem;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media3/exoplayer/source/preload/DefaultPreloadManager$PreloadStatus;

    .line 763
    .local v0, "targetPreloadStatus":Landroidx/media3/exoplayer/source/preload/DefaultPreloadManager$PreloadStatus;
    if-eqz v0, :cond_1

    invoke-static {v0}, Landroidx/media3/exoplayer/source/preload/DefaultPreloadManager$PreloadStatus;->access$1400(Landroidx/media3/exoplayer/source/preload/DefaultPreloadManager$PreloadStatus;)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 768
    :cond_0
    iget-object v1, p0, Landroidx/media3/exoplayer/source/preload/DefaultPreloadManager$PreCacheHelperListener;->this$0:Landroidx/media3/exoplayer/source/preload/DefaultPreloadManager;

    new-instance v2, Landroidx/media3/exoplayer/source/preload/DefaultPreloadManager$PreCacheHelperListener$$ExternalSyntheticLambda1;

    invoke-direct {v2, v0}, Landroidx/media3/exoplayer/source/preload/DefaultPreloadManager$PreCacheHelperListener$$ExternalSyntheticLambda1;-><init>(Landroidx/media3/exoplayer/source/preload/DefaultPreloadManager$PreloadStatus;)V

    invoke-virtual {v1, p1, v2}, Landroidx/media3/exoplayer/source/preload/DefaultPreloadManager;->onCompleted(Landroidx/media3/common/MediaItem;Lcom/google/common/base/Predicate;)V

    goto :goto_1

    .line 766
    :cond_1
    :goto_0
    return-void

    .line 771
    .end local v0    # "targetPreloadStatus":Landroidx/media3/exoplayer/source/preload/DefaultPreloadManager$PreloadStatus;
    :cond_2
    :goto_1
    return-void
.end method

.method public onPrepareError(Landroidx/media3/common/MediaItem;Ljava/io/IOException;)V
    .locals 4
    .param p1, "mediaItem"    # Landroidx/media3/common/MediaItem;
    .param p2, "error"    # Ljava/io/IOException;

    .line 775
    iget-object v0, p0, Landroidx/media3/exoplayer/source/preload/DefaultPreloadManager$PreCacheHelperListener;->this$0:Landroidx/media3/exoplayer/source/preload/DefaultPreloadManager;

    invoke-virtual {v0, p1}, Landroidx/media3/exoplayer/source/preload/DefaultPreloadManager;->getTargetPreloadStatusIfCurrentlyPreloading(Landroidx/media3/common/MediaItem;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media3/exoplayer/source/preload/DefaultPreloadManager$PreloadStatus;

    .line 776
    .local v0, "targetPreloadStatus":Landroidx/media3/exoplayer/source/preload/DefaultPreloadManager$PreloadStatus;
    if-eqz v0, :cond_1

    invoke-static {v0}, Landroidx/media3/exoplayer/source/preload/DefaultPreloadManager$PreloadStatus;->access$1400(Landroidx/media3/exoplayer/source/preload/DefaultPreloadManager$PreloadStatus;)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 781
    :cond_0
    new-instance v1, Landroidx/media3/exoplayer/source/preload/PreloadException;

    const/4 v2, 0x0

    invoke-direct {v1, p1, v2, p2}, Landroidx/media3/exoplayer/source/preload/PreloadException;-><init>(Landroidx/media3/common/MediaItem;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 783
    .local v1, "preloadException":Landroidx/media3/exoplayer/source/preload/PreloadException;
    iget-object v2, p0, Landroidx/media3/exoplayer/source/preload/DefaultPreloadManager$PreCacheHelperListener;->this$0:Landroidx/media3/exoplayer/source/preload/DefaultPreloadManager;

    new-instance v3, Landroidx/media3/exoplayer/source/preload/DefaultPreloadManager$PreCacheHelperListener$$ExternalSyntheticLambda0;

    invoke-direct {v3, v0}, Landroidx/media3/exoplayer/source/preload/DefaultPreloadManager$PreCacheHelperListener$$ExternalSyntheticLambda0;-><init>(Landroidx/media3/exoplayer/source/preload/DefaultPreloadManager$PreloadStatus;)V

    invoke-virtual {v2, v1, p1, v3}, Landroidx/media3/exoplayer/source/preload/DefaultPreloadManager;->onError(Landroidx/media3/exoplayer/source/preload/PreloadException;Landroidx/media3/common/MediaItem;Lcom/google/common/base/Predicate;)V

    .line 785
    return-void

    .line 779
    .end local v1    # "preloadException":Landroidx/media3/exoplayer/source/preload/PreloadException;
    :cond_1
    :goto_0
    return-void
.end method

.method public onPrepared(Landroidx/media3/common/MediaItem;Landroidx/media3/common/MediaItem;)V
    .locals 3
    .param p1, "originalMediaItem"    # Landroidx/media3/common/MediaItem;
    .param p2, "updatedMediaItem"    # Landroidx/media3/common/MediaItem;

    .line 746
    iget-object v0, p0, Landroidx/media3/exoplayer/source/preload/DefaultPreloadManager$PreCacheHelperListener;->this$0:Landroidx/media3/exoplayer/source/preload/DefaultPreloadManager;

    .line 747
    invoke-virtual {v0, p1}, Landroidx/media3/exoplayer/source/preload/DefaultPreloadManager;->getTargetPreloadStatusIfCurrentlyPreloading(Landroidx/media3/common/MediaItem;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media3/exoplayer/source/preload/DefaultPreloadManager$PreloadStatus;

    .line 748
    .local v0, "targetPreloadStatus":Landroidx/media3/exoplayer/source/preload/DefaultPreloadManager$PreloadStatus;
    if-eqz v0, :cond_1

    invoke-static {v0}, Landroidx/media3/exoplayer/source/preload/DefaultPreloadManager$PreloadStatus;->access$1400(Landroidx/media3/exoplayer/source/preload/DefaultPreloadManager$PreloadStatus;)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 753
    :cond_0
    iget-object v1, p0, Landroidx/media3/exoplayer/source/preload/DefaultPreloadManager$PreCacheHelperListener;->this$0:Landroidx/media3/exoplayer/source/preload/DefaultPreloadManager;

    .line 754
    invoke-static {v1}, Landroidx/media3/exoplayer/source/preload/DefaultPreloadManager;->access$1500(Landroidx/media3/exoplayer/source/preload/DefaultPreloadManager;)Landroidx/media3/exoplayer/source/preload/PreloadMediaSource$Factory;

    move-result-object v1

    invoke-virtual {v1, p2}, Landroidx/media3/exoplayer/source/preload/PreloadMediaSource$Factory;->createMediaSource(Landroidx/media3/common/MediaItem;)Landroidx/media3/exoplayer/source/preload/PreloadMediaSource;

    move-result-object v1

    .line 755
    .local v1, "updatedMediaSource":Landroidx/media3/exoplayer/source/MediaSource;
    iget-object v2, p0, Landroidx/media3/exoplayer/source/preload/DefaultPreloadManager$PreCacheHelperListener;->this$0:Landroidx/media3/exoplayer/source/preload/DefaultPreloadManager;

    invoke-virtual {v2, p1, v1}, Landroidx/media3/exoplayer/source/preload/DefaultPreloadManager;->onMediaSourceUpdated(Landroidx/media3/common/MediaItem;Landroidx/media3/exoplayer/source/MediaSource;)V

    .line 756
    return-void

    .line 751
    .end local v1    # "updatedMediaSource":Landroidx/media3/exoplayer/source/MediaSource;
    :cond_1
    :goto_0
    return-void
.end method
