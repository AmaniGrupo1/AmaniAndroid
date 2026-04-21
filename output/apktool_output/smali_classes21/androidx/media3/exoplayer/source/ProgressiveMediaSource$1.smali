.class Landroidx/media3/exoplayer/source/ProgressiveMediaSource$1;
.super Landroidx/media3/exoplayer/source/ForwardingTimeline;
.source "ProgressiveMediaSource.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/media3/exoplayer/source/ProgressiveMediaSource;->notifySourceInfoRefreshed()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/media3/exoplayer/source/ProgressiveMediaSource;


# direct methods
.method constructor <init>(Landroidx/media3/exoplayer/source/ProgressiveMediaSource;Landroidx/media3/common/Timeline;)V
    .locals 0
    .param p1, "this$0"    # Landroidx/media3/exoplayer/source/ProgressiveMediaSource;
    .param p2, "timeline"    # Landroidx/media3/common/Timeline;
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

    .line 520
    iput-object p1, p0, Landroidx/media3/exoplayer/source/ProgressiveMediaSource$1;->this$0:Landroidx/media3/exoplayer/source/ProgressiveMediaSource;

    invoke-direct {p0, p2}, Landroidx/media3/exoplayer/source/ForwardingTimeline;-><init>(Landroidx/media3/common/Timeline;)V

    return-void
.end method


# virtual methods
.method public getPeriod(ILandroidx/media3/common/Timeline$Period;Z)Landroidx/media3/common/Timeline$Period;
    .locals 1
    .param p1, "periodIndex"    # I
    .param p2, "period"    # Landroidx/media3/common/Timeline$Period;
    .param p3, "setIds"    # Z

    .line 531
    invoke-super {p0, p1, p2, p3}, Landroidx/media3/exoplayer/source/ForwardingTimeline;->getPeriod(ILandroidx/media3/common/Timeline$Period;Z)Landroidx/media3/common/Timeline$Period;

    .line 532
    const/4 v0, 0x1

    iput-boolean v0, p2, Landroidx/media3/common/Timeline$Period;->isPlaceholder:Z

    .line 533
    return-object p2
.end method

.method public getWindow(ILandroidx/media3/common/Timeline$Window;J)Landroidx/media3/common/Timeline$Window;
    .locals 1
    .param p1, "windowIndex"    # I
    .param p2, "window"    # Landroidx/media3/common/Timeline$Window;
    .param p3, "defaultPositionProjectionUs"    # J

    .line 524
    invoke-super {p0, p1, p2, p3, p4}, Landroidx/media3/exoplayer/source/ForwardingTimeline;->getWindow(ILandroidx/media3/common/Timeline$Window;J)Landroidx/media3/common/Timeline$Window;

    .line 525
    const/4 v0, 0x1

    iput-boolean v0, p2, Landroidx/media3/common/Timeline$Window;->isPlaceholder:Z

    .line 526
    return-object p2
.end method
