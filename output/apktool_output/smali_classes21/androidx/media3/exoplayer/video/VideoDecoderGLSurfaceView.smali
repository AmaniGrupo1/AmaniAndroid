.class public final Landroidx/media3/exoplayer/video/VideoDecoderGLSurfaceView;
.super Landroid/opengl/GLSurfaceView;
.source "VideoDecoderGLSurfaceView.java"

# interfaces
.implements Landroidx/media3/exoplayer/video/VideoDecoderOutputBufferRenderer;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media3/exoplayer/video/VideoDecoderGLSurfaceView$Renderer;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "VideoDecoderGLSV"


# instance fields
.field private final renderer:Landroidx/media3/exoplayer/video/VideoDecoderGLSurfaceView$Renderer;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 60
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroidx/media3/exoplayer/video/VideoDecoderGLSurfaceView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 61
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 69
    invoke-direct {p0, p1, p2}, Landroid/opengl/GLSurfaceView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 70
    new-instance v0, Landroidx/media3/exoplayer/video/VideoDecoderGLSurfaceView$Renderer;

    invoke-direct {v0, p0}, Landroidx/media3/exoplayer/video/VideoDecoderGLSurfaceView$Renderer;-><init>(Landroid/opengl/GLSurfaceView;)V

    iput-object v0, p0, Landroidx/media3/exoplayer/video/VideoDecoderGLSurfaceView;->renderer:Landroidx/media3/exoplayer/video/VideoDecoderGLSurfaceView$Renderer;

    .line 71
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroidx/media3/exoplayer/video/VideoDecoderGLSurfaceView;->setPreserveEGLContextOnPause(Z)V

    .line 72
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Landroidx/media3/exoplayer/video/VideoDecoderGLSurfaceView;->setEGLContextClientVersion(I)V

    .line 73
    iget-object v0, p0, Landroidx/media3/exoplayer/video/VideoDecoderGLSurfaceView;->renderer:Landroidx/media3/exoplayer/video/VideoDecoderGLSurfaceView$Renderer;

    invoke-virtual {p0, v0}, Landroidx/media3/exoplayer/video/VideoDecoderGLSurfaceView;->setRenderer(Landroid/opengl/GLSurfaceView$Renderer;)V

    .line 74
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroidx/media3/exoplayer/video/VideoDecoderGLSurfaceView;->setRenderMode(I)V

    .line 75
    return-void
.end method


# virtual methods
.method public getVideoDecoderOutputBufferRenderer()Landroidx/media3/exoplayer/video/VideoDecoderOutputBufferRenderer;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 87
    return-object p0
.end method

.method public setOutputBuffer(Landroidx/media3/decoder/VideoDecoderOutputBuffer;)V
    .locals 1
    .param p1, "outputBuffer"    # Landroidx/media3/decoder/VideoDecoderOutputBuffer;

    .line 79
    iget-object v0, p0, Landroidx/media3/exoplayer/video/VideoDecoderGLSurfaceView;->renderer:Landroidx/media3/exoplayer/video/VideoDecoderGLSurfaceView$Renderer;

    invoke-virtual {v0, p1}, Landroidx/media3/exoplayer/video/VideoDecoderGLSurfaceView$Renderer;->setOutputBuffer(Landroidx/media3/decoder/VideoDecoderOutputBuffer;)V

    .line 80
    return-void
.end method
