.class public Landroidx/media3/datasource/HttpDataSource$HttpDataSourceException;
.super Landroidx/media3/datasource/DataSourceException;
.source "HttpDataSource.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media3/datasource/HttpDataSource;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "HttpDataSourceException"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media3/datasource/HttpDataSource$HttpDataSourceException$Type;
    }
.end annotation


# static fields
.field public static final TYPE_CLOSE:I = 0x3

.field public static final TYPE_OPEN:I = 0x1

.field public static final TYPE_READ:I = 0x2


# instance fields
.field public final dataSpec:Landroidx/media3/datasource/DataSpec;

.field public final type:I


# direct methods
.method public constructor <init>(Landroidx/media3/datasource/DataSpec;I)V
    .locals 1
    .param p1, "dataSpec"    # Landroidx/media3/datasource/DataSpec;
    .param p2, "type"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 253
    const/16 v0, 0x7d0

    invoke-direct {p0, p1, v0, p2}, Landroidx/media3/datasource/HttpDataSource$HttpDataSourceException;-><init>(Landroidx/media3/datasource/DataSpec;II)V

    .line 254
    return-void
.end method

.method public constructor <init>(Landroidx/media3/datasource/DataSpec;II)V
    .locals 1
    .param p1, "dataSpec"    # Landroidx/media3/datasource/DataSpec;
    .param p2, "errorCode"    # I
    .param p3, "type"    # I

    .line 267
    invoke-static {p2, p3}, Landroidx/media3/datasource/HttpDataSource$HttpDataSourceException;->assignErrorCode(II)I

    move-result v0

    invoke-direct {p0, v0}, Landroidx/media3/datasource/DataSourceException;-><init>(I)V

    .line 268
    iput-object p1, p0, Landroidx/media3/datasource/HttpDataSource$HttpDataSourceException;->dataSpec:Landroidx/media3/datasource/DataSpec;

    .line 269
    iput p3, p0, Landroidx/media3/datasource/HttpDataSource$HttpDataSourceException;->type:I

    .line 270
    return-void
.end method

.method public constructor <init>(Ljava/io/IOException;Landroidx/media3/datasource/DataSpec;I)V
    .locals 1
    .param p1, "cause"    # Ljava/io/IOException;
    .param p2, "dataSpec"    # Landroidx/media3/datasource/DataSpec;
    .param p3, "type"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 311
    const/16 v0, 0x7d0

    invoke-direct {p0, p1, p2, v0, p3}, Landroidx/media3/datasource/HttpDataSource$HttpDataSourceException;-><init>(Ljava/io/IOException;Landroidx/media3/datasource/DataSpec;II)V

    .line 312
    return-void
.end method

.method public constructor <init>(Ljava/io/IOException;Landroidx/media3/datasource/DataSpec;II)V
    .locals 1
    .param p1, "cause"    # Ljava/io/IOException;
    .param p2, "dataSpec"    # Landroidx/media3/datasource/DataSpec;
    .param p3, "errorCode"    # I
    .param p4, "type"    # I

    .line 329
    invoke-static {p3, p4}, Landroidx/media3/datasource/HttpDataSource$HttpDataSourceException;->assignErrorCode(II)I

    move-result v0

    invoke-direct {p0, p1, v0}, Landroidx/media3/datasource/DataSourceException;-><init>(Ljava/lang/Throwable;I)V

    .line 330
    iput-object p2, p0, Landroidx/media3/datasource/HttpDataSource$HttpDataSourceException;->dataSpec:Landroidx/media3/datasource/DataSpec;

    .line 331
    iput p4, p0, Landroidx/media3/datasource/HttpDataSource$HttpDataSourceException;->type:I

    .line 332
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Landroidx/media3/datasource/DataSpec;I)V
    .locals 1
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "dataSpec"    # Landroidx/media3/datasource/DataSpec;
    .param p3, "type"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 280
    const/16 v0, 0x7d0

    invoke-direct {p0, p1, p2, v0, p3}, Landroidx/media3/datasource/HttpDataSource$HttpDataSourceException;-><init>(Ljava/lang/String;Landroidx/media3/datasource/DataSpec;II)V

    .line 281
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Landroidx/media3/datasource/DataSpec;II)V
    .locals 1
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "dataSpec"    # Landroidx/media3/datasource/DataSpec;
    .param p3, "errorCode"    # I
    .param p4, "type"    # I

    .line 298
    invoke-static {p3, p4}, Landroidx/media3/datasource/HttpDataSource$HttpDataSourceException;->assignErrorCode(II)I

    move-result v0

    invoke-direct {p0, p1, v0}, Landroidx/media3/datasource/DataSourceException;-><init>(Ljava/lang/String;I)V

    .line 299
    iput-object p2, p0, Landroidx/media3/datasource/HttpDataSource$HttpDataSourceException;->dataSpec:Landroidx/media3/datasource/DataSpec;

    .line 300
    iput p4, p0, Landroidx/media3/datasource/HttpDataSource$HttpDataSourceException;->type:I

    .line 301
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/io/IOException;Landroidx/media3/datasource/DataSpec;I)V
    .locals 6
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "cause"    # Ljava/io/IOException;
    .param p3, "dataSpec"    # Landroidx/media3/datasource/DataSpec;
    .param p4, "type"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 343
    const/16 v4, 0x7d0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v5, p4

    .end local p1    # "message":Ljava/lang/String;
    .end local p2    # "cause":Ljava/io/IOException;
    .end local p3    # "dataSpec":Landroidx/media3/datasource/DataSpec;
    .end local p4    # "type":I
    .local v1, "message":Ljava/lang/String;
    .local v2, "cause":Ljava/io/IOException;
    .local v3, "dataSpec":Landroidx/media3/datasource/DataSpec;
    .local v5, "type":I
    invoke-direct/range {v0 .. v5}, Landroidx/media3/datasource/HttpDataSource$HttpDataSourceException;-><init>(Ljava/lang/String;Ljava/io/IOException;Landroidx/media3/datasource/DataSpec;II)V

    .line 344
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/io/IOException;Landroidx/media3/datasource/DataSpec;II)V
    .locals 1
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "cause"    # Ljava/io/IOException;
    .param p3, "dataSpec"    # Landroidx/media3/datasource/DataSpec;
    .param p4, "errorCode"    # I
    .param p5, "type"    # I

    .line 363
    invoke-static {p4, p5}, Landroidx/media3/datasource/HttpDataSource$HttpDataSourceException;->assignErrorCode(II)I

    move-result v0

    invoke-direct {p0, p1, p2, v0}, Landroidx/media3/datasource/DataSourceException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;I)V

    .line 364
    iput-object p3, p0, Landroidx/media3/datasource/HttpDataSource$HttpDataSourceException;->dataSpec:Landroidx/media3/datasource/DataSpec;

    .line 365
    iput p5, p0, Landroidx/media3/datasource/HttpDataSource$HttpDataSourceException;->type:I

    .line 366
    return-void
