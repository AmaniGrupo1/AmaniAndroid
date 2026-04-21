.class public final Landroidx/media3/common/SimpleBasePlayer$MediaItemData;
.super Ljava/lang/Object;
.source "SimpleBasePlayer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media3/common/SimpleBasePlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "MediaItemData"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media3/common/SimpleBasePlayer$MediaItemData$Builder;
    }
.end annotation


# instance fields
.field public final defaultPositionUs:J

.field public final durationUs:J

.field public final elapsedRealtimeEpochOffsetMs:J

.field public final isDynamic:Z

.field public final isPlaceholder:Z

.field public final isSeekable:Z

.field public final liveConfiguration:Landroidx/media3/common/MediaItem$LiveConfiguration;

.field public final manifest:Ljava/lang/Object;

.field public final mediaItem:Landroidx/media3/common/MediaItem;

.field public final mediaMetadata:Landroidx/media3/common/MediaMetadata;

.field private final periodPositionInWindowUs:[J

.field public final periods:Lcom/google/common/collect/ImmutableList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/ImmutableList<",
            "Landroidx/media3/common/SimpleBasePlayer$PeriodData;",
            ">;"
        }
    .end annotation
.end field

.field public final positionInFirstPeriodUs:J

.field public final presentationStartTimeMs:J

.field public final tracks:Landroidx/media3/common/Tracks;

.field public final uid:Ljava/lang/Object;

.field public final windowStartTimeMs:J


