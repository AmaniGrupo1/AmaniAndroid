.class public final Landroidx/media3/datasource/DataSchemeDataSource;
.super Landroidx/media3/datasource/BaseDataSource;
.source "DataSchemeDataSource.java"


# static fields
.field public static final SCHEME_DATA:Ljava/lang/String; = "data"


# instance fields
.field private bytesRemaining:I

.field private data:[B

.field private dataSpec:Landroidx/media3/datasource/DataSpec;

.field private readPosition:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 46
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroidx/media3/datasource/BaseDataSource;-><init>(Z)V

    .line 47
    return-void
.end method


# virtual methods
.method public close()V
    .locals 2

    .line 110
    iget-object v0, p0, Landroidx/media3/datasource/DataSchemeDataSource;->data:[B

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 111
    iput-object v1, p0, Landroidx/media3/datasource/DataSchemeDataSource;->data:[B

    .line 112
    invoke-virtual {p0}, Landroidx/media3/datasource/DataSchemeDataSource;->transferEnded()V

    .line 114
    :cond_0
    iput-object v1, p0, Landroidx/media3/datasource/DataSchemeDataSource;->dataSpec:Landroidx/media3/datasource/DataSpec;

    .line 115
    return-void
.end method

.method public getUri()Landroid/net/Uri;
    .locals 1

    .line 105
    iget-object v0, p0, Landroidx/media3/datasource/DataSchemeDataSource;->dataSpec:Landroidx/media3/datasource/DataSpec;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/media3/datasource/DataSchemeDataSource;->dataSpec:Landroidx/media3/datasource/DataSpec;

    iget-object v0, v0, Landroidx/media3/datasource/DataSpec;->uri:Landroid/net/Uri;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public open(Landroidx/media3/datasource/DataSpec;)J
    .locals 10
    .param p1, "dataSpec"    # Landroidx/media3/datasource/DataSpec;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 51
    invoke-virtual {p0, p1}, Landroidx/media3/datasource/DataSchemeDataSource;->transferInitializing(Landroidx/media3/datasource/DataSpec;)V

    .line 52
    iput-object p1, p0, Landroidx/media3/datasource/DataSchemeDataSource;->dataSpec:Landroidx/media3/datasource/DataSpec;

    .line 53
    iget-object v0, p1, Landroidx/media3/datasource/DataSpec;->uri:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->normalizeScheme()Landroid/net/Uri;

    move-result-object v0

    .line 54
    .local v0, "uri":Landroid/net/Uri;
    invoke-virtual {v0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    .line 55
    .local v1, "scheme":Ljava/lang/String;
    const-string v2, "data"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const-string v3, "Unsupported scheme: %s"

    invoke-static {v2, v3, v1}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/String;Ljava/lang/Object;)V

    .line 56
    invoke-virtual {v0}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v2

    const-string v3, ","

    invoke-static {v2, v3}, Landroidx/media3/common/util/Util;->split(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 57
    .local v2, "uriParts":[Ljava/lang/String;
    array-length v3, v2

    const/4 v4, 0x2

    const/4 v5, 0x0

    if-ne v3, v4, :cond_4

    .line 61
    const/4 v3, 0x1

    aget-object v3, v2, v3

    .line 62
    .local v3, "dataString":Ljava/lang/String;
    const/4 v4, 0x0

    aget-object v6, v2, v4

    const-string v7, ";base64"

    invoke-virtual {v6, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 64
    :try_start_0
    invoke-static {v3, v4}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v4

    iput-object v4, p0, Landroidx/media3/datasource/DataSchemeDataSource;->data:[B
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 68
    goto :goto_0

    .line 65
    :catch_0
    move-exception v4

    .line 66
    .local v4, "e":Ljava/lang/IllegalArgumentException;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Error while parsing Base64 encoded string: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, v4}, Landroidx/media3/common/ParserException;->createForMalformedDataOfUnknownType(Ljava/lang/String;Ljava/lang/Throwable;)Landroidx/media3/common/ParserException;

    move-result-object v5

    throw v5

    .line 71
    .end local v4    # "e":Ljava/lang/IllegalArgumentException;
    :cond_0
    sget-object v4, Ljava/nio/charset/StandardCharsets;->US_ASCII:Ljava/nio/charset/Charset;

    invoke-virtual {v4}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroidx/media3/common/util/Util;->getUtf8Bytes(Ljava/lang/String;)[B

    move-result-object v4

    iput-object v4, p0, Landroidx/media3/datasource/DataSchemeDataSource;->data:[B

    .line 73
    :goto_0
    iget-wide v6, p1, Landroidx/media3/datasource/DataSpec;->position:J

    iget-object v4, p0, Landroidx/media3/datasource/DataSchemeDataSource;->data:[B

    array-length v4, v4

    int-to-long v8, v4

    cmp-long v4, v6, v8

    if-gtz v4, :cond_3

    .line 77
    iget-wide v4, p1, Landroidx/media3/datasource/DataSpec;->position:J

    long-to-int v4, v4

    iput v4, p0, Landroidx/media3/datasource/DataSchemeDataSource;->readPosition:I

    .line 78
    iget-object v4, p0, Landroidx/media3/datasource/DataSchemeDataSource;->data:[B

    array-length v4, v4

    iget v5, p0, Landroidx/media3/datasource/DataSchemeDataSource;->readPosition:I

    sub-int/2addr v4, v5

    iput v4, p0, Landroidx/media3/datasource/DataSchemeDataSource;->bytesRemaining:I

    .line 79
    iget-wide v4, p1, Landroidx/media3/datasource/DataSpec;->length:J

    const-wide/16 v6, -0x1

    cmp-long v4, v4, v6

    if-eqz v4, :cond_1

    .line 80
    iget v4, p0, Landroidx/media3/datasource/DataSchemeDataSource;->bytesRemaining:I

    int-to-long v4, v4

    iget-wide v8, p1, Landroidx/media3/datasource/DataSpec;->length:J

    invoke-static {v4, v5, v8, v9}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v4

    long-to-int v4, v4

    iput v4, p0, Landroidx/media3/datasource/DataSchemeDataSource;->bytesRemaining:I

    .line 82
    :cond_1
    invoke-virtual {p0, p1}, Landroidx/media3/datasource/DataSchemeDataSource;->transferStarted(Landroidx/media3/datasource/DataSpec;)V

    .line 83
    iget-wide v4, p1, Landroidx/media3/datasource/DataSpec;->length:J

    cmp-long v4, v4, v6

    if-eqz v4, :cond_2

    iget-wide v4, p1, Landroidx/media3/datasource/DataSpec;->length:J

    goto :goto_1

    :cond_2
    iget v4, p0, Landroidx/media3/datasource/DataSchemeDataSource;->bytesRemaining:I

    int-to-long v4, v4

    :goto_1
    return-wide v4

    .line 74
    :cond_3
    iput-object v5, p0, Landroidx/media3/datasource/DataSchemeDataSource;->data:[B

    .line 75
    new-instance v4, Landroidx/media3/datasource/DataSourceException;

    const/16 v5, 0x7d8

    invoke-direct {v4, v5}, Landroidx/media3/datasource/DataSourceException;-><init>(I)V

    throw v4

    .line 58
    .end local v3    # "dataString":Ljava/lang/String;
    :cond_4
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unexpected URI format: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v5}, Landroidx/media3/common/ParserException;->createForMalformedDataOfUnknownType(Ljava/lang/String;Ljava/lang/Throwable;)Landroidx/media3/common/ParserException;

    move-result-object v3

    throw v3
.end method

.method public read([BII)I
    .locals 2
    .param p1, "buffer"    # [B
    .param p2, "offset"    # I
    .param p3, "length"    # I

    .line 88
    if-nez p3, :cond_0

    .line 89
    const/4 v0, 0x0

    return v0

    .line 91
    :cond_0
    iget v0, p0, Landroidx/media3/datasource/DataSchemeDataSource;->bytesRemaining:I

    if-nez v0, :cond_1

    .line 92
    const/4 v0, -0x1

    return v0

    .line 94
    :cond_1
    iget v0, p0, Landroidx/media3/datasource/DataSchemeDataSource;->bytesRemaining:I

    invoke-static {p3, v0}, Ljava/lang/Math;->min(II)I

    move-result p3

    .line 95
    iget-object v0, p0, Landroidx/media3/datasource/DataSchemeDataSource;->data:[B

    invoke-static {v0}, Landroidx/media3/common/util/Util;->castNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    iget v1, p0, Landroidx/media3/datasource/DataSchemeDataSource;->readPosition:I

    invoke-static {v0, v1, p1, p2, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 96
    iget v0, p0, Landroidx/media3/datasource/DataSchemeDataSource;->readPosition:I

    add-int/2addr v0, p3

    iput v0, p0, Landroidx/media3/datasource/DataSchemeDataSource;->readPosition:I

    .line 97
    iget v0, p0, Landroidx/media3/datasource/DataSchemeDataSource;->bytesRemaining:I

    sub-int/2addr v0, p3

    iput v0, p0, Landroidx/media3/datasource/DataSchemeDataSource;->bytesRemaining:I

    .line 98
    invoke-virtual {p0, p3}, Landroidx/media3/datasource/DataSchemeDataSource;->bytesTransferred(I)V

    .line 99
    return p3
.end method
