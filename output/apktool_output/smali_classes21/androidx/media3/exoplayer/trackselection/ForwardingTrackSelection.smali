.class public Landroidx/media3/exoplayer/trackselection/ForwardingTrackSelection;
.super Ljava/lang/Object;
.source "ForwardingTrackSelection.java"

# interfaces
.implements Landroidx/media3/exoplayer/trackselection/ExoTrackSelection;


# instance fields
.field private final trackSelection:Landroidx/media3/exoplayer/trackselection/ExoTrackSelection;


# direct methods
.method public constructor <init>(Landroidx/media3/exoplayer/trackselection/ExoTrackSelection;)V
    .locals 0
    .param p1, "trackSelection"    # Landroidx/media3/exoplayer/trackselection/ExoTrackSelection;

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput-object p1, p0, Landroidx/media3/exoplayer/trackselection/ForwardingTrackSelection;->trackSelection:Landroidx/media3/exoplayer/trackselection/ExoTrackSelection;

    .line 40
    return-void
.end method


# virtual methods
.method public disable()V
    .locals 1

    .line 54
    iget-object v0, p0, Landroidx/media3/exoplayer/trackselection/ForwardingTrackSelection;->trackSelection:Landroidx/media3/exoplayer/trackselection/ExoTrackSelection;

    invoke-interface {v0}, Landroidx/media3/exoplayer/trackselection/ExoTrackSelection;->disable()V

    .line 55
    return-void
.end method

.method public enable()V
    .locals 1

    .line 49
    iget-object v0, p0, Landroidx/media3/exoplayer/trackselection/ForwardingTrackSelection;->trackSelection:Landroidx/media3/exoplayer/trackselection/ExoTrackSelection;

    invoke-interface {v0}, Landroidx/media3/exoplayer/trackselection/ExoTrackSelection;->enable()V

    .line 50
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "obj"    # Ljava/lang/Object;

    .line 182
    if-ne p0, p1, :cond_0

    .line 183
    const/4 v0, 0x1

    return v0

    .line 185
    :cond_0
    instance-of v0, p1, Landroidx/media3/exoplayer/trackselection/ForwardingTrackSelection;

    if-nez v0, :cond_1

    .line 186
    const/4 v0, 0x0

    return v0

    .line 188
    :cond_1
    move-object v0, p1

    check-cast v0, Landroidx/media3/exoplayer/trackselection/ForwardingTrackSelection;

    .line 189
    .local v0, "other":Landroidx/media3/exoplayer/trackselection/ForwardingTrackSelection;
    iget-object v1, p0, Landroidx/media3/exoplayer/trackselection/ForwardingTrackSelection;->trackSelection:Landroidx/media3/exoplayer/trackselection/ExoTrackSelection;

    iget-object v2, v0, Landroidx/media3/exoplayer/trackselection/ForwardingTrackSelection;->trackSelection:Landroidx/media3/exoplayer/trackselection/ExoTrackSelection;

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method

.method public evaluateQueueSize(JLjava/util/List;)I
    .locals 1
    .param p1, "playbackPositionUs"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/List<",
            "+",
            "Landroidx/media3/exoplayer/source/chunk/MediaChunk;",
            ">;)I"
        }
    .end annotation

    .line 116
    .local p3, "queue":Ljava/util/List;, "Ljava/util/List<+Landroidx/media3/exoplayer/source/chunk/MediaChunk;>;"
    iget-object v0, p0, Landroidx/media3/exoplayer/trackselection/ForwardingTrackSelection;->trackSelection:Landroidx/media3/exoplayer/trackselection/ExoTrackSelection;

    invoke-interface {v0, p1, p2, p3}, Landroidx/media3/exoplayer/trackselection/ExoTrackSelection;->evaluateQueueSize(JLjava/util/List;)I

    move-result v0

    return v0
.end method

