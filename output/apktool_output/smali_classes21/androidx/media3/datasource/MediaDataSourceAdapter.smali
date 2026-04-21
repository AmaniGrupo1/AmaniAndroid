.class public Landroidx/media3/datasource/MediaDataSourceAdapter;
.super Landroidx/media3/datasource/BaseDataSource;
.source "MediaDataSourceAdapter.java"


# instance fields
.field private bytesRemaining:J

.field private final mediaDataSource:Landroid/media/MediaDataSource;

.field private opened:Z

.field private position:J

.field private uri:Landroid/net/Uri;


# direct methods
.method public constructor <init>(Landroid/media/MediaDataSource;Z)V
    .locals 0
    .param p1, "mediaDataSource"    # Landroid/media/MediaDataSource;
    .param p2, "isNetwork"    # Z

    .line 51
    invoke-direct {p0, p2}, Landroidx/media3/datasource/BaseDataSource;-><init>(Z)V

    .line 52
    iput-object p1, p0, Landroidx/media3/datasource/MediaDataSourceAdapter;->mediaDataSource:Landroid/media/MediaDataSource;

    .line 53
    return-void
.end method


# virtual methods
.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 118
    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/media3/datasource/MediaDataSourceAdapter;->uri:Landroid/net/Uri;

    .line 119
    iget-boolean v0, p0, Landroidx/media3/datasource/MediaDataSourceAdapter;->opened:Z

    if-eqz v0, :cond_0

    .line 120
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/media3/datasource/MediaDataSourceAdapter;->opened:Z

    .line 121
    invoke-virtual {p0}, Landroidx/media3/datasource/MediaDataSourceAdapter;->transferEnded()V

    .line 123
    :cond_0
    return-void
.end method

.method public getUri()Landroid/net/Uri;
    .locals 1

    .line 113
    iget-object v0, p0, Landroidx/media3/datasource/MediaDataSourceAdapter;->uri:Landroid/net/Uri;

    return-object v0
.end method

