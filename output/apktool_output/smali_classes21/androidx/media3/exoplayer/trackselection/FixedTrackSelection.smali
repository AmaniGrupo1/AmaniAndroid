.class public final Landroidx/media3/exoplayer/trackselection/FixedTrackSelection;
.super Landroidx/media3/exoplayer/trackselection/BaseTrackSelection;
.source "FixedTrackSelection.java"


# instance fields
.field private final data:Ljava/lang/Object;

.field private final reason:I


# direct methods
.method public constructor <init>(Landroidx/media3/common/TrackGroup;I)V
    .locals 1
    .param p1, "group"    # Landroidx/media3/common/TrackGroup;
    .param p2, "track"    # I

    .line 38
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroidx/media3/exoplayer/trackselection/FixedTrackSelection;-><init>(Landroidx/media3/common/TrackGroup;II)V

    .line 39
    return-void
.end method

.method public constructor <init>(Landroidx/media3/common/TrackGroup;II)V
    .locals 6
    .param p1, "group"    # Landroidx/media3/common/TrackGroup;
    .param p2, "track"    # I
    .param p3, "type"    # I

    .line 47
    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    .end local p1    # "group":Landroidx/media3/common/TrackGroup;
    .end local p2    # "track":I
    .end local p3    # "type":I
    .local v1, "group":Landroidx/media3/common/TrackGroup;
    .local v2, "track":I
    .local v3, "type":I
    invoke-direct/range {v0 .. v5}, Landroidx/media3/exoplayer/trackselection/FixedTrackSelection;-><init>(Landroidx/media3/common/TrackGroup;IIILjava/lang/Object;)V

    .line 48
    return-void
.end method

.method public constructor <init>(Landroidx/media3/common/TrackGroup;IIILjava/lang/Object;)V
    .locals 1
    .param p1, "group"    # Landroidx/media3/common/TrackGroup;
    .param p2, "track"    # I
    .param p3, "type"    # I
    .param p4, "reason"    # I
    .param p5, "data"    # Ljava/lang/Object;

    .line 63
    filled-new-array {p2}, [I

    move-result-object v0

    invoke-direct {p0, p1, v0, p3}, Landroidx/media3/exoplayer/trackselection/BaseTrackSelection;-><init>(Landroidx/media3/common/TrackGroup;[II)V

    .line 64
    iput p4, p0, Landroidx/media3/exoplayer/trackselection/FixedTrackSelection;->reason:I

    .line 65
    iput-object p5, p0, Landroidx/media3/exoplayer/trackselection/FixedTrackSelection;->data:Ljava/lang/Object;

    .line 66
    return-void
.end method


# virtual methods
.method public getSelectedIndex()I
    .locals 1

    .line 80
    const/4 v0, 0x0

    return v0
.end method

.method public getSelectionData()Ljava/lang/Object;
    .locals 1

    .line 91
    iget-object v0, p0, Landroidx/media3/exoplayer/trackselection/FixedTrackSelection;->data:Ljava/lang/Object;

    return-object v0
.end method

.method public getSelectionReason()I
    .locals 1

    .line 85
    iget v0, p0, Landroidx/media3/exoplayer/trackselection/FixedTrackSelection;->reason:I

    return v0
.end method

.method public updateSelectedTrack(JJJLjava/util/List;[Landroidx/media3/exoplayer/source/chunk/MediaChunkIterator;)V
    .locals 0
    .param p1, "playbackPositionUs"    # J
    .param p3, "bufferedDurationUs"    # J
    .param p5, "availableDurationUs"    # J
    .param p8, "mediaChunkIterators"    # [Landroidx/media3/exoplayer/source/chunk/MediaChunkIterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJJ",
            "Ljava/util/List<",
            "+",
            "Landroidx/media3/exoplayer/source/chunk/MediaChunk;",
            ">;[",
            "Landroidx/media3/exoplayer/source/chunk/MediaChunkIterator;",
            ")V"
        }
    .end annotation

    .line 76
    .local p7, "queue":Ljava/util/List;, "Ljava/util/List<+Landroidx/media3/exoplayer/source/chunk/MediaChunk;>;"
    return-void
.end method
