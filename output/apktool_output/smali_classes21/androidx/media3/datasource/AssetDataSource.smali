.class public final Landroidx/media3/datasource/AssetDataSource;
.super Landroidx/media3/datasource/BaseDataSource;
.source "AssetDataSource.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media3/datasource/AssetDataSource$AssetDataSourceException;
    }
.end annotation


# instance fields
.field private final assetManager:Landroid/content/res/AssetManager;

.field private bytesRemaining:J

.field private inputStream:Ljava/io/InputStream;

.field private opened:Z

.field private uri:Landroid/net/Uri;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 71
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroidx/media3/datasource/BaseDataSource;-><init>(Z)V

    .line 72
    invoke-virtual {p1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    iput-object v0, p0, Landroidx/media3/datasource/AssetDataSource;->assetManager:Landroid/content/res/AssetManager;

    .line 73
    return-void
.end method


# virtual methods
.method public close()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media3/datasource/AssetDataSource$AssetDataSourceException;
        }
    .end annotation

    .line 155
    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/media3/datasource/AssetDataSource;->uri:Landroid/net/Uri;

    .line 157
    const/4 v1, 0x0

    :try_start_0
    iget-object v2, p0, Landroidx/media3/datasource/AssetDataSource;->inputStream:Ljava/io/InputStream;

    if-eqz v2, :cond_0

    .line 158
    iget-object v2, p0, Landroidx/media3/datasource/AssetDataSource;->inputStream:Ljava/io/InputStream;

    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 163
    :cond_0
    iput-object v0, p0, Landroidx/media3/datasource/AssetDataSource;->inputStream:Ljava/io/InputStream;

    .line 164
    iget-boolean v0, p0, Landroidx/media3/datasource/AssetDataSource;->opened:Z

    if-eqz v0, :cond_1

    .line 165
    iput-boolean v1, p0, Landroidx/media3/datasource/AssetDataSource;->opened:Z

    .line 166
    invoke-virtual {p0}, Landroidx/media3/datasource/AssetDataSource;->transferEnded()V

    .line 169
    :cond_1
    return-void

    .line 163
    :catchall_0
    move-exception v2

    goto :goto_0

    .line 160
    :catch_0
    move-exception v2

    .line 161
    .local v2, "e":Ljava/io/IOException;
    :try_start_1
    new-instance v3, Landroidx/media3/datasource/AssetDataSource$AssetDataSourceException;

    const/16 v4, 0x7d0

    invoke-direct {v3, v2, v4}, Landroidx/media3/datasource/AssetDataSource$AssetDataSourceException;-><init>(Ljava/lang/Throwable;I)V

    throw v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 163
    .end local v2    # "e":Ljava/io/IOException;
    :goto_0
    iput-object v0, p0, Landroidx/media3/datasource/AssetDataSource;->inputStream:Ljava/io/InputStream;

    .line 164
    iget-boolean v0, p0, Landroidx/media3/datasource/AssetDataSource;->opened:Z

    if-eqz v0, :cond_2

    .line 165
    iput-boolean v1, p0, Landroidx/media3/datasource/AssetDataSource;->opened:Z

    .line 166
    invoke-virtual {p0}, Landroidx/media3/datasource/AssetDataSource;->transferEnded()V

    .line 168
    :cond_2
    throw v2
.end method

.method public getUri()Landroid/net/Uri;
    .locals 1

    .line 150
    iget-object v0, p0, Landroidx/media3/datasource/AssetDataSource;->uri:Landroid/net/Uri;

    return-object v0
.end method

