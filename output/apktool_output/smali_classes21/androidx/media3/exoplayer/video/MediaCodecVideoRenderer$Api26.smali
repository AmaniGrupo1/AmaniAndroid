.class final Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer$Api26;
.super Ljava/lang/Object;
.source "MediaCodecVideoRenderer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "Api26"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 885
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static doesDisplaySupportDolbyVision(Landroid/content/Context;)Z
    .locals 9
    .param p0, "context"    # Landroid/content/Context;

    .line 887
    nop

    .line 888
    const-string v0, "display"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/display/DisplayManager;

    .line 890
    .local v0, "displayManager":Landroid/hardware/display/DisplayManager;
    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0, v1}, Landroid/hardware/display/DisplayManager;->getDisplay(I)Landroid/view/Display;

    move-result-object v2

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 891
    .local v2, "display":Landroid/view/Display;
    :goto_0
    if-eqz v2, :cond_5

    invoke-virtual {v2}, Landroid/view/Display;->isHdr()Z

    move-result v3

    if-nez v3, :cond_1

    goto :goto_2

    .line 894
    :cond_1
    invoke-virtual {v2}, Landroid/view/Display;->getHdrCapabilities()Landroid/view/Display$HdrCapabilities;

    move-result-object v3

    .line 895
    .local v3, "hdrCapabilities":Landroid/view/Display$HdrCapabilities;
    if-nez v3, :cond_2

    .line 896
    return v1

    .line 898
    :cond_2
    invoke-virtual {v3}, Landroid/view/Display$HdrCapabilities;->getSupportedHdrTypes()[I

    move-result-object v4

    array-length v5, v4

    move v6, v1

    :goto_1
    if-ge v6, v5, :cond_4

    aget v7, v4, v6

    .line 899
    .local v7, "hdrType":I
    const/4 v8, 0x1

    if-ne v7, v8, :cond_3

    .line 900
    return v8

    .line 898
    .end local v7    # "hdrType":I
    :cond_3
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 903
    :cond_4
    return v1

    .line 892
    .end local v3    # "hdrCapabilities":Landroid/view/Display$HdrCapabilities;
    :cond_5
    :goto_2
    return v1
.end method
