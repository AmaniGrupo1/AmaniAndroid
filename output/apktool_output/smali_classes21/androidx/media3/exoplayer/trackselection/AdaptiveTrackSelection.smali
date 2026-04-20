.class public Landroidx/media3/exoplayer/trackselection/AdaptiveTrackSelection;
.super Landroidx/media3/exoplayer/trackselection/BaseTrackSelection;
.source "AdaptiveTrackSelection.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media3/exoplayer/trackselection/AdaptiveTrackSelection$AdaptationCheckpoint;,
        Landroidx/media3/exoplayer/trackselection/AdaptiveTrackSelection$Factory;
    }
.end annotation


# static fields
.field public static final DEFAULT_BANDWIDTH_FRACTION:F = 0.7f

.field public static final DEFAULT_BUFFERED_FRACTION_TO_LIVE_EDGE_FOR_QUALITY_INCREASE:F = 0.75f

.field public static final DEFAULT_MAX_DURATION_FOR_QUALITY_DECREASE_MS:I = 0x61a8

.field public static final DEFAULT_MAX_HEIGHT_TO_DISCARD:I = 0x2cf

.field public static final DEFAULT_MAX_WIDTH_TO_DISCARD:I = 0x4ff

.field public static final DEFAULT_MIN_DURATION_FOR_QUALITY_INCREASE_MS:I = 0x2710

.field public static final DEFAULT_MIN_DURATION_TO_RETAIN_AFTER_DISCARD_MS:I = 0x61a8

.field private static final MIN_TIME_BETWEEN_BUFFER_REEVALUTATION_MS:J = 0x3e8L

.field private static final TAG:Ljava/lang/String; = "AdaptiveTrackSelection"


# instance fields
.field private final adaptationCheckpoints:Lcom/google/common/collect/ImmutableList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/ImmutableList<",
            "Landroidx/media3/exoplayer/trackselection/AdaptiveTrackSelection$AdaptationCheckpoint;",
            ">;"
        }
    .end annotation
.end field

.field private final bandwidthFraction:F

.field private final bandwidthMeter:Landroidx/media3/exoplayer/upstream/BandwidthMeter;

.field private final bufferedFractionToLiveEdgeForQualityIncrease:F

.field private final clock:Landroidx/media3/common/util/Clock;

.field private lastBufferEvaluationMediaChunk:Landroidx/media3/exoplayer/source/chunk/MediaChunk;

.field private lastBufferEvaluationMs:J

.field private latestBitrateEstimate:J

.field private final maxDurationForQualityDecreaseUs:J

.field private final maxHeightToDiscard:I

.field private final maxWidthToDiscard:I

.field private final minDurationForQualityIncreaseUs:J

.field private final minDurationToRetainAfterDiscardUs:J

.field private playbackSpeed:F

.field private reason:I

.field private selectedIndex:I


