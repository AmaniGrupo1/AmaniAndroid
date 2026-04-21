.class final Landroidx/media3/exoplayer/source/ads/ServerSideAdInsertionMediaSource$ServerSideAdInsertionTimeline;
.super Landroidx/media3/exoplayer/source/ForwardingTimeline;
.source "ServerSideAdInsertionMediaSource.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media3/exoplayer/source/ads/ServerSideAdInsertionMediaSource;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ServerSideAdInsertionTimeline"
.end annotation


# instance fields
.field private final adPlaybackStates:Lcom/google/common/collect/ImmutableMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/ImmutableMap<",
            "Ljava/lang/Object;",
            "Landroidx/media3/common/AdPlaybackState;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroidx/media3/common/Timeline;Lcom/google/common/collect/ImmutableMap;)V
    .locals 4
    .param p1, "contentTimeline"    # Landroidx/media3/common/Timeline;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/media3/common/Timeline;",
            "Lcom/google/common/collect/ImmutableMap<",
            "Ljava/lang/Object;",
            "Landroidx/media3/common/AdPlaybackState;",
            ">;)V"
        }
    .end annotation

    .line 1031
    .local p2, "adPlaybackStates":Lcom/google/common/collect/ImmutableMap;, "Lcom/google/common/collect/ImmutableMap<Ljava/lang/Object;Landroidx/media3/common/AdPlaybackState;>;"
    invoke-direct {p0, p1}, Landroidx/media3/exoplayer/source/ForwardingTimeline;-><init>(Landroidx/media3/common/Timeline;)V

    .line 1032
    invoke-virtual {p1}, Landroidx/media3/common/Timeline;->getWindowCount()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkState(Z)V

    .line 1033
    new-instance v0, Landroidx/media3/common/Timeline$Period;

    invoke-direct {v0}, Landroidx/media3/common/Timeline$Period;-><init>()V

    .line 1034
    .local v0, "period":Landroidx/media3/common/Timeline$Period;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    invoke-virtual {p1}, Landroidx/media3/common/Timeline;->getPeriodCount()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 1035
    invoke-virtual {p1, v2, v0, v1}, Landroidx/media3/common/Timeline;->getPeriod(ILandroidx/media3/common/Timeline$Period;Z)Landroidx/media3/common/Timeline$Period;

    .line 1036
    iget-object v3, v0, Landroidx/media3/common/Timeline$Period;->uid:Ljava/lang/Object;

    invoke-static {v3}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p2, v3}, Lcom/google/common/collect/ImmutableMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    invoke-static {v3}, Lcom/google/common/base/Preconditions;->checkState(Z)V

    .line 1034
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 1038
    .end local v2    # "i":I
    :cond_1
    iput-object p2, p0, Landroidx/media3/exoplayer/source/ads/ServerSideAdInsertionMediaSource$ServerSideAdInsertionTimeline;->adPlaybackStates:Lcom/google/common/collect/ImmutableMap;

    .line 1039
    return-void
.end method


