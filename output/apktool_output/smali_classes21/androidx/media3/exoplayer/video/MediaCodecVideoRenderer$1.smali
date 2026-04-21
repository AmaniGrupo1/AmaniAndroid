.class Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer$1;
.super Ljava/lang/Object;
.source "MediaCodecVideoRenderer.java"

# interfaces
.implements Landroidx/media3/exoplayer/video/VideoSink$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->configureVideoSink()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;


# direct methods
.method constructor <init>(Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;)V
    .locals 0
    .param p1, "this$0"    # Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 957
    iput-object p1, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer$1;->this$0:Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Landroidx/media3/exoplayer/video/VideoSink$VideoSinkException;)V
    .locals 4
    .param p1, "videoSinkException"    # Landroidx/media3/exoplayer/video/VideoSink$VideoSinkException;

    .line 991
    iget-object v0, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer$1;->this$0:Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;

    iget-object v1, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer$1;->this$0:Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;

    iget-object v2, p1, Landroidx/media3/exoplayer/video/VideoSink$VideoSinkException;->format:Landroidx/media3/common/Format;

    .line 992
    const/16 v3, 0x1b59

    invoke-static {v1, p1, v2, v3}, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->access$1700(Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;Ljava/lang/Throwable;Landroidx/media3/common/Format;I)Landroidx/media3/exoplayer/ExoPlaybackException;

    move-result-object v1

    .line 991
    invoke-static {v0, v1}, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->access$1800(Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;Landroidx/media3/exoplayer/ExoPlaybackException;)V

    .line 996
    return-void
.end method

.method public onFirstFrameRendered()V
    .locals 1

    .line 969
    iget-object v0, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer$1;->this$0:Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;

    invoke-static {v0}, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->access$1500(Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;)Landroid/view/Surface;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 970
    iget-object v0, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer$1;->this$0:Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;

    invoke-static {v0}, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->access$1600(Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;)V

    .line 972
    :cond_0
    return-void
.end method

.method public onFrameAvailableForRendering()V
    .locals 1

    .line 961
    iget-object v0, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer$1;->this$0:Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;

    invoke-static {v0}, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->access$1400(Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;)Landroidx/media3/exoplayer/Renderer$WakeupListener;

    move-result-object v0

    .line 962
    .local v0, "wakeupListener":Landroidx/media3/exoplayer/Renderer$WakeupListener;
    if-eqz v0, :cond_0

    .line 963
    invoke-interface {v0}, Landroidx/media3/exoplayer/Renderer$WakeupListener;->onWakeup()V

    .line 965
    :cond_0
    return-void
.end method

.method public onFrameDropped()V
    .locals 3

    .line 976
    iget-object v0, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer$1;->this$0:Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;

    invoke-static {v0}, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->access$1500(Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;)Landroid/view/Surface;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 977
    iget-object v0, p0, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer$1;->this$0:Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroidx/media3/exoplayer/video/MediaCodecVideoRenderer;->updateDroppedBufferCounters(II)V

    .line 980
    :cond_0
    return-void
.end method

.method public onVideoSizeChanged(Landroidx/media3/common/VideoSize;)V
    .locals 0
    .param p1, "videoSize"    # Landroidx/media3/common/VideoSize;

    .line 987
    return-void
.end method
