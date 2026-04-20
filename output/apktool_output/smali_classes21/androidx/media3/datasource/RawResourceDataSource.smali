.class public final Landroidx/media3/datasource/RawResourceDataSource;
.super Landroidx/media3/datasource/BaseDataSource;
.source "RawResourceDataSource.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media3/datasource/RawResourceDataSource$RawResourceDataSourceException;
    }
.end annotation


# static fields
.field public static final RAW_RESOURCE_SCHEME:Ljava/lang/String; = "rawresource"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field


# instance fields
.field private final applicationContext:Landroid/content/Context;

.field private assetFileDescriptor:Landroid/content/res/AssetFileDescriptor;

.field private bytesRemaining:J

.field private dataSpec:Landroidx/media3/datasource/DataSpec;

.field private inputStream:Ljava/io/InputStream;

.field private opened:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 129
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroidx/media3/datasource/BaseDataSource;-><init>(Z)V

    .line 130
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Landroidx/media3/datasource/RawResourceDataSource;->applicationContext:Landroid/content/Context;

    .line 131
    return-void
.end method

.method public static buildRawResourceUri(I)Landroid/net/Uri;
    .locals 2
    .param p0, "rawResourceId"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 109
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "rawresource:///"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method private static openAssetFileDescriptor(Landroid/content/Context;Landroidx/media3/datasource/DataSpec;)Landroid/content/res/AssetFileDescriptor;
    .locals 9
    .param p0, "applicationContext"    # Landroid/content/Context;
    .param p1, "dataSpec"    # Landroidx/media3/datasource/DataSpec;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media3/datasource/RawResourceDataSource$RawResourceDataSourceException;
        }
    .end annotation

    .line 211
    iget-object v0, p1, Landroidx/media3/datasource/DataSpec;->uri:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->normalizeScheme()Landroid/net/Uri;

    move-result-object v0

    .line 214
    .local v0, "normalizedUri":Landroid/net/Uri;
    const-string/jumbo v1, "rawresource"

    invoke-virtual {v0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x1

    const/16 v3, 0x7d5

    const/4 v4, 0x0

    if-eqz v1, :cond_1

    .line 215
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 216
    .local v1, "resources":Landroid/content/res/Resources;
    invoke-virtual {v0}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v5

    .line 217
    .local v5, "pathSegments":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v6

    if-ne v6, v2, :cond_0

    .line 218
    const/4 v2, 0x0

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Landroidx/media3/datasource/RawResourceDataSource;->parseResourceId(Ljava/lang/String;)I

    move-result v2

    .line 225
    .end local v5    # "pathSegments":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local v2, "resourceId":I
    goto/16 :goto_3

    .line 220
    .end local v2    # "resourceId":I
    .restart local v5    # "pathSegments":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_0
    new-instance v2, Landroidx/media3/datasource/RawResourceDataSource$RawResourceDataSourceException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "rawresource:// URI must have exactly one path element, found "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 223
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Landroidx/media3/datasource/RawResourceDataSource$RawResourceDataSourceException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 225
    .end local v1    # "resources":Landroid/content/res/Resources;
    .end local v5    # "pathSegments":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_1
    nop

    .line 226
    invoke-virtual {v0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    .line 225
    const-string v5, "android.resource"

    invoke-static {v5, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 227
    invoke-virtual {v0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 228
    .local v1, "path":Ljava/lang/String;
    const-string v5, "/"

    invoke-virtual {v1, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 229
    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 232
    :cond_2
    invoke-virtual {v0}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 233
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 234
    :cond_3
    invoke-virtual {v0}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v2

    :goto_0
    nop

    .line 235
    .local v2, "packageName":Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 236
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    .local v5, "resources":Landroid/content/res/Resources;
    goto :goto_1

    .line 239
    .end local v5    # "resources":Landroid/content/res/Resources;
    :cond_4
    nop

    .line 240
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    invoke-virtual {v5, v2}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v5
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    .line 248
    .restart local v5    # "resources":Landroid/content/res/Resources;
    nop

    .line 250
    :goto_1
    const-string v6, "\\d+"

    invoke-virtual {v1, v6}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 251
    invoke-static {v1}, Landroidx/media3/datasource/RawResourceDataSource;->parseResourceId(Ljava/lang/String;)I

    move-result v6

    move v2, v6

    .local v6, "resourceId":I
    goto :goto_2

    .line 255
    .end local v6    # "resourceId":I
    :cond_5
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ":"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 256
    const-string/jumbo v7, "raw"

    invoke-virtual {v5, v6, v7, v4}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    .line 258
    .local v6, "resourceIdFromName":I
    if-eqz v6, :cond_7

    .line 259
    move v7, v6

    move v2, v7

    .line 267
    .end local v1    # "path":Ljava/lang/String;
    .end local v6    # "resourceIdFromName":I
    .local v2, "resourceId":I
    :goto_2
    move-object v1, v5

    .line 280
    .end local v5    # "resources":Landroid/content/res/Resources;
    .local v1, "resources":Landroid/content/res/Resources;
    :goto_3
    :try_start_1
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->openRawResourceFd(I)Landroid/content/res/AssetFileDescriptor;

    move-result-object v3
    :try_end_1
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    .line 284
    .local v3, "assetFileDescriptor":Landroid/content/res/AssetFileDescriptor;
    nop

    .line 286
    if-eqz v3, :cond_6

    .line 292
    return-object v3

    .line 287
    :cond_6
    new-instance v5, Landroidx/media3/datasource/RawResourceDataSource$RawResourceDataSourceException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Resource is compressed: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/16 v7, 0x7d0

    invoke-direct {v5, v6, v4, v7}, Landroidx/media3/datasource/RawResourceDataSource$RawResourceDataSourceException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;I)V

    throw v5

    .line 281
    .end local v3    # "assetFileDescriptor":Landroid/content/res/AssetFileDescriptor;
    :catch_0
    move-exception v5

    .line 282
    .local v5, "e":Landroid/content/res/Resources$NotFoundException;
    new-instance v6, Landroidx/media3/datasource/RawResourceDataSource$RawResourceDataSourceException;

    invoke-direct {v6, v4, v5, v3}, Landroidx/media3/datasource/RawResourceDataSource$RawResourceDataSourceException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;I)V

    throw v6

    .line 261
    .local v1, "path":Ljava/lang/String;
    .local v2, "packageName":Ljava/lang/String;
    .local v5, "resources":Landroid/content/res/Resources;
    .restart local v6    # "resourceIdFromName":I
    :cond_7
    new-instance v7, Landroidx/media3/datasource/RawResourceDataSource$RawResourceDataSourceException;

    const-string v8, "Resource not found."

    invoke-direct {v7, v8, v4, v3}, Landroidx/media3/datasource/RawResourceDataSource$RawResourceDataSourceException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;I)V

    throw v7

    .line 241
    .end local v5    # "resources":Landroid/content/res/Resources;
    .end local v6    # "resourceIdFromName":I
    :catch_1
    move-exception v4

    .line 242
    .local v4, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    new-instance v5, Landroidx/media3/datasource/RawResourceDataSource$RawResourceDataSourceException;

    const-string v6, "Package in android.resource:// URI not found. Check http://g.co/dev/packagevisibility."

    invoke-direct {v5, v6, v4, v3}, Landroidx/media3/datasource/RawResourceDataSource$RawResourceDataSourceException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;I)V

    throw v5

    .line 268
    .end local v1    # "path":Ljava/lang/String;
    .end local v2    # "packageName":Ljava/lang/String;
    .end local v4    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_8
    new-instance v1, Landroidx/media3/datasource/RawResourceDataSource$RawResourceDataSourceException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unsupported URI scheme ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 270
    invoke-virtual {v0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "). Only "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " is supported."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x3ec

    invoke-direct {v1, v2, v4, v3}, Landroidx/media3/datasource/RawResourceDataSource$RawResourceDataSourceException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;I)V

    throw v1
.end method

.method private static parseResourceId(Ljava/lang/String;)I
    .locals 5
    .param p0, "resourceId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media3/datasource/RawResourceDataSource$RawResourceDataSourceException;
        }
    .end annotation

    .line 297
    :try_start_0
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 298
    :catch_0
    move-exception v0

    .line 299
    .local v0, "e":Ljava/lang/NumberFormatException;
    new-instance v1, Landroidx/media3/datasource/RawResourceDataSource$RawResourceDataSourceException;

    const/4 v2, 0x0

    const/16 v3, 0x3ec

    const-string v4, "Resource identifier must be an integer."

    invoke-direct {v1, v4, v2, v3}, Landroidx/media3/datasource/RawResourceDataSource$RawResourceDataSourceException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;I)V

    throw v1
