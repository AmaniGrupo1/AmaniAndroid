.class Landroidx/media3/exoplayer/source/preload/PreCacheHelper$Task;
.super Ljava/lang/Thread;
.source "PreCacheHelper.java"

# interfaces
.implements Landroidx/media3/exoplayer/offline/Downloader$ProgressListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media3/exoplayer/source/preload/PreCacheHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Task"
.end annotation


# instance fields
.field private volatile bytesDownloaded:J

.field private volatile contentLength:J

.field private downloadCallback:Landroidx/media3/exoplayer/source/preload/PreCacheHelper$DownloadCallback;

.field private final downloader:Landroidx/media3/exoplayer/offline/Downloader;

.field private volatile finalException:Ljava/io/IOException;

.field private volatile isCanceled:Z

.field private final isRemove:Z

.field private final minRetryCount:I

.field private volatile percentDownloaded:F


# direct methods
.method private constructor <init>(Landroidx/media3/exoplayer/offline/Downloader;ZILandroidx/media3/exoplayer/source/preload/PreCacheHelper$DownloadCallback;)V
    .locals 2
    .param p1, "downloader"    # Landroidx/media3/exoplayer/offline/Downloader;
    .param p2, "isRemove"    # Z
    .param p3, "minRetryCount"    # I
    .param p4, "downloadCallback"    # Landroidx/media3/exoplayer/source/preload/PreCacheHelper$DownloadCallback;

    .line 595
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 596
    iput-object p1, p0, Landroidx/media3/exoplayer/source/preload/PreCacheHelper$Task;->downloader:Landroidx/media3/exoplayer/offline/Downloader;

    .line 597
    iput-boolean p2, p0, Landroidx/media3/exoplayer/source/preload/PreCacheHelper$Task;->isRemove:Z

    .line 598
    iput p3, p0, Landroidx/media3/exoplayer/source/preload/PreCacheHelper$Task;->minRetryCount:I

    .line 599
    iput-object p4, p0, Landroidx/media3/exoplayer/source/preload/PreCacheHelper$Task;->downloadCallback:Landroidx/media3/exoplayer/source/preload/PreCacheHelper$DownloadCallback;

    .line 600
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Landroidx/media3/exoplayer/source/preload/PreCacheHelper$Task;->contentLength:J

    .line 601
    return-void
.end method

.method synthetic constructor <init>(Landroidx/media3/exoplayer/offline/Downloader;ZILandroidx/media3/exoplayer/source/preload/PreCacheHelper$DownloadCallback;Landroidx/media3/exoplayer/source/preload/PreCacheHelper$1;)V
    .locals 0
    .param p1, "x0"    # Landroidx/media3/exoplayer/offline/Downloader;
    .param p2, "x1"    # Z
    .param p3, "x2"    # I
    .param p4, "x3"    # Landroidx/media3/exoplayer/source/preload/PreCacheHelper$DownloadCallback;
    .param p5, "x4"    # Landroidx/media3/exoplayer/source/preload/PreCacheHelper$1;

    .line 579
    invoke-direct {p0, p1, p2, p3, p4}, Landroidx/media3/exoplayer/source/preload/PreCacheHelper$Task;-><init>(Landroidx/media3/exoplayer/offline/Downloader;ZILandroidx/media3/exoplayer/source/preload/PreCacheHelper$DownloadCallback;)V

    return-void
.end method

.method static synthetic access$1100(Landroidx/media3/exoplayer/source/preload/PreCacheHelper$Task;)J
    .locals 2
    .param p0, "x0"    # Landroidx/media3/exoplayer/source/preload/PreCacheHelper$Task;

    .line 579
    iget-wide v0, p0, Landroidx/media3/exoplayer/source/preload/PreCacheHelper$Task;->contentLength:J

    return-wide v0
.end method

.method static synthetic access$1200(Landroidx/media3/exoplayer/source/preload/PreCacheHelper$Task;)J
    .locals 2
    .param p0, "x0"    # Landroidx/media3/exoplayer/source/preload/PreCacheHelper$Task;

    .line 579
    iget-wide v0, p0, Landroidx/media3/exoplayer/source/preload/PreCacheHelper$Task;->bytesDownloaded:J

    return-wide v0
.end method

