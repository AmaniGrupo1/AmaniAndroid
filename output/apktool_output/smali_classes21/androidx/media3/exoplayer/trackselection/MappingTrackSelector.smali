.class public abstract Landroidx/media3/exoplayer/trackselection/MappingTrackSelector;
.super Landroidx/media3/exoplayer/trackselection/TrackSelector;
.source "MappingTrackSelector.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media3/exoplayer/trackselection/MappingTrackSelector$MappedTrackInfo;
    }
.end annotation


# instance fields
.field private currentMappedTrackInfo:Landroidx/media3/exoplayer/trackselection/MappingTrackSelector$MappedTrackInfo;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 59
    invoke-direct {p0}, Landroidx/media3/exoplayer/trackselection/TrackSelector;-><init>()V

    return-void
.end method

.method private static findRenderer([Landroidx/media3/exoplayer/RendererCapabilities;Landroidx/media3/common/TrackGroup;[IZ)I
    .locals 8
    .param p0, "rendererCapabilities"    # [Landroidx/media3/exoplayer/RendererCapabilities;
    .param p1, "group"    # Landroidx/media3/common/TrackGroup;
    .param p2, "rendererTrackGroupCounts"    # [I
    .param p3, "preferUnassociatedRenderer"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media3/exoplayer/ExoPlaybackException;
        }
    .end annotation

    .line 504
    array-length v0, p0

    .line 505
    .local v0, "bestRendererIndex":I
    const/4 v1, 0x0

    .line 506
    .local v1, "bestFormatSupportLevel":I
    const/4 v2, 0x1

    .line 507
    .local v2, "bestRendererIsUnassociated":Z
    const/4 v3, 0x0

    .local v3, "rendererIndex":I
    :goto_0
    array-length v4, p0

    if-ge v3, v4, :cond_4

    .line 508
    aget-object v4, p0, v3

    .line 509
    .local v4, "rendererCapability":Landroidx/media3/exoplayer/RendererCapabilities;
    const/4 v5, 0x0

    .line 510
    .local v5, "formatSupportLevel":I
    const/4 v6, 0x0

    .local v6, "trackIndex":I
    :goto_1
    iget v7, p1, Landroidx/media3/common/TrackGroup;->length:I

    if-ge v6, v7, :cond_0

    .line 512
    nop

    .line 514
    invoke-virtual {p1, v6}, Landroidx/media3/common/TrackGroup;->getFormat(I)Landroidx/media3/common/Format;

    move-result-object v7

    invoke-interface {v4, v7}, Landroidx/media3/exoplayer/RendererCapabilities;->supportsFormat(Landroidx/media3/common/Format;)I

    move-result v7

    .line 513
    invoke-static {v7}, Landroidx/media3/exoplayer/RendererCapabilities;->getFormatSupport(I)I

    move-result v7

    .line 515
    .local v7, "trackFormatSupportLevel":I
    invoke-static {v5, v7}, Ljava/lang/Math;->max(II)I

    move-result v5

    .line 510
    .end local v7    # "trackFormatSupportLevel":I
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 517
    .end local v6    # "trackIndex":I
    :cond_0
    aget v6, p2, v3

    if-nez v6, :cond_1

    const/4 v6, 0x1

    goto :goto_2

    :cond_1
    const/4 v6, 0x0

    .line 518
    .local v6, "rendererIsUnassociated":Z
    :goto_2
    if-gt v5, v1, :cond_2

    if-ne v5, v1, :cond_3

    if-eqz p3, :cond_3

    if-nez v2, :cond_3

    if-eqz v6, :cond_3

    .line 523
    :cond_2
    move v0, v3

    .line 524
    move v1, v5

    .line 525
    move v2, v6

    .line 507
    .end local v4    # "rendererCapability":Landroidx/media3/exoplayer/RendererCapabilities;
    .end local v5    # "formatSupportLevel":I
    .end local v6    # "rendererIsUnassociated":Z
    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 528
    .end local v3    # "rendererIndex":I
    :cond_4
    return v0
.end method

.method private static getFormatSupport(Landroidx/media3/exoplayer/RendererCapabilities;Landroidx/media3/common/TrackGroup;)[I
    .locals 3
    .param p0, "rendererCapabilities"    # Landroidx/media3/exoplayer/RendererCapabilities;
    .param p1, "group"    # Landroidx/media3/common/TrackGroup;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media3/exoplayer/ExoPlaybackException;
        }
    .end annotation

    .line 542
    iget v0, p1, Landroidx/media3/common/TrackGroup;->length:I

    new-array v0, v0, [I

    .line 543
    .local v0, "formatSupport":[I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget v2, p1, Landroidx/media3/common/TrackGroup;->length:I

    if-ge v1, v2, :cond_0

    .line 544
    invoke-virtual {p1, v1}, Landroidx/media3/common/TrackGroup;->getFormat(I)Landroidx/media3/common/Format;

    move-result-object v2

    invoke-interface {p0, v2}, Landroidx/media3/exoplayer/RendererCapabilities;->supportsFormat(Landroidx/media3/common/Format;)I

    move-result v2

    aput v2, v0, v1

    .line 543
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 546
    .end local v1    # "i":I
    :cond_0
    return-object v0
.end method

.method private static getMixedMimeTypeAdaptationSupports([Landroidx/media3/exoplayer/RendererCapabilities;)[I
    .locals 3
    .param p0, "rendererCapabilities"    # [Landroidx/media3/exoplayer/RendererCapabilities;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media3/exoplayer/ExoPlaybackException;
        }
    .end annotation

    .line 560
    array-length v0, p0

    new-array v0, v0, [I

    .line 561
    .local v0, "mixedMimeTypeAdaptationSupport":[I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    .line 562
    aget-object v2, p0, v1

    invoke-interface {v2}, Landroidx/media3/exoplayer/RendererCapabilities;->supportsMixedMimeTypeAdaptation()I

    move-result v2

    aput v2, v0, v1

    .line 561
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 564
    .end local v1    # "i":I
    :cond_0
    return-object v0
.end method


# virtual methods
.method public final getCurrentMappedTrackInfo()Landroidx/media3/exoplayer/trackselection/MappingTrackSelector$MappedTrackInfo;
    .locals 1

    .line 341
    iget-object v0, p0, Landroidx/media3/exoplayer/trackselection/MappingTrackSelector;->currentMappedTrackInfo:Landroidx/media3/exoplayer/trackselection/MappingTrackSelector$MappedTrackInfo;

    return-object v0
.end method

.method public final onSelectionActivated(Ljava/lang/Object;)V
    .locals 1
    .param p1, "info"    # Ljava/lang/Object;

    .line 348
    move-object v0, p1

    check-cast v0, Landroidx/media3/exoplayer/trackselection/MappingTrackSelector$MappedTrackInfo;

    iput-object v0, p0, Landroidx/media3/exoplayer/trackselection/MappingTrackSelector;->currentMappedTrackInfo:Landroidx/media3/exoplayer/trackselection/MappingTrackSelector$MappedTrackInfo;

    .line 349
    return-void
.end method

.method protected abstract selectTracks(Landroidx/media3/exoplayer/trackselection/MappingTrackSelector$MappedTrackInfo;[[[I[ILandroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;Landroidx/media3/common/Timeline;)Landroid/util/Pair;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/media3/exoplayer/trackselection/MappingTrackSelector$MappedTrackInfo;",
            "[[[I[I",
            "Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;",
            "Landroidx/media3/common/Timeline;",
            ")",
            "Landroid/util/Pair<",
            "[",
            "Landroidx/media3/exoplayer/RendererConfiguration;",
            "[",
            "Landroidx/media3/exoplayer/trackselection/ExoTrackSelection;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media3/exoplayer/ExoPlaybackException;
        }
    .end annotation
.end method

.method public final selectTracks([Landroidx/media3/exoplayer/RendererCapabilities;Landroidx/media3/exoplayer/source/TrackGroupArray;Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;Landroidx/media3/common/Timeline;)Landroidx/media3/exoplayer/trackselection/TrackSelectorResult;
    .locals 16
    .param p1, "rendererCapabilities"    # [Landroidx/media3/exoplayer/RendererCapabilities;
    .param p2, "trackGroups"    # Landroidx/media3/exoplayer/source/TrackGroupArray;
    .param p3, "periodId"    # Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;
    .param p4, "timeline"    # Landroidx/media3/common/Timeline;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media3/exoplayer/ExoPlaybackException;
        }
    .end annotation

    .line 361
    move-object/from16 v0, p1

    move-object/from16 v1, p2

    array-length v2, v0

    const/4 v3, 0x1

    add-int/2addr v2, v3

    new-array v2, v2, [I

    .line 362
    .local v2, "rendererTrackGroupCounts":[I
    array-length v4, v0

    add-int/2addr v4, v3

    new-array v4, v4, [[Landroidx/media3/common/TrackGroup;

    .line 363
    .local v4, "rendererTrackGroups":[[Landroidx/media3/common/TrackGroup;
    array-length v5, v0

    add-int/2addr v5, v3

    new-array v11, v5, [[[I

    .line 364
    .local v11, "rendererFormatSupports":[[[I
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    array-length v6, v4

    if-ge v5, v6, :cond_0

    .line 365
    iget v6, v1, Landroidx/media3/exoplayer/source/TrackGroupArray;->length:I

    new-array v6, v6, [Landroidx/media3/common/TrackGroup;

    aput-object v6, v4, v5

    .line 366
    iget v6, v1, Landroidx/media3/exoplayer/source/TrackGroupArray;->length:I

    new-array v6, v6, [[I

    aput-object v6, v11, v5

    .line 364
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 371
    .end local v5    # "i":I
    :cond_0
    nop

    .line 372
    invoke-static {v0}, Landroidx/media3/exoplayer/trackselection/MappingTrackSelector;->getMixedMimeTypeAdaptationSupports([Landroidx/media3/exoplayer/RendererCapabilities;)[I

    move-result-object v9

    .line 376
    .local v9, "rendererMixedMimeTypeAdaptationSupports":[I
    const/4 v5, 0x0

    .local v5, "groupIndex":I
    :goto_1
    iget v6, v1, Landroidx/media3/exoplayer/source/TrackGroupArray;->length:I

    if-ge v5, v6, :cond_3

    .line 377
    invoke-virtual {v1, v5}, Landroidx/media3/exoplayer/source/TrackGroupArray;->get(I)Landroidx/media3/common/TrackGroup;

    move-result-object v6

    .line 379
    .local v6, "group":Landroidx/media3/common/TrackGroup;
    iget v7, v6, Landroidx/media3/common/TrackGroup;->type:I

    const/4 v8, 0x5

    if-ne v7, v8, :cond_1

    move v7, v3

    goto :goto_2

    :cond_1
    const/4 v7, 0x0

    .line 380
    .local v7, "preferUnassociatedRenderer":Z
    :goto_2
    nop

    .line 381
    invoke-static {v0, v6, v2, v7}, Landroidx/media3/exoplayer/trackselection/MappingTrackSelector;->findRenderer([Landroidx/media3/exoplayer/RendererCapabilities;Landroidx/media3/common/TrackGroup;[IZ)I

    move-result v8

    .line 386
    .local v8, "rendererIndex":I
    array-length v10, v0

    if-ne v8, v10, :cond_2

    .line 387
    iget v10, v6, Landroidx/media3/common/TrackGroup;->length:I

    new-array v10, v10, [I

    goto :goto_3

    .line 388
    :cond_2
    aget-object v10, v0, v8

    invoke-static {v10, v6}, Landroidx/media3/exoplayer/trackselection/MappingTrackSelector;->getFormatSupport(Landroidx/media3/exoplayer/RendererCapabilities;Landroidx/media3/common/TrackGroup;)[I

    move-result-object v10

    :goto_3
    nop

    .line 390
    .local v10, "rendererFormatSupport":[I
    aget v12, v2, v8

    .line 391
    .local v12, "rendererTrackGroupCount":I
    aget-object v13, v4, v8

    aput-object v6, v13, v12

    .line 392
    aget-object v13, v11, v8

    aput-object v10, v13, v12

    .line 393
    aget v13, v2, v8

    add-int/2addr v13, v3

    aput v13, v2, v8

    .line 376
    .end local v6    # "group":Landroidx/media3/common/TrackGroup;
    .end local v7    # "preferUnassociatedRenderer":Z
    .end local v8    # "rendererIndex":I
    .end local v10    # "rendererFormatSupport":[I
    .end local v12    # "rendererTrackGroupCount":I
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 397
    .end local v5    # "groupIndex":I
    :cond_3
    array-length v3, v0

    new-array v3, v3, [Landroidx/media3/exoplayer/source/TrackGroupArray;

    .line 398
    .local v3, "rendererTrackGroupArrays":[Landroidx/media3/exoplayer/source/TrackGroupArray;
    array-length v5, v0

    new-array v7, v5, [Ljava/lang/String;

    .line 399
    .local v7, "rendererNames":[Ljava/lang/String;
    array-length v5, v0

    new-array v8, v5, [I

    .line 400
    .local v8, "rendererTrackTypes":[I
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_4
    array-length v6, v0

    if-ge v5, v6, :cond_4

    .line 401
    aget v6, v2, v5

    .line 402
    .local v6, "rendererTrackGroupCount":I
    new-instance v10, Landroidx/media3/exoplayer/source/TrackGroupArray;

    aget-object v12, v4, v5

    .line 404
    invoke-static {v12, v6}, Landroidx/media3/common/util/Util;->nullSafeArrayCopy([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v12

    check-cast v12, [Landroidx/media3/common/TrackGroup;

    invoke-direct {v10, v12}, Landroidx/media3/exoplayer/source/TrackGroupArray;-><init>([Landroidx/media3/common/TrackGroup;)V

    aput-object v10, v3, v5

    .line 405
    aget-object v10, v11, v5

    .line 406
    invoke-static {v10, v6}, Landroidx/media3/common/util/Util;->nullSafeArrayCopy([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v10

    check-cast v10, [[I

    aput-object v10, v11, v5

    .line 407
    aget-object v10, v0, v5

    invoke-interface {v10}, Landroidx/media3/exoplayer/RendererCapabilities;->getName()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v7, v5

    .line 408
    aget-object v10, v0, v5

    invoke-interface {v10}, Landroidx/media3/exoplayer/RendererCapabilities;->getTrackType()I

    move-result v10

    aput v10, v8, v5

    .line 400
    .end local v6    # "rendererTrackGroupCount":I
    add-int/lit8 v5, v5, 0x1

    goto :goto_4

    .line 412
    .end local v5    # "i":I
    :cond_4
    array-length v5, v0

    aget v5, v2, v5

    .line 413
    .local v5, "unmappedTrackGroupCount":I
    new-instance v12, Landroidx/media3/exoplayer/source/TrackGroupArray;

    array-length v6, v0

    aget-object v6, v4, v6

    .line 415
    invoke-static {v6, v5}, Landroidx/media3/common/util/Util;->nullSafeArrayCopy([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Landroidx/media3/common/TrackGroup;

    invoke-direct {v12, v6}, Landroidx/media3/exoplayer/source/TrackGroupArray;-><init>([Landroidx/media3/common/TrackGroup;)V

    .line 419
    .local v12, "unmappedTrackGroupArray":Landroidx/media3/exoplayer/source/TrackGroupArray;
    new-instance v6, Landroidx/media3/exoplayer/trackselection/MappingTrackSelector$MappedTrackInfo;

    move-object v10, v9

    move-object v9, v3

    .end local v3    # "rendererTrackGroupArrays":[Landroidx/media3/exoplayer/source/TrackGroupArray;
    .local v9, "rendererTrackGroupArrays":[Landroidx/media3/exoplayer/source/TrackGroupArray;
    .local v10, "rendererMixedMimeTypeAdaptationSupports":[I
    invoke-direct/range {v6 .. v12}, Landroidx/media3/exoplayer/trackselection/MappingTrackSelector$MappedTrackInfo;-><init>([Ljava/lang/String;[I[Landroidx/media3/exoplayer/source/TrackGroupArray;[I[[[ILandroidx/media3/exoplayer/source/TrackGroupArray;)V

    move-object v13, v8

    move-object v9, v10

    move-object v14, v12

    move-object v12, v7

    .end local v7    # "rendererNames":[Ljava/lang/String;
    .end local v8    # "rendererTrackTypes":[I
    .end local v10    # "rendererMixedMimeTypeAdaptationSupports":[I
    .restart local v3    # "rendererTrackGroupArrays":[Landroidx/media3/exoplayer/source/TrackGroupArray;
    .local v9, "rendererMixedMimeTypeAdaptationSupports":[I
    .local v12, "rendererNames":[Ljava/lang/String;
    .local v13, "rendererTrackTypes":[I
    .local v14, "unmappedTrackGroupArray":Landroidx/media3/exoplayer/source/TrackGroupArray;
    move-object v7, v6

    .line 428
    .local v7, "mappedTrackInfo":Landroidx/media3/exoplayer/trackselection/MappingTrackSelector$MappedTrackInfo;
    nop

    .line 429
    move-object/from16 v6, p0

    move-object/from16 v10, p3

    move-object v8, v11

    move-object/from16 v11, p4

    .end local v11    # "rendererFormatSupports":[[[I
    .local v8, "rendererFormatSupports":[[[I
    invoke-virtual/range {v6 .. v11}, Landroidx/media3/exoplayer/trackselection/MappingTrackSelector;->selectTracks(Landroidx/media3/exoplayer/trackselection/MappingTrackSelector$MappedTrackInfo;[[[I[ILandroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;Landroidx/media3/common/Timeline;)Landroid/util/Pair;

    move-result-object v15

    .line 436
    move-object v11, v8

    .end local v8    # "rendererFormatSupports":[[[I
    .restart local v11    # "rendererFormatSupports":[[[I
    .local v15, "result":Landroid/util/Pair;, "Landroid/util/Pair<[Landroidx/media3/exoplayer/RendererConfiguration;[Landroidx/media3/exoplayer/trackselection/ExoTrackSelection;>;"
    iget-object v6, v15, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v6, [Landroidx/media3/exoplayer/trackselection/TrackSelection;

    invoke-static {v7, v6}, Landroidx/media3/exoplayer/trackselection/TrackSelectionUtil;->buildTracks(Landroidx/media3/exoplayer/trackselection/MappingTrackSelector$MappedTrackInfo;[Landroidx/media3/exoplayer/trackselection/TrackSelection;)Landroidx/media3/common/Tracks;

    move-result-object v6

    .line 438
    .local v6, "tracks":Landroidx/media3/common/Tracks;
    new-instance v8, Landroidx/media3/exoplayer/trackselection/TrackSelectorResult;

    iget-object v10, v15, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v10, [Landroidx/media3/exoplayer/RendererConfiguration;

    iget-object v0, v15, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, [Landroidx/media3/exoplayer/trackselection/ExoTrackSelection;

    invoke-direct {v8, v10, v0, v6, v7}, Landroidx/media3/exoplayer/trackselection/TrackSelectorResult;-><init>([Landroidx/media3/exoplayer/RendererConfiguration;[Landroidx/media3/exoplayer/trackselection/ExoTrackSelection;Landroidx/media3/common/Tracks;Ljava/lang/Object;)V

    return-object v8
.end method