.end method


# virtual methods
.method public close()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media3/datasource/RawResourceDataSource$RawResourceDataSourceException;
        }
    .end annotation

    .line 350
    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/media3/datasource/RawResourceDataSource;->dataSpec:Landroidx/media3/datasource/DataSpec;

    .line 352
    const/16 v1, 0x7d0

    const/4 v2, 0x0

    :try_start_0
    iget-object v3, p0, Landroidx/media3/datasource/RawResourceDataSource;->inputStream:Ljava/io/InputStream;

    if-eqz v3, :cond_0

    .line 353
    iget-object v3, p0, Landroidx/media3/datasource/RawResourceDataSource;->inputStream:Ljava/io/InputStream;

    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 359
    :cond_0
    iput-object v0, p0, Landroidx/media3/datasource/RawResourceDataSource;->inputStream:Ljava/io/InputStream;

    .line 361
    :try_start_1
    iget-object v3, p0, Landroidx/media3/datasource/RawResourceDataSource;->assetFileDescriptor:Landroid/content/res/AssetFileDescriptor;

    if-eqz v3, :cond_1

    .line 362
    iget-object v3, p0, Landroidx/media3/datasource/RawResourceDataSource;->assetFileDescriptor:Landroid/content/res/AssetFileDescriptor;

    invoke-virtual {v3}, Landroid/content/res/AssetFileDescriptor;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 368
    :cond_1
    iput-object v0, p0, Landroidx/media3/datasource/RawResourceDataSource;->assetFileDescriptor:Landroid/content/res/AssetFileDescriptor;

    .line 369
    iget-boolean v0, p0, Landroidx/media3/datasource/RawResourceDataSource;->opened:Z

    if-eqz v0, :cond_2

    .line 370
    iput-boolean v2, p0, Landroidx/media3/datasource/RawResourceDataSource;->opened:Z

    .line 371
    invoke-virtual {p0}, Landroidx/media3/datasource/RawResourceDataSource;->transferEnded()V

    .line 374
    :cond_2
    nop

    .line 375
    return-void

    .line 368
    :catchall_0
    move-exception v1

    goto :goto_0

    .line 364
    :catch_0
    move-exception v3

    .line 365
    .local v3, "e":Ljava/io/IOException;
    :try_start_2
    new-instance v4, Landroidx/media3/datasource/RawResourceDataSource$RawResourceDataSourceException;

    invoke-direct {v4, v0, v3, v1}, Landroidx/media3/datasource/RawResourceDataSource$RawResourceDataSourceException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;I)V

    throw v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 368
    .end local v3    # "e":Ljava/io/IOException;
    :goto_0
    iput-object v0, p0, Landroidx/media3/datasource/RawResourceDataSource;->assetFileDescriptor:Landroid/content/res/AssetFileDescriptor;

    .line 369
    iget-boolean v0, p0, Landroidx/media3/datasource/RawResourceDataSource;->opened:Z

    if-eqz v0, :cond_3

    .line 370
    iput-boolean v2, p0, Landroidx/media3/datasource/RawResourceDataSource;->opened:Z

    .line 371
    invoke-virtual {p0}, Landroidx/media3/datasource/RawResourceDataSource;->transferEnded()V

    .line 373
    :cond_3
    throw v1

    .line 359
    :catchall_1
    move-exception v3

    goto :goto_1

    .line 355
    :catch_1
    move-exception v3

    .line 356
    .restart local v3    # "e":Ljava/io/IOException;
    :try_start_3
    new-instance v4, Landroidx/media3/datasource/RawResourceDataSource$RawResourceDataSourceException;

    invoke-direct {v4, v0, v3, v1}, Landroidx/media3/datasource/RawResourceDataSource$RawResourceDataSourceException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;I)V

    throw v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 359
    .end local v3    # "e":Ljava/io/IOException;
    :goto_1
    iput-object v0, p0, Landroidx/media3/datasource/RawResourceDataSource;->inputStream:Ljava/io/InputStream;

    .line 361
    :try_start_4
    iget-object v4, p0, Landroidx/media3/datasource/RawResourceDataSource;->assetFileDescriptor:Landroid/content/res/AssetFileDescriptor;

    if-eqz v4, :cond_4

    .line 362
    iget-object v4, p0, Landroidx/media3/datasource/RawResourceDataSource;->assetFileDescriptor:Landroid/content/res/AssetFileDescriptor;

    invoke-virtual {v4}, Landroid/content/res/AssetFileDescriptor;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 368
    :cond_4
    iput-object v0, p0, Landroidx/media3/datasource/RawResourceDataSource;->assetFileDescriptor:Landroid/content/res/AssetFileDescriptor;

    .line 369
    iget-boolean v0, p0, Landroidx/media3/datasource/RawResourceDataSource;->opened:Z

    if-eqz v0, :cond_5

    .line 370
    iput-boolean v2, p0, Landroidx/media3/datasource/RawResourceDataSource;->opened:Z

    .line 371
    invoke-virtual {p0}, Landroidx/media3/datasource/RawResourceDataSource;->transferEnded()V

    .line 374
    :cond_5
    throw v3

    .line 368
    :catchall_2
    move-exception v1

    goto :goto_2

    .line 364
    :catch_2
    move-exception v3

    .line 365
    .restart local v3    # "e":Ljava/io/IOException;
    :try_start_5
    new-instance v4, Landroidx/media3/datasource/RawResourceDataSource$RawResourceDataSourceException;

    invoke-direct {v4, v0, v3, v1}, Landroidx/media3/datasource/RawResourceDataSource$RawResourceDataSourceException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;I)V

    throw v4
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 368
    .end local v3    # "e":Ljava/io/IOException;
    :goto_2
    iput-object v0, p0, Landroidx/media3/datasource/RawResourceDataSource;->assetFileDescriptor:Landroid/content/res/AssetFileDescriptor;

    .line 369
    iget-boolean v0, p0, Landroidx/media3/datasource/RawResourceDataSource;->opened:Z

    if-eqz v0, :cond_6

    .line 370
    iput-boolean v2, p0, Landroidx/media3/datasource/RawResourceDataSource;->opened:Z

    .line 371
    invoke-virtual {p0}, Landroidx/media3/datasource/RawResourceDataSource;->transferEnded()V

    .line 373
    :cond_6
    throw v1
