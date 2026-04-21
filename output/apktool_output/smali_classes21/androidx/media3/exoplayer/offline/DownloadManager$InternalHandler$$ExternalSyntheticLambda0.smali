.class public final synthetic Landroidx/media3/exoplayer/offline/DownloadManager$InternalHandler$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation runtime Lcom/android/tools/r8/annotations/LambdaMethod;
    holder = "Landroidx/media3/exoplayer/offline/DownloadManager$InternalHandler;"
    method = "compareStartTimes"
    proto = "(Landroidx/media3/exoplayer/offline/Download;Landroidx/media3/exoplayer/offline/Download;)I"
.end annotation

.annotation build Lcom/android/tools/r8/annotations/SynthesizedClassV2;
    apiLevel = -0x2
    kind = 0x13
    versionHash = "9aaf5f34c4c84da429ef7f8f6217a1817876f2618cfcf539aba3d7d5a0c703e0"
.end annotation


# direct methods
.method public synthetic constructor <init>()V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 0
    check-cast p1, Landroidx/media3/exoplayer/offline/Download;

    check-cast p2, Landroidx/media3/exoplayer/offline/Download;

    invoke-static {p1, p2}, Landroidx/media3/exoplayer/offline/DownloadManager$InternalHandler;->$r8$lambda$mYoRCebAyoibjFuCntJMlH-mrFQ(Landroidx/media3/exoplayer/offline/Download;Landroidx/media3/exoplayer/offline/Download;)I

    move-result p1

    return p1
.end method