# virtual methods
.method public getPeriod(ILandroidx/media3/common/Timeline$Period;Z)Landroidx/media3/common/Timeline$Period;
    .locals 13
    .param p1, "periodIndex"    # I
    .param p2, "period"    # Landroidx/media3/common/Timeline$Period;
    .param p3, "setIds"    # Z

    .line 1080
    const/4 v1, 0x1

    invoke-super {p0, p1, p2, v1}, Landroidx/media3/exoplayer/source/ForwardingTimeline;->getPeriod(ILandroidx/media3/common/Timeline$Period;Z)Landroidx/media3/common/Timeline$Period;

    .line 1081
    iget-object v2, p0, Landroidx/media3/exoplayer/source/ads/ServerSideAdInsertionMediaSource$ServerSideAdInsertionTimeline;->adPlaybackStates:Lcom/google/common/collect/ImmutableMap;

    iget-object v3, p2, Landroidx/media3/common/Timeline$Period;->uid:Ljava/lang/Object;

    invoke-virtual {v2, v3}, Lcom/google/common/collect/ImmutableMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/media3/common/AdPlaybackState;

    invoke-static {v2}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v8, v2

    check-cast v8, Landroidx/media3/common/AdPlaybackState;

    .line 1082
    .local v8, "adPlaybackState":Landroidx/media3/common/AdPlaybackState;
    iget-wide v2, p2, Landroidx/media3/common/Timeline$Period;->durationUs:J

    .line 1083
    .local v2, "durationUs":J
    const-wide v4, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v4, v2, v4

    const/4 v5, -0x1

    if-nez v4, :cond_0

    .line 1084
    iget-wide v2, v8, Landroidx/media3/common/AdPlaybackState;->contentDurationUs:J

    goto :goto_0

    .line 1086
    :cond_0
    nop

    .line 1087
    invoke-static {v2, v3, v5, v8}, Landroidx/media3/exoplayer/source/ads/ServerSideAdInsertionUtil;->getMediaPeriodPositionUsForContent(JILandroidx/media3/common/AdPlaybackState;)J

    move-result-wide v2

    .line 1090
    :goto_0
    const-wide/16 v6, 0x0

    .line 1091
    .local v6, "positionInWindowUs":J
    new-instance v4, Landroidx/media3/common/Timeline$Period;

    invoke-direct {v4}, Landroidx/media3/common/Timeline$Period;-><init>()V

    move-object v10, v4

    .line 1092
    .local v10, "innerPeriod":Landroidx/media3/common/Timeline$Period;
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_1
    add-int/lit8 v9, p1, 0x1

    if-ge v4, v9, :cond_3

    .line 1093
    iget-object v9, p0, Landroidx/media3/exoplayer/source/ads/ServerSideAdInsertionMediaSource$ServerSideAdInsertionTimeline;->timeline:Landroidx/media3/common/Timeline;

    invoke-virtual {v9, v4, v10, v1}, Landroidx/media3/common/Timeline;->getPeriod(ILandroidx/media3/common/Timeline$Period;Z)Landroidx/media3/common/Timeline$Period;

    .line 1094
    iget-object v9, p0, Landroidx/media3/exoplayer/source/ads/ServerSideAdInsertionMediaSource$ServerSideAdInsertionTimeline;->adPlaybackStates:Lcom/google/common/collect/ImmutableMap;

    iget-object v11, v10, Landroidx/media3/common/Timeline$Period;->uid:Ljava/lang/Object;

    invoke-virtual {v9, v11}, Lcom/google/common/collect/ImmutableMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroidx/media3/common/AdPlaybackState;

    invoke-static {v9}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroidx/media3/common/AdPlaybackState;

    .line 1095
    .local v9, "innerAdPlaybackState":Landroidx/media3/common/AdPlaybackState;
    if-nez v4, :cond_1

    .line 1096
    nop

    .line 1098
    invoke-virtual {v10}, Landroidx/media3/common/Timeline$Period;->getPositionInWindowUs()J

    move-result-wide v11

    neg-long v11, v11

    .line 1097
    invoke-static {v11, v12, v5, v9}, Landroidx/media3/exoplayer/source/ads/ServerSideAdInsertionUtil;->getMediaPeriodPositionUsForContent(JILandroidx/media3/common/AdPlaybackState;)J

    move-result-wide v11

    neg-long v6, v11

    .line 1102
    :cond_1
    if-eq v4, p1, :cond_2

    .line 1103
    iget-wide v11, v10, Landroidx/media3/common/Timeline$Period;->durationUs:J

    .line 1104
    invoke-static {v11, v12, v5, v9}, Landroidx/media3/exoplayer/source/ads/ServerSideAdInsertionUtil;->getMediaPeriodPositionUsForContent(JILandroidx/media3/common/AdPlaybackState;)J

    move-result-wide v11

    add-long/2addr v6, v11

    .line 1092
    .end local v9    # "innerAdPlaybackState":Landroidx/media3/common/AdPlaybackState;
    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 1110
    .end local v4    # "i":I
    :cond_3
    iget-object v1, p2, Landroidx/media3/common/Timeline$Period;->id:Ljava/lang/Object;

    move-wide v4, v2

    .end local v2    # "durationUs":J
    .local v4, "durationUs":J
    iget-object v2, p2, Landroidx/media3/common/Timeline$Period;->uid:Ljava/lang/Object;

    iget v3, p2, Landroidx/media3/common/Timeline$Period;->windowIndex:I

    iget-boolean v9, p2, Landroidx/media3/common/Timeline$Period;->isPlaceholder:Z

    move-object v0, p2

    invoke-virtual/range {v0 .. v9}, Landroidx/media3/common/Timeline$Period;->set(Ljava/lang/Object;Ljava/lang/Object;IJJLandroidx/media3/common/AdPlaybackState;Z)Landroidx/media3/common/Timeline$Period;

    .line 1118
    return-object p2
