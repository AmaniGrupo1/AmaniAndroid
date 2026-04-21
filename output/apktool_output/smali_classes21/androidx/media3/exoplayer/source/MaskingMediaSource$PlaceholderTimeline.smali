.class public final Landroidx/media3/exoplayer/source/MaskingMediaSource$PlaceholderTimeline;
.super Landroidx/media3/common/Timeline;
.source "MaskingMediaSource.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media3/exoplayer/source/MaskingMediaSource;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "PlaceholderTimeline"
.end annotation


# instance fields
.field private final mediaItem:Landroidx/media3/common/MediaItem;


# direct methods
.method public constructor <init>(Landroidx/media3/common/MediaItem;)V
    .locals 0
    .param p1, "mediaItem"    # Landroidx/media3/common/MediaItem;

    .line 349
    invoke-direct {p0}, Landroidx/media3/common/Timeline;-><init>()V

    .line 350
    iput-object p1, p0, Landroidx/media3/exoplayer/source/MaskingMediaSource$PlaceholderTimeline;->mediaItem:Landroidx/media3/common/MediaItem;

    .line 351
    return-void
.end method


# virtual methods
.method public getIndexOfPeriod(Ljava/lang/Object;)I
    .locals 1
    .param p1, "uid"    # Ljava/lang/Object;

    .line 400
    sget-object v0, Landroidx/media3/exoplayer/source/MaskingMediaSource$MaskingTimeline;->MASKING_EXTERNAL_PERIOD_UID:Ljava/lang/Object;

    if-ne p1, v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const/4 v0, -0x1

    :goto_0
    return v0
.end method

.method public getPeriod(ILandroidx/media3/common/Timeline$Period;Z)Landroidx/media3/common/Timeline$Period;
    .locals 12
    .param p1, "periodIndex"    # I
    .param p2, "period"    # Landroidx/media3/common/Timeline$Period;
    .param p3, "setIds"    # Z

    .line 387
    nop

    .line 388
    const/4 v0, 0x0

    if-eqz p3, :cond_0

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    move-object v3, v1

    goto :goto_0

    :cond_0
    move-object v3, v0

    .line 389
    :goto_0
    if-eqz p3, :cond_1

    sget-object v0, Landroidx/media3/exoplayer/source/MaskingMediaSource$MaskingTimeline;->MASKING_EXTERNAL_PERIOD_UID:Ljava/lang/Object;

    :cond_1
    move-object v4, v0

    sget-object v10, Landroidx/media3/common/AdPlaybackState;->NONE:Landroidx/media3/common/AdPlaybackState;

    .line 387
    const/4 v5, 0x0

    const-wide v6, -0x7fffffffffffffffL    # -4.9E-324

    const-wide/16 v8, 0x0

    const/4 v11, 0x1

    move-object v2, p2

    .end local p2    # "period":Landroidx/media3/common/Timeline$Period;
    .local v2, "period":Landroidx/media3/common/Timeline$Period;
    invoke-virtual/range {v2 .. v11}, Landroidx/media3/common/Timeline$Period;->set(Ljava/lang/Object;Ljava/lang/Object;IJJLandroidx/media3/common/AdPlaybackState;Z)Landroidx/media3/common/Timeline$Period;

    .line 395
    return-object v2
.end method

.method public getPeriodCount()I
    .locals 1

    .line 382
    const/4 v0, 0x1

    return v0
.end method

.method public getUidOfPeriod(I)Ljava/lang/Object;
    .locals 1
    .param p1, "periodIndex"    # I

    .line 405
    sget-object v0, Landroidx/media3/exoplayer/source/MaskingMediaSource$MaskingTimeline;->MASKING_EXTERNAL_PERIOD_UID:Ljava/lang/Object;

    return-object v0
.end method

.method public getWindow(ILandroidx/media3/common/Timeline$Window;J)Landroidx/media3/common/Timeline$Window;
    .locals 21
    .param p1, "windowIndex"    # I
    .param p2, "window"    # Landroidx/media3/common/Timeline$Window;
    .param p3, "defaultPositionProjectionUs"    # J

    .line 360
    sget-object v1, Landroidx/media3/common/Timeline$Window;->SINGLE_WINDOW_UID:Ljava/lang/Object;

    move-object/from16 v0, p0

    iget-object v2, v0, Landroidx/media3/exoplayer/source/MaskingMediaSource$PlaceholderTimeline;->mediaItem:Landroidx/media3/common/MediaItem;

    const/16 v18, 0x0

    const-wide/16 v19, 0x0

    const/4 v3, 0x0

    const-wide v4, -0x7fffffffffffffffL    # -4.9E-324

    const-wide v6, -0x7fffffffffffffffL    # -4.9E-324

    const-wide v8, -0x7fffffffffffffffL    # -4.9E-324

    const/4 v10, 0x0

    const/4 v11, 0x1

    const/4 v12, 0x0

    const-wide/16 v13, 0x0

    const-wide v15, -0x7fffffffffffffffL    # -4.9E-324

    const/16 v17, 0x0

    move-object/from16 v0, p2

    invoke-virtual/range {v0 .. v20}, Landroidx/media3/common/Timeline$Window;->set(Ljava/lang/Object;Landroidx/media3/common/MediaItem;Ljava/lang/Object;JJJZZLandroidx/media3/common/MediaItem$LiveConfiguration;JJIIJ)Landroidx/media3/common/Timeline$Window;

    .line 376
    const/4 v1, 0x1

    iput-boolean v1, v0, Landroidx/media3/common/Timeline$Window;->isPlaceholder:Z

    .line 377
    return-object v0
.end method

.method public getWindowCount()I
    .locals 1

    .line 355
    const/4 v0, 0x1

    return v0
.end method
