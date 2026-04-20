.class public final Landroidx/media3/datasource/ContentDataSource;
.super Landroidx/media3/datasource/BaseDataSource;
.source "ContentDataSource.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media3/datasource/ContentDataSource$ContentDataSourceException;
    }
.end annotation


# instance fields
.field private assetFileDescriptor:Landroid/content/res/AssetFileDescriptor;

.field private bytesRemaining:J

.field private inputStream:Ljava/io/FileInputStream;

.field private opened:Z

.field private final resolver:Landroid/content/ContentResolver;

.field private uri:Landroid/net/Uri;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 71
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroidx/media3/datasource/BaseDataSource;-><init>(Z)V

    .line 72
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Landroidx/media3/datasource/ContentDataSource;->resolver:Landroid/content/ContentResolver;

    .line 73
    return-void
.end method


# virtual methods
.method public close()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media3/datasource/ContentDataSource$ContentDataSourceException;
        }
    .end annotation

    .line 206
    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/media3/datasource/ContentDataSource;->uri:Landroid/net/Uri;

    .line 208
    const/16 v1, 0x7d0

    const/4 v2, 0x0

    :try_start_0
    iget-object v3, p0, Landroidx/media3/datasource/ContentDataSource;->inputStream:Ljava/io/FileInputStream;

    if-eqz v3, :cond_0

    .line 209
    iget-object v3, p0, Landroidx/media3/datasource/ContentDataSource;->inputStream:Ljava/io/FileInputStream;

    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 214
    :cond_0
    iput-object v0, p0, Landroidx/media3/datasource/ContentDataSource;->inputStream:Ljava/io/FileInputStream;

    .line 216
    :try_start_1
    iget-object v3, p0, Landroidx/media3/datasource/ContentDataSource;->assetFileDescriptor:Landroid/content/res/AssetFileDescriptor;

    if-eqz v3, :cond_1

    .line 217
    iget-object v3, p0, Landroidx/media3/datasource/ContentDataSource;->assetFileDescriptor:Landroid/content/res/AssetFileDescriptor;

    invoke-virtual {v3}, Landroid/content/res/AssetFileDescriptor;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 222
    :cond_1
    iput-object v0, p0, Landroidx/media3/datasource/ContentDataSource;->assetFileDescriptor:Landroid/content/res/AssetFileDescriptor;

    .line 223
    iget-boolean v0, p0, Landroidx/media3/datasource/ContentDataSource;->opened:Z

    if-eqz v0, :cond_2

    .line 224
    iput-boolean v2, p0, Landroidx/media3/datasource/ContentDataSource;->opened:Z

    .line 225
    invoke-virtual {p0}, Landroidx/media3/datasource/ContentDataSource;->transferEnded()V

    .line 228
    :cond_2
    nop

    .line 229
    return-void

    .line 222
    :catchall_0
    move-exception v1

    goto :goto_0

    .line 219
    :catch_0
    move-exception v3

    .line 220
    .local v3, "e":Ljava/io/IOException;
    :try_start_2
    new-instance v4, Landroidx/media3/datasource/ContentDataSource$ContentDataSourceException;

    invoke-direct {v4, v3, v1}, Landroidx/media3/datasource/ContentDataSource$ContentDataSourceException;-><init>(Ljava/io/IOException;I)V

    throw v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 222
    .end local v3    # "e":Ljava/io/IOException;
    :goto_0
    iput-object v0, p0, Landroidx/media3/datasource/ContentDataSource;->assetFileDescriptor:Landroid/content/res/AssetFileDescriptor;

    .line 223
    iget-boolean v0, p0, Landroidx/media3/datasource/ContentDataSource;->opened:Z

    if-eqz v0, :cond_3

    .line 224
    iput-boolean v2, p0, Landroidx/media3/datasource/ContentDataSource;->opened:Z

    .line 225
    invoke-virtual {p0}, Landroidx/media3/datasource/ContentDataSource;->transferEnded()V

    .line 227
    :cond_3
    throw v1

    .line 214
    :catchall_1
    move-exception v3

    goto :goto_1

    .line 211
    :catch_1
    move-exception v3

    .line 212
    .restart local v3    # "e":Ljava/io/IOException;
    :try_start_3
    new-instance v4, Landroidx/media3/datasource/ContentDataSource$ContentDataSourceException;

    invoke-direct {v4, v3, v1}, Landroidx/media3/datasource/ContentDataSource$ContentDataSourceException;-><init>(Ljava/io/IOException;I)V

    throw v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 214
    .end local v3    # "e":Ljava/io/IOException;
    :goto_1
    iput-object v0, p0, Landroidx/media3/datasource/ContentDataSource;->inputStream:Ljava/io/FileInputStream;

    .line 216
    :try_start_4
    iget-object v4, p0, Landroidx/media3/datasource/ContentDataSource;->assetFileDescriptor:Landroid/content/res/AssetFileDescriptor;

    if-eqz v4, :cond_4

    .line 217
    iget-object v4, p0, Landroidx/media3/datasource/ContentDataSource;->assetFileDescriptor:Landroid/content/res/AssetFileDescriptor;

    invoke-virtual {v4}, Landroid/content/res/AssetFileDescriptor;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 222
    :cond_4
    iput-object v0, p0, Landroidx/media3/datasource/ContentDataSource;->assetFileDescriptor:Landroid/content/res/AssetFileDescriptor;

    .line 223
    iget-boolean v0, p0, Landroidx/media3/datasource/ContentDataSource;->opened:Z

    if-eqz v0, :cond_5

    .line 224
    iput-boolean v2, p0, Landroidx/media3/datasource/ContentDataSource;->opened:Z

    .line 225
    invoke-virtual {p0}, Landroidx/media3/datasource/ContentDataSource;->transferEnded()V

    .line 228
    :cond_5
    throw v3

    .line 222
    :catchall_2
    move-exception v1

    goto :goto_2

    .line 219
    :catch_2
    move-exception v3

    .line 220
    .restart local v3    # "e":Ljava/io/IOException;
    :try_start_5
    new-instance v4, Landroidx/media3/datasource/ContentDataSource$ContentDataSourceException;

    invoke-direct {v4, v3, v1}, Landroidx/media3/datasource/ContentDataSource$ContentDataSourceException;-><init>(Ljava/io/IOException;I)V

    throw v4
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 222
    .end local v3    # "e":Ljava/io/IOException;
    :goto_2
    iput-object v0, p0, Landroidx/media3/datasource/ContentDataSource;->assetFileDescriptor:Landroid/content/res/AssetFileDescriptor;

    .line 223
    iget-boolean v0, p0, Landroidx/media3/datasource/ContentDataSource;->opened:Z

    if-eqz v0, :cond_6

    .line 224
    iput-boolean v2, p0, Landroidx/media3/datasource/ContentDataSource;->opened:Z

    .line 225
    invoke-virtual {p0}, Landroidx/media3/datasource/ContentDataSource;->transferEnded()V

    .line 227
    :cond_6
    throw v1