# direct methods
.method private constructor <init>(Landroidx/media3/common/SimpleBasePlayer$MediaItemData$Builder;)V
    .locals 9
    .param p1, "builder"    # Landroidx/media3/common/SimpleBasePlayer$MediaItemData$Builder;

    .line 1777
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1778
    invoke-static {p1}, Landroidx/media3/common/SimpleBasePlayer$MediaItemData$Builder;->access$5500(Landroidx/media3/common/SimpleBasePlayer$MediaItemData$Builder;)Landroidx/media3/common/MediaItem$LiveConfiguration;

    move-result-object v0

    const/4 v1, 0x0

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    const/4 v4, 0x1

    if-nez v0, :cond_3

    .line 1779
    nop

    .line 1780
    invoke-static {p1}, Landroidx/media3/common/SimpleBasePlayer$MediaItemData$Builder;->access$5600(Landroidx/media3/common/SimpleBasePlayer$MediaItemData$Builder;)J

    move-result-wide v5

    cmp-long v0, v5, v2

    if-nez v0, :cond_0

    move v0, v4

    goto :goto_0

    :cond_0
    move v0, v1

    .line 1779
    :goto_0
    const-string/jumbo v5, "presentationStartTimeMs can only be set if liveConfiguration != null"

    invoke-static {v0, v5}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 1782
    nop

    .line 1783
    invoke-static {p1}, Landroidx/media3/common/SimpleBasePlayer$MediaItemData$Builder;->access$5700(Landroidx/media3/common/SimpleBasePlayer$MediaItemData$Builder;)J

    move-result-wide v5

    cmp-long v0, v5, v2

    if-nez v0, :cond_1

    move v0, v4

    goto :goto_1

    :cond_1
    move v0, v1

    .line 1782
    :goto_1
    const-string/jumbo v5, "windowStartTimeMs can only be set if liveConfiguration != null"

    invoke-static {v0, v5}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 1785
    nop

    .line 1786
    invoke-static {p1}, Landroidx/media3/common/SimpleBasePlayer$MediaItemData$Builder;->access$5800(Landroidx/media3/common/SimpleBasePlayer$MediaItemData$Builder;)J

    move-result-wide v5

    cmp-long v0, v5, v2

    if-nez v0, :cond_2

    move v0, v4

    goto :goto_2

    :cond_2
    move v0, v1

    .line 1785
    :goto_2
    const-string v5, "elapsedRealtimeEpochOffsetMs can only be set if liveConfiguration != null"

    invoke-static {v0, v5}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    goto :goto_4

    .line 1788
    :cond_3
    invoke-static {p1}, Landroidx/media3/common/SimpleBasePlayer$MediaItemData$Builder;->access$5600(Landroidx/media3/common/SimpleBasePlayer$MediaItemData$Builder;)J

    move-result-wide v5

    cmp-long v0, v5, v2

    if-eqz v0, :cond_5

    .line 1789
    invoke-static {p1}, Landroidx/media3/common/SimpleBasePlayer$MediaItemData$Builder;->access$5700(Landroidx/media3/common/SimpleBasePlayer$MediaItemData$Builder;)J

    move-result-wide v5

    cmp-long v0, v5, v2

    if-eqz v0, :cond_5

    .line 1790
    nop

    .line 1791
    invoke-static {p1}, Landroidx/media3/common/SimpleBasePlayer$MediaItemData$Builder;->access$5700(Landroidx/media3/common/SimpleBasePlayer$MediaItemData$Builder;)J

    move-result-wide v5

    invoke-static {p1}, Landroidx/media3/common/SimpleBasePlayer$MediaItemData$Builder;->access$5600(Landroidx/media3/common/SimpleBasePlayer$MediaItemData$Builder;)J

    move-result-wide v7

    cmp-long v0, v5, v7

    if-ltz v0, :cond_4

    move v0, v4

    goto :goto_3

    :cond_4
    move v0, v1

    .line 1790
    :goto_3
    const-string/jumbo v5, "windowStartTimeMs can\'t be less than presentationStartTimeMs"

    invoke-static {v0, v5}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 1794
    :cond_5
    :goto_4
    invoke-static {p1}, Landroidx/media3/common/SimpleBasePlayer$MediaItemData$Builder;->access$5900(Landroidx/media3/common/SimpleBasePlayer$MediaItemData$Builder;)Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableList;->size()I

    move-result v0

    .line 1795
    .local v0, "periodCount":I
    invoke-static {p1}, Landroidx/media3/common/SimpleBasePlayer$MediaItemData$Builder;->access$6000(Landroidx/media3/common/SimpleBasePlayer$MediaItemData$Builder;)J

    move-result-wide v5

    cmp-long v2, v5, v2

    if-eqz v2, :cond_7

    .line 1796
    nop

    .line 1797
    invoke-static {p1}, Landroidx/media3/common/SimpleBasePlayer$MediaItemData$Builder;->access$6100(Landroidx/media3/common/SimpleBasePlayer$MediaItemData$Builder;)J

    move-result-wide v2

    invoke-static {p1}, Landroidx/media3/common/SimpleBasePlayer$MediaItemData$Builder;->access$6000(Landroidx/media3/common/SimpleBasePlayer$MediaItemData$Builder;)J

    move-result-wide v5

    cmp-long v2, v2, v5

    if-gtz v2, :cond_6

    goto :goto_5

    :cond_6
    move v4, v1

    .line 1796
    :goto_5
    const-string v2, "defaultPositionUs can\'t be greater than durationUs"

    invoke-static {v4, v2}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 1800
    :cond_7
    invoke-static {p1}, Landroidx/media3/common/SimpleBasePlayer$MediaItemData$Builder;->access$6200(Landroidx/media3/common/SimpleBasePlayer$MediaItemData$Builder;)Ljava/lang/Object;

    move-result-object v2

    iput-object v2, p0, Landroidx/media3/common/SimpleBasePlayer$MediaItemData;->uid:Ljava/lang/Object;

    .line 1801
    invoke-static {p1}, Landroidx/media3/common/SimpleBasePlayer$MediaItemData$Builder;->access$6300(Landroidx/media3/common/SimpleBasePlayer$MediaItemData$Builder;)Landroidx/media3/common/Tracks;

    move-result-object v2

    iput-object v2, p0, Landroidx/media3/common/SimpleBasePlayer$MediaItemData;->tracks:Landroidx/media3/common/Tracks;

    .line 1802
    invoke-static {p1}, Landroidx/media3/common/SimpleBasePlayer$MediaItemData$Builder;->access$6400(Landroidx/media3/common/SimpleBasePlayer$MediaItemData$Builder;)Landroidx/media3/common/MediaItem;

    move-result-object v2

    iput-object v2, p0, Landroidx/media3/common/SimpleBasePlayer$MediaItemData;->mediaItem:Landroidx/media3/common/MediaItem;

    .line 1803
    invoke-static {p1}, Landroidx/media3/common/SimpleBasePlayer$MediaItemData$Builder;->access$6500(Landroidx/media3/common/SimpleBasePlayer$MediaItemData$Builder;)Landroidx/media3/common/MediaMetadata;

    move-result-object v2

    iput-object v2, p0, Landroidx/media3/common/SimpleBasePlayer$MediaItemData;->mediaMetadata:Landroidx/media3/common/MediaMetadata;

    .line 1804
    invoke-static {p1}, Landroidx/media3/common/SimpleBasePlayer$MediaItemData$Builder;->access$6600(Landroidx/media3/common/SimpleBasePlayer$MediaItemData$Builder;)Ljava/lang/Object;

    move-result-object v2

    iput-object v2, p0, Landroidx/media3/common/SimpleBasePlayer$MediaItemData;->manifest:Ljava/lang/Object;

    .line 1805
    invoke-static {p1}, Landroidx/media3/common/SimpleBasePlayer$MediaItemData$Builder;->access$5500(Landroidx/media3/common/SimpleBasePlayer$MediaItemData$Builder;)Landroidx/media3/common/MediaItem$LiveConfiguration;

    move-result-object v2

    iput-object v2, p0, Landroidx/media3/common/SimpleBasePlayer$MediaItemData;->liveConfiguration:Landroidx/media3/common/MediaItem$LiveConfiguration;

    .line 1806
    invoke-static {p1}, Landroidx/media3/common/SimpleBasePlayer$MediaItemData$Builder;->access$5600(Landroidx/media3/common/SimpleBasePlayer$MediaItemData$Builder;)J

    move-result-wide v2

    iput-wide v2, p0, Landroidx/media3/common/SimpleBasePlayer$MediaItemData;->presentationStartTimeMs:J

    .line 1807
    invoke-static {p1}, Landroidx/media3/common/SimpleBasePlayer$MediaItemData$Builder;->access$5700(Landroidx/media3/common/SimpleBasePlayer$MediaItemData$Builder;)J

    move-result-wide v2

    iput-wide v2, p0, Landroidx/media3/common/SimpleBasePlayer$MediaItemData;->windowStartTimeMs:J

    .line 1808
    invoke-static {p1}, Landroidx/media3/common/SimpleBasePlayer$MediaItemData$Builder;->access$5800(Landroidx/media3/common/SimpleBasePlayer$MediaItemData$Builder;)J

    move-result-wide v2

    iput-wide v2, p0, Landroidx/media3/common/SimpleBasePlayer$MediaItemData;->elapsedRealtimeEpochOffsetMs:J

    .line 1809
    invoke-static {p1}, Landroidx/media3/common/SimpleBasePlayer$MediaItemData$Builder;->access$6700(Landroidx/media3/common/SimpleBasePlayer$MediaItemData$Builder;)Z

    move-result v2

    iput-boolean v2, p0, Landroidx/media3/common/SimpleBasePlayer$MediaItemData;->isSeekable:Z

    .line 1810
    invoke-static {p1}, Landroidx/media3/common/SimpleBasePlayer$MediaItemData$Builder;->access$6800(Landroidx/media3/common/SimpleBasePlayer$MediaItemData$Builder;)Z

    move-result v2

    iput-boolean v2, p0, Landroidx/media3/common/SimpleBasePlayer$MediaItemData;->isDynamic:Z

    .line 1811
    invoke-static {p1}, Landroidx/media3/common/SimpleBasePlayer$MediaItemData$Builder;->access$6100(Landroidx/media3/common/SimpleBasePlayer$MediaItemData$Builder;)J

    move-result-wide v2

    iput-wide v2, p0, Landroidx/media3/common/SimpleBasePlayer$MediaItemData;->defaultPositionUs:J

    .line 1812
    invoke-static {p1}, Landroidx/media3/common/SimpleBasePlayer$MediaItemData$Builder;->access$6000(Landroidx/media3/common/SimpleBasePlayer$MediaItemData$Builder;)J

    move-result-wide v2

    iput-wide v2, p0, Landroidx/media3/common/SimpleBasePlayer$MediaItemData;->durationUs:J

    .line 1813
    invoke-static {p1}, Landroidx/media3/common/SimpleBasePlayer$MediaItemData$Builder;->access$6900(Landroidx/media3/common/SimpleBasePlayer$MediaItemData$Builder;)J

    move-result-wide v2

    iput-wide v2, p0, Landroidx/media3/common/SimpleBasePlayer$MediaItemData;->positionInFirstPeriodUs:J

    .line 1814
    invoke-static {p1}, Landroidx/media3/common/SimpleBasePlayer$MediaItemData$Builder;->access$7000(Landroidx/media3/common/SimpleBasePlayer$MediaItemData$Builder;)Z

    move-result v2

    iput-boolean v2, p0, Landroidx/media3/common/SimpleBasePlayer$MediaItemData;->isPlaceholder:Z

    .line 1815
    invoke-static {p1}, Landroidx/media3/common/SimpleBasePlayer$MediaItemData$Builder;->access$5900(Landroidx/media3/common/SimpleBasePlayer$MediaItemData$Builder;)Lcom/google/common/collect/ImmutableList;

    move-result-object v2

    iput-object v2, p0, Landroidx/media3/common/SimpleBasePlayer$MediaItemData;->periods:Lcom/google/common/collect/ImmutableList;

    .line 1816
    iget-object v2, p0, Landroidx/media3/common/SimpleBasePlayer$MediaItemData;->periods:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v2}, Lcom/google/common/collect/ImmutableList;->size()I

    move-result v2

    new-array v2, v2, [J

    iput-object v2, p0, Landroidx/media3/common/SimpleBasePlayer$MediaItemData;->periodPositionInWindowUs:[J

    .line 1817
    iget-object v2, p0, Landroidx/media3/common/SimpleBasePlayer$MediaItemData;->periods:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v2}, Lcom/google/common/collect/ImmutableList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_8

    .line 1818
    iget-object v2, p0, Landroidx/media3/common/SimpleBasePlayer$MediaItemData;->periodPositionInWindowUs:[J

    iget-wide v3, p0, Landroidx/media3/common/SimpleBasePlayer$MediaItemData;->positionInFirstPeriodUs:J

    neg-long v3, v3

    aput-wide v3, v2, v1

    .line 1819
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_6
    add-int/lit8 v2, v0, -0x1

    if-ge v1, v2, :cond_8

    .line 1820
    iget-object v2, p0, Landroidx/media3/common/SimpleBasePlayer$MediaItemData;->periodPositionInWindowUs:[J

    add-int/lit8 v3, v1, 0x1

    iget-object v4, p0, Landroidx/media3/common/SimpleBasePlayer$MediaItemData;->periodPositionInWindowUs:[J

    aget-wide v5, v4, v1

    iget-object v4, p0, Landroidx/media3/common/SimpleBasePlayer$MediaItemData;->periods:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v4, v1}, Lcom/google/common/collect/ImmutableList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/media3/common/SimpleBasePlayer$PeriodData;

    iget-wide v7, v4, Landroidx/media3/common/SimpleBasePlayer$PeriodData;->durationUs:J

    add-long/2addr v5, v7

    aput-wide v5, v2, v3

    .line 1819
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 1823
    .end local v1    # "i":I
    :cond_8
    return-void
.end method

.method synthetic constructor <init>(Landroidx/media3/common/SimpleBasePlayer$MediaItemData$Builder;Landroidx/media3/common/SimpleBasePlayer$1;)V
    .locals 0
    .param p1, "x0"    # Landroidx/media3/common/SimpleBasePlayer$MediaItemData$Builder;
    .param p2, "x1"    # Landroidx/media3/common/SimpleBasePlayer$1;

    .line 1376
    invoke-direct {p0, p1}, Landroidx/media3/common/SimpleBasePlayer$MediaItemData;-><init>(Landroidx/media3/common/SimpleBasePlayer$MediaItemData$Builder;)V

    return-void
.end method

.method static synthetic access$5000(Landroidx/media3/common/SimpleBasePlayer$State;ILandroidx/media3/common/Timeline$Period;Landroidx/media3/common/Timeline$Window;)Landroidx/media3/common/SimpleBasePlayer$MediaItemData;
    .locals 1
    .param p0, "x0"    # Landroidx/media3/common/SimpleBasePlayer$State;
    .param p1, "x1"    # I
    .param p2, "x2"    # Landroidx/media3/common/Timeline$Period;
    .param p3, "x3"    # Landroidx/media3/common/Timeline$Window;

    .line 1376
    invoke-static {p0, p1, p2, p3}, Landroidx/media3/common/SimpleBasePlayer$MediaItemData;->buildFromState(Landroidx/media3/common/SimpleBasePlayer$State;ILandroidx/media3/common/Timeline$Period;Landroidx/media3/common/Timeline$Window;)Landroidx/media3/common/SimpleBasePlayer$MediaItemData;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$5100(Landroidx/media3/common/SimpleBasePlayer$MediaItemData;I)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Landroidx/media3/common/SimpleBasePlayer$MediaItemData;
    .param p1, "x1"    # I

    .line 1376
    invoke-direct {p0, p1}, Landroidx/media3/common/SimpleBasePlayer$MediaItemData;->getPeriodUid(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$5200(Landroidx/media3/common/SimpleBasePlayer$MediaItemData;ILandroidx/media3/common/Timeline$Window;)Landroidx/media3/common/Timeline$Window;
    .locals 1
    .param p0, "x0"    # Landroidx/media3/common/SimpleBasePlayer$MediaItemData;
    .param p1, "x1"    # I
    .param p2, "x2"    # Landroidx/media3/common/Timeline$Window;

    .line 1376
    invoke-direct {p0, p1, p2}, Landroidx/media3/common/SimpleBasePlayer$MediaItemData;->getWindow(ILandroidx/media3/common/Timeline$Window;)Landroidx/media3/common/Timeline$Window;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$5300(Landroidx/media3/common/SimpleBasePlayer$MediaItemData;IILandroidx/media3/common/Timeline$Period;)Landroidx/media3/common/Timeline$Period;
    .locals 1
    .param p0, "x0"    # Landroidx/media3/common/SimpleBasePlayer$MediaItemData;
    .param p1, "x1"    # I
    .param p2, "x2"    # I
    .param p3, "x3"    # Landroidx/media3/common/Timeline$Period;

    .line 1376
    invoke-direct {p0, p1, p2, p3}, Landroidx/media3/common/SimpleBasePlayer$MediaItemData;->getPeriod(IILandroidx/media3/common/Timeline$Period;)Landroidx/media3/common/Timeline$Period;

    move-result-object v0

    return-object v0
.end method

.method private static buildFromState(Landroidx/media3/common/SimpleBasePlayer$State;ILandroidx/media3/common/Timeline$Period;Landroidx/media3/common/Timeline$Window;)Landroidx/media3/common/SimpleBasePlayer$MediaItemData;
    .locals 7
    .param p0, "state"    # Landroidx/media3/common/SimpleBasePlayer$State;
    .param p1, "mediaItemIndex"    # I
    .param p2, "period"    # Landroidx/media3/common/Timeline$Period;
    .param p3, "window"    # Landroidx/media3/common/Timeline$Window;

    .line 1883
    invoke-static {p0}, Landroidx/media3/common/SimpleBasePlayer;->access$7200(Landroidx/media3/common/SimpleBasePlayer$State;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, p1, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 1884
    .local v0, "isCurrentItem":Z
    :goto_0
    iget-object v2, p0, Landroidx/media3/common/SimpleBasePlayer$State;->timeline:Landroidx/media3/common/Timeline;

    invoke-virtual {v2, p1, p3}, Landroidx/media3/common/Timeline;->getWindow(ILandroidx/media3/common/Timeline$Window;)Landroidx/media3/common/Timeline$Window;

    .line 1885
    invoke-static {}, Lcom/google/common/collect/ImmutableList;->builder()Lcom/google/common/collect/ImmutableList$Builder;

    move-result-object v2

    .line 1886
    .local v2, "periods":Lcom/google/common/collect/ImmutableList$Builder;, "Lcom/google/common/collect/ImmutableList$Builder<Landroidx/media3/common/SimpleBasePlayer$PeriodData;>;"
    iget v3, p3, Landroidx/media3/common/Timeline$Window;->firstPeriodIndex:I

    .local v3, "i":I
    :goto_1
    iget v4, p3, Landroidx/media3/common/Timeline$Window;->lastPeriodIndex:I

    if-gt v3, v4, :cond_1

    .line 1887
    iget-object v4, p0, Landroidx/media3/common/SimpleBasePlayer$State;->timeline:Landroidx/media3/common/Timeline;

    invoke-virtual {v4, v3, p2, v1}, Landroidx/media3/common/Timeline;->getPeriod(ILandroidx/media3/common/Timeline$Period;Z)Landroidx/media3/common/Timeline$Period;

    .line 1888
    new-instance v4, Landroidx/media3/common/SimpleBasePlayer$PeriodData$Builder;

    iget-object v5, p2, Landroidx/media3/common/Timeline$Period;->uid:Ljava/lang/Object;

    .line 1889
    invoke-static {v5}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-direct {v4, v5}, Landroidx/media3/common/SimpleBasePlayer$PeriodData$Builder;-><init>(Ljava/lang/Object;)V

    iget-object v5, p2, Landroidx/media3/common/Timeline$Period;->adPlaybackState:Landroidx/media3/common/AdPlaybackState;

    .line 1890
    invoke-virtual {v4, v5}, Landroidx/media3/common/SimpleBasePlayer$PeriodData$Builder;->setAdPlaybackState(Landroidx/media3/common/AdPlaybackState;)Landroidx/media3/common/SimpleBasePlayer$PeriodData$Builder;

    move-result-object v4

    iget-wide v5, p2, Landroidx/media3/common/Timeline$Period;->durationUs:J

    .line 1891
    invoke-virtual {v4, v5, v6}, Landroidx/media3/common/SimpleBasePlayer$PeriodData$Builder;->setDurationUs(J)Landroidx/media3/common/SimpleBasePlayer$PeriodData$Builder;

    move-result-object v4

    iget-boolean v5, p2, Landroidx/media3/common/Timeline$Period;->isPlaceholder:Z

    .line 1892
    invoke-virtual {v4, v5}, Landroidx/media3/common/SimpleBasePlayer$PeriodData$Builder;->setIsPlaceholder(Z)Landroidx/media3/common/SimpleBasePlayer$PeriodData$Builder;

    move-result-object v4

    .line 1893
    invoke-virtual {v4}, Landroidx/media3/common/SimpleBasePlayer$PeriodData$Builder;->build()Landroidx/media3/common/SimpleBasePlayer$PeriodData;

    move-result-object v4

    .line 1888
    invoke-virtual {v2, v4}, Lcom/google/common/collect/ImmutableList$Builder;->add(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList$Builder;

    .line 1886
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 1895
    .end local v3    # "i":I
    :cond_1
    new-instance v1, Landroidx/media3/common/SimpleBasePlayer$MediaItemData$Builder;

    iget-object v3, p3, Landroidx/media3/common/Timeline$Window;->uid:Ljava/lang/Object;

    invoke-direct {v1, v3}, Landroidx/media3/common/SimpleBasePlayer$MediaItemData$Builder;-><init>(Ljava/lang/Object;)V

    iget-wide v3, p3, Landroidx/media3/common/Timeline$Window;->defaultPositionUs:J

    .line 1896
    invoke-virtual {v1, v3, v4}, Landroidx/media3/common/SimpleBasePlayer$MediaItemData$Builder;->setDefaultPositionUs(J)Landroidx/media3/common/SimpleBasePlayer$MediaItemData$Builder;

    move-result-object v1

    iget-wide v3, p3, Landroidx/media3/common/Timeline$Window;->durationUs:J

    .line 1897
    invoke-virtual {v1, v3, v4}, Landroidx/media3/common/SimpleBasePlayer$MediaItemData$Builder;->setDurationUs(J)Landroidx/media3/common/SimpleBasePlayer$MediaItemData$Builder;

    move-result-object v1

    iget-wide v3, p3, Landroidx/media3/common/Timeline$Window;->elapsedRealtimeEpochOffsetMs:J

    .line 1898
    invoke-virtual {v1, v3, v4}, Landroidx/media3/common/SimpleBasePlayer$MediaItemData$Builder;->setElapsedRealtimeEpochOffsetMs(J)Landroidx/media3/common/SimpleBasePlayer$MediaItemData$Builder;

    move-result-object v1

    iget-boolean v3, p3, Landroidx/media3/common/Timeline$Window;->isDynamic:Z

    .line 1899
    invoke-virtual {v1, v3}, Landroidx/media3/common/SimpleBasePlayer$MediaItemData$Builder;->setIsDynamic(Z)Landroidx/media3/common/SimpleBasePlayer$MediaItemData$Builder;

    move-result-object v1

    iget-boolean v3, p3, Landroidx/media3/common/Timeline$Window;->isPlaceholder:Z

    .line 1900
    invoke-virtual {v1, v3}, Landroidx/media3/common/SimpleBasePlayer$MediaItemData$Builder;->setIsPlaceholder(Z)Landroidx/media3/common/SimpleBasePlayer$MediaItemData$Builder;

    move-result-object v1

    iget-boolean v3, p3, Landroidx/media3/common/Timeline$Window;->isSeekable:Z

    .line 1901
    invoke-virtual {v1, v3}, Landroidx/media3/common/SimpleBasePlayer$MediaItemData$Builder;->setIsSeekable(Z)Landroidx/media3/common/SimpleBasePlayer$MediaItemData$Builder;

    move-result-object v1

    iget-object v3, p3, Landroidx/media3/common/Timeline$Window;->liveConfiguration:Landroidx/media3/common/MediaItem$LiveConfiguration;

    .line 1902
    invoke-virtual {v1, v3}, Landroidx/media3/common/SimpleBasePlayer$MediaItemData$Builder;->setLiveConfiguration(Landroidx/media3/common/MediaItem$LiveConfiguration;)Landroidx/media3/common/SimpleBasePlayer$MediaItemData$Builder;

    move-result-object v1

    iget-object v3, p3, Landroidx/media3/common/Timeline$Window;->manifest:Ljava/lang/Object;

    .line 1903
    invoke-virtual {v1, v3}, Landroidx/media3/common/SimpleBasePlayer$MediaItemData$Builder;->setManifest(Ljava/lang/Object;)Landroidx/media3/common/SimpleBasePlayer$MediaItemData$Builder;

    move-result-object v1

    iget-object v3, p3, Landroidx/media3/common/Timeline$Window;->mediaItem:Landroidx/media3/common/MediaItem;

    .line 1904
    invoke-virtual {v1, v3}, Landroidx/media3/common/SimpleBasePlayer$MediaItemData$Builder;->setMediaItem(Landroidx/media3/common/MediaItem;)Landroidx/media3/common/SimpleBasePlayer$MediaItemData$Builder;

    move-result-object v1

    .line 1905
    if-eqz v0, :cond_2

    iget-object v3, p0, Landroidx/media3/common/SimpleBasePlayer$State;->currentMetadata:Landroidx/media3/common/MediaMetadata;

    goto :goto_2

    :cond_2
    const/4 v3, 0x0

    :goto_2
    invoke-virtual {v1, v3}, Landroidx/media3/common/SimpleBasePlayer$MediaItemData$Builder;->setMediaMetadata(Landroidx/media3/common/MediaMetadata;)Landroidx/media3/common/SimpleBasePlayer$MediaItemData$Builder;

    move-result-object v1

    .line 1906
    invoke-virtual {v2}, Lcom/google/common/collect/ImmutableList$Builder;->build()Lcom/google/common/collect/ImmutableList;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroidx/media3/common/SimpleBasePlayer$MediaItemData$Builder;->setPeriods(Ljava/util/List;)Landroidx/media3/common/SimpleBasePlayer$MediaItemData$Builder;

    move-result-object v1

    iget-wide v3, p3, Landroidx/media3/common/Timeline$Window;->positionInFirstPeriodUs:J

    .line 1907
    invoke-virtual {v1, v3, v4}, Landroidx/media3/common/SimpleBasePlayer$MediaItemData$Builder;->setPositionInFirstPeriodUs(J)Landroidx/media3/common/SimpleBasePlayer$MediaItemData$Builder;

    move-result-object v1

    iget-wide v3, p3, Landroidx/media3/common/Timeline$Window;->presentationStartTimeMs:J

    .line 1908
    invoke-virtual {v1, v3, v4}, Landroidx/media3/common/SimpleBasePlayer$MediaItemData$Builder;->setPresentationStartTimeMs(J)Landroidx/media3/common/SimpleBasePlayer$MediaItemData$Builder;

    move-result-object v1

    .line 1909
    if-eqz v0, :cond_3

    iget-object v3, p0, Landroidx/media3/common/SimpleBasePlayer$State;->currentTracks:Landroidx/media3/common/Tracks;

    goto :goto_3

    :cond_3
    sget-object v3, Landroidx/media3/common/Tracks;->EMPTY:Landroidx/media3/common/Tracks;

    :goto_3
    invoke-virtual {v1, v3}, Landroidx/media3/common/SimpleBasePlayer$MediaItemData$Builder;->setTracks(Landroidx/media3/common/Tracks;)Landroidx/media3/common/SimpleBasePlayer$MediaItemData$Builder;

    move-result-object v1

    iget-wide v3, p3, Landroidx/media3/common/Timeline$Window;->windowStartTimeMs:J

    .line 1910
    invoke-virtual {v1, v3, v4}, Landroidx/media3/common/SimpleBasePlayer$MediaItemData$Builder;->setWindowStartTimeMs(J)Landroidx/media3/common/SimpleBasePlayer$MediaItemData$Builder;

    move-result-object v1

    .line 1911
    invoke-virtual {v1}, Landroidx/media3/common/SimpleBasePlayer$MediaItemData$Builder;->build()Landroidx/media3/common/SimpleBasePlayer$MediaItemData;

    move-result-object v1

    .line 1895
    return-object v1
.end method

.method private getPeriod(IILandroidx/media3/common/Timeline$Period;)Landroidx/media3/common/Timeline$Period;
    .locals 23
    .param p1, "windowIndex"    # I
    .param p2, "periodIndexInMediaItem"    # I
    .param p3, "period"    # Landroidx/media3/common/Timeline$Period;

    .line 1937
    move-object/from16 v0, p0

    move/from16 v1, p2

    iget-object v2, v0, Landroidx/media3/common/SimpleBasePlayer$MediaItemData;->periods:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v2}, Lcom/google/common/collect/ImmutableList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1938
    iget-object v4, v0, Landroidx/media3/common/SimpleBasePlayer$MediaItemData;->uid:Ljava/lang/Object;

    iget-object v5, v0, Landroidx/media3/common/SimpleBasePlayer$MediaItemData;->uid:Ljava/lang/Object;

    iget-wide v2, v0, Landroidx/media3/common/SimpleBasePlayer$MediaItemData;->positionInFirstPeriodUs:J

    iget-wide v6, v0, Landroidx/media3/common/SimpleBasePlayer$MediaItemData;->durationUs:J

    add-long v7, v2, v6

    iget-wide v2, v0, Landroidx/media3/common/SimpleBasePlayer$MediaItemData;->positionInFirstPeriodUs:J

    neg-long v9, v2

    sget-object v11, Landroidx/media3/common/AdPlaybackState;->NONE:Landroidx/media3/common/AdPlaybackState;

    iget-boolean v12, v0, Landroidx/media3/common/SimpleBasePlayer$MediaItemData;->isPlaceholder:Z

    move/from16 v6, p1

    move-object/from16 v3, p3

    invoke-virtual/range {v3 .. v12}, Landroidx/media3/common/Timeline$Period;->set(Ljava/lang/Object;Ljava/lang/Object;IJJLandroidx/media3/common/AdPlaybackState;Z)Landroidx/media3/common/Timeline$Period;

    goto :goto_0

    .line 1947
    :cond_0
    iget-object v2, v0, Landroidx/media3/common/SimpleBasePlayer$MediaItemData;->periods:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v2, v1}, Lcom/google/common/collect/ImmutableList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/media3/common/SimpleBasePlayer$PeriodData;

    .line 1948
    .local v2, "periodData":Landroidx/media3/common/SimpleBasePlayer$PeriodData;
    iget-object v14, v2, Landroidx/media3/common/SimpleBasePlayer$PeriodData;->uid:Ljava/lang/Object;

    .line 1949
    .local v14, "periodId":Ljava/lang/Object;
    iget-object v3, v0, Landroidx/media3/common/SimpleBasePlayer$MediaItemData;->uid:Ljava/lang/Object;

    invoke-static {v3, v14}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v15

    .line 1950
    .local v15, "periodUid":Ljava/lang/Object;
    iget-wide v3, v2, Landroidx/media3/common/SimpleBasePlayer$PeriodData;->durationUs:J

    iget-object v5, v0, Landroidx/media3/common/SimpleBasePlayer$MediaItemData;->periodPositionInWindowUs:[J

    aget-wide v19, v5, v1

    iget-object v5, v2, Landroidx/media3/common/SimpleBasePlayer$PeriodData;->adPlaybackState:Landroidx/media3/common/AdPlaybackState;

    iget-boolean v6, v2, Landroidx/media3/common/SimpleBasePlayer$PeriodData;->isPlaceholder:Z

    move/from16 v16, p1

    move-object/from16 v13, p3

    move-wide/from16 v17, v3

    move-object/from16 v21, v5

    move/from16 v22, v6

    invoke-virtual/range {v13 .. v22}, Landroidx/media3/common/Timeline$Period;->set(Ljava/lang/Object;Ljava/lang/Object;IJJLandroidx/media3/common/AdPlaybackState;Z)Landroidx/media3/common/Timeline$Period;

    .line 1959
    .end local v2    # "periodData":Landroidx/media3/common/SimpleBasePlayer$PeriodData;
    .end local v14    # "periodId":Ljava/lang/Object;
    .end local v15    # "periodUid":Ljava/lang/Object;
    :goto_0
    return-object p3
.end method

.method private getPeriodUid(I)Ljava/lang/Object;
    .locals 2
    .param p1, "periodIndexInMediaItem"    # I

    .line 1963
    iget-object v0, p0, Landroidx/media3/common/SimpleBasePlayer$MediaItemData;->periods:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1964
    iget-object v0, p0, Landroidx/media3/common/SimpleBasePlayer$MediaItemData;->uid:Ljava/lang/Object;

    return-object v0

    .line 1966
    :cond_0
    iget-object v0, p0, Landroidx/media3/common/SimpleBasePlayer$MediaItemData;->periods:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v0, p1}, Lcom/google/common/collect/ImmutableList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media3/common/SimpleBasePlayer$PeriodData;

    iget-object v0, v0, Landroidx/media3/common/SimpleBasePlayer$PeriodData;->uid:Ljava/lang/Object;

    .line 1967
    .local v0, "periodId":Ljava/lang/Object;
    iget-object v1, p0, Landroidx/media3/common/SimpleBasePlayer$MediaItemData;->uid:Ljava/lang/Object;

    invoke-static {v1, v0}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v1

    return-object v1
.end method

.method private getWindow(ILandroidx/media3/common/Timeline$Window;)Landroidx/media3/common/Timeline$Window;
    .locals 25
    .param p1, "firstPeriodIndex"    # I
    .param p2, "window"    # Landroidx/media3/common/Timeline$Window;

    .line 1915
    move-object/from16 v0, p0

    iget-object v1, v0, Landroidx/media3/common/SimpleBasePlayer$MediaItemData;->periods:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v1}, Lcom/google/common/collect/ImmutableList;->isEmpty()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    iget-object v1, v0, Landroidx/media3/common/SimpleBasePlayer$MediaItemData;->periods:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v1}, Lcom/google/common/collect/ImmutableList;->size()I

    move-result v1

    :goto_0
    move/from16 v22, v1

    .line 1916
    .local v22, "periodCount":I
    move v1, v2

    iget-object v2, v0, Landroidx/media3/common/SimpleBasePlayer$MediaItemData;->uid:Ljava/lang/Object;

    iget-object v3, v0, Landroidx/media3/common/SimpleBasePlayer$MediaItemData;->mediaItem:Landroidx/media3/common/MediaItem;

    iget-object v4, v0, Landroidx/media3/common/SimpleBasePlayer$MediaItemData;->manifest:Ljava/lang/Object;

    iget-wide v5, v0, Landroidx/media3/common/SimpleBasePlayer$MediaItemData;->presentationStartTimeMs:J

    iget-wide v7, v0, Landroidx/media3/common/SimpleBasePlayer$MediaItemData;->windowStartTimeMs:J

    iget-wide v9, v0, Landroidx/media3/common/SimpleBasePlayer$MediaItemData;->elapsedRealtimeEpochOffsetMs:J

    iget-boolean v11, v0, Landroidx/media3/common/SimpleBasePlayer$MediaItemData;->isSeekable:Z

    iget-boolean v12, v0, Landroidx/media3/common/SimpleBasePlayer$MediaItemData;->isDynamic:Z

    iget-object v13, v0, Landroidx/media3/common/SimpleBasePlayer$MediaItemData;->liveConfiguration:Landroidx/media3/common/MediaItem$LiveConfiguration;

    iget-wide v14, v0, Landroidx/media3/common/SimpleBasePlayer$MediaItemData;->defaultPositionUs:J

    move/from16 v16, v1

    move-object/from16 v17, v2

    iget-wide v1, v0, Landroidx/media3/common/SimpleBasePlayer$MediaItemData;->durationUs:J

    add-int v18, p1, v22

    add-int/lit8 v19, v18, -0x1

    move-wide/from16 v20, v1

    iget-wide v1, v0, Landroidx/media3/common/SimpleBasePlayer$MediaItemData;->positionInFirstPeriodUs:J

    move-wide/from16 v23, v1

    move-object/from16 v2, v17

    move-wide/from16 v16, v20

    move-wide/from16 v20, v23

    move/from16 v18, p1

    move-object/from16 v1, p2

    invoke-virtual/range {v1 .. v21}, Landroidx/media3/common/Timeline$Window;->set(Ljava/lang/Object;Landroidx/media3/common/MediaItem;Ljava/lang/Object;JJJZZLandroidx/media3/common/MediaItem$LiveConfiguration;JJIIJ)Landroidx/media3/common/Timeline$Window;

    .line 1931
    iget-boolean v2, v0, Landroidx/media3/common/SimpleBasePlayer$MediaItemData;->isPlaceholder:Z

    iput-boolean v2, v1, Landroidx/media3/common/Timeline$Window;->isPlaceholder:Z

    .line 1932
    return-object v1
.end method


# virtual methods
.method public buildUpon()Landroidx/media3/common/SimpleBasePlayer$MediaItemData$Builder;
    .locals 2

    .line 1827
    new-instance v0, Landroidx/media3/common/SimpleBasePlayer$MediaItemData$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroidx/media3/common/SimpleBasePlayer$MediaItemData$Builder;-><init>(Landroidx/media3/common/SimpleBasePlayer$MediaItemData;Landroidx/media3/common/SimpleBasePlayer$1;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 7
    .param p1, "o"    # Ljava/lang/Object;

    .line 1832
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    .line 1833
    return v0

    .line 1835
    :cond_0
    instance-of v1, p1, Landroidx/media3/common/SimpleBasePlayer$MediaItemData;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    .line 1836
    return v2

    .line 1838
    :cond_1
    move-object v1, p1

    check-cast v1, Landroidx/media3/common/SimpleBasePlayer$MediaItemData;

    .line 1839
    .local v1, "mediaItemData":Landroidx/media3/common/SimpleBasePlayer$MediaItemData;
    iget-object v3, p0, Landroidx/media3/common/SimpleBasePlayer$MediaItemData;->uid:Ljava/lang/Object;

    iget-object v4, v1, Landroidx/media3/common/SimpleBasePlayer$MediaItemData;->uid:Ljava/lang/Object;

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Landroidx/media3/common/SimpleBasePlayer$MediaItemData;->tracks:Landroidx/media3/common/Tracks;

    iget-object v4, v1, Landroidx/media3/common/SimpleBasePlayer$MediaItemData;->tracks:Landroidx/media3/common/Tracks;

    .line 1840
    invoke-virtual {v3, v4}, Landroidx/media3/common/Tracks;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Landroidx/media3/common/SimpleBasePlayer$MediaItemData;->mediaItem:Landroidx/media3/common/MediaItem;

    iget-object v4, v1, Landroidx/media3/common/SimpleBasePlayer$MediaItemData;->mediaItem:Landroidx/media3/common/MediaItem;

    .line 1841
    invoke-virtual {v3, v4}, Landroidx/media3/common/MediaItem;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Landroidx/media3/common/SimpleBasePlayer$MediaItemData;->mediaMetadata:Landroidx/media3/common/MediaMetadata;

    iget-object v4, v1, Landroidx/media3/common/SimpleBasePlayer$MediaItemData;->mediaMetadata:Landroidx/media3/common/MediaMetadata;

    .line 1842
    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Landroidx/media3/common/SimpleBasePlayer$MediaItemData;->manifest:Ljava/lang/Object;

    iget-object v4, v1, Landroidx/media3/common/SimpleBasePlayer$MediaItemData;->manifest:Ljava/lang/Object;

    .line 1843
    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Landroidx/media3/common/SimpleBasePlayer$MediaItemData;->liveConfiguration:Landroidx/media3/common/MediaItem$LiveConfiguration;

    iget-object v4, v1, Landroidx/media3/common/SimpleBasePlayer$MediaItemData;->liveConfiguration:Landroidx/media3/common/MediaItem$LiveConfiguration;

    .line 1844
    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-wide v3, p0, Landroidx/media3/common/SimpleBasePlayer$MediaItemData;->presentationStartTimeMs:J

    iget-wide v5, v1, Landroidx/media3/common/SimpleBasePlayer$MediaItemData;->presentationStartTimeMs:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_2

    iget-wide v3, p0, Landroidx/media3/common/SimpleBasePlayer$MediaItemData;->windowStartTimeMs:J

    iget-wide v5, v1, Landroidx/media3/common/SimpleBasePlayer$MediaItemData;->windowStartTimeMs:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_2

    iget-wide v3, p0, Landroidx/media3/common/SimpleBasePlayer$MediaItemData;->elapsedRealtimeEpochOffsetMs:J

    iget-wide v5, v1, Landroidx/media3/common/SimpleBasePlayer$MediaItemData;->elapsedRealtimeEpochOffsetMs:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_2

    iget-boolean v3, p0, Landroidx/media3/common/SimpleBasePlayer$MediaItemData;->isSeekable:Z

    iget-boolean v4, v1, Landroidx/media3/common/SimpleBasePlayer$MediaItemData;->isSeekable:Z

    if-ne v3, v4, :cond_2

    iget-boolean v3, p0, Landroidx/media3/common/SimpleBasePlayer$MediaItemData;->isDynamic:Z

    iget-boolean v4, v1, Landroidx/media3/common/SimpleBasePlayer$MediaItemData;->isDynamic:Z

    if-ne v3, v4, :cond_2

    iget-wide v3, p0, Landroidx/media3/common/SimpleBasePlayer$MediaItemData;->defaultPositionUs:J

    iget-wide v5, v1, Landroidx/media3/common/SimpleBasePlayer$MediaItemData;->defaultPositionUs:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_2

    iget-wide v3, p0, Landroidx/media3/common/SimpleBasePlayer$MediaItemData;->durationUs:J

    iget-wide v5, v1, Landroidx/media3/common/SimpleBasePlayer$MediaItemData;->durationUs:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_2

    iget-wide v3, p0, Landroidx/media3/common/SimpleBasePlayer$MediaItemData;->positionInFirstPeriodUs:J

    iget-wide v5, v1, Landroidx/media3/common/SimpleBasePlayer$MediaItemData;->positionInFirstPeriodUs:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_2

    iget-boolean v3, p0, Landroidx/media3/common/SimpleBasePlayer$MediaItemData;->isPlaceholder:Z

    iget-boolean v4, v1, Landroidx/media3/common/SimpleBasePlayer$MediaItemData;->isPlaceholder:Z

    if-ne v3, v4, :cond_2

    iget-object v3, p0, Landroidx/media3/common/SimpleBasePlayer$MediaItemData;->periods:Lcom/google/common/collect/ImmutableList;

    iget-object v4, v1, Landroidx/media3/common/SimpleBasePlayer$MediaItemData;->periods:Lcom/google/common/collect/ImmutableList;

    .line 1854
    invoke-virtual {v3, v4}, Lcom/google/common/collect/ImmutableList;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_0

    :cond_2
    move v0, v2

    .line 1839
    :goto_0
    return v0
.end method

.method public hashCode()I
    .locals 7

    .line 1859
    const/4 v0, 0x7

    .line 1860
    .local v0, "result":I
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Landroidx/media3/common/SimpleBasePlayer$MediaItemData;->uid:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    add-int/2addr v1, v2

    .line 1861
    .end local v0    # "result":I
    .local v1, "result":I
    mul-int/lit8 v0, v1, 0x1f

    iget-object v2, p0, Landroidx/media3/common/SimpleBasePlayer$MediaItemData;->tracks:Landroidx/media3/common/Tracks;

    invoke-virtual {v2}, Landroidx/media3/common/Tracks;->hashCode()I

    move-result v2

    add-int/2addr v0, v2

    .line 1862
    .end local v1    # "result":I
    .restart local v0    # "result":I
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Landroidx/media3/common/SimpleBasePlayer$MediaItemData;->mediaItem:Landroidx/media3/common/MediaItem;

    invoke-virtual {v2}, Landroidx/media3/common/MediaItem;->hashCode()I

    move-result v2

    add-int/2addr v1, v2

    .line 1863
    .end local v0    # "result":I
    .restart local v1    # "result":I
    mul-int/lit8 v0, v1, 0x1f

    iget-object v2, p0, Landroidx/media3/common/SimpleBasePlayer$MediaItemData;->mediaMetadata:Landroidx/media3/common/MediaMetadata;

    const/4 v3, 0x0

    if-nez v2, :cond_0

    move v2, v3

    goto :goto_0

    :cond_0
    iget-object v2, p0, Landroidx/media3/common/SimpleBasePlayer$MediaItemData;->mediaMetadata:Landroidx/media3/common/MediaMetadata;

    invoke-virtual {v2}, Landroidx/media3/common/MediaMetadata;->hashCode()I

    move-result v2

    :goto_0
    add-int/2addr v0, v2

    .line 1864
    .end local v1    # "result":I
    .restart local v0    # "result":I
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Landroidx/media3/common/SimpleBasePlayer$MediaItemData;->manifest:Ljava/lang/Object;

    if-nez v2, :cond_1

    move v2, v3

    goto :goto_1

    :cond_1
    iget-object v2, p0, Landroidx/media3/common/SimpleBasePlayer$MediaItemData;->manifest:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_1
    add-int/2addr v1, v2

    .line 1865
    .end local v0    # "result":I
    .restart local v1    # "result":I
    mul-int/lit8 v0, v1, 0x1f

    iget-object v2, p0, Landroidx/media3/common/SimpleBasePlayer$MediaItemData;->liveConfiguration:Landroidx/media3/common/MediaItem$LiveConfiguration;

    if-nez v2, :cond_2

    goto :goto_2

    :cond_2
    iget-object v2, p0, Landroidx/media3/common/SimpleBasePlayer$MediaItemData;->liveConfiguration:Landroidx/media3/common/MediaItem$LiveConfiguration;

    invoke-virtual {v2}, Landroidx/media3/common/MediaItem$LiveConfiguration;->hashCode()I

    move-result v3

    :goto_2
    add-int/2addr v0, v3

    .line 1866
    .end local v1    # "result":I
    .restart local v0    # "result":I
    mul-int/lit8 v1, v0, 0x1f

    iget-wide v2, p0, Landroidx/media3/common/SimpleBasePlayer$MediaItemData;->presentationStartTimeMs:J

    iget-wide v4, p0, Landroidx/media3/common/SimpleBasePlayer$MediaItemData;->presentationStartTimeMs:J

    const/16 v6, 0x20

    ushr-long/2addr v4, v6

    xor-long/2addr v2, v4

    long-to-int v2, v2

    add-int/2addr v1, v2

    .line 1867
    .end local v0    # "result":I
    .restart local v1    # "result":I
    mul-int/lit8 v0, v1, 0x1f

    iget-wide v2, p0, Landroidx/media3/common/SimpleBasePlayer$MediaItemData;->windowStartTimeMs:J

    iget-wide v4, p0, Landroidx/media3/common/SimpleBasePlayer$MediaItemData;->windowStartTimeMs:J

    ushr-long/2addr v4, v6

    xor-long/2addr v2, v4

    long-to-int v2, v2

    add-int/2addr v0, v2

    .line 1868
    .end local v1    # "result":I
    .restart local v0    # "result":I
    mul-int/lit8 v1, v0, 0x1f

    iget-wide v2, p0, Landroidx/media3/common/SimpleBasePlayer$MediaItemData;->elapsedRealtimeEpochOffsetMs:J

    iget-wide v4, p0, Landroidx/media3/common/SimpleBasePlayer$MediaItemData;->elapsedRealtimeEpochOffsetMs:J

    ushr-long/2addr v4, v6

    xor-long/2addr v2, v4

    long-to-int v2, v2

    add-int/2addr v1, v2

    .line 1871
    .end local v0    # "result":I
    .restart local v1    # "result":I
    mul-int/lit8 v0, v1, 0x1f

    iget-boolean v2, p0, Landroidx/media3/common/SimpleBasePlayer$MediaItemData;->isSeekable:Z

    add-int/2addr v0, v2

    .line 1872
    .end local v1    # "result":I
    .restart local v0    # "result":I
    mul-int/lit8 v1, v0, 0x1f

    iget-boolean v2, p0, Landroidx/media3/common/SimpleBasePlayer$MediaItemData;->isDynamic:Z

    add-int/2addr v1, v2

    .line 1873
    .end local v0    # "result":I
    .restart local v1    # "result":I
    mul-int/lit8 v0, v1, 0x1f

    iget-wide v2, p0, Landroidx/media3/common/SimpleBasePlayer$MediaItemData;->defaultPositionUs:J

    iget-wide v4, p0, Landroidx/media3/common/SimpleBasePlayer$MediaItemData;->defaultPositionUs:J

    ushr-long/2addr v4, v6

    xor-long/2addr v2, v4

    long-to-int v2, v2

    add-int/2addr v0, v2

    .line 1874
    .end local v1    # "result":I
    .restart local v0    # "result":I
    mul-int/lit8 v1, v0, 0x1f

    iget-wide v2, p0, Landroidx/media3/common/SimpleBasePlayer$MediaItemData;->durationUs:J

    iget-wide v4, p0, Landroidx/media3/common/SimpleBasePlayer$MediaItemData;->durationUs:J

    ushr-long/2addr v4, v6

    xor-long/2addr v2, v4

    long-to-int v2, v2

    add-int/2addr v1, v2

    .line 1875
    .end local v0    # "result":I
    .restart local v1    # "result":I
    mul-int/lit8 v0, v1, 0x1f

    iget-wide v2, p0, Landroidx/media3/common/SimpleBasePlayer$MediaItemData;->positionInFirstPeriodUs:J

    iget-wide v4, p0, Landroidx/media3/common/SimpleBasePlayer$MediaItemData;->positionInFirstPeriodUs:J

    ushr-long/2addr v4, v6

    xor-long/2addr v2, v4

    long-to-int v2, v2

    add-int/2addr v0, v2

    .line 1876
    .end local v1    # "result":I
    .restart local v0    # "result":I
    mul-int/lit8 v1, v0, 0x1f

    iget-boolean v2, p0, Landroidx/media3/common/SimpleBasePlayer$MediaItemData;->isPlaceholder:Z

    add-int/2addr v1, v2

    .line 1877
    .end local v0    # "result":I
    .restart local v1    # "result":I
    mul-int/lit8 v0, v1, 0x1f

    iget-object v2, p0, Landroidx/media3/common/SimpleBasePlayer$MediaItemData;->periods:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v2}, Lcom/google/common/collect/ImmutableList;->hashCode()I

    move-result v2

    add-int/2addr v0, v2

    .line 1878
    .end local v1    # "result":I
    .restart local v0    # "result":I
    return v0
.end method
