.class final Landroidx/media3/exoplayer/analytics/DefaultAnalyticsCollector$MediaPeriodQueueTracker;
.super Ljava/lang/Object;
.source "DefaultAnalyticsCollector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media3/exoplayer/analytics/DefaultAnalyticsCollector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "MediaPeriodQueueTracker"
.end annotation


# instance fields
.field private currentPlayerMediaPeriod:Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

.field private mediaPeriodQueue:Lcom/google/common/collect/ImmutableList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/ImmutableList<",
            "Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;",
            ">;"
        }
    .end annotation
.end field

.field private mediaPeriodTimelines:Lcom/google/common/collect/ImmutableMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/ImmutableMap<",
            "Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;",
            "Landroidx/media3/common/Timeline;",
            ">;"
        }
    .end annotation
.end field

.field private final period:Landroidx/media3/common/Timeline$Period;

.field private playingMediaPeriod:Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

.field private readingMediaPeriod:Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;


# direct methods
.method public constructor <init>(Landroidx/media3/common/Timeline$Period;)V
    .locals 1
    .param p1, "period"    # Landroidx/media3/common/Timeline$Period;

    .line 1049
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1050
    iput-object p1, p0, Landroidx/media3/exoplayer/analytics/DefaultAnalyticsCollector$MediaPeriodQueueTracker;->period:Landroidx/media3/common/Timeline$Period;

    .line 1051
    invoke-static {}, Lcom/google/common/collect/ImmutableList;->of()Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    iput-object v0, p0, Landroidx/media3/exoplayer/analytics/DefaultAnalyticsCollector$MediaPeriodQueueTracker;->mediaPeriodQueue:Lcom/google/common/collect/ImmutableList;

    .line 1052
    invoke-static {}, Lcom/google/common/collect/ImmutableMap;->of()Lcom/google/common/collect/ImmutableMap;

    move-result-object v0

    iput-object v0, p0, Landroidx/media3/exoplayer/analytics/DefaultAnalyticsCollector$MediaPeriodQueueTracker;->mediaPeriodTimelines:Lcom/google/common/collect/ImmutableMap;

    .line 1053
    return-void
.end method

.method static synthetic access$000(Landroidx/media3/exoplayer/analytics/DefaultAnalyticsCollector$MediaPeriodQueueTracker;)Lcom/google/common/collect/ImmutableList;
    .locals 1
    .param p0, "x0"    # Landroidx/media3/exoplayer/analytics/DefaultAnalyticsCollector$MediaPeriodQueueTracker;

    .line 1037
    iget-object v0, p0, Landroidx/media3/exoplayer/analytics/DefaultAnalyticsCollector$MediaPeriodQueueTracker;->mediaPeriodQueue:Lcom/google/common/collect/ImmutableList;

    return-object v0
.end method

