.class public final Landroidx/media3/exoplayer/source/SinglePeriodTimeline;
.super Landroidx/media3/common/Timeline;
.source "SinglePeriodTimeline.java"


# static fields
.field private static final MEDIA_ITEM:Landroidx/media3/common/MediaItem;

.field private static final UID:Ljava/lang/Object;


# instance fields
.field private final elapsedRealtimeEpochOffsetMs:J

.field private final isDynamic:Z

.field private final isSeekable:Z

.field private final liveConfiguration:Landroidx/media3/common/MediaItem$LiveConfiguration;

.field private final manifest:Ljava/lang/Object;

.field private final mediaItem:Landroidx/media3/common/MediaItem;

.field private final periodDurationUs:J

.field private final presentationStartTimeMs:J

.field private final suppressPositionProjection:Z

.field private final windowDefaultStartPositionUs:J

.field private final windowDurationUs:J

.field private final windowPositionInPeriodUs:J

.field private final windowStartTimeMs:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 32
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroidx/media3/exoplayer/source/SinglePeriodTimeline;->UID:Ljava/lang/Object;

    .line 33
    new-instance v0, Landroidx/media3/common/MediaItem$Builder;

    invoke-direct {v0}, Landroidx/media3/common/MediaItem$Builder;-><init>()V

    .line 34
    const-string v1, "SinglePeriodTimeline"

    invoke-virtual {v0, v1}, Landroidx/media3/common/MediaItem$Builder;->setMediaId(Ljava/lang/String;)Landroidx/media3/common/MediaItem$Builder;

    move-result-object v0

    sget-object v1, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Landroidx/media3/common/MediaItem$Builder;->setUri(Landroid/net/Uri;)Landroidx/media3/common/MediaItem$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/media3/common/MediaItem$Builder;->build()Landroidx/media3/common/MediaItem;

    move-result-object v0

    sput-object v0, Landroidx/media3/exoplayer/source/SinglePeriodTimeline;->MEDIA_ITEM:Landroidx/media3/common/MediaItem;

    .line 33
    return-void
.end method

.method public constructor <init>(JJJJJJJZZLjava/lang/Object;Landroidx/media3/common/MediaItem;Landroidx/media3/common/MediaItem$LiveConfiguration;)V
    .locals 21
    .param p1, "presentationStartTimeMs"    # J
    .param p3, "windowStartTimeMs"    # J
    .param p5, "elapsedRealtimeEpochOffsetMs"    # J
    .param p7, "periodDurationUs"    # J
    .param p9, "windowDurationUs"    # J
    .param p11, "windowPositionInPeriodUs"    # J
    .param p13, "windowDefaultStartPositionUs"    # J
    .param p15, "isSeekable"    # Z
    .param p16, "isDynamic"    # Z
    .param p17, "manifest"    # Ljava/lang/Object;
    .param p18, "mediaItem"    # Landroidx/media3/common/MediaItem;
    .param p19, "liveConfiguration"    # Landroidx/media3/common/MediaItem$LiveConfiguration;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 233
    const/16 v17, 0x0

    move-object/from16 v0, p0

    move-wide/from16 v1, p1

    move-wide/from16 v3, p3

    move-wide/from16 v5, p5

    move-wide/from16 v7, p7

    move-wide/from16 v9, p9

    move-wide/from16 v11, p11

    move-wide/from16 v13, p13

    move/from16 v15, p15

    move/from16 v16, p16

    move-object/from16 v18, p17

    move-object/from16 v19, p18

    move-object/from16 v20, p19

    invoke-direct/range {v0 .. v20}, Landroidx/media3/exoplayer/source/SinglePeriodTimeline;-><init>(JJJJJJJZZZLjava/lang/Object;Landroidx/media3/common/MediaItem;Landroidx/media3/common/MediaItem$LiveConfiguration;)V

    .line 247
    return-void
.end method

