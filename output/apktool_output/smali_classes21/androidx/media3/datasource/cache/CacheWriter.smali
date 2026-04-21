.class public final Landroidx/media3/datasource/cache/CacheWriter;
.super Ljava/lang/Object;
.source "CacheWriter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media3/datasource/cache/CacheWriter$ProgressListener;
    }
.end annotation


# static fields
.field public static final DEFAULT_BUFFER_SIZE_BYTES:I = 0x20000


# instance fields
.field private bytesCached:J

.field private final cache:Landroidx/media3/datasource/cache/Cache;

.field private final cacheKey:Ljava/lang/String;

.field private final dataSource:Landroidx/media3/datasource/cache/CacheDataSource;

.field private final dataSpec:Landroidx/media3/datasource/DataSpec;

.field private endPosition:J

.field private volatile isCanceled:Z

.field private nextPosition:J

.field private final progressListener:Landroidx/media3/datasource/cache/CacheWriter$ProgressListener;

.field private final temporaryBuffer:[B


# direct methods
.method public constructor <init>(Landroidx/media3/datasource/cache/CacheDataSource;Landroidx/media3/datasource/DataSpec;[BLandroidx/media3/datasource/cache/CacheWriter$ProgressListener;)V
    .locals 2
    .param p1, "dataSource"    # Landroidx/media3/datasource/cache/CacheDataSource;
    .param p2, "dataSpec"    # Landroidx/media3/datasource/DataSpec;
    .param p3, "temporaryBuffer"    # [B
    .param p4, "progressListener"    # Landroidx/media3/datasource/cache/CacheWriter$ProgressListener;

    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 76
    iput-object p1, p0, Landroidx/media3/datasource/cache/CacheWriter;->dataSource:Landroidx/media3/datasource/cache/CacheDataSource;

    .line 77
    invoke-virtual {p1}, Landroidx/media3/datasource/cache/CacheDataSource;->getCache()Landroidx/media3/datasource/cache/Cache;

    move-result-object v0

    iput-object v0, p0, Landroidx/media3/datasource/cache/CacheWriter;->cache:Landroidx/media3/datasource/cache/Cache;

    .line 78
    iput-object p2, p0, Landroidx/media3/datasource/cache/CacheWriter;->dataSpec:Landroidx/media3/datasource/DataSpec;

    .line 79
    nop

    .line 80
    if-nez p3, :cond_0

    const/high16 v0, 0x20000

    new-array v0, v0, [B

    goto :goto_0

    :cond_0
    move-object v0, p3

    :goto_0
    iput-object v0, p0, Landroidx/media3/datasource/cache/CacheWriter;->temporaryBuffer:[B

    .line 81
    iput-object p4, p0, Landroidx/media3/datasource/cache/CacheWriter;->progressListener:Landroidx/media3/datasource/cache/CacheWriter$ProgressListener;

    .line 82
    invoke-virtual {p1}, Landroidx/media3/datasource/cache/CacheDataSource;->getCacheKeyFactory()Landroidx/media3/datasource/cache/CacheKeyFactory;

    move-result-object v0

    invoke-interface {v0, p2}, Landroidx/media3/datasource/cache/CacheKeyFactory;->buildCacheKey(Landroidx/media3/datasource/DataSpec;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroidx/media3/datasource/cache/CacheWriter;->cacheKey:Ljava/lang/String;

    .line 83
    iget-wide v0, p2, Landroidx/media3/datasource/DataSpec;->position:J

    iput-wide v0, p0, Landroidx/media3/datasource/cache/CacheWriter;->nextPosition:J

    .line 84
    return-void
.end method

.method private getLength()J
    .locals 4

    .line 228
    iget-wide v0, p0, Landroidx/media3/datasource/cache/CacheWriter;->endPosition:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-wide v0, p0, Landroidx/media3/datasource/cache/CacheWriter;->endPosition:J

    iget-object v2, p0, Landroidx/media3/datasource/cache/CacheWriter;->dataSpec:Landroidx/media3/datasource/DataSpec;

    iget-wide v2, v2, Landroidx/media3/datasource/DataSpec;->position:J

    sub-long v2, v0, v2

    :goto_0
    return-wide v2
.end method

.method private onNewBytesCached(J)V
    .locals 8
    .param p1, "newBytesCached"    # J

    .line 221
    iget-wide v0, p0, Landroidx/media3/datasource/cache/CacheWriter;->bytesCached:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Landroidx/media3/datasource/cache/CacheWriter;->bytesCached:J

    .line 222
    iget-object v0, p0, Landroidx/media3/datasource/cache/CacheWriter;->progressListener:Landroidx/media3/datasource/cache/CacheWriter$ProgressListener;

    if-eqz v0, :cond_0

    .line 223
    iget-object v1, p0, Landroidx/media3/datasource/cache/CacheWriter;->progressListener:Landroidx/media3/datasource/cache/CacheWriter$ProgressListener;

    invoke-direct {p0}, Landroidx/media3/datasource/cache/CacheWriter;->getLength()J

    move-result-wide v2

    iget-wide v4, p0, Landroidx/media3/datasource/cache/CacheWriter;->bytesCached:J

    move-wide v6, p1

    .end local p1    # "newBytesCached":J
    .local v6, "newBytesCached":J
    invoke-interface/range {v1 .. v7}, Landroidx/media3/datasource/cache/CacheWriter$ProgressListener;->onProgress(JJJ)V

    goto :goto_0

    .line 222
    .end local v6    # "newBytesCached":J
    .restart local p1    # "newBytesCached":J
    :cond_0
    move-wide v6, p1

    .line 225
    .end local p1    # "newBytesCached":J
    .restart local v6    # "newBytesCached":J
    :goto_0
    return-void
.end method

.method private onRequestEndPosition(J)V
    .locals 8
    .param p1, "endPosition"    # J

    .line 211
    iget-wide v0, p0, Landroidx/media3/datasource/cache/CacheWriter;->endPosition:J

    cmp-long v0, v0, p1

    if-nez v0, :cond_0

    .line 212
    return-void

    .line 214
    :cond_0
    iput-wide p1, p0, Landroidx/media3/datasource/cache/CacheWriter;->endPosition:J

    .line 215
    iget-object v0, p0, Landroidx/media3/datasource/cache/CacheWriter;->progressListener:Landroidx/media3/datasource/cache/CacheWriter$ProgressListener;

    if-eqz v0, :cond_1

    .line 216
    iget-object v1, p0, Landroidx/media3/datasource/cache/CacheWriter;->progressListener:Landroidx/media3/datasource/cache/CacheWriter$ProgressListener;

    invoke-direct {p0}, Landroidx/media3/datasource/cache/CacheWriter;->getLength()J

    move-result-wide v2

    iget-wide v4, p0, Landroidx/media3/datasource/cache/CacheWriter;->bytesCached:J

    const-wide/16 v6, 0x0

    invoke-interface/range {v1 .. v7}, Landroidx/media3/datasource/cache/CacheWriter$ProgressListener;->onProgress(JJJ)V

    .line 218
    :cond_1
    return-void
.end method

.method private readBlockToCache(JJ)J
    .locals 11
    .param p1, "position"    # J
    .param p3, "length"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 150
    add-long v0, p1, p3

    iget-wide v2, p0, Landroidx/media3/datasource/cache/CacheWriter;->endPosition:J

    cmp-long v0, v0, v2

    const/4 v1, 0x0

    const-wide/16 v2, -0x1

    if-eqz v0, :cond_1

    cmp-long v0, p3, v2

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    move v0, v1

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 152
    .local v0, "isLastBlock":Z
    :goto_1
    const-wide/16 v4, -0x1

    .line 153
    .local v4, "resolvedLength":J
    const/4 v6, 0x0

    .line 154
    .local v6, "isDataSourceOpen":Z
    cmp-long v7, p3, v2

    if-eqz v7, :cond_2

    .line 157
    iget-object v7, p0, Landroidx/media3/datasource/cache/CacheWriter;->dataSpec:Landroidx/media3/datasource/DataSpec;

    .line 158
    invoke-virtual {v7}, Landroidx/media3/datasource/DataSpec;->buildUpon()Landroidx/media3/datasource/DataSpec$Builder;

    move-result-object v7

    invoke-virtual {v7, p1, p2}, Landroidx/media3/datasource/DataSpec$Builder;->setPosition(J)Landroidx/media3/datasource/DataSpec$Builder;

    move-result-object v7

    invoke-virtual {v7, p3, p4}, Landroidx/media3/datasource/DataSpec$Builder;->setLength(J)Landroidx/media3/datasource/DataSpec$Builder;

    move-result-object v7

    invoke-virtual {v7}, Landroidx/media3/datasource/DataSpec$Builder;->build()Landroidx/media3/datasource/DataSpec;

    move-result-object v7

    .line 160
    .local v7, "boundedDataSpec":Landroidx/media3/datasource/DataSpec;
    :try_start_0
    iget-object v8, p0, Landroidx/media3/datasource/cache/CacheWriter;->dataSource:Landroidx/media3/datasource/cache/CacheDataSource;

    invoke-virtual {v8, v7}, Landroidx/media3/datasource/cache/CacheDataSource;->open(Landroidx/media3/datasource/DataSpec;)J

    move-result-wide v8
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-wide v4, v8

    .line 161
    const/4 v6, 0x1

    .line 164
    goto :goto_2

    .line 162
    :catch_0
    move-exception v8

    .line 163
    .local v8, "e":Ljava/lang/Exception;
    iget-object v9, p0, Landroidx/media3/datasource/cache/CacheWriter;->dataSource:Landroidx/media3/datasource/cache/CacheDataSource;

    invoke-static {v9}, Landroidx/media3/datasource/DataSourceUtil;->closeQuietly(Landroidx/media3/datasource/DataSource;)V

    .line 167
    .end local v7    # "boundedDataSpec":Landroidx/media3/datasource/DataSpec;
    .end local v8    # "e":Ljava/lang/Exception;
    :cond_2
    :goto_2
    if-nez v6, :cond_3

    .line 170
    invoke-direct {p0}, Landroidx/media3/datasource/cache/CacheWriter;->throwIfCanceled()V

    .line 171
    iget-object v7, p0, Landroidx/media3/datasource/cache/CacheWriter;->dataSpec:Landroidx/media3/datasource/DataSpec;

    .line 172
    invoke-virtual {v7}, Landroidx/media3/datasource/DataSpec;->buildUpon()Landroidx/media3/datasource/DataSpec$Builder;

    move-result-object v7

    invoke-virtual {v7, p1, p2}, Landroidx/media3/datasource/DataSpec$Builder;->setPosition(J)Landroidx/media3/datasource/DataSpec$Builder;

    move-result-object v7

    invoke-virtual {v7, v2, v3}, Landroidx/media3/datasource/DataSpec$Builder;->setLength(J)Landroidx/media3/datasource/DataSpec$Builder;

    move-result-object v7

    invoke-virtual {v7}, Landroidx/media3/datasource/DataSpec$Builder;->build()Landroidx/media3/datasource/DataSpec;

    move-result-object v7

    .line 174
    .local v7, "unboundedDataSpec":Landroidx/media3/datasource/DataSpec;
    :try_start_1
    iget-object v8, p0, Landroidx/media3/datasource/cache/CacheWriter;->dataSource:Landroidx/media3/datasource/cache/CacheDataSource;

    invoke-virtual {v8, v7}, Landroidx/media3/datasource/cache/CacheDataSource;->open(Landroidx/media3/datasource/DataSpec;)J

    move-result-wide v8
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-wide v4, v8

    .line 178
    goto :goto_3

    .line 175
    :catch_1
    move-exception v1

    .line 176
    .local v1, "e":Ljava/lang/Exception;
    iget-object v2, p0, Landroidx/media3/datasource/cache/CacheWriter;->dataSource:Landroidx/media3/datasource/cache/CacheDataSource;

    invoke-static {v2}, Landroidx/media3/datasource/DataSourceUtil;->closeQuietly(Landroidx/media3/datasource/DataSource;)V

    .line 177
    throw v1

    .line 181
    .end local v1    # "e":Ljava/lang/Exception;
    .end local v7    # "unboundedDataSpec":Landroidx/media3/datasource/DataSpec;
    :cond_3
    :goto_3
    const/4 v7, 0x0

    .line 183
    .local v7, "totalBytesRead":I
    if-eqz v0, :cond_4

    cmp-long v2, v4, v2

    if-eqz v2, :cond_4

    .line 184
    add-long v2, p1, v4

    :try_start_2
    invoke-direct {p0, v2, v3}, Landroidx/media3/datasource/cache/CacheWriter;->onRequestEndPosition(J)V

    goto :goto_4

    .line 198
    :catch_2
    move-exception v1

    goto :goto_6

    .line 186
    :cond_4
    :goto_4
    const/4 v2, 0x0

    .line 187
    .local v2, "bytesRead":I
    :cond_5
    :goto_5
    const/4 v3, -0x1

    if-eq v2, v3, :cond_6

    .line 188
    invoke-direct {p0}, Landroidx/media3/datasource/cache/CacheWriter;->throwIfCanceled()V

    .line 189
    iget-object v8, p0, Landroidx/media3/datasource/cache/CacheWriter;->dataSource:Landroidx/media3/datasource/cache/CacheDataSource;

    iget-object v9, p0, Landroidx/media3/datasource/cache/CacheWriter;->temporaryBuffer:[B

    iget-object v10, p0, Landroidx/media3/datasource/cache/CacheWriter;->temporaryBuffer:[B

    array-length v10, v10

    invoke-virtual {v8, v9, v1, v10}, Landroidx/media3/datasource/cache/CacheDataSource;->read([BII)I

    move-result v8

    move v2, v8

    .line 190
    if-eq v2, v3, :cond_5

    .line 191
    int-to-long v8, v2

    invoke-direct {p0, v8, v9}, Landroidx/media3/datasource/cache/CacheWriter;->onNewBytesCached(J)V

    .line 192
    add-int/2addr v7, v2

    goto :goto_5

    .line 195
    :cond_6
    if-eqz v0, :cond_7

    .line 196
    int-to-long v8, v7

    add-long/2addr v8, p1

    invoke-direct {p0, v8, v9}, Landroidx/media3/datasource/cache/CacheWriter;->onRequestEndPosition(J)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_7

    .line 199
    .end local v2    # "bytesRead":I
    .restart local v1    # "e":Ljava/lang/Exception;
    :goto_6
    iget-object v2, p0, Landroidx/media3/datasource/cache/CacheWriter;->dataSource:Landroidx/media3/datasource/cache/CacheDataSource;

    invoke-static {v2}, Landroidx/media3/datasource/DataSourceUtil;->closeQuietly(Landroidx/media3/datasource/DataSource;)V

    .line 200
    throw v1

    .line 201
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_7
    :goto_7
    nop

    .line 206
    iget-object v1, p0, Landroidx/media3/datasource/cache/CacheWriter;->dataSource:Landroidx/media3/datasource/cache/CacheDataSource;

    invoke-virtual {v1}, Landroidx/media3/datasource/cache/CacheDataSource;->close()V

    .line 207
    int-to-long v1, v7

    return-wide v1
.end method

.method private throwIfCanceled()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/InterruptedIOException;
        }
    .end annotation

    .line 232
    iget-boolean v0, p0, Landroidx/media3/datasource/cache/CacheWriter;->isCanceled:Z

    if-nez v0, :cond_0

    .line 235
    return-void

    .line 233
    :cond_0
    new-instance v0, Ljava/io/InterruptedIOException;

    invoke-direct {v0}, Ljava/io/InterruptedIOException;-><init>()V

    throw v0
.end method


# virtual methods
.method public cache()V
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 112
    invoke-direct {p0}, Landroidx/media3/datasource/cache/CacheWriter;->throwIfCanceled()V

    .line 114
    iget-object v0, p0, Landroidx/media3/datasource/cache/CacheWriter;->cache:Landroidx/media3/datasource/cache/Cache;

    iget-object v1, p0, Landroidx/media3/datasource/cache/CacheWriter;->cacheKey:Ljava/lang/String;

    iget-object v2, p0, Landroidx/media3/datasource/cache/CacheWriter;->dataSpec:Landroidx/media3/datasource/DataSpec;

    iget-wide v2, v2, Landroidx/media3/datasource/DataSpec;->position:J

    iget-object v4, p0, Landroidx/media3/datasource/cache/CacheWriter;->dataSpec:Landroidx/media3/datasource/DataSpec;

    iget-wide v4, v4, Landroidx/media3/datasource/DataSpec;->length:J

    invoke-interface/range {v0 .. v5}, Landroidx/media3/datasource/cache/Cache;->getCachedBytes(Ljava/lang/String;JJ)J

    move-result-wide v0

    iput-wide v0, p0, Landroidx/media3/datasource/cache/CacheWriter;->bytesCached:J

    .line 115
    iget-object v0, p0, Landroidx/media3/datasource/cache/CacheWriter;->dataSpec:Landroidx/media3/datasource/DataSpec;

    iget-wide v0, v0, Landroidx/media3/datasource/DataSpec;->length:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 116
    iget-object v0, p0, Landroidx/media3/datasource/cache/CacheWriter;->dataSpec:Landroidx/media3/datasource/DataSpec;

    iget-wide v0, v0, Landroidx/media3/datasource/DataSpec;->position:J

    iget-object v4, p0, Landroidx/media3/datasource/cache/CacheWriter;->dataSpec:Landroidx/media3/datasource/DataSpec;

    iget-wide v4, v4, Landroidx/media3/datasource/DataSpec;->length:J

    add-long/2addr v0, v4

    iput-wide v0, p0, Landroidx/media3/datasource/cache/CacheWriter;->endPosition:J

    goto :goto_1

    .line 118
    :cond_0
    iget-object v0, p0, Landroidx/media3/datasource/cache/CacheWriter;->cache:Landroidx/media3/datasource/cache/Cache;

    iget-object v1, p0, Landroidx/media3/datasource/cache/CacheWriter;->cacheKey:Ljava/lang/String;

    invoke-interface {v0, v1}, Landroidx/media3/datasource/cache/Cache;->getContentMetadata(Ljava/lang/String;)Landroidx/media3/datasource/cache/ContentMetadata;

    move-result-object v0

    invoke-static {v0}, Landroidx/media3/datasource/cache/ContentMetadata;->getContentLength(Landroidx/media3/datasource/cache/ContentMetadata;)J

    move-result-wide v0

    .line 119
    .local v0, "contentLength":J
    cmp-long v4, v0, v2

    if-nez v4, :cond_1

    move-wide v4, v2

    goto :goto_0

    :cond_1
    move-wide v4, v0

    :goto_0
    iput-wide v4, p0, Landroidx/media3/datasource/cache/CacheWriter;->endPosition:J

    .line 121
    .end local v0    # "contentLength":J
    :goto_1
    iget-object v0, p0, Landroidx/media3/datasource/cache/CacheWriter;->progressListener:Landroidx/media3/datasource/cache/CacheWriter$ProgressListener;

    if-eqz v0, :cond_2

    .line 122
    iget-object v4, p0, Landroidx/media3/datasource/cache/CacheWriter;->progressListener:Landroidx/media3/datasource/cache/CacheWriter$ProgressListener;

    invoke-direct {p0}, Landroidx/media3/datasource/cache/CacheWriter;->getLength()J

    move-result-wide v5

    iget-wide v7, p0, Landroidx/media3/datasource/cache/CacheWriter;->bytesCached:J

    const-wide/16 v9, 0x0

    invoke-interface/range {v4 .. v10}, Landroidx/media3/datasource/cache/CacheWriter$ProgressListener;->onProgress(JJJ)V

    .line 125
    :cond_2
    :goto_2
    iget-wide v0, p0, Landroidx/media3/datasource/cache/CacheWriter;->endPosition:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_4

    iget-wide v0, p0, Landroidx/media3/datasource/cache/CacheWriter;->nextPosition:J

    iget-wide v4, p0, Landroidx/media3/datasource/cache/CacheWriter;->endPosition:J

    cmp-long v0, v0, v4

    if-gez v0, :cond_3

    goto :goto_3

    .line 139
    :cond_3
    return-void

    .line 126
    :cond_4
    :goto_3
    invoke-direct {p0}, Landroidx/media3/datasource/cache/CacheWriter;->throwIfCanceled()V

    .line 128
    iget-wide v0, p0, Landroidx/media3/datasource/cache/CacheWriter;->endPosition:J

    cmp-long v0, v0, v2

    const-wide v4, 0x7fffffffffffffffL

    if-nez v0, :cond_5

    move-wide v0, v4

    goto :goto_4

    :cond_5
    iget-wide v0, p0, Landroidx/media3/datasource/cache/CacheWriter;->endPosition:J

    iget-wide v6, p0, Landroidx/media3/datasource/cache/CacheWriter;->nextPosition:J

    sub-long/2addr v0, v6

    :goto_4
    move-wide v10, v0

    .line 129
    .local v10, "maxRemainingLength":J
    iget-object v6, p0, Landroidx/media3/datasource/cache/CacheWriter;->cache:Landroidx/media3/datasource/cache/Cache;

    iget-object v7, p0, Landroidx/media3/datasource/cache/CacheWriter;->cacheKey:Ljava/lang/String;

    iget-wide v8, p0, Landroidx/media3/datasource/cache/CacheWriter;->nextPosition:J

    invoke-interface/range {v6 .. v11}, Landroidx/media3/datasource/cache/Cache;->getCachedLength(Ljava/lang/String;JJ)J

    move-result-wide v0

    .line 130
    .local v0, "blockLength":J
    const-wide/16 v6, 0x0

    cmp-long v6, v0, v6

    if-lez v6, :cond_6

    .line 131
    iget-wide v4, p0, Landroidx/media3/datasource/cache/CacheWriter;->nextPosition:J

    add-long/2addr v4, v0

    iput-wide v4, p0, Landroidx/media3/datasource/cache/CacheWriter;->nextPosition:J

    goto :goto_6

    .line 134
    :cond_6
    neg-long v0, v0

    .line 135
    cmp-long v4, v0, v4

    if-nez v4, :cond_7

    move-wide v4, v2

    goto :goto_5

    :cond_7
    move-wide v4, v0

    .line 136
    .local v4, "nextRequestLength":J
    :goto_5
    iget-wide v6, p0, Landroidx/media3/datasource/cache/CacheWriter;->nextPosition:J

    iget-wide v8, p0, Landroidx/media3/datasource/cache/CacheWriter;->nextPosition:J

    invoke-direct {p0, v8, v9, v4, v5}, Landroidx/media3/datasource/cache/CacheWriter;->readBlockToCache(JJ)J

    move-result-wide v8

    add-long/2addr v6, v8

    iput-wide v6, p0, Landroidx/media3/datasource/cache/CacheWriter;->nextPosition:J

    .line 138
    .end local v0    # "blockLength":J
    .end local v4    # "nextRequestLength":J
    .end local v10    # "maxRemainingLength":J
    :goto_6
    goto :goto_2
.end method

.method public cancel()V
    .locals 1

    .line 92
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/media3/datasource/cache/CacheWriter;->isCanceled:Z

    .line 93
    return-void
.end method