.method private addTimelineForMediaPeriodId(Lcom/google/common/collect/ImmutableMap$Builder;Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;Landroidx/media3/common/Timeline;)V
    .locals 2
    .param p2, "mediaPeriodId"    # Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;
    .param p3, "preferredTimeline"    # Landroidx/media3/common/Timeline;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/ImmutableMap$Builder<",
            "Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;",
            "Landroidx/media3/common/Timeline;",
            ">;",
            "Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;",
            "Landroidx/media3/common/Timeline;",
            ")V"
        }
    .end annotation

    .line 1163
    .local p1, "mediaPeriodTimelinesBuilder":Lcom/google/common/collect/ImmutableMap$Builder;, "Lcom/google/common/collect/ImmutableMap$Builder<Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;Landroidx/media3/common/Timeline;>;"
    if-nez p2, :cond_0

    .line 1164
    return-void

    .line 1166
    :cond_0
    iget-object v0, p2, Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;->periodUid:Ljava/lang/Object;

    invoke-virtual {p3, v0}, Landroidx/media3/common/Timeline;->getIndexOfPeriod(Ljava/lang/Object;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    .line 1167
    invoke-virtual {p1, p2, p3}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    goto :goto_0

    .line 1169
    :cond_1
    iget-object v0, p0, Landroidx/media3/exoplayer/analytics/DefaultAnalyticsCollector$MediaPeriodQueueTracker;->mediaPeriodTimelines:Lcom/google/common/collect/ImmutableMap;

    invoke-virtual {v0, p2}, Lcom/google/common/collect/ImmutableMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media3/common/Timeline;

    .line 1170
    .local v0, "existingTimeline":Landroidx/media3/common/Timeline;
    if-eqz v0, :cond_2

    .line 1171
    invoke-virtual {p1, p2, v0}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    .line 1174
    .end local v0    # "existingTimeline":Landroidx/media3/common/Timeline;
    :cond_2
    :goto_0
    return-void
.end method

.method private static findCurrentPlayerMediaPeriodInQueue(Landroidx/media3/common/Player;Lcom/google/common/collect/ImmutableList;Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;Landroidx/media3/common/Timeline$Period;)Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;
    .locals 10
    .param p0, "player"    # Landroidx/media3/common/Player;
    .param p2, "playingMediaPeriod"    # Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;
    .param p3, "period"    # Landroidx/media3/common/Timeline$Period;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/media3/common/Player;",
            "Lcom/google/common/collect/ImmutableList<",
            "Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;",
            ">;",
            "Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;",
            "Landroidx/media3/common/Timeline$Period;",
            ")",
            "Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;"
        }
    .end annotation

    .line 1182
    .local p1, "mediaPeriodQueue":Lcom/google/common/collect/ImmutableList;, "Lcom/google/common/collect/ImmutableList<Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;>;"
    invoke-interface {p0}, Landroidx/media3/common/Player;->getCurrentTimeline()Landroidx/media3/common/Timeline;

    move-result-object v0

    .line 1183
    .local v0, "playerTimeline":Landroidx/media3/common/Timeline;
    invoke-interface {p0}, Landroidx/media3/common/Player;->getCurrentPeriodIndex()I

    move-result v1

    .line 1186
    .local v1, "playerPeriodIndex":I
    invoke-virtual {v0}, Landroidx/media3/common/Timeline;->isEmpty()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    move-object v2, v3

    goto :goto_0

    :cond_0
    invoke-virtual {v0, v1}, Landroidx/media3/common/Timeline;->getUidOfPeriod(I)Ljava/lang/Object;

    move-result-object v2

    :goto_0
    move-object v5, v2

    .line 1188
    .local v5, "playerPeriodUid":Ljava/lang/Object;
    invoke-interface {p0}, Landroidx/media3/common/Player;->isPlayingAd()Z

    move-result v2

    if-nez v2, :cond_2

    invoke-virtual {v0}, Landroidx/media3/common/Timeline;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_1

    .line 1192
    :cond_1
    nop

    .line 1191
    invoke-virtual {v0, v1, p3}, Landroidx/media3/common/Timeline;->getPeriod(ILandroidx/media3/common/Timeline$Period;)Landroidx/media3/common/Timeline$Period;

    move-result-object v2

    .line 1193
    invoke-interface {p0}, Landroidx/media3/common/Player;->getCurrentPosition()J

    move-result-wide v6

    invoke-static {v6, v7}, Landroidx/media3/common/util/Util;->msToUs(J)J

    move-result-wide v6

    invoke-virtual {p3}, Landroidx/media3/common/Timeline$Period;->getPositionInWindowUs()J

    move-result-wide v8

    sub-long/2addr v6, v8

    .line 1192
    invoke-virtual {v2, v6, v7}, Landroidx/media3/common/Timeline$Period;->getAdGroupIndexAfterPositionUs(J)I

    move-result v2

    move v9, v2

    goto :goto_2

    .line 1189
    :cond_2
    :goto_1
    const/4 v2, -0x1

    move v9, v2

    .line 1192
    :goto_2
    nop

    .line 1194
    .local v9, "playerNextAdGroupIndex":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_3
    invoke-virtual {p1}, Lcom/google/common/collect/ImmutableList;->size()I

    move-result v4

    if-ge v2, v4, :cond_4

    .line 1195
    invoke-virtual {p1, v2}, Lcom/google/common/collect/ImmutableList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    .line 1196
    .local v4, "mediaPeriodId":Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;
    nop

    .line 1199
    invoke-interface {p0}, Landroidx/media3/common/Player;->isPlayingAd()Z

    move-result v6

    .line 1200
    invoke-interface {p0}, Landroidx/media3/common/Player;->getCurrentAdGroupIndex()I

    move-result v7

    .line 1201
    invoke-interface {p0}, Landroidx/media3/common/Player;->getCurrentAdIndexInAdGroup()I

    move-result v8

    .line 1196
    invoke-static/range {v4 .. v9}, Landroidx/media3/exoplayer/analytics/DefaultAnalyticsCollector$MediaPeriodQueueTracker;->isMatchingMediaPeriod(Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;Ljava/lang/Object;ZIII)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 1203
    return-object v4

    .line 1194
    .end local v4    # "mediaPeriodId":Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 1206
    .end local v2    # "i":I
    :cond_4
    invoke-virtual {p1}, Lcom/google/common/collect/ImmutableList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_5

    if-eqz p2, :cond_5

    .line 1207
    nop

    .line 1210
    invoke-interface {p0}, Landroidx/media3/common/Player;->isPlayingAd()Z

    move-result v6

    .line 1211
    invoke-interface {p0}, Landroidx/media3/common/Player;->getCurrentAdGroupIndex()I

    move-result v7

    .line 1212
    invoke-interface {p0}, Landroidx/media3/common/Player;->getCurrentAdIndexInAdGroup()I

    move-result v8

    .line 1207
    move-object v4, p2

    .end local p2    # "playingMediaPeriod":Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;
    .local v4, "playingMediaPeriod":Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;
    invoke-static/range {v4 .. v9}, Landroidx/media3/exoplayer/analytics/DefaultAnalyticsCollector$MediaPeriodQueueTracker;->isMatchingMediaPeriod(Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;Ljava/lang/Object;ZIII)Z

    move-result p2

    if-eqz p2, :cond_6

    .line 1214
    return-object v4

    .line 1206
    .end local v4    # "playingMediaPeriod":Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;
    .restart local p2    # "playingMediaPeriod":Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;
    :cond_5
    move-object v4, p2

    .line 1217
    .end local p2    # "playingMediaPeriod":Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;
    .restart local v4    # "playingMediaPeriod":Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;
    :cond_6
    return-object v3
