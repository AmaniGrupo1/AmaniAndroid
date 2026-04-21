.class public final synthetic Landroidx/media3/datasource/DataSourceBitmapLoader$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation runtime Lcom/android/tools/r8/annotations/LambdaMethod;
    holder = "Landroidx/media3/datasource/DataSourceBitmapLoader;"
    method = "lambda$loadBitmap$2"
    proto = "(Landroid/net/Uri;)Landroid/graphics/Bitmap;"
.end annotation

.annotation build Lcom/android/tools/r8/annotations/SynthesizedClassV2;
    apiLevel = -0x2
    kind = 0x13
    versionHash = "9aaf5f34c4c84da429ef7f8f6217a1817876f2618cfcf539aba3d7d5a0c703e0"
.end annotation


# instance fields
.field public final synthetic f$0:Landroidx/media3/datasource/DataSourceBitmapLoader;

.field public final synthetic f$1:Landroid/net/Uri;


# direct methods
.method public synthetic constructor <init>(Landroidx/media3/datasource/DataSourceBitmapLoader;Landroid/net/Uri;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/media3/datasource/DataSourceBitmapLoader$$ExternalSyntheticLambda2;->f$0:Landroidx/media3/datasource/DataSourceBitmapLoader;

    iput-object p2, p0, Landroidx/media3/datasource/DataSourceBitmapLoader$$ExternalSyntheticLambda2;->f$1:Landroid/net/Uri;

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 2

    .line 0
    iget-object v0, p0, Landroidx/media3/datasource/DataSourceBitmapLoader$$ExternalSyntheticLambda2;->f$0:Landroidx/media3/datasource/DataSourceBitmapLoader;

    iget-object v1, p0, Landroidx/media3/datasource/DataSourceBitmapLoader$$ExternalSyntheticLambda2;->f$1:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Landroidx/media3/datasource/DataSourceBitmapLoader;->lambda$loadBitmap$2$androidx-media3-datasource-DataSourceBitmapLoader(Landroid/net/Uri;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method
