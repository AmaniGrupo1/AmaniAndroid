.class public final Landroidx/media3/exoplayer/source/preload/PreCacheHelper;
.super Ljava/lang/Object;
.source "PreCacheHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media3/exoplayer/source/preload/PreCacheHelper$Listener;,
        Landroidx/media3/exoplayer/source/preload/PreCacheHelper$DownloadCallback;,
        Landroidx/media3/exoplayer/source/preload/PreCacheHelper$Task;,
        Landroidx/media3/exoplayer/source/preload/PreCacheHelper$ReleasableExecutorSupplier;,
        Landroidx/media3/exoplayer/source/preload/PreCacheHelper$ReleasableSingleThreadExecutor;,
        Landroidx/media3/exoplayer/source/preload/PreCacheHelper$Factory;
    }
.end annotation


# static fields
.field static final DEFAULT_MIN_RETRY_COUNT:I = 0x5


# instance fields
.field private final applicationHandler:Landroid/os/Handler;

.field private currentDownloadCallback:Landroidx/media3/exoplayer/source/preload/PreCacheHelper$DownloadCallback;

.field private final downloadHelperFactory:Landroidx/media3/exoplayer/offline/DownloadHelper$Factory;

.field private final downloaderFactory:Landroidx/media3/exoplayer/offline/DownloaderFactory;

.field private final listener:Landroidx/media3/exoplayer/source/preload/PreCacheHelper$Listener;

.field private final mediaItem:Landroidx/media3/common/MediaItem;

.field private final preCacheHandler:Landroid/os/Handler;

.field private final testMediaSourceFactory:Landroidx/media3/exoplayer/source/MediaSource$Factory;


# direct methods
.method constructor <init>(Landroidx/media3/common/MediaItem;Landroidx/media3/exoplayer/source/MediaSource$Factory;Landroidx/media3/exoplayer/offline/DownloadHelper$Factory;Landroidx/media3/exoplayer/offline/DownloaderFactory;Landroid/os/Looper;Landroidx/media3/exoplayer/source/preload/PreCacheHelper$Listener;)V
    .locals 1
    .param p1, "mediaItem"    # Landroidx/media3/common/MediaItem;
    .param p2, "testMediaSourceFactory"    # Landroidx/media3/exoplayer/source/MediaSource$Factory;
    .param p3, "downloadHelperFactory"    # Landroidx/media3/exoplayer/offline/DownloadHelper$Factory;
    .param p4, "downloaderFactory"    # Landroidx/media3/exoplayer/offline/DownloaderFactory;
    .param p5, "preCacheLooper"    # Landroid/os/Looper;
    .param p6, "listener"    # Landroidx/media3/exoplayer/source/preload/PreCacheHelper$Listener;

    .line 292
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 293
    iput-object p1, p0, Landroidx/media3/exoplayer/source/preload/PreCacheHelper;->mediaItem:Landroidx/media3/common/MediaItem;

    .line 294
    iput-object p2, p0, Landroidx/media3/exoplayer/source/preload/PreCacheHelper;->testMediaSourceFactory:Landroidx/media3/exoplayer/source/MediaSource$Factory;

    .line 295
    iput-object p3, p0, Landroidx/media3/exoplayer/source/preload/PreCacheHelper;->downloadHelperFactory:Landroidx/media3/exoplayer/offline/DownloadHelper$Factory;

    .line 296
    iput-object p4, p0, Landroidx/media3/exoplayer/source/preload/PreCacheHelper;->downloaderFactory:Landroidx/media3/exoplayer/offline/DownloaderFactory;

    .line 297
    iput-object p6, p0, Landroidx/media3/exoplayer/source/preload/PreCacheHelper;->listener:Landroidx/media3/exoplayer/source/preload/PreCacheHelper$Listener;

    .line 298
    const/4 v0, 0x0

    invoke-static {p5, v0}, Landroidx/media3/common/util/Util;->createHandler(Landroid/os/Looper;Landroid/os/Handler$Callback;)Landroid/os/Handler;

    move-result-object v0

    iput-object v0, p0, Landroidx/media3/exoplayer/source/preload/PreCacheHelper;->preCacheHandler:Landroid/os/Handler;

    .line 299
    invoke-static {}, Landroidx/media3/common/util/Util;->createHandlerForCurrentOrMainLooper()Landroid/os/Handler;

    move-result-object v0

    iput-object v0, p0, Landroidx/media3/exoplayer/source/preload/PreCacheHelper;->applicationHandler:Landroid/os/Handler;

    .line 300
    return-void
.end method

