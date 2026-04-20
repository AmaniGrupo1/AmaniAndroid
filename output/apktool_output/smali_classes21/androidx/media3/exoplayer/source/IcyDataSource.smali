.class final Landroidx/media3/exoplayer/source/IcyDataSource;
.super Ljava/lang/Object;
.source "IcyDataSource.java"

# interfaces
.implements Landroidx/media3/datasource/DataSource;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media3/exoplayer/source/IcyDataSource$Listener;
    }
.end annotation


# instance fields
.field private bytesUntilMetadata:I

.field private final listener:Landroidx/media3/exoplayer/source/IcyDataSource$Listener;

.field private final metadataIntervalBytes:I

.field private final metadataLengthByteHolder:[B

.field private final upstream:Landroidx/media3/datasource/DataSource;


# direct methods
.method public constructor <init>(Landroidx/media3/datasource/DataSource;ILandroidx/media3/exoplayer/source/IcyDataSource$Listener;)V
    .locals 2
    .param p1, "upstream"    # Landroidx/media3/datasource/DataSource;
    .param p2, "metadataIntervalBytes"    # I
    .param p3, "listener"    # Landroidx/media3/exoplayer/source/IcyDataSource$Listener;

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    const/4 v0, 0x1

    if-lez p2, :cond_0

    move v1, v0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-static {v1}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    .line 64
    iput-object p1, p0, Landroidx/media3/exoplayer/source/IcyDataSource;->upstream:Landroidx/media3/datasource/DataSource;

    .line 65
    iput p2, p0, Landroidx/media3/exoplayer/source/IcyDataSource;->metadataIntervalBytes:I

    .line 66
    iput-object p3, p0, Landroidx/media3/exoplayer/source/IcyDataSource;->listener:Landroidx/media3/exoplayer/source/IcyDataSource$Listener;

    .line 67
    new-array v0, v0, [B

    iput-object v0, p0, Landroidx/media3/exoplayer/source/IcyDataSource;->metadataLengthByteHolder:[B

    .line 68
    iput p2, p0, Landroidx/media3/exoplayer/source/IcyDataSource;->bytesUntilMetadata:I

    .line 69
    return-void
.end method

.method private readMetadata()Z
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 122
    iget-object v0, p0, Landroidx/media3/exoplayer/source/IcyDataSource;->upstream:Landroidx/media3/datasource/DataSource;

    iget-object v1, p0, Landroidx/media3/exoplayer/source/IcyDataSource;->metadataLengthByteHolder:[B

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-interface {v0, v1, v2, v3}, Landroidx/media3/datasource/DataSource;->read([BII)I

    move-result v0

    .line 123
    .local v0, "bytesRead":I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 124
    return v2

    .line 126
    :cond_0
    iget-object v4, p0, Landroidx/media3/exoplayer/source/IcyDataSource;->metadataLengthByteHolder:[B

    aget-byte v4, v4, v2

    and-int/lit16 v4, v4, 0xff

    shl-int/lit8 v4, v4, 0x4

    .line 127
    .local v4, "metadataLength":I
    if-nez v4, :cond_1

    .line 128
    return v3

    .line 131
    :cond_1
    const/4 v5, 0x0

    .line 132
    .local v5, "offset":I
    move v6, v4

    .line 133
    .local v6, "lengthRemaining":I
    new-array v7, v4, [B

    .line 134
    .local v7, "metadata":[B
    :goto_0
    if-lez v6, :cond_3

    .line 135
    iget-object v8, p0, Landroidx/media3/exoplayer/source/IcyDataSource;->upstream:Landroidx/media3/datasource/DataSource;

    invoke-interface {v8, v7, v5, v6}, Landroidx/media3/datasource/DataSource;->read([BII)I

    move-result v0

    .line 136
    if-ne v0, v1, :cond_2

    .line 137
    return v2

    .line 139
    :cond_2
    add-int/2addr v5, v0

    .line 140
    sub-int/2addr v6, v0

    goto :goto_0

    .line 144
    :cond_3
    :goto_1
    if-lez v4, :cond_4

    add-int/lit8 v1, v4, -0x1

    aget-byte v1, v7, v1

    if-nez v1, :cond_4

    .line 145
    add-int/lit8 v4, v4, -0x1

    goto :goto_1

    .line 148
    :cond_4
    if-lez v4, :cond_5

    .line 149
    iget-object v1, p0, Landroidx/media3/exoplayer/source/IcyDataSource;->listener:Landroidx/media3/exoplayer/source/IcyDataSource$Listener;

    new-instance v2, Landroidx/media3/common/util/ParsableByteArray;

    invoke-direct {v2, v7, v4}, Landroidx/media3/common/util/ParsableByteArray;-><init>([BI)V

    invoke-interface {v1, v2}, Landroidx/media3/exoplayer/source/IcyDataSource$Listener;->onIcyMetadata(Landroidx/media3/common/util/ParsableByteArray;)V

    .line 151
    :cond_5
    return v3
.end method


# virtual methods
.method public addTransferListener(Landroidx/media3/datasource/TransferListener;)V
    .locals 1
    .param p1, "transferListener"    # Landroidx/media3/datasource/TransferListener;

    .line 73
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 74
    iget-object v0, p0, Landroidx/media3/exoplayer/source/IcyDataSource;->upstream:Landroidx/media3/datasource/DataSource;

    invoke-interface {v0, p1}, Landroidx/media3/datasource/DataSource;->addTransferListener(Landroidx/media3/datasource/TransferListener;)V

    .line 75
    return-void
.end method

.method public close()V
    .locals 1

    .line 111
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public getResponseHeaders()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .line 106
    iget-object v0, p0, Landroidx/media3/exoplayer/source/IcyDataSource;->upstream:Landroidx/media3/datasource/DataSource;

    invoke-interface {v0}, Landroidx/media3/datasource/DataSource;->getResponseHeaders()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public getUri()Landroid/net/Uri;
    .locals 1

    .line 101
    iget-object v0, p0, Landroidx/media3/exoplayer/source/IcyDataSource;->upstream:Landroidx/media3/datasource/DataSource;

    invoke-interface {v0}, Landroidx/media3/datasource/DataSource;->getUri()Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public open(Landroidx/media3/datasource/DataSpec;)J
    .locals 1
    .param p1, "dataSpec"    # Landroidx/media3/datasource/DataSpec;

    .line 79
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public read([BII)I
    .locals 3
    .param p1, "buffer"    # [B
    .param p2, "offset"    # I
    .param p3, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 84
    iget v0, p0, Landroidx/media3/exoplayer/source/IcyDataSource;->bytesUntilMetadata:I

    const/4 v1, -0x1

    if-nez v0, :cond_1

    .line 85
    invoke-direct {p0}, Landroidx/media3/exoplayer/source/IcyDataSource;->readMetadata()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 86
    iget v0, p0, Landroidx/media3/exoplayer/source/IcyDataSource;->metadataIntervalBytes:I

    iput v0, p0, Landroidx/media3/exoplayer/source/IcyDataSource;->bytesUntilMetadata:I

    goto :goto_0

    .line 88
    :cond_0
    return v1

    .line 91
    :cond_1
    :goto_0
    iget-object v0, p0, Landroidx/media3/exoplayer/source/IcyDataSource;->upstream:Landroidx/media3/datasource/DataSource;

    iget v2, p0, Landroidx/media3/exoplayer/source/IcyDataSource;->bytesUntilMetadata:I

    invoke-static {v2, p3}, Ljava/lang/Math;->min(II)I

    move-result v2

    invoke-interface {v0, p1, p2, v2}, Landroidx/media3/datasource/DataSource;->read([BII)I

    move-result v0

    .line 92
    .local v0, "bytesRead":I
    if-eq v0, v1, :cond_2

    .line 93
    iget v1, p0, Landroidx/media3/exoplayer/source/IcyDataSource;->bytesUntilMetadata:I

    sub-int/2addr v1, v0

    iput v1, p0, Landroidx/media3/exoplayer/source/IcyDataSource;->bytesUntilMetadata:I

    .line 95
    :cond_2
    return v0
.end method
