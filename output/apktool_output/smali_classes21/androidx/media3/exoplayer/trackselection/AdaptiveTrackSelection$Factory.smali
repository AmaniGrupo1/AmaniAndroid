.class public Landroidx/media3/exoplayer/trackselection/AdaptiveTrackSelection$Factory;
.super Ljava/lang/Object;
.source "AdaptiveTrackSelection.java"

# interfaces
.implements Landroidx/media3/exoplayer/trackselection/ExoTrackSelection$Factory;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media3/exoplayer/trackselection/AdaptiveTrackSelection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Factory"
.end annotation


# instance fields
.field private final bandwidthFraction:F

.field private final bufferedFractionToLiveEdgeForQualityIncrease:F

.field private final clock:Landroidx/media3/common/util/Clock;

.field private final maxDurationForQualityDecreaseMs:I

.field private final maxHeightToDiscard:I

.field private final maxWidthToDiscard:I

.field private final minDurationForQualityIncreaseMs:I

.field private final minDurationToRetainAfterDiscardMs:I


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 67
    const/16 v0, 0x61a8

    const v1, 0x3f333333    # 0.7f

    const/16 v2, 0x2710

    invoke-direct {p0, v2, v0, v0, v1}, Landroidx/media3/exoplayer/trackselection/AdaptiveTrackSelection$Factory;-><init>(IIIF)V

    .line 72
    return-void
.end method

.method public constructor <init>(IIIF)V
    .locals 9
    .param p1, "minDurationForQualityIncreaseMs"    # I
    .param p2, "maxDurationForQualityDecreaseMs"    # I
    .param p3, "minDurationToRetainAfterDiscardMs"    # I
    .param p4, "bandwidthFraction"    # F

    .line 95
    const/high16 v7, 0x3f400000    # 0.75f

    sget-object v8, Landroidx/media3/common/util/Clock;->DEFAULT:Landroidx/media3/common/util/Clock;

    const/16 v4, 0x4ff

    const/16 v5, 0x2cf

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v6, p4

    .end local p1    # "minDurationForQualityIncreaseMs":I
    .end local p2    # "maxDurationForQualityDecreaseMs":I
    .end local p3    # "minDurationToRetainAfterDiscardMs":I
    .end local p4    # "bandwidthFraction":F
    .local v1, "minDurationForQualityIncreaseMs":I
    .local v2, "maxDurationForQualityDecreaseMs":I
    .local v3, "minDurationToRetainAfterDiscardMs":I
    .local v6, "bandwidthFraction":F
    invoke-direct/range {v0 .. v8}, Landroidx/media3/exoplayer/trackselection/AdaptiveTrackSelection$Factory;-><init>(IIIIIFFLandroidx/media3/common/util/Clock;)V

    .line 104
    return-void
.end method

.method public constructor <init>(IIIFFLandroidx/media3/common/util/Clock;)V
    .locals 9
    .param p1, "minDurationForQualityIncreaseMs"    # I
    .param p2, "maxDurationForQualityDecreaseMs"    # I
    .param p3, "minDurationToRetainAfterDiscardMs"    # I
    .param p4, "bandwidthFraction"    # F
    .param p5, "bufferedFractionToLiveEdgeForQualityIncrease"    # F
    .param p6, "clock"    # Landroidx/media3/common/util/Clock;

    .line 174
    const/16 v4, 0x4ff

    const/16 v5, 0x2cf

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v6, p4

    move v7, p5

    move-object v8, p6

    .end local p1    # "minDurationForQualityIncreaseMs":I
    .end local p2    # "maxDurationForQualityDecreaseMs":I
    .end local p3    # "minDurationToRetainAfterDiscardMs":I
    .end local p4    # "bandwidthFraction":F
    .end local p5    # "bufferedFractionToLiveEdgeForQualityIncrease":F
    .end local p6    # "clock":Landroidx/media3/common/util/Clock;
    .local v1, "minDurationForQualityIncreaseMs":I
    .local v2, "maxDurationForQualityDecreaseMs":I
    .local v3, "minDurationToRetainAfterDiscardMs":I
    .local v6, "bandwidthFraction":F
    .local v7, "bufferedFractionToLiveEdgeForQualityIncrease":F
    .local v8, "clock":Landroidx/media3/common/util/Clock;
    invoke-direct/range {v0 .. v8}, Landroidx/media3/exoplayer/trackselection/AdaptiveTrackSelection$Factory;-><init>(IIIIIFFLandroidx/media3/common/util/Clock;)V

    .line 183
    return-void