.method public open(Landroidx/media3/datasource/DataSpec;)J
    .locals 11
    .param p1, "dataSpec"    # Landroidx/media3/datasource/DataSpec;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media3/datasource/AssetDataSource$AssetDataSourceException;
        }
    .end annotation

    .line 78
    :try_start_0
    iget-object v0, p1, Landroidx/media3/datasource/DataSpec;->uri:Landroid/net/Uri;

    iput-object v0, p0, Landroidx/media3/datasource/AssetDataSource;->uri:Landroid/net/Uri;

    .line 79
    iget-object v0, p0, Landroidx/media3/datasource/AssetDataSource;->uri:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 80
    .local v0, "path":Ljava/lang/String;
    const-string v1, "/android_asset/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    .line 81
    const/16 v1, 0xf

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    goto :goto_0

    .line 82
    :cond_0
    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 83
    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    .line 85
    :cond_1
    :goto_0
    invoke-virtual {p0, p1}, Landroidx/media3/datasource/AssetDataSource;->transferInitializing(Landroidx/media3/datasource/DataSpec;)V

    .line 86
    iget-object v1, p0, Landroidx/media3/datasource/AssetDataSource;->assetManager:Landroid/content/res/AssetManager;

    invoke-virtual {v1, v0, v2}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;I)Ljava/io/InputStream;

    move-result-object v1

    iput-object v1, p0, Landroidx/media3/datasource/AssetDataSource;->inputStream:Ljava/io/InputStream;

    .line 87
    iget-object v1, p0, Landroidx/media3/datasource/AssetDataSource;->inputStream:Ljava/io/InputStream;

    iget-wide v3, p1, Landroidx/media3/datasource/DataSpec;->position:J

    invoke-virtual {v1, v3, v4}, Ljava/io/InputStream;->skip(J)J

    move-result-wide v3

    .line 88
    .local v3, "skipped":J
    iget-wide v5, p1, Landroidx/media3/datasource/DataSpec;->position:J

    cmp-long v1, v3, v5

    if-ltz v1, :cond_4

    .line 94
    iget-wide v5, p1, Landroidx/media3/datasource/DataSpec;->length:J

    const-wide/16 v7, -0x1

    cmp-long v1, v5, v7

    if-eqz v1, :cond_2

    .line 95
    iget-wide v5, p1, Landroidx/media3/datasource/DataSpec;->length:J

    iput-wide v5, p0, Landroidx/media3/datasource/AssetDataSource;->bytesRemaining:J

    goto :goto_1

    .line 97
    :cond_2
    iget-object v1, p0, Landroidx/media3/datasource/AssetDataSource;->inputStream:Ljava/io/InputStream;

    invoke-virtual {v1}, Ljava/io/InputStream;->available()I

    move-result v1

    int-to-long v5, v1

    iput-wide v5, p0, Landroidx/media3/datasource/AssetDataSource;->bytesRemaining:J

    .line 98
    iget-wide v5, p0, Landroidx/media3/datasource/AssetDataSource;->bytesRemaining:J

    const-wide/32 v9, 0x7fffffff

    cmp-long v1, v5, v9

    if-nez v1, :cond_3

    .line 102
    iput-wide v7, p0, Landroidx/media3/datasource/AssetDataSource;->bytesRemaining:J
    :try_end_0
    .catch Landroidx/media3/datasource/AssetDataSource$AssetDataSourceException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 113
    .end local v0    # "path":Ljava/lang/String;
    .end local v3    # "skipped":J
    :cond_3
    :goto_1
    nop

    .line 115
    iput-boolean v2, p0, Landroidx/media3/datasource/AssetDataSource;->opened:Z

    .line 116
    invoke-virtual {p0, p1}, Landroidx/media3/datasource/AssetDataSource;->transferStarted(Landroidx/media3/datasource/DataSpec;)V

    .line 117
    iget-wide v0, p0, Landroidx/media3/datasource/AssetDataSource;->bytesRemaining:J

    return-wide v0

    .line 91
    .restart local v0    # "path":Ljava/lang/String;
    .restart local v3    # "skipped":J
    :cond_4
    :try_start_1
    new-instance v1, Landroidx/media3/datasource/AssetDataSource$AssetDataSourceException;

    const/4 v2, 0x0

    const/16 v5, 0x7d8

    invoke-direct {v1, v2, v5}, Landroidx/media3/datasource/AssetDataSource$AssetDataSourceException;-><init>(Ljava/lang/Throwable;I)V

    .end local p1    # "dataSpec":Landroidx/media3/datasource/DataSpec;
    throw v1
    :try_end_1
    .catch Landroidx/media3/datasource/AssetDataSource$AssetDataSourceException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 107
    .end local v0    # "path":Ljava/lang/String;
    .end local v3    # "skipped":J
    .restart local p1    # "dataSpec":Landroidx/media3/datasource/DataSpec;
    :catch_0
    move-exception v0

    .line 108
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Landroidx/media3/datasource/AssetDataSource$AssetDataSourceException;

    .line 110
    instance-of v2, v0, Ljava/io/FileNotFoundException;

    if-eqz v2, :cond_5

    .line 111
    const/16 v2, 0x7d5

    goto :goto_2

    .line 112
    :cond_5
    const/16 v2, 0x7d0

    :goto_2
    invoke-direct {v1, v0, v2}, Landroidx/media3/datasource/AssetDataSource$AssetDataSourceException;-><init>(Ljava/lang/Throwable;I)V

    throw v1

    .line 105
    .end local v0    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v0

    .line 106
    .local v0, "e":Landroidx/media3/datasource/AssetDataSource$AssetDataSourceException;
    throw v0
