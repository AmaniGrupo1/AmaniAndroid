.class public interface abstract Landroidx/media3/exoplayer/source/preload/PreCacheHelper$Listener;
.super Ljava/lang/Object;
.source "PreCacheHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media3/exoplayer/source/preload/PreCacheHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Listener"
.end annotation


# virtual methods
.method public onDownloadError(Landroidx/media3/common/MediaItem;Ljava/io/IOException;)V
    .locals 0
    .param p1, "mediaItem"    # Landroidx/media3/common/MediaItem;
    .param p2, "error"    # Ljava/io/IOException;

    .line 106
    return-void
.end method

.method public onPreCacheProgress(Landroidx/media3/common/MediaItem;JJF)V
    .locals 0
    .param p1, "mediaItem"    # Landroidx/media3/common/MediaItem;
    .param p2, "contentLength"    # J
    .param p4, "bytesDownloaded"    # J
    .param p6, "percentageDownloaded"    # F

    .line 90
    return-void
.end method

.method public onPrepareError(Landroidx/media3/common/MediaItem;Ljava/io/IOException;)V
    .locals 0
    .param p1, "mediaItem"    # Landroidx/media3/common/MediaItem;
    .param p2, "error"    # Ljava/io/IOException;

    .line 98
    return-void
.end method

.method public onPrepared(Landroidx/media3/common/MediaItem;Landroidx/media3/common/MediaItem;)V
    .locals 0
    .param p1, "originalMediaItem"    # Landroidx/media3/common/MediaItem;
    .param p2, "updatedMediaItem"    # Landroidx/media3/common/MediaItem;

    .line 74
    return-void
.end method
