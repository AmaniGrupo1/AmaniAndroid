.class final Landroidx/media3/exoplayer/util/DebugTextViewHelper$Updater;
.super Ljava/lang/Object;
.source "DebugTextViewHelper.java"

# interfaces
.implements Landroidx/media3/common/Player$Listener;
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media3/exoplayer/util/DebugTextViewHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "Updater"
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/media3/exoplayer/util/DebugTextViewHelper;


# direct methods
.method private constructor <init>(Landroidx/media3/exoplayer/util/DebugTextViewHelper;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            null
        }
    .end annotation

    .line 216
    iput-object p1, p0, Landroidx/media3/exoplayer/util/DebugTextViewHelper$Updater;->this$0:Landroidx/media3/exoplayer/util/DebugTextViewHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroidx/media3/exoplayer/util/DebugTextViewHelper;Landroidx/media3/exoplayer/util/DebugTextViewHelper$1;)V
    .locals 0
    .param p1, "x0"    # Landroidx/media3/exoplayer/util/DebugTextViewHelper;
    .param p2, "x1"    # Landroidx/media3/exoplayer/util/DebugTextViewHelper$1;

    .line 216
    invoke-direct {p0, p1}, Landroidx/media3/exoplayer/util/DebugTextViewHelper$Updater;-><init>(Landroidx/media3/exoplayer/util/DebugTextViewHelper;)V

    return-void
.end method


# virtual methods
.method public onPlayWhenReadyChanged(ZI)V
    .locals 1
    .param p1, "playWhenReady"    # Z
    .param p2, "reason"    # I

    .line 228
    iget-object v0, p0, Landroidx/media3/exoplayer/util/DebugTextViewHelper$Updater;->this$0:Landroidx/media3/exoplayer/util/DebugTextViewHelper;

    invoke-virtual {v0}, Landroidx/media3/exoplayer/util/DebugTextViewHelper;->updateAndPost()V

    .line 229
    return-void
.end method

.method public onPlaybackStateChanged(I)V
    .locals 1
    .param p1, "playbackState"    # I

    .line 222
    iget-object v0, p0, Landroidx/media3/exoplayer/util/DebugTextViewHelper$Updater;->this$0:Landroidx/media3/exoplayer/util/DebugTextViewHelper;

    invoke-virtual {v0}, Landroidx/media3/exoplayer/util/DebugTextViewHelper;->updateAndPost()V

    .line 223
    return-void
.end method

.method public onPositionDiscontinuity(Landroidx/media3/common/Player$PositionInfo;Landroidx/media3/common/Player$PositionInfo;I)V
    .locals 1
    .param p1, "oldPosition"    # Landroidx/media3/common/Player$PositionInfo;
    .param p2, "newPosition"    # Landroidx/media3/common/Player$PositionInfo;
    .param p3, "reason"    # I

    .line 236
    iget-object v0, p0, Landroidx/media3/exoplayer/util/DebugTextViewHelper$Updater;->this$0:Landroidx/media3/exoplayer/util/DebugTextViewHelper;

    invoke-virtual {v0}, Landroidx/media3/exoplayer/util/DebugTextViewHelper;->updateAndPost()V

    .line 237
    return-void
.end method

.method public run()V
    .locals 1

    .line 243
    iget-object v0, p0, Landroidx/media3/exoplayer/util/DebugTextViewHelper$Updater;->this$0:Landroidx/media3/exoplayer/util/DebugTextViewHelper;

    invoke-virtual {v0}, Landroidx/media3/exoplayer/util/DebugTextViewHelper;->updateAndPost()V

    .line 244
    return-void
.end method
