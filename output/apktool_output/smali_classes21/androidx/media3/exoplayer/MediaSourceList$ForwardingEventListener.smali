.class final Landroidx/media3/exoplayer/MediaSourceList$ForwardingEventListener;
.super Ljava/lang/Object;
.source "MediaSourceList.java"

# interfaces
.implements Landroidx/media3/exoplayer/source/MediaSourceEventListener;
.implements Landroidx/media3/exoplayer/drm/DrmSessionEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media3/exoplayer/MediaSourceList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ForwardingEventListener"
.end annotation


# instance fields
.field private final id:Landroidx/media3/exoplayer/MediaSourceList$MediaSourceHolder;

.field final synthetic this$0:Landroidx/media3/exoplayer/MediaSourceList;


# direct methods
.method public constructor <init>(Landroidx/media3/exoplayer/MediaSourceList;Landroidx/media3/exoplayer/MediaSourceList$MediaSourceHolder;)V
    .locals 0
    .param p2, "id"    # Landroidx/media3/exoplayer/MediaSourceList$MediaSourceHolder;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x0
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 558
    iput-object p1, p0, Landroidx/media3/exoplayer/MediaSourceList$ForwardingEventListener;->this$0:Landroidx/media3/exoplayer/MediaSourceList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 559
    iput-object p2, p0, Landroidx/media3/exoplayer/MediaSourceList$ForwardingEventListener;->id:Landroidx/media3/exoplayer/MediaSourceList$MediaSourceHolder;

    .line 560
    return-void
.end method

.method private getEventParameters(ILandroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;)Landroid/util/Pair;
    .locals 3
    .param p1, "childWindowIndex"    # I
    .param p2, "childMediaPeriodId"    # Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;",
            ")",
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;",
            ">;"
        }
    .end annotation

    .line 765
    const/4 v0, 0x0

    .line 766
    .local v0, "mediaPeriodId":Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;
    if-eqz p2, :cond_0

    .line 767
    iget-object v1, p0, Landroidx/media3/exoplayer/MediaSourceList$ForwardingEventListener;->id:Landroidx/media3/exoplayer/MediaSourceList$MediaSourceHolder;

    invoke-static {v1, p2}, Landroidx/media3/exoplayer/MediaSourceList;->access$100(Landroidx/media3/exoplayer/MediaSourceList$MediaSourceHolder;Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;)Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    move-result-object v0

    .line 768
    if-nez v0, :cond_0

    .line 770
    const/4 v1, 0x0

    return-object v1

    .line 773
    :cond_0
    iget-object v1, p0, Landroidx/media3/exoplayer/MediaSourceList$ForwardingEventListener;->id:Landroidx/media3/exoplayer/MediaSourceList$MediaSourceHolder;

    invoke-static {v1, p1}, Landroidx/media3/exoplayer/MediaSourceList;->access$200(Landroidx/media3/exoplayer/MediaSourceList$MediaSourceHolder;I)I

    move-result v1

    .line 774
    .local v1, "windowIndex":I
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v2, v0}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v2

    return-object v2
.end method


# virtual methods
.method synthetic lambda$onDownstreamFormatChanged$5$androidx-media3-exoplayer-MediaSourceList$ForwardingEventListener(Landroid/util/Pair;Landroidx/media3/exoplayer/source/MediaLoadData;)V
    .locals 3
    .param p1, "eventParameters"    # Landroid/util/Pair;
    .param p2, "mediaLoadData"    # Landroidx/media3/exoplayer/source/MediaLoadData;

    .line 671
    iget-object v0, p0, Landroidx/media3/exoplayer/MediaSourceList$ForwardingEventListener;->this$0:Landroidx/media3/exoplayer/MediaSourceList;

    invoke-static {v0}, Landroidx/media3/exoplayer/MediaSourceList;->access$300(Landroidx/media3/exoplayer/MediaSourceList;)Landroidx/media3/exoplayer/analytics/AnalyticsCollector;

    move-result-object v0

    iget-object v1, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    .line 672
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iget-object v2, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    .line 671
    invoke-interface {v0, v1, v2, p2}, Landroidx/media3/exoplayer/analytics/AnalyticsCollector;->onDownstreamFormatChanged(ILandroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;Landroidx/media3/exoplayer/source/MediaLoadData;)V

    return-void
.end method

.method synthetic lambda$onDrmKeysLoaded$7$androidx-media3-exoplayer-MediaSourceList$ForwardingEventListener(Landroid/util/Pair;Landroidx/media3/exoplayer/drm/KeyRequestInfo;)V
    .locals 3
    .param p1, "eventParameters"    # Landroid/util/Pair;
    .param p2, "keyRequestInfo"    # Landroidx/media3/exoplayer/drm/KeyRequestInfo;

    .line 705
    iget-object v0, p0, Landroidx/media3/exoplayer/MediaSourceList$ForwardingEventListener;->this$0:Landroidx/media3/exoplayer/MediaSourceList;

    invoke-static {v0}, Landroidx/media3/exoplayer/MediaSourceList;->access$300(Landroidx/media3/exoplayer/MediaSourceList;)Landroidx/media3/exoplayer/analytics/AnalyticsCollector;

    move-result-object v0

    iget-object v1, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    .line 706
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iget-object v2, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    .line 705
    invoke-interface {v0, v1, v2, p2}, Landroidx/media3/exoplayer/analytics/AnalyticsCollector;->onDrmKeysLoaded(ILandroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;Landroidx/media3/exoplayer/drm/KeyRequestInfo;)V

    return-void
.end method