.end method

.method public getWindow(ILandroidx/media3/common/Timeline$Window;J)Landroidx/media3/common/Timeline$Window;
    .locals 18
    .param p1, "windowIndex"    # I
    .param p2, "window"    # Landroidx/media3/common/Timeline$Window;
    .param p3, "defaultPositionProjectionUs"    # J

    .line 1043
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-super/range {p0 .. p4}, Landroidx/media3/exoplayer/source/ForwardingTimeline;->getWindow(ILandroidx/media3/common/Timeline$Window;J)Landroidx/media3/common/Timeline$Window;

    .line 1044
    new-instance v2, Landroidx/media3/common/Timeline$Period;

    invoke-direct {v2}, Landroidx/media3/common/Timeline$Period;-><init>()V

    .line 1045
    .local v2, "period":Landroidx/media3/common/Timeline$Period;
    iget v3, v1, Landroidx/media3/common/Timeline$Window;->firstPeriodIndex:I

    .line 1046
    const/4 v4, 0x1

    invoke-virtual {v0, v3, v2, v4}, Landroidx/media3/exoplayer/source/ads/ServerSideAdInsertionMediaSource$ServerSideAdInsertionTimeline;->getPeriod(ILandroidx/media3/common/Timeline$Period;Z)Landroidx/media3/common/Timeline$Period;

    move-result-object v3

    iget-object v3, v3, Landroidx/media3/common/Timeline$Period;->uid:Ljava/lang/Object;

    invoke-static {v3}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 1047
    .local v3, "firstPeriodUid":Ljava/lang/Object;
    iget-object v5, v0, Landroidx/media3/exoplayer/source/ads/ServerSideAdInsertionMediaSource$ServerSideAdInsertionTimeline;->adPlaybackStates:Lcom/google/common/collect/ImmutableMap;

    invoke-virtual {v5, v3}, Lcom/google/common/collect/ImmutableMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/media3/common/AdPlaybackState;

    invoke-static {v5}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/media3/common/AdPlaybackState;

    .line 1048
    .local v5, "firstAdPlaybackState":Landroidx/media3/common/AdPlaybackState;
    iget-wide v6, v1, Landroidx/media3/common/Timeline$Window;->positionInFirstPeriodUs:J

    .line 1049
    const/4 v8, -0x1

    invoke-static {v6, v7, v8, v5}, Landroidx/media3/exoplayer/source/ads/ServerSideAdInsertionUtil;->getMediaPeriodPositionUsForContent(JILandroidx/media3/common/AdPlaybackState;)J

    move-result-wide v6

    .line 1053
    .local v6, "positionInPeriodUs":J
    iget-wide v9, v1, Landroidx/media3/common/Timeline$Window;->durationUs:J

    const-wide v11, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v9, v9, v11

    if-nez v9, :cond_1

    .line 1054
    iget-wide v8, v5, Landroidx/media3/common/AdPlaybackState;->contentDurationUs:J

    cmp-long v4, v8, v11

    if-eqz v4, :cond_0

    .line 1055
    iget-wide v8, v5, Landroidx/media3/common/AdPlaybackState;->contentDurationUs:J

    sub-long/2addr v8, v6

    iput-wide v8, v1, Landroidx/media3/common/Timeline$Window;->durationUs:J

    move-object v8, v2

    move-object/from16 v17, v3

    goto :goto_0

    .line 1054
    :cond_0
    move-object v8, v2

    move-object/from16 v17, v3

    goto :goto_0

    .line 1058
    :cond_1
    iget v9, v1, Landroidx/media3/common/Timeline$Window;->lastPeriodIndex:I

    .line 1059
    invoke-super {v0, v9, v2, v4}, Landroidx/media3/exoplayer/source/ForwardingTimeline;->getPeriod(ILandroidx/media3/common/Timeline$Period;Z)Landroidx/media3/common/Timeline$Period;

    move-result-object v4

    .line 1060
    .local v4, "originalLastPeriod":Landroidx/media3/common/Timeline$Period;
    iget-wide v9, v4, Landroidx/media3/common/Timeline$Period;->positionInWindowUs:J

    .line 1061
    .local v9, "originalLastPeriodPositionInWindowUs":J
    iget-object v11, v0, Landroidx/media3/exoplayer/source/ads/ServerSideAdInsertionMediaSource$ServerSideAdInsertionTimeline;->adPlaybackStates:Lcom/google/common/collect/ImmutableMap;

    iget-object v12, v4, Landroidx/media3/common/Timeline$Period;->uid:Ljava/lang/Object;

    .line 1062
    invoke-virtual {v11, v12}, Lcom/google/common/collect/ImmutableMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroidx/media3/common/AdPlaybackState;

    invoke-static {v11}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroidx/media3/common/AdPlaybackState;

    .line 1063
    .local v11, "lastAdPlaybackState":Landroidx/media3/common/AdPlaybackState;
    iget v12, v1, Landroidx/media3/common/Timeline$Window;->lastPeriodIndex:I

    invoke-virtual {v0, v12, v2}, Landroidx/media3/exoplayer/source/ads/ServerSideAdInsertionMediaSource$ServerSideAdInsertionTimeline;->getPeriod(ILandroidx/media3/common/Timeline$Period;)Landroidx/media3/common/Timeline$Period;

    move-result-object v12

    .line 1064
    .local v12, "adjustedLastPeriod":Landroidx/media3/common/Timeline$Period;
    iget-wide v13, v1, Landroidx/media3/common/Timeline$Window;->durationUs:J

    sub-long/2addr v13, v9

    .line 1066
    .local v13, "originalWindowDurationInLastPeriodUs":J
    nop

    .line 1067
    invoke-static {v13, v14, v8, v11}, Landroidx/media3/exoplayer/source/ads/ServerSideAdInsertionUtil;->getMediaPeriodPositionUsForContent(JILandroidx/media3/common/AdPlaybackState;)J

    move-result-wide v15

    .line 1071
    .local v15, "adjustedWindowDurationInLastPeriodUs":J
    move-object v8, v2

    move-object/from16 v17, v3

    .end local v2    # "period":Landroidx/media3/common/Timeline$Period;
    .end local v3    # "firstPeriodUid":Ljava/lang/Object;
    .local v8, "period":Landroidx/media3/common/Timeline$Period;
    .local v17, "firstPeriodUid":Ljava/lang/Object;
    iget-wide v2, v12, Landroidx/media3/common/Timeline$Period;->positionInWindowUs:J

    add-long/2addr v2, v15

    iput-wide v2, v1, Landroidx/media3/common/Timeline$Window;->durationUs:J

    .line 1074
    .end local v4    # "originalLastPeriod":Landroidx/media3/common/Timeline$Period;
    .end local v9    # "originalLastPeriodPositionInWindowUs":J
    .end local v11    # "lastAdPlaybackState":Landroidx/media3/common/AdPlaybackState;
    .end local v12    # "adjustedLastPeriod":Landroidx/media3/common/Timeline$Period;
    .end local v13    # "originalWindowDurationInLastPeriodUs":J
    .end local v15    # "adjustedWindowDurationInLastPeriodUs":J
    :goto_0
    iput-wide v6, v1, Landroidx/media3/common/Timeline$Window;->positionInFirstPeriodUs:J

    .line 1075
    return-object v1
.end method