.method public excludeTrack(IJ)Z
    .locals 1
    .param p1, "index"    # I
    .param p2, "exclusionDurationMs"    # J

    .line 127
    iget-object v0, p0, Landroidx/media3/exoplayer/trackselection/ForwardingTrackSelection;->trackSelection:Landroidx/media3/exoplayer/trackselection/ExoTrackSelection;

    invoke-interface {v0, p1, p2, p3}, Landroidx/media3/exoplayer/trackselection/ExoTrackSelection;->excludeTrack(IJ)Z

    move-result v0

    return v0
.end method

.method public getFormat(I)Landroidx/media3/common/Format;
    .locals 1
    .param p1, "index"    # I

    .line 157
    iget-object v0, p0, Landroidx/media3/exoplayer/trackselection/ForwardingTrackSelection;->trackSelection:Landroidx/media3/exoplayer/trackselection/ExoTrackSelection;

    invoke-interface {v0, p1}, Landroidx/media3/exoplayer/trackselection/ExoTrackSelection;->getFormat(I)Landroidx/media3/common/Format;

    move-result-object v0

    return-object v0
.end method

.method public getIndexInTrackGroup(I)I
    .locals 1
    .param p1, "index"    # I

    .line 162
    iget-object v0, p0, Landroidx/media3/exoplayer/trackselection/ForwardingTrackSelection;->trackSelection:Landroidx/media3/exoplayer/trackselection/ExoTrackSelection;

    invoke-interface {v0, p1}, Landroidx/media3/exoplayer/trackselection/ExoTrackSelection;->getIndexInTrackGroup(I)I

    move-result v0

    return v0
.end method

.method public getLatestBitrateEstimate()J
    .locals 2

    .line 137
    iget-object v0, p0, Landroidx/media3/exoplayer/trackselection/ForwardingTrackSelection;->trackSelection:Landroidx/media3/exoplayer/trackselection/ExoTrackSelection;

    invoke-interface {v0}, Landroidx/media3/exoplayer/trackselection/ExoTrackSelection;->getLatestBitrateEstimate()J

    move-result-wide v0

    return-wide v0
.end method

.method public getSelectedFormat()Landroidx/media3/common/Format;
    .locals 1

    .line 59
    iget-object v0, p0, Landroidx/media3/exoplayer/trackselection/ForwardingTrackSelection;->trackSelection:Landroidx/media3/exoplayer/trackselection/ExoTrackSelection;

    invoke-interface {v0}, Landroidx/media3/exoplayer/trackselection/ExoTrackSelection;->getSelectedFormat()Landroidx/media3/common/Format;

    move-result-object v0

    return-object v0
.end method

.method public getSelectedIndex()I
    .locals 1

    .line 69
    iget-object v0, p0, Landroidx/media3/exoplayer/trackselection/ForwardingTrackSelection;->trackSelection:Landroidx/media3/exoplayer/trackselection/ExoTrackSelection;

    invoke-interface {v0}, Landroidx/media3/exoplayer/trackselection/ExoTrackSelection;->getSelectedIndex()I

    move-result v0

    return v0
.end method

.method public getSelectedIndexInTrackGroup()I
    .locals 1

    .line 64
    iget-object v0, p0, Landroidx/media3/exoplayer/trackselection/ForwardingTrackSelection;->trackSelection:Landroidx/media3/exoplayer/trackselection/ExoTrackSelection;

    invoke-interface {v0}, Landroidx/media3/exoplayer/trackselection/ExoTrackSelection;->getSelectedIndexInTrackGroup()I

    move-result v0

    return v0
.end method

.method public getSelectionData()Ljava/lang/Object;
    .locals 1

    .line 80
    iget-object v0, p0, Landroidx/media3/exoplayer/trackselection/ForwardingTrackSelection;->trackSelection:Landroidx/media3/exoplayer/trackselection/ExoTrackSelection;

    invoke-interface {v0}, Landroidx/media3/exoplayer/trackselection/ExoTrackSelection;->getSelectionData()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getSelectionReason()I
    .locals 1

    .line 74
    iget-object v0, p0, Landroidx/media3/exoplayer/trackselection/ForwardingTrackSelection;->trackSelection:Landroidx/media3/exoplayer/trackselection/ExoTrackSelection;

    invoke-interface {v0}, Landroidx/media3/exoplayer/trackselection/ExoTrackSelection;->getSelectionReason()I

    move-result v0

    return v0
