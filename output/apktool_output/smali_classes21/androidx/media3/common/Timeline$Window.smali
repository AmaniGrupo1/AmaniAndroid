.class public final Landroidx/media3/common/Timeline$Window;
.super Ljava/lang/Object;
.source "Timeline.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media3/common/Timeline;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Window"
.end annotation


# static fields
.field private static final FAKE_WINDOW_UID:Ljava/lang/Object;

.field private static final FIELD_DEFAULT_POSITION_US:Ljava/lang/String;

.field private static final FIELD_DURATION_US:Ljava/lang/String;

.field private static final FIELD_ELAPSED_REALTIME_EPOCH_OFFSET_MS:Ljava/lang/String;

.field private static final FIELD_FIRST_PERIOD_INDEX:Ljava/lang/String;

.field private static final FIELD_IS_DYNAMIC:Ljava/lang/String;

.field private static final FIELD_IS_PLACEHOLDER:Ljava/lang/String;

.field private static final FIELD_IS_SEEKABLE:Ljava/lang/String;

.field private static final FIELD_LAST_PERIOD_INDEX:Ljava/lang/String;

.field private static final FIELD_LIVE_CONFIGURATION:Ljava/lang/String;

.field private static final FIELD_MEDIA_ITEM:Ljava/lang/String;

.field private static final FIELD_POSITION_IN_FIRST_PERIOD_US:Ljava/lang/String;

.field private static final FIELD_PRESENTATION_START_TIME_MS:Ljava/lang/String;

.field private static final FIELD_WINDOW_START_TIME_MS:Ljava/lang/String;

.field private static final PLACEHOLDER_MEDIA_ITEM:Landroidx/media3/common/MediaItem;

.field public static final SINGLE_WINDOW_UID:Ljava/lang/Object;


# instance fields
.field public defaultPositionUs:J

.field public durationUs:J

.field public elapsedRealtimeEpochOffsetMs:J

.field public firstPeriodIndex:I

.field public isDynamic:Z

.field public isPlaceholder:Z

.field public isSeekable:Z

.field public lastPeriodIndex:I

.field public liveConfiguration:Landroidx/media3/common/MediaItem$LiveConfiguration;

.field public manifest:Ljava/lang/Object;

.field public mediaItem:Landroidx/media3/common/MediaItem;

.field public positionInFirstPeriodUs:J

.field public presentationStartTimeMs:J

.field public tag:Ljava/lang/Object;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public uid:Ljava/lang/Object;