.method synthetic lambda$onDrmKeysRemoved$10$androidx-media3-exoplayer-MediaSourceList$ForwardingEventListener(Landroid/util/Pair;)V
    .locals 3
    .param p1, "eventParameters"    # Landroid/util/Pair;

    .line 744
    iget-object v0, p0, Landroidx/media3/exoplayer/MediaSourceList$ForwardingEventListener;->this$0:Landroidx/media3/exoplayer/MediaSourceList;

    invoke-static {v0}, Landroidx/media3/exoplayer/MediaSourceList;->access$300(Landroidx/media3/exoplayer/MediaSourceList;)Landroidx/media3/exoplayer/analytics/AnalyticsCollector;

    move-result-object v0

    iget-object v1, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iget-object v2, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    invoke-interface {v0, v1, v2}, Landroidx/media3/exoplayer/analytics/AnalyticsCollector;->onDrmKeysRemoved(ILandroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;)V

    return-void
.end method

.method synthetic lambda$onDrmKeysRestored$9$androidx-media3-exoplayer-MediaSourceList$ForwardingEventListener(Landroid/util/Pair;)V
    .locals 3
    .param p1, "eventParameters"    # Landroid/util/Pair;

    .line 732
    iget-object v0, p0, Landroidx/media3/exoplayer/MediaSourceList$ForwardingEventListener;->this$0:Landroidx/media3/exoplayer/MediaSourceList;

    invoke-static {v0}, Landroidx/media3/exoplayer/MediaSourceList;->access$300(Landroidx/media3/exoplayer/MediaSourceList;)Landroidx/media3/exoplayer/analytics/AnalyticsCollector;

    move-result-object v0

    iget-object v1, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iget-object v2, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    invoke-interface {v0, v1, v2}, Landroidx/media3/exoplayer/analytics/AnalyticsCollector;->onDrmKeysRestored(ILandroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;)V

    return-void
.end method

.method synthetic lambda$onDrmSessionAcquired$6$androidx-media3-exoplayer-MediaSourceList$ForwardingEventListener(Landroid/util/Pair;I)V
    .locals 3
    .param p1, "eventParameters"    # Landroid/util/Pair;
    .param p2, "state"    # I

    .line 689
    iget-object v0, p0, Landroidx/media3/exoplayer/MediaSourceList$ForwardingEventListener;->this$0:Landroidx/media3/exoplayer/MediaSourceList;

    invoke-static {v0}, Landroidx/media3/exoplayer/MediaSourceList;->access$300(Landroidx/media3/exoplayer/MediaSourceList;)Landroidx/media3/exoplayer/analytics/AnalyticsCollector;

    move-result-object v0

    iget-object v1, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    .line 690
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iget-object v2, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    .line 689
    invoke-interface {v0, v1, v2, p2}, Landroidx/media3/exoplayer/analytics/AnalyticsCollector;->onDrmSessionAcquired(ILandroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;I)V

    return-void
.end method

.method synthetic lambda$onDrmSessionManagerError$8$androidx-media3-exoplayer-MediaSourceList$ForwardingEventListener(Landroid/util/Pair;Ljava/lang/Exception;)V
    .locals 3
    .param p1, "eventParameters"    # Landroid/util/Pair;
    .param p2, "error"    # Ljava/lang/Exception;

    .line 719
    iget-object v0, p0, Landroidx/media3/exoplayer/MediaSourceList$ForwardingEventListener;->this$0:Landroidx/media3/exoplayer/MediaSourceList;

    invoke-static {v0}, Landroidx/media3/exoplayer/MediaSourceList;->access$300(Landroidx/media3/exoplayer/MediaSourceList;)Landroidx/media3/exoplayer/analytics/AnalyticsCollector;

    move-result-object v0

    iget-object v1, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    .line 720
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iget-object v2, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    .line 719
    invoke-interface {v0, v1, v2, p2}, Landroidx/media3/exoplayer/analytics/AnalyticsCollector;->onDrmSessionManagerError(ILandroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;Ljava/lang/Exception;)V

    return-void
.end method

.method synthetic lambda$onDrmSessionReleased$11$androidx-media3-exoplayer-MediaSourceList$ForwardingEventListener(Landroid/util/Pair;)V
    .locals 3
    .param p1, "eventParameters"    # Landroid/util/Pair;

    .line 757
    iget-object v0, p0, Landroidx/media3/exoplayer/MediaSourceList$ForwardingEventListener;->this$0:Landroidx/media3/exoplayer/MediaSourceList;

    invoke-static {v0}, Landroidx/media3/exoplayer/MediaSourceList;->access$300(Landroidx/media3/exoplayer/MediaSourceList;)Landroidx/media3/exoplayer/analytics/AnalyticsCollector;

    move-result-object v0

    iget-object v1, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iget-object v2, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    invoke-interface {v0, v1, v2}, Landroidx/media3/exoplayer/analytics/AnalyticsCollector;->onDrmSessionReleased(ILandroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;)V

    return-void
.end method