.end method

.method private static assignErrorCode(II)I
    .locals 1
    .param p0, "errorCode"    # I
    .param p1, "type"    # I

    .line 370
    const/16 v0, 0x7d0

    if-ne p0, v0, :cond_0

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 371
    const/16 v0, 0x7d1

    goto :goto_0

    .line 372
    :cond_0
    move v0, p0

    .line 370
    :goto_0
    return v0
.end method

.method public static createForIOException(Ljava/io/IOException;Landroidx/media3/datasource/DataSpec;I)Landroidx/media3/datasource/HttpDataSource$HttpDataSourceException;
    .locals 3
    .param p0, "cause"    # Ljava/io/IOException;
    .param p1, "dataSpec"    # Landroidx/media3/datasource/DataSpec;
    .param p2, "type"    # I

    .line 222
    invoke-virtual {p0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    .line 223
    .local v0, "message":Ljava/lang/String;
    instance-of v1, p0, Ljava/net/SocketTimeoutException;

    if-eqz v1, :cond_0

    .line 224
    const/16 v1, 0x7d2

    .local v1, "errorCode":I
    goto :goto_0

    .line 225
    .end local v1    # "errorCode":I
    :cond_0
    instance-of v1, p0, Ljava/io/InterruptedIOException;

    if-eqz v1, :cond_1

    .line 229
    const/16 v1, 0x3ec

    .restart local v1    # "errorCode":I
    goto :goto_0

    .line 230
    .end local v1    # "errorCode":I
    :cond_1
    if-eqz v0, :cond_2

    .line 231
    invoke-static {v0}, Lcom/google/common/base/Ascii;->toLowerCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "cleartext.*not permitted.*"

    invoke-virtual {v1, v2}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 232
    const/16 v1, 0x7d7

    .restart local v1    # "errorCode":I
    goto :goto_0

    .line 234
    .end local v1    # "errorCode":I
    :cond_2
    const/16 v1, 0x7d1

    .line 236
    .restart local v1    # "errorCode":I
    :goto_0
    const/16 v2, 0x7d7

    if-ne v1, v2, :cond_3

    .line 237
    new-instance v2, Landroidx/media3/datasource/HttpDataSource$CleartextNotPermittedException;

    invoke-direct {v2, p0, p1}, Landroidx/media3/datasource/HttpDataSource$CleartextNotPermittedException;-><init>(Ljava/io/IOException;Landroidx/media3/datasource/DataSpec;)V

    goto :goto_1

    .line 238
    :cond_3
    new-instance v2, Landroidx/media3/datasource/HttpDataSource$HttpDataSourceException;

    invoke-direct {v2, p0, p1, v1, p2}, Landroidx/media3/datasource/HttpDataSource$HttpDataSourceException;-><init>(Ljava/io/IOException;Landroidx/media3/datasource/DataSpec;II)V

    .line 236
    :goto_1
    return-object v2
.end method
