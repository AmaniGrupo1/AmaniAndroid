.class public interface abstract Landroidx/media3/exoplayer/source/MediaPeriod;
.super Ljava/lang/Object;
.source "MediaPeriod.java"

# interfaces
.implements Landroidx/media3/exoplayer/source/SequenceableLoader;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media3/exoplayer/source/MediaPeriod$Callback;
    }
.end annotation


# virtual methods
.method public abstract continueLoading(Landroidx/media3/exoplayer/LoadingInfo;)Z
.end method

.method public abstract discardBuffer(JZ)V
.end method

.method public abstract getAdjustedSeekPositionUs(JLandroidx/media3/exoplayer/SeekParameters;)J
.end method

.method public abstract getBufferedPositionUs()J
.end method

.method public abstract getNextLoadPositionUs()J
.end method

.method public getStreamKeys(Ljava/util/List;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroidx/media3/exoplayer/trackselection/ExoTrackSelection;",
            ">;)",
            "Ljava/util/List<",
            "Landroidx/media3/common/StreamKey;",
            ">;"
        }
    .end annotation

    .line 108
    .local p1, "trackSelections":Ljava/util/List;, "Ljava/util/List<Landroidx/media3/exoplayer/trackselection/ExoTrackSelection;>;"
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public abstract getTrackGroups()Landroidx/media3/exoplayer/source/TrackGroupArray;
.end method

.method public abstract isLoading()Z
.end method

.method public abstract maybeThrowPrepareError()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract prepare(Landroidx/media3/exoplayer/source/MediaPeriod$Callback;J)V
.end method

.method public abstract readDiscontinuity()J
.end method

.method public abstract reevaluateBuffer(J)V
.end method

.method public abstract seekToUs(J)J
.end method

.method public abstract selectTracks([Landroidx/media3/exoplayer/trackselection/ExoTrackSelection;[Z[Landroidx/media3/exoplayer/source/SampleStream;[ZJ)J
.end method

.method public setEndPositionUs(J)J
    .locals 2
    .param p1, "endPositionUs"    # J

    .line 278
    const-wide/high16 v0, -0x8000000000000000L

    return-wide v0
.end method