.method synthetic lambda$onLoadCanceled$2$androidx-media3-exoplayer-MediaSourceList$ForwardingEventListener(Landroid/util/Pair;Landroidx/media3/exoplayer/source/LoadEventInfo;Landroidx/media3/exoplayer/source/MediaLoadData;)V
    .locals 3
    .param p1, "eventParameters"    # Landroid/util/Pair;
    .param p2, "loadEventData"    # Landroidx/media3/exoplayer/source/LoadEventInfo;
    .param p3, "mediaLoadData"    # Landroidx/media3/exoplayer/source/MediaLoadData;

    .line 615
    iget-object v0, p0, Landroidx/media3/exoplayer/MediaSourceList$ForwardingEventListener;->this$0:Landroidx/media3/exoplayer/MediaSourceList;

    invoke-static {v0}, Landroidx/media3/exoplayer/MediaSourceList;->access$300(Landroidx/media3/exoplayer/MediaSourceList;)Landroidx/media3/exoplayer/analytics/AnalyticsCollector;

    move-result-object v0

    iget-object v1, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    .line 616
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iget-object v2, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    .line 615
    invoke-interface {v0, v1, v2, p2, p3}, Landroidx/media3/exoplayer/analytics/AnalyticsCollector;->onLoadCanceled(ILandroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;Landroidx/media3/exoplayer/source/LoadEventInfo;Landroidx/media3/exoplayer/source/MediaLoadData;)V

    return-void
.end method

.method synthetic lambda$onLoadCompleted$1$androidx-media3-exoplayer-MediaSourceList$ForwardingEventListener(Landroid/util/Pair;Landroidx/media3/exoplayer/source/LoadEventInfo;Landroidx/media3/exoplayer/source/MediaLoadData;)V
    .locals 3
    .param p1, "eventParameters"    # Landroid/util/Pair;
    .param p2, "loadEventData"    # Landroidx/media3/exoplayer/source/LoadEventInfo;
    .param p3, "mediaLoadData"    # Landroidx/media3/exoplayer/source/MediaLoadData;

    .line 598
    iget-object v0, p0, Landroidx/media3/exoplayer/MediaSourceList$ForwardingEventListener;->this$0:Landroidx/media3/exoplayer/MediaSourceList;

    invoke-static {v0}, Landroidx/media3/exoplayer/MediaSourceList;->access$300(Landroidx/media3/exoplayer/MediaSourceList;)Landroidx/media3/exoplayer/analytics/AnalyticsCollector;

    move-result-object v0

    iget-object v1, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    .line 599
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iget-object v2, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    .line 598
    invoke-interface {v0, v1, v2, p2, p3}, Landroidx/media3/exoplayer/analytics/AnalyticsCollector;->onLoadCompleted(ILandroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;Landroidx/media3/exoplayer/source/LoadEventInfo;Landroidx/media3/exoplayer/source/MediaLoadData;)V

    return-void
.end method

.method synthetic lambda$onLoadError$3$androidx-media3-exoplayer-MediaSourceList$ForwardingEventListener(Landroid/util/Pair;Landroidx/media3/exoplayer/source/LoadEventInfo;Landroidx/media3/exoplayer/source/MediaLoadData;Ljava/io/IOException;Z)V
    .locals 8
    .param p1, "eventParameters"    # Landroid/util/Pair;
    .param p2, "loadEventData"    # Landroidx/media3/exoplayer/source/LoadEventInfo;
    .param p3, "mediaLoadData"    # Landroidx/media3/exoplayer/source/MediaLoadData;
    .param p4, "error"    # Ljava/io/IOException;
    .param p5, "wasCanceled"    # Z

    .line 634
    iget-object v0, p0, Landroidx/media3/exoplayer/MediaSourceList$ForwardingEventListener;->this$0:Landroidx/media3/exoplayer/MediaSourceList;

    invoke-static {v0}, Landroidx/media3/exoplayer/MediaSourceList;->access$300(Landroidx/media3/exoplayer/MediaSourceList;)Landroidx/media3/exoplayer/analytics/AnalyticsCollector;

    move-result-object v1

    iget-object v0, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    .line 635
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iget-object v0, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    move-object v3, v0

    check-cast v3, Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    .line 634
    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    move v7, p5

    .end local p2    # "loadEventData":Landroidx/media3/exoplayer/source/LoadEventInfo;
    .end local p3    # "mediaLoadData":Landroidx/media3/exoplayer/source/MediaLoadData;
    .end local p4    # "error":Ljava/io/IOException;
    .end local p5    # "wasCanceled":Z
    .local v4, "loadEventData":Landroidx/media3/exoplayer/source/LoadEventInfo;
    .local v5, "mediaLoadData":Landroidx/media3/exoplayer/source/MediaLoadData;
    .local v6, "error":Ljava/io/IOException;
    .local v7, "wasCanceled":Z
    invoke-interface/range {v1 .. v7}, Landroidx/media3/exoplayer/analytics/AnalyticsCollector;->onLoadError(ILandroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;Landroidx/media3/exoplayer/source/LoadEventInfo;Landroidx/media3/exoplayer/source/MediaLoadData;Ljava/io/IOException;Z)V

    return-void
.end method

.method synthetic lambda$onLoadStarted$0$androidx-media3-exoplayer-MediaSourceList$ForwardingEventListener(Landroid/util/Pair;Landroidx/media3/exoplayer/source/LoadEventInfo;Landroidx/media3/exoplayer/source/MediaLoadData;I)V
    .locals 7
    .param p1, "eventParameters"    # Landroid/util/Pair;
    .param p2, "loadEventData"    # Landroidx/media3/exoplayer/source/LoadEventInfo;
    .param p3, "mediaLoadData"    # Landroidx/media3/exoplayer/source/MediaLoadData;
    .param p4, "retryCount"    # I

    .line 577
    iget-object v0, p0, Landroidx/media3/exoplayer/MediaSourceList$ForwardingEventListener;->this$0:Landroidx/media3/exoplayer/MediaSourceList;

    invoke-static {v0}, Landroidx/media3/exoplayer/MediaSourceList;->access$300(Landroidx/media3/exoplayer/MediaSourceList;)Landroidx/media3/exoplayer/analytics/AnalyticsCollector;

    move-result-object v1

    iget-object v0, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    .line 578
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iget-object v0, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    move-object v3, v0

    check-cast v3, Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    .line 577
    move-object v4, p2

    move-object v5, p3

    move v6, p4

    .end local p2    # "loadEventData":Landroidx/media3/exoplayer/source/LoadEventInfo;
    .end local p3    # "mediaLoadData":Landroidx/media3/exoplayer/source/MediaLoadData;
    .end local p4    # "retryCount":I
    .local v4, "loadEventData":Landroidx/media3/exoplayer/source/LoadEventInfo;
    .local v5, "mediaLoadData":Landroidx/media3/exoplayer/source/MediaLoadData;
    .local v6, "retryCount":I
    invoke-interface/range {v1 .. v6}, Landroidx/media3/exoplayer/analytics/AnalyticsCollector;->onLoadStarted(ILandroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;Landroidx/media3/exoplayer/source/LoadEventInfo;Landroidx/media3/exoplayer/source/MediaLoadData;I)V

    return-void
