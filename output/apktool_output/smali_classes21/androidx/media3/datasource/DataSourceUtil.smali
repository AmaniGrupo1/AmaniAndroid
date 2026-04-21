.class public final Landroidx/media3/datasource/DataSourceUtil;
.super Ljava/lang/Object;
.source "DataSourceUtil.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static closeQuietly(Landroidx/media3/datasource/DataSource;)V
    .locals 1
    .param p0, "dataSource"    # Landroidx/media3/datasource/DataSource;

    .line 86
    if-eqz p0, :cond_0

    .line 87
    :try_start_0
    invoke-interface {p0}, Landroidx/media3/datasource/DataSource;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 89
    :catch_0
    move-exception v0

    goto :goto_1

    .line 91
    :cond_0
    :goto_0
    nop

    .line 92
    :goto_1
    return-void
.end method

.method public static readExactly(Landroidx/media3/datasource/DataSource;I)[B
    .locals 6
    .param p0, "dataSource"    # Landroidx/media3/datasource/DataSource;
    .param p1, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 66
    new-array v0, p1, [B

    .line 67
    .local v0, "data":[B
    const/4 v1, 0x0

    .line 68
    .local v1, "position":I
    :goto_0
    if-ge v1, p1, :cond_1

    .line 69
    array-length v2, v0

    sub-int/2addr v2, v1

    invoke-interface {p0, v0, v1, v2}, Landroidx/media3/datasource/DataSource;->read([BII)I

    move-result v2

    .line 70
    .local v2, "bytesRead":I
    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    .line 74
    add-int/2addr v1, v2

    .line 75
    .end local v2    # "bytesRead":I
    goto :goto_0

    .line 71
    .restart local v2    # "bytesRead":I
    :cond_0
    new-instance v3, Ljava/lang/IllegalStateException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Not enough data could be read: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " < "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 76
    .end local v2    # "bytesRead":I
    :cond_1
    return-object v0
.end method

.method public static readToEnd(Landroidx/media3/datasource/DataSource;)[B
    .locals 5
    .param p0, "dataSource"    # Landroidx/media3/datasource/DataSource;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 39
    const/16 v0, 0x400

    new-array v0, v0, [B

    .line 40
    .local v0, "data":[B
    const/4 v1, 0x0

    .line 41
    .local v1, "position":I
    const/4 v2, 0x0

    .line 42
    .local v2, "bytesRead":I
    :cond_0
    :goto_0
    const/4 v3, -0x1

    if-eq v2, v3, :cond_2

    .line 43
    array-length v4, v0

    if-ne v1, v4, :cond_1

    .line 44
    array-length v4, v0

    mul-int/lit8 v4, v4, 0x2

    invoke-static {v0, v4}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v0

    .line 46
    :cond_1
    array-length v4, v0

    sub-int/2addr v4, v1

    invoke-interface {p0, v0, v1, v4}, Landroidx/media3/datasource/DataSource;->read([BII)I

    move-result v2

    .line 47
    if-eq v2, v3, :cond_0

    .line 48
    add-int/2addr v1, v2

    goto :goto_0

    .line 51
    :cond_2
    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v3

    return-object v3
.end method
