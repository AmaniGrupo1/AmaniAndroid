.class public interface abstract Landroidx/media3/common/VideoFrameProcessor$Listener;
.super Ljava/lang/Object;
.source "VideoFrameProcessor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media3/common/VideoFrameProcessor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Listener"
.end annotation


# virtual methods
.method public onEnded()V
    .locals 0

    .line 191
    return-void
.end method

.method public onError(Landroidx/media3/common/VideoFrameProcessingException;)V
    .locals 0
    .param p1, "exception"    # Landroidx/media3/common/VideoFrameProcessingException;

    .line 188
    return-void
.end method

.method public onInputStreamRegistered(ILandroidx/media3/common/Format;Ljava/util/List;)V
    .locals 0
    .param p1, "inputType"    # I
    .param p2, "format"    # Landroidx/media3/common/Format;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroidx/media3/common/Format;",
            "Ljava/util/List<",
            "Landroidx/media3/common/Effect;",
            ">;)V"
        }
    .end annotation

    .line 149
    .local p3, "effects":Ljava/util/List;, "Ljava/util/List<Landroidx/media3/common/Effect;>;"
    return-void
.end method

.method public onOutputFrameAvailableForRendering(JZ)V
    .locals 0
    .param p1, "presentationTimeUs"    # J
    .param p3, "isRedrawnFrame"    # Z

    .line 180
    return-void
.end method

.method public onOutputFrameRateChanged(F)V
    .locals 0
    .param p1, "frameRate"    # F

    .line 168
    return-void
.end method

.method public onOutputSizeChanged(II)V
    .locals 0
    .param p1, "width"    # I
    .param p2, "height"    # I

    .line 160
    return-void
.end method