.method static synthetic access$1300(Landroidx/media3/exoplayer/source/preload/PreCacheHelper$Task;)F
    .locals 1
    .param p0, "x0"    # Landroidx/media3/exoplayer/source/preload/PreCacheHelper$Task;

    .line 579
    iget v0, p0, Landroidx/media3/exoplayer/source/preload/PreCacheHelper$Task;->percentDownloaded:F

    return v0
.end method

.method static synthetic access$1400(Landroidx/media3/exoplayer/source/preload/PreCacheHelper$Task;)Ljava/io/IOException;
    .locals 1
    .param p0, "x0"    # Landroidx/media3/exoplayer/source/preload/PreCacheHelper$Task;

    .line 579
    iget-object v0, p0, Landroidx/media3/exoplayer/source/preload/PreCacheHelper$Task;->finalException:Ljava/io/IOException;

    return-object v0
.end method

.method static synthetic access$800(Landroidx/media3/exoplayer/source/preload/PreCacheHelper$Task;)Z
    .locals 1
    .param p0, "x0"    # Landroidx/media3/exoplayer/source/preload/PreCacheHelper$Task;

    .line 579
    iget-boolean v0, p0, Landroidx/media3/exoplayer/source/preload/PreCacheHelper$Task;->isRemove:Z

    return v0
.end method

.method private static getRetryDelayMillis(I)I
    .locals 2
    .param p0, "errorCount"    # I

    .line 665
    add-int/lit8 v0, p0, -0x1

    mul-int/lit16 v0, v0, 0x3e8

    const/16 v1, 0x1388

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    return v0
.end method


# virtual methods
.method public cancel()V
    .locals 1

    .line 605
    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/media3/exoplayer/source/preload/PreCacheHelper$Task;->downloadCallback:Landroidx/media3/exoplayer/source/preload/PreCacheHelper$DownloadCallback;

    .line 606
    iget-boolean v0, p0, Landroidx/media3/exoplayer/source/preload/PreCacheHelper$Task;->isCanceled:Z

    if-nez v0, :cond_0

    .line 607
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/media3/exoplayer/source/preload/PreCacheHelper$Task;->isCanceled:Z

    .line 608
    iget-object v0, p0, Landroidx/media3/exoplayer/source/preload/PreCacheHelper$Task;->downloader:Landroidx/media3/exoplayer/offline/Downloader;

    invoke-interface {v0}, Landroidx/media3/exoplayer/offline/Downloader;->cancel()V

    .line 609
    invoke-virtual {p0}, Landroidx/media3/exoplayer/source/preload/PreCacheHelper$Task;->interrupt()V

    .line 611
    :cond_0
    return-void
.end method

.method public onProgress(JJF)V
    .locals 1
    .param p1, "contentLength"    # J
    .param p3, "bytesDownloaded"    # J
    .param p5, "percentDownloaded"    # F

    .line 656
    iput-wide p1, p0, Landroidx/media3/exoplayer/source/preload/PreCacheHelper$Task;->contentLength:J

    .line 657
    iput-wide p3, p0, Landroidx/media3/exoplayer/source/preload/PreCacheHelper$Task;->bytesDownloaded:J

    .line 658
    iput p5, p0, Landroidx/media3/exoplayer/source/preload/PreCacheHelper$Task;->percentDownloaded:F

    .line 659
    iget-object v0, p0, Landroidx/media3/exoplayer/source/preload/PreCacheHelper$Task;->downloadCallback:Landroidx/media3/exoplayer/source/preload/PreCacheHelper$DownloadCallback;

    if-eqz v0, :cond_0

    .line 660
    iget-object v0, p0, Landroidx/media3/exoplayer/source/preload/PreCacheHelper$Task;->downloadCallback:Landroidx/media3/exoplayer/source/preload/PreCacheHelper$DownloadCallback;

    invoke-virtual {v0, p0}, Landroidx/media3/exoplayer/source/preload/PreCacheHelper$DownloadCallback;->onDownloadProgress(Landroidx/media3/exoplayer/source/preload/PreCacheHelper$Task;)V

    .line 662
    :cond_0
    return-void
.end method

