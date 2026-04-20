.class public interface abstract Landroidx/media3/exoplayer/RenderersFactory;
.super Ljava/lang/Object;
.source "RenderersFactory.java"


# virtual methods
.method public abstract createRenderers(Landroid/os/Handler;Landroidx/media3/exoplayer/video/VideoRendererEventListener;Landroidx/media3/exoplayer/audio/AudioRendererEventListener;Landroidx/media3/exoplayer/text/TextOutput;Landroidx/media3/exoplayer/metadata/MetadataOutput;)[Landroidx/media3/exoplayer/Renderer;
.end method

.method public createSecondaryRenderer(Landroidx/media3/exoplayer/Renderer;Landroid/os/Handler;Landroidx/media3/exoplayer/video/VideoRendererEventListener;Landroidx/media3/exoplayer/audio/AudioRendererEventListener;Landroidx/media3/exoplayer/text/TextOutput;Landroidx/media3/exoplayer/metadata/MetadataOutput;)Landroidx/media3/exoplayer/Renderer;
    .locals 1
    .param p1, "renderer"    # Landroidx/media3/exoplayer/Renderer;
    .param p2, "eventHandler"    # Landroid/os/Handler;
    .param p3, "videoRendererEventListener"    # Landroidx/media3/exoplayer/video/VideoRendererEventListener;
    .param p4, "audioRendererEventListener"    # Landroidx/media3/exoplayer/audio/AudioRendererEventListener;
    .param p5, "textRendererOutput"    # Landroidx/media3/exoplayer/text/TextOutput;
    .param p6, "metadataRendererOutput"    # Landroidx/media3/exoplayer/metadata/MetadataOutput;

    .line 69
    const/4 v0, 0x0

    return-object v0
.end method