.field public windowStartTimeMs:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 163
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroidx/media3/common/Timeline$Window;->SINGLE_WINDOW_UID:Ljava/lang/Object;

    .line 165
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroidx/media3/common/Timeline$Window;->FAKE_WINDOW_UID:Ljava/lang/Object;

    .line 167
    new-instance v0, Landroidx/media3/common/MediaItem$Builder;

    invoke-direct {v0}, Landroidx/media3/common/MediaItem$Builder;-><init>()V

    .line 169
    const-string v1, "androidx.media3.common.Timeline"

    invoke-virtual {v0, v1}, Landroidx/media3/common/MediaItem$Builder;->setMediaId(Ljava/lang/String;)Landroidx/media3/common/MediaItem$Builder;

    move-result-object v0

    sget-object v1, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    .line 170
    invoke-virtual {v0, v1}, Landroidx/media3/common/MediaItem$Builder;->setUri(Landroid/net/Uri;)Landroidx/media3/common/MediaItem$Builder;

    move-result-object v0

    .line 171
    invoke-virtual {v0}, Landroidx/media3/common/MediaItem$Builder;->build()Landroidx/media3/common/MediaItem;

    move-result-object v0

    sput-object v0, Landroidx/media3/common/Timeline$Window;->PLACEHOLDER_MEDIA_ITEM:Landroidx/media3/common/MediaItem;

    .line 426
    const/4 v0, 0x1

    invoke-static {v0}, Landroidx/media3/common/util/Util;->intToStringMaxRadix(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/media3/common/Timeline$Window;->FIELD_MEDIA_ITEM:Ljava/lang/String;

    .line 427
    const/4 v0, 0x2

    invoke-static {v0}, Landroidx/media3/common/util/Util;->intToStringMaxRadix(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/media3/common/Timeline$Window;->FIELD_PRESENTATION_START_TIME_MS:Ljava/lang/String;

    .line 428
    const/4 v0, 0x3

    invoke-static {v0}, Landroidx/media3/common/util/Util;->intToStringMaxRadix(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/media3/common/Timeline$Window;->FIELD_WINDOW_START_TIME_MS:Ljava/lang/String;

    .line 429
    nop

    .line 430
    const/4 v0, 0x4

    invoke-static {v0}, Landroidx/media3/common/util/Util;->intToStringMaxRadix(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/media3/common/Timeline$Window;->FIELD_ELAPSED_REALTIME_EPOCH_OFFSET_MS:Ljava/lang/String;

    .line 431
    const/4 v0, 0x5

    invoke-static {v0}, Landroidx/media3/common/util/Util;->intToStringMaxRadix(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/media3/common/Timeline$Window;->FIELD_IS_SEEKABLE:Ljava/lang/String;

    .line 432
    const/4 v0, 0x6

    invoke-static {v0}, Landroidx/media3/common/util/Util;->intToStringMaxRadix(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/media3/common/Timeline$Window;->FIELD_IS_DYNAMIC:Ljava/lang/String;

    .line 433
    const/4 v0, 0x7

    invoke-static {v0}, Landroidx/media3/common/util/Util;->intToStringMaxRadix(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/media3/common/Timeline$Window;->FIELD_LIVE_CONFIGURATION:Ljava/lang/String;

    .line 434
    const/16 v0, 0x8

    invoke-static {v0}, Landroidx/media3/common/util/Util;->intToStringMaxRadix(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/media3/common/Timeline$Window;->FIELD_IS_PLACEHOLDER:Ljava/lang/String;

    .line 435
    const/16 v0, 0x9

    invoke-static {v0}, Landroidx/media3/common/util/Util;->intToStringMaxRadix(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/media3/common/Timeline$Window;->FIELD_DEFAULT_POSITION_US:Ljava/lang/String;

    .line 436
    const/16 v0, 0xa

    invoke-static {v0}, Landroidx/media3/common/util/Util;->intToStringMaxRadix(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/media3/common/Timeline$Window;->FIELD_DURATION_US:Ljava/lang/String;

    .line 437
    const/16 v0, 0xb

    invoke-static {v0}, Landroidx/media3/common/util/Util;->intToStringMaxRadix(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/media3/common/Timeline$Window;->FIELD_FIRST_PERIOD_INDEX:Ljava/lang/String;

    .line 438
    const/16 v0, 0xc

    invoke-static {v0}, Landroidx/media3/common/util/Util;->intToStringMaxRadix(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/media3/common/Timeline$Window;->FIELD_LAST_PERIOD_INDEX:Ljava/lang/String;

    .line 439
    const/16 v0, 0xd

    invoke-static {v0}, Landroidx/media3/common/util/Util;->intToStringMaxRadix(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/media3/common/Timeline$Window;->FIELD_POSITION_IN_FIRST_PERIOD_US:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 268
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 269
    sget-object v0, Landroidx/media3/common/Timeline$Window;->SINGLE_WINDOW_UID:Ljava/lang/Object;

    iput-object v0, p0, Landroidx/media3/common/Timeline$Window;->uid:Ljava/lang/Object;

    .line 270
    sget-object v0, Landroidx/media3/common/Timeline$Window;->PLACEHOLDER_MEDIA_ITEM:Landroidx/media3/common/MediaItem;

    iput-object v0, p0, Landroidx/media3/common/Timeline$Window;->mediaItem:Landroidx/media3/common/MediaItem;

    .line 271
    return-void
.end method

.method public static fromBundle(Landroid/os/Bundle;)Landroidx/media3/common/Timeline$Window;
    .locals 1
    .param p0, "bundle"    # Landroid/os/Bundle;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 513
    const/16 v0, 0x9

    invoke-static {p0, v0}, Landroidx/media3/common/Timeline$Window;->fromBundle(Landroid/os/Bundle;I)Landroidx/media3/common/Timeline$Window;

    move-result-object v0

    return-object v0
.end method

.method public static fromBundle(Landroid/os/Bundle;I)Landroidx/media3/common/Timeline$Window;
    .locals 30
    .param p0, "bundle"    # Landroid/os/Bundle;
    .param p1, "interfaceVersion"    # I

    .line 525
    move-object/from16 v0, p0

    sget-object v1, Landroidx/media3/common/Timeline$Window;->FIELD_MEDIA_ITEM:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    .line 528
    .local v1, "mediaItemBundle":Landroid/os/Bundle;
    if-eqz v1, :cond_0

    .line 529
    move/from16 v2, p1

    invoke-static {v1, v2}, Landroidx/media3/common/MediaItem;->fromBundle(Landroid/os/Bundle;I)Landroidx/media3/common/MediaItem;

    move-result-object v3

    goto :goto_0

    .line 530
    :cond_0
    move/from16 v2, p1

    sget-object v3, Landroidx/media3/common/MediaItem;->EMPTY:Landroidx/media3/common/MediaItem;

    :goto_0
    move-object v6, v3

    .line 531
    .local v6, "mediaItem":Landroidx/media3/common/MediaItem;
    sget-object v3, Landroidx/media3/common/Timeline$Window;->FIELD_PRESENTATION_START_TIME_MS:Ljava/lang/String;

    .line 532
    const-wide v4, -0x7fffffffffffffffL    # -4.9E-324

    invoke-virtual {v0, v3, v4, v5}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v8

    .line 533
    .local v8, "presentationStartTimeMs":J
    sget-object v3, Landroidx/media3/common/Timeline$Window;->FIELD_WINDOW_START_TIME_MS:Ljava/lang/String;

    .line 534
    invoke-virtual {v0, v3, v4, v5}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v10

    .line 535
    .local v10, "windowStartTimeMs":J
    sget-object v3, Landroidx/media3/common/Timeline$Window;->FIELD_ELAPSED_REALTIME_EPOCH_OFFSET_MS:Ljava/lang/String;

    .line 536
    invoke-virtual {v0, v3, v4, v5}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v12

    .line 537
    .local v12, "elapsedRealtimeEpochOffsetMs":J
    sget-object v3, Landroidx/media3/common/Timeline$Window;->FIELD_IS_SEEKABLE:Ljava/lang/String;

    const/4 v7, 0x0

    invoke-virtual {v0, v3, v7}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v14

    .line 538
    .local v14, "isSeekable":Z
    sget-object v3, Landroidx/media3/common/Timeline$Window;->FIELD_IS_DYNAMIC:Ljava/lang/String;

    invoke-virtual {v0, v3, v7}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v15

    .line 539
    .local v15, "isDynamic":Z
    sget-object v3, Landroidx/media3/common/Timeline$Window;->FIELD_LIVE_CONFIGURATION:Ljava/lang/String;

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v3

    .line 542
    .local v3, "liveConfigurationBundle":Landroid/os/Bundle;
    if-eqz v3, :cond_1

    .line 543
    invoke-static {v3}, Landroidx/media3/common/MediaItem$LiveConfiguration;->fromBundle(Landroid/os/Bundle;)Landroidx/media3/common/MediaItem$LiveConfiguration;

    move-result-object v16

    goto :goto_1

    .line 544
    :cond_1
    const/16 v16, 0x0

    :goto_1
    nop

    .line 545
    .local v16, "liveConfiguration":Landroidx/media3/common/MediaItem$LiveConfiguration;
    sget-object v4, Landroidx/media3/common/Timeline$Window;->FIELD_IS_PLACEHOLDER:Ljava/lang/String;

    invoke-virtual {v0, v4, v7}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    .line 546
    .local v4, "isPlaceHolder":Z
    sget-object v5, Landroidx/media3/common/Timeline$Window;->FIELD_DEFAULT_POSITION_US:Ljava/lang/String;

    move-wide/from16 v19, v8

    .end local v8    # "presentationStartTimeMs":J
    .local v19, "presentationStartTimeMs":J
    const-wide/16 v7, 0x0

    invoke-virtual {v0, v5, v7, v8}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v21

    .line 547
    .local v21, "defaultPositionUs":J
    sget-object v5, Landroidx/media3/common/Timeline$Window;->FIELD_DURATION_US:Ljava/lang/String;

    move-wide/from16 v23, v10

    const-wide v9, -0x7fffffffffffffffL    # -4.9E-324

    .end local v10    # "windowStartTimeMs":J
    .local v23, "windowStartTimeMs":J
    invoke-virtual {v0, v5, v9, v10}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v9

    .line 548
    .local v9, "durationUs":J
    sget-object v5, Landroidx/media3/common/Timeline$Window;->FIELD_FIRST_PERIOD_INDEX:Ljava/lang/String;

    const/4 v11, 0x0

    invoke-virtual {v0, v5, v11}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v5

    .line 549
    .local v5, "firstPeriodIndex":I
    sget-object v7, Landroidx/media3/common/Timeline$Window;->FIELD_LAST_PERIOD_INDEX:Ljava/lang/String;

    invoke-virtual {v0, v7, v11}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v7

    .line 550
    .local v7, "lastPeriodIndex":I
    sget-object v8, Landroidx/media3/common/Timeline$Window;->FIELD_POSITION_IN_FIRST_PERIOD_US:Ljava/lang/String;

    .line 551
    move-object/from16 v25, v1

    const-wide/16 v1, 0x0

    .end local v1    # "mediaItemBundle":Landroid/os/Bundle;
    .local v25, "mediaItemBundle":Landroid/os/Bundle;
    invoke-virtual {v0, v8, v1, v2}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v1

    .line 553
    .local v1, "positionInFirstPeriodUs":J
    new-instance v8, Landroidx/media3/common/Timeline$Window;

    invoke-direct {v8}, Landroidx/media3/common/Timeline$Window;-><init>()V

    .line 554
    .local v8, "window":Landroidx/media3/common/Timeline$Window;
    move-wide/from16 v17, v21

    move/from16 v21, v5

    .end local v5    # "firstPeriodIndex":I
    .local v17, "defaultPositionUs":J
    .local v21, "firstPeriodIndex":I
    sget-object v5, Landroidx/media3/common/Timeline$Window;->FAKE_WINDOW_UID:Ljava/lang/Object;

    move/from16 v22, v7

    .end local v7    # "lastPeriodIndex":I
    .local v22, "lastPeriodIndex":I
    const/4 v7, 0x0

    move-wide/from16 v26, v1

    move v1, v4

    move-object v4, v8

    move-wide/from16 v28, v23

    move-wide/from16 v23, v26

    move-wide/from16 v26, v19

    move-wide/from16 v19, v9

    move-wide/from16 v8, v26

    move-wide/from16 v10, v28

    .end local v9    # "durationUs":J
    .local v1, "isPlaceHolder":Z
    .local v4, "window":Landroidx/media3/common/Timeline$Window;
    .local v8, "presentationStartTimeMs":J
    .restart local v10    # "windowStartTimeMs":J
    .local v19, "durationUs":J
    .local v23, "positionInFirstPeriodUs":J
    invoke-virtual/range {v4 .. v24}, Landroidx/media3/common/Timeline$Window;->set(Ljava/lang/Object;Landroidx/media3/common/MediaItem;Ljava/lang/Object;JJJZZLandroidx/media3/common/MediaItem$LiveConfiguration;JJIIJ)Landroidx/media3/common/Timeline$Window;

    .line 569
    move-object v2, v4

    move-wide/from16 v4, v19

    move-wide/from16 v19, v8

    move-wide/from16 v7, v23

    move-wide/from16 v23, v10

    .end local v8    # "presentationStartTimeMs":J
    .end local v10    # "windowStartTimeMs":J
    .local v2, "window":Landroidx/media3/common/Timeline$Window;
    .local v4, "durationUs":J
    .local v7, "positionInFirstPeriodUs":J
    .local v19, "presentationStartTimeMs":J
    .local v23, "windowStartTimeMs":J
    iput-boolean v1, v2, Landroidx/media3/common/Timeline$Window;->isPlaceholder:Z

    .line 570
    return-object v2
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 7
    .param p1, "obj"    # Ljava/lang/Object;

    .line 378
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    .line 379
    return v0

    .line 381
    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    goto/16 :goto_1

    .line 384
    :cond_1
    move-object v2, p1

    check-cast v2, Landroidx/media3/common/Timeline$Window;

    .line 385
    .local v2, "that":Landroidx/media3/common/Timeline$Window;
    iget-object v3, p0, Landroidx/media3/common/Timeline$Window;->uid:Ljava/lang/Object;

    iget-object v4, v2, Landroidx/media3/common/Timeline$Window;->uid:Ljava/lang/Object;

    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Landroidx/media3/common/Timeline$Window;->mediaItem:Landroidx/media3/common/MediaItem;

    iget-object v4, v2, Landroidx/media3/common/Timeline$Window;->mediaItem:Landroidx/media3/common/MediaItem;

    .line 386
    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Landroidx/media3/common/Timeline$Window;->manifest:Ljava/lang/Object;

    iget-object v4, v2, Landroidx/media3/common/Timeline$Window;->manifest:Ljava/lang/Object;

    .line 387
    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Landroidx/media3/common/Timeline$Window;->liveConfiguration:Landroidx/media3/common/MediaItem$LiveConfiguration;

    iget-object v4, v2, Landroidx/media3/common/Timeline$Window;->liveConfiguration:Landroidx/media3/common/MediaItem$LiveConfiguration;

    .line 388
    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-wide v3, p0, Landroidx/media3/common/Timeline$Window;->presentationStartTimeMs:J

    iget-wide v5, v2, Landroidx/media3/common/Timeline$Window;->presentationStartTimeMs:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_2

    iget-wide v3, p0, Landroidx/media3/common/Timeline$Window;->windowStartTimeMs:J

    iget-wide v5, v2, Landroidx/media3/common/Timeline$Window;->windowStartTimeMs:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_2

    iget-wide v3, p0, Landroidx/media3/common/Timeline$Window;->elapsedRealtimeEpochOffsetMs:J

    iget-wide v5, v2, Landroidx/media3/common/Timeline$Window;->elapsedRealtimeEpochOffsetMs:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_2

    iget-boolean v3, p0, Landroidx/media3/common/Timeline$Window;->isSeekable:Z

    iget-boolean v4, v2, Landroidx/media3/common/Timeline$Window;->isSeekable:Z

    if-ne v3, v4, :cond_2

    iget-boolean v3, p0, Landroidx/media3/common/Timeline$Window;->isDynamic:Z

    iget-boolean v4, v2, Landroidx/media3/common/Timeline$Window;->isDynamic:Z

    if-ne v3, v4, :cond_2

    iget-boolean v3, p0, Landroidx/media3/common/Timeline$Window;->isPlaceholder:Z

    iget-boolean v4, v2, Landroidx/media3/common/Timeline$Window;->isPlaceholder:Z

    if-ne v3, v4, :cond_2

    iget-wide v3, p0, Landroidx/media3/common/Timeline$Window;->defaultPositionUs:J

    iget-wide v5, v2, Landroidx/media3/common/Timeline$Window;->defaultPositionUs:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_2

    iget-wide v3, p0, Landroidx/media3/common/Timeline$Window;->durationUs:J

    iget-wide v5, v2, Landroidx/media3/common/Timeline$Window;->durationUs:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_2

    iget v3, p0, Landroidx/media3/common/Timeline$Window;->firstPeriodIndex:I

    iget v4, v2, Landroidx/media3/common/Timeline$Window;->firstPeriodIndex:I

    if-ne v3, v4, :cond_2

    iget v3, p0, Landroidx/media3/common/Timeline$Window;->lastPeriodIndex:I

    iget v4, v2, Landroidx/media3/common/Timeline$Window;->lastPeriodIndex:I

    if-ne v3, v4, :cond_2

    iget-wide v3, p0, Landroidx/media3/common/Timeline$Window;->positionInFirstPeriodUs:J

    iget-wide v5, v2, Landroidx/media3/common/Timeline$Window;->positionInFirstPeriodUs:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_2

    goto :goto_0

    :cond_2
    move v0, v1

    .line 385
    :goto_0
    return v0

    .line 382
    .end local v2    # "that":Landroidx/media3/common/Timeline$Window;
    :cond_3
    :goto_1
    return v1
.end method

.method public getCurrentUnixTimeMs()J
    .locals 2

    .line 367
    iget-wide v0, p0, Landroidx/media3/common/Timeline$Window;->elapsedRealtimeEpochOffsetMs:J

    invoke-static {v0, v1}, Landroidx/media3/common/util/Util;->getNowUnixTimeMs(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public getDefaultPositionMs()J
    .locals 2

    .line 321
    iget-wide v0, p0, Landroidx/media3/common/Timeline$Window;->defaultPositionUs:J

    invoke-static {v0, v1}, Landroidx/media3/common/util/Util;->usToMs(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public getDefaultPositionUs()J
    .locals 2

    .line 331
    iget-wide v0, p0, Landroidx/media3/common/Timeline$Window;->defaultPositionUs:J

    return-wide v0
.end method

.method public getDurationMs()J
    .locals 2

    .line 336
    iget-wide v0, p0, Landroidx/media3/common/Timeline$Window;->durationUs:J

    invoke-static {v0, v1}, Landroidx/media3/common/util/Util;->usToMs(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public getDurationUs()J
    .locals 2

    .line 341
    iget-wide v0, p0, Landroidx/media3/common/Timeline$Window;->durationUs:J

    return-wide v0
.end method

.method public getPositionInFirstPeriodMs()J
    .locals 2

    .line 349
    iget-wide v0, p0, Landroidx/media3/common/Timeline$Window;->positionInFirstPeriodUs:J

    invoke-static {v0, v1}, Landroidx/media3/common/util/Util;->usToMs(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public getPositionInFirstPeriodUs()J
    .locals 2

    .line 357
    iget-wide v0, p0, Landroidx/media3/common/Timeline$Window;->positionInFirstPeriodUs:J

    return-wide v0
.end method

.method public hashCode()I
    .locals 7

    .line 405
    const/4 v0, 0x7

    .line 406
    .local v0, "result":I
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Landroidx/media3/common/Timeline$Window;->uid:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    add-int/2addr v1, v2

    .line 407
    .end local v0    # "result":I
    .local v1, "result":I
    mul-int/lit8 v0, v1, 0x1f

    iget-object v2, p0, Landroidx/media3/common/Timeline$Window;->mediaItem:Landroidx/media3/common/MediaItem;

    invoke-virtual {v2}, Landroidx/media3/common/MediaItem;->hashCode()I

    move-result v2

    add-int/2addr v0, v2

    .line 408
    .end local v1    # "result":I
    .restart local v0    # "result":I
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Landroidx/media3/common/Timeline$Window;->manifest:Ljava/lang/Object;

    const/4 v3, 0x0

    if-nez v2, :cond_0

    move v2, v3

    goto :goto_0

    :cond_0
    iget-object v2, p0, Landroidx/media3/common/Timeline$Window;->manifest:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_0
    add-int/2addr v1, v2

    .line 409
    .end local v0    # "result":I
    .restart local v1    # "result":I
    mul-int/lit8 v0, v1, 0x1f

    iget-object v2, p0, Landroidx/media3/common/Timeline$Window;->liveConfiguration:Landroidx/media3/common/MediaItem$LiveConfiguration;

    if-nez v2, :cond_1

    goto :goto_1

    :cond_1
    iget-object v2, p0, Landroidx/media3/common/Timeline$Window;->liveConfiguration:Landroidx/media3/common/MediaItem$LiveConfiguration;

    invoke-virtual {v2}, Landroidx/media3/common/MediaItem$LiveConfiguration;->hashCode()I

    move-result v3

    :goto_1
    add-int/2addr v0, v3

    .line 410
    .end local v1    # "result":I
    .restart local v0    # "result":I
    mul-int/lit8 v1, v0, 0x1f

    iget-wide v2, p0, Landroidx/media3/common/Timeline$Window;->presentationStartTimeMs:J

    iget-wide v4, p0, Landroidx/media3/common/Timeline$Window;->presentationStartTimeMs:J

    const/16 v6, 0x20

    ushr-long/2addr v4, v6

    xor-long/2addr v2, v4

    long-to-int v2, v2

    add-int/2addr v1, v2

    .line 411
    .end local v0    # "result":I
    .restart local v1    # "result":I
    mul-int/lit8 v0, v1, 0x1f

    iget-wide v2, p0, Landroidx/media3/common/Timeline$Window;->windowStartTimeMs:J

    iget-wide v4, p0, Landroidx/media3/common/Timeline$Window;->windowStartTimeMs:J

    ushr-long/2addr v4, v6

    xor-long/2addr v2, v4

    long-to-int v2, v2

    add-int/2addr v0, v2

    .line 412
    .end local v1    # "result":I
    .restart local v0    # "result":I
    mul-int/lit8 v1, v0, 0x1f

    iget-wide v2, p0, Landroidx/media3/common/Timeline$Window;->elapsedRealtimeEpochOffsetMs:J

    iget-wide v4, p0, Landroidx/media3/common/Timeline$Window;->elapsedRealtimeEpochOffsetMs:J

    ushr-long/2addr v4, v6

    xor-long/2addr v2, v4

    long-to-int v2, v2

    add-int/2addr v1, v2

    .line 415
    .end local v0    # "result":I
    .restart local v1    # "result":I
    mul-int/lit8 v0, v1, 0x1f

    iget-boolean v2, p0, Landroidx/media3/common/Timeline$Window;->isSeekable:Z

    add-int/2addr v0, v2

    .line 416
    .end local v1    # "result":I
    .restart local v0    # "result":I
    mul-int/lit8 v1, v0, 0x1f

    iget-boolean v2, p0, Landroidx/media3/common/Timeline$Window;->isDynamic:Z

    add-int/2addr v1, v2

    .line 417
    .end local v0    # "result":I
    .restart local v1    # "result":I
    mul-int/lit8 v0, v1, 0x1f

    iget-boolean v2, p0, Landroidx/media3/common/Timeline$Window;->isPlaceholder:Z

    add-int/2addr v0, v2

    .line 418
    .end local v1    # "result":I
    .restart local v0    # "result":I
    mul-int/lit8 v1, v0, 0x1f

    iget-wide v2, p0, Landroidx/media3/common/Timeline$Window;->defaultPositionUs:J

    iget-wide v4, p0, Landroidx/media3/common/Timeline$Window;->defaultPositionUs:J

    ushr-long/2addr v4, v6

    xor-long/2addr v2, v4

    long-to-int v2, v2

    add-int/2addr v1, v2

    .line 419
    .end local v0    # "result":I
    .restart local v1    # "result":I
    mul-int/lit8 v0, v1, 0x1f

    iget-wide v2, p0, Landroidx/media3/common/Timeline$Window;->durationUs:J

    iget-wide v4, p0, Landroidx/media3/common/Timeline$Window;->durationUs:J

    ushr-long/2addr v4, v6

    xor-long/2addr v2, v4

    long-to-int v2, v2

    add-int/2addr v0, v2

    .line 420
    .end local v1    # "result":I
    .restart local v0    # "result":I
    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Landroidx/media3/common/Timeline$Window;->firstPeriodIndex:I

    add-int/2addr v1, v2

    .line 421
    .end local v0    # "result":I
    .restart local v1    # "result":I
    mul-int/lit8 v0, v1, 0x1f

    iget v2, p0, Landroidx/media3/common/Timeline$Window;->lastPeriodIndex:I

    add-int/2addr v0, v2

    .line 422
    .end local v1    # "result":I
    .restart local v0    # "result":I
    mul-int/lit8 v1, v0, 0x1f

    iget-wide v2, p0, Landroidx/media3/common/Timeline$Window;->positionInFirstPeriodUs:J

    iget-wide v4, p0, Landroidx/media3/common/Timeline$Window;->positionInFirstPeriodUs:J

    ushr-long/2addr v4, v6

    xor-long/2addr v2, v4

    long-to-int v2, v2

    add-int/2addr v1, v2

    .line 423
    .end local v0    # "result":I
    .restart local v1    # "result":I
    return v1
.end method

.method public isLive()Z
    .locals 1

    .line 372
    iget-object v0, p0, Landroidx/media3/common/Timeline$Window;->liveConfiguration:Landroidx/media3/common/MediaItem$LiveConfiguration;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public set(Ljava/lang/Object;Landroidx/media3/common/MediaItem;Ljava/lang/Object;JJJZZLandroidx/media3/common/MediaItem$LiveConfiguration;JJIIJ)Landroidx/media3/common/Timeline$Window;
    .locals 16
    .param p1, "uid"    # Ljava/lang/Object;
    .param p2, "mediaItem"    # Landroidx/media3/common/MediaItem;
    .param p3, "manifest"    # Ljava/lang/Object;
    .param p4, "presentationStartTimeMs"    # J
    .param p6, "windowStartTimeMs"    # J
    .param p8, "elapsedRealtimeEpochOffsetMs"    # J
    .param p10, "isSeekable"    # Z
    .param p11, "isDynamic"    # Z
    .param p12, "liveConfiguration"    # Landroidx/media3/common/MediaItem$LiveConfiguration;
    .param p13, "defaultPositionUs"    # J
    .param p15, "durationUs"    # J
    .param p17, "firstPeriodIndex"    # I
    .param p18, "lastPeriodIndex"    # I
    .param p19, "positionInFirstPeriodUs"    # J

    .line 292
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p1

    iput-object v2, v0, Landroidx/media3/common/Timeline$Window;->uid:Ljava/lang/Object;

    .line 293
    if-eqz v1, :cond_0

    move-object v3, v1

    goto :goto_0

    :cond_0
    sget-object v3, Landroidx/media3/common/Timeline$Window;->PLACEHOLDER_MEDIA_ITEM:Landroidx/media3/common/MediaItem;

    :goto_0
    iput-object v3, v0, Landroidx/media3/common/Timeline$Window;->mediaItem:Landroidx/media3/common/MediaItem;

    .line 294
    nop

    .line 295
    if-eqz v1, :cond_1

    iget-object v3, v1, Landroidx/media3/common/MediaItem;->localConfiguration:Landroidx/media3/common/MediaItem$LocalConfiguration;

    if-eqz v3, :cond_1

    .line 296
    iget-object v3, v1, Landroidx/media3/common/MediaItem;->localConfiguration:Landroidx/media3/common/MediaItem$LocalConfiguration;

    iget-object v3, v3, Landroidx/media3/common/MediaItem$LocalConfiguration;->tag:Ljava/lang/Object;

    goto :goto_1

    .line 297
    :cond_1
    const/4 v3, 0x0

    :goto_1
    iput-object v3, v0, Landroidx/media3/common/Timeline$Window;->tag:Ljava/lang/Object;

    .line 298
    move-object/from16 v3, p3

    iput-object v3, v0, Landroidx/media3/common/Timeline$Window;->manifest:Ljava/lang/Object;

    .line 299
    move-wide/from16 v4, p4

    iput-wide v4, v0, Landroidx/media3/common/Timeline$Window;->presentationStartTimeMs:J

    .line 300
    move-wide/from16 v6, p6

    iput-wide v6, v0, Landroidx/media3/common/Timeline$Window;->windowStartTimeMs:J

    .line 301
    move-wide/from16 v8, p8

    iput-wide v8, v0, Landroidx/media3/common/Timeline$Window;->elapsedRealtimeEpochOffsetMs:J

    .line 302
    move/from16 v10, p10

    iput-boolean v10, v0, Landroidx/media3/common/Timeline$Window;->isSeekable:Z

    .line 303
    move/from16 v11, p11

    iput-boolean v11, v0, Landroidx/media3/common/Timeline$Window;->isDynamic:Z

    .line 304
    move-object/from16 v12, p12

    iput-object v12, v0, Landroidx/media3/common/Timeline$Window;->liveConfiguration:Landroidx/media3/common/MediaItem$LiveConfiguration;

    .line 305
    move-wide/from16 v13, p13

    iput-wide v13, v0, Landroidx/media3/common/Timeline$Window;->defaultPositionUs:J

    .line 306
    move-wide/from16 v1, p15

    iput-wide v1, v0, Landroidx/media3/common/Timeline$Window;->durationUs:J

    .line 307
    move/from16 v15, p17

    iput v15, v0, Landroidx/media3/common/Timeline$Window;->firstPeriodIndex:I

    .line 308
    move/from16 v1, p18

    iput v1, v0, Landroidx/media3/common/Timeline$Window;->lastPeriodIndex:I

    .line 309
    move-wide/from16 v1, p19

    iput-wide v1, v0, Landroidx/media3/common/Timeline$Window;->positionInFirstPeriodUs:J

    .line 310
    const/4 v1, 0x0

    iput-boolean v1, v0, Landroidx/media3/common/Timeline$Window;->isPlaceholder:Z

    .line 311
    return-object v0
.end method

.method public toBundle()Landroid/os/Bundle;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 447
    const/16 v0, 0x9

    invoke-virtual {p0, v0}, Landroidx/media3/common/Timeline$Window;->toBundle(I)Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method public toBundle(I)Landroid/os/Bundle;
    .locals 9
    .param p1, "interfaceVersion"    # I

    .line 462
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 463
    .local v0, "bundle":Landroid/os/Bundle;
    sget-object v1, Landroidx/media3/common/MediaItem;->EMPTY:Landroidx/media3/common/MediaItem;

    iget-object v2, p0, Landroidx/media3/common/Timeline$Window;->mediaItem:Landroidx/media3/common/MediaItem;

    invoke-virtual {v1, v2}, Landroidx/media3/common/MediaItem;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 464
    sget-object v1, Landroidx/media3/common/Timeline$Window;->FIELD_MEDIA_ITEM:Ljava/lang/String;

    iget-object v2, p0, Landroidx/media3/common/Timeline$Window;->mediaItem:Landroidx/media3/common/MediaItem;

    invoke-virtual {v2, p1}, Landroidx/media3/common/MediaItem;->toBundle(I)Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 466
    :cond_0
    iget-wide v1, p0, Landroidx/media3/common/Timeline$Window;->presentationStartTimeMs:J

    const-wide v3, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v1, v1, v3

    if-eqz v1, :cond_1

    .line 467
    sget-object v1, Landroidx/media3/common/Timeline$Window;->FIELD_PRESENTATION_START_TIME_MS:Ljava/lang/String;

    iget-wide v5, p0, Landroidx/media3/common/Timeline$Window;->presentationStartTimeMs:J

    invoke-virtual {v0, v1, v5, v6}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 469
    :cond_1
    iget-wide v1, p0, Landroidx/media3/common/Timeline$Window;->windowStartTimeMs:J

    cmp-long v1, v1, v3

    if-eqz v1, :cond_2

    .line 470
    sget-object v1, Landroidx/media3/common/Timeline$Window;->FIELD_WINDOW_START_TIME_MS:Ljava/lang/String;

    iget-wide v5, p0, Landroidx/media3/common/Timeline$Window;->windowStartTimeMs:J

    invoke-virtual {v0, v1, v5, v6}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 472
    :cond_2
    iget-wide v1, p0, Landroidx/media3/common/Timeline$Window;->elapsedRealtimeEpochOffsetMs:J

    cmp-long v1, v1, v3

    if-eqz v1, :cond_3

    .line 473
    sget-object v1, Landroidx/media3/common/Timeline$Window;->FIELD_ELAPSED_REALTIME_EPOCH_OFFSET_MS:Ljava/lang/String;

    iget-wide v5, p0, Landroidx/media3/common/Timeline$Window;->elapsedRealtimeEpochOffsetMs:J

    invoke-virtual {v0, v1, v5, v6}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 475
    :cond_3
    iget-boolean v1, p0, Landroidx/media3/common/Timeline$Window;->isSeekable:Z

    if-eqz v1, :cond_4

    .line 476
    sget-object v1, Landroidx/media3/common/Timeline$Window;->FIELD_IS_SEEKABLE:Ljava/lang/String;

    iget-boolean v2, p0, Landroidx/media3/common/Timeline$Window;->isSeekable:Z

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 478
    :cond_4
    iget-boolean v1, p0, Landroidx/media3/common/Timeline$Window;->isDynamic:Z

    if-eqz v1, :cond_5

    .line 479
    sget-object v1, Landroidx/media3/common/Timeline$Window;->FIELD_IS_DYNAMIC:Ljava/lang/String;

    iget-boolean v2, p0, Landroidx/media3/common/Timeline$Window;->isDynamic:Z

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 482
    :cond_5
    iget-object v1, p0, Landroidx/media3/common/Timeline$Window;->liveConfiguration:Landroidx/media3/common/MediaItem$LiveConfiguration;

    .line 483
    .local v1, "liveConfiguration":Landroidx/media3/common/MediaItem$LiveConfiguration;
    if-eqz v1, :cond_6

    .line 484
    sget-object v2, Landroidx/media3/common/Timeline$Window;->FIELD_LIVE_CONFIGURATION:Ljava/lang/String;

    invoke-virtual {v1}, Landroidx/media3/common/MediaItem$LiveConfiguration;->toBundle()Landroid/os/Bundle;

    move-result-object v5

    invoke-virtual {v0, v2, v5}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 486
    :cond_6
    iget-boolean v2, p0, Landroidx/media3/common/Timeline$Window;->isPlaceholder:Z

    if-eqz v2, :cond_7

    .line 487
    sget-object v2, Landroidx/media3/common/Timeline$Window;->FIELD_IS_PLACEHOLDER:Ljava/lang/String;

    iget-boolean v5, p0, Landroidx/media3/common/Timeline$Window;->isPlaceholder:Z

    invoke-virtual {v0, v2, v5}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 489
    :cond_7
    iget-wide v5, p0, Landroidx/media3/common/Timeline$Window;->defaultPositionUs:J

    const-wide/16 v7, 0x0

    cmp-long v2, v5, v7

    if-eqz v2, :cond_8

    .line 490
    sget-object v2, Landroidx/media3/common/Timeline$Window;->FIELD_DEFAULT_POSITION_US:Ljava/lang/String;

    iget-wide v5, p0, Landroidx/media3/common/Timeline$Window;->defaultPositionUs:J

    invoke-virtual {v0, v2, v5, v6}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 492
    :cond_8
    iget-wide v5, p0, Landroidx/media3/common/Timeline$Window;->durationUs:J

    cmp-long v2, v5, v3

    if-eqz v2, :cond_9

    .line 493
    sget-object v2, Landroidx/media3/common/Timeline$Window;->FIELD_DURATION_US:Ljava/lang/String;

    iget-wide v3, p0, Landroidx/media3/common/Timeline$Window;->durationUs:J

    invoke-virtual {v0, v2, v3, v4}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 495
    :cond_9
    iget v2, p0, Landroidx/media3/common/Timeline$Window;->firstPeriodIndex:I

    if-eqz v2, :cond_a

    .line 496
    sget-object v2, Landroidx/media3/common/Timeline$Window;->FIELD_FIRST_PERIOD_INDEX:Ljava/lang/String;

    iget v3, p0, Landroidx/media3/common/Timeline$Window;->firstPeriodIndex:I

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 498
    :cond_a
    iget v2, p0, Landroidx/media3/common/Timeline$Window;->lastPeriodIndex:I

    if-eqz v2, :cond_b

    .line 499
    sget-object v2, Landroidx/media3/common/Timeline$Window;->FIELD_LAST_PERIOD_INDEX:Ljava/lang/String;

    iget v3, p0, Landroidx/media3/common/Timeline$Window;->lastPeriodIndex:I

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 501
    :cond_b
    iget-wide v2, p0, Landroidx/media3/common/Timeline$Window;->positionInFirstPeriodUs:J

    cmp-long v2, v2, v7

    if-eqz v2, :cond_c

    .line 502
    sget-object v2, Landroidx/media3/common/Timeline$Window;->FIELD_POSITION_IN_FIRST_PERIOD_US:Ljava/lang/String;

    iget-wide v3, p0, Landroidx/media3/common/Timeline$Window;->positionInFirstPeriodUs:J

    invoke-virtual {v0, v2, v3, v4}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 504
    :cond_c
    return-object v0
.end method
