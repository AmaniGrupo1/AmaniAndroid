.class public final Landroidx/media3/exoplayer/source/MergingMediaSource;
.super Landroidx/media3/exoplayer/source/CompositeMediaSource;
.source "MergingMediaSource.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media3/exoplayer/source/MergingMediaSource$IllegalMergeException;,
        Landroidx/media3/exoplayer/source/MergingMediaSource$MediaPeriodAndId;,
        Landroidx/media3/exoplayer/source/MergingMediaSource$ClippedTimeline;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/media3/exoplayer/source/CompositeMediaSource<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# static fields
.field private static final PERIOD_COUNT_UNSET:I = -0x1

.field private static final PLACEHOLDER_MEDIA_ITEM:Landroidx/media3/common/MediaItem;


# instance fields
.field private final adjustPeriodTimeOffsets:Z

.field private final clipDurations:Z

.field private final clippedDurationsUs:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Object;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private final clippedMediaPeriods:Lcom/google/common/collect/Multimap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/Multimap<",
            "Ljava/lang/Object;",
            "Landroidx/media3/exoplayer/source/ClippingMediaPeriod;",
            ">;"
        }
    .end annotation
.end field

.field private final compositeSequenceableLoaderFactory:Landroidx/media3/exoplayer/source/CompositeSequenceableLoaderFactory;

.field private enableClippingInMediaPeriod:Z

.field private final mediaPeriods:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/util/List<",
            "Landroidx/media3/exoplayer/source/MergingMediaSource$MediaPeriodAndId;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mediaSources:[Landroidx/media3/exoplayer/source/MediaSource;

.field private mergeError:Landroidx/media3/exoplayer/source/MergingMediaSource$IllegalMergeException;

.field private final pendingTimelineSources:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroidx/media3/exoplayer/source/MediaSource;",
            ">;"
        }
    .end annotation
.end field

.field private periodCount:I