.method public constructor <init>(JJJJJJJZZZLjava/lang/Object;Landroidx/media3/common/MediaItem;Landroidx/media3/common/MediaItem$LiveConfiguration;)V
    .locals 17
    .param p1, "presentationStartTimeMs"    # J
    .param p3, "windowStartTimeMs"    # J
    .param p5, "elapsedRealtimeEpochOffsetMs"    # J
    .param p7, "periodDurationUs"    # J
    .param p9, "windowDurationUs"    # J
    .param p11, "windowPositionInPeriodUs"    # J
    .param p13, "windowDefaultStartPositionUs"    # J
    .param p15, "isSeekable"    # Z
    .param p16, "isDynamic"    # Z
    .param p17, "suppressPositionProjection"    # Z
    .param p18, "manifest"    # Ljava/lang/Object;
    .param p19, "mediaItem"    # Landroidx/media3/common/MediaItem;
    .param p20, "liveConfiguration"    # Landroidx/media3/common/MediaItem$LiveConfiguration;

    .line 289
    move-object/from16 v0, p0

    invoke-direct {v0}, Landroidx/media3/common/Timeline;-><init>()V

    .line 290
    move-wide/from16 v1, p1

    iput-wide v1, v0, Landroidx/media3/exoplayer/source/SinglePeriodTimeline;->presentationStartTimeMs:J

    .line 291
    move-wide/from16 v3, p3

    iput-wide v3, v0, Landroidx/media3/exoplayer/source/SinglePeriodTimeline;->windowStartTimeMs:J

    .line 292
    move-wide/from16 v5, p5

    iput-wide v5, v0, Landroidx/media3/exoplayer/source/SinglePeriodTimeline;->elapsedRealtimeEpochOffsetMs:J

    .line 293
    move-wide/from16 v7, p7

    iput-wide v7, v0, Landroidx/media3/exoplayer/source/SinglePeriodTimeline;->periodDurationUs:J

    .line 294
    move-wide/from16 v9, p9

    iput-wide v9, v0, Landroidx/media3/exoplayer/source/SinglePeriodTimeline;->windowDurationUs:J

    .line 295
    move-wide/from16 v11, p11

    iput-wide v11, v0, Landroidx/media3/exoplayer/source/SinglePeriodTimeline;->windowPositionInPeriodUs:J

    .line 296
    move-wide/from16 v13, p13

    iput-wide v13, v0, Landroidx/media3/exoplayer/source/SinglePeriodTimeline;->windowDefaultStartPositionUs:J

    .line 297
    move/from16 v15, p15

    iput-boolean v15, v0, Landroidx/media3/exoplayer/source/SinglePeriodTimeline;->isSeekable:Z

    .line 298
    move/from16 v1, p16

    iput-boolean v1, v0, Landroidx/media3/exoplayer/source/SinglePeriodTimeline;->isDynamic:Z

    .line 299
    move/from16 v2, p17

    iput-boolean v2, v0, Landroidx/media3/exoplayer/source/SinglePeriodTimeline;->suppressPositionProjection:Z

    .line 300
    move-object/from16 v1, p18

    iput-object v1, v0, Landroidx/media3/exoplayer/source/SinglePeriodTimeline;->manifest:Ljava/lang/Object;

    .line 301
    invoke-static/range {p19 .. p19}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v16

    move-object/from16 v1, v16

    check-cast v1, Landroidx/media3/common/MediaItem;

    iput-object v1, v0, Landroidx/media3/exoplayer/source/SinglePeriodTimeline;->mediaItem:Landroidx/media3/common/MediaItem;

    .line 302
    move-object/from16 v1, p20

    iput-object v1, v0, Landroidx/media3/exoplayer/source/SinglePeriodTimeline;->liveConfiguration:Landroidx/media3/common/MediaItem$LiveConfiguration;

    .line 303
    return-void
.end method

.method public constructor <init>(JJJJJJJZZZLjava/lang/Object;Ljava/lang/Object;)V
    .locals 23
    .param p1, "presentationStartTimeMs"    # J
    .param p3, "windowStartTimeMs"    # J
    .param p5, "elapsedRealtimeEpochOffsetMs"    # J
    .param p7, "periodDurationUs"    # J
    .param p9, "windowDurationUs"    # J
    .param p11, "windowPositionInPeriodUs"    # J
    .param p13, "windowDefaultStartPositionUs"    # J
    .param p15, "isSeekable"    # Z
    .param p16, "isDynamic"    # Z
    .param p17, "isLive"    # Z
    .param p18, "manifest"    # Ljava/lang/Object;
    .param p19, "tag"    # Ljava/lang/Object;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 199
    sget-object v0, Landroidx/media3/exoplayer/source/SinglePeriodTimeline;->MEDIA_ITEM:Landroidx/media3/common/MediaItem;

    .line 211
    invoke-virtual {v0}, Landroidx/media3/common/MediaItem;->buildUpon()Landroidx/media3/common/MediaItem$Builder;

    move-result-object v0

    move-object/from16 v1, p19

    invoke-virtual {v0, v1}, Landroidx/media3/common/MediaItem$Builder;->setTag(Ljava/lang/Object;)Landroidx/media3/common/MediaItem$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/media3/common/MediaItem$Builder;->build()Landroidx/media3/common/MediaItem;

    move-result-object v21

    .line 212
    if-eqz p17, :cond_0

    sget-object v0, Landroidx/media3/exoplayer/source/SinglePeriodTimeline;->MEDIA_ITEM:Landroidx/media3/common/MediaItem;

    iget-object v0, v0, Landroidx/media3/common/MediaItem;->liveConfiguration:Landroidx/media3/common/MediaItem$LiveConfiguration;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    move-object/from16 v22, v0

    .line 199
    const/16 v19, 0x0

    move-object/from16 v2, p0

    move-wide/from16 v3, p1

    move-wide/from16 v5, p3

    move-wide/from16 v7, p5

    move-wide/from16 v9, p7

    move-wide/from16 v11, p9

    move-wide/from16 v13, p11

    move-wide/from16 v15, p13

    move/from16 v17, p15

    move/from16 v18, p16

    move-object/from16 v20, p18

    invoke-direct/range {v2 .. v22}, Landroidx/media3/exoplayer/source/SinglePeriodTimeline;-><init>(JJJJJJJZZZLjava/lang/Object;Landroidx/media3/common/MediaItem;Landroidx/media3/common/MediaItem$LiveConfiguration;)V

    .line 213
    return-void
