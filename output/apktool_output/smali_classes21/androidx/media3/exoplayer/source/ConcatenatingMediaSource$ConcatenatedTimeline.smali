.class final Landroidx/media3/exoplayer/source/ConcatenatingMediaSource$ConcatenatedTimeline;
.super Landroidx/media3/exoplayer/AbstractConcatenatedTimeline;
.source "ConcatenatingMediaSource.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media3/exoplayer/source/ConcatenatingMediaSource;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ConcatenatedTimeline"
.end annotation


# instance fields
.field private final childIndexByUid:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Object;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final firstPeriodInChildIndices:[I

.field private final firstWindowInChildIndices:[I

.field private final periodCount:I

.field private final timelines:[Landroidx/media3/common/Timeline;

.field private final uids:[Ljava/lang/Object;

.field private final windowCount:I


# direct methods
.method public constructor <init>(Ljava/util/Collection;Landroidx/media3/exoplayer/source/ShuffleOrder;Z)V
    .locals 9
    .param p2, "shuffleOrder"    # Landroidx/media3/exoplayer/source/ShuffleOrder;
    .param p3, "isAtomic"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Landroidx/media3/exoplayer/source/ConcatenatingMediaSource$MediaSourceHolder;",
            ">;",
            "Landroidx/media3/exoplayer/source/ShuffleOrder;",
            "Z)V"
        }
    .end annotation

    .line 932
    .local p1, "mediaSourceHolders":Ljava/util/Collection;, "Ljava/util/Collection<Landroidx/media3/exoplayer/source/ConcatenatingMediaSource$MediaSourceHolder;>;"
    invoke-direct {p0, p3, p2}, Landroidx/media3/exoplayer/AbstractConcatenatedTimeline;-><init>(ZLandroidx/media3/exoplayer/source/ShuffleOrder;)V

    .line 933
    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v0

    .line 934
    .local v0, "childCount":I
    new-array v1, v0, [I

    iput-object v1, p0, Landroidx/media3/exoplayer/source/ConcatenatingMediaSource$ConcatenatedTimeline;->firstPeriodInChildIndices:[I

    .line 935
    new-array v1, v0, [I

    iput-object v1, p0, Landroidx/media3/exoplayer/source/ConcatenatingMediaSource$ConcatenatedTimeline;->firstWindowInChildIndices:[I

    .line 936
    new-array v1, v0, [Landroidx/media3/common/Timeline;

    iput-object v1, p0, Landroidx/media3/exoplayer/source/ConcatenatingMediaSource$ConcatenatedTimeline;->timelines:[Landroidx/media3/common/Timeline;

    .line 937
    new-array v1, v0, [Ljava/lang/Object;

    iput-object v1, p0, Landroidx/media3/exoplayer/source/ConcatenatingMediaSource$ConcatenatedTimeline;->uids:[Ljava/lang/Object;

    .line 938
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Landroidx/media3/exoplayer/source/ConcatenatingMediaSource$ConcatenatedTimeline;->childIndexByUid:Ljava/util/HashMap;

    .line 939
    const/4 v1, 0x0

    .line 940
    .local v1, "index":I
    const/4 v2, 0x0

    .line 941
    .local v2, "windowCount":I
    const/4 v3, 0x0

    .line 942
    .local v3, "periodCount":I
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/media3/exoplayer/source/ConcatenatingMediaSource$MediaSourceHolder;

    .line 943
    .local v5, "mediaSourceHolder":Landroidx/media3/exoplayer/source/ConcatenatingMediaSource$MediaSourceHolder;
    iget-object v6, p0, Landroidx/media3/exoplayer/source/ConcatenatingMediaSource$ConcatenatedTimeline;->timelines:[Landroidx/media3/common/Timeline;

    iget-object v7, v5, Landroidx/media3/exoplayer/source/ConcatenatingMediaSource$MediaSourceHolder;->mediaSource:Landroidx/media3/exoplayer/source/MaskingMediaSource;

    invoke-virtual {v7}, Landroidx/media3/exoplayer/source/MaskingMediaSource;->getTimeline()Landroidx/media3/common/Timeline;

    move-result-object v7

    aput-object v7, v6, v1

    .line 944
    iget-object v6, p0, Landroidx/media3/exoplayer/source/ConcatenatingMediaSource$ConcatenatedTimeline;->firstWindowInChildIndices:[I

    aput v2, v6, v1

    .line 945
    iget-object v6, p0, Landroidx/media3/exoplayer/source/ConcatenatingMediaSource$ConcatenatedTimeline;->firstPeriodInChildIndices:[I

    aput v3, v6, v1

    .line 946
    iget-object v6, p0, Landroidx/media3/exoplayer/source/ConcatenatingMediaSource$ConcatenatedTimeline;->timelines:[Landroidx/media3/common/Timeline;

    aget-object v6, v6, v1

    invoke-virtual {v6}, Landroidx/media3/common/Timeline;->getWindowCount()I

    move-result v6

    add-int/2addr v2, v6

    .line 947
    iget-object v6, p0, Landroidx/media3/exoplayer/source/ConcatenatingMediaSource$ConcatenatedTimeline;->timelines:[Landroidx/media3/common/Timeline;

    aget-object v6, v6, v1

    invoke-virtual {v6}, Landroidx/media3/common/Timeline;->getPeriodCount()I

    move-result v6

    add-int/2addr v3, v6

    .line 948
    iget-object v6, p0, Landroidx/media3/exoplayer/source/ConcatenatingMediaSource$ConcatenatedTimeline;->uids:[Ljava/lang/Object;

    iget-object v7, v5, Landroidx/media3/exoplayer/source/ConcatenatingMediaSource$MediaSourceHolder;->uid:Ljava/lang/Object;

    aput-object v7, v6, v1

    .line 949
    iget-object v6, p0, Landroidx/media3/exoplayer/source/ConcatenatingMediaSource$ConcatenatedTimeline;->childIndexByUid:Ljava/util/HashMap;

    iget-object v7, p0, Landroidx/media3/exoplayer/source/ConcatenatingMediaSource$ConcatenatedTimeline;->uids:[Ljava/lang/Object;

    aget-object v7, v7, v1

    add-int/lit8 v8, v1, 0x1

    .end local v1    # "index":I
    .local v8, "index":I
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v6, v7, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 950
    .end local v5    # "mediaSourceHolder":Landroidx/media3/exoplayer/source/ConcatenatingMediaSource$MediaSourceHolder;
    move v1, v8

    goto :goto_0

    .line 951
    .end local v8    # "index":I
    .restart local v1    # "index":I
    :cond_0
    iput v2, p0, Landroidx/media3/exoplayer/source/ConcatenatingMediaSource$ConcatenatedTimeline;->windowCount:I

    .line 952
    iput v3, p0, Landroidx/media3/exoplayer/source/ConcatenatingMediaSource$ConcatenatedTimeline;->periodCount:I

    .line 953
    return-void
.end method


# virtual methods
.method protected getChildIndexByChildUid(Ljava/lang/Object;)I
    .locals 2
    .param p1, "childUid"    # Ljava/lang/Object;

    .line 967
    iget-object v0, p0, Landroidx/media3/exoplayer/source/ConcatenatingMediaSource$ConcatenatedTimeline;->childIndexByUid:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 968
    .local v0, "index":Ljava/lang/Integer;
    if-nez v0, :cond_0

    const/4 v1, -0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    :goto_0
    return v1
.end method

.method protected getChildIndexByPeriodIndex(I)I
    .locals 3
    .param p1, "periodIndex"    # I

    .line 957
    iget-object v0, p0, Landroidx/media3/exoplayer/source/ConcatenatingMediaSource$ConcatenatedTimeline;->firstPeriodInChildIndices:[I

    add-int/lit8 v1, p1, 0x1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2, v2}, Landroidx/media3/common/util/Util;->binarySearchFloor([IIZZ)I

    move-result v0

    return v0
.end method

.method protected getChildIndexByWindowIndex(I)I
    .locals 3
    .param p1, "windowIndex"    # I

    .line 962
    iget-object v0, p0, Landroidx/media3/exoplayer/source/ConcatenatingMediaSource$ConcatenatedTimeline;->firstWindowInChildIndices:[I

    add-int/lit8 v1, p1, 0x1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2, v2}, Landroidx/media3/common/util/Util;->binarySearchFloor([IIZZ)I

    move-result v0

    return v0
.end method

.method protected getChildUidByChildIndex(I)Ljava/lang/Object;
    .locals 1
    .param p1, "childIndex"    # I

    .line 988
    iget-object v0, p0, Landroidx/media3/exoplayer/source/ConcatenatingMediaSource$ConcatenatedTimeline;->uids:[Ljava/lang/Object;

    aget-object v0, v0, p1

    return-object v0
.end method

.method protected getFirstPeriodIndexByChildIndex(I)I
    .locals 1
    .param p1, "childIndex"    # I

    .line 978
    iget-object v0, p0, Landroidx/media3/exoplayer/source/ConcatenatingMediaSource$ConcatenatedTimeline;->firstPeriodInChildIndices:[I

    aget v0, v0, p1

    return v0
.end method

.method protected getFirstWindowIndexByChildIndex(I)I
    .locals 1
    .param p1, "childIndex"    # I

    .line 983
    iget-object v0, p0, Landroidx/media3/exoplayer/source/ConcatenatingMediaSource$ConcatenatedTimeline;->firstWindowInChildIndices:[I

    aget v0, v0, p1

    return v0
.end method

.method public getPeriodCount()I
    .locals 1

    .line 998
    iget v0, p0, Landroidx/media3/exoplayer/source/ConcatenatingMediaSource$ConcatenatedTimeline;->periodCount:I

    return v0
.end method

.method protected getTimelineByChildIndex(I)Landroidx/media3/common/Timeline;
    .locals 1
    .param p1, "childIndex"    # I

    .line 973
    iget-object v0, p0, Landroidx/media3/exoplayer/source/ConcatenatingMediaSource$ConcatenatedTimeline;->timelines:[Landroidx/media3/common/Timeline;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public getWindowCount()I
    .locals 1

    .line 993
    iget v0, p0, Landroidx/media3/exoplayer/source/ConcatenatingMediaSource$ConcatenatedTimeline;->windowCount:I

    return v0
.end method
