.class final Landroidx/media3/exoplayer/audio/DecoderAudioRenderer$AudioSinkListener;
.super Ljava/lang/Object;
.source "DecoderAudioRenderer.java"

# interfaces
.implements Landroidx/media3/exoplayer/audio/AudioSink$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media3/exoplayer/audio/DecoderAudioRenderer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "AudioSinkListener"
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/media3/exoplayer/audio/DecoderAudioRenderer;


# direct methods
.method private constructor <init>(Landroidx/media3/exoplayer/audio/DecoderAudioRenderer;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            null
        }
    .end annotation

    .line 919
    .local p0, "this":Landroidx/media3/exoplayer/audio/DecoderAudioRenderer$AudioSinkListener;, "Landroidx/media3/exoplayer/audio/DecoderAudioRenderer<TT;>.AudioSinkListener;"
    iput-object p1, p0, Landroidx/media3/exoplayer/audio/DecoderAudioRenderer$AudioSinkListener;->this$0:Landroidx/media3/exoplayer/audio/DecoderAudioRenderer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroidx/media3/exoplayer/audio/DecoderAudioRenderer;Landroidx/media3/exoplayer/audio/DecoderAudioRenderer$1;)V
    .locals 0
    .param p1, "x0"    # Landroidx/media3/exoplayer/audio/DecoderAudioRenderer;
    .param p2, "x1"    # Landroidx/media3/exoplayer/audio/DecoderAudioRenderer$1;

    .line 919
    .local p0, "this":Landroidx/media3/exoplayer/audio/DecoderAudioRenderer$AudioSinkListener;, "Landroidx/media3/exoplayer/audio/DecoderAudioRenderer<TT;>.AudioSinkListener;"
    invoke-direct {p0, p1}, Landroidx/media3/exoplayer/audio/DecoderAudioRenderer$AudioSinkListener;-><init>(Landroidx/media3/exoplayer/audio/DecoderAudioRenderer;)V

    return-void
.end method


# virtual methods
.method public onAudioCapabilitiesChanged()V
    .locals 1

    .line 970
    .local p0, "this":Landroidx/media3/exoplayer/audio/DecoderAudioRenderer$AudioSinkListener;, "Landroidx/media3/exoplayer/audio/DecoderAudioRenderer<TT;>.AudioSinkListener;"
    iget-object v0, p0, Landroidx/media3/exoplayer/audio/DecoderAudioRenderer$AudioSinkListener;->this$0:Landroidx/media3/exoplayer/audio/DecoderAudioRenderer;

    invoke-static {v0}, Landroidx/media3/exoplayer/audio/DecoderAudioRenderer;->access$400(Landroidx/media3/exoplayer/audio/DecoderAudioRenderer;)V

    .line 971
    return-void
.end method

.method public onAudioSessionIdChanged(I)V
    .locals 1
    .param p1, "audioSessionId"    # I

    .line 965
    .local p0, "this":Landroidx/media3/exoplayer/audio/DecoderAudioRenderer$AudioSinkListener;, "Landroidx/media3/exoplayer/audio/DecoderAudioRenderer<TT;>.AudioSinkListener;"
    iget-object v0, p0, Landroidx/media3/exoplayer/audio/DecoderAudioRenderer$AudioSinkListener;->this$0:Landroidx/media3/exoplayer/audio/DecoderAudioRenderer;

    invoke-static {v0}, Landroidx/media3/exoplayer/audio/DecoderAudioRenderer;->access$300(Landroidx/media3/exoplayer/audio/DecoderAudioRenderer;)Landroidx/media3/exoplayer/audio/AudioRendererEventListener$EventDispatcher;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroidx/media3/exoplayer/audio/AudioRendererEventListener$EventDispatcher;->audioSessionIdChanged(I)V

    .line 966
    return-void
.end method

