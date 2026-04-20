.class final Landroidx/media3/exoplayer/source/MergingMediaPeriod;
.super Ljava/lang/Object;
.source "MergingMediaPeriod.java"

# interfaces
.implements Landroidx/media3/exoplayer/source/MediaPeriod;
.implements Landroidx/media3/exoplayer/source/MediaPeriod$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media3/exoplayer/source/MergingMediaPeriod$MergingMediaPeriodTrackSelection;
    }
.end annotation


# instance fields
.field private callback:Landroidx/media3/exoplayer/source/MediaPeriod$Callback;

.field private final childTrackGroupByMergedTrackGroup:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Landroidx/media3/common/TrackGroup;",
            "Landroidx/media3/common/TrackGroup;",
            ">;"
        }
    .end annotation
.end field

.field private final childrenPendingPreparation:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroidx/media3/exoplayer/source/MediaPeriod;",
            ">;"
        }
    .end annotation
.end field

.field private compositeSequenceableLoader:Landroidx/media3/exoplayer/source/SequenceableLoader;

.field private final compositeSequenceableLoaderFactory:Landroidx/media3/exoplayer/source/CompositeSequenceableLoaderFactory;

.field private enabledPeriods:[Landroidx/media3/exoplayer/source/MediaPeriod;

.field private final periods:[Landroidx/media3/exoplayer/source/MediaPeriod;

.field private final periodsWithTimeOffsets:[Z

.field private final streamPeriodIndices:Ljava/util/IdentityHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/IdentityHashMap<",
            "Landroidx/media3/exoplayer/source/SampleStream;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private trackGroups:Landroidx/media3/exoplayer/source/TrackGroupArray;


# direct methods
.method public varargs constructor <init>(Landroidx/media3/exoplayer/source/CompositeSequenceableLoaderFactory;[J[Landroidx/media3/exoplayer/source/MediaPeriod;)V
    .locals 6
    .param p1, "compositeSequenceableLoaderFactory"    # Landroidx/media3/exoplayer/source/CompositeSequenceableLoaderFactory;
    .param p2, "periodTimeOffsetsUs"    # [J
    .param p3, "periods"    # [Landroidx/media3/exoplayer/source/MediaPeriod;

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    iput-object p1, p0, Landroidx/media3/exoplayer/source/MergingMediaPeriod;->compositeSequenceableLoaderFactory:Landroidx/media3/exoplayer/source/CompositeSequenceableLoaderFactory;

    .line 60
    iput-object p3, p0, Landroidx/media3/exoplayer/source/MergingMediaPeriod;->periods:[Landroidx/media3/exoplayer/source/MediaPeriod;

    .line 61
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/media3/exoplayer/source/MergingMediaPeriod;->childrenPendingPreparation:Ljava/util/ArrayList;

    .line 62
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroidx/media3/exoplayer/source/MergingMediaPeriod;->childTrackGroupByMergedTrackGroup:Ljava/util/HashMap;

    .line 63
    invoke-interface {p1}, Landroidx/media3/exoplayer/source/CompositeSequenceableLoaderFactory;->empty()Landroidx/media3/exoplayer/source/SequenceableLoader;

    move-result-object v0

    iput-object v0, p0, Landroidx/media3/exoplayer/source/MergingMediaPeriod;->compositeSequenceableLoader:Landroidx/media3/exoplayer/source/SequenceableLoader;

    .line 64
    new-instance v0, Ljava/util/IdentityHashMap;

    invoke-direct {v0}, Ljava/util/IdentityHashMap;-><init>()V

    iput-object v0, p0, Landroidx/media3/exoplayer/source/MergingMediaPeriod;->streamPeriodIndices:Ljava/util/IdentityHashMap;

    .line 65
    const/4 v0, 0x0

    new-array v0, v0, [Landroidx/media3/exoplayer/source/MediaPeriod;

    iput-object v0, p0, Landroidx/media3/exoplayer/source/MergingMediaPeriod;->enabledPeriods:[Landroidx/media3/exoplayer/source/MediaPeriod;

    .line 66
    array-length v0, p3

    new-array v0, v0, [Z

    iput-object v0, p0, Landroidx/media3/exoplayer/source/MergingMediaPeriod;->periodsWithTimeOffsets:[Z

    .line 67
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v1, p3

    if-ge v0, v1, :cond_1

    .line 68
    aget-wide v1, p2, v0

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-eqz v1, :cond_0

    .line 69
    iget-object v1, p0, Landroidx/media3/exoplayer/source/MergingMediaPeriod;->periodsWithTimeOffsets:[Z

    const/4 v2, 0x1

    aput-boolean v2, v1, v0

    .line 70
    iget-object v1, p0, Landroidx/media3/exoplayer/source/MergingMediaPeriod;->periods:[Landroidx/media3/exoplayer/source/MediaPeriod;

    new-instance v2, Landroidx/media3/exoplayer/source/TimeOffsetMediaPeriod;

    aget-object v3, p3, v0

    aget-wide v4, p2, v0

    invoke-direct {v2, v3, v4, v5}, Landroidx/media3/exoplayer/source/TimeOffsetMediaPeriod;-><init>(Landroidx/media3/exoplayer/source/MediaPeriod;J)V

    aput-object v2, v1, v0

    .line 67
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 73
    .end local v0    # "i":I
    :cond_1
    return-void
.end method

.method static synthetic lambda$selectTracks$0(Landroidx/media3/exoplayer/source/MediaPeriod;)Ljava/util/List;
    .locals 1
    .param p0, "period"    # Landroidx/media3/exoplayer/source/MediaPeriod;

    .line 187
    invoke-interface {p0}, Landroidx/media3/exoplayer/source/MediaPeriod;->getTrackGroups()Landroidx/media3/exoplayer/source/TrackGroupArray;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/media3/exoplayer/source/TrackGroupArray;->getTrackTypes()Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public continueLoading(Landroidx/media3/exoplayer/LoadingInfo;)Z
    .locals 3
    .param p1, "loadingInfo"    # Landroidx/media3/exoplayer/LoadingInfo;

    .line 205
    iget-object v0, p0, Landroidx/media3/exoplayer/source/MergingMediaPeriod;->childrenPendingPreparation:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 207
    iget-object v0, p0, Landroidx/media3/exoplayer/source/MergingMediaPeriod;->childrenPendingPreparation:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 208
    .local v0, "childrenPendingPreparationSize":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 209
    iget-object v2, p0, Landroidx/media3/exoplayer/source/MergingMediaPeriod;->childrenPendingPreparation:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/media3/exoplayer/source/MediaPeriod;

    invoke-interface {v2, p1}, Landroidx/media3/exoplayer/source/MediaPeriod;->continueLoading(Landroidx/media3/exoplayer/LoadingInfo;)Z

    .line 208
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 211
    .end local v1    # "i":I
    :cond_0
    const/4 v1, 0x0

    return v1

    .line 213
    .end local v0    # "childrenPendingPreparationSize":I
    :cond_1
    iget-object v0, p0, Landroidx/media3/exoplayer/source/MergingMediaPeriod;->compositeSequenceableLoader:Landroidx/media3/exoplayer/source/SequenceableLoader;

    invoke-interface {v0, p1}, Landroidx/media3/exoplayer/source/SequenceableLoader;->continueLoading(Landroidx/media3/exoplayer/LoadingInfo;)Z

    move-result v0

    return v0
.end method

.method public discardBuffer(JZ)V
    .locals 4
    .param p1, "positionUs"    # J
    .param p3, "toKeyframe"    # Z

    .line 193
    iget-object v0, p0, Landroidx/media3/exoplayer/source/MergingMediaPeriod;->enabledPeriods:[Landroidx/media3/exoplayer/source/MediaPeriod;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 194
    .local v3, "period":Landroidx/media3/exoplayer/source/MediaPeriod;
    invoke-interface {v3, p1, p2, p3}, Landroidx/media3/exoplayer/source/MediaPeriod;->discardBuffer(JZ)V

    .line 193
    .end local v3    # "period":Landroidx/media3/exoplayer/source/MediaPeriod;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 196
    :cond_0
    return-void
.end method

.method public getAdjustedSeekPositionUs(JLandroidx/media3/exoplayer/SeekParameters;)J
    .locals 3
    .param p1, "positionUs"    # J
    .param p3, "seekParameters"    # Landroidx/media3/exoplayer/SeekParameters;

    .line 276
    iget-object v0, p0, Landroidx/media3/exoplayer/source/MergingMediaPeriod;->enabledPeriods:[Landroidx/media3/exoplayer/source/MediaPeriod;

    array-length v0, v0

    const/4 v1, 0x0

    if-lez v0, :cond_0

    iget-object v0, p0, Landroidx/media3/exoplayer/source/MergingMediaPeriod;->enabledPeriods:[Landroidx/media3/exoplayer/source/MediaPeriod;

    aget-object v0, v0, v1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroidx/media3/exoplayer/source/MergingMediaPeriod;->periods:[Landroidx/media3/exoplayer/source/MediaPeriod;

    aget-object v0, v0, v1

    .line 277
    .local v0, "queryPeriod":Landroidx/media3/exoplayer/source/MediaPeriod;
    :goto_0
    invoke-interface {v0, p1, p2, p3}, Landroidx/media3/exoplayer/source/MediaPeriod;->getAdjustedSeekPositionUs(JLandroidx/media3/exoplayer/SeekParameters;)J

    move-result-wide v1

    return-wide v1
.end method

.method public getBufferedPositionUs()J
    .locals 2

    .line 259
    iget-object v0, p0, Landroidx/media3/exoplayer/source/MergingMediaPeriod;->compositeSequenceableLoader:Landroidx/media3/exoplayer/source/SequenceableLoader;

    invoke-interface {v0}, Landroidx/media3/exoplayer/source/SequenceableLoader;->getBufferedPositionUs()J

    move-result-wide v0

    return-wide v0
.end method

.method public getChildPeriod(I)Landroidx/media3/exoplayer/source/MediaPeriod;
    .locals 2
    .param p1, "index"    # I

    .line 81
    iget-object v0, p0, Landroidx/media3/exoplayer/source/MergingMediaPeriod;->periodsWithTimeOffsets:[Z

    aget-boolean v0, v0, p1

    .line 83
    iget-object v1, p0, Landroidx/media3/exoplayer/source/MergingMediaPeriod;->periods:[Landroidx/media3/exoplayer/source/MediaPeriod;

    .line 81
    if-eqz v0, :cond_0

    .line 82
    aget-object v0, v1, p1

    check-cast v0, Landroidx/media3/exoplayer/source/TimeOffsetMediaPeriod;

    invoke-virtual {v0}, Landroidx/media3/exoplayer/source/TimeOffsetMediaPeriod;->getWrappedMediaPeriod()Landroidx/media3/exoplayer/source/MediaPeriod;

    move-result-object v0

    goto :goto_0

    .line 83
    :cond_0
    aget-object v0, v1, p1

    .line 81
    :goto_0
    return-object v0
.end method

.method public getNextLoadPositionUs()J
    .locals 2

    .line 224
    iget-object v0, p0, Landroidx/media3/exoplayer/source/MergingMediaPeriod;->compositeSequenceableLoader:Landroidx/media3/exoplayer/source/SequenceableLoader;

    invoke-interface {v0}, Landroidx/media3/exoplayer/source/SequenceableLoader;->getNextLoadPositionUs()J

    move-result-wide v0

    return-wide v0
.end method

.method public getStreamKeys(Ljava/util/List;)Lcom/google/common/collect/ImmutableList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroidx/media3/exoplayer/trackselection/ExoTrackSelection;",
            ">;)",
            "Lcom/google/common/collect/ImmutableList<",
            "Landroidx/media3/common/StreamKey;",
            ">;"
        }
    .end annotation

    .line 105
    .local p1, "trackSelections":Ljava/util/List;, "Ljava/util/List<Landroidx/media3/exoplayer/trackselection/ExoTrackSelection;>;"
    invoke-static {}, Lcom/google/common/collect/ImmutableList;->of()Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getStreamKeys(Ljava/util/List;)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 41
    invoke-virtual {p0, p1}, Landroidx/media3/exoplayer/source/MergingMediaPeriod;->getStreamKeys(Ljava/util/List;)Lcom/google/common/collect/ImmutableList;

    move-result-object p1

    return-object p1
.end method

.method public getTrackGroups()Landroidx/media3/exoplayer/source/TrackGroupArray;
    .locals 1

    .line 110
    iget-object v0, p0, Landroidx/media3/exoplayer/source/MergingMediaPeriod;->trackGroups:Landroidx/media3/exoplayer/source/TrackGroupArray;

    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media3/exoplayer/source/TrackGroupArray;

    return-object v0
.end method

.method public isLoading()Z
    .locals 1

    .line 219
    iget-object v0, p0, Landroidx/media3/exoplayer/source/MergingMediaPeriod;->compositeSequenceableLoader:Landroidx/media3/exoplayer/source/SequenceableLoader;

    invoke-interface {v0}, Landroidx/media3/exoplayer/source/SequenceableLoader;->isLoading()Z

    move-result v0

    return v0
.end method

.method public maybeThrowPrepareError()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 97
    iget-object v0, p0, Landroidx/media3/exoplayer/source/MergingMediaPeriod;->periods:[Landroidx/media3/exoplayer/source/MediaPeriod;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 98
    .local v3, "period":Landroidx/media3/exoplayer/source/MediaPeriod;
    invoke-interface {v3}, Landroidx/media3/exoplayer/source/MediaPeriod;->maybeThrowPrepareError()V

    .line 97
    .end local v3    # "period":Landroidx/media3/exoplayer/source/MediaPeriod;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 100
    :cond_0
    return-void
.end method

.method public onContinueLoadingRequested(Landroidx/media3/exoplayer/source/MediaPeriod;)V
    .locals 1
    .param p1, "ignored"    # Landroidx/media3/exoplayer/source/MediaPeriod;

    .line 332
    iget-object v0, p0, Landroidx/media3/exoplayer/source/MergingMediaPeriod;->callback:Landroidx/media3/exoplayer/source/MediaPeriod$Callback;

    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media3/exoplayer/source/MediaPeriod$Callback;

    invoke-interface {v0, p0}, Landroidx/media3/exoplayer/source/MediaPeriod$Callback;->onContinueLoadingRequested(Landroidx/media3/exoplayer/source/SequenceableLoader;)V

    .line 333
    return-void
.end method

.method public bridge synthetic onContinueLoadingRequested(Landroidx/media3/exoplayer/source/SequenceableLoader;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 41
    check-cast p1, Landroidx/media3/exoplayer/source/MediaPeriod;

    invoke-virtual {p0, p1}, Landroidx/media3/exoplayer/source/MergingMediaPeriod;->onContinueLoadingRequested(Landroidx/media3/exoplayer/source/MediaPeriod;)V

    return-void
.end method

.method public onPrepared(Landroidx/media3/exoplayer/source/MediaPeriod;)V
    .locals 17
    .param p1, "preparedPeriod"    # Landroidx/media3/exoplayer/source/MediaPeriod;

    .line 294
    move-object/from16 v0, p0

    iget-object v1, v0, Landroidx/media3/exoplayer/source/MergingMediaPeriod;->childrenPendingPreparation:Ljava/util/ArrayList;

    move-object/from16 v2, p1

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 295
    iget-object v1, v0, Landroidx/media3/exoplayer/source/MergingMediaPeriod;->childrenPendingPreparation:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 296
    return-void

    .line 298
    :cond_0
    const/4 v1, 0x0

    .line 299
    .local v1, "totalTrackGroupCount":I
    iget-object v3, v0, Landroidx/media3/exoplayer/source/MergingMediaPeriod;->periods:[Landroidx/media3/exoplayer/source/MediaPeriod;

    array-length v4, v3

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v4, :cond_1

    aget-object v6, v3, v5

    .line 300
    .local v6, "period":Landroidx/media3/exoplayer/source/MediaPeriod;
    invoke-interface {v6}, Landroidx/media3/exoplayer/source/MediaPeriod;->getTrackGroups()Landroidx/media3/exoplayer/source/TrackGroupArray;

    move-result-object v7

    iget v7, v7, Landroidx/media3/exoplayer/source/TrackGroupArray;->length:I

    add-int/2addr v1, v7

    .line 299
    .end local v6    # "period":Landroidx/media3/exoplayer/source/MediaPeriod;
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 302
    :cond_1
    new-array v3, v1, [Landroidx/media3/common/TrackGroup;

    .line 303
    .local v3, "trackGroupArray":[Landroidx/media3/common/TrackGroup;
    const/4 v4, 0x0

    .line 304
    .local v4, "trackGroupIndex":I
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_1
    iget-object v6, v0, Landroidx/media3/exoplayer/source/MergingMediaPeriod;->periods:[Landroidx/media3/exoplayer/source/MediaPeriod;

    array-length v6, v6

    if-ge v5, v6, :cond_6

    .line 305
    iget-object v6, v0, Landroidx/media3/exoplayer/source/MergingMediaPeriod;->periods:[Landroidx/media3/exoplayer/source/MediaPeriod;

    aget-object v6, v6, v5

    invoke-interface {v6}, Landroidx/media3/exoplayer/source/MediaPeriod;->getTrackGroups()Landroidx/media3/exoplayer/source/TrackGroupArray;

    move-result-object v6

    .line 306
    .local v6, "periodTrackGroups":Landroidx/media3/exoplayer/source/TrackGroupArray;
    iget v7, v6, Landroidx/media3/exoplayer/source/TrackGroupArray;->length:I

    .line 307
    .local v7, "periodTrackGroupCount":I
    const/4 v8, 0x0

    .local v8, "j":I
    :goto_2
    if-ge v8, v7, :cond_5

    .line 308
    invoke-virtual {v6, v8}, Landroidx/media3/exoplayer/source/TrackGroupArray;->get(I)Landroidx/media3/common/TrackGroup;

    move-result-object v9

    .line 309
    .local v9, "childTrackGroup":Landroidx/media3/common/TrackGroup;
    iget v10, v9, Landroidx/media3/common/TrackGroup;->length:I

    new-array v10, v10, [Landroidx/media3/common/Format;

    .line 310
    .local v10, "mergedFormats":[Landroidx/media3/common/Format;
    const/4 v11, 0x0

    .local v11, "k":I
    :goto_3
    iget v12, v9, Landroidx/media3/common/TrackGroup;->length:I

    const-string v13, ":"

    if-ge v11, v12, :cond_4

    .line 311
    invoke-virtual {v9, v11}, Landroidx/media3/common/TrackGroup;->getFormat(I)Landroidx/media3/common/Format;

    move-result-object v12

    .line 312
    .local v12, "originalFormat":Landroidx/media3/common/Format;
    invoke-virtual {v12}, Landroidx/media3/common/Format;->buildUpon()Landroidx/media3/common/Format$Builder;

    move-result-object v14

    .line 313
    .local v14, "mergedFormatBuilder":Landroidx/media3/common/Format$Builder;
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v15, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move/from16 v16, v1

    .end local v1    # "totalTrackGroupCount":I
    .local v16, "totalTrackGroupCount":I
    iget-object v1, v12, Landroidx/media3/common/Format;->id:Ljava/lang/String;

    if-nez v1, :cond_2

    const-string v1, ""

    goto :goto_4

    :cond_2
    iget-object v1, v12, Landroidx/media3/common/Format;->id:Ljava/lang/String;

    :goto_4
    invoke-virtual {v15, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v14, v1}, Landroidx/media3/common/Format$Builder;->setId(Ljava/lang/String;)Landroidx/media3/common/Format$Builder;

    .line 314
    iget-object v1, v12, Landroidx/media3/common/Format;->primaryTrackGroupId:Ljava/lang/String;

    if-eqz v1, :cond_3

    .line 315
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v13, v12, Landroidx/media3/common/Format;->primaryTrackGroupId:Ljava/lang/String;

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v14, v1}, Landroidx/media3/common/Format$Builder;->setPrimaryTrackGroupId(Ljava/lang/String;)Landroidx/media3/common/Format$Builder;

    .line 318
    :cond_3
    invoke-virtual {v14}, Landroidx/media3/common/Format$Builder;->build()Landroidx/media3/common/Format;

    move-result-object v1

    aput-object v1, v10, v11

    .line 310
    .end local v12    # "originalFormat":Landroidx/media3/common/Format;
    .end local v14    # "mergedFormatBuilder":Landroidx/media3/common/Format$Builder;
    add-int/lit8 v11, v11, 0x1

    move/from16 v1, v16

    goto :goto_3

    .end local v16    # "totalTrackGroupCount":I
    .restart local v1    # "totalTrackGroupCount":I
    :cond_4
    move/from16 v16, v1

    .line 320
    .end local v1    # "totalTrackGroupCount":I
    .end local v11    # "k":I
    .restart local v16    # "totalTrackGroupCount":I
    new-instance v1, Landroidx/media3/common/TrackGroup;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, v9, Landroidx/media3/common/TrackGroup;->id:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v1, v11, v10}, Landroidx/media3/common/TrackGroup;-><init>(Ljava/lang/String;[Landroidx/media3/common/Format;)V

    .line 322
    .local v1, "mergedTrackGroup":Landroidx/media3/common/TrackGroup;
    iget-object v11, v0, Landroidx/media3/exoplayer/source/MergingMediaPeriod;->childTrackGroupByMergedTrackGroup:Ljava/util/HashMap;

    invoke-virtual {v11, v1, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 323
    add-int/lit8 v11, v4, 0x1

    .end local v4    # "trackGroupIndex":I
    .local v11, "trackGroupIndex":I
    aput-object v1, v3, v4

    .line 307
    .end local v1    # "mergedTrackGroup":Landroidx/media3/common/TrackGroup;
    .end local v9    # "childTrackGroup":Landroidx/media3/common/TrackGroup;
    .end local v10    # "mergedFormats":[Landroidx/media3/common/Format;
    add-int/lit8 v8, v8, 0x1

    move v4, v11

    move/from16 v1, v16

    goto/16 :goto_2

    .end local v11    # "trackGroupIndex":I
    .end local v16    # "totalTrackGroupCount":I
    .local v1, "totalTrackGroupCount":I
    .restart local v4    # "trackGroupIndex":I
    :cond_5
    move/from16 v16, v1

    .line 304
    .end local v1    # "totalTrackGroupCount":I
    .end local v6    # "periodTrackGroups":Landroidx/media3/exoplayer/source/TrackGroupArray;
    .end local v7    # "periodTrackGroupCount":I
    .end local v8    # "j":I
    .restart local v16    # "totalTrackGroupCount":I
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_1

    .end local v16    # "totalTrackGroupCount":I
    .restart local v1    # "totalTrackGroupCount":I
    :cond_6
    move/from16 v16, v1

    .line 326
    .end local v1    # "totalTrackGroupCount":I
    .end local v5    # "i":I
    .restart local v16    # "totalTrackGroupCount":I
    new-instance v1, Landroidx/media3/exoplayer/source/TrackGroupArray;

    invoke-direct {v1, v3}, Landroidx/media3/exoplayer/source/TrackGroupArray;-><init>([Landroidx/media3/common/TrackGroup;)V

    iput-object v1, v0, Landroidx/media3/exoplayer/source/MergingMediaPeriod;->trackGroups:Landroidx/media3/exoplayer/source/TrackGroupArray;

    .line 327
    iget-object v1, v0, Landroidx/media3/exoplayer/source/MergingMediaPeriod;->callback:Landroidx/media3/exoplayer/source/MediaPeriod$Callback;

    invoke-static {v1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/media3/exoplayer/source/MediaPeriod$Callback;

    invoke-interface {v1, v0}, Landroidx/media3/exoplayer/source/MediaPeriod$Callback;->onPrepared(Landroidx/media3/exoplayer/source/MediaPeriod;)V

    .line 328
    return-void
.end method

.method public prepare(Landroidx/media3/exoplayer/source/MediaPeriod$Callback;J)V
    .locals 4
    .param p1, "callback"    # Landroidx/media3/exoplayer/source/MediaPeriod$Callback;
    .param p2, "positionUs"    # J

    .line 88
    iput-object p1, p0, Landroidx/media3/exoplayer/source/MergingMediaPeriod;->callback:Landroidx/media3/exoplayer/source/MediaPeriod$Callback;

    .line 89
    iget-object v0, p0, Landroidx/media3/exoplayer/source/MergingMediaPeriod;->childrenPendingPreparation:Ljava/util/ArrayList;

    iget-object v1, p0, Landroidx/media3/exoplayer/source/MergingMediaPeriod;->periods:[Landroidx/media3/exoplayer/source/MediaPeriod;

    invoke-static {v0, v1}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 90
    iget-object v0, p0, Landroidx/media3/exoplayer/source/MergingMediaPeriod;->periods:[Landroidx/media3/exoplayer/source/MediaPeriod;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 91
    .local v3, "period":Landroidx/media3/exoplayer/source/MediaPeriod;
    invoke-interface {v3, p0, p2, p3}, Landroidx/media3/exoplayer/source/MediaPeriod;->prepare(Landroidx/media3/exoplayer/source/MediaPeriod$Callback;J)V

    .line 90
    .end local v3    # "period":Landroidx/media3/exoplayer/source/MediaPeriod;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 93
    :cond_0
    return-void
.end method

.method public readDiscontinuity()J
    .locals 17

    .line 229
    move-object/from16 v0, p0

    const-wide v1, -0x7fffffffffffffffL    # -4.9E-324

    .line 230
    .local v1, "discontinuityUs":J
    iget-object v3, v0, Landroidx/media3/exoplayer/source/MergingMediaPeriod;->enabledPeriods:[Landroidx/media3/exoplayer/source/MediaPeriod;

    array-length v4, v3

    const/4 v5, 0x0

    move v6, v5

    :goto_0
    if-ge v6, v4, :cond_8

    aget-object v7, v3, v6

    .line 231
    .local v7, "period":Landroidx/media3/exoplayer/source/MediaPeriod;
    invoke-interface {v7}, Landroidx/media3/exoplayer/source/MediaPeriod;->readDiscontinuity()J

    move-result-wide v8

    .line 232
    .local v8, "otherDiscontinuityUs":J
    const-wide v10, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v12, v8, v10

    const-string v13, "Unexpected child seekToUs result."

    if-eqz v12, :cond_5

    .line 233
    cmp-long v10, v1, v10

    if-nez v10, :cond_3

    .line 234
    move-wide v1, v8

    .line 236
    iget-object v10, v0, Landroidx/media3/exoplayer/source/MergingMediaPeriod;->enabledPeriods:[Landroidx/media3/exoplayer/source/MediaPeriod;

    array-length v11, v10

    move v12, v5

    :goto_1
    if-ge v12, v11, :cond_2

    aget-object v14, v10, v12

    .line 237
    .local v14, "previousPeriod":Landroidx/media3/exoplayer/source/MediaPeriod;
    if-ne v14, v7, :cond_0

    .line 238
    goto :goto_2

    .line 240
    :cond_0
    invoke-interface {v14, v1, v2}, Landroidx/media3/exoplayer/source/MediaPeriod;->seekToUs(J)J

    move-result-wide v15

    cmp-long v15, v15, v1

    if-nez v15, :cond_1

    .line 236
    .end local v14    # "previousPeriod":Landroidx/media3/exoplayer/source/MediaPeriod;
    add-int/lit8 v12, v12, 0x1

    goto :goto_1

    .line 241
    .restart local v14    # "previousPeriod":Landroidx/media3/exoplayer/source/MediaPeriod;
    :cond_1
    new-instance v3, Ljava/lang/IllegalStateException;

    invoke-direct {v3, v13}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 236
    .end local v14    # "previousPeriod":Landroidx/media3/exoplayer/source/MediaPeriod;
    :cond_2
    :goto_2
    goto :goto_3

    .line 244
    :cond_3
    cmp-long v10, v8, v1

    if-nez v10, :cond_4

    goto :goto_3

    .line 245
    :cond_4
    new-instance v3, Ljava/lang/IllegalStateException;

    const-string v4, "Conflicting discontinuities."

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 247
    :cond_5
    cmp-long v10, v1, v10

    if-eqz v10, :cond_7

    .line 249
    invoke-interface {v7, v1, v2}, Landroidx/media3/exoplayer/source/MediaPeriod;->seekToUs(J)J

    move-result-wide v10

    cmp-long v10, v10, v1

    if-nez v10, :cond_6

    goto :goto_3

    .line 250
    :cond_6
    new-instance v3, Ljava/lang/IllegalStateException;

    invoke-direct {v3, v13}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 230
    .end local v7    # "period":Landroidx/media3/exoplayer/source/MediaPeriod;
    .end local v8    # "otherDiscontinuityUs":J
    :cond_7
    :goto_3
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 254
    :cond_8
    return-wide v1
.end method

.method public reevaluateBuffer(J)V
    .locals 1
    .param p1, "positionUs"    # J

    .line 200
    iget-object v0, p0, Landroidx/media3/exoplayer/source/MergingMediaPeriod;->compositeSequenceableLoader:Landroidx/media3/exoplayer/source/SequenceableLoader;

    invoke-interface {v0, p1, p2}, Landroidx/media3/exoplayer/source/SequenceableLoader;->reevaluateBuffer(J)V

    .line 201
    return-void
.end method

.method public seekToUs(J)J
    .locals 3
    .param p1, "positionUs"    # J

    .line 264
    iget-object v0, p0, Landroidx/media3/exoplayer/source/MergingMediaPeriod;->enabledPeriods:[Landroidx/media3/exoplayer/source/MediaPeriod;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-interface {v0, p1, p2}, Landroidx/media3/exoplayer/source/MediaPeriod;->seekToUs(J)J

    move-result-wide p1

    .line 266
    const/4 v0, 0x1

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Landroidx/media3/exoplayer/source/MergingMediaPeriod;->enabledPeriods:[Landroidx/media3/exoplayer/source/MediaPeriod;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 267
    iget-object v1, p0, Landroidx/media3/exoplayer/source/MergingMediaPeriod;->enabledPeriods:[Landroidx/media3/exoplayer/source/MediaPeriod;

    aget-object v1, v1, v0

    invoke-interface {v1, p1, p2}, Landroidx/media3/exoplayer/source/MediaPeriod;->seekToUs(J)J

    move-result-wide v1

    cmp-long v1, v1, p1

    if-nez v1, :cond_0

    .line 266
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 268
    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Unexpected child seekToUs result."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 271
    .end local v0    # "i":I
    :cond_1
    return-wide p1
.end method

.method public selectTracks([Landroidx/media3/exoplayer/trackselection/ExoTrackSelection;[Z[Landroidx/media3/exoplayer/source/SampleStream;[ZJ)J
    .locals 19
    .param p1, "selections"    # [Landroidx/media3/exoplayer/trackselection/ExoTrackSelection;
    .param p2, "mayRetainStreamFlags"    # [Z
    .param p3, "streams"    # [Landroidx/media3/exoplayer/source/SampleStream;
    .param p4, "streamResetFlags"    # [Z
    .param p5, "positionUs"    # J

    .line 121
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p3

    array-length v3, v1

    new-array v3, v3, [I

    .line 122
    .local v3, "streamChildIndices":[I
    array-length v4, v1

    new-array v4, v4, [I

    .line 123
    .local v4, "selectionChildIndices":[I
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    array-length v6, v1

    const/4 v8, 0x0

    if-ge v5, v6, :cond_3

    .line 124
    aget-object v6, v2, v5

    if-nez v6, :cond_0

    const/4 v7, 0x0

    goto :goto_1

    :cond_0
    iget-object v6, v0, Landroidx/media3/exoplayer/source/MergingMediaPeriod;->streamPeriodIndices:Ljava/util/IdentityHashMap;

    aget-object v7, v2, v5

    invoke-virtual {v6, v7}, Ljava/util/IdentityHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    move-object v7, v6

    check-cast v7, Ljava/lang/Integer;

    .line 125
    .local v7, "streamChildIndex":Ljava/lang/Integer;
    :goto_1
    const/4 v6, -0x1

    if-nez v7, :cond_1

    move v9, v6

    goto :goto_2

    :cond_1
    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v9

    :goto_2
    aput v9, v3, v5

    .line 126
    aget-object v9, v1, v5

    if-eqz v9, :cond_2

    .line 127
    aget-object v6, v1, v5

    invoke-interface {v6}, Landroidx/media3/exoplayer/trackselection/ExoTrackSelection;->getTrackGroup()Landroidx/media3/common/TrackGroup;

    move-result-object v6

    .line 129
    .local v6, "mergedTrackGroup":Landroidx/media3/common/TrackGroup;
    iget-object v9, v6, Landroidx/media3/common/TrackGroup;->id:Ljava/lang/String;

    iget-object v10, v6, Landroidx/media3/common/TrackGroup;->id:Ljava/lang/String;

    .line 130
    const-string v11, ":"

    invoke-virtual {v10, v11}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v10

    invoke-virtual {v9, v8, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    aput v8, v4, v5

    .line 131
    .end local v6    # "mergedTrackGroup":Landroidx/media3/common/TrackGroup;
    goto :goto_3

    .line 132
    :cond_2
    aput v6, v4, v5

    .line 123
    .end local v7    # "streamChildIndex":Ljava/lang/Integer;
    :goto_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 135
    .end local v5    # "i":I
    :cond_3
    iget-object v5, v0, Landroidx/media3/exoplayer/source/MergingMediaPeriod;->streamPeriodIndices:Ljava/util/IdentityHashMap;

    invoke-virtual {v5}, Ljava/util/IdentityHashMap;->clear()V

    .line 137
    array-length v5, v1

    new-array v5, v5, [Landroidx/media3/exoplayer/source/SampleStream;

    .line 138
    .local v5, "newStreams":[Landroidx/media3/exoplayer/source/SampleStream;
    array-length v6, v1

    new-array v12, v6, [Landroidx/media3/exoplayer/source/SampleStream;

    .line 139
    .local v12, "childStreams":[Landroidx/media3/exoplayer/source/SampleStream;
    array-length v6, v1

    new-array v10, v6, [Landroidx/media3/exoplayer/trackselection/ExoTrackSelection;

    .line 140
    .local v10, "childSelections":[Landroidx/media3/exoplayer/trackselection/ExoTrackSelection;
    new-instance v6, Ljava/util/ArrayList;

    iget-object v9, v0, Landroidx/media3/exoplayer/source/MergingMediaPeriod;->periods:[Landroidx/media3/exoplayer/source/MediaPeriod;

    array-length v9, v9

    invoke-direct {v6, v9}, Ljava/util/ArrayList;-><init>(I)V

    .line 141
    .local v6, "enabledPeriodsList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroidx/media3/exoplayer/source/MediaPeriod;>;"
    const/4 v9, 0x0

    move-wide/from16 v14, p5

    .end local p5    # "positionUs":J
    .local v9, "i":I
    .local v14, "positionUs":J
    :goto_4
    iget-object v11, v0, Landroidx/media3/exoplayer/source/MergingMediaPeriod;->periods:[Landroidx/media3/exoplayer/source/MediaPeriod;

    array-length v11, v11

    if-ge v9, v11, :cond_e

    .line 142
    const/4 v11, 0x0

    .local v11, "j":I
    :goto_5
    array-length v13, v1

    if-ge v11, v13, :cond_6

    .line 143
    aget v13, v3, v11

    if-ne v13, v9, :cond_4

    aget-object v13, v2, v11

    goto :goto_6

    :cond_4
    const/4 v13, 0x0

    :goto_6
    aput-object v13, v12, v11

    .line 144
    aget v13, v4, v11

    if-ne v13, v9, :cond_5

    .line 145
    aget-object v13, v1, v11

    invoke-static {v13}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroidx/media3/exoplayer/trackselection/ExoTrackSelection;

    .line 146
    .local v13, "mergedTrackSelection":Landroidx/media3/exoplayer/trackselection/ExoTrackSelection;
    const/16 v16, 0x0

    invoke-interface {v13}, Landroidx/media3/exoplayer/trackselection/ExoTrackSelection;->getTrackGroup()Landroidx/media3/common/TrackGroup;

    move-result-object v7

    .line 147
    .local v7, "mergedTrackGroup":Landroidx/media3/common/TrackGroup;
    iget-object v8, v0, Landroidx/media3/exoplayer/source/MergingMediaPeriod;->childTrackGroupByMergedTrackGroup:Ljava/util/HashMap;

    .line 148
    invoke-virtual {v8, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroidx/media3/common/TrackGroup;

    invoke-static {v8}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroidx/media3/common/TrackGroup;

    .line 149
    .local v8, "childTrackGroup":Landroidx/media3/common/TrackGroup;
    move-object/from16 v17, v3

    .end local v3    # "streamChildIndices":[I
    .local v17, "streamChildIndices":[I
    new-instance v3, Landroidx/media3/exoplayer/source/MergingMediaPeriod$MergingMediaPeriodTrackSelection;

    invoke-direct {v3, v13, v8}, Landroidx/media3/exoplayer/source/MergingMediaPeriod$MergingMediaPeriodTrackSelection;-><init>(Landroidx/media3/exoplayer/trackselection/ExoTrackSelection;Landroidx/media3/common/TrackGroup;)V

    aput-object v3, v10, v11

    .line 151
    .end local v7    # "mergedTrackGroup":Landroidx/media3/common/TrackGroup;
    .end local v8    # "childTrackGroup":Landroidx/media3/common/TrackGroup;
    .end local v13    # "mergedTrackSelection":Landroidx/media3/exoplayer/trackselection/ExoTrackSelection;
    goto :goto_7

    .line 152
    .end local v17    # "streamChildIndices":[I
    .restart local v3    # "streamChildIndices":[I
    :cond_5
    move-object/from16 v17, v3

    const/16 v16, 0x0

    .end local v3    # "streamChildIndices":[I
    .restart local v17    # "streamChildIndices":[I
    aput-object v16, v10, v11

    .line 142
    :goto_7
    add-int/lit8 v11, v11, 0x1

    move-object/from16 v3, v17

    const/4 v8, 0x0

    goto :goto_5

    .end local v17    # "streamChildIndices":[I
    .restart local v3    # "streamChildIndices":[I
    :cond_6
    move-object/from16 v17, v3

    const/16 v16, 0x0

    .line 155
    .end local v3    # "streamChildIndices":[I
    .end local v11    # "j":I
    .restart local v17    # "streamChildIndices":[I
    iget-object v3, v0, Landroidx/media3/exoplayer/source/MergingMediaPeriod;->periods:[Landroidx/media3/exoplayer/source/MediaPeriod;

    aget-object v3, v3, v9

    .line 156
    move v11, v9

    move-object v9, v3

    move v3, v11

    move-object/from16 v11, p2

    move-object/from16 v13, p4

    .end local v9    # "i":I
    .local v3, "i":I
    invoke-interface/range {v9 .. v15}, Landroidx/media3/exoplayer/source/MediaPeriod;->selectTracks([Landroidx/media3/exoplayer/trackselection/ExoTrackSelection;[Z[Landroidx/media3/exoplayer/source/SampleStream;[ZJ)J

    move-result-wide v7

    .line 158
    .local v7, "selectPositionUs":J
    if-nez v3, :cond_7

    .line 159
    move-wide v13, v7

    move-wide v14, v13

    .end local v14    # "positionUs":J
    .local v13, "positionUs":J
    goto :goto_8

    .line 160
    .end local v13    # "positionUs":J
    .restart local v14    # "positionUs":J
    :cond_7
    cmp-long v9, v7, v14

    if-nez v9, :cond_d

    .line 163
    :goto_8
    const/4 v9, 0x0

    .line 164
    .local v9, "periodEnabled":Z
    const/4 v11, 0x0

    .restart local v11    # "j":I
    :goto_9
    array-length v13, v1

    if-ge v11, v13, :cond_b

    .line 165
    aget v13, v4, v11

    if-ne v13, v3, :cond_9

    .line 167
    aget-object v13, v12, v11

    invoke-static {v13}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroidx/media3/exoplayer/source/SampleStream;

    .line 168
    .local v13, "childStream":Landroidx/media3/exoplayer/source/SampleStream;
    aget-object v18, v12, v11

    aput-object v18, v5, v11

    .line 169
    const/4 v9, 0x1

    .line 170
    iget-object v1, v0, Landroidx/media3/exoplayer/source/MergingMediaPeriod;->streamPeriodIndices:Ljava/util/IdentityHashMap;

    move-object/from16 v18, v4

    .end local v4    # "selectionChildIndices":[I
    .local v18, "selectionChildIndices":[I
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v13, v4}, Ljava/util/IdentityHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 171
    .end local v13    # "childStream":Landroidx/media3/exoplayer/source/SampleStream;
    :cond_8
    goto :goto_b

    .end local v18    # "selectionChildIndices":[I
    .restart local v4    # "selectionChildIndices":[I
    :cond_9
    move-object/from16 v18, v4

    .end local v4    # "selectionChildIndices":[I
    .restart local v18    # "selectionChildIndices":[I
    aget v1, v17, v11

    if-ne v1, v3, :cond_8

    .line 173
    aget-object v1, v12, v11

    if-nez v1, :cond_a

    const/4 v1, 0x1

    goto :goto_a

    :cond_a
    const/4 v1, 0x0

    :goto_a
    invoke-static {v1}, Lcom/google/common/base/Preconditions;->checkState(Z)V

    .line 164
    :goto_b
    add-int/lit8 v11, v11, 0x1

    move-object/from16 v1, p1

    move-object/from16 v4, v18

    goto :goto_9

    .end local v18    # "selectionChildIndices":[I
    .restart local v4    # "selectionChildIndices":[I
    :cond_b
    move-object/from16 v18, v4

    .line 176
    .end local v4    # "selectionChildIndices":[I
    .end local v11    # "j":I
    .restart local v18    # "selectionChildIndices":[I
    if-eqz v9, :cond_c

    .line 177
    iget-object v1, v0, Landroidx/media3/exoplayer/source/MergingMediaPeriod;->periods:[Landroidx/media3/exoplayer/source/MediaPeriod;

    aget-object v1, v1, v3

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 141
    .end local v7    # "selectPositionUs":J
    .end local v9    # "periodEnabled":Z
    :cond_c
    add-int/lit8 v9, v3, 0x1

    move-object/from16 v1, p1

    move-object/from16 v3, v17

    move-object/from16 v4, v18

    const/4 v8, 0x0

    .end local v3    # "i":I
    .local v9, "i":I
    goto/16 :goto_4

    .line 161
    .end local v9    # "i":I
    .end local v18    # "selectionChildIndices":[I
    .restart local v3    # "i":I
    .restart local v4    # "selectionChildIndices":[I
    .restart local v7    # "selectPositionUs":J
    :cond_d
    move-object/from16 v18, v4

    .end local v4    # "selectionChildIndices":[I
    .restart local v18    # "selectionChildIndices":[I
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v4, "Children enabled at different positions."

    invoke-direct {v1, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 141
    .end local v7    # "selectPositionUs":J
    .end local v17    # "streamChildIndices":[I
    .end local v18    # "selectionChildIndices":[I
    .local v3, "streamChildIndices":[I
    .restart local v4    # "selectionChildIndices":[I
    .restart local v9    # "i":I
    :cond_e
    move-object/from16 v17, v3

    .line 181
    .end local v3    # "streamChildIndices":[I
    .end local v9    # "i":I
    .restart local v17    # "streamChildIndices":[I
    array-length v1, v5

    const/4 v3, 0x0

    invoke-static {v5, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 183
    new-array v1, v3, [Landroidx/media3/exoplayer/source/MediaPeriod;

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroidx/media3/exoplayer/source/MediaPeriod;

    iput-object v1, v0, Landroidx/media3/exoplayer/source/MergingMediaPeriod;->enabledPeriods:[Landroidx/media3/exoplayer/source/MediaPeriod;

    .line 184
    iget-object v1, v0, Landroidx/media3/exoplayer/source/MergingMediaPeriod;->compositeSequenceableLoaderFactory:Landroidx/media3/exoplayer/source/CompositeSequenceableLoaderFactory;

    new-instance v3, Landroidx/media3/exoplayer/source/MergingMediaPeriod$$ExternalSyntheticLambda0;

    invoke-direct {v3}, Landroidx/media3/exoplayer/source/MergingMediaPeriod$$ExternalSyntheticLambda0;-><init>()V

    .line 187
    invoke-static {v6, v3}, Lcom/google/common/collect/Lists;->transform(Ljava/util/List;Lcom/google/common/base/Function;)Ljava/util/List;

    move-result-object v3

    .line 185
    invoke-interface {v1, v6, v3}, Landroidx/media3/exoplayer/source/CompositeSequenceableLoaderFactory;->create(Ljava/util/List;Ljava/util/List;)Landroidx/media3/exoplayer/source/SequenceableLoader;

    move-result-object v1

    iput-object v1, v0, Landroidx/media3/exoplayer/source/MergingMediaPeriod;->compositeSequenceableLoader:Landroidx/media3/exoplayer/source/SequenceableLoader;

    .line 188
    return-wide v14
.end method

.method public setEndPositionUs(J)J
    .locals 9
    .param p1, "endPositionUs"    # J

    .line 282
    const/4 v0, 0x1

    .line 283
    .local v0, "supported":Z
    iget-object v1, p0, Landroidx/media3/exoplayer/source/MergingMediaPeriod;->periods:[Landroidx/media3/exoplayer/source/MediaPeriod;

    array-length v2, v1

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v2, :cond_1

    aget-object v5, v1, v4

    .line 284
    .local v5, "period":Landroidx/media3/exoplayer/source/MediaPeriod;
    invoke-interface {v5, p1, p2}, Landroidx/media3/exoplayer/source/MediaPeriod;->setEndPositionUs(J)J

    move-result-wide v6

    .line 285
    .local v6, "actualEndPositionUs":J
    cmp-long v8, v6, p1

    if-nez v8, :cond_0

    const/4 v8, 0x1

    goto :goto_1

    :cond_0
    move v8, v3

    :goto_1
    and-int/2addr v0, v8

    .line 283
    .end local v5    # "period":Landroidx/media3/exoplayer/source/MediaPeriod;
    .end local v6    # "actualEndPositionUs":J
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 287
    :cond_1
    if-eqz v0, :cond_2

    move-wide v1, p1

    goto :goto_2

    :cond_2
    const-wide/high16 v1, -0x8000000000000000L

    :goto_2
    return-wide v1
.end method