.method public run()V
    .locals 6

    .line 618
    :try_start_0
    iget-boolean v0, p0, Landroidx/media3/exoplayer/source/preload/PreCacheHelper$Task;->isRemove:Z

    if-eqz v0, :cond_0

    .line 619
    iget-object v0, p0, Landroidx/media3/exoplayer/source/preload/PreCacheHelper$Task;->downloader:Landroidx/media3/exoplayer/offline/Downloader;

    invoke-interface {v0}, Landroidx/media3/exoplayer/offline/Downloader;->remove()V

    goto :goto_2

    .line 621
    :cond_0
    const/4 v0, 0x0

    .line 622
    .local v0, "errorCount":I
    const-wide/16 v1, -0x1

    .line 623
    .local v1, "errorPosition":J
    :goto_0
    iget-boolean v3, p0, Landroidx/media3/exoplayer/source/preload/PreCacheHelper$Task;->isCanceled:Z
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/util/concurrent/CancellationException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    if-nez v3, :cond_4

    .line 625
    :try_start_1
    iget-object v3, p0, Landroidx/media3/exoplayer/source/preload/PreCacheHelper$Task;->downloader:Landroidx/media3/exoplayer/offline/Downloader;

    invoke-interface {v3, p0}, Landroidx/media3/exoplayer/offline/Downloader;->download(Landroidx/media3/exoplayer/offline/Downloader$ProgressListener;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/util/concurrent/CancellationException; {:try_start_1 .. :try_end_1} :catch_2

    .line 626
    goto :goto_2

    .line 627
    :catch_0
    move-exception v3

    .line 628
    .local v3, "e":Ljava/io/IOException;
    :try_start_2
    iget-boolean v4, p0, Landroidx/media3/exoplayer/source/preload/PreCacheHelper$Task;->isCanceled:Z

    if-nez v4, :cond_3

    .line 629
    iget-wide v4, p0, Landroidx/media3/exoplayer/source/preload/PreCacheHelper$Task;->bytesDownloaded:J

    cmp-long v4, v4, v1

    if-eqz v4, :cond_1

    .line 630
    iget-wide v4, p0, Landroidx/media3/exoplayer/source/preload/PreCacheHelper$Task;->bytesDownloaded:J

    move-wide v1, v4

    .line 631
    const/4 v0, 0x0

    .line 633
    :cond_1
    add-int/lit8 v0, v0, 0x1

    iget v4, p0, Landroidx/media3/exoplayer/source/preload/PreCacheHelper$Task;->minRetryCount:I

    if-gt v0, v4, :cond_2

    .line 636
    invoke-static {v0}, Landroidx/media3/exoplayer/source/preload/PreCacheHelper$Task;->getRetryDelayMillis(I)I

    move-result v4

    int-to-long v4, v4

    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V

    goto :goto_1

    .line 634
    :cond_2
    throw v3
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/util/concurrent/CancellationException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 638
    .end local v3    # "e":Ljava/io/IOException;
    :cond_3
    :goto_1
    goto :goto_0

    .line 645
    .end local v0    # "errorCount":I
    .end local v1    # "errorPosition":J
    :catch_1
    move-exception v0

    .line 646
    .local v0, "e":Ljava/io/IOException;
    iput-object v0, p0, Landroidx/media3/exoplayer/source/preload/PreCacheHelper$Task;->finalException:Ljava/io/IOException;

    goto :goto_3

    .line 643
    .end local v0    # "e":Ljava/io/IOException;
    :catch_2
    move-exception v0

    goto :goto_2

    .line 641
    :catch_3
    move-exception v0

    .line 642
    .local v0, "e":Ljava/lang/InterruptedException;
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    .line 647
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :cond_4
    :goto_2
    nop

    .line 649
    :goto_3
    iget-object v0, p0, Landroidx/media3/exoplayer/source/preload/PreCacheHelper$Task;->downloadCallback:Landroidx/media3/exoplayer/source/preload/PreCacheHelper$DownloadCallback;

    if-eqz v0, :cond_5

    .line 650
    iget-object v0, p0, Landroidx/media3/exoplayer/source/preload/PreCacheHelper$Task;->downloadCallback:Landroidx/media3/exoplayer/source/preload/PreCacheHelper$DownloadCallback;

    invoke-virtual {v0, p0}, Landroidx/media3/exoplayer/source/preload/PreCacheHelper$DownloadCallback;->onDownloadStopped(Landroidx/media3/exoplayer/source/preload/PreCacheHelper$Task;)V

    .line 652
    :cond_5
    return-void
.end method
