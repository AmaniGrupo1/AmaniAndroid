.class Landroidx/media3/exoplayer/drm/DefaultDrmSession$ResponseHandler;
.super Landroid/os/Handler;
.source "DefaultDrmSession.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media3/exoplayer/drm/DefaultDrmSession;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ResponseHandler"
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/media3/exoplayer/drm/DefaultDrmSession;


# direct methods
.method public constructor <init>(Landroidx/media3/exoplayer/drm/DefaultDrmSession;Landroid/os/Looper;)V
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

    .line 634
    iput-object p1, p0, Landroidx/media3/exoplayer/drm/DefaultDrmSession$ResponseHandler;->this$0:Landroidx/media3/exoplayer/drm/DefaultDrmSession;

    .line 635
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 636
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    .line 641
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/util/Pair;

    .line 642
    .local v0, "requestAndResponse":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Object;Ljava/lang/Object;>;"
    iget-object v1, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 643
    .local v1, "request":Ljava/lang/Object;
    iget-object v2, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 644
    .local v2, "response":Ljava/lang/Object;
    iget v3, p1, Landroid/os/Message;->what:I

    packed-switch v3, :pswitch_data_0

    goto :goto_0

    .line 649
    :pswitch_0
    iget-object v3, p0, Landroidx/media3/exoplayer/drm/DefaultDrmSession$ResponseHandler;->this$0:Landroidx/media3/exoplayer/drm/DefaultDrmSession;

    invoke-static {v3, v1, v2}, Landroidx/media3/exoplayer/drm/DefaultDrmSession;->access$100(Landroidx/media3/exoplayer/drm/DefaultDrmSession;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 650
    goto :goto_0

    .line 646
    :pswitch_1
    iget-object v3, p0, Landroidx/media3/exoplayer/drm/DefaultDrmSession$ResponseHandler;->this$0:Landroidx/media3/exoplayer/drm/DefaultDrmSession;

    invoke-static {v3, v1, v2}, Landroidx/media3/exoplayer/drm/DefaultDrmSession;->access$000(Landroidx/media3/exoplayer/drm/DefaultDrmSession;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 647
    nop

    .line 654
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
