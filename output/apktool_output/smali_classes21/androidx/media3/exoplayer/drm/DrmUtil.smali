.class public final Landroidx/media3/exoplayer/drm/DrmUtil;
.super Ljava/lang/Object;
.source "DrmUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media3/exoplayer/drm/DrmUtil$ErrorSource;
    }
.end annotation


# static fields
.field public static final ERROR_SOURCE_EXO_MEDIA_DRM:I = 0x1

.field public static final ERROR_SOURCE_LICENSE_ACQUISITION:I = 0x2

.field public static final ERROR_SOURCE_PROVISIONING:I = 0x3

.field private static final MAX_MANUAL_REDIRECTS:I = 0x5


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 244
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static executePost(Landroidx/media3/datasource/DataSource;Ljava/lang/String;[BLjava/util/Map;)Landroidx/media3/exoplayer/drm/MediaDrmCallback$Response;
    .locals 23
    .param p0, "dataSource"    # Landroidx/media3/datasource/DataSource;
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "httpBody"    # [B
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/media3/datasource/DataSource;",
            "Ljava/lang/String;",
            "[B",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Landroidx/media3/exoplayer/drm/MediaDrmCallback$Response;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media3/exoplayer/drm/MediaDrmCallbackException;
        }
    .end annotation

    .line 173
    .local p3, "requestProperties":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v0, Landroidx/media3/datasource/StatsDataSource;

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroidx/media3/datasource/StatsDataSource;-><init>(Landroidx/media3/datasource/DataSource;)V

    move-object v2, v0

    .line 174
    .local v2, "statsDataSource":Landroidx/media3/datasource/StatsDataSource;
    const/4 v0, 0x0

    .line 175
    .local v0, "manualRedirectCount":I
    new-instance v3, Landroidx/media3/datasource/DataSpec$Builder;

    invoke-direct {v3}, Landroidx/media3/datasource/DataSpec$Builder;-><init>()V

    .line 177
    move-object/from16 v4, p1

    invoke-virtual {v3, v4}, Landroidx/media3/datasource/DataSpec$Builder;->setUri(Ljava/lang/String;)Landroidx/media3/datasource/DataSpec$Builder;

    move-result-object v3

    .line 178
    move-object/from16 v5, p3

    invoke-virtual {v3, v5}, Landroidx/media3/datasource/DataSpec$Builder;->setHttpRequestHeaders(Ljava/util/Map;)Landroidx/media3/datasource/DataSpec$Builder;

    move-result-object v3

    .line 179
    const/4 v6, 0x2

    invoke-virtual {v3, v6}, Landroidx/media3/datasource/DataSpec$Builder;->setHttpMethod(I)Landroidx/media3/datasource/DataSpec$Builder;

    move-result-object v3

    .line 180
    move-object/from16 v6, p2

    invoke-virtual {v3, v6}, Landroidx/media3/datasource/DataSpec$Builder;->setHttpBody([B)Landroidx/media3/datasource/DataSpec$Builder;

    move-result-object v3

    .line 181
    const/4 v7, 0x1

    invoke-virtual {v3, v7}, Landroidx/media3/datasource/DataSpec$Builder;->setFlags(I)Landroidx/media3/datasource/DataSpec$Builder;

    move-result-object v3

    .line 182
    invoke-virtual {v3}, Landroidx/media3/datasource/DataSpec$Builder;->build()Landroidx/media3/datasource/DataSpec;

    move-result-object v3

    .line 183
    .local v3, "dataSpec":Landroidx/media3/datasource/DataSpec;
    move-object v8, v3

    move-object v7, v3

    move v3, v0

    .line 186
    .end local v0    # "manualRedirectCount":I
    .local v3, "manualRedirectCount":I
    .local v7, "dataSpec":Landroidx/media3/datasource/DataSpec;
    .local v8, "originalDataSpec":Landroidx/media3/datasource/DataSpec;
    :goto_0
    :try_start_0
    new-instance v0, Landroidx/media3/datasource/DataSourceInputStream;

    invoke-direct {v0, v2, v7}, Landroidx/media3/datasource/DataSourceInputStream;-><init>(Landroidx/media3/datasource/DataSource;Landroidx/media3/datasource/DataSpec;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_5

    move-object/from16 v19, v0

    .line 188
    .local v19, "inputStream":Landroidx/media3/datasource/DataSourceInputStream;
    :try_start_1
    invoke-static/range {v19 .. v19}, Lcom/google/common/io/ByteStreams;->toByteArray(Ljava/io/InputStream;)[B

    move-result-object v0
    :try_end_1
    .catch Landroidx/media3/datasource/HttpDataSource$InvalidResponseCodeException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 189
    .local v0, "response":[B
    move-object v9, v7

    .end local v7    # "dataSpec":Landroidx/media3/datasource/DataSpec;
    .local v9, "dataSpec":Landroidx/media3/datasource/DataSpec;
    :try_start_2
    new-instance v7, Landroidx/media3/exoplayer/source/LoadEventInfo;

    .line 193
    invoke-virtual {v2}, Landroidx/media3/datasource/StatsDataSource;->getLastOpenedUri()Landroid/net/Uri;

    move-result-object v11

    .line 194
    invoke-virtual {v2}, Landroidx/media3/datasource/StatsDataSource;->getLastResponseHeaders()Ljava/util/Map;

    move-result-object v12

    .line 195
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v13

    array-length v10, v0
    :try_end_2
    .catch Landroidx/media3/datasource/HttpDataSource$InvalidResponseCodeException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-object/from16 v20, v2

    .end local v2    # "statsDataSource":Landroidx/media3/datasource/StatsDataSource;
    .local v20, "statsDataSource":Landroidx/media3/datasource/StatsDataSource;
    int-to-long v1, v10

    move-object v10, v8

    move-object v15, v9

    .end local v8    # "originalDataSpec":Landroidx/media3/datasource/DataSpec;
    .end local v9    # "dataSpec":Landroidx/media3/datasource/DataSpec;
    .local v10, "originalDataSpec":Landroidx/media3/datasource/DataSpec;
    .local v15, "dataSpec":Landroidx/media3/datasource/DataSpec;
    const-wide/16 v8, -0x1

    move-object/from16 v17, v15

    .end local v15    # "dataSpec":Landroidx/media3/datasource/DataSpec;
    .local v17, "dataSpec":Landroidx/media3/datasource/DataSpec;
    const-wide/16 v15, 0x0

    move-wide/from16 v21, v1

    move-object/from16 v1, v17

    move-wide/from16 v17, v21

    .end local v17    # "dataSpec":Landroidx/media3/datasource/DataSpec;
    .local v1, "dataSpec":Landroidx/media3/datasource/DataSpec;
    :try_start_3
    invoke-direct/range {v7 .. v18}, Landroidx/media3/exoplayer/source/LoadEventInfo;-><init>(JLandroidx/media3/datasource/DataSpec;Landroid/net/Uri;Ljava/util/Map;JJJ)V

    .line 198
    .local v7, "loadEventInfo":Landroidx/media3/exoplayer/source/LoadEventInfo;
    new-instance v2, Landroidx/media3/exoplayer/drm/MediaDrmCallback$Response$Builder;

    invoke-direct {v2, v0}, Landroidx/media3/exoplayer/drm/MediaDrmCallback$Response$Builder;-><init>([B)V

    .line 199
    invoke-virtual {v2, v7}, Landroidx/media3/exoplayer/drm/MediaDrmCallback$Response$Builder;->setLoadEventInfo(Landroidx/media3/exoplayer/source/LoadEventInfo;)Landroidx/media3/exoplayer/drm/MediaDrmCallback$Response$Builder;

    move-result-object v2

    .line 200
    invoke-virtual {v2}, Landroidx/media3/exoplayer/drm/MediaDrmCallback$Response$Builder;->build()Landroidx/media3/exoplayer/drm/MediaDrmCallback$Response;

    move-result-object v2
    :try_end_3
    .catch Landroidx/media3/datasource/HttpDataSource$InvalidResponseCodeException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 209
    :try_start_4
    invoke-static/range {v19 .. v19}, Landroidx/media3/common/util/Util;->closeQuietly(Ljava/io/Closeable;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4

    .line 198
    return-object v2

    .line 201
    .end local v0    # "response":[B
    .end local v7    # "loadEventInfo":Landroidx/media3/exoplayer/source/LoadEventInfo;
    :catch_0
    move-exception v0

    goto :goto_1

    .line 209
    .end local v1    # "dataSpec":Landroidx/media3/datasource/DataSpec;
    .end local v10    # "originalDataSpec":Landroidx/media3/datasource/DataSpec;
    .end local v20    # "statsDataSource":Landroidx/media3/datasource/StatsDataSource;
    .restart local v2    # "statsDataSource":Landroidx/media3/datasource/StatsDataSource;
    .restart local v8    # "originalDataSpec":Landroidx/media3/datasource/DataSpec;
    .restart local v9    # "dataSpec":Landroidx/media3/datasource/DataSpec;
    :catchall_0
    move-exception v0

    move-object/from16 v20, v2

    move-object v10, v8

    move-object v1, v9

    .end local v2    # "statsDataSource":Landroidx/media3/datasource/StatsDataSource;
    .end local v8    # "originalDataSpec":Landroidx/media3/datasource/DataSpec;
    .end local v9    # "dataSpec":Landroidx/media3/datasource/DataSpec;
    .restart local v1    # "dataSpec":Landroidx/media3/datasource/DataSpec;
    .restart local v10    # "originalDataSpec":Landroidx/media3/datasource/DataSpec;
    .restart local v20    # "statsDataSource":Landroidx/media3/datasource/StatsDataSource;
    goto :goto_2

    .line 201
    .end local v1    # "dataSpec":Landroidx/media3/datasource/DataSpec;
    .end local v10    # "originalDataSpec":Landroidx/media3/datasource/DataSpec;
    .end local v20    # "statsDataSource":Landroidx/media3/datasource/StatsDataSource;
    .restart local v2    # "statsDataSource":Landroidx/media3/datasource/StatsDataSource;
    .restart local v8    # "originalDataSpec":Landroidx/media3/datasource/DataSpec;
    .restart local v9    # "dataSpec":Landroidx/media3/datasource/DataSpec;
    :catch_1
    move-exception v0

    move-object/from16 v20, v2

    move-object v10, v8

    move-object v1, v9

    .end local v2    # "statsDataSource":Landroidx/media3/datasource/StatsDataSource;
    .end local v8    # "originalDataSpec":Landroidx/media3/datasource/DataSpec;
    .end local v9    # "dataSpec":Landroidx/media3/datasource/DataSpec;
    .restart local v1    # "dataSpec":Landroidx/media3/datasource/DataSpec;
    .restart local v10    # "originalDataSpec":Landroidx/media3/datasource/DataSpec;
    .restart local v20    # "statsDataSource":Landroidx/media3/datasource/StatsDataSource;
    goto :goto_1

    .line 209
    .end local v1    # "dataSpec":Landroidx/media3/datasource/DataSpec;
    .end local v10    # "originalDataSpec":Landroidx/media3/datasource/DataSpec;
    .end local v20    # "statsDataSource":Landroidx/media3/datasource/StatsDataSource;
    .restart local v2    # "statsDataSource":Landroidx/media3/datasource/StatsDataSource;
    .local v7, "dataSpec":Landroidx/media3/datasource/DataSpec;
    .restart local v8    # "originalDataSpec":Landroidx/media3/datasource/DataSpec;
    :catchall_1
    move-exception v0

    move-object/from16 v20, v2

    move-object v1, v7

    move-object v10, v8

    .end local v2    # "statsDataSource":Landroidx/media3/datasource/StatsDataSource;
    .end local v7    # "dataSpec":Landroidx/media3/datasource/DataSpec;
    .end local v8    # "originalDataSpec":Landroidx/media3/datasource/DataSpec;
    .restart local v1    # "dataSpec":Landroidx/media3/datasource/DataSpec;
    .restart local v10    # "originalDataSpec":Landroidx/media3/datasource/DataSpec;
    .restart local v20    # "statsDataSource":Landroidx/media3/datasource/StatsDataSource;
    goto :goto_2

    .line 201
    .end local v1    # "dataSpec":Landroidx/media3/datasource/DataSpec;
    .end local v10    # "originalDataSpec":Landroidx/media3/datasource/DataSpec;
    .end local v20    # "statsDataSource":Landroidx/media3/datasource/StatsDataSource;
    .restart local v2    # "statsDataSource":Landroidx/media3/datasource/StatsDataSource;
    .restart local v7    # "dataSpec":Landroidx/media3/datasource/DataSpec;
    .restart local v8    # "originalDataSpec":Landroidx/media3/datasource/DataSpec;
    :catch_2
    move-exception v0

    move-object/from16 v20, v2

    move-object v1, v7

    move-object v10, v8

    .line 202
    .end local v2    # "statsDataSource":Landroidx/media3/datasource/StatsDataSource;
    .end local v7    # "dataSpec":Landroidx/media3/datasource/DataSpec;
    .end local v8    # "originalDataSpec":Landroidx/media3/datasource/DataSpec;
    .local v0, "e":Landroidx/media3/datasource/HttpDataSource$InvalidResponseCodeException;
    .restart local v1    # "dataSpec":Landroidx/media3/datasource/DataSpec;
    .restart local v10    # "originalDataSpec":Landroidx/media3/datasource/DataSpec;
    .restart local v20    # "statsDataSource":Landroidx/media3/datasource/StatsDataSource;
    :goto_1
    :try_start_5
    invoke-static {v0, v3}, Landroidx/media3/exoplayer/drm/DrmUtil;->getRedirectUrl(Landroidx/media3/datasource/HttpDataSource$InvalidResponseCodeException;I)Ljava/lang/String;

    move-result-object v2

    .line 203
    .local v2, "redirectUrl":Ljava/lang/String;
    if-eqz v2, :cond_0

    .line 206
    add-int/lit8 v3, v3, 0x1

    .line 207
    invoke-virtual {v1}, Landroidx/media3/datasource/DataSpec;->buildUpon()Landroidx/media3/datasource/DataSpec$Builder;

    move-result-object v7

    invoke-virtual {v7, v2}, Landroidx/media3/datasource/DataSpec$Builder;->setUri(Ljava/lang/String;)Landroidx/media3/datasource/DataSpec$Builder;

    move-result-object v7

    invoke-virtual {v7}, Landroidx/media3/datasource/DataSpec$Builder;->build()Landroidx/media3/datasource/DataSpec;

    move-result-object v7
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 209
    .end local v0    # "e":Landroidx/media3/datasource/HttpDataSource$InvalidResponseCodeException;
    .end local v1    # "dataSpec":Landroidx/media3/datasource/DataSpec;
    .end local v2    # "redirectUrl":Ljava/lang/String;
    .restart local v7    # "dataSpec":Landroidx/media3/datasource/DataSpec;
    :try_start_6
    invoke-static/range {v19 .. v19}, Landroidx/media3/common/util/Util;->closeQuietly(Ljava/io/Closeable;)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_3

    .line 210
    nop

    .line 211
    .end local v19    # "inputStream":Landroidx/media3/datasource/DataSourceInputStream;
    move-object/from16 v1, p0

    move-object v8, v10

    move-object/from16 v2, v20

    goto :goto_0

    .line 212
    :catch_3
    move-exception v0

    move-object v13, v0

    move-object v1, v7

    goto :goto_3

    .line 204
    .end local v7    # "dataSpec":Landroidx/media3/datasource/DataSpec;
    .restart local v0    # "e":Landroidx/media3/datasource/HttpDataSource$InvalidResponseCodeException;
    .restart local v1    # "dataSpec":Landroidx/media3/datasource/DataSpec;
    .restart local v2    # "redirectUrl":Ljava/lang/String;
    .restart local v19    # "inputStream":Landroidx/media3/datasource/DataSourceInputStream;
    :cond_0
    nop

    .end local v1    # "dataSpec":Landroidx/media3/datasource/DataSpec;
    .end local v3    # "manualRedirectCount":I
    .end local v10    # "originalDataSpec":Landroidx/media3/datasource/DataSpec;
    .end local v19    # "inputStream":Landroidx/media3/datasource/DataSourceInputStream;
    .end local v20    # "statsDataSource":Landroidx/media3/datasource/StatsDataSource;
    .end local p0    # "dataSource":Landroidx/media3/datasource/DataSource;
    .end local p1    # "url":Ljava/lang/String;
    .end local p2    # "httpBody":[B
    .end local p3    # "requestProperties":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :try_start_7
    throw v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .line 209
    .end local v0    # "e":Landroidx/media3/datasource/HttpDataSource$InvalidResponseCodeException;
    .end local v2    # "redirectUrl":Ljava/lang/String;
    .restart local v1    # "dataSpec":Landroidx/media3/datasource/DataSpec;
    .restart local v3    # "manualRedirectCount":I
    .restart local v10    # "originalDataSpec":Landroidx/media3/datasource/DataSpec;
    .restart local v19    # "inputStream":Landroidx/media3/datasource/DataSourceInputStream;
    .restart local v20    # "statsDataSource":Landroidx/media3/datasource/StatsDataSource;
    .restart local p0    # "dataSource":Landroidx/media3/datasource/DataSource;
    .restart local p1    # "url":Ljava/lang/String;
    .restart local p2    # "httpBody":[B
    .restart local p3    # "requestProperties":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :catchall_2
    move-exception v0

    :goto_2
    :try_start_8
    invoke-static/range {v19 .. v19}, Landroidx/media3/common/util/Util;->closeQuietly(Ljava/io/Closeable;)V

    .line 210
    nop

    .end local v1    # "dataSpec":Landroidx/media3/datasource/DataSpec;
    .end local v3    # "manualRedirectCount":I
    .end local v10    # "originalDataSpec":Landroidx/media3/datasource/DataSpec;
    .end local v20    # "statsDataSource":Landroidx/media3/datasource/StatsDataSource;
    .end local p0    # "dataSource":Landroidx/media3/datasource/DataSource;
    .end local p1    # "url":Ljava/lang/String;
    .end local p2    # "httpBody":[B
    .end local p3    # "requestProperties":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    throw v0
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_4

    .line 212
    .end local v19    # "inputStream":Landroidx/media3/datasource/DataSourceInputStream;
    .restart local v1    # "dataSpec":Landroidx/media3/datasource/DataSpec;
    .restart local v3    # "manualRedirectCount":I
    .restart local v10    # "originalDataSpec":Landroidx/media3/datasource/DataSpec;
    .restart local v20    # "statsDataSource":Landroidx/media3/datasource/StatsDataSource;
    .restart local p0    # "dataSource":Landroidx/media3/datasource/DataSource;
    .restart local p1    # "url":Ljava/lang/String;
    .restart local p2    # "httpBody":[B
    .restart local p3    # "requestProperties":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :catch_4
    move-exception v0

    move-object v13, v0

    goto :goto_3

    .end local v1    # "dataSpec":Landroidx/media3/datasource/DataSpec;
    .end local v10    # "originalDataSpec":Landroidx/media3/datasource/DataSpec;
    .end local v20    # "statsDataSource":Landroidx/media3/datasource/StatsDataSource;
    .local v2, "statsDataSource":Landroidx/media3/datasource/StatsDataSource;
    .restart local v7    # "dataSpec":Landroidx/media3/datasource/DataSpec;
    .restart local v8    # "originalDataSpec":Landroidx/media3/datasource/DataSpec;
    :catch_5
    move-exception v0

    move-object/from16 v20, v2

    move-object v1, v7

    move-object v10, v8

    move-object v13, v0

    .line 213
    .end local v2    # "statsDataSource":Landroidx/media3/datasource/StatsDataSource;
    .end local v7    # "dataSpec":Landroidx/media3/datasource/DataSpec;
    .end local v8    # "originalDataSpec":Landroidx/media3/datasource/DataSpec;
    .restart local v1    # "dataSpec":Landroidx/media3/datasource/DataSpec;
    .restart local v10    # "originalDataSpec":Landroidx/media3/datasource/DataSpec;
    .local v13, "e":Ljava/lang/Exception;
    .restart local v20    # "statsDataSource":Landroidx/media3/datasource/StatsDataSource;
    :goto_3
    new-instance v7, Landroidx/media3/exoplayer/drm/MediaDrmCallbackException;

    .line 215
    invoke-virtual/range {v20 .. v20}, Landroidx/media3/datasource/StatsDataSource;->getLastOpenedUri()Landroid/net/Uri;

    move-result-object v9

    .line 216
    move-object v8, v10

    .end local v10    # "originalDataSpec":Landroidx/media3/datasource/DataSpec;
    .restart local v8    # "originalDataSpec":Landroidx/media3/datasource/DataSpec;
    invoke-virtual/range {v20 .. v20}, Landroidx/media3/datasource/StatsDataSource;->getResponseHeaders()Ljava/util/Map;

    move-result-object v10

    .line 217
    invoke-virtual/range {v20 .. v20}, Landroidx/media3/datasource/StatsDataSource;->getBytesRead()J

    move-result-wide v11

    invoke-direct/range {v7 .. v13}, Landroidx/media3/exoplayer/drm/MediaDrmCallbackException;-><init>(Landroidx/media3/datasource/DataSpec;Landroid/net/Uri;Ljava/util/Map;JLjava/lang/Throwable;)V

    move-object v10, v8

    .end local v8    # "originalDataSpec":Landroidx/media3/datasource/DataSpec;
    .restart local v10    # "originalDataSpec":Landroidx/media3/datasource/DataSpec;
    throw v7
.end method

.method public static getErrorCodeForMediaDrmException(Ljava/lang/Throwable;I)I
    .locals 3
    .param p0, "exception"    # Ljava/lang/Throwable;
    .param p1, "errorSource"    # I

    .line 90
    instance-of v0, p0, Landroid/media/MediaDrm$MediaDrmStateException;

    if-eqz v0, :cond_0

    .line 92
    move-object v0, p0

    check-cast v0, Landroid/media/MediaDrm$MediaDrmStateException;

    invoke-virtual {v0}, Landroid/media/MediaDrm$MediaDrmStateException;->getDiagnosticInfo()Ljava/lang/String;

    move-result-object v0

    .line 93
    .local v0, "diagnosticsInfo":Ljava/lang/String;
    invoke-static {v0}, Landroidx/media3/common/util/Util;->getErrorCodeFromPlatformDiagnosticsInfo(Ljava/lang/String;)I

    move-result v1

    .line 94
    .local v1, "drmErrorCode":I
    invoke-static {v1}, Landroidx/media3/common/util/Util;->getErrorCodeForMediaDrmErrorCode(I)I

    move-result v2

    return v2

    .line 95
    .end local v0    # "diagnosticsInfo":Ljava/lang/String;
    .end local v1    # "drmErrorCode":I
    :cond_0
    instance-of v0, p0, Landroid/media/MediaDrmResetException;

    const/16 v1, 0x1776

    if-eqz v0, :cond_1

    .line 96
    return v1

    .line 97
    :cond_1
    instance-of v0, p0, Landroid/media/NotProvisionedException;

    const/16 v2, 0x1772

    if-nez v0, :cond_a

    .line 98
    invoke-static {p0}, Landroidx/media3/exoplayer/drm/DrmUtil;->isFailureToConstructNotProvisionedException(Ljava/lang/Throwable;)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_0

    .line 100
    :cond_2
    instance-of v0, p0, Landroid/media/DeniedByServerException;

    if-eqz v0, :cond_3

    .line 101
    const/16 v0, 0x1777

    return v0

    .line 102
    :cond_3
    instance-of v0, p0, Landroidx/media3/exoplayer/drm/UnsupportedDrmException;

    if-eqz v0, :cond_4

    .line 103
    const/16 v0, 0x1771

    return v0

    .line 104
    :cond_4
    instance-of v0, p0, Landroidx/media3/exoplayer/drm/DefaultDrmSessionManager$MissingSchemeDataException;

    if-eqz v0, :cond_5

    .line 105
    const/16 v0, 0x1773

    return v0

    .line 106
    :cond_5
    instance-of v0, p0, Landroidx/media3/exoplayer/drm/KeysExpiredException;

    if-eqz v0, :cond_6

    .line 107
    const/16 v0, 0x1778

    return v0

    .line 108
    :cond_6
    const/4 v0, 0x1

    if-ne p1, v0, :cond_7

    .line 111
    return v1

    .line 112
    :cond_7
    const/4 v0, 0x2

    if-ne p1, v0, :cond_8

    .line 113
    const/16 v0, 0x1774

    return v0

    .line 114
    :cond_8
    const/4 v0, 0x3

    if-ne p1, v0, :cond_9

    .line 115
    return v2

    .line 118
    :cond_9
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 99
    :cond_a
    :goto_0
    return v2
.end method

.method private static getRedirectUrl(Landroidx/media3/datasource/HttpDataSource$InvalidResponseCodeException;I)Ljava/lang/String;
    .locals 6
    .param p0, "exception"    # Landroidx/media3/datasource/HttpDataSource$InvalidResponseCodeException;
    .param p1, "manualRedirectCount"    # I

    .line 227
    iget v0, p0, Landroidx/media3/datasource/HttpDataSource$InvalidResponseCodeException;->responseCode:I

    const/16 v1, 0x133

    const/4 v2, 0x0

    if-eq v0, v1, :cond_0

    iget v0, p0, Landroidx/media3/datasource/HttpDataSource$InvalidResponseCodeException;->responseCode:I

    const/16 v1, 0x134

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x5

    if-ge p1, v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    move v0, v2

    .line 230
    .local v0, "manuallyRedirect":Z
    :goto_0
    const/4 v1, 0x0

    if-nez v0, :cond_2

    .line 231
    return-object v1

    .line 233
    :cond_2
    iget-object v3, p0, Landroidx/media3/datasource/HttpDataSource$InvalidResponseCodeException;->headerFields:Ljava/util/Map;

    .line 234
    .local v3, "headerFields":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    if-eqz v3, :cond_3

    .line 235
    const-string v4, "Location"

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 236
    .local v4, "locationHeaders":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v4, :cond_3

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_3

    .line 237
    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    return-object v1

    .line 240
    .end local v4    # "locationHeaders":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_3
    return-object v1
.end method

.method public static isFailureToConstructNotProvisionedException(Ljava/lang/Throwable;)Z
    .locals 2
    .param p0, "e"    # Ljava/lang/Throwable;

    .line 127
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x22

    if-ne v0, v1, :cond_0

    instance-of v0, p0, Ljava/lang/NoSuchMethodError;

    if-eqz v0, :cond_0

    .line 129
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 130
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Landroid/media/NotProvisionedException;.<init>("

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 127
    :goto_0
    return v0
.end method

.method public static isFailureToConstructResourceBusyException(Ljava/lang/Throwable;)Z
    .locals 2
    .param p0, "e"    # Ljava/lang/Throwable;

    .line 138
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x22

    if-ne v0, v1, :cond_0

    instance-of v0, p0, Ljava/lang/NoSuchMethodError;

    if-eqz v0, :cond_0

    .line 140
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 141
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Landroid/media/ResourceBusyException;.<init>("

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 138
    :goto_0
    return v0
.end method