.end method

.method public constructor <init>(JJJJZZZLjava/lang/Object;Landroidx/media3/common/MediaItem;)V
    .locals 21
    .param p1, "periodDurationUs"    # J
    .param p3, "windowDurationUs"    # J
    .param p5, "windowPositionInPeriodUs"    # J
    .param p7, "windowDefaultStartPositionUs"    # J
    .param p9, "isSeekable"    # Z
    .param p10, "isDynamic"    # Z
    .param p11, "useLiveConfiguration"    # Z
    .param p12, "manifest"    # Ljava/lang/Object;
    .param p13, "mediaItem"    # Landroidx/media3/common/MediaItem;

    .line 165
    nop

    .line 178
    if-eqz p11, :cond_0

    move-object/from16 v0, p13

    iget-object v1, v0, Landroidx/media3/common/MediaItem;->liveConfiguration:Landroidx/media3/common/MediaItem$LiveConfiguration;

    goto :goto_0

    :cond_0
    move-object/from16 v0, p13

    const/4 v1, 0x0

    :goto_0
    move-object/from16 v20, v1

    .line 165
    const-wide v1, -0x7fffffffffffffffL    # -4.9E-324

    const-wide v3, -0x7fffffffffffffffL    # -4.9E-324

    const-wide v5, -0x7fffffffffffffffL    # -4.9E-324

    const/16 v17, 0x0

    move-wide/from16 v7, p1

    move-wide/from16 v9, p3

    move-wide/from16 v11, p5

    move-wide/from16 v13, p7

    move/from16 v15, p9

    move/from16 v16, p10

    move-object/from16 v18, p12

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    invoke-direct/range {v0 .. v20}, Landroidx/media3/exoplayer/source/SinglePeriodTimeline;-><init>(JJJJJJJZZZLjava/lang/Object;Landroidx/media3/common/MediaItem;Landroidx/media3/common/MediaItem$LiveConfiguration;)V

    .line 179
    return-void
.end method

.method public constructor <init>(JJJJZZZLjava/lang/Object;Ljava/lang/Object;)V
    .locals 20
    .param p1, "periodDurationUs"    # J
    .param p3, "windowDurationUs"    # J
    .param p5, "windowPositionInPeriodUs"    # J
    .param p7, "windowDefaultStartPositionUs"    # J
    .param p9, "isSeekable"    # Z
    .param p10, "isDynamic"    # Z
    .param p11, "isLive"    # Z
    .param p12, "manifest"    # Ljava/lang/Object;
    .param p13, "tag"    # Ljava/lang/Object;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 123
    const-wide v3, -0x7fffffffffffffffL    # -4.9E-324

    const-wide v5, -0x7fffffffffffffffL    # -4.9E-324

    const-wide v1, -0x7fffffffffffffffL    # -4.9E-324

    move-object/from16 v0, p0

    move-wide/from16 v7, p1

    move-wide/from16 v9, p3

    move-wide/from16 v11, p5

    move-wide/from16 v13, p7

    move/from16 v15, p9

    move/from16 v16, p10

    move/from16 v17, p11

    move-object/from16 v18, p12

    move-object/from16 v19, p13

    invoke-direct/range {v0 .. v19}, Landroidx/media3/exoplayer/source/SinglePeriodTimeline;-><init>(JJJJJJJZZZLjava/lang/Object;Ljava/lang/Object;)V

    .line 136
    return-void
