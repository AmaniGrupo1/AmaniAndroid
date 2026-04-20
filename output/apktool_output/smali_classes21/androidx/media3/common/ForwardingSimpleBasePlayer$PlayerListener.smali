.class Landroidx/media3/common/ForwardingSimpleBasePlayer$PlayerListener;
.super Ljava/lang/Object;
.source "ForwardingSimpleBasePlayer.java"

# interfaces
.implements Landroidx/media3/common/Player$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media3/common/ForwardingSimpleBasePlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PlayerListener"
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/media3/common/ForwardingSimpleBasePlayer;


# direct methods
.method private constructor <init>(Landroidx/media3/common/ForwardingSimpleBasePlayer;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            null
        }
    .end annotation

    .line 500
    iput-object p1, p0, Landroidx/media3/common/ForwardingSimpleBasePlayer$PlayerListener;->this$0:Landroidx/media3/common/ForwardingSimpleBasePlayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroidx/media3/common/ForwardingSimpleBasePlayer;Landroidx/media3/common/ForwardingSimpleBasePlayer$1;)V
    .locals 0
    .param p1, "x0"    # Landroidx/media3/common/ForwardingSimpleBasePlayer;
    .param p2, "x1"    # Landroidx/media3/common/ForwardingSimpleBasePlayer$1;

    .line 500
    invoke-direct {p0, p1}, Landroidx/media3/common/ForwardingSimpleBasePlayer$PlayerListener;-><init>(Landroidx/media3/common/ForwardingSimpleBasePlayer;)V

    return-void
.end method


# virtual methods
.method public onEvents(Landroidx/media3/common/Player;Landroidx/media3/common/Player$Events;)V
    .locals 1
    .param p1, "player"    # Landroidx/media3/common/Player;
    .param p2, "events"    # Landroidx/media3/common/Player$Events;

    .line 531
    iget-object v0, p0, Landroidx/media3/common/ForwardingSimpleBasePlayer$PlayerListener;->this$0:Landroidx/media3/common/ForwardingSimpleBasePlayer;

    invoke-virtual {v0}, Landroidx/media3/common/ForwardingSimpleBasePlayer;->invalidateState()V

    .line 532
    return-void
.end method

.method public onMetadata(Landroidx/media3/common/Metadata;)V
    .locals 1
    .param p1, "metadata"    # Landroidx/media3/common/Metadata;

    .line 503
    iget-object v0, p0, Landroidx/media3/common/ForwardingSimpleBasePlayer$PlayerListener;->this$0:Landroidx/media3/common/ForwardingSimpleBasePlayer;

    invoke-static {v0, p1}, Landroidx/media3/common/ForwardingSimpleBasePlayer;->access$102(Landroidx/media3/common/ForwardingSimpleBasePlayer;Landroidx/media3/common/Metadata;)Landroidx/media3/common/Metadata;

    .line 504
    return-void
.end method

.method public onPlayWhenReadyChanged(ZI)V
    .locals 1
    .param p1, "playWhenReady"    # Z
    .param p2, "reason"    # I

    .line 509
    iget-object v0, p0, Landroidx/media3/common/ForwardingSimpleBasePlayer$PlayerListener;->this$0:Landroidx/media3/common/ForwardingSimpleBasePlayer;

    invoke-static {v0, p2}, Landroidx/media3/common/ForwardingSimpleBasePlayer;->access$202(Landroidx/media3/common/ForwardingSimpleBasePlayer;I)I

    .line 510
    return-void
.end method

.method public onPositionDiscontinuity(Landroidx/media3/common/Player$PositionInfo;Landroidx/media3/common/Player$PositionInfo;I)V
    .locals 5
    .param p1, "oldPosition"    # Landroidx/media3/common/Player$PositionInfo;
    .param p2, "newPosition"    # Landroidx/media3/common/Player$PositionInfo;
    .param p3, "reason"    # I

    .line 517
    iget-object v0, p0, Landroidx/media3/common/ForwardingSimpleBasePlayer$PlayerListener;->this$0:Landroidx/media3/common/ForwardingSimpleBasePlayer;

    invoke-static {v0, p3}, Landroidx/media3/common/ForwardingSimpleBasePlayer;->access$302(Landroidx/media3/common/ForwardingSimpleBasePlayer;I)I

    .line 518
    iget-object v0, p0, Landroidx/media3/common/ForwardingSimpleBasePlayer$PlayerListener;->this$0:Landroidx/media3/common/ForwardingSimpleBasePlayer;

    iget-wide v1, p2, Landroidx/media3/common/Player$PositionInfo;->positionMs:J

    invoke-static {v0, v1, v2}, Landroidx/media3/common/ForwardingSimpleBasePlayer;->access$402(Landroidx/media3/common/ForwardingSimpleBasePlayer;J)J

    .line 519
    iget-object v0, p0, Landroidx/media3/common/ForwardingSimpleBasePlayer$PlayerListener;->this$0:Landroidx/media3/common/ForwardingSimpleBasePlayer;

    invoke-static {v0}, Landroidx/media3/common/ForwardingSimpleBasePlayer;->access$500(Landroidx/media3/common/ForwardingSimpleBasePlayer;)Landroidx/media3/common/ForwardingSimpleBasePlayer$LivePositionSuppliers;

    move-result-object v0

    iget-wide v1, p1, Landroidx/media3/common/Player$PositionInfo;->positionMs:J

    iget-wide v3, p1, Landroidx/media3/common/Player$PositionInfo;->contentPositionMs:J

    invoke-virtual {v0, v1, v2, v3, v4}, Landroidx/media3/common/ForwardingSimpleBasePlayer$LivePositionSuppliers;->disconnect(JJ)V

    .line 520
    iget-object v0, p0, Landroidx/media3/common/ForwardingSimpleBasePlayer$PlayerListener;->this$0:Landroidx/media3/common/ForwardingSimpleBasePlayer;

    new-instance v1, Landroidx/media3/common/ForwardingSimpleBasePlayer$LivePositionSuppliers;

    iget-object v2, p0, Landroidx/media3/common/ForwardingSimpleBasePlayer$PlayerListener;->this$0:Landroidx/media3/common/ForwardingSimpleBasePlayer;

    invoke-static {v2}, Landroidx/media3/common/ForwardingSimpleBasePlayer;->access$600(Landroidx/media3/common/ForwardingSimpleBasePlayer;)Landroidx/media3/common/Player;

    move-result-object v2

    invoke-direct {v1, v2}, Landroidx/media3/common/ForwardingSimpleBasePlayer$LivePositionSuppliers;-><init>(Landroidx/media3/common/Player;)V

    invoke-static {v0, v1}, Landroidx/media3/common/ForwardingSimpleBasePlayer;->access$502(Landroidx/media3/common/ForwardingSimpleBasePlayer;Landroidx/media3/common/ForwardingSimpleBasePlayer$LivePositionSuppliers;)Landroidx/media3/common/ForwardingSimpleBasePlayer$LivePositionSuppliers;

    .line 521
    return-void
.end method

.method public onRenderedFirstFrame()V
    .locals 2

    .line 525
    iget-object v0, p0, Landroidx/media3/common/ForwardingSimpleBasePlayer$PlayerListener;->this$0:Landroidx/media3/common/ForwardingSimpleBasePlayer;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Landroidx/media3/common/ForwardingSimpleBasePlayer;->access$702(Landroidx/media3/common/ForwardingSimpleBasePlayer;Z)Z

    .line 526
    return-void
.end method