.end method

.method public getUri()Landroid/net/Uri;
    .locals 1

    .line 344
    iget-object v0, p0, Landroidx/media3/datasource/RawResourceDataSource;->dataSpec:Landroidx/media3/datasource/DataSpec;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/media3/datasource/RawResourceDataSource;->dataSpec:Landroidx/media3/datasource/DataSpec;

    iget-object v0, v0, Landroidx/media3/datasource/DataSpec;->uri:Landroid/net/Uri;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public open(Landroidx/media3/datasource/DataSpec;)J
    .locals 22
    .param p1, "dataSpec"    # Landroidx/media3/datasource/DataSpec;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media3/datasource/RawResourceDataSource$RawResourceDataSourceException;
        }
    .end annotation

    .line 135
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    iput-object v2, v1, Landroidx/media3/datasource/RawResourceDataSource;->dataSpec:Landroidx/media3/datasource/DataSpec;

    .line 136
    invoke-virtual/range {p0 .. p1}, Landroidx/media3/datasource/RawResourceDataSource;->transferInitializing(Landroidx/media3/datasource/DataSpec;)V

    .line 137
    iget-object v0, v1, Landroidx/media3/datasource/RawResourceDataSource;->applicationContext:Landroid/content/Context;

    invoke-static {v0, v2}, Landroidx/media3/datasource/RawResourceDataSource;->openAssetFileDescriptor(Landroid/content/Context;Landroidx/media3/datasource/DataSpec;)Landroid/content/res/AssetFileDescriptor;

    move-result-object v0

    iput-object v0, v1, Landroidx/media3/datasource/RawResourceDataSource;->assetFileDescriptor:Landroid/content/res/AssetFileDescriptor;

    .line 139
    iget-object v0, v1, Landroidx/media3/datasource/RawResourceDataSource;->assetFileDescriptor:Landroid/content/res/AssetFileDescriptor;

    invoke-virtual {v0}, Landroid/content/res/AssetFileDescriptor;->getLength()J

    move-result-wide v3

    .line 140
    .local v3, "assetFileDescriptorLength":J
    new-instance v0, Ljava/io/FileInputStream;

    iget-object v5, v1, Landroidx/media3/datasource/RawResourceDataSource;->assetFileDescriptor:Landroid/content/res/AssetFileDescriptor;

    invoke-virtual {v5}, Landroid/content/res/AssetFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v5

    invoke-direct {v0, v5}, Ljava/io/FileInputStream;-><init>(Ljava/io/FileDescriptor;)V

    move-object v5, v0

    .line 141
    .local v5, "inputStream":Ljava/io/FileInputStream;
    iput-object v5, v1, Landroidx/media3/datasource/RawResourceDataSource;->inputStream:Ljava/io/InputStream;

    .line 150
    const-wide/16 v6, -0x1

    cmp-long v0, v3, v6

    const/16 v8, 0x7d8

    const/4 v9, 0x0

    if-eqz v0, :cond_1

    :try_start_0
    iget-wide v10, v2, Landroidx/media3/datasource/DataSpec;->position:J

    cmp-long v0, v10, v3

    if-gtz v0, :cond_0

    goto :goto_0

    .line 152
    :cond_0
    new-instance v0, Landroidx/media3/datasource/RawResourceDataSource$RawResourceDataSourceException;

    invoke-direct {v0, v9, v9, v8}, Landroidx/media3/datasource/RawResourceDataSource$RawResourceDataSourceException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;I)V

    .end local v3    # "assetFileDescriptorLength":J
    .end local v5    # "inputStream":Ljava/io/FileInputStream;
    .end local p1    # "dataSpec":Landroidx/media3/datasource/DataSpec;
    throw v0

    .line 157
    .restart local v3    # "assetFileDescriptorLength":J
    .restart local v5    # "inputStream":Ljava/io/FileInputStream;
    .restart local p1    # "dataSpec":Landroidx/media3/datasource/DataSpec;
    :cond_1
    :goto_0
    iget-object v0, v1, Landroidx/media3/datasource/RawResourceDataSource;->assetFileDescriptor:Landroid/content/res/AssetFileDescriptor;

    invoke-virtual {v0}, Landroid/content/res/AssetFileDescriptor;->getStartOffset()J

    move-result-wide v10

    .line 158
    .local v10, "assetFileDescriptorOffset":J
    iget-wide v12, v2, Landroidx/media3/datasource/DataSpec;->position:J

    add-long/2addr v12, v10

    .line 159
    invoke-virtual {v5, v12, v13}, Ljava/io/FileInputStream;->skip(J)J

    move-result-wide v12

    sub-long/2addr v12, v10

    .line 161
    .local v12, "skipped":J
    iget-wide v14, v2, Landroidx/media3/datasource/DataSpec;->position:J

    cmp-long v0, v12, v14

    if-nez v0, :cond_9

    .line 169
    cmp-long v0, v3, v6

    const-wide/16 v14, 0x0

    if-nez v0, :cond_4

    .line 172
    invoke-virtual {v5}, Ljava/io/FileInputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v0

    .line 173
    .local v0, "channel":Ljava/nio/channels/FileChannel;
    invoke-virtual {v0}, Ljava/nio/channels/FileChannel;->size()J

    move-result-wide v16

    cmp-long v16, v16, v14

    if-nez v16, :cond_2

    .line 174
    iput-wide v6, v1, Landroidx/media3/datasource/RawResourceDataSource;->bytesRemaining:J

    move-wide/from16 v20, v6

    goto :goto_1

    .line 176
    :cond_2
    invoke-virtual {v0}, Ljava/nio/channels/FileChannel;->size()J

    move-result-wide v16

    invoke-virtual {v0}, Ljava/nio/channels/FileChannel;->position()J

    move-result-wide v18

    move-wide/from16 v20, v6

    sub-long v6, v16, v18

    iput-wide v6, v1, Landroidx/media3/datasource/RawResourceDataSource;->bytesRemaining:J

    .line 177
    iget-wide v6, v1, Landroidx/media3/datasource/RawResourceDataSource;->bytesRemaining:J

    cmp-long v6, v6, v14

    if-ltz v6, :cond_3

    .line 185
    .end local v0    # "channel":Ljava/nio/channels/FileChannel;
    :goto_1
    goto :goto_2

    .line 179
    .restart local v0    # "channel":Ljava/nio/channels/FileChannel;
    :cond_3
    new-instance v6, Landroidx/media3/datasource/RawResourceDataSource$RawResourceDataSourceException;

    invoke-direct {v6, v9, v9, v8}, Landroidx/media3/datasource/RawResourceDataSource$RawResourceDataSourceException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;I)V

    .end local v3    # "assetFileDescriptorLength":J
    .end local v5    # "inputStream":Ljava/io/FileInputStream;
    .end local p1    # "dataSpec":Landroidx/media3/datasource/DataSpec;
    throw v6

    .line 186
    .end local v0    # "channel":Ljava/nio/channels/FileChannel;
    .restart local v3    # "assetFileDescriptorLength":J
    .restart local v5    # "inputStream":Ljava/io/FileInputStream;
    .restart local p1    # "dataSpec":Landroidx/media3/datasource/DataSpec;
    :cond_4
    move-wide/from16 v20, v6

    sub-long v6, v3, v12

    iput-wide v6, v1, Landroidx/media3/datasource/RawResourceDataSource;->bytesRemaining:J

    .line 187
    iget-wide v6, v1, Landroidx/media3/datasource/RawResourceDataSource;->bytesRemaining:J
    :try_end_0
    .catch Landroidx/media3/datasource/RawResourceDataSource$RawResourceDataSourceException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    cmp-long v0, v6, v14

    if-ltz v0, :cond_8

    .line 196
    .end local v10    # "assetFileDescriptorOffset":J
    .end local v12    # "skipped":J
    :goto_2
    nop

    .line 198
    iget-wide v6, v2, Landroidx/media3/datasource/DataSpec;->length:J

    cmp-long v0, v6, v20

    if-eqz v0, :cond_6

    .line 199
    nop

    .line 200
    iget-wide v6, v1, Landroidx/media3/datasource/RawResourceDataSource;->bytesRemaining:J

    cmp-long v0, v6, v20

    if-nez v0, :cond_5

    iget-wide v6, v2, Landroidx/media3/datasource/DataSpec;->length:J

    goto :goto_3

    :cond_5
    iget-wide v6, v1, Landroidx/media3/datasource/RawResourceDataSource;->bytesRemaining:J

    iget-wide v8, v2, Landroidx/media3/datasource/DataSpec;->length:J

    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v6

    :goto_3
    iput-wide v6, v1, Landroidx/media3/datasource/RawResourceDataSource;->bytesRemaining:J

    .line 202
    :cond_6
    const/4 v0, 0x1

    iput-boolean v0, v1, Landroidx/media3/datasource/RawResourceDataSource;->opened:Z

    .line 203
    invoke-virtual/range {p0 .. p1}, Landroidx/media3/datasource/RawResourceDataSource;->transferStarted(Landroidx/media3/datasource/DataSpec;)V

    .line 204
    iget-wide v6, v2, Landroidx/media3/datasource/DataSpec;->length:J

    cmp-long v0, v6, v20

    if-eqz v0, :cond_7

    iget-wide v6, v2, Landroidx/media3/datasource/DataSpec;->length:J

    goto :goto_4

    :cond_7
    iget-wide v6, v1, Landroidx/media3/datasource/RawResourceDataSource;->bytesRemaining:J

    :goto_4
    return-wide v6

    .line 188
    .restart local v10    # "assetFileDescriptorOffset":J
    .restart local v12    # "skipped":J
    :cond_8
    :try_start_1
    new-instance v0, Landroidx/media3/datasource/DataSourceException;

    invoke-direct {v0, v8}, Landroidx/media3/datasource/DataSourceException;-><init>(I)V

    .end local v3    # "assetFileDescriptorLength":J
    .end local v5    # "inputStream":Ljava/io/FileInputStream;
    .end local p1    # "dataSpec":Landroidx/media3/datasource/DataSpec;
    throw v0

    .line 164
    .restart local v3    # "assetFileDescriptorLength":J
    .restart local v5    # "inputStream":Ljava/io/FileInputStream;
    .restart local p1    # "dataSpec":Landroidx/media3/datasource/DataSpec;
    :cond_9
    new-instance v0, Landroidx/media3/datasource/RawResourceDataSource$RawResourceDataSourceException;

    invoke-direct {v0, v9, v9, v8}, Landroidx/media3/datasource/RawResourceDataSource$RawResourceDataSourceException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;I)V

    .end local v3    # "assetFileDescriptorLength":J
    .end local v5    # "inputStream":Ljava/io/FileInputStream;
    .end local p1    # "dataSpec":Landroidx/media3/datasource/DataSpec;
    throw v0
    :try_end_1
    .catch Landroidx/media3/datasource/RawResourceDataSource$RawResourceDataSourceException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 193
    .end local v10    # "assetFileDescriptorOffset":J
    .end local v12    # "skipped":J
    .restart local v3    # "assetFileDescriptorLength":J
    .restart local v5    # "inputStream":Ljava/io/FileInputStream;
    .restart local p1    # "dataSpec":Landroidx/media3/datasource/DataSpec;
    :catch_0
    move-exception v0

    .line 194
    .local v0, "e":Ljava/io/IOException;
    new-instance v6, Landroidx/media3/datasource/RawResourceDataSource$RawResourceDataSourceException;

    const/16 v7, 0x7d0

    invoke-direct {v6, v9, v0, v7}, Landroidx/media3/datasource/RawResourceDataSource$RawResourceDataSourceException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;I)V

    throw v6

    .line 191
    .end local v0    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v0

    .line 192
    .local v0, "e":Landroidx/media3/datasource/RawResourceDataSource$RawResourceDataSourceException;
    throw v0