.method public open(Landroidx/media3/datasource/DataSpec;)J
    .locals 6
    .param p1, "dataSpec"    # Landroidx/media3/datasource/DataSpec;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 57
    iget-object v0, p1, Landroidx/media3/datasource/DataSpec;->uri:Landroid/net/Uri;

    iput-object v0, p0, Landroidx/media3/datasource/MediaDataSourceAdapter;->uri:Landroid/net/Uri;

    .line 58
    iget-wide v0, p1, Landroidx/media3/datasource/DataSpec;->position:J

    iput-wide v0, p0, Landroidx/media3/datasource/MediaDataSourceAdapter;->position:J

    .line 59
    invoke-virtual {p0, p1}, Landroidx/media3/datasource/MediaDataSourceAdapter;->transferInitializing(Landroidx/media3/datasource/DataSpec;)V

    .line 61
    iget-object v0, p0, Landroidx/media3/datasource/MediaDataSourceAdapter;->mediaDataSource:Landroid/media/MediaDataSource;

    invoke-virtual {v0}, Landroid/media/MediaDataSource;->getSize()J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    iget-wide v0, p0, Landroidx/media3/datasource/MediaDataSourceAdapter;->position:J

    iget-object v4, p0, Landroidx/media3/datasource/MediaDataSourceAdapter;->mediaDataSource:Landroid/media/MediaDataSource;

    invoke-virtual {v4}, Landroid/media/MediaDataSource;->getSize()J

    move-result-wide v4

    cmp-long v0, v0, v4

    if-gtz v0, :cond_0

    goto :goto_0

    .line 62
    :cond_0
    new-instance v0, Landroidx/media3/datasource/DataSourceException;

    const/16 v1, 0x7d8

    invoke-direct {v0, v1}, Landroidx/media3/datasource/DataSourceException;-><init>(I)V

    throw v0

    .line 65
    :cond_1
    :goto_0
    iget-object v0, p0, Landroidx/media3/datasource/MediaDataSourceAdapter;->mediaDataSource:Landroid/media/MediaDataSource;

    invoke-virtual {v0}, Landroid/media/MediaDataSource;->getSize()J

    move-result-wide v0

    cmp-long v0, v0, v2

    if-nez v0, :cond_2

    .line 66
    iput-wide v2, p0, Landroidx/media3/datasource/MediaDataSourceAdapter;->bytesRemaining:J

    goto :goto_1

    .line 68
    :cond_2
    iget-object v0, p0, Landroidx/media3/datasource/MediaDataSourceAdapter;->mediaDataSource:Landroid/media/MediaDataSource;

    invoke-virtual {v0}, Landroid/media/MediaDataSource;->getSize()J

    move-result-wide v0

    iget-wide v4, p0, Landroidx/media3/datasource/MediaDataSourceAdapter;->position:J

    sub-long/2addr v0, v4

    iput-wide v0, p0, Landroidx/media3/datasource/MediaDataSourceAdapter;->bytesRemaining:J

    .line 71
    :goto_1
    iget-wide v0, p1, Landroidx/media3/datasource/DataSpec;->length:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_4

    .line 72
    nop

    .line 73
    iget-wide v0, p0, Landroidx/media3/datasource/MediaDataSourceAdapter;->bytesRemaining:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_3

    iget-wide v0, p1, Landroidx/media3/datasource/DataSpec;->length:J

    goto :goto_2

    :cond_3
    iget-wide v0, p0, Landroidx/media3/datasource/MediaDataSourceAdapter;->bytesRemaining:J

    iget-wide v4, p1, Landroidx/media3/datasource/DataSpec;->length:J

    invoke-static {v0, v1, v4, v5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    :goto_2
    iput-wide v0, p0, Landroidx/media3/datasource/MediaDataSourceAdapter;->bytesRemaining:J

    .line 76
    :cond_4
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/media3/datasource/MediaDataSourceAdapter;->opened:Z

    .line 77
    invoke-virtual {p0, p1}, Landroidx/media3/datasource/MediaDataSourceAdapter;->transferStarted(Landroidx/media3/datasource/DataSpec;)V

    .line 78
    iget-wide v0, p1, Landroidx/media3/datasource/DataSpec;->length:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_5

    iget-wide v0, p1, Landroidx/media3/datasource/DataSpec;->length:J

    goto :goto_3

    :cond_5
    iget-wide v0, p0, Landroidx/media3/datasource/MediaDataSourceAdapter;->bytesRemaining:J

    :goto_3
    return-wide v0
.end method

.method public read([BII)I
    .locals 12
    .param p1, "buffer"    # [B
    .param p2, "offset"    # I
    .param p3, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media3/datasource/DataSourceException;
        }
    .end annotation

    .line 83
    if-nez p3, :cond_0

    .line 84
    const/4 v0, 0x0

    return v0

    .line 85
    :cond_0
    iget-wide v0, p0, Landroidx/media3/datasource/MediaDataSourceAdapter;->bytesRemaining:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    const/4 v1, -0x1

    if-nez v0, :cond_1

    .line 86
    return v1

    .line 89
    :cond_1
    iget-wide v2, p0, Landroidx/media3/datasource/MediaDataSourceAdapter;->bytesRemaining:J

    const-wide/16 v4, -0x1

    cmp-long v0, v2, v4

    if-nez v0, :cond_2

    move v0, p3

    goto :goto_0

    :cond_2
    iget-wide v2, p0, Landroidx/media3/datasource/MediaDataSourceAdapter;->bytesRemaining:J

    int-to-long v6, p3

    invoke-static {v2, v3, v6, v7}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v2

    long-to-int v0, v2

    :goto_0
    move v11, v0

    .line 92
    .local v11, "bytesToRead":I
    :try_start_0
    iget-object v6, p0, Landroidx/media3/datasource/MediaDataSourceAdapter;->mediaDataSource:Landroid/media/MediaDataSource;

    iget-wide v7, p0, Landroidx/media3/datasource/MediaDataSourceAdapter;->position:J
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    move-object v9, p1

    move v10, p2

    .end local p1    # "buffer":[B
    .end local p2    # "offset":I
    .local v9, "buffer":[B
    .local v10, "offset":I
    :try_start_1
    invoke-virtual/range {v6 .. v11}, Landroid/media/MediaDataSource;->readAt(J[BII)I

    move-result p1
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 95
    .local p1, "bytesRead":I
    nop

    .line 97
    if-ne p1, v1, :cond_3

    .line 98
    return v1

    .line 101
    :cond_3
    iget-wide v0, p0, Landroidx/media3/datasource/MediaDataSourceAdapter;->position:J

    int-to-long v2, p1

    add-long/2addr v0, v2

    iput-wide v0, p0, Landroidx/media3/datasource/MediaDataSourceAdapter;->position:J

    .line 102
    iget-wide v0, p0, Landroidx/media3/datasource/MediaDataSourceAdapter;->bytesRemaining:J

    cmp-long p2, v0, v4

    if-eqz p2, :cond_4

    .line 103
    iget-wide v0, p0, Landroidx/media3/datasource/MediaDataSourceAdapter;->bytesRemaining:J

    int-to-long v2, p1

    sub-long/2addr v0, v2

    iput-wide v0, p0, Landroidx/media3/datasource/MediaDataSourceAdapter;->bytesRemaining:J

    .line 106
    :cond_4
    invoke-virtual {p0, p1}, Landroidx/media3/datasource/MediaDataSourceAdapter;->bytesTransferred(I)V

    .line 107
    return p1

    .line 93
    .end local p1    # "bytesRead":I
    :catch_0
    move-exception v0

    move-object p1, v0

    goto :goto_1

    .end local v9    # "buffer":[B
    .end local v10    # "offset":I
    .local p1, "buffer":[B
    .restart local p2    # "offset":I
    :catch_1
    move-exception v0

    move-object v9, p1

    move v10, p2

    move-object p1, v0

    .line 94
    .end local p2    # "offset":I
    .restart local v9    # "buffer":[B
    .restart local v10    # "offset":I
    .local p1, "e":Ljava/io/IOException;
    :goto_1
    new-instance p2, Landroidx/media3/datasource/DataSourceException;

    const/16 v0, 0x7d0

    invoke-direct {p2, p1, v0}, Landroidx/media3/datasource/DataSourceException;-><init>(Ljava/lang/Throwable;I)V

    throw p2
.end method
