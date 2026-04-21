.class final Landroidx/media3/exoplayer/source/preload/PreCacheHelper$DownloadCallback;
.super Ljava/lang/Object;
.source "PreCacheHelper.java"

# interfaces
.implements Landroidx/media3/exoplayer/offline/DownloadHelper$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media3/exoplayer/source/preload/PreCacheHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "DownloadCallback"
.end annotation


# instance fields
.field private final downloadHelper:Landroidx/media3/exoplayer/offline/DownloadHelper;

.field private downloader:Landroidx/media3/exoplayer/offline/Downloader;

.field private downloaderTask:Landroidx/media3/exoplayer/source/preload/PreCacheHelper$Task;

.field private final durationMs:J

.field private isCanceled:Z

.field private isPreparationOngoing:Z

.field private final lock:Ljava/lang/Object;

.field private pendingDownloadRequest:Landroidx/media3/exoplayer/offline/DownloadRequest;

.field private final releasableExecutorSupplier:Landroidx/media3/exoplayer/source/preload/PreCacheHelper$ReleasableExecutorSupplier;

.field private final startPositionMs:J

.field final synthetic this$0:Landroidx/media3/exoplayer/source/preload/PreCacheHelper;


# direct methods
.method public constructor <init>(Landroidx/media3/exoplayer/source/preload/PreCacheHelper;JJ)V
    .locals 4
    .param p2, "startPositionMs"    # J
    .param p4, "durationMs"    # J
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x0,
            0x0
        }
        names = {
            null,
            null,
            null
        }
    .end annotation

    .line 441
    iput-object p1, p0, Landroidx/media3/exoplayer/source/preload/PreCacheHelper$DownloadCallback;->this$0:Landroidx/media3/exoplayer/source/preload/PreCacheHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 442
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {p1}, Landroidx/media3/exoplayer/source/preload/PreCacheHelper;->access$100(Landroidx/media3/exoplayer/source/preload/PreCacheHelper;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    const/4 v2, 0x1

    if-ne v0, v1, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkState(Z)V

    .line 443
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroidx/media3/exoplayer/source/preload/PreCacheHelper$DownloadCallback;->lock:Ljava/lang/Object;

    .line 444
    iput-wide p2, p0, Landroidx/media3/exoplayer/source/preload/PreCacheHelper$DownloadCallback;->startPositionMs:J

    .line 445
    iput-wide p4, p0, Landroidx/media3/exoplayer/source/preload/PreCacheHelper$DownloadCallback;->durationMs:J

    .line 446
    invoke-static {p1}, Landroidx/media3/exoplayer/source/preload/PreCacheHelper;->access$200(Landroidx/media3/exoplayer/source/preload/PreCacheHelper;)Landroidx/media3/exoplayer/source/MediaSource$Factory;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 447
    iput-object v1, p0, Landroidx/media3/exoplayer/source/preload/PreCacheHelper$DownloadCallback;->releasableExecutorSupplier:Landroidx/media3/exoplayer/source/preload/PreCacheHelper$ReleasableExecutorSupplier;

    .line 448
    nop

    .line 449
    invoke-static {p1}, Landroidx/media3/exoplayer/source/preload/PreCacheHelper;->access$400(Landroidx/media3/exoplayer/source/preload/PreCacheHelper;)Landroidx/media3/exoplayer/offline/DownloadHelper$Factory;

    move-result-object v0

    invoke-static {p1}, Landroidx/media3/exoplayer/source/preload/PreCacheHelper;->access$200(Landroidx/media3/exoplayer/source/preload/PreCacheHelper;)Landroidx/media3/exoplayer/source/MediaSource$Factory;

    move-result-object v1

    invoke-static {p1}, Landroidx/media3/exoplayer/source/preload/PreCacheHelper;->access$300(Landroidx/media3/exoplayer/source/preload/PreCacheHelper;)Landroidx/media3/common/MediaItem;

    move-result-object p1

    invoke-interface {v1, p1}, Landroidx/media3/exoplayer/source/MediaSource$Factory;->createMediaSource(Landroidx/media3/common/MediaItem;)Landroidx/media3/exoplayer/source/MediaSource;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroidx/media3/exoplayer/offline/DownloadHelper$Factory;->create(Landroidx/media3/exoplayer/source/MediaSource;)Landroidx/media3/exoplayer/offline/DownloadHelper;

    move-result-object p1

    iput-object p1, p0, Landroidx/media3/exoplayer/source/preload/PreCacheHelper$DownloadCallback;->downloadHelper:Landroidx/media3/exoplayer/offline/DownloadHelper;

    goto :goto_1

    .line 451
    :cond_1
    new-instance v0, Landroidx/media3/exoplayer/source/preload/PreCacheHelper$ReleasableExecutorSupplier;

    invoke-static {p1}, Landroidx/media3/exoplayer/source/preload/PreCacheHelper;->access$100(Landroidx/media3/exoplayer/source/preload/PreCacheHelper;)Landroid/os/Handler;

    move-result-object v3

    invoke-direct {v0, v3, v1}, Landroidx/media3/exoplayer/source/preload/PreCacheHelper$ReleasableExecutorSupplier;-><init>(Landroid/os/Handler;Landroidx/media3/exoplayer/source/preload/PreCacheHelper$1;)V

    iput-object v0, p0, Landroidx/media3/exoplayer/source/preload/PreCacheHelper$DownloadCallback;->releasableExecutorSupplier:Landroidx/media3/exoplayer/source/preload/PreCacheHelper$ReleasableExecutorSupplier;

    .line 452
    invoke-static {p1}, Landroidx/media3/exoplayer/source/preload/PreCacheHelper;->access$400(Landroidx/media3/exoplayer/source/preload/PreCacheHelper;)Landroidx/media3/exoplayer/offline/DownloadHelper$Factory;

    move-result-object v0

    iget-object v1, p0, Landroidx/media3/exoplayer/source/preload/PreCacheHelper$DownloadCallback;->releasableExecutorSupplier:Landroidx/media3/exoplayer/source/preload/PreCacheHelper$ReleasableExecutorSupplier;

    invoke-virtual {v0, v1}, Landroidx/media3/exoplayer/offline/DownloadHelper$Factory;->setLoadExecutor(Lcom/google/common/base/Supplier;)Landroidx/media3/exoplayer/offline/DownloadHelper$Factory;

    .line 453
    invoke-static {p1}, Landroidx/media3/exoplayer/source/preload/PreCacheHelper;->access$400(Landroidx/media3/exoplayer/source/preload/PreCacheHelper;)Landroidx/media3/exoplayer/offline/DownloadHelper$Factory;

    move-result-object v0

    invoke-static {p1}, Landroidx/media3/exoplayer/source/preload/PreCacheHelper;->access$300(Landroidx/media3/exoplayer/source/preload/PreCacheHelper;)Landroidx/media3/common/MediaItem;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroidx/media3/exoplayer/offline/DownloadHelper$Factory;->create(Landroidx/media3/common/MediaItem;)Landroidx/media3/exoplayer/offline/DownloadHelper;

    move-result-object p1

    iput-object p1, p0, Landroidx/media3/exoplayer/source/preload/PreCacheHelper$DownloadCallback;->downloadHelper:Landroidx/media3/exoplayer/offline/DownloadHelper;

    .line 454
    iget-object p1, p0, Landroidx/media3/exoplayer/source/preload/PreCacheHelper$DownloadCallback;->releasableExecutorSupplier:Landroidx/media3/exoplayer/source/preload/PreCacheHelper$ReleasableExecutorSupplier;

    invoke-virtual {p1, p0}, Landroidx/media3/exoplayer/source/preload/PreCacheHelper$ReleasableExecutorSupplier;->setDownloadCallback(Landroidx/media3/exoplayer/source/preload/PreCacheHelper$DownloadCallback;)V

    .line 456
    :goto_1
    iput-boolean v2, p0, Landroidx/media3/exoplayer/source/preload/PreCacheHelper$DownloadCallback;->isPreparationOngoing:Z

    .line 457
    iget-object p1, p0, Landroidx/media3/exoplayer/source/preload/PreCacheHelper$DownloadCallback;->downloadHelper:Landroidx/media3/exoplayer/offline/DownloadHelper;

    invoke-virtual {p1, p0}, Landroidx/media3/exoplayer/offline/DownloadHelper;->prepare(Landroidx/media3/exoplayer/offline/DownloadHelper$Callback;)V

    .line 458
    return-void
.end method

.method private notifyListeners(Landroidx/media3/common/util/Consumer;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/media3/common/util/Consumer<",
            "Landroidx/media3/exoplayer/source/preload/PreCacheHelper$Listener;",
            ">;)V"
        }
    .end annotation

    .line 565
    .local p1, "callable":Landroidx/media3/common/util/Consumer;, "Landroidx/media3/common/util/Consumer<Landroidx/media3/exoplayer/source/preload/PreCacheHelper$Listener;>;"
    iget-object v0, p0, Landroidx/media3/exoplayer/source/preload/PreCacheHelper$DownloadCallback;->this$0:Landroidx/media3/exoplayer/source/preload/PreCacheHelper;

    invoke-static {v0}, Landroidx/media3/exoplayer/source/preload/PreCacheHelper;->access$900(Landroidx/media3/exoplayer/source/preload/PreCacheHelper;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Landroidx/media3/exoplayer/source/preload/PreCacheHelper$DownloadCallback$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0, p1}, Landroidx/media3/exoplayer/source/preload/PreCacheHelper$DownloadCallback$$ExternalSyntheticLambda2;-><init>(Landroidx/media3/exoplayer/source/preload/PreCacheHelper$DownloadCallback;Landroidx/media3/common/util/Consumer;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 576
    return-void
.end method


# virtual methods
.method public cancel(Z)V
    .locals 7
    .param p1, "removeCachedContent"    # Z

    .line 532
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    iget-object v1, p0, Landroidx/media3/exoplayer/source/preload/PreCacheHelper$DownloadCallback;->this$0:Landroidx/media3/exoplayer/source/preload/PreCacheHelper;

    invoke-static {v1}, Landroidx/media3/exoplayer/source/preload/PreCacheHelper;->access$100(Landroidx/media3/exoplayer/source/preload/PreCacheHelper;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    const/4 v2, 0x1

    if-ne v0, v1, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkState(Z)V

    .line 533
    iget-object v1, p0, Landroidx/media3/exoplayer/source/preload/PreCacheHelper$DownloadCallback;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 534
    :try_start_0
    iput-boolean v2, p0, Landroidx/media3/exoplayer/source/preload/PreCacheHelper$DownloadCallback;->isCanceled:Z

    .line 535
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 536
    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/media3/exoplayer/source/preload/PreCacheHelper$DownloadCallback;->pendingDownloadRequest:Landroidx/media3/exoplayer/offline/DownloadRequest;

    .line 537
    iget-object v0, p0, Landroidx/media3/exoplayer/source/preload/PreCacheHelper$DownloadCallback;->downloadHelper:Landroidx/media3/exoplayer/offline/DownloadHelper;

    invoke-virtual {v0}, Landroidx/media3/exoplayer/offline/DownloadHelper;->release()V

    .line 538
    iget-object v0, p0, Landroidx/media3/exoplayer/source/preload/PreCacheHelper$DownloadCallback;->downloaderTask:Landroidx/media3/exoplayer/source/preload/PreCacheHelper$Task;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroidx/media3/exoplayer/source/preload/PreCacheHelper$DownloadCallback;->downloaderTask:Landroidx/media3/exoplayer/source/preload/PreCacheHelper$Task;

    invoke-static {v0}, Landroidx/media3/exoplayer/source/preload/PreCacheHelper$Task;->access$800(Landroidx/media3/exoplayer/source/preload/PreCacheHelper$Task;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 539
    return-void

    .line 540
    :cond_1
    iget-object v0, p0, Landroidx/media3/exoplayer/source/preload/PreCacheHelper$DownloadCallback;->downloaderTask:Landroidx/media3/exoplayer/source/preload/PreCacheHelper$Task;

    if-eqz v0, :cond_2

    .line 541
    iget-object v0, p0, Landroidx/media3/exoplayer/source/preload/PreCacheHelper$DownloadCallback;->downloaderTask:Landroidx/media3/exoplayer/source/preload/PreCacheHelper$Task;

    invoke-virtual {v0}, Landroidx/media3/exoplayer/source/preload/PreCacheHelper$Task;->cancel()V

    .line 543
    :cond_2
    if-eqz p1, :cond_3

    iget-object v0, p0, Landroidx/media3/exoplayer/source/preload/PreCacheHelper$DownloadCallback;->downloader:Landroidx/media3/exoplayer/offline/Downloader;

    if-eqz v0, :cond_3

    .line 544
    new-instance v1, Landroidx/media3/exoplayer/source/preload/PreCacheHelper$Task;

    iget-object v2, p0, Landroidx/media3/exoplayer/source/preload/PreCacheHelper$DownloadCallback;->downloader:Landroidx/media3/exoplayer/offline/Downloader;

    const/4 v4, 0x5

    const/4 v6, 0x0

    const/4 v3, 0x1

    move-object v5, p0

    invoke-direct/range {v1 .. v6}, Landroidx/media3/exoplayer/source/preload/PreCacheHelper$Task;-><init>(Landroidx/media3/exoplayer/offline/Downloader;ZILandroidx/media3/exoplayer/source/preload/PreCacheHelper$DownloadCallback;Landroidx/media3/exoplayer/source/preload/PreCacheHelper$1;)V

    iput-object v1, v5, Landroidx/media3/exoplayer/source/preload/PreCacheHelper$DownloadCallback;->downloaderTask:Landroidx/media3/exoplayer/source/preload/PreCacheHelper$Task;

    .line 550
    iget-object v0, v5, Landroidx/media3/exoplayer/source/preload/PreCacheHelper$DownloadCallback;->downloaderTask:Landroidx/media3/exoplayer/source/preload/PreCacheHelper$Task;

    invoke-virtual {v0}, Landroidx/media3/exoplayer/source/preload/PreCacheHelper$Task;->start()V

    goto :goto_1

    .line 543
    :cond_3
    move-object v5, p0

    .line 552
    :goto_1
    return-void

    .line 535
    :catchall_0
    move-exception v0

    move-object v5, p0

    :goto_2
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw v0

    :catchall_1
    move-exception v0

    goto :goto_2
.end method

.method public isReusable(JJ)Z
    .locals 6
    .param p1, "startPositionMs"    # J
    .param p3, "durationMs"    # J

    .line 555
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    iget-object v1, p0, Landroidx/media3/exoplayer/source/preload/PreCacheHelper$DownloadCallback;->this$0:Landroidx/media3/exoplayer/source/preload/PreCacheHelper;

    invoke-static {v1}, Landroidx/media3/exoplayer/source/preload/PreCacheHelper;->access$100(Landroidx/media3/exoplayer/source/preload/PreCacheHelper;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne v0, v1, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v3

    :goto_0
    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkState(Z)V

    .line 556
    iget-object v0, p0, Landroidx/media3/exoplayer/source/preload/PreCacheHelper$DownloadCallback;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 557
    :try_start_0
    iget-boolean v1, p0, Landroidx/media3/exoplayer/source/preload/PreCacheHelper$DownloadCallback;->isCanceled:Z

    if-nez v1, :cond_2

    iget-wide v4, p0, Landroidx/media3/exoplayer/source/preload/PreCacheHelper$DownloadCallback;->startPositionMs:J

    cmp-long v1, p1, v4

    if-nez v1, :cond_2

    iget-wide v4, p0, Landroidx/media3/exoplayer/source/preload/PreCacheHelper$DownloadCallback;->durationMs:J

    cmp-long v1, p3, v4

    if-nez v1, :cond_2

    iget-boolean v1, p0, Landroidx/media3/exoplayer/source/preload/PreCacheHelper$DownloadCallback;->isPreparationOngoing:Z

    if-nez v1, :cond_1

    iget-object v1, p0, Landroidx/media3/exoplayer/source/preload/PreCacheHelper$DownloadCallback;->downloaderTask:Landroidx/media3/exoplayer/source/preload/PreCacheHelper$Task;

    if-eqz v1, :cond_2

    iget-object v1, p0, Landroidx/media3/exoplayer/source/preload/PreCacheHelper$DownloadCallback;->downloaderTask:Landroidx/media3/exoplayer/source/preload/PreCacheHelper$Task;

    .line 560
    invoke-static {v1}, Landroidx/media3/exoplayer/source/preload/PreCacheHelper$Task;->access$800(Landroidx/media3/exoplayer/source/preload/PreCacheHelper$Task;)Z

    move-result v1

    if-nez v1, :cond_2

    :cond_1
    goto :goto_1

    :cond_2
    move v2, v3

    :goto_1
    monitor-exit v0

    .line 557
    return v2

    .line 561
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method synthetic lambda$notifyListeners$6$androidx-media3-exoplayer-source-preload-PreCacheHelper$DownloadCallback(Landroidx/media3/common/util/Consumer;)V
    .locals 2
    .param p1, "callable"    # Landroidx/media3/common/util/Consumer;

    .line 567
    iget-object v0, p0, Landroidx/media3/exoplayer/source/preload/PreCacheHelper$DownloadCallback;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 568
    :try_start_0
    iget-boolean v1, p0, Landroidx/media3/exoplayer/source/preload/PreCacheHelper$DownloadCallback;->isCanceled:Z

    if-eqz v1, :cond_0

    .line 569
    monitor-exit v0

    return-void

    .line 571
    :cond_0
    iget-object v1, p0, Landroidx/media3/exoplayer/source/preload/PreCacheHelper$DownloadCallback;->this$0:Landroidx/media3/exoplayer/source/preload/PreCacheHelper;

    invoke-static {v1}, Landroidx/media3/exoplayer/source/preload/PreCacheHelper;->access$1000(Landroidx/media3/exoplayer/source/preload/PreCacheHelper;)Landroidx/media3/exoplayer/source/preload/PreCacheHelper$Listener;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 572
    iget-object v1, p0, Landroidx/media3/exoplayer/source/preload/PreCacheHelper$DownloadCallback;->this$0:Landroidx/media3/exoplayer/source/preload/PreCacheHelper;

    invoke-static {v1}, Landroidx/media3/exoplayer/source/preload/PreCacheHelper;->access$1000(Landroidx/media3/exoplayer/source/preload/PreCacheHelper;)Landroidx/media3/exoplayer/source/preload/PreCacheHelper$Listener;

    move-result-object v1

    invoke-interface {p1, v1}, Landroidx/media3/common/util/Consumer;->accept(Ljava/lang/Object;)V

    .line 574
    :cond_1
    monitor-exit v0

    .line 575
    return-void

    .line 574
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method synthetic lambda$onDownloadProgress$4$androidx-media3-exoplayer-source-preload-PreCacheHelper$DownloadCallback(Landroidx/media3/exoplayer/source/preload/PreCacheHelper$Task;Landroidx/media3/exoplayer/source/preload/PreCacheHelper$Listener;)V
    .locals 8
    .param p1, "task"    # Landroidx/media3/exoplayer/source/preload/PreCacheHelper$Task;
    .param p2, "listener"    # Landroidx/media3/exoplayer/source/preload/PreCacheHelper$Listener;

    .line 523
    iget-object v0, p0, Landroidx/media3/exoplayer/source/preload/PreCacheHelper$DownloadCallback;->this$0:Landroidx/media3/exoplayer/source/preload/PreCacheHelper;

    .line 524
    invoke-static {v0}, Landroidx/media3/exoplayer/source/preload/PreCacheHelper;->access$300(Landroidx/media3/exoplayer/source/preload/PreCacheHelper;)Landroidx/media3/common/MediaItem;

    move-result-object v2

    .line 525
    invoke-static {p1}, Landroidx/media3/exoplayer/source/preload/PreCacheHelper$Task;->access$1100(Landroidx/media3/exoplayer/source/preload/PreCacheHelper$Task;)J

    move-result-wide v3

    .line 526
    invoke-static {p1}, Landroidx/media3/exoplayer/source/preload/PreCacheHelper$Task;->access$1200(Landroidx/media3/exoplayer/source/preload/PreCacheHelper$Task;)J

    move-result-wide v5

    .line 527
    invoke-static {p1}, Landroidx/media3/exoplayer/source/preload/PreCacheHelper$Task;->access$1300(Landroidx/media3/exoplayer/source/preload/PreCacheHelper$Task;)F

    move-result v7

    .line 523
    move-object v1, p2

    .end local p2    # "listener":Landroidx/media3/exoplayer/source/preload/PreCacheHelper$Listener;
    .local v1, "listener":Landroidx/media3/exoplayer/source/preload/PreCacheHelper$Listener;
    invoke-interface/range {v1 .. v7}, Landroidx/media3/exoplayer/source/preload/PreCacheHelper$Listener;->onPreCacheProgress(Landroidx/media3/common/MediaItem;JJF)V

    return-void
.end method

.method synthetic lambda$onDownloadProgress$5$androidx-media3-exoplayer-source-preload-PreCacheHelper$DownloadCallback(Landroidx/media3/exoplayer/source/preload/PreCacheHelper$Task;)V
    .locals 1
    .param p1, "task"    # Landroidx/media3/exoplayer/source/preload/PreCacheHelper$Task;

    .line 518
    iget-object v0, p0, Landroidx/media3/exoplayer/source/preload/PreCacheHelper$DownloadCallback;->downloaderTask:Landroidx/media3/exoplayer/source/preload/PreCacheHelper$Task;

    if-eq p1, v0, :cond_0

    .line 519
    return-void

    .line 521
    :cond_0
    new-instance v0, Landroidx/media3/exoplayer/source/preload/PreCacheHelper$DownloadCallback$$ExternalSyntheticLambda5;

    invoke-direct {v0, p0, p1}, Landroidx/media3/exoplayer/source/preload/PreCacheHelper$DownloadCallback$$ExternalSyntheticLambda5;-><init>(Landroidx/media3/exoplayer/source/preload/PreCacheHelper$DownloadCallback;Landroidx/media3/exoplayer/source/preload/PreCacheHelper$Task;)V

    invoke-direct {p0, v0}, Landroidx/media3/exoplayer/source/preload/PreCacheHelper$DownloadCallback;->notifyListeners(Landroidx/media3/common/util/Consumer;)V

    .line 528
    return-void
.end method

.method synthetic lambda$onDownloadStopped$2$androidx-media3-exoplayer-source-preload-PreCacheHelper$DownloadCallback(Ljava/io/IOException;Landroidx/media3/exoplayer/source/preload/PreCacheHelper$Listener;)V
    .locals 1
    .param p1, "finalException"    # Ljava/io/IOException;
    .param p2, "listener"    # Landroidx/media3/exoplayer/source/preload/PreCacheHelper$Listener;

    .line 510
    iget-object v0, p0, Landroidx/media3/exoplayer/source/preload/PreCacheHelper$DownloadCallback;->this$0:Landroidx/media3/exoplayer/source/preload/PreCacheHelper;

    invoke-static {v0}, Landroidx/media3/exoplayer/source/preload/PreCacheHelper;->access$300(Landroidx/media3/exoplayer/source/preload/PreCacheHelper;)Landroidx/media3/common/MediaItem;

    move-result-object v0

    invoke-interface {p2, v0, p1}, Landroidx/media3/exoplayer/source/preload/PreCacheHelper$Listener;->onDownloadError(Landroidx/media3/common/MediaItem;Ljava/io/IOException;)V

    return-void
.end method

.method synthetic lambda$onDownloadStopped$3$androidx-media3-exoplayer-source-preload-PreCacheHelper$DownloadCallback(Landroidx/media3/exoplayer/source/preload/PreCacheHelper$Task;)V
    .locals 2
    .param p1, "task"    # Landroidx/media3/exoplayer/source/preload/PreCacheHelper$Task;

    .line 504
    iget-object v0, p0, Landroidx/media3/exoplayer/source/preload/PreCacheHelper$DownloadCallback;->downloaderTask:Landroidx/media3/exoplayer/source/preload/PreCacheHelper$Task;

    if-eq p1, v0, :cond_0

    .line 505
    return-void

    .line 507
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/media3/exoplayer/source/preload/PreCacheHelper$DownloadCallback;->downloaderTask:Landroidx/media3/exoplayer/source/preload/PreCacheHelper$Task;

    .line 508
    invoke-static {p1}, Landroidx/media3/exoplayer/source/preload/PreCacheHelper$Task;->access$1400(Landroidx/media3/exoplayer/source/preload/PreCacheHelper$Task;)Ljava/io/IOException;

    move-result-object v0

    .line 509
    .local v0, "finalException":Ljava/io/IOException;
    invoke-static {p1}, Landroidx/media3/exoplayer/source/preload/PreCacheHelper$Task;->access$800(Landroidx/media3/exoplayer/source/preload/PreCacheHelper$Task;)Z

    move-result v1

    if-nez v1, :cond_1

    if-eqz v0, :cond_1

    .line 510
    new-instance v1, Landroidx/media3/exoplayer/source/preload/PreCacheHelper$DownloadCallback$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, v0}, Landroidx/media3/exoplayer/source/preload/PreCacheHelper$DownloadCallback$$ExternalSyntheticLambda0;-><init>(Landroidx/media3/exoplayer/source/preload/PreCacheHelper$DownloadCallback;Ljava/io/IOException;)V

    invoke-direct {p0, v1}, Landroidx/media3/exoplayer/source/preload/PreCacheHelper$DownloadCallback;->notifyListeners(Landroidx/media3/common/util/Consumer;)V

    .line 512
    :cond_1
    return-void
.end method

.method synthetic lambda$onPrepareError$1$androidx-media3-exoplayer-source-preload-PreCacheHelper$DownloadCallback(Ljava/io/IOException;Landroidx/media3/exoplayer/source/preload/PreCacheHelper$Listener;)V
    .locals 1
    .param p1, "e"    # Ljava/io/IOException;
    .param p2, "listener"    # Landroidx/media3/exoplayer/source/preload/PreCacheHelper$Listener;

    .line 483
    iget-object v0, p0, Landroidx/media3/exoplayer/source/preload/PreCacheHelper$DownloadCallback;->this$0:Landroidx/media3/exoplayer/source/preload/PreCacheHelper;

    invoke-static {v0}, Landroidx/media3/exoplayer/source/preload/PreCacheHelper;->access$300(Landroidx/media3/exoplayer/source/preload/PreCacheHelper;)Landroidx/media3/common/MediaItem;

    move-result-object v0

    invoke-interface {p2, v0, p1}, Landroidx/media3/exoplayer/source/preload/PreCacheHelper$Listener;->onPrepareError(Landroidx/media3/common/MediaItem;Ljava/io/IOException;)V

    return-void
.end method

.method synthetic lambda$onPrepared$0$androidx-media3-exoplayer-source-preload-PreCacheHelper$DownloadCallback(Landroidx/media3/common/MediaItem;Landroidx/media3/exoplayer/source/preload/PreCacheHelper$Listener;)V
    .locals 1
    .param p1, "updatedMediaItem"    # Landroidx/media3/common/MediaItem;
    .param p2, "listener"    # Landroidx/media3/exoplayer/source/preload/PreCacheHelper$Listener;

    .line 469
    iget-object v0, p0, Landroidx/media3/exoplayer/source/preload/PreCacheHelper$DownloadCallback;->this$0:Landroidx/media3/exoplayer/source/preload/PreCacheHelper;

    invoke-static {v0}, Landroidx/media3/exoplayer/source/preload/PreCacheHelper;->access$300(Landroidx/media3/exoplayer/source/preload/PreCacheHelper;)Landroidx/media3/common/MediaItem;

    move-result-object v0

    invoke-interface {p2, v0, p1}, Landroidx/media3/exoplayer/source/preload/PreCacheHelper$Listener;->onPrepared(Landroidx/media3/common/MediaItem;Landroidx/media3/common/MediaItem;)V

    return-void
.end method

.method public maybeSubmitPendingDownloadRequest()V
    .locals 7

    .line 487
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    iget-object v1, p0, Landroidx/media3/exoplayer/source/preload/PreCacheHelper$DownloadCallback;->this$0:Landroidx/media3/exoplayer/source/preload/PreCacheHelper;

    invoke-static {v1}, Landroidx/media3/exoplayer/source/preload/PreCacheHelper;->access$100(Landroidx/media3/exoplayer/source/preload/PreCacheHelper;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkState(Z)V

    .line 488
    iget-object v0, p0, Landroidx/media3/exoplayer/source/preload/PreCacheHelper$DownloadCallback;->pendingDownloadRequest:Landroidx/media3/exoplayer/offline/DownloadRequest;

    if-eqz v0, :cond_1

    .line 489
    iget-object v0, p0, Landroidx/media3/exoplayer/source/preload/PreCacheHelper$DownloadCallback;->this$0:Landroidx/media3/exoplayer/source/preload/PreCacheHelper;

    invoke-static {v0}, Landroidx/media3/exoplayer/source/preload/PreCacheHelper;->access$600(Landroidx/media3/exoplayer/source/preload/PreCacheHelper;)Landroidx/media3/exoplayer/offline/DownloaderFactory;

    move-result-object v0

    iget-object v1, p0, Landroidx/media3/exoplayer/source/preload/PreCacheHelper$DownloadCallback;->pendingDownloadRequest:Landroidx/media3/exoplayer/offline/DownloadRequest;

    invoke-interface {v0, v1}, Landroidx/media3/exoplayer/offline/DownloaderFactory;->createDownloader(Landroidx/media3/exoplayer/offline/DownloadRequest;)Landroidx/media3/exoplayer/offline/Downloader;

    move-result-object v0

    iput-object v0, p0, Landroidx/media3/exoplayer/source/preload/PreCacheHelper$DownloadCallback;->downloader:Landroidx/media3/exoplayer/offline/Downloader;

    .line 490
    new-instance v1, Landroidx/media3/exoplayer/source/preload/PreCacheHelper$Task;

    iget-object v2, p0, Landroidx/media3/exoplayer/source/preload/PreCacheHelper$DownloadCallback;->downloader:Landroidx/media3/exoplayer/offline/Downloader;

    const/4 v4, 0x5

    const/4 v6, 0x0

    const/4 v3, 0x0

    move-object v5, p0

    invoke-direct/range {v1 .. v6}, Landroidx/media3/exoplayer/source/preload/PreCacheHelper$Task;-><init>(Landroidx/media3/exoplayer/offline/Downloader;ZILandroidx/media3/exoplayer/source/preload/PreCacheHelper$DownloadCallback;Landroidx/media3/exoplayer/source/preload/PreCacheHelper$1;)V

    iput-object v1, v5, Landroidx/media3/exoplayer/source/preload/PreCacheHelper$DownloadCallback;->downloaderTask:Landroidx/media3/exoplayer/source/preload/PreCacheHelper$Task;

    .line 496
    iget-object v0, v5, Landroidx/media3/exoplayer/source/preload/PreCacheHelper$DownloadCallback;->downloaderTask:Landroidx/media3/exoplayer/source/preload/PreCacheHelper$Task;

    invoke-virtual {v0}, Landroidx/media3/exoplayer/source/preload/PreCacheHelper$Task;->start()V

    .line 497
    const/4 v0, 0x0

    iput-object v0, v5, Landroidx/media3/exoplayer/source/preload/PreCacheHelper$DownloadCallback;->pendingDownloadRequest:Landroidx/media3/exoplayer/offline/DownloadRequest;

    goto :goto_1

    .line 488
    :cond_1
    move-object v5, p0

    .line 499
    :goto_1
    return-void
.end method

.method public onDownloadProgress(Landroidx/media3/exoplayer/source/preload/PreCacheHelper$Task;)V
    .locals 2
    .param p1, "task"    # Landroidx/media3/exoplayer/source/preload/PreCacheHelper$Task;

    .line 516
    iget-object v0, p0, Landroidx/media3/exoplayer/source/preload/PreCacheHelper$DownloadCallback;->this$0:Landroidx/media3/exoplayer/source/preload/PreCacheHelper;

    invoke-static {v0}, Landroidx/media3/exoplayer/source/preload/PreCacheHelper;->access$100(Landroidx/media3/exoplayer/source/preload/PreCacheHelper;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Landroidx/media3/exoplayer/source/preload/PreCacheHelper$DownloadCallback$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0, p1}, Landroidx/media3/exoplayer/source/preload/PreCacheHelper$DownloadCallback$$ExternalSyntheticLambda3;-><init>(Landroidx/media3/exoplayer/source/preload/PreCacheHelper$DownloadCallback;Landroidx/media3/exoplayer/source/preload/PreCacheHelper$Task;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 529
    return-void
.end method

.method public onDownloadStopped(Landroidx/media3/exoplayer/source/preload/PreCacheHelper$Task;)V
    .locals 2
    .param p1, "task"    # Landroidx/media3/exoplayer/source/preload/PreCacheHelper$Task;

    .line 502
    iget-object v0, p0, Landroidx/media3/exoplayer/source/preload/PreCacheHelper$DownloadCallback;->this$0:Landroidx/media3/exoplayer/source/preload/PreCacheHelper;

    invoke-static {v0}, Landroidx/media3/exoplayer/source/preload/PreCacheHelper;->access$100(Landroidx/media3/exoplayer/source/preload/PreCacheHelper;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Landroidx/media3/exoplayer/source/preload/PreCacheHelper$DownloadCallback$$ExternalSyntheticLambda6;

    invoke-direct {v1, p0, p1}, Landroidx/media3/exoplayer/source/preload/PreCacheHelper$DownloadCallback$$ExternalSyntheticLambda6;-><init>(Landroidx/media3/exoplayer/source/preload/PreCacheHelper$DownloadCallback;Landroidx/media3/exoplayer/source/preload/PreCacheHelper$Task;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 513
    return-void
.end method

.method public onPrepareError(Landroidx/media3/exoplayer/offline/DownloadHelper;Ljava/io/IOException;)V
    .locals 4
    .param p1, "helper"    # Landroidx/media3/exoplayer/offline/DownloadHelper;
    .param p2, "e"    # Ljava/io/IOException;

    .line 479
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    iget-object v1, p0, Landroidx/media3/exoplayer/source/preload/PreCacheHelper$DownloadCallback;->this$0:Landroidx/media3/exoplayer/source/preload/PreCacheHelper;

    invoke-static {v1}, Landroidx/media3/exoplayer/source/preload/PreCacheHelper;->access$100(Landroidx/media3/exoplayer/source/preload/PreCacheHelper;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne v0, v1, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v3

    :goto_0
    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkState(Z)V

    .line 480
    iget-object v0, p0, Landroidx/media3/exoplayer/source/preload/PreCacheHelper$DownloadCallback;->downloadHelper:Landroidx/media3/exoplayer/offline/DownloadHelper;

    if-ne p1, v0, :cond_1

    goto :goto_1

    :cond_1
    move v2, v3

    :goto_1
    invoke-static {v2}, Lcom/google/common/base/Preconditions;->checkState(Z)V

    .line 481
    iput-boolean v3, p0, Landroidx/media3/exoplayer/source/preload/PreCacheHelper$DownloadCallback;->isPreparationOngoing:Z

    .line 482
    iget-object v0, p0, Landroidx/media3/exoplayer/source/preload/PreCacheHelper$DownloadCallback;->downloadHelper:Landroidx/media3/exoplayer/offline/DownloadHelper;

    invoke-virtual {v0}, Landroidx/media3/exoplayer/offline/DownloadHelper;->release()V

    .line 483
    new-instance v0, Landroidx/media3/exoplayer/source/preload/PreCacheHelper$DownloadCallback$$ExternalSyntheticLambda4;

    invoke-direct {v0, p0, p2}, Landroidx/media3/exoplayer/source/preload/PreCacheHelper$DownloadCallback$$ExternalSyntheticLambda4;-><init>(Landroidx/media3/exoplayer/source/preload/PreCacheHelper$DownloadCallback;Ljava/io/IOException;)V

    invoke-direct {p0, v0}, Landroidx/media3/exoplayer/source/preload/PreCacheHelper$DownloadCallback;->notifyListeners(Landroidx/media3/common/util/Consumer;)V

    .line 484
    return-void
.end method

.method public onPrepared(Landroidx/media3/exoplayer/offline/DownloadHelper;Z)V
    .locals 10
    .param p1, "helper"    # Landroidx/media3/exoplayer/offline/DownloadHelper;
    .param p2, "tracksInfoAvailable"    # Z

    .line 462
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    iget-object v1, p0, Landroidx/media3/exoplayer/source/preload/PreCacheHelper$DownloadCallback;->this$0:Landroidx/media3/exoplayer/source/preload/PreCacheHelper;

    invoke-static {v1}, Landroidx/media3/exoplayer/source/preload/PreCacheHelper;->access$100(Landroidx/media3/exoplayer/source/preload/PreCacheHelper;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne v0, v1, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v3

    :goto_0
    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkState(Z)V

    .line 463
    iget-object v0, p0, Landroidx/media3/exoplayer/source/preload/PreCacheHelper$DownloadCallback;->downloadHelper:Landroidx/media3/exoplayer/offline/DownloadHelper;

    if-ne p1, v0, :cond_1

    goto :goto_1

    :cond_1
    move v2, v3

    :goto_1
    invoke-static {v2}, Lcom/google/common/base/Preconditions;->checkState(Z)V

    .line 464
    iput-boolean v3, p0, Landroidx/media3/exoplayer/source/preload/PreCacheHelper$DownloadCallback;->isPreparationOngoing:Z

    .line 465
    iget-wide v6, p0, Landroidx/media3/exoplayer/source/preload/PreCacheHelper$DownloadCallback;->startPositionMs:J

    iget-wide v8, p0, Landroidx/media3/exoplayer/source/preload/PreCacheHelper$DownloadCallback;->durationMs:J

    .line 466
    const/4 v5, 0x0

    move-object v4, p1

    .end local p1    # "helper":Landroidx/media3/exoplayer/offline/DownloadHelper;
    .local v4, "helper":Landroidx/media3/exoplayer/offline/DownloadHelper;
    invoke-virtual/range {v4 .. v9}, Landroidx/media3/exoplayer/offline/DownloadHelper;->getDownloadRequest([BJJ)Landroidx/media3/exoplayer/offline/DownloadRequest;

    move-result-object p1

    .line 467
    .local p1, "downloadRequest":Landroidx/media3/exoplayer/offline/DownloadRequest;
    iget-object v0, p0, Landroidx/media3/exoplayer/source/preload/PreCacheHelper$DownloadCallback;->downloadHelper:Landroidx/media3/exoplayer/offline/DownloadHelper;

    invoke-virtual {v0}, Landroidx/media3/exoplayer/offline/DownloadHelper;->release()V

    .line 468
    iget-object v0, p0, Landroidx/media3/exoplayer/source/preload/PreCacheHelper$DownloadCallback;->this$0:Landroidx/media3/exoplayer/source/preload/PreCacheHelper;

    invoke-static {v0}, Landroidx/media3/exoplayer/source/preload/PreCacheHelper;->access$300(Landroidx/media3/exoplayer/source/preload/PreCacheHelper;)Landroidx/media3/common/MediaItem;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/media3/common/MediaItem;->buildUpon()Landroidx/media3/common/MediaItem$Builder;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/media3/exoplayer/offline/DownloadRequest;->toMediaItem(Landroidx/media3/common/MediaItem$Builder;)Landroidx/media3/common/MediaItem;

    move-result-object v0

    .line 469
    .local v0, "updatedMediaItem":Landroidx/media3/common/MediaItem;
    new-instance v1, Landroidx/media3/exoplayer/source/preload/PreCacheHelper$DownloadCallback$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0, v0}, Landroidx/media3/exoplayer/source/preload/PreCacheHelper$DownloadCallback$$ExternalSyntheticLambda1;-><init>(Landroidx/media3/exoplayer/source/preload/PreCacheHelper$DownloadCallback;Landroidx/media3/common/MediaItem;)V

    invoke-direct {p0, v1}, Landroidx/media3/exoplayer/source/preload/PreCacheHelper$DownloadCallback;->notifyListeners(Landroidx/media3/common/util/Consumer;)V

    .line 470
    iput-object p1, p0, Landroidx/media3/exoplayer/source/preload/PreCacheHelper$DownloadCallback;->pendingDownloadRequest:Landroidx/media3/exoplayer/offline/DownloadRequest;

    .line 471
    iget-object v1, p0, Landroidx/media3/exoplayer/source/preload/PreCacheHelper$DownloadCallback;->releasableExecutorSupplier:Landroidx/media3/exoplayer/source/preload/PreCacheHelper$ReleasableExecutorSupplier;

    if-eqz v1, :cond_2

    iget-object v1, p0, Landroidx/media3/exoplayer/source/preload/PreCacheHelper$DownloadCallback;->releasableExecutorSupplier:Landroidx/media3/exoplayer/source/preload/PreCacheHelper$ReleasableExecutorSupplier;

    .line 472
    invoke-virtual {v1}, Landroidx/media3/exoplayer/source/preload/PreCacheHelper$ReleasableExecutorSupplier;->wereExecutorsReleased()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 473
    :cond_2
    invoke-virtual {p0}, Landroidx/media3/exoplayer/source/preload/PreCacheHelper$DownloadCallback;->maybeSubmitPendingDownloadRequest()V

    .line 475
    :cond_3
    return-void
.end method
