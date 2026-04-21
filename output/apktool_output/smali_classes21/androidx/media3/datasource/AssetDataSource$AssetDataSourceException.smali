.class public final Landroidx/media3/datasource/AssetDataSource$AssetDataSourceException;
.super Landroidx/media3/datasource/DataSourceException;
.source "AssetDataSource.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media3/datasource/AssetDataSource;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "AssetDataSourceException"
.end annotation


# direct methods
.method public constructor <init>(Ljava/io/IOException;)V
    .locals 1
    .param p1, "cause"    # Ljava/io/IOException;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 45
    const/16 v0, 0x7d0

    invoke-direct {p0, p1, v0}, Landroidx/media3/datasource/DataSourceException;-><init>(Ljava/lang/Throwable;I)V

    .line 46
    return-void
.end method

.method public constructor <init>(Ljava/lang/Throwable;I)V
    .locals 0
    .param p1, "cause"    # Ljava/lang/Throwable;
    .param p2, "errorCode"    # I

    .line 56
    invoke-direct {p0, p1, p2}, Landroidx/media3/datasource/DataSourceException;-><init>(Ljava/lang/Throwable;I)V

    .line 57
    return-void
.end method