.end method

.method public constructor <init>(IIIIIF)V
    .locals 9
    .param p1, "minDurationForQualityIncreaseMs"    # I
    .param p2, "maxDurationForQualityDecreaseMs"    # I
    .param p3, "minDurationToRetainAfterDiscardMs"    # I
    .param p4, "maxWidthToDiscard"    # I
    .param p5, "maxHeightToDiscard"    # I
    .param p6, "bandwidthFraction"    # F

    .line 133
    const/high16 v7, 0x3f400000    # 0.75f

    sget-object v8, Landroidx/media3/common/util/Clock;->DEFAULT:Landroidx/media3/common/util/Clock;

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    .end local p1    # "minDurationForQualityIncreaseMs":I
    .end local p2    # "maxDurationForQualityDecreaseMs":I
    .end local p3    # "minDurationToRetainAfterDiscardMs":I
    .end local p4    # "maxWidthToDiscard":I
    .end local p5    # "maxHeightToDiscard":I
    .end local p6    # "bandwidthFraction":F
    .local v1, "minDurationForQualityIncreaseMs":I
    .local v2, "maxDurationForQualityDecreaseMs":I
    .local v3, "minDurationToRetainAfterDiscardMs":I
    .local v4, "maxWidthToDiscard":I
    .local v5, "maxHeightToDiscard":I
    .local v6, "bandwidthFraction":F
    invoke-direct/range {v0 .. v8}, Landroidx/media3/exoplayer/trackselection/AdaptiveTrackSelection$Factory;-><init>(IIIIIFFLandroidx/media3/common/util/Clock;)V

    .line 142
    return-void
.end method

.method public constructor <init>(IIIIIFFLandroidx/media3/common/util/Clock;)V
    .locals 0
    .param p1, "minDurationForQualityIncreaseMs"    # I
    .param p2, "maxDurationForQualityDecreaseMs"    # I
    .param p3, "minDurationToRetainAfterDiscardMs"    # I
    .param p4, "maxWidthToDiscard"    # I
    .param p5, "maxHeightToDiscard"    # I
    .param p6, "bandwidthFraction"    # F
    .param p7, "bufferedFractionToLiveEdgeForQualityIncrease"    # F
    .param p8, "clock"    # Landroidx/media3/common/util/Clock;

    .line 220
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 221
    iput p1, p0, Landroidx/media3/exoplayer/trackselection/AdaptiveTrackSelection$Factory;->minDurationForQualityIncreaseMs:I

    .line 222
    iput p2, p0, Landroidx/media3/exoplayer/trackselection/AdaptiveTrackSelection$Factory;->maxDurationForQualityDecreaseMs:I

    .line 223
    iput p3, p0, Landroidx/media3/exoplayer/trackselection/AdaptiveTrackSelection$Factory;->minDurationToRetainAfterDiscardMs:I

    .line 224
    iput p4, p0, Landroidx/media3/exoplayer/trackselection/AdaptiveTrackSelection$Factory;->maxWidthToDiscard:I

    .line 225
    iput p5, p0, Landroidx/media3/exoplayer/trackselection/AdaptiveTrackSelection$Factory;->maxHeightToDiscard:I

    .line 226
    iput p6, p0, Landroidx/media3/exoplayer/trackselection/AdaptiveTrackSelection$Factory;->bandwidthFraction:F

    .line 227
    iput p7, p0, Landroidx/media3/exoplayer/trackselection/AdaptiveTrackSelection$Factory;->bufferedFractionToLiveEdgeForQualityIncrease:F

    .line 229
    iput-object p8, p0, Landroidx/media3/exoplayer/trackselection/AdaptiveTrackSelection$Factory;->clock:Landroidx/media3/common/util/Clock;

    .line 230
    return-void
