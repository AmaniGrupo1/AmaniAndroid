.class public final Landroidx/media3/common/Timeline$RemotableTimeline;
.super Landroidx/media3/common/Timeline;
.source "Timeline.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media3/common/Timeline;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "RemotableTimeline"
.end annotation


# instance fields
.field private final periods:Lcom/google/common/collect/ImmutableList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/ImmutableList<",
            "Landroidx/media3/common/Timeline$Period;",
            ">;"
        }
    .end annotation
.end field

.field private final shuffledWindowIndices:[I

.field private final windowIndicesInShuffled:[I

.field private final windows:Lcom/google/common/collect/ImmutableList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/ImmutableList<",
            "Landroidx/media3/common/Timeline$Window;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/common/collect/ImmutableList;Lcom/google/common/collect/ImmutableList;[I)V
    .locals 3
    .param p3, "shuffledWindowIndices"    # [I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/ImmutableList<",
            "Landroidx/media3/common/Timeline$Window;",
            ">;",
            "Lcom/google/common/collect/ImmutableList<",
            "Landroidx/media3/common/Timeline$Period;",
            ">;[I)V"
        }
    .end annotation

    .line 1582
    .local p1, "windows":Lcom/google/common/collect/ImmutableList;, "Lcom/google/common/collect/ImmutableList<Landroidx/media3/common/Timeline$Window;>;"
    .local p2, "periods":Lcom/google/common/collect/ImmutableList;, "Lcom/google/common/collect/ImmutableList<Landroidx/media3/common/Timeline$Period;>;"
    invoke-direct {p0}, Landroidx/media3/common/Timeline;-><init>()V

    .line 1583
    invoke-virtual {p1}, Lcom/google/common/collect/ImmutableList;->size()I

    move-result v0

    array-length v1, p3

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    .line 1584
    iput-object p1, p0, Landroidx/media3/common/Timeline$RemotableTimeline;->windows:Lcom/google/common/collect/ImmutableList;

    .line 1585
    iput-object p2, p0, Landroidx/media3/common/Timeline$RemotableTimeline;->periods:Lcom/google/common/collect/ImmutableList;

    .line 1586
    iput-object p3, p0, Landroidx/media3/common/Timeline$RemotableTimeline;->shuffledWindowIndices:[I

    .line 1587
    array-length v0, p3

    new-array v0, v0, [I

    iput-object v0, p0, Landroidx/media3/common/Timeline$RemotableTimeline;->windowIndicesInShuffled:[I

    .line 1588
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    array-length v1, p3

    if-ge v0, v1, :cond_1

    .line 1589
    iget-object v1, p0, Landroidx/media3/common/Timeline$RemotableTimeline;->windowIndicesInShuffled:[I

    aget v2, p3, v0

    aput v0, v1, v2

    .line 1588
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1591
    .end local v0    # "i":I
    :cond_1
    return-void
.end method


# virtual methods
.method public getFirstWindowIndex(Z)I
    .locals 2
    .param p1, "shuffleModeEnabled"    # Z

    .line 1664
    invoke-virtual {p0}, Landroidx/media3/common/Timeline$RemotableTimeline;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1665
    const/4 v0, -0x1

    return v0

    .line 1667
    :cond_0
    const/4 v0, 0x0

    if-eqz p1, :cond_1

    iget-object v1, p0, Landroidx/media3/common/Timeline$RemotableTimeline;->shuffledWindowIndices:[I

    aget v0, v1, v0

    :cond_1
    return v0
.end method

.method public getIndexOfPeriod(Ljava/lang/Object;)I
    .locals 1
    .param p1, "uid"    # Ljava/lang/Object;

    .line 1691
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public getLastWindowIndex(Z)I
    .locals 2
    .param p1, "shuffleModeEnabled"    # Z

    .line 1654
    invoke-virtual {p0}, Landroidx/media3/common/Timeline$RemotableTimeline;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1655
    const/4 v0, -0x1

    return v0

    .line 1657
    :cond_0
    if-eqz p1, :cond_1

    .line 1658
    iget-object v0, p0, Landroidx/media3/common/Timeline$RemotableTimeline;->shuffledWindowIndices:[I

    invoke-virtual {p0}, Landroidx/media3/common/Timeline$RemotableTimeline;->getWindowCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    aget v0, v0, v1

    goto :goto_0

    .line 1659
    :cond_1
    invoke-virtual {p0}, Landroidx/media3/common/Timeline$RemotableTimeline;->getWindowCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .line 1657
    :goto_0
    return v0
.end method

.method public getNextWindowIndex(IIZ)I
    .locals 3
    .param p1, "windowIndex"    # I
    .param p2, "repeatMode"    # I
    .param p3, "shuffleModeEnabled"    # Z

    .line 1623
    const/4 v0, 0x1

    if-ne p2, v0, :cond_0

    .line 1624
    return p1

    .line 1626
    :cond_0
    invoke-virtual {p0, p3}, Landroidx/media3/common/Timeline$RemotableTimeline;->getLastWindowIndex(Z)I

    move-result v1

    if-ne p1, v1, :cond_2

    .line 1627
    const/4 v0, 0x2

    if-ne p2, v0, :cond_1

    .line 1628
    invoke-virtual {p0, p3}, Landroidx/media3/common/Timeline$RemotableTimeline;->getFirstWindowIndex(Z)I

    move-result v0

    goto :goto_0

    .line 1629
    :cond_1
    const/4 v0, -0x1

    .line 1627
    :goto_0
    return v0

    .line 1631
    :cond_2
    if-eqz p3, :cond_3

    .line 1632
    iget-object v1, p0, Landroidx/media3/common/Timeline$RemotableTimeline;->shuffledWindowIndices:[I

    iget-object v2, p0, Landroidx/media3/common/Timeline$RemotableTimeline;->windowIndicesInShuffled:[I

    aget v2, v2, p1

    add-int/2addr v2, v0

    aget v0, v1, v2

    goto :goto_1

    .line 1633
    :cond_3
    add-int/lit8 v0, p1, 0x1

    .line 1631
    :goto_1
    return v0
.end method

.method public getPeriod(ILandroidx/media3/common/Timeline$Period;Z)Landroidx/media3/common/Timeline$Period;
    .locals 11
    .param p1, "periodIndex"    # I
    .param p2, "period"    # Landroidx/media3/common/Timeline$Period;
    .param p3, "setIds"    # Z

    .line 1677
    iget-object v0, p0, Landroidx/media3/common/Timeline$RemotableTimeline;->periods:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v0, p1}, Lcom/google/common/collect/ImmutableList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media3/common/Timeline$Period;

    .line 1678
    .local v0, "p":Landroidx/media3/common/Timeline$Period;
    iget-object v2, v0, Landroidx/media3/common/Timeline$Period;->id:Ljava/lang/Object;

    iget-object v3, v0, Landroidx/media3/common/Timeline$Period;->uid:Ljava/lang/Object;

    iget v4, v0, Landroidx/media3/common/Timeline$Period;->windowIndex:I

    iget-wide v5, v0, Landroidx/media3/common/Timeline$Period;->durationUs:J

    iget-wide v7, v0, Landroidx/media3/common/Timeline$Period;->positionInWindowUs:J

    iget-object v9, v0, Landroidx/media3/common/Timeline$Period;->adPlaybackState:Landroidx/media3/common/AdPlaybackState;

    iget-boolean v10, v0, Landroidx/media3/common/Timeline$Period;->isPlaceholder:Z

    move-object v1, p2

    .end local p2    # "period":Landroidx/media3/common/Timeline$Period;
    .local v1, "period":Landroidx/media3/common/Timeline$Period;
    invoke-virtual/range {v1 .. v10}, Landroidx/media3/common/Timeline$Period;->set(Ljava/lang/Object;Ljava/lang/Object;IJJLandroidx/media3/common/AdPlaybackState;Z)Landroidx/media3/common/Timeline$Period;

    .line 1686
    return-object v1
.end method

.method public getPeriodCount()I
    .locals 1

    .line 1672
    iget-object v0, p0, Landroidx/media3/common/Timeline$RemotableTimeline;->periods:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableList;->size()I

    move-result v0

    return v0
.end method

.method public getPreviousWindowIndex(IIZ)I
    .locals 3
    .param p1, "windowIndex"    # I
    .param p2, "repeatMode"    # I
    .param p3, "shuffleModeEnabled"    # Z

    .line 1639
    const/4 v0, 0x1

    if-ne p2, v0, :cond_0

    .line 1640
    return p1

    .line 1642
    :cond_0
    invoke-virtual {p0, p3}, Landroidx/media3/common/Timeline$RemotableTimeline;->getFirstWindowIndex(Z)I

    move-result v1

    if-ne p1, v1, :cond_2

    .line 1643
    const/4 v0, 0x2

    if-ne p2, v0, :cond_1

    .line 1644
    invoke-virtual {p0, p3}, Landroidx/media3/common/Timeline$RemotableTimeline;->getLastWindowIndex(Z)I

    move-result v0

    goto :goto_0

    .line 1645
    :cond_1
    const/4 v0, -0x1

    .line 1643
    :goto_0
    return v0

    .line 1647
    :cond_2
    if-eqz p3, :cond_3

    .line 1648
    iget-object v1, p0, Landroidx/media3/common/Timeline$RemotableTimeline;->shuffledWindowIndices:[I

    iget-object v2, p0, Landroidx/media3/common/Timeline$RemotableTimeline;->windowIndicesInShuffled:[I

    aget v2, v2, p1

    sub-int/2addr v2, v0

    aget v0, v1, v2

    goto :goto_1

    .line 1649
    :cond_3
    add-int/lit8 v0, p1, -0x1

    .line 1647
    :goto_1
    return v0
.end method

.method public getUidOfPeriod(I)Ljava/lang/Object;
    .locals 1
    .param p1, "periodIndex"    # I

    .line 1696
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public getWindow(ILandroidx/media3/common/Timeline$Window;J)Landroidx/media3/common/Timeline$Window;
    .locals 26
    .param p1, "windowIndex"    # I
    .param p2, "window"    # Landroidx/media3/common/Timeline$Window;
    .param p3, "defaultPositionProjectionUs"    # J

    .line 1600
    move-object/from16 v0, p0

    iget-object v1, v0, Landroidx/media3/common/Timeline$RemotableTimeline;->windows:Lcom/google/common/collect/ImmutableList;

    move/from16 v2, p1

    invoke-virtual {v1, v2}, Lcom/google/common/collect/ImmutableList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/media3/common/Timeline$Window;

    .line 1601
    .local v1, "w":Landroidx/media3/common/Timeline$Window;
    iget-object v3, v1, Landroidx/media3/common/Timeline$Window;->uid:Ljava/lang/Object;

    iget-object v2, v1, Landroidx/media3/common/Timeline$Window;->mediaItem:Landroidx/media3/common/MediaItem;

    move-object v4, v3

    iget-object v3, v1, Landroidx/media3/common/Timeline$Window;->manifest:Ljava/lang/Object;

    move-object v6, v4

    iget-wide v4, v1, Landroidx/media3/common/Timeline$Window;->presentationStartTimeMs:J

    move-object v8, v6

    iget-wide v6, v1, Landroidx/media3/common/Timeline$Window;->windowStartTimeMs:J

    move-object v10, v8

    iget-wide v8, v1, Landroidx/media3/common/Timeline$Window;->elapsedRealtimeEpochOffsetMs:J

    move-object v11, v10

    iget-boolean v10, v1, Landroidx/media3/common/Timeline$Window;->isSeekable:Z

    move-object v12, v11

    iget-boolean v11, v1, Landroidx/media3/common/Timeline$Window;->isDynamic:Z

    move-object v13, v12

    iget-object v12, v1, Landroidx/media3/common/Timeline$Window;->liveConfiguration:Landroidx/media3/common/MediaItem$LiveConfiguration;

    move-object v15, v13

    iget-wide v13, v1, Landroidx/media3/common/Timeline$Window;->defaultPositionUs:J

    move-object/from16 v16, v2

    move-object/from16 v17, v3

    iget-wide v2, v1, Landroidx/media3/common/Timeline$Window;->durationUs:J

    iget v0, v1, Landroidx/media3/common/Timeline$Window;->firstPeriodIndex:I

    move/from16 v18, v0

    iget v0, v1, Landroidx/media3/common/Timeline$Window;->lastPeriodIndex:I

    move-wide/from16 v19, v2

    iget-wide v2, v1, Landroidx/media3/common/Timeline$Window;->positionInFirstPeriodUs:J

    move-object/from16 v21, v1

    move-object v1, v15

    move/from16 v22, v0

    move-object/from16 v0, p2

    move/from16 v23, v18

    move/from16 v18, v22

    move-wide/from16 v24, v2

    move-object/from16 v2, v16

    move-object/from16 v3, v17

    move/from16 v17, v23

    move-wide/from16 v15, v19

    move-wide/from16 v19, v24

    .end local v1    # "w":Landroidx/media3/common/Timeline$Window;
    .local v21, "w":Landroidx/media3/common/Timeline$Window;
    invoke-virtual/range {v0 .. v20}, Landroidx/media3/common/Timeline$Window;->set(Ljava/lang/Object;Landroidx/media3/common/MediaItem;Ljava/lang/Object;JJJZZLandroidx/media3/common/MediaItem$LiveConfiguration;JJIIJ)Landroidx/media3/common/Timeline$Window;

    .line 1616
    move-object/from16 v1, v21

    .end local v21    # "w":Landroidx/media3/common/Timeline$Window;
    .restart local v1    # "w":Landroidx/media3/common/Timeline$Window;
    iget-boolean v2, v1, Landroidx/media3/common/Timeline$Window;->isPlaceholder:Z

    iput-boolean v2, v0, Landroidx/media3/common/Timeline$Window;->isPlaceholder:Z

    .line 1617
    return-object v0
.end method

.method public getWindowCount()I
    .locals 1

    .line 1595
    iget-object v0, p0, Landroidx/media3/common/Timeline$RemotableTimeline;->windows:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableList;->size()I

    move-result v0

    return v0
.end method