.end method

.method public getTrackGroup()Landroidx/media3/common/TrackGroup;
    .locals 1

    .line 147
    iget-object v0, p0, Landroidx/media3/exoplayer/trackselection/ForwardingTrackSelection;->trackSelection:Landroidx/media3/exoplayer/trackselection/ExoTrackSelection;

    invoke-interface {v0}, Landroidx/media3/exoplayer/trackselection/ExoTrackSelection;->getTrackGroup()Landroidx/media3/common/TrackGroup;

    move-result-object v0

    return-object v0
.end method

.method public getType()I
    .locals 1

    .line 142
    iget-object v0, p0, Landroidx/media3/exoplayer/trackselection/ForwardingTrackSelection;->trackSelection:Landroidx/media3/exoplayer/trackselection/ExoTrackSelection;

    invoke-interface {v0}, Landroidx/media3/exoplayer/trackselection/ExoTrackSelection;->getType()I

    move-result v0

    return v0
.end method

.method public getWrappedInstance()Landroidx/media3/exoplayer/trackselection/ExoTrackSelection;
    .locals 1

    .line 44
    iget-object v0, p0, Landroidx/media3/exoplayer/trackselection/ForwardingTrackSelection;->trackSelection:Landroidx/media3/exoplayer/trackselection/ExoTrackSelection;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .line 177
    iget-object v0, p0, Landroidx/media3/exoplayer/trackselection/ForwardingTrackSelection;->trackSelection:Landroidx/media3/exoplayer/trackselection/ExoTrackSelection;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public indexOf(I)I
    .locals 1
    .param p1, "indexInTrackGroup"    # I

    .line 172
    iget-object v0, p0, Landroidx/media3/exoplayer/trackselection/ForwardingTrackSelection;->trackSelection:Landroidx/media3/exoplayer/trackselection/ExoTrackSelection;

    invoke-interface {v0, p1}, Landroidx/media3/exoplayer/trackselection/ExoTrackSelection;->indexOf(I)I

    move-result v0

    return v0
.end method

.method public indexOf(Landroidx/media3/common/Format;)I
    .locals 1
    .param p1, "format"    # Landroidx/media3/common/Format;

    .line 167
    iget-object v0, p0, Landroidx/media3/exoplayer/trackselection/ForwardingTrackSelection;->trackSelection:Landroidx/media3/exoplayer/trackselection/ExoTrackSelection;

    invoke-interface {v0, p1}, Landroidx/media3/exoplayer/trackselection/ExoTrackSelection;->indexOf(Landroidx/media3/common/Format;)I

    move-result v0

    return v0
.end method

.method public isTrackExcluded(IJ)Z
    .locals 1
    .param p1, "index"    # I
    .param p2, "nowMs"    # J

    .line 132
    iget-object v0, p0, Landroidx/media3/exoplayer/trackselection/ForwardingTrackSelection;->trackSelection:Landroidx/media3/exoplayer/trackselection/ExoTrackSelection;

    invoke-interface {v0, p1, p2, p3}, Landroidx/media3/exoplayer/trackselection/ExoTrackSelection;->isTrackExcluded(IJ)Z

    move-result v0

    return v0
.end method

.method public length()I
    .locals 1

    .line 152
    iget-object v0, p0, Landroidx/media3/exoplayer/trackselection/ForwardingTrackSelection;->trackSelection:Landroidx/media3/exoplayer/trackselection/ExoTrackSelection;

    invoke-interface {v0}, Landroidx/media3/exoplayer/trackselection/ExoTrackSelection;->length()I

    move-result v0

    return v0
.end method

