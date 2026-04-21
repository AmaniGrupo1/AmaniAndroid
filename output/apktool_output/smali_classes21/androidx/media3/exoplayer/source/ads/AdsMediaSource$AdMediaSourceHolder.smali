.class final Landroidx/media3/exoplayer/source/ads/AdsMediaSource$AdMediaSourceHolder;
.super Ljava/lang/Object;
.source "AdsMediaSource.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media3/exoplayer/source/ads/AdsMediaSource;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "AdMediaSourceHolder"
.end annotation


# instance fields
.field private final activeMediaPeriods:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroidx/media3/exoplayer/source/MediaPeriod;",
            ">;"
        }
    .end annotation
.end field

.field private adMediaItem:Landroidx/media3/common/MediaItem;

.field private adMediaSource:Landroidx/media3/exoplayer/source/MediaSource;

.field private endPositionUs:J

.field private final id:Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

.field final synthetic this$0:Landroidx/media3/exoplayer/source/ads/AdsMediaSource;

.field private timeline:Landroidx/media3/common/Timeline;


# direct methods
.method private constructor <init>(Landroidx/media3/exoplayer/source/ads/AdsMediaSource;Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;J)V
    .locals 0
    .param p2, "id"    # Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;
    .param p3, "endPositionUs"    # J
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x0,
            0x0
        }
        names = {
            null,
            null,
            null
        }
    .end annotation

    .line 659
    iput-object p1, p0, Landroidx/media3/exoplayer/source/ads/AdsMediaSource$AdMediaSourceHolder;->this$0:Landroidx/media3/exoplayer/source/ads/AdsMediaSource;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 660
    iput-object p2, p0, Landroidx/media3/exoplayer/source/ads/AdsMediaSource$AdMediaSourceHolder;->id:Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    .line 661
    iput-wide p3, p0, Landroidx/media3/exoplayer/source/ads/AdsMediaSource$AdMediaSourceHolder;->endPositionUs:J

    .line 662
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Landroidx/media3/exoplayer/source/ads/AdsMediaSource$AdMediaSourceHolder;->activeMediaPeriods:Ljava/util/List;

    .line 663
    return-void
.end method

.method synthetic constructor <init>(Landroidx/media3/exoplayer/source/ads/AdsMediaSource;Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;JLandroidx/media3/exoplayer/source/ads/AdsMediaSource$1;)V
    .locals 0
    .param p1, "x0"    # Landroidx/media3/exoplayer/source/ads/AdsMediaSource;
    .param p2, "x1"    # Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;
    .param p3, "x2"    # J
    .param p5, "x3"    # Landroidx/media3/exoplayer/source/ads/AdsMediaSource$1;

    .line 649
    invoke-direct {p0, p1, p2, p3, p4}, Landroidx/media3/exoplayer/source/ads/AdsMediaSource$AdMediaSourceHolder;-><init>(Landroidx/media3/exoplayer/source/ads/AdsMediaSource;Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;J)V

    return-void
.end method

.method static synthetic access$100(Landroidx/media3/exoplayer/source/ads/AdsMediaSource$AdMediaSourceHolder;Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;Landroidx/media3/exoplayer/upstream/Allocator;JZ)Landroidx/media3/exoplayer/source/MediaPeriod;
    .locals 1
    .param p0, "x0"    # Landroidx/media3/exoplayer/source/ads/AdsMediaSource$AdMediaSourceHolder;
    .param p1, "x1"    # Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;
    .param p2, "x2"    # Landroidx/media3/exoplayer/upstream/Allocator;
    .param p3, "x3"    # J
    .param p5, "x4"    # Z

    .line 649
    invoke-direct/range {p0 .. p5}, Landroidx/media3/exoplayer/source/ads/AdsMediaSource$AdMediaSourceHolder;->createMediaPeriod(Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;Landroidx/media3/exoplayer/upstream/Allocator;JZ)Landroidx/media3/exoplayer/source/MediaPeriod;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1000(Landroidx/media3/exoplayer/source/ads/AdsMediaSource$AdMediaSourceHolder;)J
    .locals 2
    .param p0, "x0"    # Landroidx/media3/exoplayer/source/ads/AdsMediaSource$AdMediaSourceHolder;

    .line 649
    invoke-direct {p0}, Landroidx/media3/exoplayer/source/ads/AdsMediaSource$AdMediaSourceHolder;->getDurationUs()J

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic access$200(Landroidx/media3/exoplayer/source/ads/AdsMediaSource$AdMediaSourceHolder;Landroidx/media3/exoplayer/source/MediaPeriod;)V
    .locals 0
    .param p0, "x0"    # Landroidx/media3/exoplayer/source/ads/AdsMediaSource$AdMediaSourceHolder;
    .param p1, "x1"    # Landroidx/media3/exoplayer/source/MediaPeriod;

    .line 649
    invoke-direct {p0, p1}, Landroidx/media3/exoplayer/source/ads/AdsMediaSource$AdMediaSourceHolder;->releaseMediaPeriod(Landroidx/media3/exoplayer/source/MediaPeriod;)V

    return-void