.end method

.method private static isMatchingMediaPeriod(Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;Ljava/lang/Object;ZIII)Z
    .locals 3
    .param p0, "mediaPeriodId"    # Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;
    .param p1, "playerPeriodUid"    # Ljava/lang/Object;
    .param p2, "isPlayingAd"    # Z
    .param p3, "playerAdGroupIndex"    # I
    .param p4, "playerAdIndexInAdGroup"    # I
    .param p5, "playerNextAdGroupIndex"    # I

    .line 1227
    iget-object v0, p0, Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;->periodUid:Ljava/lang/Object;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 1228
    return v1

    .line 1231
    :cond_0
    if-eqz p2, :cond_1

    iget v0, p0, Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;->adGroupIndex:I

    if-ne v0, p3, :cond_1

    iget v0, p0, Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;->adIndexInAdGroup:I

    if-eq v0, p4, :cond_2

    :cond_1
    if-nez p2, :cond_3

    iget v0, p0, Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;->adGroupIndex:I

    const/4 v2, -0x1

    if-ne v0, v2, :cond_3

    iget v0, p0, Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;->nextAdGroupIndex:I

    if-ne v0, p5, :cond_3

    :cond_2
    const/4 v1, 0x1

    :cond_3
    return v1
.end method

.method private updateMediaPeriodTimelines(Landroidx/media3/common/Timeline;)V
    .locals 4
    .param p1, "preferredTimeline"    # Landroidx/media3/common/Timeline;

    .line 1138
    invoke-static {}, Lcom/google/common/collect/ImmutableMap;->builder()Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v0

    .line 1139
    .local v0, "builder":Lcom/google/common/collect/ImmutableMap$Builder;, "Lcom/google/common/collect/ImmutableMap$Builder<Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;Landroidx/media3/common/Timeline;>;"
    iget-object v1, p0, Landroidx/media3/exoplayer/analytics/DefaultAnalyticsCollector$MediaPeriodQueueTracker;->mediaPeriodQueue:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v1}, Lcom/google/common/collect/ImmutableList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1140
    iget-object v1, p0, Landroidx/media3/exoplayer/analytics/DefaultAnalyticsCollector$MediaPeriodQueueTracker;->playingMediaPeriod:Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    invoke-direct {p0, v0, v1, p1}, Landroidx/media3/exoplayer/analytics/DefaultAnalyticsCollector$MediaPeriodQueueTracker;->addTimelineForMediaPeriodId(Lcom/google/common/collect/ImmutableMap$Builder;Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;Landroidx/media3/common/Timeline;)V

    .line 1141
    iget-object v1, p0, Landroidx/media3/exoplayer/analytics/DefaultAnalyticsCollector$MediaPeriodQueueTracker;->readingMediaPeriod:Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    iget-object v2, p0, Landroidx/media3/exoplayer/analytics/DefaultAnalyticsCollector$MediaPeriodQueueTracker;->playingMediaPeriod:Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    invoke-static {v1, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1142
    iget-object v1, p0, Landroidx/media3/exoplayer/analytics/DefaultAnalyticsCollector$MediaPeriodQueueTracker;->readingMediaPeriod:Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    invoke-direct {p0, v0, v1, p1}, Landroidx/media3/exoplayer/analytics/DefaultAnalyticsCollector$MediaPeriodQueueTracker;->addTimelineForMediaPeriodId(Lcom/google/common/collect/ImmutableMap$Builder;Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;Landroidx/media3/common/Timeline;)V

    .line 1144
    :cond_0
    iget-object v1, p0, Landroidx/media3/exoplayer/analytics/DefaultAnalyticsCollector$MediaPeriodQueueTracker;->currentPlayerMediaPeriod:Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    iget-object v2, p0, Landroidx/media3/exoplayer/analytics/DefaultAnalyticsCollector$MediaPeriodQueueTracker;->playingMediaPeriod:Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    invoke-static {v1, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, p0, Landroidx/media3/exoplayer/analytics/DefaultAnalyticsCollector$MediaPeriodQueueTracker;->currentPlayerMediaPeriod:Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    iget-object v2, p0, Landroidx/media3/exoplayer/analytics/DefaultAnalyticsCollector$MediaPeriodQueueTracker;->readingMediaPeriod:Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    .line 1145
    invoke-static {v1, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 1146
    iget-object v1, p0, Landroidx/media3/exoplayer/analytics/DefaultAnalyticsCollector$MediaPeriodQueueTracker;->currentPlayerMediaPeriod:Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    invoke-direct {p0, v0, v1, p1}, Landroidx/media3/exoplayer/analytics/DefaultAnalyticsCollector$MediaPeriodQueueTracker;->addTimelineForMediaPeriodId(Lcom/google/common/collect/ImmutableMap$Builder;Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;Landroidx/media3/common/Timeline;)V

    goto :goto_1

    .line 1149
    :cond_1
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Landroidx/media3/exoplayer/analytics/DefaultAnalyticsCollector$MediaPeriodQueueTracker;->mediaPeriodQueue:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v2}, Lcom/google/common/collect/ImmutableList;->size()I

    move-result v2

    .line 1152
    iget-object v3, p0, Landroidx/media3/exoplayer/analytics/DefaultAnalyticsCollector$MediaPeriodQueueTracker;->mediaPeriodQueue:Lcom/google/common/collect/ImmutableList;

    .line 1149
    if-ge v1, v2, :cond_2

    .line 1150
    invoke-virtual {v3, v1}, Lcom/google/common/collect/ImmutableList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    invoke-direct {p0, v0, v2, p1}, Landroidx/media3/exoplayer/analytics/DefaultAnalyticsCollector$MediaPeriodQueueTracker;->addTimelineForMediaPeriodId(Lcom/google/common/collect/ImmutableMap$Builder;Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;Landroidx/media3/common/Timeline;)V

    .line 1149
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1152
    .end local v1    # "i":I
    :cond_2
    iget-object v1, p0, Landroidx/media3/exoplayer/analytics/DefaultAnalyticsCollector$MediaPeriodQueueTracker;->currentPlayerMediaPeriod:Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    invoke-virtual {v3, v1}, Lcom/google/common/collect/ImmutableList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 1153
    iget-object v1, p0, Landroidx/media3/exoplayer/analytics/DefaultAnalyticsCollector$MediaPeriodQueueTracker;->currentPlayerMediaPeriod:Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    invoke-direct {p0, v0, v1, p1}, Landroidx/media3/exoplayer/analytics/DefaultAnalyticsCollector$MediaPeriodQueueTracker;->addTimelineForMediaPeriodId(Lcom/google/common/collect/ImmutableMap$Builder;Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;Landroidx/media3/common/Timeline;)V

    .line 1156
    :cond_3
    :goto_1
    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableMap$Builder;->buildOrThrow()Lcom/google/common/collect/ImmutableMap;

    move-result-object v1

    iput-object v1, p0, Landroidx/media3/exoplayer/analytics/DefaultAnalyticsCollector$MediaPeriodQueueTracker;->mediaPeriodTimelines:Lcom/google/common/collect/ImmutableMap;

    .line 1157
    return-void
.end method


# virtual methods
.method public getCurrentPlayerMediaPeriod()Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;
    .locals 1

    .line 1063
    iget-object v0, p0, Landroidx/media3/exoplayer/analytics/DefaultAnalyticsCollector$MediaPeriodQueueTracker;->currentPlayerMediaPeriod:Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    return-object v0
.end method

.method public getLoadingMediaPeriod()Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;
    .locals 1

    .line 1096
    iget-object v0, p0, Landroidx/media3/exoplayer/analytics/DefaultAnalyticsCollector$MediaPeriodQueueTracker;->mediaPeriodQueue:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroidx/media3/exoplayer/analytics/DefaultAnalyticsCollector$MediaPeriodQueueTracker;->mediaPeriodQueue:Lcom/google/common/collect/ImmutableList;

    invoke-static {v0}, Lcom/google/common/collect/Iterables;->getLast(Ljava/lang/Iterable;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    :goto_0
    return-object v0
.end method

.method public getMediaPeriodIdTimeline(Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;)Landroidx/media3/common/Timeline;
    .locals 1
    .param p1, "mediaPeriodId"    # Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    .line 1105
    iget-object v0, p0, Landroidx/media3/exoplayer/analytics/DefaultAnalyticsCollector$MediaPeriodQueueTracker;->mediaPeriodTimelines:Lcom/google/common/collect/ImmutableMap;

    invoke-virtual {v0, p1}, Lcom/google/common/collect/ImmutableMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media3/common/Timeline;

    return-object v0
.end method

.method public getPlayingMediaPeriod()Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;
    .locals 1

    .line 1074
    iget-object v0, p0, Landroidx/media3/exoplayer/analytics/DefaultAnalyticsCollector$MediaPeriodQueueTracker;->playingMediaPeriod:Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    return-object v0
.end method

.method public getReadingMediaPeriod()Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;
    .locals 1

    .line 1085
    iget-object v0, p0, Landroidx/media3/exoplayer/analytics/DefaultAnalyticsCollector$MediaPeriodQueueTracker;->readingMediaPeriod:Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    return-object v0
.end method

.method public onPositionDiscontinuity(Landroidx/media3/common/Player;)V
    .locals 3
    .param p1, "player"    # Landroidx/media3/common/Player;

    .line 1110
    iget-object v0, p0, Landroidx/media3/exoplayer/analytics/DefaultAnalyticsCollector$MediaPeriodQueueTracker;->mediaPeriodQueue:Lcom/google/common/collect/ImmutableList;

    iget-object v1, p0, Landroidx/media3/exoplayer/analytics/DefaultAnalyticsCollector$MediaPeriodQueueTracker;->playingMediaPeriod:Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    iget-object v2, p0, Landroidx/media3/exoplayer/analytics/DefaultAnalyticsCollector$MediaPeriodQueueTracker;->period:Landroidx/media3/common/Timeline$Period;

    .line 1111
    invoke-static {p1, v0, v1, v2}, Landroidx/media3/exoplayer/analytics/DefaultAnalyticsCollector$MediaPeriodQueueTracker;->findCurrentPlayerMediaPeriodInQueue(Landroidx/media3/common/Player;Lcom/google/common/collect/ImmutableList;Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;Landroidx/media3/common/Timeline$Period;)Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    move-result-object v0

    iput-object v0, p0, Landroidx/media3/exoplayer/analytics/DefaultAnalyticsCollector$MediaPeriodQueueTracker;->currentPlayerMediaPeriod:Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    .line 1112
    return-void
.end method

.method public onQueueUpdated(Ljava/util/List;Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;Landroidx/media3/common/Player;)V
    .locals 3
    .param p2, "readingPeriod"    # Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;
    .param p3, "player"    # Landroidx/media3/common/Player;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;",
            ">;",
            "Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;",
            "Landroidx/media3/common/Player;",
            ")V"
        }
    .end annotation

    .line 1124
    .local p1, "queue":Ljava/util/List;, "Ljava/util/List<Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;>;"
    invoke-static {p1}, Lcom/google/common/collect/ImmutableList;->copyOf(Ljava/util/Collection;)Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    iput-object v0, p0, Landroidx/media3/exoplayer/analytics/DefaultAnalyticsCollector$MediaPeriodQueueTracker;->mediaPeriodQueue:Lcom/google/common/collect/ImmutableList;

    .line 1125
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1126
    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    iput-object v0, p0, Landroidx/media3/exoplayer/analytics/DefaultAnalyticsCollector$MediaPeriodQueueTracker;->playingMediaPeriod:Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    .line 1127
    invoke-static {p2}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    iput-object v0, p0, Landroidx/media3/exoplayer/analytics/DefaultAnalyticsCollector$MediaPeriodQueueTracker;->readingMediaPeriod:Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    .line 1129
    :cond_0
    iget-object v0, p0, Landroidx/media3/exoplayer/analytics/DefaultAnalyticsCollector$MediaPeriodQueueTracker;->currentPlayerMediaPeriod:Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    if-nez v0, :cond_1

    .line 1130
    iget-object v0, p0, Landroidx/media3/exoplayer/analytics/DefaultAnalyticsCollector$MediaPeriodQueueTracker;->mediaPeriodQueue:Lcom/google/common/collect/ImmutableList;

    iget-object v1, p0, Landroidx/media3/exoplayer/analytics/DefaultAnalyticsCollector$MediaPeriodQueueTracker;->playingMediaPeriod:Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    iget-object v2, p0, Landroidx/media3/exoplayer/analytics/DefaultAnalyticsCollector$MediaPeriodQueueTracker;->period:Landroidx/media3/common/Timeline$Period;

    .line 1131
    invoke-static {p3, v0, v1, v2}, Landroidx/media3/exoplayer/analytics/DefaultAnalyticsCollector$MediaPeriodQueueTracker;->findCurrentPlayerMediaPeriodInQueue(Landroidx/media3/common/Player;Lcom/google/common/collect/ImmutableList;Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;Landroidx/media3/common/Timeline$Period;)Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    move-result-object v0

    iput-object v0, p0, Landroidx/media3/exoplayer/analytics/DefaultAnalyticsCollector$MediaPeriodQueueTracker;->currentPlayerMediaPeriod:Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    .line 1134
    :cond_1
    invoke-interface {p3}, Landroidx/media3/common/Player;->getCurrentTimeline()Landroidx/media3/common/Timeline;

    move-result-object v0

    invoke-direct {p0, v0}, Landroidx/media3/exoplayer/analytics/DefaultAnalyticsCollector$MediaPeriodQueueTracker;->updateMediaPeriodTimelines(Landroidx/media3/common/Timeline;)V

    .line 1135
    return-void
.end method

.method public onTimelineChanged(Landroidx/media3/common/Player;)V
    .locals 3
    .param p1, "player"    # Landroidx/media3/common/Player;

    .line 1116
    iget-object v0, p0, Landroidx/media3/exoplayer/analytics/DefaultAnalyticsCollector$MediaPeriodQueueTracker;->mediaPeriodQueue:Lcom/google/common/collect/ImmutableList;

    iget-object v1, p0, Landroidx/media3/exoplayer/analytics/DefaultAnalyticsCollector$MediaPeriodQueueTracker;->playingMediaPeriod:Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    iget-object v2, p0, Landroidx/media3/exoplayer/analytics/DefaultAnalyticsCollector$MediaPeriodQueueTracker;->period:Landroidx/media3/common/Timeline$Period;

    .line 1117
    invoke-static {p1, v0, v1, v2}, Landroidx/media3/exoplayer/analytics/DefaultAnalyticsCollector$MediaPeriodQueueTracker;->findCurrentPlayerMediaPeriodInQueue(Landroidx/media3/common/Player;Lcom/google/common/collect/ImmutableList;Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;Landroidx/media3/common/Timeline$Period;)Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    move-result-object v0

    iput-object v0, p0, Landroidx/media3/exoplayer/analytics/DefaultAnalyticsCollector$MediaPeriodQueueTracker;->currentPlayerMediaPeriod:Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    .line 1118
    invoke-interface {p1}, Landroidx/media3/common/Player;->getCurrentTimeline()Landroidx/media3/common/Timeline;

    move-result-object v0

    invoke-direct {p0, v0}, Landroidx/media3/exoplayer/analytics/DefaultAnalyticsCollector$MediaPeriodQueueTracker;->updateMediaPeriodTimelines(Landroidx/media3/common/Timeline;)V

    .line 1119
    return-void
.end method