.end method

.method public constructor <init>(JZZZLjava/lang/Object;Landroidx/media3/common/MediaItem;)V
    .locals 14
    .param p1, "durationUs"    # J
    .param p3, "isSeekable"    # Z
    .param p4, "isDynamic"    # Z
    .param p5, "useLiveConfiguration"    # Z
    .param p6, "manifest"    # Ljava/lang/Object;
    .param p7, "mediaItem"    # Landroidx/media3/common/MediaItem;

    .line 94
    const-wide/16 v5, 0x0

    const-wide/16 v7, 0x0

    move-wide v3, p1

    move-object v0, p0

    move-wide v1, p1

    move/from16 v9, p3

    move/from16 v10, p4

    move/from16 v11, p5

    move-object/from16 v12, p6

    move-object/from16 v13, p7

    invoke-direct/range {v0 .. v13}, Landroidx/media3/exoplayer/source/SinglePeriodTimeline;-><init>(JJJJZZZLjava/lang/Object;Landroidx/media3/common/MediaItem;)V

    .line 104
    return-void
.end method

.method public constructor <init>(JZZZLjava/lang/Object;Ljava/lang/Object;)V
    .locals 14
    .param p1, "durationUs"    # J
    .param p3, "isSeekable"    # Z
    .param p4, "isDynamic"    # Z
    .param p5, "isLive"    # Z
    .param p6, "manifest"    # Ljava/lang/Object;
    .param p7, "tag"    # Ljava/lang/Object;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 64
    const-wide/16 v5, 0x0

    const-wide/16 v7, 0x0

    move-wide v3, p1

    move-object v0, p0

    move-wide v1, p1

    move/from16 v9, p3

    move/from16 v10, p4

    move/from16 v11, p5

    move-object/from16 v12, p6

    move-object/from16 v13, p7

    invoke-direct/range {v0 .. v13}, Landroidx/media3/exoplayer/source/SinglePeriodTimeline;-><init>(JJJJZZZLjava/lang/Object;Ljava/lang/Object;)V

    .line 74
    return-void
.end method


# virtual methods
.method public getIndexOfPeriod(Ljava/lang/Object;)I
    .locals 1
    .param p1, "uid"    # Ljava/lang/Object;

    .line 358
    sget-object v0, Landroidx/media3/exoplayer/source/SinglePeriodTimeline;->UID:Ljava/lang/Object;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const/4 v0, -0x1

    :goto_0
    return v0
.end method

.method public getPeriod(ILandroidx/media3/common/Timeline$Period;Z)Landroidx/media3/common/Timeline$Period;
    .locals 9
    .param p1, "periodIndex"    # I
    .param p2, "period"    # Landroidx/media3/common/Timeline$Period;
    .param p3, "setIds"    # Z

    .line 351
    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/google/common/base/Preconditions;->checkElementIndex(II)I

    .line 352
    if-eqz p3, :cond_0

    sget-object v0, Landroidx/media3/exoplayer/source/SinglePeriodTimeline;->UID:Ljava/lang/Object;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    move-object v3, v0

    .line 353
    .local v3, "uid":Ljava/lang/Object;
    iget-wide v5, p0, Landroidx/media3/exoplayer/source/SinglePeriodTimeline;->periodDurationUs:J

    iget-wide v0, p0, Landroidx/media3/exoplayer/source/SinglePeriodTimeline;->windowPositionInPeriodUs:J

    neg-long v7, v0

    const/4 v2, 0x0

    const/4 v4, 0x0

    move-object v1, p2

    .end local p2    # "period":Landroidx/media3/common/Timeline$Period;
    .local v1, "period":Landroidx/media3/common/Timeline$Period;
    invoke-virtual/range {v1 .. v8}, Landroidx/media3/common/Timeline$Period;->set(Ljava/lang/Object;Ljava/lang/Object;IJJ)Landroidx/media3/common/Timeline$Period;

    move-result-object p2

    return-object p2
.end method

.method public getPeriodCount()I
    .locals 1

    .line 346
    const/4 v0, 0x1

    return v0
.end method

.method public getUidOfPeriod(I)Ljava/lang/Object;
    .locals 1
    .param p1, "periodIndex"    # I

    .line 363
    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/google/common/base/Preconditions;->checkElementIndex(II)I

    .line 364
    sget-object v0, Landroidx/media3/exoplayer/source/SinglePeriodTimeline;->UID:Ljava/lang/Object;

    return-object v0
.end method