.end method

.method static synthetic access$300(Landroidx/media3/exoplayer/source/ads/AdsMediaSource$AdMediaSourceHolder;)Z
    .locals 1
    .param p0, "x0"    # Landroidx/media3/exoplayer/source/ads/AdsMediaSource$AdMediaSourceHolder;

    .line 649
    invoke-direct {p0}, Landroidx/media3/exoplayer/source/ads/AdsMediaSource$AdMediaSourceHolder;->isInactive()Z

    move-result v0

    return v0
.end method

.method static synthetic access$400(Landroidx/media3/exoplayer/source/ads/AdsMediaSource$AdMediaSourceHolder;)V
    .locals 0
    .param p0, "x0"    # Landroidx/media3/exoplayer/source/ads/AdsMediaSource$AdMediaSourceHolder;

    .line 649
    invoke-direct {p0}, Landroidx/media3/exoplayer/source/ads/AdsMediaSource$AdMediaSourceHolder;->release()V

    return-void
.end method

.method static synthetic access$500(Landroidx/media3/exoplayer/source/ads/AdsMediaSource$AdMediaSourceHolder;Landroidx/media3/common/Timeline;)V
    .locals 0
    .param p0, "x0"    # Landroidx/media3/exoplayer/source/ads/AdsMediaSource$AdMediaSourceHolder;
    .param p1, "x1"    # Landroidx/media3/common/Timeline;

    .line 649
    invoke-direct {p0, p1}, Landroidx/media3/exoplayer/source/ads/AdsMediaSource$AdMediaSourceHolder;->handleSourceInfoRefresh(Landroidx/media3/common/Timeline;)V

    return-void
.end method

.method static synthetic access$600(Landroidx/media3/exoplayer/source/ads/AdsMediaSource$AdMediaSourceHolder;)Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;
    .locals 1
    .param p0, "x0"    # Landroidx/media3/exoplayer/source/ads/AdsMediaSource$AdMediaSourceHolder;

    .line 649
    iget-object v0, p0, Landroidx/media3/exoplayer/source/ads/AdsMediaSource$AdMediaSourceHolder;->id:Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    return-object v0
.end method

.method static synthetic access$700(Landroidx/media3/exoplayer/source/ads/AdsMediaSource$AdMediaSourceHolder;J)V
    .locals 0
    .param p0, "x0"    # Landroidx/media3/exoplayer/source/ads/AdsMediaSource$AdMediaSourceHolder;
    .param p1, "x1"    # J

    .line 649
    invoke-direct {p0, p1, p2}, Landroidx/media3/exoplayer/source/ads/AdsMediaSource$AdMediaSourceHolder;->setEndPositionUs(J)V

    return-void
.end method

.method static synthetic access$800(Landroidx/media3/exoplayer/source/ads/AdsMediaSource$AdMediaSourceHolder;)Z
    .locals 1
    .param p0, "x0"    # Landroidx/media3/exoplayer/source/ads/AdsMediaSource$AdMediaSourceHolder;

    .line 649
    invoke-direct {p0}, Landroidx/media3/exoplayer/source/ads/AdsMediaSource$AdMediaSourceHolder;->hasMediaSource()Z

    move-result v0

    return v0
