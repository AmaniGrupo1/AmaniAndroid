.class public final Landroidx/media3/exoplayer/source/TimelineWithUpdatedMediaItem;
.super Landroidx/media3/exoplayer/source/ForwardingTimeline;
.source "TimelineWithUpdatedMediaItem.java"


# instance fields
.field private final updatedMediaItem:Landroidx/media3/common/MediaItem;


# direct methods
.method private constructor <init>(Landroidx/media3/common/Timeline;Landroidx/media3/common/MediaItem;)V
    .locals 0
    .param p1, "timeline"    # Landroidx/media3/common/Timeline;
    .param p2, "mediaItem"    # Landroidx/media3/common/MediaItem;

    .line 45
    invoke-direct {p0, p1}, Landroidx/media3/exoplayer/source/ForwardingTimeline;-><init>(Landroidx/media3/common/Timeline;)V

    .line 46
    iput-object p2, p0, Landroidx/media3/exoplayer/source/TimelineWithUpdatedMediaItem;->updatedMediaItem:Landroidx/media3/common/MediaItem;

    .line 47
    return-void
.end method

.method public static create(Landroidx/media3/common/Timeline;Landroidx/media3/common/MediaItem;)Landroidx/media3/exoplayer/source/TimelineWithUpdatedMediaItem;
    .locals 2
    .param p0, "timeline"    # Landroidx/media3/common/Timeline;
    .param p1, "mediaItem"    # Landroidx/media3/common/MediaItem;

    .line 35
    instance-of v0, p0, Landroidx/media3/exoplayer/source/TimelineWithUpdatedMediaItem;

    if-eqz v0, :cond_0

    .line 38
    new-instance v0, Landroidx/media3/exoplayer/source/TimelineWithUpdatedMediaItem;

    move-object v1, p0

    check-cast v1, Landroidx/media3/exoplayer/source/TimelineWithUpdatedMediaItem;

    iget-object v1, v1, Landroidx/media3/exoplayer/source/TimelineWithUpdatedMediaItem;->timeline:Landroidx/media3/common/Timeline;

    invoke-direct {v0, v1, p1}, Landroidx/media3/exoplayer/source/TimelineWithUpdatedMediaItem;-><init>(Landroidx/media3/common/Timeline;Landroidx/media3/common/MediaItem;)V

    return-object v0

    .line 41
    :cond_0
    new-instance v0, Landroidx/media3/exoplayer/source/TimelineWithUpdatedMediaItem;

    invoke-direct {v0, p0, p1}, Landroidx/media3/exoplayer/source/TimelineWithUpdatedMediaItem;-><init>(Landroidx/media3/common/Timeline;Landroidx/media3/common/MediaItem;)V

    return-object v0
.end method


# virtual methods
.method public getWindow(ILandroidx/media3/common/Timeline$Window;J)Landroidx/media3/common/Timeline$Window;
    .locals 1
    .param p1, "windowIndex"    # I
    .param p2, "window"    # Landroidx/media3/common/Timeline$Window;
    .param p3, "defaultPositionProjectionUs"    # J

    .line 52
    invoke-super {p0, p1, p2, p3, p4}, Landroidx/media3/exoplayer/source/ForwardingTimeline;->getWindow(ILandroidx/media3/common/Timeline$Window;J)Landroidx/media3/common/Timeline$Window;

    .line 53
    iget-object v0, p0, Landroidx/media3/exoplayer/source/TimelineWithUpdatedMediaItem;->updatedMediaItem:Landroidx/media3/common/MediaItem;

    iput-object v0, p2, Landroidx/media3/common/Timeline$Window;->mediaItem:Landroidx/media3/common/MediaItem;

    .line 54
    nop

    .line 55
    iget-object v0, p0, Landroidx/media3/exoplayer/source/TimelineWithUpdatedMediaItem;->updatedMediaItem:Landroidx/media3/common/MediaItem;

    iget-object v0, v0, Landroidx/media3/common/MediaItem;->localConfiguration:Landroidx/media3/common/MediaItem$LocalConfiguration;

    if-eqz v0, :cond_0

    .line 56
    iget-object v0, p0, Landroidx/media3/exoplayer/source/TimelineWithUpdatedMediaItem;->updatedMediaItem:Landroidx/media3/common/MediaItem;

    iget-object v0, v0, Landroidx/media3/common/MediaItem;->localConfiguration:Landroidx/media3/common/MediaItem$LocalConfiguration;

    iget-object v0, v0, Landroidx/media3/common/MediaItem$LocalConfiguration;->tag:Ljava/lang/Object;

    goto :goto_0

    .line 57
    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-object v0, p2, Landroidx/media3/common/Timeline$Window;->tag:Ljava/lang/Object;

    .line 58
    return-object p2
.end method