.end method

.method synthetic lambda$onUpstreamDiscarded$4$androidx-media3-exoplayer-MediaSourceList$ForwardingEventListener(Landroid/util/Pair;Landroidx/media3/exoplayer/source/MediaLoadData;)V
    .locals 3
    .param p1, "eventParameters"    # Landroid/util/Pair;
    .param p2, "mediaLoadData"    # Landroidx/media3/exoplayer/source/MediaLoadData;

    .line 655
    iget-object v0, p0, Landroidx/media3/exoplayer/MediaSourceList$ForwardingEventListener;->this$0:Landroidx/media3/exoplayer/MediaSourceList;

    invoke-static {v0}, Landroidx/media3/exoplayer/MediaSourceList;->access$300(Landroidx/media3/exoplayer/MediaSourceList;)Landroidx/media3/exoplayer/analytics/AnalyticsCollector;

    move-result-object v0

    iget-object v1, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    .line 656
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iget-object v2, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    invoke-static {v2}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    .line 655
    invoke-interface {v0, v1, v2, p2}, Landroidx/media3/exoplayer/analytics/AnalyticsCollector;->onUpstreamDiscarded(ILandroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;Landroidx/media3/exoplayer/source/MediaLoadData;)V

    return-void
.end method

.method public onDownstreamFormatChanged(ILandroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;Landroidx/media3/exoplayer/source/MediaLoadData;)V
    .locals 3
    .param p1, "windowIndex"    # I
    .param p2, "mediaPeriodId"    # Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;
    .param p3, "mediaLoadData"    # Landroidx/media3/exoplayer/source/MediaLoadData;

    .line 666
    nop

    .line 667
    invoke-direct {p0, p1, p2}, Landroidx/media3/exoplayer/MediaSourceList$ForwardingEventListener;->getEventParameters(ILandroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;)Landroid/util/Pair;

    move-result-object v0

    .line 668
    .local v0, "eventParameters":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;>;"
    if-eqz v0, :cond_0

    .line 669
    iget-object v1, p0, Landroidx/media3/exoplayer/MediaSourceList$ForwardingEventListener;->this$0:Landroidx/media3/exoplayer/MediaSourceList;

    invoke-static {v1}, Landroidx/media3/exoplayer/MediaSourceList;->access$000(Landroidx/media3/exoplayer/MediaSourceList;)Landroidx/media3/common/util/HandlerWrapper;

    move-result-object v1

    new-instance v2, Landroidx/media3/exoplayer/MediaSourceList$ForwardingEventListener$$ExternalSyntheticLambda4;

    invoke-direct {v2, p0, v0, p3}, Landroidx/media3/exoplayer/MediaSourceList$ForwardingEventListener$$ExternalSyntheticLambda4;-><init>(Landroidx/media3/exoplayer/MediaSourceList$ForwardingEventListener;Landroid/util/Pair;Landroidx/media3/exoplayer/source/MediaLoadData;)V

    invoke-interface {v1, v2}, Landroidx/media3/common/util/HandlerWrapper;->post(Ljava/lang/Runnable;)Z

    .line 674
    :cond_0
    return-void
.end method

.method public onDrmKeysLoaded(ILandroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;Landroidx/media3/exoplayer/drm/KeyRequestInfo;)V
    .locals 3
    .param p1, "windowIndex"    # I
    .param p2, "mediaPeriodId"    # Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;
    .param p3, "keyRequestInfo"    # Landroidx/media3/exoplayer/drm/KeyRequestInfo;

    .line 700
    nop

    .line 701
    invoke-direct {p0, p1, p2}, Landroidx/media3/exoplayer/MediaSourceList$ForwardingEventListener;->getEventParameters(ILandroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;)Landroid/util/Pair;

    move-result-object v0

    .line 702
    .local v0, "eventParameters":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;>;"
    if-eqz v0, :cond_0

    .line 703
    iget-object v1, p0, Landroidx/media3/exoplayer/MediaSourceList$ForwardingEventListener;->this$0:Landroidx/media3/exoplayer/MediaSourceList;

    invoke-static {v1}, Landroidx/media3/exoplayer/MediaSourceList;->access$000(Landroidx/media3/exoplayer/MediaSourceList;)Landroidx/media3/common/util/HandlerWrapper;

    move-result-object v1

    new-instance v2, Landroidx/media3/exoplayer/MediaSourceList$ForwardingEventListener$$ExternalSyntheticLambda11;

    invoke-direct {v2, p0, v0, p3}, Landroidx/media3/exoplayer/MediaSourceList$ForwardingEventListener$$ExternalSyntheticLambda11;-><init>(Landroidx/media3/exoplayer/MediaSourceList$ForwardingEventListener;Landroid/util/Pair;Landroidx/media3/exoplayer/drm/KeyRequestInfo;)V

    invoke-interface {v1, v2}, Landroidx/media3/common/util/HandlerWrapper;->post(Ljava/lang/Runnable;)Z

    .line 708
    :cond_0
    return-void
