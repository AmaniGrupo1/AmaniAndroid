.class Landroidx/media3/exoplayer/drm/DefaultDrmSessionManager$MediaDrmHandler;
.super Landroid/os/Handler;
.source "DefaultDrmSessionManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media3/exoplayer/drm/DefaultDrmSessionManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MediaDrmHandler"
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/media3/exoplayer/drm/DefaultDrmSessionManager;


# direct methods
.method public constructor <init>(Landroidx/media3/exoplayer/drm/DefaultDrmSessionManager;Landroid/os/Looper;)V
    .locals 0
    .param p2, "looper"    # Landroid/os/Looper;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x0
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 797
    iput-object p1, p0, Landroidx/media3/exoplayer/drm/DefaultDrmSessionManager$MediaDrmHandler;->this$0:Landroidx/media3/exoplayer/drm/DefaultDrmSessionManager;

    .line 798
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 799
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    .line 803
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, [B

    .line 804
    .local v0, "sessionId":[B
    if-nez v0, :cond_0

    .line 806
    return-void

    .line 808
    :cond_0
    iget-object v1, p0, Landroidx/media3/exoplayer/drm/DefaultDrmSessionManager$MediaDrmHandler;->this$0:Landroidx/media3/exoplayer/drm/DefaultDrmSessionManager;

    invoke-static {v1}, Landroidx/media3/exoplayer/drm/DefaultDrmSessionManager;->access$400(Landroidx/media3/exoplayer/drm/DefaultDrmSessionManager;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/media3/exoplayer/drm/DefaultDrmSession;

    .line 809
    .local v2, "session":Landroidx/media3/exoplayer/drm/DefaultDrmSession;
    invoke-virtual {v2, v0}, Landroidx/media3/exoplayer/drm/DefaultDrmSession;->hasSessionId([B)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 810
    iget v1, p1, Landroid/os/Message;->what:I

    invoke-virtual {v2, v1}, Landroidx/media3/exoplayer/drm/DefaultDrmSession;->onMediaDrmEvent(I)V

    .line 811
    return-void

    .line 813
    .end local v2    # "session":Landroidx/media3/exoplayer/drm/DefaultDrmSession;
    :cond_1
    goto :goto_0

    .line 814
    :cond_2
    return-void
.end method