.end method


# virtual methods
.method protected createAdaptiveTrackSelection(Landroidx/media3/common/TrackGroup;[IILandroidx/media3/exoplayer/upstream/BandwidthMeter;Lcom/google/common/collect/ImmutableList;)Landroidx/media3/exoplayer/trackselection/AdaptiveTrackSelection;
    .locals 18
    .param p1, "group"    # Landroidx/media3/common/TrackGroup;
    .param p2, "tracks"    # [I
    .param p3, "type"    # I
    .param p4, "bandwidthMeter"    # Landroidx/media3/exoplayer/upstream/BandwidthMeter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/media3/common/TrackGroup;",
            "[II",
            "Landroidx/media3/exoplayer/upstream/BandwidthMeter;",
            "Lcom/google/common/collect/ImmutableList<",
            "Landroidx/media3/exoplayer/trackselection/AdaptiveTrackSelection$AdaptationCheckpoint;",
            ">;)",
            "Landroidx/media3/exoplayer/trackselection/AdaptiveTrackSelection;"
        }
    .end annotation

    .line 279
    .local p5, "adaptationCheckpoints":Lcom/google/common/collect/ImmutableList;, "Lcom/google/common/collect/ImmutableList<Landroidx/media3/exoplayer/trackselection/AdaptiveTrackSelection$AdaptationCheckpoint;>;"
    move-object/from16 v0, p0

    new-instance v1, Landroidx/media3/exoplayer/trackselection/AdaptiveTrackSelection;

    iget v2, v0, Landroidx/media3/exoplayer/trackselection/AdaptiveTrackSelection$Factory;->minDurationForQualityIncreaseMs:I

    int-to-long v6, v2

    iget v2, v0, Landroidx/media3/exoplayer/trackselection/AdaptiveTrackSelection$Factory;->maxDurationForQualityDecreaseMs:I

    int-to-long v8, v2

    iget v2, v0, Landroidx/media3/exoplayer/trackselection/AdaptiveTrackSelection$Factory;->minDurationToRetainAfterDiscardMs:I

    int-to-long v10, v2

    iget v12, v0, Landroidx/media3/exoplayer/trackselection/AdaptiveTrackSelection$Factory;->maxWidthToDiscard:I

    iget v13, v0, Landroidx/media3/exoplayer/trackselection/AdaptiveTrackSelection$Factory;->maxHeightToDiscard:I

    iget v14, v0, Landroidx/media3/exoplayer/trackselection/AdaptiveTrackSelection$Factory;->bandwidthFraction:F

    iget v15, v0, Landroidx/media3/exoplayer/trackselection/AdaptiveTrackSelection$Factory;->bufferedFractionToLiveEdgeForQualityIncrease:F

    iget-object v2, v0, Landroidx/media3/exoplayer/trackselection/AdaptiveTrackSelection$Factory;->clock:Landroidx/media3/common/util/Clock;

    move-object/from16 v3, p2

    move/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v16, p5

    move-object/from16 v17, v2

    move-object/from16 v2, p1

    invoke-direct/range {v1 .. v17}, Landroidx/media3/exoplayer/trackselection/AdaptiveTrackSelection;-><init>(Landroidx/media3/common/TrackGroup;[IILandroidx/media3/exoplayer/upstream/BandwidthMeter;JJJIIFFLjava/util/List;Landroidx/media3/common/util/Clock;)V

    return-object v1
.end method

.method public final createTrackSelections([Landroidx/media3/exoplayer/trackselection/ExoTrackSelection$Definition;Landroidx/media3/exoplayer/upstream/BandwidthMeter;Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;Landroidx/media3/common/Timeline;)[Landroidx/media3/exoplayer/trackselection/ExoTrackSelection;
    .locals 15
    .param p1, "definitions"    # [Landroidx/media3/exoplayer/trackselection/ExoTrackSelection$Definition;
    .param p2, "bandwidthMeter"    # Landroidx/media3/exoplayer/upstream/BandwidthMeter;
    .param p3, "mediaPeriodId"    # Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;
    .param p4, "timeline"    # Landroidx/media3/common/Timeline;

    .line 238
    move-object/from16 v0, p1

    .line 239
    invoke-static {v0}, Landroidx/media3/exoplayer/trackselection/AdaptiveTrackSelection;->access$000([Landroidx/media3/exoplayer/trackselection/ExoTrackSelection$Definition;)Lcom/google/common/collect/ImmutableList;

    move-result-object v1

    .line 240
    .local v1, "adaptationCheckpoints":Lcom/google/common/collect/ImmutableList;, "Lcom/google/common/collect/ImmutableList<Lcom/google/common/collect/ImmutableList<Landroidx/media3/exoplayer/trackselection/AdaptiveTrackSelection$AdaptationCheckpoint;>;>;"
    array-length v2, v0

    new-array v2, v2, [Landroidx/media3/exoplayer/trackselection/ExoTrackSelection;

    .line 241
    .local v2, "selections":[Landroidx/media3/exoplayer/trackselection/ExoTrackSelection;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    array-length v4, v0

    if-ge v3, v4, :cond_3

    .line 242
    aget-object v4, v0, v3

    .line 243
    .local v4, "definition":Landroidx/media3/exoplayer/trackselection/ExoTrackSelection$Definition;
    if-eqz v4, :cond_2

    iget-object v5, v4, Landroidx/media3/exoplayer/trackselection/ExoTrackSelection$Definition;->tracks:[I

    array-length v5, v5

    if-nez v5, :cond_0

    .line 244
    goto :goto_2

    .line 246
    :cond_0
    nop

    .line 247
    iget-object v5, v4, Landroidx/media3/exoplayer/trackselection/ExoTrackSelection$Definition;->tracks:[I

    array-length v5, v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_1

    .line 248
    new-instance v5, Landroidx/media3/exoplayer/trackselection/FixedTrackSelection;

    iget-object v6, v4, Landroidx/media3/exoplayer/trackselection/ExoTrackSelection$Definition;->group:Landroidx/media3/common/TrackGroup;

    iget-object v7, v4, Landroidx/media3/exoplayer/trackselection/ExoTrackSelection$Definition;->tracks:[I

    const/4 v8, 0x0

    aget v7, v7, v8

    iget v8, v4, Landroidx/media3/exoplayer/trackselection/ExoTrackSelection$Definition;->type:I

    invoke-direct {v5, v6, v7, v8}, Landroidx/media3/exoplayer/trackselection/FixedTrackSelection;-><init>(Landroidx/media3/common/TrackGroup;II)V

    goto :goto_1

    .line 252
    :cond_1
    iget-object v10, v4, Landroidx/media3/exoplayer/trackselection/ExoTrackSelection$Definition;->group:Landroidx/media3/common/TrackGroup;

    iget-object v11, v4, Landroidx/media3/exoplayer/trackselection/ExoTrackSelection$Definition;->tracks:[I

    iget v12, v4, Landroidx/media3/exoplayer/trackselection/ExoTrackSelection$Definition;->type:I

    .line 257
    invoke-virtual {v1, v3}, Lcom/google/common/collect/ImmutableList;->get(I)Ljava/lang/Object;

    move-result-object v5

    move-object v14, v5

    check-cast v14, Lcom/google/common/collect/ImmutableList;

    .line 252
    move-object v9, p0

    move-object/from16 v13, p2

    invoke-virtual/range {v9 .. v14}, Landroidx/media3/exoplayer/trackselection/AdaptiveTrackSelection$Factory;->createAdaptiveTrackSelection(Landroidx/media3/common/TrackGroup;[IILandroidx/media3/exoplayer/upstream/BandwidthMeter;Lcom/google/common/collect/ImmutableList;)Landroidx/media3/exoplayer/trackselection/AdaptiveTrackSelection;

    move-result-object v5

    :goto_1
    aput-object v5, v2, v3

    .line 241
    .end local v4    # "definition":Landroidx/media3/exoplayer/trackselection/ExoTrackSelection$Definition;
    :cond_2
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 259
    .end local v3    # "i":I
    :cond_3
    return-object v2
.end method
