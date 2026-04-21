.class final Landroidx/media3/exoplayer/video/PlaybackVideoGraphWrapper$DefaultVideoSinkListener;
.super Ljava/lang/Object;
.source "PlaybackVideoGraphWrapper.java"

# interfaces
.implements Landroidx/media3/exoplayer/video/VideoSink$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media3/exoplayer/video/PlaybackVideoGraphWrapper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "DefaultVideoSinkListener"
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/media3/exoplayer/video/PlaybackVideoGraphWrapper;


# direct methods
.method private constructor <init>(Landroidx/media3/exoplayer/video/PlaybackVideoGraphWrapper;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            null
        }
    .end annotation

    .line 1171
    iput-object p1, p0, Landroidx/media3/exoplayer/video/PlaybackVideoGraphWrapper$DefaultVideoSinkListener;->this$0:Landroidx/media3/exoplayer/video/PlaybackVideoGraphWrapper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroidx/media3/exoplayer/video/PlaybackVideoGraphWrapper;Landroidx/media3/exoplayer/video/PlaybackVideoGraphWrapper$1;)V
    .locals 0
    .param p1, "x0"    # Landroidx/media3/exoplayer/video/PlaybackVideoGraphWrapper;
    .param p2, "x1"    # Landroidx/media3/exoplayer/video/PlaybackVideoGraphWrapper$1;

    .line 1171
    invoke-direct {p0, p1}, Landroidx/media3/exoplayer/video/PlaybackVideoGraphWrapper$DefaultVideoSinkListener;-><init>(Landroidx/media3/exoplayer/video/PlaybackVideoGraphWrapper;)V

    return-void
.end method


# virtual methods
.method public onError(Landroidx/media3/exoplayer/video/VideoSink$VideoSinkException;)V
    .locals 3
    .param p1, "videoSinkException"    # Landroidx/media3/exoplayer/video/VideoSink$VideoSinkException;

    .line 1196
    iget-object v0, p0, Landroidx/media3/exoplayer/video/PlaybackVideoGraphWrapper$DefaultVideoSinkListener;->this$0:Landroidx/media3/exoplayer/video/PlaybackVideoGraphWrapper;

    invoke-static {v0}, Landroidx/media3/exoplayer/video/PlaybackVideoGraphWrapper;->access$3100(Landroidx/media3/exoplayer/video/PlaybackVideoGraphWrapper;)Ljava/util/concurrent/CopyOnWriteArraySet;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/media3/exoplayer/video/PlaybackVideoGraphWrapper$Listener;

    .line 1197
    .local v1, "listener":Landroidx/media3/exoplayer/video/PlaybackVideoGraphWrapper$Listener;
    invoke-static {p1}, Landroidx/media3/common/VideoFrameProcessingException;->from(Ljava/lang/Exception;)Landroidx/media3/common/VideoFrameProcessingException;

    move-result-object v2

    invoke-interface {v1, v2}, Landroidx/media3/exoplayer/video/PlaybackVideoGraphWrapper$Listener;->onError(Landroidx/media3/common/VideoFrameProcessingException;)V

    .line 1198
    .end local v1    # "listener":Landroidx/media3/exoplayer/video/PlaybackVideoGraphWrapper$Listener;
    goto :goto_0

    .line 1199
    :cond_0
    return-void
.end method

.method public onFirstFrameRendered()V
    .locals 2

    .line 1175
    iget-object v0, p0, Landroidx/media3/exoplayer/video/PlaybackVideoGraphWrapper$DefaultVideoSinkListener;->this$0:Landroidx/media3/exoplayer/video/PlaybackVideoGraphWrapper;

    invoke-static {v0}, Landroidx/media3/exoplayer/video/PlaybackVideoGraphWrapper;->access$3100(Landroidx/media3/exoplayer/video/PlaybackVideoGraphWrapper;)Ljava/util/concurrent/CopyOnWriteArraySet;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/media3/exoplayer/video/PlaybackVideoGraphWrapper$Listener;

    .line 1176
    .local v1, "listener":Landroidx/media3/exoplayer/video/PlaybackVideoGraphWrapper$Listener;
    invoke-interface {v1}, Landroidx/media3/exoplayer/video/PlaybackVideoGraphWrapper$Listener;->onFirstFrameRendered()V

    .line 1177
    .end local v1    # "listener":Landroidx/media3/exoplayer/video/PlaybackVideoGraphWrapper$Listener;
    goto :goto_0

    .line 1178
    :cond_0
    return-void
.end method

.method public onFrameDropped()V
    .locals 2

    .line 1182
    iget-object v0, p0, Landroidx/media3/exoplayer/video/PlaybackVideoGraphWrapper$DefaultVideoSinkListener;->this$0:Landroidx/media3/exoplayer/video/PlaybackVideoGraphWrapper;

    invoke-static {v0}, Landroidx/media3/exoplayer/video/PlaybackVideoGraphWrapper;->access$3100(Landroidx/media3/exoplayer/video/PlaybackVideoGraphWrapper;)Ljava/util/concurrent/CopyOnWriteArraySet;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/media3/exoplayer/video/PlaybackVideoGraphWrapper$Listener;

    .line 1183
    .local v1, "listener":Landroidx/media3/exoplayer/video/PlaybackVideoGraphWrapper$Listener;
    invoke-interface {v1}, Landroidx/media3/exoplayer/video/PlaybackVideoGraphWrapper$Listener;->onFrameDropped()V

    .line 1184
    .end local v1    # "listener":Landroidx/media3/exoplayer/video/PlaybackVideoGraphWrapper$Listener;
    goto :goto_0

    .line 1185
    :cond_0
    return-void
.end method

.method public onVideoSizeChanged(Landroidx/media3/common/VideoSize;)V
    .locals 2
    .param p1, "videoSize"    # Landroidx/media3/common/VideoSize;

    .line 1189
    iget-object v0, p0, Landroidx/media3/exoplayer/video/PlaybackVideoGraphWrapper$DefaultVideoSinkListener;->this$0:Landroidx/media3/exoplayer/video/PlaybackVideoGraphWrapper;

    invoke-static {v0}, Landroidx/media3/exoplayer/video/PlaybackVideoGraphWrapper;->access$3100(Landroidx/media3/exoplayer/video/PlaybackVideoGraphWrapper;)Ljava/util/concurrent/CopyOnWriteArraySet;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/media3/exoplayer/video/PlaybackVideoGraphWrapper$Listener;

    .line 1190
    .local v1, "listener":Landroidx/media3/exoplayer/video/PlaybackVideoGraphWrapper$Listener;
    invoke-interface {v1, p1}, Landroidx/media3/exoplayer/video/PlaybackVideoGraphWrapper$Listener;->onVideoSizeChanged(Landroidx/media3/common/VideoSize;)V

    .line 1191
    .end local v1    # "listener":Landroidx/media3/exoplayer/video/PlaybackVideoGraphWrapper$Listener;
    goto :goto_0

    .line 1192
    :cond_0
    return-void
.end method