.end method

.method public read([BII)I
    .locals 8
    .param p1, "buffer"    # [B
    .param p2, "offset"    # I
    .param p3, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media3/datasource/AssetDataSource$AssetDataSourceException;
        }
    .end annotation

    .line 122
    if-nez p3, :cond_0

    .line 123
    const/4 v0, 0x0

    return v0

    .line 124
    :cond_0
    iget-wide v0, p0, Landroidx/media3/datasource/AssetDataSource;->bytesRemaining:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    const/4 v1, -0x1

    if-nez v0, :cond_1

    .line 125
    return v1

    .line 131
    :cond_1
    :try_start_0
    iget-wide v2, p0, Landroidx/media3/datasource/AssetDataSource;->bytesRemaining:J

    const-wide/16 v4, -0x1

    cmp-long v0, v2, v4

    if-nez v0, :cond_2

    move v0, p3

    goto :goto_0

    :cond_2
    iget-wide v2, p0, Landroidx/media3/datasource/AssetDataSource;->bytesRemaining:J

    int-to-long v6, p3

    invoke-static {v2, v3, v6, v7}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v2

    long-to-int v0, v2

    .line 132
    .local v0, "bytesToRead":I
    :goto_0
    iget-object v2, p0, Landroidx/media3/datasource/AssetDataSource;->inputStream:Ljava/io/InputStream;

    invoke-static {v2}, Landroidx/media3/common/util/Util;->castNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/io/InputStream;

    invoke-virtual {v2, p1, p2, v0}, Ljava/io/InputStream;->read([BII)I

    move-result v2
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 135
    .end local v0    # "bytesToRead":I
    .local v2, "bytesRead":I
    nop

    .line 137
    if-ne v2, v1, :cond_3

    .line 138
    return v1

    .line 140
    :cond_3
    iget-wide v0, p0, Landroidx/media3/datasource/AssetDataSource;->bytesRemaining:J

    cmp-long v0, v0, v4

    if-eqz v0, :cond_4

    .line 141
    iget-wide v0, p0, Landroidx/media3/datasource/AssetDataSource;->bytesRemaining:J

    int-to-long v3, v2

    sub-long/2addr v0, v3

    iput-wide v0, p0, Landroidx/media3/datasource/AssetDataSource;->bytesRemaining:J

    .line 143
    :cond_4
    invoke-virtual {p0, v2}, Landroidx/media3/datasource/AssetDataSource;->bytesTransferred(I)V

    .line 144
    return v2

    .line 133
    .end local v2    # "bytesRead":I
    :catch_0
    move-exception v0

    .line 134
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Landroidx/media3/datasource/AssetDataSource$AssetDataSourceException;

    const/16 v2, 0x7d0

    invoke-direct {v1, v0, v2}, Landroidx/media3/datasource/AssetDataSource$AssetDataSourceException;-><init>(Ljava/lang/Throwable;I)V

    throw v1
.end method