.end method

.method public onDrmKeysRemoved(ILandroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;)V
    .locals 3
    .param p1, "windowIndex"    # I
    .param p2, "mediaPeriodId"    # Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    .line 740
    nop

    .line 741
    invoke-direct {p0, p1, p2}, Landroidx/media3/exoplayer/MediaSourceList$ForwardingEventListener;->getEventParameters(ILandroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;)Landroid/util/Pair;

    move-result-object v0

    .line 742
    .local v0, "eventParameters":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;>;"
    if-eqz v0, :cond_0

    .line 743
    iget-object v1, p0, Landroidx/media3/exoplayer/MediaSourceList$ForwardingEventListener;->this$0:Landroidx/media3/exoplayer/MediaSourceList;

    invoke-static {v1}, Landroidx/media3/exoplayer/MediaSourceList;->access$000(Landroidx/media3/exoplayer/MediaSourceList;)Landroidx/media3/common/util/HandlerWrapper;

    move-result-object v1

    new-instance v2, Landroidx/media3/exoplayer/MediaSourceList$ForwardingEventListener$$ExternalSyntheticLambda2;

    invoke-direct {v2, p0, v0}, Landroidx/media3/exoplayer/MediaSourceList$ForwardingEventListener$$ExternalSyntheticLambda2;-><init>(Landroidx/media3/exoplayer/MediaSourceList$ForwardingEventListener;Landroid/util/Pair;)V

    invoke-interface {v1, v2}, Landroidx/media3/common/util/HandlerWrapper;->post(Ljava/lang/Runnable;)Z

    .line 746
    :cond_0
    return-void
.end method

.method public onDrmKeysRestored(ILandroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;)V
    .locals 3
    .param p1, "windowIndex"    # I
    .param p2, "mediaPeriodId"    # Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    .line 728
    nop

    .line 729
    invoke-direct {p0, p1, p2}, Landroidx/media3/exoplayer/MediaSourceList$ForwardingEventListener;->getEventParameters(ILandroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;)Landroid/util/Pair;

    move-result-object v0

    .line 730
    .local v0, "eventParameters":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;>;"
    if-eqz v0, :cond_0

    .line 731
    iget-object v1, p0, Landroidx/media3/exoplayer/MediaSourceList$ForwardingEventListener;->this$0:Landroidx/media3/exoplayer/MediaSourceList;

    invoke-static {v1}, Landroidx/media3/exoplayer/MediaSourceList;->access$000(Landroidx/media3/exoplayer/MediaSourceList;)Landroidx/media3/common/util/HandlerWrapper;

    move-result-object v1

    new-instance v2, Landroidx/media3/exoplayer/MediaSourceList$ForwardingEventListener$$ExternalSyntheticLambda5;

    invoke-direct {v2, p0, v0}, Landroidx/media3/exoplayer/MediaSourceList$ForwardingEventListener$$ExternalSyntheticLambda5;-><init>(Landroidx/media3/exoplayer/MediaSourceList$ForwardingEventListener;Landroid/util/Pair;)V

    invoke-interface {v1, v2}, Landroidx/media3/common/util/HandlerWrapper;->post(Ljava/lang/Runnable;)Z

    .line 734
    :cond_0
    return-void
.end method

.method public onDrmSessionAcquired(ILandroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;I)V
    .locals 3
    .param p1, "windowIndex"    # I
    .param p2, "mediaPeriodId"    # Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;
    .param p3, "state"    # I

    .line 684
    nop

    .line 685
    invoke-direct {p0, p1, p2}, Landroidx/media3/exoplayer/MediaSourceList$ForwardingEventListener;->getEventParameters(ILandroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;)Landroid/util/Pair;

    move-result-object v0

    .line 686
    .local v0, "eventParameters":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;>;"
    if-eqz v0, :cond_0

    .line 687
    iget-object v1, p0, Landroidx/media3/exoplayer/MediaSourceList$ForwardingEventListener;->this$0:Landroidx/media3/exoplayer/MediaSourceList;

    invoke-static {v1}, Landroidx/media3/exoplayer/MediaSourceList;->access$000(Landroidx/media3/exoplayer/MediaSourceList;)Landroidx/media3/common/util/HandlerWrapper;

    move-result-object v1

    new-instance v2, Landroidx/media3/exoplayer/MediaSourceList$ForwardingEventListener$$ExternalSyntheticLambda8;

    invoke-direct {v2, p0, v0, p3}, Landroidx/media3/exoplayer/MediaSourceList$ForwardingEventListener$$ExternalSyntheticLambda8;-><init>(Landroidx/media3/exoplayer/MediaSourceList$ForwardingEventListener;Landroid/util/Pair;I)V

    invoke-interface {v1, v2}, Landroidx/media3/common/util/HandlerWrapper;->post(Ljava/lang/Runnable;)Z

    .line 692
    :cond_0
    return-void
.end method

