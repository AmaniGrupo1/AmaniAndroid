.class public final Landroidx/media3/datasource/AesCipherDataSource;
.super Ljava/lang/Object;
.source "AesCipherDataSource.java"

# interfaces
.implements Landroidx/media3/datasource/DataSource;


# instance fields
.field private cipher:Landroidx/media3/datasource/AesFlushingCipher;

.field private final secretKey:[B

.field private final upstream:Landroidx/media3/datasource/DataSource;


# direct methods
.method public constructor <init>([BLandroidx/media3/datasource/DataSource;)V
    .locals 0
    .param p1, "secretKey"    # [B
    .param p2, "upstream"    # Landroidx/media3/datasource/DataSource;

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput-object p2, p0, Landroidx/media3/datasource/AesCipherDataSource;->upstream:Landroidx/media3/datasource/DataSource;

    .line 41
    iput-object p1, p0, Landroidx/media3/datasource/AesCipherDataSource;->secretKey:[B

    .line 42
    return-void
.end method


# virtual methods
.method public addTransferListener(Landroidx/media3/datasource/TransferListener;)V
    .locals 1
    .param p1, "transferListener"    # Landroidx/media3/datasource/TransferListener;

    .line 46
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 47
    iget-object v0, p0, Landroidx/media3/datasource/AesCipherDataSource;->upstream:Landroidx/media3/datasource/DataSource;

    invoke-interface {v0, p1}, Landroidx/media3/datasource/DataSource;->addTransferListener(Landroidx/media3/datasource/TransferListener;)V

    .line 48
    return-void
.end method

.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 88
    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/media3/datasource/AesCipherDataSource;->cipher:Landroidx/media3/datasource/AesFlushingCipher;

    .line 89
    iget-object v0, p0, Landroidx/media3/datasource/AesCipherDataSource;->upstream:Landroidx/media3/datasource/DataSource;

    invoke-interface {v0}, Landroidx/media3/datasource/DataSource;->close()V

    .line 90
    return-void
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

    .line 83
    iget-object v0, p0, Landroidx/media3/datasource/AesCipherDataSource;->upstream:Landroidx/media3/datasource/DataSource;

    invoke-interface {v0}, Landroidx/media3/datasource/DataSource;->getResponseHeaders()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public getUri()Landroid/net/Uri;
    .locals 1

    .line 78
    iget-object v0, p0, Landroidx/media3/datasource/AesCipherDataSource;->upstream:Landroidx/media3/datasource/DataSource;

    invoke-interface {v0}, Landroidx/media3/datasource/DataSource;->getUri()Landroid/net/Uri;

    move-result-object v0

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

    .line 52
    iget-object v0, p0, Landroidx/media3/datasource/AesCipherDataSource;->upstream:Landroidx/media3/datasource/DataSource;

    invoke-interface {v0, p1}, Landroidx/media3/datasource/DataSource;->open(Landroidx/media3/datasource/DataSpec;)J

    move-result-wide v0

    .line 53
    .local v0, "dataLength":J
    new-instance v2, Landroidx/media3/datasource/AesFlushingCipher;

    iget-object v4, p0, Landroidx/media3/datasource/AesCipherDataSource;->secretKey:[B

    iget-object v5, p1, Landroidx/media3/datasource/DataSpec;->key:Ljava/lang/String;

    iget-wide v6, p1, Landroidx/media3/datasource/DataSpec;->uriPositionOffset:J

    iget-wide v8, p1, Landroidx/media3/datasource/DataSpec;->position:J

    add-long/2addr v6, v8

    const/4 v3, 0x2

    invoke-direct/range {v2 .. v7}, Landroidx/media3/datasource/AesFlushingCipher;-><init>(I[BLjava/lang/String;J)V

    iput-object v2, p0, Landroidx/media3/datasource/AesCipherDataSource;->cipher:Landroidx/media3/datasource/AesFlushingCipher;

    .line 59
    return-wide v0
.end method

.method public read([BII)I
    .locals 2
    .param p1, "buffer"    # [B
    .param p2, "offset"    # I
    .param p3, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 64
    if-nez p3, :cond_0

    .line 65
    const/4 v0, 0x0

    return v0

    .line 67
    :cond_0
    iget-object v0, p0, Landroidx/media3/datasource/AesCipherDataSource;->upstream:Landroidx/media3/datasource/DataSource;

    invoke-interface {v0, p1, p2, p3}, Landroidx/media3/datasource/DataSource;->read([BII)I

    move-result v0

    .line 68
    .local v0, "read":I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    .line 69
    return v1

    .line 71
    :cond_1
    iget-object v1, p0, Landroidx/media3/datasource/AesCipherDataSource;->cipher:Landroidx/media3/datasource/AesFlushingCipher;

    invoke-static {v1}, Landroidx/media3/common/util/Util;->castNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/media3/datasource/AesFlushingCipher;

    invoke-virtual {v1, p1, p2, v0}, Landroidx/media3/datasource/AesFlushingCipher;->updateInPlace([BII)V

    .line 72
    return v0
.end method