.method public onDiscontinuity()V
    .locals 1

    .line 90
    iget-object v0, p0, Landroidx/media3/exoplayer/trackselection/ForwardingTrackSelection;->trackSelection:Landroidx/media3/exoplayer/trackselection/ExoTrackSelection;

    invoke-interface {v0}, Landroidx/media3/exoplayer/trackselection/ExoTrackSelection;->onDiscontinuity()V

    .line 91
    return-void
.end method

.method public onPlayWhenReadyChanged(Z)V
    .locals 1
    .param p1, "playWhenReady"    # Z

    .line 100
    iget-object v0, p0, Landroidx/media3/exoplayer/trackselection/ForwardingTrackSelection;->trackSelection:Landroidx/media3/exoplayer/trackselection/ExoTrackSelection;

    invoke-interface {v0, p1}, Landroidx/media3/exoplayer/trackselection/ExoTrackSelection;->onPlayWhenReadyChanged(Z)V

    .line 101
    return-void
.end method

.method public onPlaybackSpeed(F)V
    .locals 1
    .param p1, "playbackSpeed"    # F

    .line 85
    iget-object v0, p0, Landroidx/media3/exoplayer/trackselection/ForwardingTrackSelection;->trackSelection:Landroidx/media3/exoplayer/trackselection/ExoTrackSelection;

    invoke-interface {v0, p1}, Landroidx/media3/exoplayer/trackselection/ExoTrackSelection;->onPlaybackSpeed(F)V

    .line 86
    return-void
.end method

.method public onRebuffer()V
    .locals 1

    .line 95
    iget-object v0, p0, Landroidx/media3/exoplayer/trackselection/ForwardingTrackSelection;->trackSelection:Landroidx/media3/exoplayer/trackselection/ExoTrackSelection;

    invoke-interface {v0}, Landroidx/media3/exoplayer/trackselection/ExoTrackSelection;->onRebuffer()V

    .line 96
    return-void
.end method

.method public shouldCancelChunkLoad(JLandroidx/media3/exoplayer/source/chunk/Chunk;Ljava/util/List;)Z
    .locals 1
    .param p1, "playbackPositionUs"    # J
    .param p3, "loadingChunk"    # Landroidx/media3/exoplayer/source/chunk/Chunk;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Landroidx/media3/exoplayer/source/chunk/Chunk;",
            "Ljava/util/List<",
            "+",
            "Landroidx/media3/exoplayer/source/chunk/MediaChunk;",
            ">;)Z"
        }
    .end annotation

    .line 122
    .local p4, "queue":Ljava/util/List;, "Ljava/util/List<+Landroidx/media3/exoplayer/source/chunk/MediaChunk;>;"
    iget-object v0, p0, Landroidx/media3/exoplayer/trackselection/ForwardingTrackSelection;->trackSelection:Landroidx/media3/exoplayer/trackselection/ExoTrackSelection;

    invoke-interface {v0, p1, p2, p3, p4}, Landroidx/media3/exoplayer/trackselection/ExoTrackSelection;->shouldCancelChunkLoad(JLandroidx/media3/exoplayer/source/chunk/Chunk;Ljava/util/List;)Z

    move-result v0

    return v0
.end method

.method public updateSelectedTrack(JJJLjava/util/List;[Landroidx/media3/exoplayer/source/chunk/MediaChunkIterator;)V
    .locals 9
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

    .line 110
    .local p7, "queue":Ljava/util/List;, "Ljava/util/List<+Landroidx/media3/exoplayer/source/chunk/MediaChunk;>;"
    iget-object v0, p0, Landroidx/media3/exoplayer/trackselection/ForwardingTrackSelection;->trackSelection:Landroidx/media3/exoplayer/trackselection/ExoTrackSelection;

    move-wide v1, p1

    move-wide v3, p3

    move-wide v5, p5

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    invoke-interface/range {v0 .. v8}, Landroidx/media3/exoplayer/trackselection/ExoTrackSelection;->updateSelectedTrack(JJJLjava/util/List;[Landroidx/media3/exoplayer/source/chunk/MediaChunkIterator;)V

    .line 112
    return-void
.end method