.method public onAudioSinkError(Ljava/lang/Exception;)V
    .locals 2
    .param p1, "audioSinkError"    # Ljava/lang/Exception;

    .line 949
    .local p0, "this":Landroidx/media3/exoplayer/audio/DecoderAudioRenderer$AudioSinkListener;, "Landroidx/media3/exoplayer/audio/DecoderAudioRenderer<TT;>.AudioSinkListener;"
    const-string v0, "DecoderAudioRenderer"

    const-string v1, "Audio sink error"

    invoke-static {v0, v1, p1}, Landroidx/media3/common/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 950
    iget-object v0, p0, Landroidx/media3/exoplayer/audio/DecoderAudioRenderer$AudioSinkListener;->this$0:Landroidx/media3/exoplayer/audio/DecoderAudioRenderer;

    invoke-static {v0}, Landroidx/media3/exoplayer/audio/DecoderAudioRenderer;->access$300(Landroidx/media3/exoplayer/audio/DecoderAudioRenderer;)Landroidx/media3/exoplayer/audio/AudioRendererEventListener$EventDispatcher;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroidx/media3/exoplayer/audio/AudioRendererEventListener$EventDispatcher;->audioSinkError(Ljava/lang/Exception;)V

    .line 951
    return-void
.end method

.method public onAudioTrackInitialized(Landroidx/media3/exoplayer/audio/AudioSink$AudioTrackConfig;)V
    .locals 1
    .param p1, "audioTrackConfig"    # Landroidx/media3/exoplayer/audio/AudioSink$AudioTrackConfig;

    .line 955
    .local p0, "this":Landroidx/media3/exoplayer/audio/DecoderAudioRenderer$AudioSinkListener;, "Landroidx/media3/exoplayer/audio/DecoderAudioRenderer<TT;>.AudioSinkListener;"
    iget-object v0, p0, Landroidx/media3/exoplayer/audio/DecoderAudioRenderer$AudioSinkListener;->this$0:Landroidx/media3/exoplayer/audio/DecoderAudioRenderer;

    invoke-static {v0}, Landroidx/media3/exoplayer/audio/DecoderAudioRenderer;->access$300(Landroidx/media3/exoplayer/audio/DecoderAudioRenderer;)Landroidx/media3/exoplayer/audio/AudioRendererEventListener$EventDispatcher;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroidx/media3/exoplayer/audio/AudioRendererEventListener$EventDispatcher;->audioTrackInitialized(Landroidx/media3/exoplayer/audio/AudioSink$AudioTrackConfig;)V

    .line 956
    return-void
.end method

.method public onAudioTrackReleased(Landroidx/media3/exoplayer/audio/AudioSink$AudioTrackConfig;)V
    .locals 1
    .param p1, "audioTrackConfig"    # Landroidx/media3/exoplayer/audio/AudioSink$AudioTrackConfig;

    .line 960
    .local p0, "this":Landroidx/media3/exoplayer/audio/DecoderAudioRenderer$AudioSinkListener;, "Landroidx/media3/exoplayer/audio/DecoderAudioRenderer<TT;>.AudioSinkListener;"
    iget-object v0, p0, Landroidx/media3/exoplayer/audio/DecoderAudioRenderer$AudioSinkListener;->this$0:Landroidx/media3/exoplayer/audio/DecoderAudioRenderer;

    invoke-static {v0}, Landroidx/media3/exoplayer/audio/DecoderAudioRenderer;->access$300(Landroidx/media3/exoplayer/audio/DecoderAudioRenderer;)Landroidx/media3/exoplayer/audio/AudioRendererEventListener$EventDispatcher;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroidx/media3/exoplayer/audio/AudioRendererEventListener$EventDispatcher;->audioTrackReleased(Landroidx/media3/exoplayer/audio/AudioSink$AudioTrackConfig;)V

    .line 961
    return-void
.end method

.method public onPositionAdvancing(J)V
    .locals 2
    .param p1, "playoutStartSystemTimeMs"    # J

    .line 933
    .local p0, "this":Landroidx/media3/exoplayer/audio/DecoderAudioRenderer$AudioSinkListener;, "Landroidx/media3/exoplayer/audio/DecoderAudioRenderer<TT;>.AudioSinkListener;"
    iget-object v0, p0, Landroidx/media3/exoplayer/audio/DecoderAudioRenderer$AudioSinkListener;->this$0:Landroidx/media3/exoplayer/audio/DecoderAudioRenderer;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Landroidx/media3/exoplayer/audio/DecoderAudioRenderer;->access$202(Landroidx/media3/exoplayer/audio/DecoderAudioRenderer;Z)Z

    .line 934
    iget-object v0, p0, Landroidx/media3/exoplayer/audio/DecoderAudioRenderer$AudioSinkListener;->this$0:Landroidx/media3/exoplayer/audio/DecoderAudioRenderer;

    invoke-static {v0}, Landroidx/media3/exoplayer/audio/DecoderAudioRenderer;->access$300(Landroidx/media3/exoplayer/audio/DecoderAudioRenderer;)Landroidx/media3/exoplayer/audio/AudioRendererEventListener$EventDispatcher;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroidx/media3/exoplayer/audio/AudioRendererEventListener$EventDispatcher;->positionAdvancing(J)V

    .line 935
    return-void
