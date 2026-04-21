.class final Landroidx/media3/exoplayer/video/VideoFrameReleaseHelper$Api30;
.super Ljava/lang/Object;
.source "VideoFrameReleaseHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media3/exoplayer/video/VideoFrameReleaseHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "Api30"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 453
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static setSurfaceFrameRate(Landroid/view/Surface;F)V
    .locals 4
    .param p0, "surface"    # Landroid/view/Surface;
    .param p1, "frameRate"    # F

    .line 456
    const/4 v0, 0x0

    cmpl-float v0, p1, v0

    if-nez v0, :cond_0

    .line 457
    const/4 v0, 0x0

    goto :goto_0

    .line 458
    :cond_0
    const/4 v0, 0x1

    :goto_0
    nop

    .line 460
    .local v0, "compatibility":I
    :try_start_0
    invoke-virtual {p0, p1, v0}, Landroid/view/Surface;->setFrameRate(FI)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 463
    goto :goto_1

    .line 461
    :catch_0
    move-exception v1

    .line 462
    .local v1, "e":Ljava/lang/IllegalStateException;
    const-string v2, "VideoFrameReleaseHelper"

    const-string v3, "Failed to call Surface.setFrameRate"

    invoke-static {v2, v3, v1}, Landroidx/media3/common/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 464
    .end local v1    # "e":Ljava/lang/IllegalStateException;
    :goto_1
    return-void
.end method