.method public onDrmSessionManagerError(ILandroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;Ljava/lang/Exception;)V
    .locals 3
    .param p1, "windowIndex"    # I
    .param p2, "mediaPeriodId"    # Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;
    .param p3, "error"    # Ljava/lang/Exception;

    .line 714
    nop

    .line 715
    invoke-direct {p0, p1, p2}, Landroidx/media3/exoplayer/MediaSourceList$ForwardingEventListener;->getEventParameters(ILandroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;)Landroid/util/Pair;

    move-result-object v0

    .line 716
    .local v0, "eventParameters":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;>;"
    if-eqz v0, :cond_0

    .line 717
    iget-object v1, p0, Landroidx/media3/exoplayer/MediaSourceList$ForwardingEventListener;->this$0:Landroidx/media3/exoplayer/MediaSourceList;

    invoke-static {v1}, Landroidx/media3/exoplayer/MediaSourceList;->access$000(Landroidx/media3/exoplayer/MediaSourceList;)Landroidx/media3/common/util/HandlerWrapper;

    move-result-object v1

    new-instance v2, Landroidx/media3/exoplayer/MediaSourceList$ForwardingEventListener$$ExternalSyntheticLambda3;

    invoke-direct {v2, p0, v0, p3}, Landroidx/media3/exoplayer/MediaSourceList$ForwardingEventListener$$ExternalSyntheticLambda3;-><init>(Landroidx/media3/exoplayer/MediaSourceList$ForwardingEventListener;Landroid/util/Pair;Ljava/lang/Exception;)V

    invoke-interface {v1, v2}, Landroidx/media3/common/util/HandlerWrapper;->post(Ljava/lang/Runnable;)Z

    .line 722
    :cond_0
    return-void
.end method

.method public onDrmSessionReleased(ILandroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;)V
    .locals 3
    .param p1, "windowIndex"    # I
    .param p2, "mediaPeriodId"    # Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    .line 752
    nop

    .line 753
    invoke-direct {p0, p1, p2}, Landroidx/media3/exoplayer/MediaSourceList$ForwardingEventListener;->getEventParameters(ILandroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;)Landroid/util/Pair;

    move-result-object v0

    .line 754
    .local v0, "eventParameters":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;>;"
    if-eqz v0, :cond_0

    .line 755
    iget-object v1, p0, Landroidx/media3/exoplayer/MediaSourceList$ForwardingEventListener;->this$0:Landroidx/media3/exoplayer/MediaSourceList;

    invoke-static {v1}, Landroidx/media3/exoplayer/MediaSourceList;->access$000(Landroidx/media3/exoplayer/MediaSourceList;)Landroidx/media3/common/util/HandlerWrapper;

    move-result-object v1

    new-instance v2, Landroidx/media3/exoplayer/MediaSourceList$ForwardingEventListener$$ExternalSyntheticLambda6;

    invoke-direct {v2, p0, v0}, Landroidx/media3/exoplayer/MediaSourceList$ForwardingEventListener$$ExternalSyntheticLambda6;-><init>(Landroidx/media3/exoplayer/MediaSourceList$ForwardingEventListener;Landroid/util/Pair;)V

    invoke-interface {v1, v2}, Landroidx/media3/common/util/HandlerWrapper;->post(Ljava/lang/Runnable;)Z

    .line 759
    :cond_0
    return-void
.end method

.method public onLoadCanceled(ILandroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;Landroidx/media3/exoplayer/source/LoadEventInfo;Landroidx/media3/exoplayer/source/MediaLoadData;)V
    .locals 3
    .param p1, "windowIndex"    # I
    .param p2, "mediaPeriodId"    # Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;
    .param p3, "loadEventData"    # Landroidx/media3/exoplayer/source/LoadEventInfo;
    .param p4, "mediaLoadData"    # Landroidx/media3/exoplayer/source/MediaLoadData;

    .line 610
    nop

    .line 611
    invoke-direct {p0, p1, p2}, Landroidx/media3/exoplayer/MediaSourceList$ForwardingEventListener;->getEventParameters(ILandroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;)Landroid/util/Pair;

    move-result-object v0

    .line 612
    .local v0, "eventParameters":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;>;"
    if-eqz v0, :cond_0

    .line 613
    iget-object v1, p0, Landroidx/media3/exoplayer/MediaSourceList$ForwardingEventListener;->this$0:Landroidx/media3/exoplayer/MediaSourceList;

    invoke-static {v1}, Landroidx/media3/exoplayer/MediaSourceList;->access$000(Landroidx/media3/exoplayer/MediaSourceList;)Landroidx/media3/common/util/HandlerWrapper;

    move-result-object v1

    new-instance v2, Landroidx/media3/exoplayer/MediaSourceList$ForwardingEventListener$$ExternalSyntheticLambda1;

    invoke-direct {v2, p0, v0, p3, p4}, Landroidx/media3/exoplayer/MediaSourceList$ForwardingEventListener$$ExternalSyntheticLambda1;-><init>(Landroidx/media3/exoplayer/MediaSourceList$ForwardingEventListener;Landroid/util/Pair;Landroidx/media3/exoplayer/source/LoadEventInfo;Landroidx/media3/exoplayer/source/MediaLoadData;)V

    invoke-interface {v1, v2}, Landroidx/media3/common/util/HandlerWrapper;->post(Ljava/lang/Runnable;)Z

    .line 618
    :cond_0
    return-void
.end method