.field private periodTimeOffsetsUs:[[J

.field private final timelines:[Landroidx/media3/common/Timeline;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 83
    new-instance v0, Landroidx/media3/common/MediaItem$Builder;

    invoke-direct {v0}, Landroidx/media3/common/MediaItem$Builder;-><init>()V

    .line 84
    const-string v1, "MergingMediaSource"

    invoke-virtual {v0, v1}, Landroidx/media3/common/MediaItem$Builder;->setMediaId(Ljava/lang/String;)Landroidx/media3/common/MediaItem$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/media3/common/MediaItem$Builder;->build()Landroidx/media3/common/MediaItem;

    move-result-object v0

    sput-object v0, Landroidx/media3/exoplayer/source/MergingMediaSource;->PLACEHOLDER_MEDIA_ITEM:Landroidx/media3/common/MediaItem;

    .line 83
    return-void
.end method

.method public varargs constructor <init>(ZZLandroidx/media3/exoplayer/source/CompositeSequenceableLoaderFactory;[Landroidx/media3/exoplayer/source/MediaSource;)V
    .locals 3
    .param p1, "adjustPeriodTimeOffsets"    # Z
    .param p2, "clipDurations"    # Z
    .param p3, "compositeSequenceableLoaderFactory"    # Landroidx/media3/exoplayer/source/CompositeSequenceableLoaderFactory;
    .param p4, "mediaSources"    # [Landroidx/media3/exoplayer/source/MediaSource;

    .line 161
    invoke-direct {p0}, Landroidx/media3/exoplayer/source/CompositeMediaSource;-><init>()V

    .line 162
    iput-boolean p1, p0, Landroidx/media3/exoplayer/source/MergingMediaSource;->adjustPeriodTimeOffsets:Z

    .line 163
    iput-boolean p2, p0, Landroidx/media3/exoplayer/source/MergingMediaSource;->clipDurations:Z

    .line 164
    iput-object p4, p0, Landroidx/media3/exoplayer/source/MergingMediaSource;->mediaSources:[Landroidx/media3/exoplayer/source/MediaSource;

    .line 165
    iput-object p3, p0, Landroidx/media3/exoplayer/source/MergingMediaSource;->compositeSequenceableLoaderFactory:Landroidx/media3/exoplayer/source/CompositeSequenceableLoaderFactory;

    .line 166
    new-instance v0, Ljava/util/ArrayList;

    invoke-static {p4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Landroidx/media3/exoplayer/source/MergingMediaSource;->pendingTimelineSources:Ljava/util/ArrayList;

    .line 167
    const/4 v0, -0x1

    iput v0, p0, Landroidx/media3/exoplayer/source/MergingMediaSource;->periodCount:I

    .line 168
    new-instance v0, Ljava/util/ArrayList;

    array-length v1, p4

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Landroidx/media3/exoplayer/source/MergingMediaSource;->mediaPeriods:Ljava/util/List;

    .line 169
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v1, p4

    if-ge v0, v1, :cond_0

    .line 170
    iget-object v1, p0, Landroidx/media3/exoplayer/source/MergingMediaSource;->mediaPeriods:Ljava/util/List;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 169
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 172
    .end local v0    # "i":I
    :cond_0
    array-length v0, p4

    new-array v0, v0, [Landroidx/media3/common/Timeline;

    iput-object v0, p0, Landroidx/media3/exoplayer/source/MergingMediaSource;->timelines:[Landroidx/media3/common/Timeline;

    .line 173
    const/4 v0, 0x0

    new-array v0, v0, [[J

    iput-object v0, p0, Landroidx/media3/exoplayer/source/MergingMediaSource;->periodTimeOffsetsUs:[[J

    .line 174
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroidx/media3/exoplayer/source/MergingMediaSource;->clippedDurationsUs:Ljava/util/Map;

    .line 175
    invoke-static {}, Lcom/google/common/collect/MultimapBuilder;->hashKeys()Lcom/google/common/collect/MultimapBuilder$MultimapBuilderWithKeys;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/collect/MultimapBuilder$MultimapBuilderWithKeys;->arrayListValues()Lcom/google/common/collect/MultimapBuilder$ListMultimapBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/collect/MultimapBuilder$ListMultimapBuilder;->build()Lcom/google/common/collect/ListMultimap;

    move-result-object v0

    iput-object v0, p0, Landroidx/media3/exoplayer/source/MergingMediaSource;->clippedMediaPeriods:Lcom/google/common/collect/Multimap;

    .line 176
    return-void
.end method

.method public varargs constructor <init>(ZZ[Landroidx/media3/exoplayer/source/MediaSource;)V
    .locals 1
    .param p1, "adjustPeriodTimeOffsets"    # Z
    .param p2, "clipDurations"    # Z
    .param p3, "mediaSources"    # [Landroidx/media3/exoplayer/source/MediaSource;

    .line 138
    new-instance v0, Landroidx/media3/exoplayer/source/DefaultCompositeSequenceableLoaderFactory;

    invoke-direct {v0}, Landroidx/media3/exoplayer/source/DefaultCompositeSequenceableLoaderFactory;-><init>()V

    invoke-direct {p0, p1, p2, v0, p3}, Landroidx/media3/exoplayer/source/MergingMediaSource;-><init>(ZZLandroidx/media3/exoplayer/source/CompositeSequenceableLoaderFactory;[Landroidx/media3/exoplayer/source/MediaSource;)V

    .line 143
    return-void
.end method

.method public varargs constructor <init>(Z[Landroidx/media3/exoplayer/source/MediaSource;)V
    .locals 1
    .param p1, "adjustPeriodTimeOffsets"    # Z
    .param p2, "mediaSources"    # [Landroidx/media3/exoplayer/source/MediaSource;

    .line 124
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2}, Landroidx/media3/exoplayer/source/MergingMediaSource;-><init>(ZZ[Landroidx/media3/exoplayer/source/MediaSource;)V

    .line 125
    return-void
.end method

.method public varargs constructor <init>([Landroidx/media3/exoplayer/source/MediaSource;)V
    .locals 1
    .param p1, "mediaSources"    # [Landroidx/media3/exoplayer/source/MediaSource;

    .line 111
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Landroidx/media3/exoplayer/source/MergingMediaSource;-><init>(Z[Landroidx/media3/exoplayer/source/MediaSource;)V

    .line 112
    return-void
.end method

.method private computePeriodTimeOffsets()V
    .locals 10

    .line 332
    new-instance v0, Landroidx/media3/common/Timeline$Period;

    invoke-direct {v0}, Landroidx/media3/common/Timeline$Period;-><init>()V

    .line 333
    .local v0, "period":Landroidx/media3/common/Timeline$Period;
    const/4 v1, 0x0

    .local v1, "periodIndex":I
    :goto_0
    iget v2, p0, Landroidx/media3/exoplayer/source/MergingMediaSource;->periodCount:I

    if-ge v1, v2, :cond_1

    .line 334
    iget-object v2, p0, Landroidx/media3/exoplayer/source/MergingMediaSource;->timelines:[Landroidx/media3/common/Timeline;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    .line 335
    invoke-virtual {v2, v1, v0}, Landroidx/media3/common/Timeline;->getPeriod(ILandroidx/media3/common/Timeline$Period;)Landroidx/media3/common/Timeline$Period;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/media3/common/Timeline$Period;->getPositionInWindowUs()J

    move-result-wide v2

    neg-long v2, v2

    .line 336
    .local v2, "primaryWindowOffsetUs":J
    const/4 v4, 0x1

    .local v4, "timelineIndex":I
    :goto_1
    iget-object v5, p0, Landroidx/media3/exoplayer/source/MergingMediaSource;->timelines:[Landroidx/media3/common/Timeline;

    array-length v5, v5

    if-ge v4, v5, :cond_0

    .line 337
    iget-object v5, p0, Landroidx/media3/exoplayer/source/MergingMediaSource;->timelines:[Landroidx/media3/common/Timeline;

    aget-object v5, v5, v4

    .line 338
    invoke-virtual {v5, v1, v0}, Landroidx/media3/common/Timeline;->getPeriod(ILandroidx/media3/common/Timeline$Period;)Landroidx/media3/common/Timeline$Period;

    move-result-object v5

    invoke-virtual {v5}, Landroidx/media3/common/Timeline$Period;->getPositionInWindowUs()J

    move-result-wide v5

    neg-long v5, v5

    .line 339
    .local v5, "secondaryWindowOffsetUs":J
    iget-object v7, p0, Landroidx/media3/exoplayer/source/MergingMediaSource;->periodTimeOffsetsUs:[[J

    aget-object v7, v7, v1

    sub-long v8, v2, v5

    aput-wide v8, v7, v4

    .line 336
    .end local v5    # "secondaryWindowOffsetUs":J
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 333
    .end local v2    # "primaryWindowOffsetUs":J
    .end local v4    # "timelineIndex":I
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 343
    .end local v1    # "periodIndex":I
    :cond_1
    return-void
.end method

.method private updateClippedDuration()V
    .locals 12

    .line 346
    new-instance v0, Landroidx/media3/common/Timeline$Period;

    invoke-direct {v0}, Landroidx/media3/common/Timeline$Period;-><init>()V

    .line 347
    .local v0, "period":Landroidx/media3/common/Timeline$Period;
    const/4 v1, 0x0

    .local v1, "periodIndex":I
    :goto_0
    iget v2, p0, Landroidx/media3/exoplayer/source/MergingMediaSource;->periodCount:I

    if-ge v1, v2, :cond_5

    .line 348
    const-wide/high16 v2, -0x8000000000000000L

    .line 349
    .local v2, "minDurationUs":J
    const/4 v4, 0x0

    .local v4, "timelineIndex":I
    :goto_1
    iget-object v5, p0, Landroidx/media3/exoplayer/source/MergingMediaSource;->timelines:[Landroidx/media3/common/Timeline;

    array-length v5, v5

    .line 359
    iget-object v6, p0, Landroidx/media3/exoplayer/source/MergingMediaSource;->timelines:[Landroidx/media3/common/Timeline;

    .line 349
    if-ge v4, v5, :cond_3

    .line 350
    aget-object v5, v6, v4

    invoke-virtual {v5, v1, v0}, Landroidx/media3/common/Timeline;->getPeriod(ILandroidx/media3/common/Timeline$Period;)Landroidx/media3/common/Timeline$Period;

    move-result-object v5

    invoke-virtual {v5}, Landroidx/media3/common/Timeline$Period;->getDurationUs()J

    move-result-wide v5

    .line 351
    .local v5, "durationUs":J
    const-wide v7, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v7, v5, v7

    if-nez v7, :cond_0

    .line 352
    goto :goto_2

    .line 354
    :cond_0
    iget-object v7, p0, Landroidx/media3/exoplayer/source/MergingMediaSource;->periodTimeOffsetsUs:[[J

    aget-object v7, v7, v1

    aget-wide v8, v7, v4

    add-long/2addr v8, v5

    .line 355
    .local v8, "adjustedDurationUs":J
    const-wide/high16 v10, -0x8000000000000000L

    cmp-long v7, v2, v10

    if-eqz v7, :cond_1

    cmp-long v7, v8, v2

    if-gez v7, :cond_2

    .line 356
    :cond_1
    move-wide v2, v8

    .line 349
    .end local v5    # "durationUs":J
    .end local v8    # "adjustedDurationUs":J
    :cond_2
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 359
    .end local v4    # "timelineIndex":I
    :cond_3
    const/4 v4, 0x0

    aget-object v4, v6, v4

    invoke-virtual {v4, v1}, Landroidx/media3/common/Timeline;->getUidOfPeriod(I)Ljava/lang/Object;

    move-result-object v4

    .line 360
    .local v4, "periodUid":Ljava/lang/Object;
    iget-object v5, p0, Landroidx/media3/exoplayer/source/MergingMediaSource;->clippedDurationsUs:Ljava/util/Map;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-interface {v5, v4, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 361
    iget-object v5, p0, Landroidx/media3/exoplayer/source/MergingMediaSource;->clippedMediaPeriods:Lcom/google/common/collect/Multimap;

    invoke-interface {v5, v4}, Lcom/google/common/collect/Multimap;->get(Ljava/lang/Object;)Ljava/util/Collection;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_3
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroidx/media3/exoplayer/source/ClippingMediaPeriod;

    .line 362
    .local v6, "clippingMediaPeriod":Landroidx/media3/exoplayer/source/ClippingMediaPeriod;
    const-wide/16 v7, 0x0

    invoke-virtual {v6, v7, v8, v2, v3}, Landroidx/media3/exoplayer/source/ClippingMediaPeriod;->updateClipping(JJ)V

    .line 363
    .end local v6    # "clippingMediaPeriod":Landroidx/media3/exoplayer/source/ClippingMediaPeriod;
    goto :goto_3

    .line 347
    .end local v2    # "minDurationUs":J
    .end local v4    # "periodUid":Ljava/lang/Object;
    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 365
    .end local v1    # "periodIndex":I
    :cond_5
    return-void
.end method


# virtual methods
.method public canUpdateMediaItem(Landroidx/media3/common/MediaItem;)Z
    .locals 2
    .param p1, "mediaItem"    # Landroidx/media3/common/MediaItem;

    .line 201
    iget-object v0, p0, Landroidx/media3/exoplayer/source/MergingMediaSource;->mediaSources:[Landroidx/media3/exoplayer/source/MediaSource;

    array-length v0, v0

    const/4 v1, 0x0

    if-lez v0, :cond_0

    iget-object v0, p0, Landroidx/media3/exoplayer/source/MergingMediaSource;->mediaSources:[Landroidx/media3/exoplayer/source/MediaSource;

    aget-object v0, v0, v1

    invoke-interface {v0, p1}, Landroidx/media3/exoplayer/source/MediaSource;->canUpdateMediaItem(Landroidx/media3/common/MediaItem;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public createPeriod(Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;Landroidx/media3/exoplayer/upstream/Allocator;J)Landroidx/media3/exoplayer/source/MediaPeriod;
    .locals 18
    .param p1, "id"    # Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;
    .param p2, "allocator"    # Landroidx/media3/exoplayer/upstream/Allocator;
    .param p3, "startPositionUs"    # J

    .line 227
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget-object v2, v0, Landroidx/media3/exoplayer/source/MergingMediaSource;->mediaSources:[Landroidx/media3/exoplayer/source/MediaSource;

    array-length v2, v2

    new-array v2, v2, [Landroidx/media3/exoplayer/source/MediaPeriod;

    .line 228
    .local v2, "periods":[Landroidx/media3/exoplayer/source/MediaPeriod;
    iget-object v3, v0, Landroidx/media3/exoplayer/source/MergingMediaSource;->timelines:[Landroidx/media3/common/Timeline;

    const/4 v4, 0x0

    aget-object v3, v3, v4

    iget-object v4, v1, Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;->periodUid:Ljava/lang/Object;

    invoke-virtual {v3, v4}, Landroidx/media3/common/Timeline;->getIndexOfPeriod(Ljava/lang/Object;)I

    move-result v3

    .line 229
    .local v3, "periodIndex":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    array-length v5, v2

    if-ge v4, v5, :cond_0

    .line 230
    iget-object v5, v0, Landroidx/media3/exoplayer/source/MergingMediaSource;->timelines:[Landroidx/media3/common/Timeline;

    aget-object v5, v5, v4

    invoke-virtual {v5, v3}, Landroidx/media3/common/Timeline;->getUidOfPeriod(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;->copyWithPeriodUid(Ljava/lang/Object;)Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    move-result-object v5

    .line 231
    .local v5, "mediaPeriodId":Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;
    iget-object v6, v0, Landroidx/media3/exoplayer/source/MergingMediaSource;->mediaSources:[Landroidx/media3/exoplayer/source/MediaSource;

    aget-object v6, v6, v4

    iget-object v7, v0, Landroidx/media3/exoplayer/source/MergingMediaSource;->periodTimeOffsetsUs:[[J

    aget-object v7, v7, v3

    aget-wide v8, v7, v4

    sub-long v7, p3, v8

    .line 232
    move-object/from16 v9, p2

    invoke-interface {v6, v5, v9, v7, v8}, Landroidx/media3/exoplayer/source/MediaSource;->createPeriod(Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;Landroidx/media3/exoplayer/upstream/Allocator;J)Landroidx/media3/exoplayer/source/MediaPeriod;

    move-result-object v6

    aput-object v6, v2, v4

    .line 234
    iget-object v6, v0, Landroidx/media3/exoplayer/source/MergingMediaSource;->mediaPeriods:Ljava/util/List;

    invoke-interface {v6, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    new-instance v7, Landroidx/media3/exoplayer/source/MergingMediaSource$MediaPeriodAndId;

    aget-object v8, v2, v4

    const/4 v10, 0x0

    invoke-direct {v7, v5, v8, v10}, Landroidx/media3/exoplayer/source/MergingMediaSource$MediaPeriodAndId;-><init>(Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;Landroidx/media3/exoplayer/source/MediaPeriod;Landroidx/media3/exoplayer/source/MergingMediaSource$1;)V

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 229
    .end local v5    # "mediaPeriodId":Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    move-object/from16 v9, p2

    .line 236
    .end local v4    # "i":I
    new-instance v4, Landroidx/media3/exoplayer/source/MergingMediaPeriod;

    iget-object v5, v0, Landroidx/media3/exoplayer/source/MergingMediaSource;->compositeSequenceableLoaderFactory:Landroidx/media3/exoplayer/source/CompositeSequenceableLoaderFactory;

    iget-object v6, v0, Landroidx/media3/exoplayer/source/MergingMediaSource;->periodTimeOffsetsUs:[[J

    aget-object v6, v6, v3

    invoke-direct {v4, v5, v6, v2}, Landroidx/media3/exoplayer/source/MergingMediaPeriod;-><init>(Landroidx/media3/exoplayer/source/CompositeSequenceableLoaderFactory;[J[Landroidx/media3/exoplayer/source/MediaPeriod;)V

    move-object v11, v4

    .line 239
    .local v11, "mediaPeriod":Landroidx/media3/exoplayer/source/MediaPeriod;
    iget-boolean v4, v0, Landroidx/media3/exoplayer/source/MergingMediaSource;->clipDurations:Z

    if-eqz v4, :cond_1

    .line 240
    new-instance v10, Landroidx/media3/exoplayer/source/ClippingMediaPeriod;

    iget-object v4, v0, Landroidx/media3/exoplayer/source/MergingMediaSource;->clippedDurationsUs:Ljava/util/Map;

    iget-object v5, v1, Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;->periodUid:Ljava/lang/Object;

    .line 245
    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    invoke-static {v4}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v15

    iget-boolean v4, v0, Landroidx/media3/exoplayer/source/MergingMediaSource;->enableClippingInMediaPeriod:Z

    const/4 v12, 0x0

    const-wide/16 v13, 0x0

    move/from16 v17, v4

    invoke-direct/range {v10 .. v17}, Landroidx/media3/exoplayer/source/ClippingMediaPeriod;-><init>(Landroidx/media3/exoplayer/source/MediaPeriod;ZJJZ)V

    move-object v11, v10

    .line 247
    iget-object v4, v0, Landroidx/media3/exoplayer/source/MergingMediaSource;->clippedMediaPeriods:Lcom/google/common/collect/Multimap;

    iget-object v5, v1, Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;->periodUid:Ljava/lang/Object;

    move-object v6, v11

    check-cast v6, Landroidx/media3/exoplayer/source/ClippingMediaPeriod;

    invoke-interface {v4, v5, v6}, Lcom/google/common/collect/Multimap;->put(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 249
    :cond_1
    return-object v11
.end method

.method public getMediaItem()Landroidx/media3/common/MediaItem;
    .locals 2

    .line 196
    iget-object v0, p0, Landroidx/media3/exoplayer/source/MergingMediaSource;->mediaSources:[Landroidx/media3/exoplayer/source/MediaSource;

    array-length v0, v0

    if-lez v0, :cond_0

    iget-object v0, p0, Landroidx/media3/exoplayer/source/MergingMediaSource;->mediaSources:[Landroidx/media3/exoplayer/source/MediaSource;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-interface {v0}, Landroidx/media3/exoplayer/source/MediaSource;->getMediaItem()Landroidx/media3/common/MediaItem;

    move-result-object v0

    goto :goto_0

    :cond_0
    sget-object v0, Landroidx/media3/exoplayer/source/MergingMediaSource;->PLACEHOLDER_MEDIA_ITEM:Landroidx/media3/common/MediaItem;

    :goto_0
    return-object v0
.end method

.method protected getMediaPeriodIdForChildMediaPeriodId(Ljava/lang/Integer;Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;)Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;
    .locals 4
    .param p1, "childSourceId"    # Ljava/lang/Integer;
    .param p2, "mediaPeriodId"    # Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    .line 322
    iget-object v0, p0, Landroidx/media3/exoplayer/source/MergingMediaSource;->mediaPeriods:Ljava/util/List;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 323
    .local v0, "childMediaPeriodIds":Ljava/util/List;, "Ljava/util/List<Landroidx/media3/exoplayer/source/MergingMediaSource$MediaPeriodAndId;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 324
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/media3/exoplayer/source/MergingMediaSource$MediaPeriodAndId;

    invoke-static {v2}, Landroidx/media3/exoplayer/source/MergingMediaSource$MediaPeriodAndId;->access$200(Landroidx/media3/exoplayer/source/MergingMediaSource$MediaPeriodAndId;)Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    move-result-object v2

    invoke-virtual {v2, p2}, Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 325
    iget-object v2, p0, Landroidx/media3/exoplayer/source/MergingMediaSource;->mediaPeriods:Ljava/util/List;

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/media3/exoplayer/source/MergingMediaSource$MediaPeriodAndId;

    invoke-static {v2}, Landroidx/media3/exoplayer/source/MergingMediaSource$MediaPeriodAndId;->access$200(Landroidx/media3/exoplayer/source/MergingMediaSource$MediaPeriodAndId;)Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    move-result-object v2

    return-object v2

    .line 323
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 328
    .end local v1    # "i":I
    :cond_1
    const/4 v1, 0x0

    return-object v1
.end method

.method protected bridge synthetic getMediaPeriodIdForChildMediaPeriodId(Ljava/lang/Object;Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;)Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 55
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p0, p1, p2}, Landroidx/media3/exoplayer/source/MergingMediaSource;->getMediaPeriodIdForChildMediaPeriodId(Ljava/lang/Integer;Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;)Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    move-result-object p1

    return-object p1
.end method

.method public maybeThrowSourceInfoRefreshError()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 219
    iget-object v0, p0, Landroidx/media3/exoplayer/source/MergingMediaSource;->mergeError:Landroidx/media3/exoplayer/source/MergingMediaSource$IllegalMergeException;

    if-nez v0, :cond_0

    .line 222
    invoke-super {p0}, Landroidx/media3/exoplayer/source/CompositeMediaSource;->maybeThrowSourceInfoRefreshError()V

    .line 223
    return-void

    .line 220
    :cond_0
    iget-object v0, p0, Landroidx/media3/exoplayer/source/MergingMediaSource;->mergeError:Landroidx/media3/exoplayer/source/MergingMediaSource$IllegalMergeException;

    throw v0
.end method

.method protected onChildSourceInfoRefreshed(Ljava/lang/Integer;Landroidx/media3/exoplayer/source/MediaSource;Landroidx/media3/common/Timeline;)V
    .locals 5
    .param p1, "childSourceId"    # Ljava/lang/Integer;
    .param p2, "mediaSource"    # Landroidx/media3/exoplayer/source/MediaSource;
    .param p3, "newTimeline"    # Landroidx/media3/common/Timeline;

    .line 291
    iget-object v0, p0, Landroidx/media3/exoplayer/source/MergingMediaSource;->mergeError:Landroidx/media3/exoplayer/source/MergingMediaSource$IllegalMergeException;

    if-eqz v0, :cond_0

    .line 292
    return-void

    .line 294
    :cond_0
    iget v0, p0, Landroidx/media3/exoplayer/source/MergingMediaSource;->periodCount:I

    const/4 v1, -0x1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_1

    .line 295
    invoke-virtual {p3}, Landroidx/media3/common/Timeline;->getPeriodCount()I

    move-result v0

    iput v0, p0, Landroidx/media3/exoplayer/source/MergingMediaSource;->periodCount:I

    goto :goto_0

    .line 296
    :cond_1
    invoke-virtual {p3}, Landroidx/media3/common/Timeline;->getPeriodCount()I

    move-result v0

    iget v1, p0, Landroidx/media3/exoplayer/source/MergingMediaSource;->periodCount:I

    if-eq v0, v1, :cond_2

    .line 297
    new-instance v0, Landroidx/media3/exoplayer/source/MergingMediaSource$IllegalMergeException;

    invoke-direct {v0, v2}, Landroidx/media3/exoplayer/source/MergingMediaSource$IllegalMergeException;-><init>(I)V

    iput-object v0, p0, Landroidx/media3/exoplayer/source/MergingMediaSource;->mergeError:Landroidx/media3/exoplayer/source/MergingMediaSource$IllegalMergeException;

    .line 298
    return-void

    .line 300
    :cond_2
    :goto_0
    iget-object v0, p0, Landroidx/media3/exoplayer/source/MergingMediaSource;->periodTimeOffsetsUs:[[J

    array-length v0, v0

    if-nez v0, :cond_3

    .line 301
    iget v0, p0, Landroidx/media3/exoplayer/source/MergingMediaSource;->periodCount:I

    iget-object v1, p0, Landroidx/media3/exoplayer/source/MergingMediaSource;->timelines:[Landroidx/media3/common/Timeline;

    array-length v1, v1

    const/4 v3, 0x2

    new-array v3, v3, [I

    const/4 v4, 0x1

    aput v1, v3, v4

    aput v0, v3, v2

    sget-object v0, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    invoke-static {v0, v3}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[J

    iput-object v0, p0, Landroidx/media3/exoplayer/source/MergingMediaSource;->periodTimeOffsetsUs:[[J

    .line 303
    :cond_3
    iget-object v0, p0, Landroidx/media3/exoplayer/source/MergingMediaSource;->pendingTimelineSources:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 304
    iget-object v0, p0, Landroidx/media3/exoplayer/source/MergingMediaSource;->timelines:[Landroidx/media3/common/Timeline;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    aput-object p3, v0, v1

    .line 305
    iget-object v0, p0, Landroidx/media3/exoplayer/source/MergingMediaSource;->pendingTimelineSources:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 306
    iget-boolean v0, p0, Landroidx/media3/exoplayer/source/MergingMediaSource;->adjustPeriodTimeOffsets:Z

    if-eqz v0, :cond_4

    .line 307
    invoke-direct {p0}, Landroidx/media3/exoplayer/source/MergingMediaSource;->computePeriodTimeOffsets()V

    .line 309
    :cond_4
    iget-object v0, p0, Landroidx/media3/exoplayer/source/MergingMediaSource;->timelines:[Landroidx/media3/common/Timeline;

    aget-object v0, v0, v2

    .line 310
    .local v0, "mergedTimeline":Landroidx/media3/common/Timeline;
    iget-boolean v1, p0, Landroidx/media3/exoplayer/source/MergingMediaSource;->clipDurations:Z

    if-eqz v1, :cond_5

    .line 311
    invoke-direct {p0}, Landroidx/media3/exoplayer/source/MergingMediaSource;->updateClippedDuration()V

    .line 312
    new-instance v1, Landroidx/media3/exoplayer/source/MergingMediaSource$ClippedTimeline;

    iget-object v2, p0, Landroidx/media3/exoplayer/source/MergingMediaSource;->clippedDurationsUs:Ljava/util/Map;

    invoke-direct {v1, v0, v2}, Landroidx/media3/exoplayer/source/MergingMediaSource$ClippedTimeline;-><init>(Landroidx/media3/common/Timeline;Ljava/util/Map;)V

    move-object v0, v1

    .line 314
    :cond_5
    invoke-virtual {p0, v0}, Landroidx/media3/exoplayer/source/MergingMediaSource;->refreshSourceInfo(Landroidx/media3/common/Timeline;)V

    .line 316
    .end local v0    # "mergedTimeline":Landroidx/media3/common/Timeline;
    :cond_6
    return-void
.end method

.method protected bridge synthetic onChildSourceInfoRefreshed(Ljava/lang/Object;Landroidx/media3/exoplayer/source/MediaSource;Landroidx/media3/common/Timeline;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000,
            0x1000
        }
        names = {
            null,
            null,
            null
        }
    .end annotation

    .line 55
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p0, p1, p2, p3}, Landroidx/media3/exoplayer/source/MergingMediaSource;->onChildSourceInfoRefreshed(Ljava/lang/Integer;Landroidx/media3/exoplayer/source/MediaSource;Landroidx/media3/common/Timeline;)V

    return-void
.end method

.method protected prepareSourceInternal(Landroidx/media3/datasource/TransferListener;)V
    .locals 3
    .param p1, "mediaTransferListener"    # Landroidx/media3/datasource/TransferListener;

    .line 211
    invoke-super {p0, p1}, Landroidx/media3/exoplayer/source/CompositeMediaSource;->prepareSourceInternal(Landroidx/media3/datasource/TransferListener;)V

    .line 212
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Landroidx/media3/exoplayer/source/MergingMediaSource;->mediaSources:[Landroidx/media3/exoplayer/source/MediaSource;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 213
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v2, p0, Landroidx/media3/exoplayer/source/MergingMediaSource;->mediaSources:[Landroidx/media3/exoplayer/source/MediaSource;

    aget-object v2, v2, v0

    invoke-virtual {p0, v1, v2}, Landroidx/media3/exoplayer/source/MergingMediaSource;->prepareChildSource(Ljava/lang/Object;Landroidx/media3/exoplayer/source/MediaSource;)V

    .line 212
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 215
    .end local v0    # "i":I
    :cond_0
    return-void
.end method

.method public releasePeriod(Landroidx/media3/exoplayer/source/MediaPeriod;)V
    .locals 6
    .param p1, "mediaPeriod"    # Landroidx/media3/exoplayer/source/MediaPeriod;

    .line 254
    iget-boolean v0, p0, Landroidx/media3/exoplayer/source/MergingMediaSource;->clipDurations:Z

    if-eqz v0, :cond_2

    .line 255
    move-object v0, p1

    check-cast v0, Landroidx/media3/exoplayer/source/ClippingMediaPeriod;

    .line 256
    .local v0, "clippingMediaPeriod":Landroidx/media3/exoplayer/source/ClippingMediaPeriod;
    iget-object v1, p0, Landroidx/media3/exoplayer/source/MergingMediaSource;->clippedMediaPeriods:Lcom/google/common/collect/Multimap;

    invoke-interface {v1}, Lcom/google/common/collect/Multimap;->entries()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 257
    .local v2, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Object;Landroidx/media3/exoplayer/source/ClippingMediaPeriod;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/media3/exoplayer/source/ClippingMediaPeriod;

    invoke-virtual {v3, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 258
    iget-object v1, p0, Landroidx/media3/exoplayer/source/MergingMediaSource;->clippedMediaPeriods:Lcom/google/common/collect/Multimap;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v1, v3, v4}, Lcom/google/common/collect/Multimap;->remove(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 259
    goto :goto_1

    .line 261
    .end local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Object;Landroidx/media3/exoplayer/source/ClippingMediaPeriod;>;"
    :cond_0
    goto :goto_0

    .line 262
    :cond_1
    :goto_1
    iget-object p1, v0, Landroidx/media3/exoplayer/source/ClippingMediaPeriod;->mediaPeriod:Landroidx/media3/exoplayer/source/MediaPeriod;

    .line 264
    .end local v0    # "clippingMediaPeriod":Landroidx/media3/exoplayer/source/ClippingMediaPeriod;
    :cond_2
    move-object v0, p1

    check-cast v0, Landroidx/media3/exoplayer/source/MergingMediaPeriod;

    .line 265
    .local v0, "mergingPeriod":Landroidx/media3/exoplayer/source/MergingMediaPeriod;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_2
    iget-object v2, p0, Landroidx/media3/exoplayer/source/MergingMediaSource;->mediaSources:[Landroidx/media3/exoplayer/source/MediaSource;

    array-length v2, v2

    if-ge v1, v2, :cond_5

    .line 266
    iget-object v2, p0, Landroidx/media3/exoplayer/source/MergingMediaSource;->mediaPeriods:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    .line 267
    .local v2, "mediaPeriodsForSource":Ljava/util/List;, "Ljava/util/List<Landroidx/media3/exoplayer/source/MergingMediaSource$MediaPeriodAndId;>;"
    invoke-virtual {v0, v1}, Landroidx/media3/exoplayer/source/MergingMediaPeriod;->getChildPeriod(I)Landroidx/media3/exoplayer/source/MediaPeriod;

    move-result-object v3

    .line 268
    .local v3, "childPeriod":Landroidx/media3/exoplayer/source/MediaPeriod;
    const/4 v4, 0x0

    .local v4, "j":I
    :goto_3
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v5

    if-ge v4, v5, :cond_4

    .line 269
    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/media3/exoplayer/source/MergingMediaSource$MediaPeriodAndId;

    invoke-static {v5}, Landroidx/media3/exoplayer/source/MergingMediaSource$MediaPeriodAndId;->access$100(Landroidx/media3/exoplayer/source/MergingMediaSource$MediaPeriodAndId;)Landroidx/media3/exoplayer/source/MediaPeriod;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 270
    invoke-interface {v2, v4}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 271
    goto :goto_4

    .line 268
    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 274
    .end local v4    # "j":I
    :cond_4
    :goto_4
    iget-object v4, p0, Landroidx/media3/exoplayer/source/MergingMediaSource;->mediaSources:[Landroidx/media3/exoplayer/source/MediaSource;

    aget-object v4, v4, v1

    invoke-virtual {v0, v1}, Landroidx/media3/exoplayer/source/MergingMediaPeriod;->getChildPeriod(I)Landroidx/media3/exoplayer/source/MediaPeriod;

    move-result-object v5

    invoke-interface {v4, v5}, Landroidx/media3/exoplayer/source/MediaSource;->releasePeriod(Landroidx/media3/exoplayer/source/MediaPeriod;)V

    .line 265
    .end local v2    # "mediaPeriodsForSource":Ljava/util/List;, "Ljava/util/List<Landroidx/media3/exoplayer/source/MergingMediaSource$MediaPeriodAndId;>;"
    .end local v3    # "childPeriod":Landroidx/media3/exoplayer/source/MediaPeriod;
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 276
    .end local v1    # "i":I
    :cond_5
    return-void
.end method

.method protected releaseSourceInternal()V
    .locals 2

    .line 280
    invoke-super {p0}, Landroidx/media3/exoplayer/source/CompositeMediaSource;->releaseSourceInternal()V

    .line 281
    iget-object v0, p0, Landroidx/media3/exoplayer/source/MergingMediaSource;->timelines:[Landroidx/media3/common/Timeline;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V

    .line 282
    const/4 v0, -0x1

    iput v0, p0, Landroidx/media3/exoplayer/source/MergingMediaSource;->periodCount:I

    .line 283
    iput-object v1, p0, Landroidx/media3/exoplayer/source/MergingMediaSource;->mergeError:Landroidx/media3/exoplayer/source/MergingMediaSource$IllegalMergeException;

    .line 284
    iget-object v0, p0, Landroidx/media3/exoplayer/source/MergingMediaSource;->pendingTimelineSources:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 285
    iget-object v0, p0, Landroidx/media3/exoplayer/source/MergingMediaSource;->pendingTimelineSources:Ljava/util/ArrayList;

    iget-object v1, p0, Landroidx/media3/exoplayer/source/MergingMediaSource;->mediaSources:[Landroidx/media3/exoplayer/source/MediaSource;

    invoke-static {v0, v1}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 286
    return-void
.end method

.method public setEnableClippingInMediaPeriod(Z)V
    .locals 0
    .param p1, "enableClippingInMediaPeriod"    # Z

    .line 191
    iput-boolean p1, p0, Landroidx/media3/exoplayer/source/MergingMediaSource;->enableClippingInMediaPeriod:Z

    .line 192
    return-void
.end method

.method public updateMediaItem(Landroidx/media3/common/MediaItem;)V
    .locals 2
    .param p1, "mediaItem"    # Landroidx/media3/common/MediaItem;

    .line 206
    iget-object v0, p0, Landroidx/media3/exoplayer/source/MergingMediaSource;->mediaSources:[Landroidx/media3/exoplayer/source/MediaSource;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-interface {v0, p1}, Landroidx/media3/exoplayer/source/MediaSource;->updateMediaItem(Landroidx/media3/common/MediaItem;)V

    .line 207
    return-void
.end method
