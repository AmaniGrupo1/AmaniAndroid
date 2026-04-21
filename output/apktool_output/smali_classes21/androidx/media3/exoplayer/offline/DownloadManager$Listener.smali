.class public interface abstract Landroidx/media3/exoplayer/offline/DownloadManager$Listener;
.super Ljava/lang/Object;
.source "DownloadManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media3/exoplayer/offline/DownloadManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Listener"
.end annotation


# virtual methods
.method public onDownloadChanged(Landroidx/media3/exoplayer/offline/DownloadManager;Landroidx/media3/exoplayer/offline/Download;Ljava/lang/Exception;)V
    .locals 0
    .param p1, "downloadManager"    # Landroidx/media3/exoplayer/offline/DownloadManager;
    .param p2, "download"    # Landroidx/media3/exoplayer/offline/Download;
    .param p3, "finalException"    # Ljava/lang/Exception;

    .line 107
    return-void
.end method

.method public onDownloadRemoved(Landroidx/media3/exoplayer/offline/DownloadManager;Landroidx/media3/exoplayer/offline/Download;)V
    .locals 0
    .param p1, "downloadManager"    # Landroidx/media3/exoplayer/offline/DownloadManager;
    .param p2, "download"    # Landroidx/media3/exoplayer/offline/Download;

    .line 115
    return-void
.end method

.method public onDownloadsPausedChanged(Landroidx/media3/exoplayer/offline/DownloadManager;Z)V
    .locals 0
    .param p1, "downloadManager"    # Landroidx/media3/exoplayer/offline/DownloadManager;
    .param p2, "downloadsPaused"    # Z

    .line 96
    return-void
.end method

.method public onIdle(Landroidx/media3/exoplayer/offline/DownloadManager;)V
    .locals 0
    .param p1, "downloadManager"    # Landroidx/media3/exoplayer/offline/DownloadManager;

    .line 122
    return-void
.end method

.method public onInitialized(Landroidx/media3/exoplayer/offline/DownloadManager;)V
    .locals 0
    .param p1, "downloadManager"    # Landroidx/media3/exoplayer/offline/DownloadManager;

    .line 86
    return-void
.end method

.method public onRequirementsStateChanged(Landroidx/media3/exoplayer/offline/DownloadManager;Landroidx/media3/exoplayer/scheduler/Requirements;I)V
    .locals 0
    .param p1, "downloadManager"    # Landroidx/media3/exoplayer/offline/DownloadManager;
    .param p2, "requirements"    # Landroidx/media3/exoplayer/scheduler/Requirements;
    .param p3, "notMetRequirements"    # I

    .line 135
    return-void
.end method

.method public onWaitingForRequirementsChanged(Landroidx/media3/exoplayer/offline/DownloadManager;Z)V
    .locals 0
    .param p1, "downloadManager"    # Landroidx/media3/exoplayer/offline/DownloadManager;
    .param p2, "waitingForRequirements"    # Z

    .line 148
    return-void
.end method
