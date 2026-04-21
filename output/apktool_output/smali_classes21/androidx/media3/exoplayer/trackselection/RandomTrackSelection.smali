.class public final Landroidx/media3/exoplayer/trackselection/RandomTrackSelection;
.super Landroidx/media3/exoplayer/trackselection/BaseTrackSelection;
.source "RandomTrackSelection.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media3/exoplayer/trackselection/RandomTrackSelection$Factory;
    }
.end annotation


# instance fields
.field private final random:Ljava/util/Random;

.field private selectedIndex:I


# direct methods
.method public constructor <init>(Landroidx/media3/common/TrackGroup;[IILjava/util/Random;)V
    .locals 1
    .param p1, "group"    # Landroidx/media3/common/TrackGroup;
    .param p2, "tracks"    # [I
    .param p3, "type"    # I
    .param p4, "random"    # Ljava/util/Random;

    .line 80
    invoke-direct {p0, p1, p2, p3}, Landroidx/media3/exoplayer/trackselection/BaseTrackSelection;-><init>(Landroidx/media3/common/TrackGroup;[II)V

    .line 81
    iput-object p4, p0, Landroidx/media3/exoplayer/trackselection/RandomTrackSelection;->random:Ljava/util/Random;

    .line 82
    iget v0, p0, Landroidx/media3/exoplayer/trackselection/RandomTrackSelection;->length:I

    invoke-virtual {p4, v0}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    iput v0, p0, Landroidx/media3/exoplayer/trackselection/RandomTrackSelection;->selectedIndex:I

    .line 83
    return-void
.end method


# virtual methods
.method public getSelectedIndex()I
    .locals 1

    .line 116
    iget v0, p0, Landroidx/media3/exoplayer/trackselection/RandomTrackSelection;->selectedIndex:I

    return v0
.end method

.method public getSelectionData()Ljava/lang/Object;
    .locals 1

    .line 127
    const/4 v0, 0x0

    return-object v0
.end method

.method public getSelectionReason()I
    .locals 1

    .line 121
    const/4 v0, 0x3

    return v0
.end method

.method public updateSelectedTrack(JJJLjava/util/List;[Landroidx/media3/exoplayer/source/chunk/MediaChunkIterator;)V
    .locals 6
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

    .line 93
    .local p7, "queue":Ljava/util/List;, "Ljava/util/List<+Landroidx/media3/exoplayer/source/chunk/MediaChunk;>;"
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 94
    .local v0, "nowMs":J
    const/4 v2, 0x0

    .line 95
    .local v2, "allowedFormatCount":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    iget v4, p0, Landroidx/media3/exoplayer/trackselection/RandomTrackSelection;->length:I

    if-ge v3, v4, :cond_1

    .line 96
    invoke-virtual {p0, v3, v0, v1}, Landroidx/media3/exoplayer/trackselection/RandomTrackSelection;->isTrackExcluded(IJ)Z

    move-result v4

    if-nez v4, :cond_0

    .line 97
    add-int/lit8 v2, v2, 0x1

    .line 95
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 101
    .end local v3    # "i":I
    :cond_1
    iget-object v3, p0, Landroidx/media3/exoplayer/trackselection/RandomTrackSelection;->random:Ljava/util/Random;

    invoke-virtual {v3, v2}, Ljava/util/Random;->nextInt(I)I

    move-result v3

    iput v3, p0, Landroidx/media3/exoplayer/trackselection/RandomTrackSelection;->selectedIndex:I

    .line 102
    iget v3, p0, Landroidx/media3/exoplayer/trackselection/RandomTrackSelection;->length:I

    if-eq v2, v3, :cond_4

    .line 104
    const/4 v2, 0x0

    .line 105
    const/4 v3, 0x0

    .restart local v3    # "i":I
    :goto_1
    iget v4, p0, Landroidx/media3/exoplayer/trackselection/RandomTrackSelection;->length:I

    if-ge v3, v4, :cond_4

    .line 106
    invoke-virtual {p0, v3, v0, v1}, Landroidx/media3/exoplayer/trackselection/RandomTrackSelection;->isTrackExcluded(IJ)Z

    move-result v4

    if-nez v4, :cond_3

    iget v4, p0, Landroidx/media3/exoplayer/trackselection/RandomTrackSelection;->selectedIndex:I

    add-int/lit8 v5, v2, 0x1

    .end local v2    # "allowedFormatCount":I
    .local v5, "allowedFormatCount":I
    if-ne v4, v2, :cond_2

    .line 107
    iput v3, p0, Landroidx/media3/exoplayer/trackselection/RandomTrackSelection;->selectedIndex:I

    .line 108
    return-void

    .line 106
    :cond_2
    move v2, v5

    .line 105
    .end local v5    # "allowedFormatCount":I
    .restart local v2    # "allowedFormatCount":I
    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 112
    .end local v3    # "i":I
    :cond_4
    return-void
.end method