.method public onLoadCompleted(ILandroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;Landroidx/media3/exoplayer/source/LoadEventInfo;Landroidx/media3/exoplayer/source/MediaLoadData;)V
    .locals 3
    .param p1, "windowIndex"    # I
    .param p2, "mediaPeriodId"    # Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;
    .param p3, "loadEventData"    # Landroidx/media3/exoplayer/source/LoadEventInfo;
    .param p4, "mediaLoadData"    # Landroidx/media3/exoplayer/source/MediaLoadData;

    .line 593
    nop

    .line 594
    invoke-direct {p0, p1, p2}, Landroidx/media3/exoplayer/MediaSourceList$ForwardingEventListener;->getEventParameters(ILandroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;)Landroid/util/Pair;

    move-result-object v0

    .line 595
    .local v0, "eventParameters":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;>;"
    if-eqz v0, :cond_0

    .line 596
    iget-object v1, p0, Landroidx/media3/exoplayer/MediaSourceList$ForwardingEventListener;->this$0:Landroidx/media3/exoplayer/MediaSourceList;

    invoke-static {v1}, Landroidx/media3/exoplayer/MediaSourceList;->access$000(Landroidx/media3/exoplayer/MediaSourceList;)Landroidx/media3/common/util/HandlerWrapper;

    move-result-object v1

    new-instance v2, Landroidx/media3/exoplayer/MediaSourceList$ForwardingEventListener$$ExternalSyntheticLambda7;

    invoke-direct {v2, p0, v0, p3, p4}, Landroidx/media3/exoplayer/MediaSourceList$ForwardingEventListener$$ExternalSyntheticLambda7;-><init>(Landroidx/media3/exoplayer/MediaSourceList$ForwardingEventListener;Landroid/util/Pair;Landroidx/media3/exoplayer/source/LoadEventInfo;Landroidx/media3/exoplayer/source/MediaLoadData;)V

    invoke-interface {v1, v2}, Landroidx/media3/common/util/HandlerWrapper;->post(Ljava/lang/Runnable;)Z

    .line 601
    :cond_0
    return-void
.end method

.method public onLoadError(ILandroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;Landroidx/media3/exoplayer/source/LoadEventInfo;Landroidx/media3/exoplayer/source/MediaLoadData;Ljava/io/IOException;Z)V
    .locals 8
    .param p1, "windowIndex"    # I
    .param p2, "mediaPeriodId"    # Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;
    .param p3, "loadEventData"    # Landroidx/media3/exoplayer/source/LoadEventInfo;
    .param p4, "mediaLoadData"    # Landroidx/media3/exoplayer/source/MediaLoadData;
    .param p5, "error"    # Ljava/io/IOException;
    .param p6, "wasCanceled"    # Z

    .line 629
    nop

    .line 630
    invoke-direct {p0, p1, p2}, Landroidx/media3/exoplayer/MediaSourceList$ForwardingEventListener;->getEventParameters(ILandroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;)Landroid/util/Pair;

    move-result-object v2

    .line 631
    .local v2, "eventParameters":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;>;"
    if-eqz v2, :cond_0

    .line 632
    iget-object v0, p0, Landroidx/media3/exoplayer/MediaSourceList$ForwardingEventListener;->this$0:Landroidx/media3/exoplayer/MediaSourceList;

    invoke-static {v0}, Landroidx/media3/exoplayer/MediaSourceList;->access$000(Landroidx/media3/exoplayer/MediaSourceList;)Landroidx/media3/common/util/HandlerWrapper;

    move-result-object v7

    new-instance v0, Landroidx/media3/exoplayer/MediaSourceList$ForwardingEventListener$$ExternalSyntheticLambda10;

    move-object v1, p0

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move v6, p6

    .end local p3    # "loadEventData":Landroidx/media3/exoplayer/source/LoadEventInfo;
    .end local p4    # "mediaLoadData":Landroidx/media3/exoplayer/source/MediaLoadData;
    .end local p5    # "error":Ljava/io/IOException;
    .end local p6    # "wasCanceled":Z
    .local v3, "loadEventData":Landroidx/media3/exoplayer/source/LoadEventInfo;
    .local v4, "mediaLoadData":Landroidx/media3/exoplayer/source/MediaLoadData;
    .local v5, "error":Ljava/io/IOException;
    .local v6, "wasCanceled":Z
    invoke-direct/range {v0 .. v6}, Landroidx/media3/exoplayer/MediaSourceList$ForwardingEventListener$$ExternalSyntheticLambda10;-><init>(Landroidx/media3/exoplayer/MediaSourceList$ForwardingEventListener;Landroid/util/Pair;Landroidx/media3/exoplayer/source/LoadEventInfo;Landroidx/media3/exoplayer/source/MediaLoadData;Ljava/io/IOException;Z)V

    invoke-interface {v7, v0}, Landroidx/media3/common/util/HandlerWrapper;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 631
    .end local v3    # "loadEventData":Landroidx/media3/exoplayer/source/LoadEventInfo;
    .end local v4    # "mediaLoadData":Landroidx/media3/exoplayer/source/MediaLoadData;
    .end local v5    # "error":Ljava/io/IOException;
    .end local v6    # "wasCanceled":Z
    .restart local p3    # "loadEventData":Landroidx/media3/exoplayer/source/LoadEventInfo;
    .restart local p4    # "mediaLoadData":Landroidx/media3/exoplayer/source/MediaLoadData;
    .restart local p5    # "error":Ljava/io/IOException;
    .restart local p6    # "wasCanceled":Z
    :cond_0
    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move v6, p6

    .line 642
    .end local p3    # "loadEventData":Landroidx/media3/exoplayer/source/LoadEventInfo;
    .end local p4    # "mediaLoadData":Landroidx/media3/exoplayer/source/MediaLoadData;
    .end local p5    # "error":Ljava/io/IOException;
    .end local p6    # "wasCanceled":Z
    .restart local v3    # "loadEventData":Landroidx/media3/exoplayer/source/LoadEventInfo;
    .restart local v4    # "mediaLoadData":Landroidx/media3/exoplayer/source/MediaLoadData;
    .restart local v5    # "error":Ljava/io/IOException;
    .restart local v6    # "wasCanceled":Z
    :goto_0
    return-void
