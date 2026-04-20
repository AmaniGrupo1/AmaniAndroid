.class public abstract Landroidx/media3/exoplayer/offline/SegmentDownloader$BaseFactory;
.super Ljava/lang/Object;
.source "SegmentDownloader.java"

# interfaces
.implements Landroidx/media3/exoplayer/offline/SegmentDownloaderFactory;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media3/exoplayer/offline/SegmentDownloader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x40c
    name = "BaseFactory"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<M::",
        "Landroidx/media3/exoplayer/offline/FilterableManifest<",
        "TM;>;>",
        "Ljava/lang/Object;",
        "Landroidx/media3/exoplayer/offline/SegmentDownloaderFactory;"
    }
.end annotation


# instance fields
.field protected final cacheDataSourceFactory:Landroidx/media3/datasource/cache/CacheDataSource$Factory;

.field protected durationUs:J

.field protected executor:Ljava/util/concurrent/Executor;

.field protected manifestParser:Landroidx/media3/exoplayer/upstream/ParsingLoadable$Parser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/media3/exoplayer/upstream/ParsingLoadable$Parser<",
            "TM;>;"
        }
    .end annotation
.end field

.field protected maxMergedSegmentStartTimeDiffMs:J

.field protected startPositionUs:J


# direct methods
.method public constructor <init>(Landroidx/media3/datasource/cache/CacheDataSource$Factory;Landroidx/media3/exoplayer/upstream/ParsingLoadable$Parser;)V
    .locals 2
    .param p1, "cacheDataSourceFactory"    # Landroidx/media3/datasource/cache/CacheDataSource$Factory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/media3/datasource/cache/CacheDataSource$Factory;",
            "Landroidx/media3/exoplayer/upstream/ParsingLoadable$Parser<",
            "TM;>;)V"
        }
    .end annotation

    .line 71
    .local p0, "this":Landroidx/media3/exoplayer/offline/SegmentDownloader$BaseFactory;, "Landroidx/media3/exoplayer/offline/SegmentDownloader$BaseFactory<TM;>;"
    .local p2, "manifestParser":Landroidx/media3/exoplayer/upstream/ParsingLoadable$Parser;, "Landroidx/media3/exoplayer/upstream/ParsingLoadable$Parser<TM;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 72
    iput-object p1, p0, Landroidx/media3/exoplayer/offline/SegmentDownloader$BaseFactory;->cacheDataSourceFactory:Landroidx/media3/datasource/cache/CacheDataSource$Factory;

    .line 73
    iput-object p2, p0, Landroidx/media3/exoplayer/offline/SegmentDownloader$BaseFactory;->manifestParser:Landroidx/media3/exoplayer/upstream/ParsingLoadable$Parser;

    .line 74
    new-instance v0, Landroidx/media3/exoplayer/offline/SegmentDownloader$BaseFactory$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Landroidx/media3/exoplayer/offline/SegmentDownloader$BaseFactory$$ExternalSyntheticLambda0;-><init>()V

    iput-object v0, p0, Landroidx/media3/exoplayer/offline/SegmentDownloader$BaseFactory;->executor:Ljava/util/concurrent/Executor;

    .line 75
    const-wide/16 v0, 0x4e20

    iput-wide v0, p0, Landroidx/media3/exoplayer/offline/SegmentDownloader$BaseFactory;->maxMergedSegmentStartTimeDiffMs:J

    .line 76
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v0, p0, Landroidx/media3/exoplayer/offline/SegmentDownloader$BaseFactory;->durationUs:J

    .line 77
    return-void
.end method


# virtual methods
.method public setDurationUs(J)Landroidx/media3/exoplayer/offline/SegmentDownloader$BaseFactory;
    .locals 0
    .param p1, "durationUs"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Landroidx/media3/exoplayer/offline/SegmentDownloader$BaseFactory<",
            "TM;>;"
        }
    .end annotation

    .line 103
    .local p0, "this":Landroidx/media3/exoplayer/offline/SegmentDownloader$BaseFactory;, "Landroidx/media3/exoplayer/offline/SegmentDownloader$BaseFactory<TM;>;"
    iput-wide p1, p0, Landroidx/media3/exoplayer/offline/SegmentDownloader$BaseFactory;->durationUs:J

    .line 104
    return-object p0
.end method

.method public bridge synthetic setDurationUs(J)Landroidx/media3/exoplayer/offline/SegmentDownloaderFactory;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 61
    .local p0, "this":Landroidx/media3/exoplayer/offline/SegmentDownloader$BaseFactory;, "Landroidx/media3/exoplayer/offline/SegmentDownloader$BaseFactory<TM;>;"
    invoke-virtual {p0, p1, p2}, Landroidx/media3/exoplayer/offline/SegmentDownloader$BaseFactory;->setDurationUs(J)Landroidx/media3/exoplayer/offline/SegmentDownloader$BaseFactory;

    move-result-object p1

    return-object p1