.end method

.method static synthetic access$900(Landroidx/media3/exoplayer/source/ads/AdsMediaSource$AdMediaSourceHolder;Landroidx/media3/exoplayer/source/MediaSource;Landroidx/media3/common/MediaItem;)V
    .locals 0
    .param p0, "x0"    # Landroidx/media3/exoplayer/source/ads/AdsMediaSource$AdMediaSourceHolder;
    .param p1, "x1"    # Landroidx/media3/exoplayer/source/MediaSource;
    .param p2, "x2"    # Landroidx/media3/common/MediaItem;

    .line 649
    invoke-direct {p0, p1, p2}, Landroidx/media3/exoplayer/source/ads/AdsMediaSource$AdMediaSourceHolder;->initializeWithMediaSource(Landroidx/media3/exoplayer/source/MediaSource;Landroidx/media3/common/MediaItem;)V

    return-void
.end method

.method private createMediaPeriod(Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;Landroidx/media3/exoplayer/upstream/Allocator;JZ)Landroidx/media3/exoplayer/source/MediaPeriod;
    .locals 8
    .param p1, "id"    # Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;
    .param p2, "allocator"    # Landroidx/media3/exoplayer/upstream/Allocator;
    .param p3, "startPositionUs"    # J
    .param p5, "useClipping"    # Z

    .line 678
    new-instance v0, Landroidx/media3/exoplayer/source/MaskingMediaPeriod;

    invoke-direct {v0, p1, p2, p3, p4}, Landroidx/media3/exoplayer/source/MaskingMediaPeriod;-><init>(Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;Landroidx/media3/exoplayer/upstream/Allocator;J)V

    move-object v2, v0

    .line 681
    .local v2, "maskingMediaPeriod":Landroidx/media3/exoplayer/source/MaskingMediaPeriod;
    if-eqz p5, :cond_0

    .line 682
    new-instance v1, Landroidx/media3/exoplayer/source/ClippingMediaPeriod;

    const/4 v3, 0x0

    iget-wide v6, p0, Landroidx/media3/exoplayer/source/ads/AdsMediaSource$AdMediaSourceHolder;->endPositionUs:J

    move-wide v4, p3

    .end local p3    # "startPositionUs":J
    .local v4, "startPositionUs":J
    invoke-direct/range {v1 .. v7}, Landroidx/media3/exoplayer/source/ClippingMediaPeriod;-><init>(Landroidx/media3/exoplayer/source/MediaPeriod;ZJJ)V

    goto :goto_0

    .line 687
    .end local v4    # "startPositionUs":J
    .restart local p3    # "startPositionUs":J
    :cond_0
    move-wide v4, p3

    .end local p3    # "startPositionUs":J
    .restart local v4    # "startPositionUs":J
    move-object v1, v2

    :goto_0
    nop

    .line 688
    .local v1, "mediaPeriod":Landroidx/media3/exoplayer/source/MediaPeriod;
    iget-object p3, p0, Landroidx/media3/exoplayer/source/ads/AdsMediaSource$AdMediaSourceHolder;->activeMediaPeriods:Ljava/util/List;

    invoke-interface {p3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 689
    iget-object p3, p0, Landroidx/media3/exoplayer/source/ads/AdsMediaSource$AdMediaSourceHolder;->adMediaSource:Landroidx/media3/exoplayer/source/MediaSource;

    if-eqz p3, :cond_1

    .line 690
    iget-object p3, p0, Landroidx/media3/exoplayer/source/ads/AdsMediaSource$AdMediaSourceHolder;->adMediaSource:Landroidx/media3/exoplayer/source/MediaSource;

    invoke-virtual {v2, p3}, Landroidx/media3/exoplayer/source/MaskingMediaPeriod;->setMediaSource(Landroidx/media3/exoplayer/source/MediaSource;)V

    .line 691
    new-instance p3, Landroidx/media3/exoplayer/source/ads/AdsMediaSource$AdPrepareListener;

    iget-object p4, p0, Landroidx/media3/exoplayer/source/ads/AdsMediaSource$AdMediaSourceHolder;->this$0:Landroidx/media3/exoplayer/source/ads/AdsMediaSource;

    iget-object v0, p0, Landroidx/media3/exoplayer/source/ads/AdsMediaSource$AdMediaSourceHolder;->adMediaItem:Landroidx/media3/common/MediaItem;

    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media3/common/MediaItem;

    invoke-direct {p3, p4, v0}, Landroidx/media3/exoplayer/source/ads/AdsMediaSource$AdPrepareListener;-><init>(Landroidx/media3/exoplayer/source/ads/AdsMediaSource;Landroidx/media3/common/MediaItem;)V

    invoke-virtual {v2, p3}, Landroidx/media3/exoplayer/source/MaskingMediaPeriod;->setPrepareListener(Landroidx/media3/exoplayer/source/MaskingMediaPeriod$PrepareListener;)V

    .line 693
    :cond_1
    iget-object p3, p0, Landroidx/media3/exoplayer/source/ads/AdsMediaSource$AdMediaSourceHolder;->timeline:Landroidx/media3/common/Timeline;

    if-eqz p3, :cond_2

    .line 694
    iget-object p3, p0, Landroidx/media3/exoplayer/source/ads/AdsMediaSource$AdMediaSourceHolder;->timeline:Landroidx/media3/common/Timeline;

    const/4 p4, 0x0

    invoke-virtual {p3, p4}, Landroidx/media3/common/Timeline;->getUidOfPeriod(I)Ljava/lang/Object;

    move-result-object p3

    .line 695
    .local p3, "periodUid":Ljava/lang/Object;
    new-instance p4, Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    iget-wide v6, p1, Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;->windowSequenceNumber:J

    invoke-direct {p4, p3, v6, v7}, Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;-><init>(Ljava/lang/Object;J)V

    .line 696
    .local p4, "adSourceMediaPeriodId":Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;
    invoke-virtual {v2, p4}, Landroidx/media3/exoplayer/source/MaskingMediaPeriod;->createPeriod(Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;)V

    .line 698
    .end local p3    # "periodUid":Ljava/lang/Object;
    .end local p4    # "adSourceMediaPeriodId":Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;
    :cond_2
    return-object v1
.end method

.method private getActiveMaskingMediaPeriod(I)Landroidx/media3/exoplayer/source/MaskingMediaPeriod;
    .locals 2
    .param p1, "activeMediaPeriodIndex"    # I

    .line 762
    iget-object v0, p0, Landroidx/media3/exoplayer/source/ads/AdsMediaSource$AdMediaSourceHolder;->activeMediaPeriods:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media3/exoplayer/source/MediaPeriod;

    .line 764
    .local v0, "mediaPeriod":Landroidx/media3/exoplayer/source/MediaPeriod;
    instance-of v1, v0, Landroidx/media3/exoplayer/source/ClippingMediaPeriod;

    if-eqz v1, :cond_0

    .line 765
    move-object v1, v0

    check-cast v1, Landroidx/media3/exoplayer/source/ClippingMediaPeriod;

    iget-object v1, v1, Landroidx/media3/exoplayer/source/ClippingMediaPeriod;->mediaPeriod:Landroidx/media3/exoplayer/source/MediaPeriod;

    goto :goto_0

    .line 766
    :cond_0
    move-object v1, v0

    :goto_0
    check-cast v1, Landroidx/media3/exoplayer/source/MaskingMediaPeriod;

    .line 763
    return-object v1
.end method

.method private getDurationUs()J
    .locals 3

    .line 732
    iget-object v0, p0, Landroidx/media3/exoplayer/source/ads/AdsMediaSource$AdMediaSourceHolder;->timeline:Landroidx/media3/common/Timeline;

    if-nez v0, :cond_0

    .line 733
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    goto :goto_0

    .line 734
    :cond_0
    iget-object v0, p0, Landroidx/media3/exoplayer/source/ads/AdsMediaSource$AdMediaSourceHolder;->timeline:Landroidx/media3/common/Timeline;

    iget-object v1, p0, Landroidx/media3/exoplayer/source/ads/AdsMediaSource$AdMediaSourceHolder;->this$0:Landroidx/media3/exoplayer/source/ads/AdsMediaSource;

    invoke-static {v1}, Landroidx/media3/exoplayer/source/ads/AdsMediaSource;->access$1800(Landroidx/media3/exoplayer/source/ads/AdsMediaSource;)Landroidx/media3/common/Timeline$Period;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Landroidx/media3/common/Timeline;->getPeriod(ILandroidx/media3/common/Timeline$Period;)Landroidx/media3/common/Timeline$Period;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/media3/common/Timeline$Period;->getDurationUs()J

    move-result-wide v0

    .line 732
    :goto_0
    return-wide v0
.end method

.method private handleSourceInfoRefresh(Landroidx/media3/common/Timeline;)V
    .locals 6
    .param p1, "timeline"    # Landroidx/media3/common/Timeline;

    .line 702
    invoke-virtual {p1}, Landroidx/media3/common/Timeline;->getPeriodCount()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    goto :goto_0

    :cond_0
    move v2, v1

    :goto_0
    invoke-static {v2}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    .line 703
    iget-object v0, p0, Landroidx/media3/exoplayer/source/ads/AdsMediaSource$AdMediaSourceHolder;->timeline:Landroidx/media3/common/Timeline;

    if-nez v0, :cond_2

    .line 704
    invoke-virtual {p1, v1}, Landroidx/media3/common/Timeline;->getUidOfPeriod(I)Ljava/lang/Object;

    move-result-object v0

    .line 705
    .local v0, "periodUid":Ljava/lang/Object;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    iget-object v2, p0, Landroidx/media3/exoplayer/source/ads/AdsMediaSource$AdMediaSourceHolder;->activeMediaPeriods:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 706
    invoke-direct {p0, v1}, Landroidx/media3/exoplayer/source/ads/AdsMediaSource$AdMediaSourceHolder;->getActiveMaskingMediaPeriod(I)Landroidx/media3/exoplayer/source/MaskingMediaPeriod;

    move-result-object v2

    .line 707
    .local v2, "maskingMediaPeriod":Landroidx/media3/exoplayer/source/MaskingMediaPeriod;
    new-instance v3, Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    iget-object v4, v2, Landroidx/media3/exoplayer/source/MaskingMediaPeriod;->id:Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    iget-wide v4, v4, Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;->windowSequenceNumber:J

    invoke-direct {v3, v0, v4, v5}, Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;-><init>(Ljava/lang/Object;J)V

    .line 709
    .local v3, "adSourceMediaPeriodId":Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;
    invoke-virtual {v2, v3}, Landroidx/media3/exoplayer/source/MaskingMediaPeriod;->createPeriod(Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;)V

    .line 705
    .end local v2    # "maskingMediaPeriod":Landroidx/media3/exoplayer/source/MaskingMediaPeriod;
    .end local v3    # "adSourceMediaPeriodId":Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 711
    .end local v1    # "i":I
    :cond_1
    iget-wide v1, p0, Landroidx/media3/exoplayer/source/ads/AdsMediaSource$AdMediaSourceHolder;->endPositionUs:J

    invoke-direct {p0, v1, v2}, Landroidx/media3/exoplayer/source/ads/AdsMediaSource$AdMediaSourceHolder;->setEndPositionUs(J)V

    .line 713
    .end local v0    # "periodUid":Ljava/lang/Object;
    :cond_2
    iput-object p1, p0, Landroidx/media3/exoplayer/source/ads/AdsMediaSource$AdMediaSourceHolder;->timeline:Landroidx/media3/common/Timeline;

    .line 714
    return-void
.end method

.method private hasMediaSource()Z
    .locals 1

    .line 754
    iget-object v0, p0, Landroidx/media3/exoplayer/source/ads/AdsMediaSource$AdMediaSourceHolder;->adMediaSource:Landroidx/media3/exoplayer/source/MediaSource;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private initializeWithMediaSource(Landroidx/media3/exoplayer/source/MediaSource;Landroidx/media3/common/MediaItem;)V
    .locals 4
    .param p1, "adMediaSource"    # Landroidx/media3/exoplayer/source/MediaSource;
    .param p2, "adMediaItem"    # Landroidx/media3/common/MediaItem;

    .line 666
    iput-object p1, p0, Landroidx/media3/exoplayer/source/ads/AdsMediaSource$AdMediaSourceHolder;->adMediaSource:Landroidx/media3/exoplayer/source/MediaSource;

    .line 667
    iput-object p2, p0, Landroidx/media3/exoplayer/source/ads/AdsMediaSource$AdMediaSourceHolder;->adMediaItem:Landroidx/media3/common/MediaItem;

    .line 668
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Landroidx/media3/exoplayer/source/ads/AdsMediaSource$AdMediaSourceHolder;->activeMediaPeriods:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 669
    invoke-direct {p0, v0}, Landroidx/media3/exoplayer/source/ads/AdsMediaSource$AdMediaSourceHolder;->getActiveMaskingMediaPeriod(I)Landroidx/media3/exoplayer/source/MaskingMediaPeriod;

    move-result-object v1

    .line 670
    .local v1, "maskingMediaPeriod":Landroidx/media3/exoplayer/source/MaskingMediaPeriod;
    invoke-virtual {v1, p1}, Landroidx/media3/exoplayer/source/MaskingMediaPeriod;->setMediaSource(Landroidx/media3/exoplayer/source/MediaSource;)V

    .line 671
    new-instance v2, Landroidx/media3/exoplayer/source/ads/AdsMediaSource$AdPrepareListener;

    iget-object v3, p0, Landroidx/media3/exoplayer/source/ads/AdsMediaSource$AdMediaSourceHolder;->this$0:Landroidx/media3/exoplayer/source/ads/AdsMediaSource;

    invoke-direct {v2, v3, p2}, Landroidx/media3/exoplayer/source/ads/AdsMediaSource$AdPrepareListener;-><init>(Landroidx/media3/exoplayer/source/ads/AdsMediaSource;Landroidx/media3/common/MediaItem;)V

    invoke-virtual {v1, v2}, Landroidx/media3/exoplayer/source/MaskingMediaPeriod;->setPrepareListener(Landroidx/media3/exoplayer/source/MaskingMediaPeriod$PrepareListener;)V

    .line 668
    .end local v1    # "maskingMediaPeriod":Landroidx/media3/exoplayer/source/MaskingMediaPeriod;
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 673
    .end local v0    # "i":I
    :cond_0
    iget-object v0, p0, Landroidx/media3/exoplayer/source/ads/AdsMediaSource$AdMediaSourceHolder;->this$0:Landroidx/media3/exoplayer/source/ads/AdsMediaSource;

    iget-object v1, p0, Landroidx/media3/exoplayer/source/ads/AdsMediaSource$AdMediaSourceHolder;->id:Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    invoke-static {v0, v1, p1}, Landroidx/media3/exoplayer/source/ads/AdsMediaSource;->access$1600(Landroidx/media3/exoplayer/source/ads/AdsMediaSource;Ljava/lang/Object;Landroidx/media3/exoplayer/source/MediaSource;)V

    .line 674
    return-void
.end method

.method private isInactive()Z
    .locals 1

    .line 758
    iget-object v0, p0, Landroidx/media3/exoplayer/source/ads/AdsMediaSource$AdMediaSourceHolder;->activeMediaPeriods:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    return v0
.end method

.method private release()V
    .locals 2

    .line 748
    invoke-direct {p0}, Landroidx/media3/exoplayer/source/ads/AdsMediaSource$AdMediaSourceHolder;->hasMediaSource()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 749
    iget-object v0, p0, Landroidx/media3/exoplayer/source/ads/AdsMediaSource$AdMediaSourceHolder;->this$0:Landroidx/media3/exoplayer/source/ads/AdsMediaSource;

    iget-object v1, p0, Landroidx/media3/exoplayer/source/ads/AdsMediaSource$AdMediaSourceHolder;->id:Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    invoke-static {v0, v1}, Landroidx/media3/exoplayer/source/ads/AdsMediaSource;->access$1900(Landroidx/media3/exoplayer/source/ads/AdsMediaSource;Ljava/lang/Object;)V

    .line 751
    :cond_0
    return-void
.end method

.method private releaseMediaPeriod(Landroidx/media3/exoplayer/source/MediaPeriod;)V
    .locals 1
    .param p1, "mediaPeriod"    # Landroidx/media3/exoplayer/source/MediaPeriod;

    .line 738
    iget-object v0, p0, Landroidx/media3/exoplayer/source/ads/AdsMediaSource$AdMediaSourceHolder;->activeMediaPeriods:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 741
    instance-of v0, p1, Landroidx/media3/exoplayer/source/ClippingMediaPeriod;

    if-eqz v0, :cond_0

    .line 742
    move-object v0, p1

    check-cast v0, Landroidx/media3/exoplayer/source/ClippingMediaPeriod;

    iget-object v0, v0, Landroidx/media3/exoplayer/source/ClippingMediaPeriod;->mediaPeriod:Landroidx/media3/exoplayer/source/MediaPeriod;

    goto :goto_0

    .line 743
    :cond_0
    move-object v0, p1

    :goto_0
    check-cast v0, Landroidx/media3/exoplayer/source/MaskingMediaPeriod;

    .line 744
    .local v0, "maskingMediaPeriod":Landroidx/media3/exoplayer/source/MaskingMediaPeriod;
    invoke-virtual {v0}, Landroidx/media3/exoplayer/source/MaskingMediaPeriod;->releasePeriod()V

    .line 745
    return-void
.end method

.method private setEndPositionUs(J)V
    .locals 4
    .param p1, "endPositionUs"    # J

    .line 717
    iget-object v0, p0, Landroidx/media3/exoplayer/source/ads/AdsMediaSource$AdMediaSourceHolder;->this$0:Landroidx/media3/exoplayer/source/ads/AdsMediaSource;

    invoke-static {v0}, Landroidx/media3/exoplayer/source/ads/AdsMediaSource;->access$1700(Landroidx/media3/exoplayer/source/ads/AdsMediaSource;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-wide v0, p0, Landroidx/media3/exoplayer/source/ads/AdsMediaSource$AdMediaSourceHolder;->endPositionUs:J

    const-wide/high16 v2, -0x8000000000000000L

    cmp-long v0, v0, v2

    if-nez v0, :cond_3

    cmp-long v0, p1, v2

    if-nez v0, :cond_0

    goto :goto_1

    .line 722
    :cond_0
    iput-wide p1, p0, Landroidx/media3/exoplayer/source/ads/AdsMediaSource$AdMediaSourceHolder;->endPositionUs:J

    .line 723
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Landroidx/media3/exoplayer/source/ads/AdsMediaSource$AdMediaSourceHolder;->activeMediaPeriods:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 724
    iget-object v1, p0, Landroidx/media3/exoplayer/source/ads/AdsMediaSource$AdMediaSourceHolder;->activeMediaPeriods:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    instance-of v1, v1, Landroidx/media3/exoplayer/source/ClippingMediaPeriod;

    if-eqz v1, :cond_1

    .line 725
    iget-object v1, p0, Landroidx/media3/exoplayer/source/ads/AdsMediaSource$AdMediaSourceHolder;->activeMediaPeriods:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/media3/exoplayer/source/ClippingMediaPeriod;

    .line 726
    const-wide/16 v2, 0x0

    invoke-virtual {v1, v2, v3, p1, p2}, Landroidx/media3/exoplayer/source/ClippingMediaPeriod;->updateClipping(JJ)V

    .line 723
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 729
    .end local v0    # "i":I
    :cond_2
    return-void

    .line 720
    :cond_3
    :goto_1
    return-void
.end method