.end method

.method public onLoadStarted(ILandroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;Landroidx/media3/exoplayer/source/LoadEventInfo;Landroidx/media3/exoplayer/source/MediaLoadData;I)V
    .locals 7
    .param p1, "windowIndex"    # I
    .param p2, "mediaPeriodId"    # Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;
    .param p3, "loadEventData"    # Landroidx/media3/exoplayer/source/LoadEventInfo;
    .param p4, "mediaLoadData"    # Landroidx/media3/exoplayer/source/MediaLoadData;
    .param p5, "retryCount"    # I

    .line 572
    nop

    .line 573
    invoke-direct {p0, p1, p2}, Landroidx/media3/exoplayer/MediaSourceList$ForwardingEventListener;->getEventParameters(ILandroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;)Landroid/util/Pair;

    move-result-object v2

    .line 574
    .local v2, "eventParameters":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;>;"
    if-eqz v2, :cond_0

    .line 575
    iget-object v0, p0, Landroidx/media3/exoplayer/MediaSourceList$ForwardingEventListener;->this$0:Landroidx/media3/exoplayer/MediaSourceList;

    invoke-static {v0}, Landroidx/media3/exoplayer/MediaSourceList;->access$000(Landroidx/media3/exoplayer/MediaSourceList;)Landroidx/media3/common/util/HandlerWrapper;

    move-result-object v6

    new-instance v0, Landroidx/media3/exoplayer/MediaSourceList$ForwardingEventListener$$ExternalSyntheticLambda9;

    move-object v1, p0

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    .end local p3    # "loadEventData":Landroidx/media3/exoplayer/source/LoadEventInfo;
    .end local p4    # "mediaLoadData":Landroidx/media3/exoplayer/source/MediaLoadData;
    .end local p5    # "retryCount":I
    .local v3, "loadEventData":Landroidx/media3/exoplayer/source/LoadEventInfo;
    .local v4, "mediaLoadData":Landroidx/media3/exoplayer/source/MediaLoadData;
    .local v5, "retryCount":I
    invoke-direct/range {v0 .. v5}, Landroidx/media3/exoplayer/MediaSourceList$ForwardingEventListener$$ExternalSyntheticLambda9;-><init>(Landroidx/media3/exoplayer/MediaSourceList$ForwardingEventListener;Landroid/util/Pair;Landroidx/media3/exoplayer/source/LoadEventInfo;Landroidx/media3/exoplayer/source/MediaLoadData;I)V

    invoke-interface {v6, v0}, Landroidx/media3/common/util/HandlerWrapper;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 574
    .end local v3    # "loadEventData":Landroidx/media3/exoplayer/source/LoadEventInfo;
    .end local v4    # "mediaLoadData":Landroidx/media3/exoplayer/source/MediaLoadData;
    .end local v5    # "retryCount":I
    .restart local p3    # "loadEventData":Landroidx/media3/exoplayer/source/LoadEventInfo;
    .restart local p4    # "mediaLoadData":Landroidx/media3/exoplayer/source/MediaLoadData;
    .restart local p5    # "retryCount":I
    :cond_0
    move-object v3, p3

    move-object v4, p4

    move v5, p5

    .line 584
    .end local p3    # "loadEventData":Landroidx/media3/exoplayer/source/LoadEventInfo;
    .end local p4    # "mediaLoadData":Landroidx/media3/exoplayer/source/MediaLoadData;
    .end local p5    # "retryCount":I
    .restart local v3    # "loadEventData":Landroidx/media3/exoplayer/source/LoadEventInfo;
    .restart local v4    # "mediaLoadData":Landroidx/media3/exoplayer/source/MediaLoadData;
    .restart local v5    # "retryCount":I
    :goto_0
    return-void
.end method

.method public onUpstreamDiscarded(ILandroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;Landroidx/media3/exoplayer/source/MediaLoadData;)V
    .locals 3
    .param p1, "windowIndex"    # I
    .param p2, "mediaPeriodId"    # Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;
    .param p3, "mediaLoadData"    # Landroidx/media3/exoplayer/source/MediaLoadData;

    .line 650
    nop

    .line 651
    invoke-direct {p0, p1, p2}, Landroidx/media3/exoplayer/MediaSourceList$ForwardingEventListener;->getEventParameters(ILandroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;)Landroid/util/Pair;

    move-result-object v0

    .line 652
    .local v0, "eventParameters":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;>;"
    if-eqz v0, :cond_0

    .line 653
    iget-object v1, p0, Landroidx/media3/exoplayer/MediaSourceList$ForwardingEventListener;->this$0:Landroidx/media3/exoplayer/MediaSourceList;

    invoke-static {v1}, Landroidx/media3/exoplayer/MediaSourceList;->access$000(Landroidx/media3/exoplayer/MediaSourceList;)Landroidx/media3/common/util/HandlerWrapper;

    move-result-object v1

    new-instance v2, Landroidx/media3/exoplayer/MediaSourceList$ForwardingEventListener$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0, v0, p3}, Landroidx/media3/exoplayer/MediaSourceList$ForwardingEventListener$$ExternalSyntheticLambda0;-><init>(Landroidx/media3/exoplayer/MediaSourceList$ForwardingEventListener;Landroid/util/Pair;Landroidx/media3/exoplayer/source/MediaLoadData;)V

    invoke-interface {v1, v2}, Landroidx/media3/common/util/HandlerWrapper;->post(Ljava/lang/Runnable;)Z

    .line 658
    :cond_0
    return-void
.end method