.method public getWindow(ILandroidx/media3/common/Timeline$Window;J)Landroidx/media3/common/Timeline$Window;
    .locals 26
    .param p1, "windowIndex"    # I
    .param p2, "window"    # Landroidx/media3/common/Timeline$Window;
    .param p3, "defaultPositionProjectionUs"    # J

    .line 313
    move-object/from16 v0, p0

    const/4 v1, 0x1

    move/from16 v2, p1

    invoke-static {v2, v1}, Lcom/google/common/base/Preconditions;->checkElementIndex(II)I

    .line 314
    iget-wide v3, v0, Landroidx/media3/exoplayer/source/SinglePeriodTimeline;->windowDefaultStartPositionUs:J

    .line 315
    .local v3, "windowDefaultStartPositionUs":J
    iget-boolean v1, v0, Landroidx/media3/exoplayer/source/SinglePeriodTimeline;->isDynamic:Z

    if-eqz v1, :cond_2

    iget-boolean v1, v0, Landroidx/media3/exoplayer/source/SinglePeriodTimeline;->suppressPositionProjection:Z

    if-nez v1, :cond_2

    const-wide/16 v5, 0x0

    cmp-long v1, p3, v5

    if-eqz v1, :cond_2

    .line 316
    iget-wide v5, v0, Landroidx/media3/exoplayer/source/SinglePeriodTimeline;->windowDurationUs:J

    const-wide v7, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v1, v5, v7

    if-nez v1, :cond_0

    .line 318
    const-wide v3, -0x7fffffffffffffffL    # -4.9E-324

    move-wide/from16 v18, v3

    goto :goto_0

    .line 320
    :cond_0
    add-long v3, v3, p3

    .line 321
    iget-wide v5, v0, Landroidx/media3/exoplayer/source/SinglePeriodTimeline;->windowDurationUs:J

    cmp-long v1, v3, v5

    if-lez v1, :cond_1

    .line 323
    const-wide v3, -0x7fffffffffffffffL    # -4.9E-324

    move-wide/from16 v18, v3

    goto :goto_0

    .line 321
    :cond_1
    move-wide/from16 v18, v3

    goto :goto_0

    .line 327
    :cond_2
    move-wide/from16 v18, v3

    .end local v3    # "windowDefaultStartPositionUs":J
    .local v18, "windowDefaultStartPositionUs":J
    :goto_0
    sget-object v6, Landroidx/media3/common/Timeline$Window;->SINGLE_WINDOW_UID:Ljava/lang/Object;

    iget-object v7, v0, Landroidx/media3/exoplayer/source/SinglePeriodTimeline;->mediaItem:Landroidx/media3/common/MediaItem;

    iget-object v8, v0, Landroidx/media3/exoplayer/source/SinglePeriodTimeline;->manifest:Ljava/lang/Object;

    iget-wide v9, v0, Landroidx/media3/exoplayer/source/SinglePeriodTimeline;->presentationStartTimeMs:J

    iget-wide v11, v0, Landroidx/media3/exoplayer/source/SinglePeriodTimeline;->windowStartTimeMs:J

    iget-wide v13, v0, Landroidx/media3/exoplayer/source/SinglePeriodTimeline;->elapsedRealtimeEpochOffsetMs:J

    iget-boolean v15, v0, Landroidx/media3/exoplayer/source/SinglePeriodTimeline;->isSeekable:Z

    iget-boolean v1, v0, Landroidx/media3/exoplayer/source/SinglePeriodTimeline;->isDynamic:Z

    iget-object v3, v0, Landroidx/media3/exoplayer/source/SinglePeriodTimeline;->liveConfiguration:Landroidx/media3/common/MediaItem$LiveConfiguration;

    iget-wide v4, v0, Landroidx/media3/exoplayer/source/SinglePeriodTimeline;->windowDurationUs:J

    const/16 v23, 0x0

    move/from16 v16, v1

    iget-wide v1, v0, Landroidx/media3/exoplayer/source/SinglePeriodTimeline;->windowPositionInPeriodUs:J

    const/16 v22, 0x0

    move-wide/from16 v24, v1

    move-object/from16 v17, v3

    move-wide/from16 v20, v4

    move-object/from16 v5, p2

    invoke-virtual/range {v5 .. v25}, Landroidx/media3/common/Timeline$Window;->set(Ljava/lang/Object;Landroidx/media3/common/MediaItem;Ljava/lang/Object;JJJZZLandroidx/media3/common/MediaItem$LiveConfiguration;JJIIJ)Landroidx/media3/common/Timeline$Window;

    move-result-object v1

    return-object v1
.end method

.method public getWindowCount()I
    .locals 1

    .line 307
    const/4 v0, 0x1

    return v0
.end method
