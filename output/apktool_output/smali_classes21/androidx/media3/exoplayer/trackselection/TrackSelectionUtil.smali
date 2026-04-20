.class public final Landroidx/media3/exoplayer/trackselection/TrackSelectionUtil;
.super Ljava/lang/Object;
.source "TrackSelectionUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media3/exoplayer/trackselection/TrackSelectionUtil$AdaptiveTrackSelectionFactory;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static buildTracks(Landroidx/media3/exoplayer/trackselection/MappingTrackSelector$MappedTrackInfo;[Landroidx/media3/exoplayer/trackselection/TrackSelection;)Landroidx/media3/common/Tracks;
    .locals 4
    .param p0, "mappedTrackInfo"    # Landroidx/media3/exoplayer/trackselection/MappingTrackSelector$MappedTrackInfo;
    .param p1, "selections"    # [Landroidx/media3/exoplayer/trackselection/TrackSelection;

    .line 119
    array-length v0, p1

    new-array v0, v0, [Ljava/util/List;

    .line 120
    .local v0, "listSelections":[Ljava/util/List;, "[Ljava/util/List<+Landroidx/media3/exoplayer/trackselection/TrackSelection;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_1

    .line 121
    aget-object v2, p1, v1

    .line 122
    .local v2, "selection":Landroidx/media3/exoplayer/trackselection/TrackSelection;
    if-eqz v2, :cond_0

    invoke-static {v2}, Lcom/google/common/collect/ImmutableList;->of(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList;

    move-result-object v3

    goto :goto_1

    :cond_0
    invoke-static {}, Lcom/google/common/collect/ImmutableList;->of()Lcom/google/common/collect/ImmutableList;

    move-result-object v3

    :goto_1
    aput-object v3, v0, v1

    .line 120
    .end local v2    # "selection":Landroidx/media3/exoplayer/trackselection/TrackSelection;
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 124
    .end local v1    # "i":I
    :cond_1
    invoke-static {p0, v0}, Landroidx/media3/exoplayer/trackselection/TrackSelectionUtil;->buildTracks(Landroidx/media3/exoplayer/trackselection/MappingTrackSelector$MappedTrackInfo;[Ljava/util/List;)Landroidx/media3/common/Tracks;

    move-result-object v1

    return-object v1
.end method

.method public static buildTracks(Landroidx/media3/exoplayer/trackselection/MappingTrackSelector$MappedTrackInfo;[Ljava/util/List;)Landroidx/media3/common/Tracks;
    .locals 17
    .param p0, "mappedTrackInfo"    # Landroidx/media3/exoplayer/trackselection/MappingTrackSelector$MappedTrackInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/media3/exoplayer/trackselection/MappingTrackSelector$MappedTrackInfo;",
            "[",
            "Ljava/util/List<",
            "+",
            "Landroidx/media3/exoplayer/trackselection/TrackSelection;",
            ">;)",
            "Landroidx/media3/common/Tracks;"
        }
    .end annotation

    .line 139
    .local p1, "selections":[Ljava/util/List;, "[Ljava/util/List<+Landroidx/media3/exoplayer/trackselection/TrackSelection;>;"
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    new-instance v2, Lcom/google/common/collect/ImmutableList$Builder;

    invoke-direct {v2}, Lcom/google/common/collect/ImmutableList$Builder;-><init>()V

    .line 140
    .local v2, "trackGroups":Lcom/google/common/collect/ImmutableList$Builder;, "Lcom/google/common/collect/ImmutableList$Builder<Landroidx/media3/common/Tracks$Group;>;"
    const/4 v3, 0x0

    .line 141
    .local v3, "rendererIndex":I
    :goto_0
    invoke-virtual {v0}, Landroidx/media3/exoplayer/trackselection/MappingTrackSelector$MappedTrackInfo;->getRendererCount()I

    move-result v4

    const/4 v5, 0x0

    if-ge v3, v4, :cond_7

    .line 143
    invoke-virtual {v0, v3}, Landroidx/media3/exoplayer/trackselection/MappingTrackSelector$MappedTrackInfo;->getTrackGroups(I)Landroidx/media3/exoplayer/source/TrackGroupArray;

    move-result-object v4

    .line 144
    .local v4, "trackGroupArray":Landroidx/media3/exoplayer/source/TrackGroupArray;
    const/4 v6, 0x0

    .local v6, "groupIndex":I
    :goto_1
    iget v7, v4, Landroidx/media3/exoplayer/source/TrackGroupArray;->length:I

    if-ge v6, v7, :cond_6

    .line 145
    invoke-virtual {v4, v6}, Landroidx/media3/exoplayer/source/TrackGroupArray;->get(I)Landroidx/media3/common/TrackGroup;

    move-result-object v7

    .line 146
    .local v7, "trackGroup":Landroidx/media3/common/TrackGroup;
    nop

    .line 147
    invoke-virtual {v0, v3, v6, v5}, Landroidx/media3/exoplayer/trackselection/MappingTrackSelector$MappedTrackInfo;->getAdaptiveSupport(IIZ)I

    move-result v8

    if-eqz v8, :cond_0

    const/4 v8, 0x1

    goto :goto_2

    :cond_0
    move v8, v5

    .line 150
    .local v8, "adaptiveSupported":Z
    :goto_2
    iget v9, v7, Landroidx/media3/common/TrackGroup;->length:I

    new-array v9, v9, [I

    .line 151
    .local v9, "trackSupport":[I
    iget v10, v7, Landroidx/media3/common/TrackGroup;->length:I

    new-array v10, v10, [Z

    .line 152
    .local v10, "selected":[Z
    const/4 v11, 0x0

    .local v11, "trackIndex":I
    :goto_3
    iget v12, v7, Landroidx/media3/common/TrackGroup;->length:I

    if-ge v11, v12, :cond_5

    .line 153
    nop

    .line 154
    invoke-virtual {v0, v3, v6, v11}, Landroidx/media3/exoplayer/trackselection/MappingTrackSelector$MappedTrackInfo;->getTrackSupport(III)I

    move-result v12

    aput v12, v9, v11

    .line 155
    const/4 v12, 0x0

    .line 156
    .local v12, "isTrackSelected":Z
    array-length v13, v1

    move v14, v5

    :goto_4
    if-ge v14, v13, :cond_4

    aget-object v15, v1, v14

    .line 157
    .local v15, "selection":Ljava/util/List;, "Ljava/util/List<+Landroidx/media3/exoplayer/trackselection/TrackSelection;>;"
    const/16 v16, 0x0

    move/from16 v5, v16

    .local v5, "j":I
    :goto_5
    invoke-interface {v15}, Ljava/util/List;->size()I

    move-result v0

    if-ge v5, v0, :cond_3

    .line 158
    invoke-interface {v15, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media3/exoplayer/trackselection/TrackSelection;

    .line 159
    .local v0, "trackSelection":Landroidx/media3/exoplayer/trackselection/TrackSelection;
    invoke-interface {v0}, Landroidx/media3/exoplayer/trackselection/TrackSelection;->getTrackGroup()Landroidx/media3/common/TrackGroup;

    move-result-object v1

    invoke-virtual {v1, v7}, Landroidx/media3/common/TrackGroup;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 160
    invoke-interface {v0, v11}, Landroidx/media3/exoplayer/trackselection/TrackSelection;->indexOf(I)I

    move-result v1

    move-object/from16 v16, v0

    .end local v0    # "trackSelection":Landroidx/media3/exoplayer/trackselection/TrackSelection;
    .local v16, "trackSelection":Landroidx/media3/exoplayer/trackselection/TrackSelection;
    const/4 v0, -0x1

    if-eq v1, v0, :cond_2

    .line 161
    const/4 v0, 0x1

    .line 162
    .end local v12    # "isTrackSelected":Z
    .local v0, "isTrackSelected":Z
    move v12, v0

    goto :goto_6

    .line 159
    .end local v16    # "trackSelection":Landroidx/media3/exoplayer/trackselection/TrackSelection;
    .local v0, "trackSelection":Landroidx/media3/exoplayer/trackselection/TrackSelection;
    .restart local v12    # "isTrackSelected":Z
    :cond_1
    move-object/from16 v16, v0

    .line 157
    .end local v0    # "trackSelection":Landroidx/media3/exoplayer/trackselection/TrackSelection;
    :cond_2
    add-int/lit8 v5, v5, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    goto :goto_5

    .line 156
    .end local v5    # "j":I
    .end local v15    # "selection":Ljava/util/List;, "Ljava/util/List<+Landroidx/media3/exoplayer/trackselection/TrackSelection;>;"
    :cond_3
    :goto_6
    add-int/lit8 v14, v14, 0x1

    const/4 v5, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    goto :goto_4

    .line 166
    :cond_4
    aput-boolean v12, v10, v11

    .line 152
    .end local v12    # "isTrackSelected":Z
    add-int/lit8 v11, v11, 0x1

    const/4 v5, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    goto :goto_3

    .line 168
    .end local v11    # "trackIndex":I
    :cond_5
    new-instance v0, Landroidx/media3/common/Tracks$Group;

    invoke-direct {v0, v7, v8, v9, v10}, Landroidx/media3/common/Tracks$Group;-><init>(Landroidx/media3/common/TrackGroup;Z[I[Z)V

    invoke-virtual {v2, v0}, Lcom/google/common/collect/ImmutableList$Builder;->add(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList$Builder;

    .line 144
    .end local v7    # "trackGroup":Landroidx/media3/common/TrackGroup;
    .end local v8    # "adaptiveSupported":Z
    .end local v9    # "trackSupport":[I
    .end local v10    # "selected":[Z
    add-int/lit8 v6, v6, 0x1

    const/4 v5, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    goto :goto_1

    .line 142
    .end local v4    # "trackGroupArray":Landroidx/media3/exoplayer/source/TrackGroupArray;
    .end local v6    # "groupIndex":I
    :cond_6
    add-int/lit8 v3, v3, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    goto/16 :goto_0

    .line 171
    .end local v3    # "rendererIndex":I
    :cond_7
    invoke-virtual/range {p0 .. p0}, Landroidx/media3/exoplayer/trackselection/MappingTrackSelector$MappedTrackInfo;->getUnmappedTrackGroups()Landroidx/media3/exoplayer/source/TrackGroupArray;

    move-result-object v0

    .line 172
    .local v0, "unmappedTrackGroups":Landroidx/media3/exoplayer/source/TrackGroupArray;
    const/4 v1, 0x0

    .local v1, "groupIndex":I
    :goto_7
    iget v3, v0, Landroidx/media3/exoplayer/source/TrackGroupArray;->length:I

    if-ge v1, v3, :cond_8

    .line 173
    invoke-virtual {v0, v1}, Landroidx/media3/exoplayer/source/TrackGroupArray;->get(I)Landroidx/media3/common/TrackGroup;

    move-result-object v3

    .line 174
    .local v3, "trackGroup":Landroidx/media3/common/TrackGroup;
    iget v4, v3, Landroidx/media3/common/TrackGroup;->length:I

    new-array v4, v4, [I

    .line 175
    .local v4, "trackSupport":[I
    const/4 v5, 0x0

    invoke-static {v4, v5}, Ljava/util/Arrays;->fill([II)V

    .line 176
    iget v6, v3, Landroidx/media3/common/TrackGroup;->length:I

    new-array v6, v6, [Z

    .line 177
    .local v6, "selected":[Z
    new-instance v7, Landroidx/media3/common/Tracks$Group;

    invoke-direct {v7, v3, v5, v4, v6}, Landroidx/media3/common/Tracks$Group;-><init>(Landroidx/media3/common/TrackGroup;Z[I[Z)V

    invoke-virtual {v2, v7}, Lcom/google/common/collect/ImmutableList$Builder;->add(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList$Builder;

    .line 172
    .end local v3    # "trackGroup":Landroidx/media3/common/TrackGroup;
    .end local v4    # "trackSupport":[I
    .end local v6    # "selected":[Z
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 180
    .end local v1    # "groupIndex":I
    :cond_8
    new-instance v1, Landroidx/media3/common/Tracks;

    invoke-virtual {v2}, Lcom/google/common/collect/ImmutableList$Builder;->build()Lcom/google/common/collect/ImmutableList;

    move-result-object v3

    invoke-direct {v1, v3}, Landroidx/media3/common/Tracks;-><init>(Ljava/util/List;)V

    return-object v1
.end method

.method public static createTrackSelectionsForDefinitions([Landroidx/media3/exoplayer/trackselection/ExoTrackSelection$Definition;Landroidx/media3/exoplayer/trackselection/TrackSelectionUtil$AdaptiveTrackSelectionFactory;)[Landroidx/media3/exoplayer/trackselection/ExoTrackSelection;
    .locals 8
    .param p0, "definitions"    # [Landroidx/media3/exoplayer/trackselection/ExoTrackSelection$Definition;
    .param p1, "adaptiveTrackSelectionFactory"    # Landroidx/media3/exoplayer/trackselection/TrackSelectionUtil$AdaptiveTrackSelectionFactory;

    .line 65
    array-length v0, p0

    new-array v0, v0, [Landroidx/media3/exoplayer/trackselection/ExoTrackSelection;

    .line 66
    .local v0, "selections":[Landroidx/media3/exoplayer/trackselection/ExoTrackSelection;
    const/4 v1, 0x0

    .line 67
    .local v1, "createdAdaptiveTrackSelection":Z
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v3, p0

    if-ge v2, v3, :cond_2

    .line 68
    aget-object v3, p0, v2

    .line 69
    .local v3, "definition":Landroidx/media3/exoplayer/trackselection/ExoTrackSelection$Definition;
    if-nez v3, :cond_0

    .line 70
    goto :goto_1

    .line 72
    :cond_0
    iget-object v4, v3, Landroidx/media3/exoplayer/trackselection/ExoTrackSelection$Definition;->tracks:[I

    array-length v4, v4

    const/4 v5, 0x1

    if-le v4, v5, :cond_1

    if-nez v1, :cond_1

    .line 73
    const/4 v1, 0x1

    .line 74
    invoke-interface {p1, v3}, Landroidx/media3/exoplayer/trackselection/TrackSelectionUtil$AdaptiveTrackSelectionFactory;->createAdaptiveTrackSelection(Landroidx/media3/exoplayer/trackselection/ExoTrackSelection$Definition;)Landroidx/media3/exoplayer/trackselection/ExoTrackSelection;

    move-result-object v4

    aput-object v4, v0, v2

    goto :goto_1

    .line 76
    :cond_1
    new-instance v4, Landroidx/media3/exoplayer/trackselection/FixedTrackSelection;

    iget-object v5, v3, Landroidx/media3/exoplayer/trackselection/ExoTrackSelection$Definition;->group:Landroidx/media3/common/TrackGroup;

    iget-object v6, v3, Landroidx/media3/exoplayer/trackselection/ExoTrackSelection$Definition;->tracks:[I

    const/4 v7, 0x0

    aget v6, v6, v7

    iget v7, v3, Landroidx/media3/exoplayer/trackselection/ExoTrackSelection$Definition;->type:I

    invoke-direct {v4, v5, v6, v7}, Landroidx/media3/exoplayer/trackselection/FixedTrackSelection;-><init>(Landroidx/media3/common/TrackGroup;II)V

    aput-object v4, v0, v2

    .line 67
    .end local v3    # "definition":Landroidx/media3/exoplayer/trackselection/ExoTrackSelection$Definition;
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 81
    .end local v2    # "i":I
    :cond_2
    return-object v0
.end method

.method public static getMaxVideoSizeInViewport(ZIIII)Landroid/graphics/Point;
    .locals 3
    .param p0, "orientationMayChange"    # Z
    .param p1, "viewportWidth"    # I
    .param p2, "viewportHeight"    # I
    .param p3, "videoWidth"    # I
    .param p4, "videoHeight"    # I

    .line 193
    if-eqz p0, :cond_2

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-le p3, p4, :cond_0

    move v2, v0

    goto :goto_0

    :cond_0
    move v2, v1

    :goto_0
    if-le p1, p2, :cond_1

    goto :goto_1

    :cond_1
    move v0, v1

    :goto_1
    if-eq v2, v0, :cond_2

    .line 195
    move v0, p1

    .line 196
    .local v0, "tempViewportWidth":I
    move p1, p2

    .line 197
    move p2, v0

    .line 200
    .end local v0    # "tempViewportWidth":I
    :cond_2
    mul-int v0, p3, p2

    mul-int v1, p4, p1

    if-lt v0, v1, :cond_3

    .line 202
    new-instance v0, Landroid/graphics/Point;

    mul-int v1, p1, p4

    invoke-static {v1, p3}, Landroidx/media3/common/util/Util;->ceilDivide(II)I

    move-result v1

    invoke-direct {v0, p1, v1}, Landroid/graphics/Point;-><init>(II)V

    return-object v0

    .line 205
    :cond_3
    new-instance v0, Landroid/graphics/Point;

    mul-int v1, p2, p3

    invoke-static {v1, p4}, Landroidx/media3/common/util/Util;->ceilDivide(II)I

    move-result v1

    invoke-direct {v0, v1, p2}, Landroid/graphics/Point;-><init>(II)V

    return-object v0
.end method

.method public static updateParametersWithOverride(Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters;ILandroidx/media3/exoplayer/source/TrackGroupArray;ZLandroidx/media3/exoplayer/trackselection/DefaultTrackSelector$SelectionOverride;)Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters;
    .locals 2
    .param p0, "parameters"    # Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters;
    .param p1, "rendererIndex"    # I
    .param p2, "trackGroupArray"    # Landroidx/media3/exoplayer/source/TrackGroupArray;
    .param p3, "isDisabled"    # Z
    .param p4, "override"    # Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$SelectionOverride;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 95
    nop

    .line 97
    invoke-virtual {p0}, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters;->buildUpon()Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters$Builder;

    move-result-object v0

    .line 98
    invoke-virtual {v0, p1}, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters$Builder;->clearSelectionOverrides(I)Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters$Builder;

    move-result-object v0

    .line 99
    invoke-virtual {v0, p1, p3}, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters$Builder;->setRendererDisabled(IZ)Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters$Builder;

    move-result-object v0

    .line 100
    .local v0, "builder":Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters$Builder;
    if-eqz p4, :cond_0

    .line 101
    invoke-virtual {v0, p1, p2, p4}, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters$Builder;->setSelectionOverride(ILandroidx/media3/exoplayer/source/TrackGroupArray;Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$SelectionOverride;)Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters$Builder;

    .line 103
    :cond_0
    invoke-virtual {v0}, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters$Builder;->build()Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters;

    move-result-object v1

    return-object v1
.end method