.method static synthetic access$100(Landroidx/media3/exoplayer/source/preload/PreCacheHelper;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Landroidx/media3/exoplayer/source/preload/PreCacheHelper;

    .line 57
    iget-object v0, p0, Landroidx/media3/exoplayer/source/preload/PreCacheHelper;->preCacheHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$1000(Landroidx/media3/exoplayer/source/preload/PreCacheHelper;)Landroidx/media3/exoplayer/source/preload/PreCacheHelper$Listener;
    .locals 1
    .param p0, "x0"    # Landroidx/media3/exoplayer/source/preload/PreCacheHelper;

    .line 57
    iget-object v0, p0, Landroidx/media3/exoplayer/source/preload/PreCacheHelper;->listener:Landroidx/media3/exoplayer/source/preload/PreCacheHelper$Listener;

    return-object v0
.end method

.method static synthetic access$200(Landroidx/media3/exoplayer/source/preload/PreCacheHelper;)Landroidx/media3/exoplayer/source/MediaSource$Factory;
    .locals 1
    .param p0, "x0"    # Landroidx/media3/exoplayer/source/preload/PreCacheHelper;

    .line 57
    iget-object v0, p0, Landroidx/media3/exoplayer/source/preload/PreCacheHelper;->testMediaSourceFactory:Landroidx/media3/exoplayer/source/MediaSource$Factory;

    return-object v0
.end method

.method static synthetic access$300(Landroidx/media3/exoplayer/source/preload/PreCacheHelper;)Landroidx/media3/common/MediaItem;
    .locals 1
    .param p0, "x0"    # Landroidx/media3/exoplayer/source/preload/PreCacheHelper;

    .line 57
    iget-object v0, p0, Landroidx/media3/exoplayer/source/preload/PreCacheHelper;->mediaItem:Landroidx/media3/common/MediaItem;

    return-object v0
.end method

.method static synthetic access$400(Landroidx/media3/exoplayer/source/preload/PreCacheHelper;)Landroidx/media3/exoplayer/offline/DownloadHelper$Factory;
    .locals 1
    .param p0, "x0"    # Landroidx/media3/exoplayer/source/preload/PreCacheHelper;

    .line 57
    iget-object v0, p0, Landroidx/media3/exoplayer/source/preload/PreCacheHelper;->downloadHelperFactory:Landroidx/media3/exoplayer/offline/DownloadHelper$Factory;

    return-object v0
.end method

.method static synthetic access$600(Landroidx/media3/exoplayer/source/preload/PreCacheHelper;)Landroidx/media3/exoplayer/offline/DownloaderFactory;
    .locals 1
    .param p0, "x0"    # Landroidx/media3/exoplayer/source/preload/PreCacheHelper;

    .line 57
    iget-object v0, p0, Landroidx/media3/exoplayer/source/preload/PreCacheHelper;->downloaderFactory:Landroidx/media3/exoplayer/offline/DownloaderFactory;

    return-object v0
.end method

.method static synthetic access$900(Landroidx/media3/exoplayer/source/preload/PreCacheHelper;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Landroidx/media3/exoplayer/source/preload/PreCacheHelper;

    .line 57
    iget-object v0, p0, Landroidx/media3/exoplayer/source/preload/PreCacheHelper;->applicationHandler:Landroid/os/Handler;

    return-object v0
.end method


# virtual methods
.method synthetic lambda$preCache$0$androidx-media3-exoplayer-source-preload-PreCacheHelper(JJ)V
    .locals 8
    .param p1, "startPositionMs"    # J
    .param p3, "durationMs"    # J

    .line 314
    iget-object v0, p0, Landroidx/media3/exoplayer/source/preload/PreCacheHelper;->currentDownloadCallback:Landroidx/media3/exoplayer/source/preload/PreCacheHelper$DownloadCallback;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/media3/exoplayer/source/preload/PreCacheHelper;->currentDownloadCallback:Landroidx/media3/exoplayer/source/preload/PreCacheHelper$DownloadCallback;

    .line 315
    invoke-virtual {v0, p1, p2, p3, p4}, Landroidx/media3/exoplayer/source/preload/PreCacheHelper$DownloadCallback;->isReusable(JJ)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 316
    return-void

    .line 317
    :cond_0
    iget-object v0, p0, Landroidx/media3/exoplayer/source/preload/PreCacheHelper;->currentDownloadCallback:Landroidx/media3/exoplayer/source/preload/PreCacheHelper$DownloadCallback;

    if-eqz v0, :cond_1

    .line 318
    iget-object v0, p0, Landroidx/media3/exoplayer/source/preload/PreCacheHelper;->currentDownloadCallback:Landroidx/media3/exoplayer/source/preload/PreCacheHelper$DownloadCallback;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/media3/exoplayer/source/preload/PreCacheHelper$DownloadCallback;->cancel(Z)V

    .line 320
    :cond_1
    new-instance v2, Landroidx/media3/exoplayer/source/preload/PreCacheHelper$DownloadCallback;

    move-object v3, p0

    move-wide v4, p1

    move-wide v6, p3

    .end local p1    # "startPositionMs":J
    .end local p3    # "durationMs":J
    .local v4, "startPositionMs":J
    .local v6, "durationMs":J
    invoke-direct/range {v2 .. v7}, Landroidx/media3/exoplayer/source/preload/PreCacheHelper$DownloadCallback;-><init>(Landroidx/media3/exoplayer/source/preload/PreCacheHelper;JJ)V

    iput-object v2, v3, Landroidx/media3/exoplayer/source/preload/PreCacheHelper;->currentDownloadCallback:Landroidx/media3/exoplayer/source/preload/PreCacheHelper$DownloadCallback;

    .line 321
    return-void
.end method

.method synthetic lambda$release$2$androidx-media3-exoplayer-source-preload-PreCacheHelper(Z)V
    .locals 2
    .param p1, "removeCachedContent"    # Z

    .line 349
    iget-object v0, p0, Landroidx/media3/exoplayer/source/preload/PreCacheHelper;->currentDownloadCallback:Landroidx/media3/exoplayer/source/preload/PreCacheHelper$DownloadCallback;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 350
    iget-object v0, p0, Landroidx/media3/exoplayer/source/preload/PreCacheHelper;->currentDownloadCallback:Landroidx/media3/exoplayer/source/preload/PreCacheHelper$DownloadCallback;

    invoke-virtual {v0, p1}, Landroidx/media3/exoplayer/source/preload/PreCacheHelper$DownloadCallback;->cancel(Z)V

    .line 351
    iput-object v1, p0, Landroidx/media3/exoplayer/source/preload/PreCacheHelper;->currentDownloadCallback:Landroidx/media3/exoplayer/source/preload/PreCacheHelper$DownloadCallback;

    .line 353
    :cond_0
    iget-object v0, p0, Landroidx/media3/exoplayer/source/preload/PreCacheHelper;->preCacheHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 354
    return-void
.end method

.method synthetic lambda$stop$1$androidx-media3-exoplayer-source-preload-PreCacheHelper()V
    .locals 2

    .line 332
    iget-object v0, p0, Landroidx/media3/exoplayer/source/preload/PreCacheHelper;->currentDownloadCallback:Landroidx/media3/exoplayer/source/preload/PreCacheHelper$DownloadCallback;

    if-eqz v0, :cond_0

    .line 333
    iget-object v0, p0, Landroidx/media3/exoplayer/source/preload/PreCacheHelper;->currentDownloadCallback:Landroidx/media3/exoplayer/source/preload/PreCacheHelper$DownloadCallback;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/media3/exoplayer/source/preload/PreCacheHelper$DownloadCallback;->cancel(Z)V

    .line 335
    :cond_0
    return-void
.end method

.method public preCache(JJ)V
    .locals 7
    .param p1, "startPositionMs"    # J
    .param p3, "durationMs"    # J

    .line 312
    iget-object v0, p0, Landroidx/media3/exoplayer/source/preload/PreCacheHelper;->preCacheHandler:Landroid/os/Handler;

    new-instance v1, Landroidx/media3/exoplayer/source/preload/PreCacheHelper$$ExternalSyntheticLambda1;

    move-object v2, p0

    move-wide v3, p1

    move-wide v5, p3

    .end local p1    # "startPositionMs":J
    .end local p3    # "durationMs":J
    .local v3, "startPositionMs":J
    .local v5, "durationMs":J
    invoke-direct/range {v1 .. v6}, Landroidx/media3/exoplayer/source/preload/PreCacheHelper$$ExternalSyntheticLambda1;-><init>(Landroidx/media3/exoplayer/source/preload/PreCacheHelper;JJ)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 322
    return-void
.end method

.method public release(Z)V
    .locals 2
    .param p1, "removeCachedContent"    # Z

    .line 347
    iget-object v0, p0, Landroidx/media3/exoplayer/source/preload/PreCacheHelper;->preCacheHandler:Landroid/os/Handler;

    new-instance v1, Landroidx/media3/exoplayer/source/preload/PreCacheHelper$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0, p1}, Landroidx/media3/exoplayer/source/preload/PreCacheHelper$$ExternalSyntheticLambda2;-><init>(Landroidx/media3/exoplayer/source/preload/PreCacheHelper;Z)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 355
    return-void
.end method

.method public stop()V
    .locals 2

    .line 330
    iget-object v0, p0, Landroidx/media3/exoplayer/source/preload/PreCacheHelper;->preCacheHandler:Landroid/os/Handler;

    new-instance v1, Landroidx/media3/exoplayer/source/preload/PreCacheHelper$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Landroidx/media3/exoplayer/source/preload/PreCacheHelper$$ExternalSyntheticLambda0;-><init>(Landroidx/media3/exoplayer/source/preload/PreCacheHelper;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 336
    return-void
.end method