.end method

.method public read([BII)I
    .locals 8
    .param p1, "buffer"    # [B
    .param p2, "offset"    # I
    .param p3, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media3/datasource/RawResourceDataSource$RawResourceDataSourceException;
        }
    .end annotation

    .line 308
    if-nez p3, :cond_0

    .line 309
    const/4 v0, 0x0

    return v0

    .line 310
    :cond_0
    iget-wide v0, p0, Landroidx/media3/datasource/RawResourceDataSource;->bytesRemaining:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    const/4 v1, -0x1

    if-nez v0, :cond_1

    .line 311
    return v1

    .line 317
    :cond_1
    const/16 v0, 0x7d0

    :try_start_0
    iget-wide v2, p0, Landroidx/media3/datasource/RawResourceDataSource;->bytesRemaining:J

    const-wide/16 v4, -0x1

    cmp-long v2, v2, v4

    if-nez v2, :cond_2

    move v2, p3

    goto :goto_0

    :cond_2
    iget-wide v2, p0, Landroidx/media3/datasource/RawResourceDataSource;->bytesRemaining:J

    int-to-long v6, p3

    invoke-static {v2, v3, v6, v7}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v2

    long-to-int v2, v2

    .line 318
    .local v2, "bytesToRead":I
    :goto_0
    iget-object v3, p0, Landroidx/media3/datasource/RawResourceDataSource;->inputStream:Ljava/io/InputStream;

    invoke-static {v3}, Landroidx/media3/common/util/Util;->castNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/io/InputStream;

    invoke-virtual {v3, p1, p2, v2}, Ljava/io/InputStream;->read([BII)I

    move-result v3
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 322
    .end local v2    # "bytesToRead":I
    .local v3, "bytesRead":I
    nop

    .line 324
    nop

    .line 334
    iget-wide v6, p0, Landroidx/media3/datasource/RawResourceDataSource;->bytesRemaining:J

    .line 324
    if-ne v3, v1, :cond_4

    .line 325
    cmp-long v2, v6, v4

    if-nez v2, :cond_3

    .line 332
    return v1

    .line 327
    :cond_3
    new-instance v1, Landroidx/media3/datasource/RawResourceDataSource$RawResourceDataSourceException;

    new-instance v2, Ljava/io/EOFException;

    invoke-direct {v2}, Ljava/io/EOFException;-><init>()V

    const-string v4, "End of stream reached having not read sufficient data."

    invoke-direct {v1, v4, v2, v0}, Landroidx/media3/datasource/RawResourceDataSource$RawResourceDataSourceException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;I)V

    throw v1

    .line 334
    :cond_4
    cmp-long v0, v6, v4

    if-eqz v0, :cond_5

    .line 335
    iget-wide v0, p0, Landroidx/media3/datasource/RawResourceDataSource;->bytesRemaining:J

    int-to-long v4, v3

    sub-long/2addr v0, v4

    iput-wide v0, p0, Landroidx/media3/datasource/RawResourceDataSource;->bytesRemaining:J

    .line 337
    :cond_5
    invoke-virtual {p0, v3}, Landroidx/media3/datasource/RawResourceDataSource;->bytesTransferred(I)V

    .line 338
    return v3

    .line 319
    .end local v3    # "bytesRead":I
    :catch_0
    move-exception v1

    .line 320
    .local v1, "e":Ljava/io/IOException;
    new-instance v2, Landroidx/media3/datasource/RawResourceDataSource$RawResourceDataSourceException;

    const/4 v3, 0x0

    invoke-direct {v2, v3, v1, v0}, Landroidx/media3/datasource/RawResourceDataSource$RawResourceDataSourceException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;I)V

    throw v2
.end method