.end method

.method public onPositionDiscontinuity()V
    .locals 1

    .line 923
    .local p0, "this":Landroidx/media3/exoplayer/audio/DecoderAudioRenderer$AudioSinkListener;, "Landroidx/media3/exoplayer/audio/DecoderAudioRenderer<TT;>.AudioSinkListener;"
    iget-object v0, p0, Landroidx/media3/exoplayer/audio/DecoderAudioRenderer$AudioSinkListener;->this$0:Landroidx/media3/exoplayer/audio/DecoderAudioRenderer;

    invoke-virtual {v0}, Landroidx/media3/exoplayer/audio/DecoderAudioRenderer;->onPositionDiscontinuity()V

    .line 924
    return-void
.end method

.method public onSilenceSkipped()V
    .locals 2

    .line 928
    .local p0, "this":Landroidx/media3/exoplayer/audio/DecoderAudioRenderer$AudioSinkListener;, "Landroidx/media3/exoplayer/audio/DecoderAudioRenderer<TT;>.AudioSinkListener;"
    iget-object v0, p0, Landroidx/media3/exoplayer/audio/DecoderAudioRenderer$AudioSinkListener;->this$0:Landroidx/media3/exoplayer/audio/DecoderAudioRenderer;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Landroidx/media3/exoplayer/audio/DecoderAudioRenderer;->access$102(Landroidx/media3/exoplayer/audio/DecoderAudioRenderer;Z)Z

    .line 929
    return-void
.end method

.method public onSkipSilenceEnabledChanged(Z)V
    .locals 1
    .param p1, "skipSilenceEnabled"    # Z

    .line 944
    .local p0, "this":Landroidx/media3/exoplayer/audio/DecoderAudioRenderer$AudioSinkListener;, "Landroidx/media3/exoplayer/audio/DecoderAudioRenderer<TT;>.AudioSinkListener;"
    iget-object v0, p0, Landroidx/media3/exoplayer/audio/DecoderAudioRenderer$AudioSinkListener;->this$0:Landroidx/media3/exoplayer/audio/DecoderAudioRenderer;

    invoke-static {v0}, Landroidx/media3/exoplayer/audio/DecoderAudioRenderer;->access$300(Landroidx/media3/exoplayer/audio/DecoderAudioRenderer;)Landroidx/media3/exoplayer/audio/AudioRendererEventListener$EventDispatcher;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroidx/media3/exoplayer/audio/AudioRendererEventListener$EventDispatcher;->skipSilenceEnabledChanged(Z)V

    .line 945
    return-void
.end method

.method public onUnderrun(IJJ)V
    .locals 7
    .param p1, "bufferSize"    # I
    .param p2, "bufferSizeMs"    # J
    .param p4, "elapsedSinceLastFeedMs"    # J

    .line 939
    .local p0, "this":Landroidx/media3/exoplayer/audio/DecoderAudioRenderer$AudioSinkListener;, "Landroidx/media3/exoplayer/audio/DecoderAudioRenderer<TT;>.AudioSinkListener;"
    iget-object v0, p0, Landroidx/media3/exoplayer/audio/DecoderAudioRenderer$AudioSinkListener;->this$0:Landroidx/media3/exoplayer/audio/DecoderAudioRenderer;

    invoke-static {v0}, Landroidx/media3/exoplayer/audio/DecoderAudioRenderer;->access$300(Landroidx/media3/exoplayer/audio/DecoderAudioRenderer;)Landroidx/media3/exoplayer/audio/AudioRendererEventListener$EventDispatcher;

    move-result-object v1

    move v2, p1

    move-wide v3, p2

    move-wide v5, p4

    .end local p1    # "bufferSize":I
    .end local p2    # "bufferSizeMs":J
    .end local p4    # "elapsedSinceLastFeedMs":J
    .local v2, "bufferSize":I
    .local v3, "bufferSizeMs":J
    .local v5, "elapsedSinceLastFeedMs":J
    invoke-virtual/range {v1 .. v6}, Landroidx/media3/exoplayer/audio/AudioRendererEventListener$EventDispatcher;->underrun(IJJ)V

    .line 940
    return-void
.end method
