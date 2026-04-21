.class public abstract Landroidx/media3/exoplayer/trackselection/BaseTrackSelection;
.super Ljava/lang/Object;
.source "BaseTrackSelection.java"

# interfaces
.implements Landroidx/media3/exoplayer/trackselection/ExoTrackSelection;


# instance fields
.field private final excludeUntilTimes:[J

.field private final formats:[Landroidx/media3/common/Format;

.field protected final group:Landroidx/media3/common/TrackGroup;

.field private hashCode:I

.field protected final length:I

.field private playWhenReady:Z

.field protected final tracks:[I

.field private final type:I


# direct methods
.method public varargs constructor <init>(Landroidx/media3/common/TrackGroup;[I)V
    .locals 1
    .param p1, "group"    # Landroidx/media3/common/TrackGroup;
    .param p2, "tracks"    # [I

    .line 68
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroidx/media3/exoplayer/trackselection/BaseTrackSelection;-><init>(Landroidx/media3/common/TrackGroup;[II)V

    .line 69
    return-void
.end method

.method public constructor <init>(Landroidx/media3/common/TrackGroup;[II)V
    .locals 4
    .param p1, "group"    # Landroidx/media3/common/TrackGroup;
    .param p2, "tracks"    # [I
    .param p3, "type"    # I

    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 78
    array-length v0, p2

    const/4 v1, 0x0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkState(Z)V

    .line 79
    iput p3, p0, Landroidx/media3/exoplayer/trackselection/BaseTrackSelection;->type:I

    .line 80
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media3/common/TrackGroup;

    iput-object v0, p0, Landroidx/media3/exoplayer/trackselection/BaseTrackSelection;->group:Landroidx/media3/common/TrackGroup;

    .line 81
    array-length v0, p2

    iput v0, p0, Landroidx/media3/exoplayer/trackselection/BaseTrackSelection;->length:I

    .line 83
    iget v0, p0, Landroidx/media3/exoplayer/trackselection/BaseTrackSelection;->length:I

    new-array v0, v0, [Landroidx/media3/common/Format;

    iput-object v0, p0, Landroidx/media3/exoplayer/trackselection/BaseTrackSelection;->formats:[Landroidx/media3/common/Format;

    .line 84
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    array-length v2, p2

    .line 88
    iget-object v3, p0, Landroidx/media3/exoplayer/trackselection/BaseTrackSelection;->formats:[Landroidx/media3/common/Format;

    .line 84
    if-ge v0, v2, :cond_1

    .line 85
    aget v2, p2, v0

    invoke-virtual {p1, v2}, Landroidx/media3/common/TrackGroup;->getFormat(I)Landroidx/media3/common/Format;

    move-result-object v2

    aput-object v2, v3, v0

    .line 84
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 88
    .end local v0    # "i":I
    :cond_1
    new-instance v0, Landroidx/media3/exoplayer/trackselection/BaseTrackSelection$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Landroidx/media3/exoplayer/trackselection/BaseTrackSelection$$ExternalSyntheticLambda0;-><init>()V

    invoke-static {v3, v0}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    .line 90
    iget v0, p0, Landroidx/media3/exoplayer/trackselection/BaseTrackSelection;->length:I

    new-array v0, v0, [I

    iput-object v0, p0, Landroidx/media3/exoplayer/trackselection/BaseTrackSelection;->tracks:[I

    .line 91
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_2
    iget v2, p0, Landroidx/media3/exoplayer/trackselection/BaseTrackSelection;->length:I

    if-ge v0, v2, :cond_2

    .line 92
    iget-object v2, p0, Landroidx/media3/exoplayer/trackselection/BaseTrackSelection;->tracks:[I

    iget-object v3, p0, Landroidx/media3/exoplayer/trackselection/BaseTrackSelection;->formats:[Landroidx/media3/common/Format;

    aget-object v3, v3, v0

    invoke-virtual {p1, v3}, Landroidx/media3/common/TrackGroup;->indexOf(Landroidx/media3/common/Format;)I

    move-result v3

    aput v3, v2, v0

    .line 91
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 94
    .end local v0    # "i":I
    :cond_2
    iget v0, p0, Landroidx/media3/exoplayer/trackselection/BaseTrackSelection;->length:I

    new-array v0, v0, [J

    iput-object v0, p0, Landroidx/media3/exoplayer/trackselection/BaseTrackSelection;->excludeUntilTimes:[J

    .line 95
    iput-boolean v1, p0, Landroidx/media3/exoplayer/trackselection/BaseTrackSelection;->playWhenReady:Z

    .line 96
    return-void
.end method

.method static synthetic lambda$new$0(Landroidx/media3/common/Format;Landroidx/media3/common/Format;)I
    .locals 2
    .param p0, "a"    # Landroidx/media3/common/Format;
    .param p1, "b"    # Landroidx/media3/common/Format;

    .line 88
    iget v0, p1, Landroidx/media3/common/Format;->bitrate:I

    iget v1, p0, Landroidx/media3/common/Format;->bitrate:I

    sub-int/2addr v0, v1

    return v0
.end method


# virtual methods
.method public disable()V
    .locals 0

    .line 166
    return-void
.end method

.method public enable()V
    .locals 0

    .line 161
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "obj"    # Ljava/lang/Object;

    .line 223
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    .line 224
    return v0

    .line 226
    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_1

    .line 229
    :cond_1
    move-object v2, p1

    check-cast v2, Landroidx/media3/exoplayer/trackselection/BaseTrackSelection;

    .line 230
    .local v2, "other":Landroidx/media3/exoplayer/trackselection/BaseTrackSelection;
    iget-object v3, p0, Landroidx/media3/exoplayer/trackselection/BaseTrackSelection;->group:Landroidx/media3/common/TrackGroup;

    iget-object v4, v2, Landroidx/media3/exoplayer/trackselection/BaseTrackSelection;->group:Landroidx/media3/common/TrackGroup;

    invoke-virtual {v3, v4}, Landroidx/media3/common/TrackGroup;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Landroidx/media3/exoplayer/trackselection/BaseTrackSelection;->tracks:[I

    iget-object v4, v2, Landroidx/media3/exoplayer/trackselection/BaseTrackSelection;->tracks:[I

    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_0

    :cond_2
    move v0, v1

    :goto_0
    return v0

    .line 227
    .end local v2    # "other":Landroidx/media3/exoplayer/trackselection/BaseTrackSelection;
    :cond_3
    :goto_1
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

    .line 175
    .local p3, "queue":Ljava/util/List;, "Ljava/util/List<+Landroidx/media3/exoplayer/source/chunk/MediaChunk;>;"
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public excludeTrack(IJ)Z
    .locals 11
    .param p1, "index"    # I
    .param p2, "exclusionDurationMs"    # J

    .line 180
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 181
    .local v0, "nowMs":J
    invoke-virtual {p0, p1, v0, v1}, Landroidx/media3/exoplayer/trackselection/BaseTrackSelection;->isTrackExcluded(IJ)Z

    move-result v2

    .line 182
    .local v2, "canExclude":Z
    const/4 v3, 0x0

    move v6, v2

    .end local v2    # "canExclude":Z
    .local v3, "i":I
    .local v6, "canExclude":Z
    :goto_0
    iget v2, p0, Landroidx/media3/exoplayer/trackselection/BaseTrackSelection;->length:I

    const/4 v4, 0x0

    const/4 v7, 0x1

    if-ge v3, v2, :cond_1

    if-nez v6, :cond_1

    .line 183
    if-eq v3, p1, :cond_0

    invoke-virtual {p0, v3, v0, v1}, Landroidx/media3/exoplayer/trackselection/BaseTrackSelection;->isTrackExcluded(IJ)Z

    move-result v2

    if-nez v2, :cond_0

    move v4, v7

    :cond_0
    move v6, v4

    .line 182
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 185
    .end local v3    # "i":I
    :cond_1
    if-nez v6, :cond_2

    .line 186
    return v4

    .line 188
    :cond_2
    iget-object v8, p0, Landroidx/media3/exoplayer/trackselection/BaseTrackSelection;->excludeUntilTimes:[J

    iget-object v2, p0, Landroidx/media3/exoplayer/trackselection/BaseTrackSelection;->excludeUntilTimes:[J

    aget-wide v9, v2, p1

    .line 191
    const-wide v4, 0x7fffffffffffffffL

    move-wide v2, p2

    .end local p2    # "exclusionDurationMs":J
    .local v2, "exclusionDurationMs":J
    invoke-static/range {v0 .. v5}, Landroidx/media3/common/util/Util;->addWithOverflowDefault(JJJ)J

    move-result-wide p2

    .line 189
    invoke-static {v9, v10, p2, p3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide p2

    aput-wide p2, v8, p1

    .line 192
    return v7
.end method

.method public final getFormat(I)Landroidx/media3/common/Format;
    .locals 1
    .param p1, "index"    # I

    .line 117
    iget-object v0, p0, Landroidx/media3/exoplayer/trackselection/BaseTrackSelection;->formats:[Landroidx/media3/common/Format;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public final getIndexInTrackGroup(I)I
    .locals 1
    .param p1, "index"    # I

    .line 122
    iget-object v0, p0, Landroidx/media3/exoplayer/trackselection/BaseTrackSelection;->tracks:[I

    aget v0, v0, p1

    return v0
.end method

.method protected final getPlayWhenReady()Z
    .locals 1

    .line 208
    iget-boolean v0, p0, Landroidx/media3/exoplayer/trackselection/BaseTrackSelection;->playWhenReady:Z

    return v0
.end method

.method public final getSelectedFormat()Landroidx/media3/common/Format;
    .locals 2

    .line 150
    iget-object v0, p0, Landroidx/media3/exoplayer/trackselection/BaseTrackSelection;->formats:[Landroidx/media3/common/Format;

    invoke-virtual {p0}, Landroidx/media3/exoplayer/trackselection/BaseTrackSelection;->getSelectedIndex()I

    move-result v1

    aget-object v0, v0, v1

    return-object v0
.end method

.method public final getSelectedIndexInTrackGroup()I
    .locals 2

    .line 155
    iget-object v0, p0, Landroidx/media3/exoplayer/trackselection/BaseTrackSelection;->tracks:[I

    invoke-virtual {p0}, Landroidx/media3/exoplayer/trackselection/BaseTrackSelection;->getSelectedIndex()I

    move-result v1

    aget v0, v0, v1

    return v0
.end method

.method public final getTrackGroup()Landroidx/media3/common/TrackGroup;
    .locals 1

    .line 107
    iget-object v0, p0, Landroidx/media3/exoplayer/trackselection/BaseTrackSelection;->group:Landroidx/media3/common/TrackGroup;

    return-object v0
.end method

.method public final getType()I
    .locals 1

    .line 102
    iget v0, p0, Landroidx/media3/exoplayer/trackselection/BaseTrackSelection;->type:I

    return v0
.end method

.method public hashCode()I
    .locals 2

    .line 215
    iget v0, p0, Landroidx/media3/exoplayer/trackselection/BaseTrackSelection;->hashCode:I

    if-nez v0, :cond_0

    .line 216
    iget-object v0, p0, Landroidx/media3/exoplayer/trackselection/BaseTrackSelection;->group:Landroidx/media3/common/TrackGroup;

    invoke-static {v0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Landroidx/media3/exoplayer/trackselection/BaseTrackSelection;->tracks:[I

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([I)I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Landroidx/media3/exoplayer/trackselection/BaseTrackSelection;->hashCode:I

    .line 218
    :cond_0
    iget v0, p0, Landroidx/media3/exoplayer/trackselection/BaseTrackSelection;->hashCode:I

    return v0
.end method

.method public final indexOf(I)I
    .locals 2
    .param p1, "indexInTrackGroup"    # I

    .line 138
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v1, p0, Landroidx/media3/exoplayer/trackselection/BaseTrackSelection;->length:I

    if-ge v0, v1, :cond_1

    .line 139
    iget-object v1, p0, Landroidx/media3/exoplayer/trackselection/BaseTrackSelection;->tracks:[I

    aget v1, v1, v0

    if-ne v1, p1, :cond_0

    .line 140
    return v0

    .line 138
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 143
    .end local v0    # "i":I
    :cond_1
    const/4 v0, -0x1

    return v0
.end method

.method public final indexOf(Landroidx/media3/common/Format;)I
    .locals 2
    .param p1, "format"    # Landroidx/media3/common/Format;

    .line 128
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v1, p0, Landroidx/media3/exoplayer/trackselection/BaseTrackSelection;->length:I

    if-ge v0, v1, :cond_1

    .line 129
    iget-object v1, p0, Landroidx/media3/exoplayer/trackselection/BaseTrackSelection;->formats:[Landroidx/media3/common/Format;

    aget-object v1, v1, v0

    if-ne v1, p1, :cond_0

    .line 130
    return v0

    .line 128
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 133
    .end local v0    # "i":I
    :cond_1
    const/4 v0, -0x1

    return v0
.end method

.method public isTrackExcluded(IJ)Z
    .locals 3
    .param p1, "index"    # I
    .param p2, "nowMs"    # J

    .line 197
    iget-object v0, p0, Landroidx/media3/exoplayer/trackselection/BaseTrackSelection;->excludeUntilTimes:[J

    aget-wide v1, v0, p1

    cmp-long v0, v1, p2

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final length()I
    .locals 1

    .line 112
    iget-object v0, p0, Landroidx/media3/exoplayer/trackselection/BaseTrackSelection;->tracks:[I

    array-length v0, v0

    return v0
.end method

.method public onPlayWhenReadyChanged(Z)V
    .locals 0
    .param p1, "playWhenReady"    # Z

    .line 203
    iput-boolean p1, p0, Landroidx/media3/exoplayer/trackselection/BaseTrackSelection;->playWhenReady:Z

    .line 204
    return-void
.end method

.method public onPlaybackSpeed(F)V
    .locals 0
    .param p1, "playbackSpeed"    # F

    .line 171
    return-void
.end method