.end method

.method public getUri()Landroid/net/Uri;
    .locals 1

    .line 200
    iget-object v0, p0, Landroidx/media3/datasource/ContentDataSource;->uri:Landroid/net/Uri;

    return-object v0
.end method

.method public open(Landroidx/media3/datasource/DataSpec;)J
    .locals 26
    .param p1, "dataSpec"    # Landroidx/media3/datasource/DataSpec;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media3/datasource/ContentDataSource$ContentDataSourceException;
        }
    .end annotation

    .line 79
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    :try_start_0
    iget-object v0, v2, Landroidx/media3/datasource/DataSpec;->uri:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->normalizeScheme()Landroid/net/Uri;

    move-result-object v0

    .line 80
    .local v0, "uri":Landroid/net/Uri;
    iput-object v0, v1, Landroidx/media3/datasource/ContentDataSource;->uri:Landroid/net/Uri;

    .line 82
    invoke-virtual/range {p0 .. p1}, Landroidx/media3/datasource/ContentDataSource;->transferInitializing(Landroidx/media3/datasource/DataSpec;)V

    .line 85
    invoke-virtual {v0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v4

    const-string v5, "content"

    invoke-static {v4, v5}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    const/4 v5, 0x1

    if-eqz v4, :cond_0

    .line 86
    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    .line 88
    .local v4, "providerOptions":Landroid/os/Bundle;
    const-string v6, "android.provider.extra.ACCEPT_ORIGINAL_MEDIA_FORMAT"

    invoke-virtual {v4, v6, v5}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 89
    iget-object v6, v1, Landroidx/media3/datasource/ContentDataSource;->resolver:Landroid/content/ContentResolver;

    const-string v7, "*/*"

    .line 90
    invoke-virtual {v6, v0, v7, v4}, Landroid/content/ContentResolver;->openTypedAssetFileDescriptor(Landroid/net/Uri;Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/res/AssetFileDescriptor;

    move-result-object v6

    .line 91
    .end local v4    # "providerOptions":Landroid/os/Bundle;
    .local v6, "assetFileDescriptor":Landroid/content/res/AssetFileDescriptor;
    goto :goto_0

    .line 94
    .end local v6    # "assetFileDescriptor":Landroid/content/res/AssetFileDescriptor;
    :cond_0
    iget-object v4, v1, Landroidx/media3/datasource/ContentDataSource;->resolver:Landroid/content/ContentResolver;

    const-string/jumbo v6, "r"

    invoke-virtual {v4, v0, v6}, Landroid/content/ContentResolver;->openAssetFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;

    move-result-object v4

    move-object v6, v4

    .line 96
    .restart local v6    # "assetFileDescriptor":Landroid/content/res/AssetFileDescriptor;
    :goto_0
    iput-object v6, v1, Landroidx/media3/datasource/ContentDataSource;->assetFileDescriptor:Landroid/content/res/AssetFileDescriptor;

    .line 97
    if-eqz v6, :cond_b

    .line 104
    invoke-virtual {v6}, Landroid/content/res/AssetFileDescriptor;->getLength()J

    move-result-wide v7

    .line 105
    .local v7, "assetFileDescriptorLength":J
    new-instance v4, Ljava/io/FileInputStream;

    invoke-virtual {v6}, Landroid/content/res/AssetFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v9

    invoke-direct {v4, v9}, Ljava/io/FileInputStream;-><init>(Ljava/io/FileDescriptor;)V

    .line 106
    .local v4, "inputStream":Ljava/io/FileInputStream;
    iput-object v4, v1, Landroidx/media3/datasource/ContentDataSource;->inputStream:Ljava/io/FileInputStream;

    .line 114
    const-wide/16 v9, -0x1

    cmp-long v11, v7, v9

    const/16 v12, 0x7d8

    const/4 v13, 0x0

    if-eqz v11, :cond_2

    iget-wide v14, v2, Landroidx/media3/datasource/DataSpec;->position:J

    cmp-long v11, v14, v7

    if-gtz v11, :cond_1

    goto :goto_1

    .line 116
    :cond_1
    new-instance v5, Landroidx/media3/datasource/ContentDataSource$ContentDataSourceException;

    invoke-direct {v5, v13, v12}, Landroidx/media3/datasource/ContentDataSource$ContentDataSourceException;-><init>(Ljava/io/IOException;I)V

    .end local p1    # "dataSpec":Landroidx/media3/datasource/DataSpec;
    throw v5

    .line 119
    .restart local p1    # "dataSpec":Landroidx/media3/datasource/DataSpec;
    :cond_2
    :goto_1
    invoke-virtual {v6}, Landroid/content/res/AssetFileDescriptor;->getStartOffset()J

    move-result-wide v14

    .line 120
    .local v14, "assetFileDescriptorOffset":J
    move-object/from16 v16, v6

    .end local v6    # "assetFileDescriptor":Landroid/content/res/AssetFileDescriptor;
    .local v16, "assetFileDescriptor":Landroid/content/res/AssetFileDescriptor;
    iget-wide v5, v2, Landroidx/media3/datasource/DataSpec;->position:J

    add-long/2addr v5, v14

    .line 121
    invoke-virtual {v4, v5, v6}, Ljava/io/FileInputStream;->skip(J)J

    move-result-wide v5

    sub-long/2addr v5, v14

    .line 123
    .local v5, "skipped":J
    move-object/from16 v17, v4

    .end local v4    # "inputStream":Ljava/io/FileInputStream;
    .local v17, "inputStream":Ljava/io/FileInputStream;
    iget-wide v3, v2, Landroidx/media3/datasource/DataSpec;->position:J

    cmp-long v3, v5, v3

    if-nez v3, :cond_a

    .line 129
    cmp-long v3, v7, v9

    const-wide/16 v18, 0x0

    if-nez v3, :cond_5

    .line 132
    invoke-virtual/range {v17 .. v17}, Ljava/io/FileInputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v3

    .line 133
    .local v3, "channel":Ljava/nio/channels/FileChannel;
    invoke-virtual {v3}, Ljava/nio/channels/FileChannel;->size()J

    move-result-wide v20

    .line 134
    .local v20, "channelSize":J
    cmp-long v4, v20, v18

    if-nez v4, :cond_3

    .line 135
    iput-wide v9, v1, Landroidx/media3/datasource/ContentDataSource;->bytesRemaining:J

    move-wide/from16 v24, v9

    goto :goto_2

    .line 137
    :cond_3
    invoke-virtual {v3}, Ljava/nio/channels/FileChannel;->position()J

    move-result-wide v22

    move-wide/from16 v24, v9

    sub-long v9, v20, v22

    iput-wide v9, v1, Landroidx/media3/datasource/ContentDataSource;->bytesRemaining:J

    .line 138
    iget-wide v9, v1, Landroidx/media3/datasource/ContentDataSource;->bytesRemaining:J

    cmp-long v4, v9, v18

    if-ltz v4, :cond_4

    .line 144
    .end local v3    # "channel":Ljava/nio/channels/FileChannel;
    .end local v20    # "channelSize":J
    :goto_2
    goto :goto_3

    .line 140
    .restart local v3    # "channel":Ljava/nio/channels/FileChannel;
    .restart local v20    # "channelSize":J
    :cond_4
    new-instance v4, Landroidx/media3/datasource/ContentDataSource$ContentDataSourceException;

    invoke-direct {v4, v13, v12}, Landroidx/media3/datasource/ContentDataSource$ContentDataSourceException;-><init>(Ljava/io/IOException;I)V

    .end local p1    # "dataSpec":Landroidx/media3/datasource/DataSpec;
    throw v4

    .line 145
    .end local v3    # "channel":Ljava/nio/channels/FileChannel;
    .end local v20    # "channelSize":J
    .restart local p1    # "dataSpec":Landroidx/media3/datasource/DataSpec;
    :cond_5
    move-wide/from16 v24, v9

    sub-long v3, v7, v5

    iput-wide v3, v1, Landroidx/media3/datasource/ContentDataSource;->bytesRemaining:J

    .line 146
    iget-wide v3, v1, Landroidx/media3/datasource/ContentDataSource;->bytesRemaining:J
    :try_end_0
    .catch Landroidx/media3/datasource/ContentDataSource$ContentDataSourceException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    cmp-long v3, v3, v18

    if-ltz v3, :cond_9

    .line 159
    .end local v0    # "uri":Landroid/net/Uri;
    .end local v5    # "skipped":J
    .end local v7    # "assetFileDescriptorLength":J
    .end local v14    # "assetFileDescriptorOffset":J
    .end local v16    # "assetFileDescriptor":Landroid/content/res/AssetFileDescriptor;
    .end local v17    # "inputStream":Ljava/io/FileInputStream;
    :goto_3
    nop

    .line 161
    iget-wide v3, v2, Landroidx/media3/datasource/DataSpec;->length:J

    cmp-long v0, v3, v24

    if-eqz v0, :cond_7

    .line 162
    nop

    .line 163
    iget-wide v3, v1, Landroidx/media3/datasource/ContentDataSource;->bytesRemaining:J

    cmp-long v0, v3, v24

    if-nez v0, :cond_6

    iget-wide v3, v2, Landroidx/media3/datasource/DataSpec;->length:J

    goto :goto_4

    :cond_6
    iget-wide v3, v1, Landroidx/media3/datasource/ContentDataSource;->bytesRemaining:J

    iget-wide v5, v2, Landroidx/media3/datasource/DataSpec;->length:J

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v3

    :goto_4
    iput-wide v3, v1, Landroidx/media3/datasource/ContentDataSource;->bytesRemaining:J

    .line 165
    :cond_7
    const/4 v11, 0x1

    iput-boolean v11, v1, Landroidx/media3/datasource/ContentDataSource;->opened:Z

    .line 166
    invoke-virtual/range {p0 .. p1}, Landroidx/media3/datasource/ContentDataSource;->transferStarted(Landroidx/media3/datasource/DataSpec;)V

    .line 167
    iget-wide v3, v2, Landroidx/media3/datasource/DataSpec;->length:J

    cmp-long v0, v3, v24

    if-eqz v0, :cond_8

    iget-wide v3, v2, Landroidx/media3/datasource/DataSpec;->length:J

    goto :goto_5

    :cond_8
    iget-wide v3, v1, Landroidx/media3/datasource/ContentDataSource;->bytesRemaining:J

    :goto_5
    return-wide v3

    .line 147
    .restart local v0    # "uri":Landroid/net/Uri;
    .restart local v5    # "skipped":J
    .restart local v7    # "assetFileDescriptorLength":J
    .restart local v14    # "assetFileDescriptorOffset":J
    .restart local v16    # "assetFileDescriptor":Landroid/content/res/AssetFileDescriptor;
    .restart local v17    # "inputStream":Ljava/io/FileInputStream;
    :cond_9
    :try_start_1
    new-instance v3, Landroidx/media3/datasource/ContentDataSource$ContentDataSourceException;

    invoke-direct {v3, v13, v12}, Landroidx/media3/datasource/ContentDataSource$ContentDataSourceException;-><init>(Ljava/io/IOException;I)V

    .end local p1    # "dataSpec":Landroidx/media3/datasource/DataSpec;
    throw v3

    .line 126
    .restart local p1    # "dataSpec":Landroidx/media3/datasource/DataSpec;
    :cond_a
    new-instance v3, Landroidx/media3/datasource/ContentDataSource$ContentDataSourceException;

    invoke-direct {v3, v13, v12}, Landroidx/media3/datasource/ContentDataSource$ContentDataSourceException;-><init>(Ljava/io/IOException;I)V

    .end local p1    # "dataSpec":Landroidx/media3/datasource/DataSpec;
    throw v3

    .line 99
    .end local v5    # "skipped":J
    .end local v7    # "assetFileDescriptorLength":J
    .end local v14    # "assetFileDescriptorOffset":J
    .end local v16    # "assetFileDescriptor":Landroid/content/res/AssetFileDescriptor;
    .end local v17    # "inputStream":Ljava/io/FileInputStream;
    .restart local v6    # "assetFileDescriptor":Landroid/content/res/AssetFileDescriptor;
    .restart local p1    # "dataSpec":Landroidx/media3/datasource/DataSpec;
    :cond_b
    move-object/from16 v16, v6

    .end local v6    # "assetFileDescriptor":Landroid/content/res/AssetFileDescriptor;
    .restart local v16    # "assetFileDescriptor":Landroid/content/res/AssetFileDescriptor;
    new-instance v3, Landroidx/media3/datasource/ContentDataSource$ContentDataSourceException;

    new-instance v4, Ljava/io/IOException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Could not open file descriptor for: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catch Landroidx/media3/datasource/ContentDataSource$ContentDataSourceException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    const/16 v5, 0x7d0

    :try_start_2
    invoke-direct {v3, v4, v5}, Landroidx/media3/datasource/ContentDataSource$ContentDataSourceException;-><init>(Ljava/io/IOException;I)V

    .end local p1    # "dataSpec":Landroidx/media3/datasource/DataSpec;
    throw v3
    :try_end_2
    .catch Landroidx/media3/datasource/ContentDataSource$ContentDataSourceException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 153
    .end local v0    # "uri":Landroid/net/Uri;
    .end local v16    # "assetFileDescriptor":Landroid/content/res/AssetFileDescriptor;
    .restart local p1    # "dataSpec":Landroidx/media3/datasource/DataSpec;
    :catch_0
    move-exception v0

    goto :goto_6

    :catch_1
    move-exception v0

    const/16 v5, 0x7d0

    .line 154
    .local v0, "e":Ljava/io/IOException;
    :goto_6
    new-instance v3, Landroidx/media3/datasource/ContentDataSource$ContentDataSourceException;

    .line 156
    instance-of v4, v0, Ljava/io/FileNotFoundException;

    if-eqz v4, :cond_c

    .line 157
    const/16 v4, 0x7d5

    goto :goto_7

    .line 158
    :cond_c
    move v4, v5

    :goto_7
    invoke-direct {v3, v0, v4}, Landroidx/media3/datasource/ContentDataSource$ContentDataSourceException;-><init>(Ljava/io/IOException;I)V

    throw v3

    .line 151
    .end local v0    # "e":Ljava/io/IOException;
    :catch_2
    move-exception v0

    .line 152
    .local v0, "e":Landroidx/media3/datasource/ContentDataSource$ContentDataSourceException;
    throw v0
.end method

.method public read([BII)I
    .locals 8
    .param p1, "buffer"    # [B
    .param p2, "offset"    # I
    .param p3, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media3/datasource/ContentDataSource$ContentDataSourceException;
        }
    .end annotation

    .line 172
    if-nez p3, :cond_0

    .line 173
    const/4 v0, 0x0

    return v0

    .line 174
    :cond_0
    iget-wide v0, p0, Landroidx/media3/datasource/ContentDataSource;->bytesRemaining:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    const/4 v1, -0x1

    if-nez v0, :cond_1

    .line 175
    return v1

    .line 181
    :cond_1
    :try_start_0
    iget-wide v2, p0, Landroidx/media3/datasource/ContentDataSource;->bytesRemaining:J

    const-wide/16 v4, -0x1

    cmp-long v0, v2, v4

    if-nez v0, :cond_2

    move v0, p3

    goto :goto_0

    :cond_2
    iget-wide v2, p0, Landroidx/media3/datasource/ContentDataSource;->bytesRemaining:J

    int-to-long v6, p3

    invoke-static {v2, v3, v6, v7}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v2

    long-to-int v0, v2

    .line 182
    .local v0, "bytesToRead":I
    :goto_0
    iget-object v2, p0, Landroidx/media3/datasource/ContentDataSource;->inputStream:Ljava/io/FileInputStream;

    invoke-static {v2}, Landroidx/media3/common/util/Util;->castNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/io/FileInputStream;

    invoke-virtual {v2, p1, p2, v0}, Ljava/io/FileInputStream;->read([BII)I

    move-result v2
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 185
    .end local v0    # "bytesToRead":I
    .local v2, "bytesRead":I
    nop

    .line 187
    if-ne v2, v1, :cond_3

    .line 188
    return v1

    .line 190
    :cond_3
    iget-wide v0, p0, Landroidx/media3/datasource/ContentDataSource;->bytesRemaining:J

    cmp-long v0, v0, v4

    if-eqz v0, :cond_4

    .line 191
    iget-wide v0, p0, Landroidx/media3/datasource/ContentDataSource;->bytesRemaining:J

    int-to-long v3, v2

    sub-long/2addr v0, v3

    iput-wide v0, p0, Landroidx/media3/datasource/ContentDataSource;->bytesRemaining:J

    .line 193
    :cond_4
    invoke-virtual {p0, v2}, Landroidx/media3/datasource/ContentDataSource;->bytesTransferred(I)V

    .line 194
    return v2

    .line 183
    .end local v2    # "bytesRead":I
    :catch_0
    move-exception v0

    .line 184
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Landroidx/media3/datasource/ContentDataSource$ContentDataSourceException;

    const/16 v2, 0x7d0

    invoke-direct {v1, v0, v2}, Landroidx/media3/datasource/ContentDataSource$ContentDataSourceException;-><init>(Ljava/io/IOException;I)V

    throw v1
.end method
