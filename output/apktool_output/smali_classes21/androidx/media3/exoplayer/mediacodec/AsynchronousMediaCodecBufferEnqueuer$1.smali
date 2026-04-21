.class Landroidx/media3/exoplayer/mediacodec/AsynchronousMediaCodecBufferEnqueuer$1;
.super Landroid/os/Handler;
.source "AsynchronousMediaCodecBufferEnqueuer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/media3/exoplayer/mediacodec/AsynchronousMediaCodecBufferEnqueuer;->start()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/media3/exoplayer/mediacodec/AsynchronousMediaCodecBufferEnqueuer;


# direct methods
.method constructor <init>(Landroidx/media3/exoplayer/mediacodec/AsynchronousMediaCodecBufferEnqueuer;Landroid/os/Looper;)V
    .locals 0
    .param p1, "this$0"    # Landroidx/media3/exoplayer/mediacodec/AsynchronousMediaCodecBufferEnqueuer;
    .param p2, "arg0"    # Landroid/os/Looper;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 86
    iput-object p1, p0, Landroidx/media3/exoplayer/mediacodec/AsynchronousMediaCodecBufferEnqueuer$1;->this$0:Landroidx/media3/exoplayer/mediacodec/AsynchronousMediaCodecBufferEnqueuer;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .param p1, "msg"    # Landroid/os/Message;

    .line 89
    iget-object v0, p0, Landroidx/media3/exoplayer/mediacodec/AsynchronousMediaCodecBufferEnqueuer$1;->this$0:Landroidx/media3/exoplayer/mediacodec/AsynchronousMediaCodecBufferEnqueuer;

    invoke-static {v0, p1}, Landroidx/media3/exoplayer/mediacodec/AsynchronousMediaCodecBufferEnqueuer;->access$000(Landroidx/media3/exoplayer/mediacodec/AsynchronousMediaCodecBufferEnqueuer;Landroid/os/Message;)V

    .line 90
    return-void
.end method