# direct methods
.method protected constructor <init>(Landroidx/media3/common/TrackGroup;[IILandroidx/media3/exoplayer/upstream/BandwidthMeter;JJJIIFFLjava/util/List;Landroidx/media3/common/util/Clock;)V
    .locals 9
    .param p1, "group"    # Landroidx/media3/common/TrackGroup;
    .param p2, "tracks"    # [I
    .param p3, "type"    # I
    .param p4, "bandwidthMeter"    # Landroidx/media3/exoplayer/upstream/BandwidthMeter;
    .param p5, "minDurationForQualityIncreaseMs"    # J
    .param p7, "maxDurationForQualityDecreaseMs"    # J
    .param p9, "minDurationToRetainAfterDiscardMs"    # J
    .param p11, "maxWidthToDiscard"    # I
    .param p12, "maxHeightToDiscard"    # I
    .param p13, "bandwidthFraction"    # F
    .param p14, "bufferedFractionToLiveEdgeForQualityIncrease"    # F
    .param p16, "clock"    # Landroidx/media3/common/util/Clock;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/media3/common/TrackGroup;",
            "[II",
            "Landroidx/media3/exoplayer/upstream/BandwidthMeter;",
            "JJJIIFF",
            "Ljava/util/List<",
            "Landroidx/media3/exoplayer/trackselection/AdaptiveTrackSelection$AdaptationCheckpoint;",
            ">;",
            "Landroidx/media3/common/util/Clock;",
            ")V"
        }
    .end annotation

    .line 392
    .local p15, "adaptationCheckpoints":Ljava/util/List;, "Ljava/util/List<Landroidx/media3/exoplayer/trackselection/AdaptiveTrackSelection$AdaptationCheckpoint;>;"
    invoke-direct/range {p0 .. p3}, Landroidx/media3/exoplayer/trackselection/BaseTrackSelection;-><init>(Landroidx/media3/common/TrackGroup;[II)V

    .line 393
    cmp-long v0, p9, p5

    if-gez v0, :cond_0

    .line 394
    const-string v0, "AdaptiveTrackSelection"

    const-string v1, "Adjusting minDurationToRetainAfterDiscardMs to be at least minDurationForQualityIncreaseMs"

    invoke-static {v0, v1}, Landroidx/media3/common/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 398
    move-wide v0, p5

    .end local p9    # "minDurationToRetainAfterDiscardMs":J
    .local v0, "minDurationToRetainAfterDiscardMs":J
    goto :goto_0

    .line 393
    .end local v0    # "minDurationToRetainAfterDiscardMs":J
    .restart local p9    # "minDurationToRetainAfterDiscardMs":J
    :cond_0
    move-wide/from16 v0, p9

    .line 400
    .end local p9    # "minDurationToRetainAfterDiscardMs":J
    .restart local v0    # "minDurationToRetainAfterDiscardMs":J
    :goto_0
    iput-object p4, p0, Landroidx/media3/exoplayer/trackselection/AdaptiveTrackSelection;->bandwidthMeter:Landroidx/media3/exoplayer/upstream/BandwidthMeter;

    .line 401
    const-wide/16 v2, 0x3e8

    mul-long v4, p5, v2

    iput-wide v4, p0, Landroidx/media3/exoplayer/trackselection/AdaptiveTrackSelection;->minDurationForQualityIncreaseUs:J

    .line 402
    mul-long v4, p7, v2

    iput-wide v4, p0, Landroidx/media3/exoplayer/trackselection/AdaptiveTrackSelection;->maxDurationForQualityDecreaseUs:J

    .line 403
    mul-long/2addr v2, v0

    iput-wide v2, p0, Landroidx/media3/exoplayer/trackselection/AdaptiveTrackSelection;->minDurationToRetainAfterDiscardUs:J

    .line 404
    move/from16 v2, p11

    iput v2, p0, Landroidx/media3/exoplayer/trackselection/AdaptiveTrackSelection;->maxWidthToDiscard:I

    .line 405
    move/from16 v3, p12

    iput v3, p0, Landroidx/media3/exoplayer/trackselection/AdaptiveTrackSelection;->maxHeightToDiscard:I

    .line 406
    move/from16 v4, p13

    iput v4, p0, Landroidx/media3/exoplayer/trackselection/AdaptiveTrackSelection;->bandwidthFraction:F

    .line 407
    move/from16 v5, p14

    iput v5, p0, Landroidx/media3/exoplayer/trackselection/AdaptiveTrackSelection;->bufferedFractionToLiveEdgeForQualityIncrease:F

    .line 409
    invoke-static/range {p15 .. p15}, Lcom/google/common/collect/ImmutableList;->copyOf(Ljava/util/Collection;)Lcom/google/common/collect/ImmutableList;

    move-result-object v6

    iput-object v6, p0, Landroidx/media3/exoplayer/trackselection/AdaptiveTrackSelection;->adaptationCheckpoints:Lcom/google/common/collect/ImmutableList;

    .line 410
    move-object/from16 v6, p16

    iput-object v6, p0, Landroidx/media3/exoplayer/trackselection/AdaptiveTrackSelection;->clock:Landroidx/media3/common/util/Clock;

    .line 411
    const/high16 v7, 0x3f800000    # 1.0f

    iput v7, p0, Landroidx/media3/exoplayer/trackselection/AdaptiveTrackSelection;->playbackSpeed:F

    .line 412
    const/4 v7, 0x0

    iput v7, p0, Landroidx/media3/exoplayer/trackselection/AdaptiveTrackSelection;->reason:I

    .line 413
    const-wide v7, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v7, p0, Landroidx/media3/exoplayer/trackselection/AdaptiveTrackSelection;->lastBufferEvaluationMs:J

    .line 414
    const-wide/32 v7, -0x7fffffff

    iput-wide v7, p0, Landroidx/media3/exoplayer/trackselection/AdaptiveTrackSelection;->latestBitrateEstimate:J

    .line 415
    return-void
.end method

.method public constructor <init>(Landroidx/media3/common/TrackGroup;[ILandroidx/media3/exoplayer/upstream/BandwidthMeter;)V
    .locals 17
    .param p1, "group"    # Landroidx/media3/common/TrackGroup;
    .param p2, "tracks"    # [I
    .param p3, "bandwidthMeter"    # Landroidx/media3/exoplayer/upstream/BandwidthMeter;

    .line 331
    nop

    .line 343
    invoke-static {}, Lcom/google/common/collect/ImmutableList;->of()Lcom/google/common/collect/ImmutableList;

    move-result-object v15

    sget-object v16, Landroidx/media3/common/util/Clock;->DEFAULT:Landroidx/media3/common/util/Clock;

    .line 331
    const/4 v3, 0x0

    const-wide/16 v5, 0x2710

    const-wide/16 v7, 0x61a8

    const-wide/16 v9, 0x61a8

    const/16 v11, 0x4ff

    const/16 v12, 0x2cf

    const v13, 0x3f333333    # 0.7f

    const/high16 v14, 0x3f400000    # 0.75f

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v4, p3

    invoke-direct/range {v0 .. v16}, Landroidx/media3/exoplayer/trackselection/AdaptiveTrackSelection;-><init>(Landroidx/media3/common/TrackGroup;[IILandroidx/media3/exoplayer/upstream/BandwidthMeter;JJJIIFFLjava/util/List;Landroidx/media3/common/util/Clock;)V

    .line 345
    return-void
.end method

.method static synthetic access$000([Landroidx/media3/exoplayer/trackselection/ExoTrackSelection$Definition;)Lcom/google/common/collect/ImmutableList;
    .locals 1
    .param p0, "x0"    # [Landroidx/media3/exoplayer/trackselection/ExoTrackSelection$Definition;

    .line 49
    invoke-static {p0}, Landroidx/media3/exoplayer/trackselection/AdaptiveTrackSelection;->getAdaptationCheckpoints([Landroidx/media3/exoplayer/trackselection/ExoTrackSelection$Definition;)Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    return-object v0
.end method

.method private static addCheckpoint(Ljava/util/List;[J)V
    .locals 7
    .param p1, "checkpointBitrates"    # [J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/google/common/collect/ImmutableList$Builder<",
            "Landroidx/media3/exoplayer/trackselection/AdaptiveTrackSelection$AdaptationCheckpoint;",
            ">;>;[J)V"
        }
    .end annotation

    .line 816
    .local p0, "checkPointBuilders":Ljava/util/List;, "Ljava/util/List<Lcom/google/common/collect/ImmutableList$Builder<Landroidx/media3/exoplayer/trackselection/AdaptiveTrackSelection$AdaptationCheckpoint;>;>;"
    const-wide/16 v0, 0x0

    .line 817
    .local v0, "totalBitrate":J
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v3, p1

    if-ge v2, v3, :cond_0

    .line 818
    aget-wide v3, p1, v2

    add-long/2addr v0, v3

    .line 817
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 820
    .end local v2    # "i":I
    :cond_0
    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_1
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_2

    .line 821
    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/common/collect/ImmutableList$Builder;

    .line 822
    .local v3, "builder":Lcom/google/common/collect/ImmutableList$Builder;, "Lcom/google/common/collect/ImmutableList$Builder<Landroidx/media3/exoplayer/trackselection/AdaptiveTrackSelection$AdaptationCheckpoint;>;"
    if-nez v3, :cond_1

    .line 823
    goto :goto_2

    .line 825
    :cond_1
    new-instance v4, Landroidx/media3/exoplayer/trackselection/AdaptiveTrackSelection$AdaptationCheckpoint;

    aget-wide v5, p1, v2

    invoke-direct {v4, v0, v1, v5, v6}, Landroidx/media3/exoplayer/trackselection/AdaptiveTrackSelection$AdaptationCheckpoint;-><init>(JJ)V

    invoke-virtual {v3, v4}, Lcom/google/common/collect/ImmutableList$Builder;->add(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList$Builder;

    .line 820
    .end local v3    # "builder":Lcom/google/common/collect/ImmutableList$Builder;, "Lcom/google/common/collect/ImmutableList$Builder<Landroidx/media3/exoplayer/trackselection/AdaptiveTrackSelection$AdaptationCheckpoint;>;"
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 829
    .end local v2    # "i":I
    :cond_2
    return-void
.end method

.method private determineIdealSelectedIndex(JJ)I
    .locals 6
    .param p1, "nowMs"    # J
    .param p3, "chunkDurationUs"    # J

    .line 600
    invoke-direct {p0, p3, p4}, Landroidx/media3/exoplayer/trackselection/AdaptiveTrackSelection;->getAllocatedBandwidth(J)J

    move-result-wide v0

    .line 601
    .local v0, "effectiveBitrate":J
    const/4 v2, 0x0

    .line 602
    .local v2, "lowestBitrateAllowedIndex":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    iget v4, p0, Landroidx/media3/exoplayer/trackselection/AdaptiveTrackSelection;->length:I

    if-ge v3, v4, :cond_3

    .line 603
    const-wide/high16 v4, -0x8000000000000000L

    cmp-long v4, p1, v4

    if-eqz v4, :cond_0

    invoke-virtual {p0, v3, p1, p2}, Landroidx/media3/exoplayer/trackselection/AdaptiveTrackSelection;->isTrackExcluded(IJ)Z

    move-result v4

    if-nez v4, :cond_2

    .line 604
    :cond_0
    invoke-virtual {p0, v3}, Landroidx/media3/exoplayer/trackselection/AdaptiveTrackSelection;->getFormat(I)Landroidx/media3/common/Format;

    move-result-object v4

    .line 605
    .local v4, "format":Landroidx/media3/common/Format;
    iget v5, v4, Landroidx/media3/common/Format;->bitrate:I

    invoke-virtual {p0, v4, v5, v0, v1}, Landroidx/media3/exoplayer/trackselection/AdaptiveTrackSelection;->canSelectFormat(Landroidx/media3/common/Format;IJ)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 606
    return v3

    .line 608
    :cond_1
    move v2, v3

    .line 602
    .end local v4    # "format":Landroidx/media3/common/Format;
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 612
    .end local v3    # "i":I
    :cond_3
    return v2
.end method

.method private static getAdaptationCheckpoints([Landroidx/media3/exoplayer/trackselection/ExoTrackSelection$Definition;)Lcom/google/common/collect/ImmutableList;
    .locals 12
    .param p0, "definitions"    # [Landroidx/media3/exoplayer/trackselection/ExoTrackSelection$Definition;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Landroidx/media3/exoplayer/trackselection/ExoTrackSelection$Definition;",
            ")",
            "Lcom/google/common/collect/ImmutableList<",
            "Lcom/google/common/collect/ImmutableList<",
            "Landroidx/media3/exoplayer/trackselection/AdaptiveTrackSelection$AdaptationCheckpoint;",
            ">;>;"
        }
    .end annotation

    .line 712
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 714
    .local v0, "checkPointBuilders":Ljava/util/List;, "Ljava/util/List<Lcom/google/common/collect/ImmutableList$Builder<Landroidx/media3/exoplayer/trackselection/AdaptiveTrackSelection$AdaptationCheckpoint;>;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, p0

    const-wide/16 v3, 0x0

    const/4 v5, 0x1

    if-ge v1, v2, :cond_1

    .line 715
    aget-object v2, p0, v1

    if-eqz v2, :cond_0

    aget-object v2, p0, v1

    iget-object v2, v2, Landroidx/media3/exoplayer/trackselection/ExoTrackSelection$Definition;->tracks:[I

    array-length v2, v2

    if-le v2, v5, :cond_0

    .line 716
    invoke-static {}, Lcom/google/common/collect/ImmutableList;->builder()Lcom/google/common/collect/ImmutableList$Builder;

    move-result-object v2

    .line 718
    .local v2, "builder":Lcom/google/common/collect/ImmutableList$Builder;, "Lcom/google/common/collect/ImmutableList$Builder<Landroidx/media3/exoplayer/trackselection/AdaptiveTrackSelection$AdaptationCheckpoint;>;"
    new-instance v5, Landroidx/media3/exoplayer/trackselection/AdaptiveTrackSelection$AdaptationCheckpoint;

    invoke-direct {v5, v3, v4, v3, v4}, Landroidx/media3/exoplayer/trackselection/AdaptiveTrackSelection$AdaptationCheckpoint;-><init>(JJ)V

    invoke-virtual {v2, v5}, Lcom/google/common/collect/ImmutableList$Builder;->add(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList$Builder;

    .line 719
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 720
    .end local v2    # "builder":Lcom/google/common/collect/ImmutableList$Builder;, "Lcom/google/common/collect/ImmutableList$Builder<Landroidx/media3/exoplayer/trackselection/AdaptiveTrackSelection$AdaptationCheckpoint;>;"
    goto :goto_1

    .line 721
    :cond_0
    const/4 v2, 0x0

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 714
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 725
    .end local v1    # "i":I
    :cond_1
    invoke-static {p0}, Landroidx/media3/exoplayer/trackselection/AdaptiveTrackSelection;->getSortedTrackBitrates([Landroidx/media3/exoplayer/trackselection/ExoTrackSelection$Definition;)[[J

    move-result-object v1

    .line 726
    .local v1, "trackBitrates":[[J
    array-length v2, v1

    new-array v2, v2, [I

    .line 727
    .local v2, "currentTrackIndices":[I
    array-length v6, v1

    new-array v6, v6, [J

    .line 728
    .local v6, "currentTrackBitrates":[J
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_2
    array-length v8, v1

    if-ge v7, v8, :cond_3

    .line 729
    aget-object v8, v1, v7

    array-length v8, v8

    if-nez v8, :cond_2

    move-wide v9, v3

    goto :goto_3

    :cond_2
    aget-object v8, v1, v7

    const/4 v9, 0x0

    aget-wide v9, v8, v9

    :goto_3
    aput-wide v9, v6, v7

    .line 728
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    .line 731
    .end local v7    # "i":I
    :cond_3
    invoke-static {v0, v6}, Landroidx/media3/exoplayer/trackselection/AdaptiveTrackSelection;->addCheckpoint(Ljava/util/List;[J)V

    .line 733
    invoke-static {v1}, Landroidx/media3/exoplayer/trackselection/AdaptiveTrackSelection;->getSwitchOrder([[J)Lcom/google/common/collect/ImmutableList;

    move-result-object v3

    .line 734
    .local v3, "switchOrder":Lcom/google/common/collect/ImmutableList;, "Lcom/google/common/collect/ImmutableList<Ljava/lang/Integer;>;"
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_4
    invoke-virtual {v3}, Lcom/google/common/collect/ImmutableList;->size()I

    move-result v7

    if-ge v4, v7, :cond_4

    .line 735
    invoke-virtual {v3, v4}, Lcom/google/common/collect/ImmutableList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    .line 736
    .local v7, "switchIndex":I
    aget v8, v2, v7

    add-int/2addr v8, v5

    aput v8, v2, v7

    .line 737
    .local v8, "newTrackIndex":I
    aget-object v9, v1, v7

    aget-wide v10, v9, v8

    aput-wide v10, v6, v7

    .line 738
    invoke-static {v0, v6}, Landroidx/media3/exoplayer/trackselection/AdaptiveTrackSelection;->addCheckpoint(Ljava/util/List;[J)V

    .line 734
    .end local v7    # "switchIndex":I
    .end local v8    # "newTrackIndex":I
    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    .line 741
    .end local v4    # "i":I
    :cond_4
    const/4 v4, 0x0

    .restart local v4    # "i":I
    :goto_5
    array-length v5, p0

    if-ge v4, v5, :cond_6

    .line 742
    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    if-eqz v5, :cond_5

    .line 743
    aget-wide v7, v6, v4

    const-wide/16 v9, 0x2

    mul-long/2addr v7, v9

    aput-wide v7, v6, v4

    .line 741
    :cond_5
    add-int/lit8 v4, v4, 0x1

    goto :goto_5

    .line 746
    .end local v4    # "i":I
    :cond_6
    invoke-static {v0, v6}, Landroidx/media3/exoplayer/trackselection/AdaptiveTrackSelection;->addCheckpoint(Ljava/util/List;[J)V

    .line 747
    invoke-static {}, Lcom/google/common/collect/ImmutableList;->builder()Lcom/google/common/collect/ImmutableList$Builder;

    move-result-object v4

    .line 748
    .local v4, "output":Lcom/google/common/collect/ImmutableList$Builder;, "Lcom/google/common/collect/ImmutableList$Builder<Lcom/google/common/collect/ImmutableList<Landroidx/media3/exoplayer/trackselection/AdaptiveTrackSelection$AdaptationCheckpoint;>;>;"
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_6
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v7

    if-ge v5, v7, :cond_8

    .line 749
    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/google/common/collect/ImmutableList$Builder;

    .line 750
    .local v7, "builder":Lcom/google/common/collect/ImmutableList$Builder;, "Lcom/google/common/collect/ImmutableList$Builder<Landroidx/media3/exoplayer/trackselection/AdaptiveTrackSelection$AdaptationCheckpoint;>;"
    if-nez v7, :cond_7

    invoke-static {}, Lcom/google/common/collect/ImmutableList;->of()Lcom/google/common/collect/ImmutableList;

    move-result-object v8

    goto :goto_7

    :cond_7
    invoke-virtual {v7}, Lcom/google/common/collect/ImmutableList$Builder;->build()Lcom/google/common/collect/ImmutableList;

    move-result-object v8

    :goto_7
    invoke-virtual {v4, v8}, Lcom/google/common/collect/ImmutableList$Builder;->add(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList$Builder;

    .line 748
    .end local v7    # "builder":Lcom/google/common/collect/ImmutableList$Builder;, "Lcom/google/common/collect/ImmutableList$Builder<Landroidx/media3/exoplayer/trackselection/AdaptiveTrackSelection$AdaptationCheckpoint;>;"
    add-int/lit8 v5, v5, 0x1

    goto :goto_6

    .line 752
    .end local v5    # "i":I
    :cond_8
    invoke-virtual {v4}, Lcom/google/common/collect/ImmutableList$Builder;->build()Lcom/google/common/collect/ImmutableList;

    move-result-object v5

    return-object v5
.end method

.method private getAllocatedBandwidth(J)J
    .locals 12
    .param p1, "chunkDurationUs"    # J

    .line 671
    invoke-direct {p0, p1, p2}, Landroidx/media3/exoplayer/trackselection/AdaptiveTrackSelection;->getTotalAllocatableBandwidth(J)J

    move-result-wide v0

    .line 672
    .local v0, "totalBandwidth":J
    iget-object v2, p0, Landroidx/media3/exoplayer/trackselection/AdaptiveTrackSelection;->adaptationCheckpoints:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v2}, Lcom/google/common/collect/ImmutableList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 673
    return-wide v0

    .line 675
    :cond_0
    const/4 v2, 0x1

    .line 676
    .local v2, "nextIndex":I
    :goto_0
    iget-object v3, p0, Landroidx/media3/exoplayer/trackselection/AdaptiveTrackSelection;->adaptationCheckpoints:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v3}, Lcom/google/common/collect/ImmutableList;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    if-ge v2, v3, :cond_1

    iget-object v3, p0, Landroidx/media3/exoplayer/trackselection/AdaptiveTrackSelection;->adaptationCheckpoints:Lcom/google/common/collect/ImmutableList;

    .line 677
    invoke-virtual {v3, v2}, Lcom/google/common/collect/ImmutableList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/media3/exoplayer/trackselection/AdaptiveTrackSelection$AdaptationCheckpoint;

    iget-wide v3, v3, Landroidx/media3/exoplayer/trackselection/AdaptiveTrackSelection$AdaptationCheckpoint;->totalBandwidth:J

    cmp-long v3, v3, v0

    if-gez v3, :cond_1

    .line 678
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 680
    :cond_1
    iget-object v3, p0, Landroidx/media3/exoplayer/trackselection/AdaptiveTrackSelection;->adaptationCheckpoints:Lcom/google/common/collect/ImmutableList;

    add-int/lit8 v4, v2, -0x1

    invoke-virtual {v3, v4}, Lcom/google/common/collect/ImmutableList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/media3/exoplayer/trackselection/AdaptiveTrackSelection$AdaptationCheckpoint;

    .line 681
    .local v3, "previous":Landroidx/media3/exoplayer/trackselection/AdaptiveTrackSelection$AdaptationCheckpoint;
    iget-object v4, p0, Landroidx/media3/exoplayer/trackselection/AdaptiveTrackSelection;->adaptationCheckpoints:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v4, v2}, Lcom/google/common/collect/ImmutableList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/media3/exoplayer/trackselection/AdaptiveTrackSelection$AdaptationCheckpoint;

    .line 682
    .local v4, "next":Landroidx/media3/exoplayer/trackselection/AdaptiveTrackSelection$AdaptationCheckpoint;
    iget-wide v5, v3, Landroidx/media3/exoplayer/trackselection/AdaptiveTrackSelection$AdaptationCheckpoint;->totalBandwidth:J

    sub-long v5, v0, v5

    long-to-float v5, v5

    iget-wide v6, v4, Landroidx/media3/exoplayer/trackselection/AdaptiveTrackSelection$AdaptationCheckpoint;->totalBandwidth:J

    iget-wide v8, v3, Landroidx/media3/exoplayer/trackselection/AdaptiveTrackSelection$AdaptationCheckpoint;->totalBandwidth:J

    sub-long/2addr v6, v8

    long-to-float v6, v6

    div-float/2addr v5, v6

    .line 685
    .local v5, "fractionBetweenCheckpoints":F
    iget-wide v6, v3, Landroidx/media3/exoplayer/trackselection/AdaptiveTrackSelection$AdaptationCheckpoint;->allocatedBandwidth:J

    iget-wide v8, v4, Landroidx/media3/exoplayer/trackselection/AdaptiveTrackSelection$AdaptationCheckpoint;->allocatedBandwidth:J

    iget-wide v10, v3, Landroidx/media3/exoplayer/trackselection/AdaptiveTrackSelection$AdaptationCheckpoint;->allocatedBandwidth:J

    sub-long/2addr v8, v10

    long-to-float v8, v8

    mul-float/2addr v8, v5

    float-to-long v8, v8

    add-long/2addr v6, v8

    return-wide v6
.end method

.method private getLastChunkDurationUs(Ljava/util/List;)J
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Landroidx/media3/exoplayer/source/chunk/MediaChunk;",
            ">;)J"
        }
    .end annotation

    .line 661
    .local p1, "queue":Ljava/util/List;, "Ljava/util/List<+Landroidx/media3/exoplayer/source/chunk/MediaChunk;>;"
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    const-wide v1, -0x7fffffffffffffffL    # -4.9E-324

    if-eqz v0, :cond_0

    .line 662
    return-wide v1

    .line 664
    :cond_0
    invoke-static {p1}, Lcom/google/common/collect/Iterables;->getLast(Ljava/lang/Iterable;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media3/exoplayer/source/chunk/MediaChunk;

    .line 665
    .local v0, "lastChunk":Landroidx/media3/exoplayer/source/chunk/MediaChunk;
    iget-wide v3, v0, Landroidx/media3/exoplayer/source/chunk/MediaChunk;->startTimeUs:J

    cmp-long v3, v3, v1

    if-eqz v3, :cond_1

    iget-wide v3, v0, Landroidx/media3/exoplayer/source/chunk/MediaChunk;->endTimeUs:J

    cmp-long v3, v3, v1

    if-eqz v3, :cond_1

    .line 666
    iget-wide v1, v0, Landroidx/media3/exoplayer/source/chunk/MediaChunk;->endTimeUs:J

    iget-wide v3, v0, Landroidx/media3/exoplayer/source/chunk/MediaChunk;->startTimeUs:J

    sub-long/2addr v1, v3

    goto :goto_0

    .line 667
    :cond_1
    nop

    .line 665
    :goto_0
    return-wide v1
.end method

.method private getNextChunkDurationUs([Landroidx/media3/exoplayer/source/chunk/MediaChunkIterator;Ljava/util/List;)J
    .locals 5
    .param p1, "mediaChunkIterators"    # [Landroidx/media3/exoplayer/source/chunk/MediaChunkIterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Landroidx/media3/exoplayer/source/chunk/MediaChunkIterator;",
            "Ljava/util/List<",
            "+",
            "Landroidx/media3/exoplayer/source/chunk/MediaChunk;",
            ">;)J"
        }
    .end annotation

    .line 640
    .local p2, "queue":Ljava/util/List;, "Ljava/util/List<+Landroidx/media3/exoplayer/source/chunk/MediaChunk;>;"
    iget v0, p0, Landroidx/media3/exoplayer/trackselection/AdaptiveTrackSelection;->selectedIndex:I

    array-length v1, p1

    if-ge v0, v1, :cond_0

    iget v0, p0, Landroidx/media3/exoplayer/trackselection/AdaptiveTrackSelection;->selectedIndex:I

    aget-object v0, p1, v0

    invoke-interface {v0}, Landroidx/media3/exoplayer/source/chunk/MediaChunkIterator;->next()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 641
    iget v0, p0, Landroidx/media3/exoplayer/trackselection/AdaptiveTrackSelection;->selectedIndex:I

    aget-object v0, p1, v0

    .line 642
    .local v0, "iterator":Landroidx/media3/exoplayer/source/chunk/MediaChunkIterator;
    invoke-interface {v0}, Landroidx/media3/exoplayer/source/chunk/MediaChunkIterator;->getChunkEndTimeUs()J

    move-result-wide v1

    invoke-interface {v0}, Landroidx/media3/exoplayer/source/chunk/MediaChunkIterator;->getChunkStartTimeUs()J

    move-result-wide v3

    sub-long/2addr v1, v3

    return-wide v1

    .line 646
    .end local v0    # "iterator":Landroidx/media3/exoplayer/source/chunk/MediaChunkIterator;
    :cond_0
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    aget-object v2, p1, v1

    .line 647
    .local v2, "iterator":Landroidx/media3/exoplayer/source/chunk/MediaChunkIterator;
    invoke-interface {v2}, Landroidx/media3/exoplayer/source/chunk/MediaChunkIterator;->next()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 648
    invoke-interface {v2}, Landroidx/media3/exoplayer/source/chunk/MediaChunkIterator;->getChunkEndTimeUs()J

    move-result-wide v0

    invoke-interface {v2}, Landroidx/media3/exoplayer/source/chunk/MediaChunkIterator;->getChunkStartTimeUs()J

    move-result-wide v3

    sub-long/2addr v0, v3

    return-wide v0

    .line 646
    .end local v2    # "iterator":Landroidx/media3/exoplayer/source/chunk/MediaChunkIterator;
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 653
    :cond_2
    invoke-direct {p0, p2}, Landroidx/media3/exoplayer/trackselection/AdaptiveTrackSelection;->getLastChunkDurationUs(Ljava/util/List;)J

    move-result-wide v0

    return-wide v0
.end method

.method private static getSortedTrackBitrates([Landroidx/media3/exoplayer/trackselection/ExoTrackSelection$Definition;)[[J
    .locals 9
    .param p0, "definitions"    # [Landroidx/media3/exoplayer/trackselection/ExoTrackSelection$Definition;

    .line 757
    array-length v0, p0

    new-array v0, v0, [[J

    .line 758
    .local v0, "trackBitrates":[[J
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_3

    .line 759
    aget-object v2, p0, v1

    .line 760
    .local v2, "definition":Landroidx/media3/exoplayer/trackselection/ExoTrackSelection$Definition;
    if-nez v2, :cond_0

    .line 761
    const/4 v3, 0x0

    new-array v3, v3, [J

    aput-object v3, v0, v1

    .line 762
    goto :goto_3

    .line 764
    :cond_0
    iget-object v3, v2, Landroidx/media3/exoplayer/trackselection/ExoTrackSelection$Definition;->tracks:[I

    array-length v3, v3

    new-array v3, v3, [J

    aput-object v3, v0, v1

    .line 765
    const/4 v3, 0x0

    .local v3, "j":I
    :goto_1
    iget-object v4, v2, Landroidx/media3/exoplayer/trackselection/ExoTrackSelection$Definition;->tracks:[I

    array-length v4, v4

    if-ge v3, v4, :cond_2

    .line 766
    iget-object v4, v2, Landroidx/media3/exoplayer/trackselection/ExoTrackSelection$Definition;->group:Landroidx/media3/common/TrackGroup;

    iget-object v5, v2, Landroidx/media3/exoplayer/trackselection/ExoTrackSelection$Definition;->tracks:[I

    aget v5, v5, v3

    invoke-virtual {v4, v5}, Landroidx/media3/common/TrackGroup;->getFormat(I)Landroidx/media3/common/Format;

    move-result-object v4

    iget v4, v4, Landroidx/media3/common/Format;->bitrate:I

    int-to-long v4, v4

    .line 767
    .local v4, "bitrate":J
    aget-object v6, v0, v1

    const-wide/16 v7, -0x1

    cmp-long v7, v4, v7

    if-nez v7, :cond_1

    const-wide/16 v7, 0x0

    goto :goto_2

    :cond_1
    move-wide v7, v4

    :goto_2
    aput-wide v7, v6, v3

    .line 765
    .end local v4    # "bitrate":J
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 769
    .end local v3    # "j":I
    :cond_2
    aget-object v3, v0, v1

    invoke-static {v3}, Ljava/util/Arrays;->sort([J)V

    .line 758
    .end local v2    # "definition":Landroidx/media3/exoplayer/trackselection/ExoTrackSelection$Definition;
    :goto_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 771
    .end local v1    # "i":I
    :cond_3
    return-object v0
.end method

.method private static getSwitchOrder([[J)Lcom/google/common/collect/ImmutableList;
    .locals 16
    .param p0, "trackBitrates"    # [[J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([[J)",
            "Lcom/google/common/collect/ImmutableList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 785
    move-object/from16 v0, p0

    invoke-static {}, Lcom/google/common/collect/MultimapBuilder;->treeKeys()Lcom/google/common/collect/MultimapBuilder$MultimapBuilderWithKeys;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/common/collect/MultimapBuilder$MultimapBuilderWithKeys;->arrayListValues()Lcom/google/common/collect/MultimapBuilder$ListMultimapBuilder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/common/collect/MultimapBuilder$ListMultimapBuilder;->build()Lcom/google/common/collect/ListMultimap;

    move-result-object v1

    .line 786
    .local v1, "switchPoints":Lcom/google/common/collect/Multimap;, "Lcom/google/common/collect/Multimap<Ljava/lang/Double;Ljava/lang/Integer;>;"
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v3, v0

    if-ge v2, v3, :cond_5

    .line 787
    aget-object v3, v0, v2

    array-length v3, v3

    const/4 v4, 0x1

    if-gt v3, v4, :cond_0

    .line 788
    goto :goto_5

    .line 790
    :cond_0
    aget-object v3, v0, v2

    array-length v3, v3

    new-array v3, v3, [D

    .line 791
    .local v3, "logBitrates":[D
    const/4 v5, 0x0

    .local v5, "j":I
    :goto_1
    aget-object v6, v0, v2

    array-length v6, v6

    const-wide/16 v7, 0x0

    if-ge v5, v6, :cond_2

    .line 792
    nop

    .line 793
    aget-object v6, v0, v2

    aget-wide v9, v6, v5

    const-wide/16 v11, -0x1

    cmp-long v6, v9, v11

    if-nez v6, :cond_1

    goto :goto_2

    :cond_1
    aget-object v6, v0, v2

    aget-wide v7, v6, v5

    long-to-double v6, v7

    invoke-static {v6, v7}, Ljava/lang/Math;->log(D)D

    move-result-wide v7

    :goto_2
    aput-wide v7, v3, v5

    .line 791
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 795
    .end local v5    # "j":I
    :cond_2
    array-length v5, v3

    sub-int/2addr v5, v4

    aget-wide v5, v3, v5

    const/4 v9, 0x0

    aget-wide v10, v3, v9

    sub-double/2addr v5, v10

    .line 796
    .local v5, "totalBitrateDiff":D
    const/4 v10, 0x0

    .local v10, "j":I
    :goto_3
    array-length v11, v3

    sub-int/2addr v11, v4

    if-ge v10, v11, :cond_4

    .line 797
    aget-wide v11, v3, v10

    add-int/lit8 v13, v10, 0x1

    aget-wide v13, v3, v13

    add-double/2addr v11, v13

    const-wide/high16 v13, 0x3fe0000000000000L    # 0.5

    mul-double/2addr v11, v13

    .line 799
    .local v11, "switchBitrate":D
    cmpl-double v13, v5, v7

    if-nez v13, :cond_3

    const-wide/high16 v13, 0x3ff0000000000000L    # 1.0

    goto :goto_4

    :cond_3
    aget-wide v13, v3, v9

    sub-double v13, v11, v13

    div-double/2addr v13, v5

    .line 800
    .local v13, "switchPoint":D
    :goto_4
    invoke-static {v13, v14}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v15

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v1, v15, v4}, Lcom/google/common/collect/Multimap;->put(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 796
    .end local v11    # "switchBitrate":D
    .end local v13    # "switchPoint":D
    add-int/lit8 v10, v10, 0x1

    const/4 v4, 0x1

    goto :goto_3

    .line 786
    .end local v3    # "logBitrates":[D
    .end local v5    # "totalBitrateDiff":D
    .end local v10    # "j":I
    :cond_4
    :goto_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 803
    .end local v2    # "i":I
    :cond_5
    invoke-interface {v1}, Lcom/google/common/collect/Multimap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-static {v2}, Lcom/google/common/collect/ImmutableList;->copyOf(Ljava/util/Collection;)Lcom/google/common/collect/ImmutableList;

    move-result-object v2

    return-object v2
.end method

.method private getTotalAllocatableBandwidth(J)J
    .locals 7
    .param p1, "chunkDurationUs"    # J

    .line 691
    iget-object v0, p0, Landroidx/media3/exoplayer/trackselection/AdaptiveTrackSelection;->bandwidthMeter:Landroidx/media3/exoplayer/upstream/BandwidthMeter;

    invoke-interface {v0}, Landroidx/media3/exoplayer/upstream/BandwidthMeter;->getBitrateEstimate()J

    move-result-wide v0

    iput-wide v0, p0, Landroidx/media3/exoplayer/trackselection/AdaptiveTrackSelection;->latestBitrateEstimate:J

    .line 692
    iget-wide v0, p0, Landroidx/media3/exoplayer/trackselection/AdaptiveTrackSelection;->latestBitrateEstimate:J

    long-to-float v0, v0

    iget v1, p0, Landroidx/media3/exoplayer/trackselection/AdaptiveTrackSelection;->bandwidthFraction:F

    mul-float/2addr v0, v1

    float-to-long v0, v0

    .line 693
    .local v0, "cautiousBandwidthEstimate":J
    iget-object v2, p0, Landroidx/media3/exoplayer/trackselection/AdaptiveTrackSelection;->bandwidthMeter:Landroidx/media3/exoplayer/upstream/BandwidthMeter;

    invoke-interface {v2}, Landroidx/media3/exoplayer/upstream/BandwidthMeter;->getTimeToFirstByteEstimateUs()J

    move-result-wide v2

    .line 694
    .local v2, "timeToFirstByteEstimateUs":J
    const-wide v4, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v6, v2, v4

    if-eqz v6, :cond_1

    cmp-long v4, p1, v4

    if-nez v4, :cond_0

    goto :goto_0

    .line 697
    :cond_0
    long-to-float v4, p1

    iget v5, p0, Landroidx/media3/exoplayer/trackselection/AdaptiveTrackSelection;->playbackSpeed:F

    div-float/2addr v4, v5

    long-to-float v5, v2

    sub-float/2addr v4, v5

    .line 698
    const/4 v5, 0x0

    invoke-static {v4, v5}, Ljava/lang/Math;->max(FF)F

    move-result v4

    .line 699
    .local v4, "availableTimeToLoadUs":F
    long-to-float v5, v0

    mul-float/2addr v5, v4

    long-to-float v6, p1

    div-float/2addr v5, v6

    float-to-long v5, v5

    return-wide v5

    .line 695
    .end local v4    # "availableTimeToLoadUs":F
    :cond_1
    :goto_0
    long-to-float v4, v0

    iget v5, p0, Landroidx/media3/exoplayer/trackselection/AdaptiveTrackSelection;->playbackSpeed:F

    div-float/2addr v4, v5

    float-to-long v4, v4

    return-wide v4
.end method

.method private minDurationForQualityIncreaseUs(JJ)J
    .locals 4
    .param p1, "availableDurationUs"    # J
    .param p3, "chunkDurationUs"    # J

    .line 616
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v2, p1, v0

    if-nez v2, :cond_0

    .line 618
    iget-wide v0, p0, Landroidx/media3/exoplayer/trackselection/AdaptiveTrackSelection;->minDurationForQualityIncreaseUs:J

    return-wide v0

    .line 620
    :cond_0
    cmp-long v0, p3, v0

    if-eqz v0, :cond_1

    .line 626
    sub-long/2addr p1, p3

    .line 628
    :cond_1
    long-to-float v0, p1

    iget v1, p0, Landroidx/media3/exoplayer/trackselection/AdaptiveTrackSelection;->bufferedFractionToLiveEdgeForQualityIncrease:F

    mul-float/2addr v0, v1

    float-to-long v0, v0

    .line 630
    .local v0, "adjustedMinDurationForQualityIncreaseUs":J
    iget-wide v2, p0, Landroidx/media3/exoplayer/trackselection/AdaptiveTrackSelection;->minDurationForQualityIncreaseUs:J

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v2

    return-wide v2
.end method


# virtual methods
.method protected canSelectFormat(Landroidx/media3/common/Format;IJ)Z
    .locals 2
    .param p1, "format"    # Landroidx/media3/common/Format;
    .param p2, "trackBitrate"    # I
    .param p3, "effectiveBitrate"    # J

    .line 564
    int-to-long v0, p2

    cmp-long v0, v0, p3

    if-gtz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public disable()V
    .locals 1

    .line 428
    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/media3/exoplayer/trackselection/AdaptiveTrackSelection;->lastBufferEvaluationMediaChunk:Landroidx/media3/exoplayer/source/chunk/MediaChunk;

    .line 429
    return-void
.end method

.method public enable()V
    .locals 2

    .line 420
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v0, p0, Landroidx/media3/exoplayer/trackselection/AdaptiveTrackSelection;->lastBufferEvaluationMs:J

    .line 421
    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/media3/exoplayer/trackselection/AdaptiveTrackSelection;->lastBufferEvaluationMediaChunk:Landroidx/media3/exoplayer/source/chunk/MediaChunk;

    .line 422
    return-void
.end method

.method public evaluateQueueSize(JLjava/util/List;)I
    .locals 21
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

    .line 505
    .local p3, "queue":Ljava/util/List;, "Ljava/util/List<+Landroidx/media3/exoplayer/source/chunk/MediaChunk;>;"
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    iget-object v2, v0, Landroidx/media3/exoplayer/trackselection/AdaptiveTrackSelection;->clock:Landroidx/media3/common/util/Clock;

    invoke-interface {v2}, Landroidx/media3/common/util/Clock;->elapsedRealtime()J

    move-result-wide v2

    .line 506
    .local v2, "nowMs":J
    invoke-virtual {v0, v2, v3, v1}, Landroidx/media3/exoplayer/trackselection/AdaptiveTrackSelection;->shouldEvaluateQueueSize(JLjava/util/List;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 507
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    return v4

    .line 509
    :cond_0
    iput-wide v2, v0, Landroidx/media3/exoplayer/trackselection/AdaptiveTrackSelection;->lastBufferEvaluationMs:J

    .line 510
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_1

    const/4 v4, 0x0

    goto :goto_0

    :cond_1
    invoke-static {v1}, Lcom/google/common/collect/Iterables;->getLast(Ljava/lang/Iterable;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/media3/exoplayer/source/chunk/MediaChunk;

    :goto_0
    iput-object v4, v0, Landroidx/media3/exoplayer/trackselection/AdaptiveTrackSelection;->lastBufferEvaluationMediaChunk:Landroidx/media3/exoplayer/source/chunk/MediaChunk;

    .line 512
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 513
    const/4 v4, 0x0

    return v4

    .line 515
    :cond_2
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    .line 516
    .local v4, "queueSize":I
    add-int/lit8 v5, v4, -0x1

    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/media3/exoplayer/source/chunk/MediaChunk;

    .line 517
    .local v5, "lastChunk":Landroidx/media3/exoplayer/source/chunk/MediaChunk;
    iget-wide v6, v5, Landroidx/media3/exoplayer/source/chunk/MediaChunk;->startTimeUs:J

    sub-long v6, v6, p1

    iget v8, v0, Landroidx/media3/exoplayer/trackselection/AdaptiveTrackSelection;->playbackSpeed:F

    .line 518
    invoke-static {v6, v7, v8}, Landroidx/media3/common/util/Util;->getPlayoutDurationForMediaDuration(JF)J

    move-result-wide v6

    .line 520
    .local v6, "playoutBufferedDurationBeforeLastChunkUs":J
    invoke-virtual {v0}, Landroidx/media3/exoplayer/trackselection/AdaptiveTrackSelection;->getMinDurationToRetainAfterDiscardUs()J

    move-result-wide v8

    .line 521
    .local v8, "minDurationToRetainAfterDiscardUs":J
    cmp-long v10, v6, v8

    if-gez v10, :cond_3

    .line 522
    return v4

    .line 524
    :cond_3
    invoke-direct {v0, v1}, Landroidx/media3/exoplayer/trackselection/AdaptiveTrackSelection;->getLastChunkDurationUs(Ljava/util/List;)J

    move-result-wide v10

    invoke-direct {v0, v2, v3, v10, v11}, Landroidx/media3/exoplayer/trackselection/AdaptiveTrackSelection;->determineIdealSelectedIndex(JJ)I

    move-result v10

    .line 525
    .local v10, "idealSelectedIndex":I
    invoke-virtual {v0, v10}, Landroidx/media3/exoplayer/trackselection/AdaptiveTrackSelection;->getFormat(I)Landroidx/media3/common/Format;

    move-result-object v11

    .line 529
    .local v11, "idealFormat":Landroidx/media3/common/Format;
    const/4 v12, 0x0

    .local v12, "i":I
    :goto_1
    if-ge v12, v4, :cond_6

    .line 530
    invoke-interface {v1, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroidx/media3/exoplayer/source/chunk/MediaChunk;

    .line 531
    .local v13, "chunk":Landroidx/media3/exoplayer/source/chunk/MediaChunk;
    iget-object v14, v13, Landroidx/media3/exoplayer/source/chunk/MediaChunk;->trackFormat:Landroidx/media3/common/Format;

    .line 532
    .local v14, "format":Landroidx/media3/common/Format;
    move-wide v15, v2

    .end local v2    # "nowMs":J
    .local v15, "nowMs":J
    iget-wide v1, v13, Landroidx/media3/exoplayer/source/chunk/MediaChunk;->startTimeUs:J

    sub-long v1, v1, p1

    .line 533
    .local v1, "mediaDurationBeforeThisChunkUs":J
    iget v3, v0, Landroidx/media3/exoplayer/trackselection/AdaptiveTrackSelection;->playbackSpeed:F

    .line 534
    invoke-static {v1, v2, v3}, Landroidx/media3/common/util/Util;->getPlayoutDurationForMediaDuration(JF)J

    move-result-wide v17

    .line 535
    .local v17, "playoutDurationBeforeThisChunkUs":J
    cmp-long v3, v17, v8

    if-ltz v3, :cond_4

    iget v3, v14, Landroidx/media3/common/Format;->bitrate:I

    move-wide/from16 v19, v1

    .end local v1    # "mediaDurationBeforeThisChunkUs":J
    .local v19, "mediaDurationBeforeThisChunkUs":J
    iget v1, v11, Landroidx/media3/common/Format;->bitrate:I

    if-ge v3, v1, :cond_5

    iget v1, v14, Landroidx/media3/common/Format;->height:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_5

    iget v1, v14, Landroidx/media3/common/Format;->height:I

    iget v3, v0, Landroidx/media3/exoplayer/trackselection/AdaptiveTrackSelection;->maxHeightToDiscard:I

    if-gt v1, v3, :cond_5

    iget v1, v14, Landroidx/media3/common/Format;->width:I

    if-eq v1, v2, :cond_5

    iget v1, v14, Landroidx/media3/common/Format;->width:I

    iget v2, v0, Landroidx/media3/exoplayer/trackselection/AdaptiveTrackSelection;->maxWidthToDiscard:I

    if-gt v1, v2, :cond_5

    iget v1, v14, Landroidx/media3/common/Format;->height:I

    iget v2, v11, Landroidx/media3/common/Format;->height:I

    if-ge v1, v2, :cond_5

    .line 542
    return v12

    .line 535
    .end local v19    # "mediaDurationBeforeThisChunkUs":J
    .restart local v1    # "mediaDurationBeforeThisChunkUs":J
    :cond_4
    move-wide/from16 v19, v1

    .line 529
    .end local v1    # "mediaDurationBeforeThisChunkUs":J
    .end local v13    # "chunk":Landroidx/media3/exoplayer/source/chunk/MediaChunk;
    .end local v14    # "format":Landroidx/media3/common/Format;
    .end local v17    # "playoutDurationBeforeThisChunkUs":J
    :cond_5
    add-int/lit8 v12, v12, 0x1

    move-object/from16 v1, p3

    move-wide v2, v15

    goto :goto_1

    .line 545
    .end local v12    # "i":I
    .end local v15    # "nowMs":J
    .restart local v2    # "nowMs":J
    :cond_6
    return v4
.end method

.method public getLatestBitrateEstimate()J
    .locals 2

    .line 550
    iget-wide v0, p0, Landroidx/media3/exoplayer/trackselection/AdaptiveTrackSelection;->latestBitrateEstimate:J

    return-wide v0
.end method

.method protected getMinDurationToRetainAfterDiscardUs()J
    .locals 2

    .line 588
    iget-wide v0, p0, Landroidx/media3/exoplayer/trackselection/AdaptiveTrackSelection;->minDurationToRetainAfterDiscardUs:J

    return-wide v0
.end method

.method public getSelectedIndex()I
    .locals 1

    .line 489
    iget v0, p0, Landroidx/media3/exoplayer/trackselection/AdaptiveTrackSelection;->selectedIndex:I

    return v0
.end method

.method public getSelectionData()Ljava/lang/Object;
    .locals 1

    .line 500
    const/4 v0, 0x0

    return-object v0
.end method

.method public getSelectionReason()I
    .locals 1

    .line 494
    iget v0, p0, Landroidx/media3/exoplayer/trackselection/AdaptiveTrackSelection;->reason:I

    return v0
.end method

.method public onPlaybackSpeed(F)V
    .locals 0
    .param p1, "playbackSpeed"    # F

    .line 433
    iput p1, p0, Landroidx/media3/exoplayer/trackselection/AdaptiveTrackSelection;->playbackSpeed:F

    .line 434
    return-void
.end method

.method protected shouldEvaluateQueueSize(JLjava/util/List;)Z
    .locals 4
    .param p1, "nowMs"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/List<",
            "+",
            "Landroidx/media3/exoplayer/source/chunk/MediaChunk;",
            ">;)Z"
        }
    .end annotation

    .line 576
    .local p3, "queue":Ljava/util/List;, "Ljava/util/List<+Landroidx/media3/exoplayer/source/chunk/MediaChunk;>;"
    iget-wide v0, p0, Landroidx/media3/exoplayer/trackselection/AdaptiveTrackSelection;->lastBufferEvaluationMs:J

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    iget-wide v0, p0, Landroidx/media3/exoplayer/trackselection/AdaptiveTrackSelection;->lastBufferEvaluationMs:J

    sub-long v0, p1, v0

    const-wide/16 v2, 0x3e8

    cmp-long v0, v0, v2

    if-gez v0, :cond_1

    .line 578
    invoke-interface {p3}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p3}, Lcom/google/common/collect/Iterables;->getLast(Ljava/lang/Iterable;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media3/exoplayer/source/chunk/MediaChunk;

    iget-object v1, p0, Landroidx/media3/exoplayer/trackselection/AdaptiveTrackSelection;->lastBufferEvaluationMediaChunk:Landroidx/media3/exoplayer/source/chunk/MediaChunk;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 576
    :goto_1
    return v0
.end method

.method public updateSelectedTrack(JJJLjava/util/List;[Landroidx/media3/exoplayer/source/chunk/MediaChunkIterator;)V
    .locals 19
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

    .line 443
    .local p7, "queue":Ljava/util/List;, "Ljava/util/List<+Landroidx/media3/exoplayer/source/chunk/MediaChunk;>;"
    move-object/from16 v0, p0

    iget-object v1, v0, Landroidx/media3/exoplayer/trackselection/AdaptiveTrackSelection;->clock:Landroidx/media3/common/util/Clock;

    invoke-interface {v1}, Landroidx/media3/common/util/Clock;->elapsedRealtime()J

    move-result-wide v1

    .line 444
    .local v1, "nowMs":J
    move-object/from16 v3, p7

    move-object/from16 v4, p8

    invoke-direct {v0, v4, v3}, Landroidx/media3/exoplayer/trackselection/AdaptiveTrackSelection;->getNextChunkDurationUs([Landroidx/media3/exoplayer/source/chunk/MediaChunkIterator;Ljava/util/List;)J

    move-result-wide v5

    .line 447
    .local v5, "chunkDurationUs":J
    iget v7, v0, Landroidx/media3/exoplayer/trackselection/AdaptiveTrackSelection;->reason:I

    if-nez v7, :cond_0

    .line 448
    const/4 v7, 0x1

    iput v7, v0, Landroidx/media3/exoplayer/trackselection/AdaptiveTrackSelection;->reason:I

    .line 449
    invoke-direct {v0, v1, v2, v5, v6}, Landroidx/media3/exoplayer/trackselection/AdaptiveTrackSelection;->determineIdealSelectedIndex(JJ)I

    move-result v7

    iput v7, v0, Landroidx/media3/exoplayer/trackselection/AdaptiveTrackSelection;->selectedIndex:I

    .line 450
    return-void

    .line 453
    :cond_0
    iget v7, v0, Landroidx/media3/exoplayer/trackselection/AdaptiveTrackSelection;->selectedIndex:I

    .line 454
    .local v7, "previousSelectedIndex":I
    iget v8, v0, Landroidx/media3/exoplayer/trackselection/AdaptiveTrackSelection;->reason:I

    .line 456
    .local v8, "previousReason":I
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v9

    const/4 v10, -0x1

    if-eqz v9, :cond_1

    move v9, v10

    goto :goto_0

    :cond_1
    invoke-static {v3}, Lcom/google/common/collect/Iterables;->getLast(Ljava/lang/Iterable;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroidx/media3/exoplayer/source/chunk/MediaChunk;

    iget-object v9, v9, Landroidx/media3/exoplayer/source/chunk/MediaChunk;->trackFormat:Landroidx/media3/common/Format;

    invoke-virtual {v0, v9}, Landroidx/media3/exoplayer/trackselection/AdaptiveTrackSelection;->indexOf(Landroidx/media3/common/Format;)I

    move-result v9

    .line 457
    .local v9, "formatIndexOfPreviousChunk":I
    :goto_0
    if-eq v9, v10, :cond_2

    .line 458
    move v7, v9

    .line 459
    invoke-static {v3}, Lcom/google/common/collect/Iterables;->getLast(Ljava/lang/Iterable;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroidx/media3/exoplayer/source/chunk/MediaChunk;

    iget v8, v10, Landroidx/media3/exoplayer/source/chunk/MediaChunk;->trackSelectionReason:I

    .line 461
    :cond_2
    invoke-direct {v0, v1, v2, v5, v6}, Landroidx/media3/exoplayer/trackselection/AdaptiveTrackSelection;->determineIdealSelectedIndex(JJ)I

    move-result v10

    .line 462
    .local v10, "newSelectedIndex":I
    if-eq v10, v7, :cond_5

    .line 463
    invoke-virtual {v0, v7, v1, v2}, Landroidx/media3/exoplayer/trackselection/AdaptiveTrackSelection;->isTrackExcluded(IJ)Z

    move-result v11

    if-nez v11, :cond_4

    .line 465
    invoke-virtual {v0, v7}, Landroidx/media3/exoplayer/trackselection/AdaptiveTrackSelection;->getFormat(I)Landroidx/media3/common/Format;

    move-result-object v11

    .line 466
    .local v11, "currentFormat":Landroidx/media3/common/Format;
    invoke-virtual {v0, v10}, Landroidx/media3/exoplayer/trackselection/AdaptiveTrackSelection;->getFormat(I)Landroidx/media3/common/Format;

    move-result-object v12

    .line 467
    .local v12, "selectedFormat":Landroidx/media3/common/Format;
    nop

    .line 468
    move-wide/from16 v13, p5

    invoke-direct {v0, v13, v14, v5, v6}, Landroidx/media3/exoplayer/trackselection/AdaptiveTrackSelection;->minDurationForQualityIncreaseUs(JJ)J

    move-result-wide v15

    .line 469
    .local v15, "minDurationForQualityIncreaseUs":J
    move-wide/from16 v17, v1

    .end local v1    # "nowMs":J
    .local v17, "nowMs":J
    iget v1, v12, Landroidx/media3/common/Format;->bitrate:I

    iget v2, v11, Landroidx/media3/common/Format;->bitrate:I

    if-le v1, v2, :cond_3

    cmp-long v1, p3, v15

    if-gez v1, :cond_3

    .line 473
    move v10, v7

    goto :goto_1

    .line 474
    :cond_3
    iget v1, v12, Landroidx/media3/common/Format;->bitrate:I

    iget v2, v11, Landroidx/media3/common/Format;->bitrate:I

    if-ge v1, v2, :cond_6

    iget-wide v1, v0, Landroidx/media3/exoplayer/trackselection/AdaptiveTrackSelection;->maxDurationForQualityDecreaseUs:J

    cmp-long v1, p3, v1

    if-ltz v1, :cond_6

    .line 478
    move v10, v7

    goto :goto_1

    .line 463
    .end local v11    # "currentFormat":Landroidx/media3/common/Format;
    .end local v12    # "selectedFormat":Landroidx/media3/common/Format;
    .end local v15    # "minDurationForQualityIncreaseUs":J
    .end local v17    # "nowMs":J
    .restart local v1    # "nowMs":J
    :cond_4
    move-wide/from16 v13, p5

    move-wide/from16 v17, v1

    .end local v1    # "nowMs":J
    .restart local v17    # "nowMs":J
    goto :goto_1

    .line 462
    .end local v17    # "nowMs":J
    .restart local v1    # "nowMs":J
    :cond_5
    move-wide/from16 v13, p5

    move-wide/from16 v17, v1

    .line 482
    .end local v1    # "nowMs":J
    .restart local v17    # "nowMs":J
    :cond_6
    :goto_1
    nop

    .line 483
    if-ne v10, v7, :cond_7

    move v1, v8

    goto :goto_2

    :cond_7
    const/4 v1, 0x3

    :goto_2
    iput v1, v0, Landroidx/media3/exoplayer/trackselection/AdaptiveTrackSelection;->reason:I

    .line 484
    iput v10, v0, Landroidx/media3/exoplayer/trackselection/AdaptiveTrackSelection;->selectedIndex:I

    .line 485
    return-void
.end method
