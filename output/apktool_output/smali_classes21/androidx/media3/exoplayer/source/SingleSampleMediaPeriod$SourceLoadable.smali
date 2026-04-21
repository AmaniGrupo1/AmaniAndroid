.class final Landroidx/media3/exoplayer/source/SingleSampleMediaPeriod$SourceLoadable;
.super Ljava/lang/Object;
.source "SingleSampleMediaPeriod.java"

# interfaces
.implements Landroidx/media3/exoplayer/upstream/Loader$Loadable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media3/exoplayer/source/SingleSampleMediaPeriod;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "SourceLoadable"
.end annotation


# instance fields
.field private final dataSource:Landroidx/media3/datasource/StatsDataSource;

.field public final dataSpec:Landroidx/media3/datasource/DataSpec;

.field public final loadTaskId:J

.field private sampleData:[B


# direct methods
.method public constructor <init>(Landroidx/media3/datasource/DataSpec;Landroidx/media3/datasource/DataSource;)V
    .locals 2
    .param p1, "dataSpec"    # Landroidx/media3/datasource/DataSpec;
    .param p2, "dataSource"    # Landroidx/media3/datasource/DataSource;

    .line 444
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 445
    invoke-static {}, Landroidx/media3/exoplayer/source/LoadEventInfo;->getNewId()J

    move-result-wide v0

    iput-wide v0, p0, Landroidx/media3/exoplayer/source/SingleSampleMediaPeriod$SourceLoadable;->loadTaskId:J

    .line 446
    iput-object p1, p0, Landroidx/media3/exoplayer/source/SingleSampleMediaPeriod$SourceLoadable;->dataSpec:Landroidx/media3/datasource/DataSpec;

    .line 447
    new-instance v0, Landroidx/media3/datasource/StatsDataSource;

    invoke-direct {v0, p2}, Landroidx/media3/datasource/StatsDataSource;-><init>(Landroidx/media3/datasource/DataSource;)V

    iput-object v0, p0, Landroidx/media3/exoplayer/source/SingleSampleMediaPeriod$SourceLoadable;->dataSource:Landroidx/media3/datasource/StatsDataSource;

    .line 448
    return-void
.end method

.method static synthetic access$100(Landroidx/media3/exoplayer/source/SingleSampleMediaPeriod$SourceLoadable;)Landroidx/media3/datasource/StatsDataSource;
    .locals 1
    .param p0, "x0"    # Landroidx/media3/exoplayer/source/SingleSampleMediaPeriod$SourceLoadable;

    .line 435
    iget-object v0, p0, Landroidx/media3/exoplayer/source/SingleSampleMediaPeriod$SourceLoadable;->dataSource:Landroidx/media3/datasource/StatsDataSource;

    return-object v0
.end method

.method static synthetic access$200(Landroidx/media3/exoplayer/source/SingleSampleMediaPeriod$SourceLoadable;)[B
    .locals 1
    .param p0, "x0"    # Landroidx/media3/exoplayer/source/SingleSampleMediaPeriod$SourceLoadable;

    .line 435
    iget-object v0, p0, Landroidx/media3/exoplayer/source/SingleSampleMediaPeriod$SourceLoadable;->sampleData:[B

    return-object v0
.end method


# virtual methods
.method public cancelLoad()V
    .locals 0

    .line 453
    return-void
.end method

.method public load()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 458
    iget-object v0, p0, Landroidx/media3/exoplayer/source/SingleSampleMediaPeriod$SourceLoadable;->dataSource:Landroidx/media3/datasource/StatsDataSource;

    invoke-virtual {v0}, Landroidx/media3/datasource/StatsDataSource;->resetBytesRead()V

    .line 461
    :try_start_0
    iget-object v0, p0, Landroidx/media3/exoplayer/source/SingleSampleMediaPeriod$SourceLoadable;->dataSource:Landroidx/media3/datasource/StatsDataSource;

    iget-object v1, p0, Landroidx/media3/exoplayer/source/SingleSampleMediaPeriod$SourceLoadable;->dataSpec:Landroidx/media3/datasource/DataSpec;

    invoke-virtual {v0, v1}, Landroidx/media3/datasource/StatsDataSource;->open(Landroidx/media3/datasource/DataSpec;)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 463
    const/4 v0, 0x0

    .line 464
    .local v0, "result":I
    :goto_0
    nop

    .line 474
    iget-object v1, p0, Landroidx/media3/exoplayer/source/SingleSampleMediaPeriod$SourceLoadable;->dataSource:Landroidx/media3/datasource/StatsDataSource;

    .line 464
    const/4 v2, -0x1

    if-eq v0, v2, :cond_2

    .line 465
    :try_start_1
    invoke-virtual {v1}, Landroidx/media3/datasource/StatsDataSource;->getBytesRead()J

    move-result-wide v1

    long-to-int v1, v1

    .line 466
    .local v1, "sampleSize":I
    iget-object v2, p0, Landroidx/media3/exoplayer/source/SingleSampleMediaPeriod$SourceLoadable;->sampleData:[B

    if-nez v2, :cond_0

    .line 467
    const/16 v2, 0x400

    new-array v2, v2, [B

    iput-object v2, p0, Landroidx/media3/exoplayer/source/SingleSampleMediaPeriod$SourceLoadable;->sampleData:[B

    goto :goto_1

    .line 468
    :cond_0
    iget-object v2, p0, Landroidx/media3/exoplayer/source/SingleSampleMediaPeriod$SourceLoadable;->sampleData:[B

    array-length v2, v2

    if-ne v1, v2, :cond_1

    .line 469
    iget-object v2, p0, Landroidx/media3/exoplayer/source/SingleSampleMediaPeriod$SourceLoadable;->sampleData:[B

    iget-object v3, p0, Landroidx/media3/exoplayer/source/SingleSampleMediaPeriod$SourceLoadable;->sampleData:[B

    array-length v3, v3

    mul-int/lit8 v3, v3, 0x2

    invoke-static {v2, v3}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v2

    iput-object v2, p0, Landroidx/media3/exoplayer/source/SingleSampleMediaPeriod$SourceLoadable;->sampleData:[B

    .line 471
    :cond_1
    :goto_1
    iget-object v2, p0, Landroidx/media3/exoplayer/source/SingleSampleMediaPeriod$SourceLoadable;->dataSource:Landroidx/media3/datasource/StatsDataSource;

    iget-object v3, p0, Landroidx/media3/exoplayer/source/SingleSampleMediaPeriod$SourceLoadable;->sampleData:[B

    iget-object v4, p0, Landroidx/media3/exoplayer/source/SingleSampleMediaPeriod$SourceLoadable;->sampleData:[B

    array-length v4, v4

    sub-int/2addr v4, v1

    invoke-virtual {v2, v3, v1, v4}, Landroidx/media3/datasource/StatsDataSource;->read([BII)I

    move-result v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move v0, v2

    .line 472
    .end local v1    # "sampleSize":I
    goto :goto_0

    .line 474
    .end local v0    # "result":I
    :cond_2
    invoke-static {v1}, Landroidx/media3/datasource/DataSourceUtil;->closeQuietly(Landroidx/media3/datasource/DataSource;)V

    .line 475
    nop

    .line 476
    return-void

    .line 474
    :catchall_0
    move-exception v0

    iget-object v1, p0, Landroidx/media3/exoplayer/source/SingleSampleMediaPeriod$SourceLoadable;->dataSource:Landroidx/media3/datasource/StatsDataSource;

    invoke-static {v1}, Landroidx/media3/datasource/DataSourceUtil;->closeQuietly(Landroidx/media3/datasource/DataSource;)V

    .line 475
    throw v0
.end method