.end method

.method public setExecutor(Ljava/util/concurrent/Executor;)Landroidx/media3/exoplayer/offline/SegmentDownloader$BaseFactory;
    .locals 0
    .param p1, "executor"    # Ljava/util/concurrent/Executor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Executor;",
            ")",
            "Landroidx/media3/exoplayer/offline/SegmentDownloader$BaseFactory<",
            "TM;>;"
        }
    .end annotation

    .line 82
    .local p0, "this":Landroidx/media3/exoplayer/offline/SegmentDownloader$BaseFactory;, "Landroidx/media3/exoplayer/offline/SegmentDownloader$BaseFactory<TM;>;"
    iput-object p1, p0, Landroidx/media3/exoplayer/offline/SegmentDownloader$BaseFactory;->executor:Ljava/util/concurrent/Executor;

    .line 83
    return-object p0
.end method

.method public bridge synthetic setExecutor(Ljava/util/concurrent/Executor;)Landroidx/media3/exoplayer/offline/SegmentDownloaderFactory;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 61
    .local p0, "this":Landroidx/media3/exoplayer/offline/SegmentDownloader$BaseFactory;, "Landroidx/media3/exoplayer/offline/SegmentDownloader$BaseFactory<TM;>;"
    invoke-virtual {p0, p1}, Landroidx/media3/exoplayer/offline/SegmentDownloader$BaseFactory;->setExecutor(Ljava/util/concurrent/Executor;)Landroidx/media3/exoplayer/offline/SegmentDownloader$BaseFactory;

    move-result-object p1

    return-object p1
.end method

.method public setMaxMergedSegmentStartTimeDiffMs(J)Landroidx/media3/exoplayer/offline/SegmentDownloader$BaseFactory;
    .locals 0
    .param p1, "maxMergedSegmentStartTimeDiffMs"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Landroidx/media3/exoplayer/offline/SegmentDownloader$BaseFactory<",
            "TM;>;"
        }
    .end annotation

    .line 89
    .local p0, "this":Landroidx/media3/exoplayer/offline/SegmentDownloader$BaseFactory;, "Landroidx/media3/exoplayer/offline/SegmentDownloader$BaseFactory<TM;>;"
    iput-wide p1, p0, Landroidx/media3/exoplayer/offline/SegmentDownloader$BaseFactory;->maxMergedSegmentStartTimeDiffMs:J

    .line 90
    return-object p0
.end method

.method public bridge synthetic setMaxMergedSegmentStartTimeDiffMs(J)Landroidx/media3/exoplayer/offline/SegmentDownloaderFactory;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 61
    .local p0, "this":Landroidx/media3/exoplayer/offline/SegmentDownloader$BaseFactory;, "Landroidx/media3/exoplayer/offline/SegmentDownloader$BaseFactory<TM;>;"
    invoke-virtual {p0, p1, p2}, Landroidx/media3/exoplayer/offline/SegmentDownloader$BaseFactory;->setMaxMergedSegmentStartTimeDiffMs(J)Landroidx/media3/exoplayer/offline/SegmentDownloader$BaseFactory;

    move-result-object p1

    return-object p1
.end method

.method public setStartPositionUs(J)Landroidx/media3/exoplayer/offline/SegmentDownloader$BaseFactory;
    .locals 0
    .param p1, "startPositionUs"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Landroidx/media3/exoplayer/offline/SegmentDownloader$BaseFactory<",
            "TM;>;"
        }
    .end annotation

    .line 96
    .local p0, "this":Landroidx/media3/exoplayer/offline/SegmentDownloader$BaseFactory;, "Landroidx/media3/exoplayer/offline/SegmentDownloader$BaseFactory<TM;>;"
    iput-wide p1, p0, Landroidx/media3/exoplayer/offline/SegmentDownloader$BaseFactory;->startPositionUs:J

    .line 97
    return-object p0
.end method

.method public bridge synthetic setStartPositionUs(J)Landroidx/media3/exoplayer/offline/SegmentDownloaderFactory;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 61
    .local p0, "this":Landroidx/media3/exoplayer/offline/SegmentDownloader$BaseFactory;, "Landroidx/media3/exoplayer/offline/SegmentDownloader$BaseFactory<TM;>;"
    invoke-virtual {p0, p1, p2}, Landroidx/media3/exoplayer/offline/SegmentDownloader$BaseFactory;->setStartPositionUs(J)Landroidx/media3/exoplayer/offline/SegmentDownloader$BaseFactory;

    move-result-object p1

    return-object p1
.end method
