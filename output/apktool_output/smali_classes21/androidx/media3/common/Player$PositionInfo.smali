.class public final Landroidx/media3/common/Player$PositionInfo;
.super Ljava/lang/Object;
.source "Player.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media3/common/Player;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "PositionInfo"
.end annotation


# static fields
.field private static final FIELD_AD_GROUP_INDEX:Ljava/lang/String;

.field private static final FIELD_AD_INDEX_IN_AD_GROUP:Ljava/lang/String;

.field static final FIELD_CONTENT_POSITION_MS:Ljava/lang/String;

.field private static final FIELD_MEDIA_ITEM:Ljava/lang/String;

.field static final FIELD_MEDIA_ITEM_INDEX:Ljava/lang/String;

.field static final FIELD_PERIOD_INDEX:Ljava/lang/String;

.field static final FIELD_POSITION_MS:Ljava/lang/String;


# instance fields
.field public final adGroupIndex:I

.field public final adIndexInAdGroup:I

.field public final contentPositionMs:J

.field public final mediaItem:Landroidx/media3/common/MediaItem;

.field public final mediaItemIndex:I

.field public final periodIndex:I

.field public final periodUid:Ljava/lang/Object;

.field public final positionMs:J

.field public final windowIndex:I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public final windowUid:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 428
    const/4 v0, 0x0

    invoke-static {v0}, Landroidx/media3/common/util/Util;->intToStringMaxRadix(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/media3/common/Player$PositionInfo;->FIELD_MEDIA_ITEM_INDEX:Ljava/lang/String;

    .line 429
    const/4 v0, 0x1

    invoke-static {v0}, Landroidx/media3/common/util/Util;->intToStringMaxRadix(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/media3/common/Player$PositionInfo;->FIELD_MEDIA_ITEM:Ljava/lang/String;

    .line 430
    const/4 v0, 0x2

    invoke-static {v0}, Landroidx/media3/common/util/Util;->intToStringMaxRadix(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/media3/common/Player$PositionInfo;->FIELD_PERIOD_INDEX:Ljava/lang/String;

    .line 431
    const/4 v0, 0x3

    invoke-static {v0}, Landroidx/media3/common/util/Util;->intToStringMaxRadix(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/media3/common/Player$PositionInfo;->FIELD_POSITION_MS:Ljava/lang/String;

    .line 432
    const/4 v0, 0x4

    invoke-static {v0}, Landroidx/media3/common/util/Util;->intToStringMaxRadix(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/media3/common/Player$PositionInfo;->FIELD_CONTENT_POSITION_MS:Ljava/lang/String;

    .line 433
    const/4 v0, 0x5

    invoke-static {v0}, Landroidx/media3/common/util/Util;->intToStringMaxRadix(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/media3/common/Player$PositionInfo;->FIELD_AD_GROUP_INDEX:Ljava/lang/String;

    .line 434
    const/4 v0, 0x6

    invoke-static {v0}, Landroidx/media3/common/util/Util;->intToStringMaxRadix(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/media3/common/Player$PositionInfo;->FIELD_AD_INDEX_IN_AD_GROUP:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;ILandroidx/media3/common/MediaItem;Ljava/lang/Object;IJJII)V
    .locals 3
    .param p1, "windowUid"    # Ljava/lang/Object;
    .param p2, "mediaItemIndex"    # I
    .param p3, "mediaItem"    # Landroidx/media3/common/MediaItem;
    .param p4, "periodUid"    # Ljava/lang/Object;
    .param p5, "periodIndex"    # I
    .param p6, "positionMs"    # J
    .param p8, "contentPositionMs"    # J
    .param p10, "adGroupIndex"    # I
    .param p11, "adIndexInAdGroup"    # I

    .line 354
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 355
    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ltz p2, :cond_0

    move v2, v0

    goto :goto_0

    :cond_0
    move v2, v1

    :goto_0
    invoke-static {v2}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    .line 356
    if-ltz p5, :cond_1

    goto :goto_1

    :cond_1
    move v0, v1

    :goto_1
    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    .line 357
    iput-object p1, p0, Landroidx/media3/common/Player$PositionInfo;->windowUid:Ljava/lang/Object;

    .line 358
    iput p2, p0, Landroidx/media3/common/Player$PositionInfo;->windowIndex:I

    .line 359
    iput p2, p0, Landroidx/media3/common/Player$PositionInfo;->mediaItemIndex:I

    .line 360
    iput-object p3, p0, Landroidx/media3/common/Player$PositionInfo;->mediaItem:Landroidx/media3/common/MediaItem;

    .line 361
    iput-object p4, p0, Landroidx/media3/common/Player$PositionInfo;->periodUid:Ljava/lang/Object;

    .line 362
    iput p5, p0, Landroidx/media3/common/Player$PositionInfo;->periodIndex:I

    .line 363
    iput-wide p6, p0, Landroidx/media3/common/Player$PositionInfo;->positionMs:J

    .line 364
    iput-wide p8, p0, Landroidx/media3/common/Player$PositionInfo;->contentPositionMs:J

    .line 365
    iput p10, p0, Landroidx/media3/common/Player$PositionInfo;->adGroupIndex:I

    .line 366
    iput p11, p0, Landroidx/media3/common/Player$PositionInfo;->adIndexInAdGroup:I

    .line 367
    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;ILjava/lang/Object;IJJII)V
    .locals 12
    .param p1, "windowUid"    # Ljava/lang/Object;
    .param p2, "mediaItemIndex"    # I
    .param p3, "periodUid"    # Ljava/lang/Object;
    .param p4, "periodIndex"    # I
    .param p5, "positionMs"    # J
    .param p7, "contentPositionMs"    # J
    .param p9, "adGroupIndex"    # I
    .param p10, "adIndexInAdGroup"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 330
    sget-object v3, Landroidx/media3/common/MediaItem;->EMPTY:Landroidx/media3/common/MediaItem;

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v4, p3

    move/from16 v5, p4

    move-wide/from16 v6, p5

    move-wide/from16 v8, p7

    move/from16 v10, p9

    move/from16 v11, p10

    invoke-direct/range {v0 .. v11}, Landroidx/media3/common/Player$PositionInfo;-><init>(Ljava/lang/Object;ILandroidx/media3/common/MediaItem;Ljava/lang/Object;IJJII)V

    .line 340
    return-void
.end method

.method public static fromBundle(Landroid/os/Bundle;)Landroidx/media3/common/Player$PositionInfo;
    .locals 1
    .param p0, "bundle"    # Landroid/os/Bundle;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 518
    const/16 v0, 0x9

    invoke-static {p0, v0}, Landroidx/media3/common/Player$PositionInfo;->fromBundle(Landroid/os/Bundle;I)Landroidx/media3/common/Player$PositionInfo;

    move-result-object v0

    return-object v0
.end method

.method public static fromBundle(Landroid/os/Bundle;I)Landroidx/media3/common/Player$PositionInfo;
    .locals 14
    .param p0, "bundle"    # Landroid/os/Bundle;
    .param p1, "interfaceVersion"    # I

    .line 530
    sget-object v0, Landroidx/media3/common/Player$PositionInfo;->FIELD_MEDIA_ITEM_INDEX:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 531
    .local v4, "mediaItemIndex":I
    sget-object v0, Landroidx/media3/common/Player$PositionInfo;->FIELD_MEDIA_ITEM:Ljava/lang/String;

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    .line 534
    .local v0, "mediaItemBundle":Landroid/os/Bundle;
    if-nez v0, :cond_0

    const/4 v2, 0x0

    goto :goto_0

    :cond_0
    invoke-static {v0, p1}, Landroidx/media3/common/MediaItem;->fromBundle(Landroid/os/Bundle;I)Landroidx/media3/common/MediaItem;

    move-result-object v2

    :goto_0
    move-object v5, v2

    .line 535
    .local v5, "mediaItem":Landroidx/media3/common/MediaItem;
    sget-object v2, Landroidx/media3/common/Player$PositionInfo;->FIELD_PERIOD_INDEX:Ljava/lang/String;

    invoke-virtual {p0, v2, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v7

    .line 536
    .local v7, "periodIndex":I
    sget-object v1, Landroidx/media3/common/Player$PositionInfo;->FIELD_POSITION_MS:Ljava/lang/String;

    const-wide/16 v2, 0x0

    invoke-virtual {p0, v1, v2, v3}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v8

    .line 537
    .local v8, "positionMs":J
    sget-object v1, Landroidx/media3/common/Player$PositionInfo;->FIELD_CONTENT_POSITION_MS:Ljava/lang/String;

    invoke-virtual {p0, v1, v2, v3}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v10

    .line 538
    .local v10, "contentPositionMs":J
    sget-object v1, Landroidx/media3/common/Player$PositionInfo;->FIELD_AD_GROUP_INDEX:Ljava/lang/String;

    const/4 v2, -0x1

    invoke-virtual {p0, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v12

    .line 539
    .local v12, "adGroupIndex":I
    sget-object v1, Landroidx/media3/common/Player$PositionInfo;->FIELD_AD_INDEX_IN_AD_GROUP:Ljava/lang/String;

    .line 540
    invoke-virtual {p0, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v13

    .line 541
    .local v13, "adIndexInAdGroup":I
    new-instance v2, Landroidx/media3/common/Player$PositionInfo;

    const/4 v3, 0x0

    const/4 v6, 0x0

    invoke-direct/range {v2 .. v13}, Landroidx/media3/common/Player$PositionInfo;-><init>(Ljava/lang/Object;ILandroidx/media3/common/MediaItem;Ljava/lang/Object;IJJII)V

    return-object v2
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;

    .line 371
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    .line 372
    return v0

    .line 374
    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_1

    .line 377
    :cond_1
    move-object v2, p1

    check-cast v2, Landroidx/media3/common/Player$PositionInfo;

    .line 378
    .local v2, "that":Landroidx/media3/common/Player$PositionInfo;
    invoke-virtual {p0, v2}, Landroidx/media3/common/Player$PositionInfo;->equalsForBundling(Landroidx/media3/common/Player$PositionInfo;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Landroidx/media3/common/Player$PositionInfo;->windowUid:Ljava/lang/Object;

    iget-object v4, v2, Landroidx/media3/common/Player$PositionInfo;->windowUid:Ljava/lang/Object;

    .line 379
    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Landroidx/media3/common/Player$PositionInfo;->periodUid:Ljava/lang/Object;

    iget-object v4, v2, Landroidx/media3/common/Player$PositionInfo;->periodUid:Ljava/lang/Object;

    .line 380
    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_0

    :cond_2
    move v0, v1

    .line 378
    :goto_0
    return v0

    .line 375
    .end local v2    # "that":Landroidx/media3/common/Player$PositionInfo;
    :cond_3
    :goto_1
    return v1
.end method

.method public equalsForBundling(Landroidx/media3/common/Player$PositionInfo;)Z
    .locals 4
    .param p1, "other"    # Landroidx/media3/common/Player$PositionInfo;

    .line 419
    iget v0, p0, Landroidx/media3/common/Player$PositionInfo;->mediaItemIndex:I

    iget v1, p1, Landroidx/media3/common/Player$PositionInfo;->mediaItemIndex:I

    if-ne v0, v1, :cond_0

    iget v0, p0, Landroidx/media3/common/Player$PositionInfo;->periodIndex:I

    iget v1, p1, Landroidx/media3/common/Player$PositionInfo;->periodIndex:I

    if-ne v0, v1, :cond_0

    iget-wide v0, p0, Landroidx/media3/common/Player$PositionInfo;->positionMs:J

    iget-wide v2, p1, Landroidx/media3/common/Player$PositionInfo;->positionMs:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    iget-wide v0, p0, Landroidx/media3/common/Player$PositionInfo;->contentPositionMs:J

    iget-wide v2, p1, Landroidx/media3/common/Player$PositionInfo;->contentPositionMs:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    iget v0, p0, Landroidx/media3/common/Player$PositionInfo;->adGroupIndex:I

    iget v1, p1, Landroidx/media3/common/Player$PositionInfo;->adGroupIndex:I

    if-ne v0, v1, :cond_0

    iget v0, p0, Landroidx/media3/common/Player$PositionInfo;->adIndexInAdGroup:I

    iget v1, p1, Landroidx/media3/common/Player$PositionInfo;->adIndexInAdGroup:I

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Landroidx/media3/common/Player$PositionInfo;->mediaItem:Landroidx/media3/common/MediaItem;

    iget-object v1, p1, Landroidx/media3/common/Player$PositionInfo;->mediaItem:Landroidx/media3/common/MediaItem;

    .line 425
    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 419
    :goto_0
    return v0
.end method

.method public filterByAvailableCommands(ZZ)Landroidx/media3/common/Player$PositionInfo;
    .locals 14
    .param p1, "canAccessCurrentMediaItem"    # Z
    .param p2, "canAccessTimeline"    # Z

    .line 451
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    .line 452
    return-object p0

    .line 454
    :cond_0
    new-instance v0, Landroidx/media3/common/Player$PositionInfo;

    iget-object v1, p0, Landroidx/media3/common/Player$PositionInfo;->windowUid:Ljava/lang/Object;

    .line 456
    const/4 v2, 0x0

    if-eqz p2, :cond_1

    iget v3, p0, Landroidx/media3/common/Player$PositionInfo;->mediaItemIndex:I

    goto :goto_0

    :cond_1
    move v3, v2

    .line 457
    :goto_0
    if-eqz p1, :cond_2

    iget-object v4, p0, Landroidx/media3/common/Player$PositionInfo;->mediaItem:Landroidx/media3/common/MediaItem;

    goto :goto_1

    :cond_2
    const/4 v4, 0x0

    :goto_1
    move v5, v2

    move v2, v3

    move-object v3, v4

    iget-object v4, p0, Landroidx/media3/common/Player$PositionInfo;->periodUid:Ljava/lang/Object;

    .line 459
    if-eqz p2, :cond_3

    iget v5, p0, Landroidx/media3/common/Player$PositionInfo;->periodIndex:I

    .line 460
    :cond_3
    const-wide/16 v6, 0x0

    if-eqz p1, :cond_4

    iget-wide v8, p0, Landroidx/media3/common/Player$PositionInfo;->positionMs:J

    goto :goto_2

    :cond_4
    move-wide v8, v6

    .line 461
    :goto_2
    if-eqz p1, :cond_5

    iget-wide v6, p0, Landroidx/media3/common/Player$PositionInfo;->contentPositionMs:J

    .line 462
    :cond_5
    const/4 v10, -0x1

    if-eqz p1, :cond_6

    iget v11, p0, Landroidx/media3/common/Player$PositionInfo;->adGroupIndex:I

    goto :goto_3

    :cond_6
    move v11, v10

    .line 463
    :goto_3
    if-eqz p1, :cond_7

    iget v10, p0, Landroidx/media3/common/Player$PositionInfo;->adIndexInAdGroup:I

    :cond_7
    move-wide v12, v8

    move-wide v8, v6

    move-wide v6, v12

    move v12, v11

    move v11, v10

    move v10, v12

    invoke-direct/range {v0 .. v11}, Landroidx/media3/common/Player$PositionInfo;-><init>(Ljava/lang/Object;ILandroidx/media3/common/MediaItem;Ljava/lang/Object;IJJII)V

    .line 454
    return-object v0
.end method

.method public hashCode()I
    .locals 9

    .line 385
    iget-object v0, p0, Landroidx/media3/common/Player$PositionInfo;->windowUid:Ljava/lang/Object;

    iget v1, p0, Landroidx/media3/common/Player$PositionInfo;->mediaItemIndex:I

    .line 387
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v2, p0, Landroidx/media3/common/Player$PositionInfo;->mediaItem:Landroidx/media3/common/MediaItem;

    iget-object v3, p0, Landroidx/media3/common/Player$PositionInfo;->periodUid:Ljava/lang/Object;

    iget v4, p0, Landroidx/media3/common/Player$PositionInfo;->periodIndex:I

    .line 390
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iget-wide v5, p0, Landroidx/media3/common/Player$PositionInfo;->positionMs:J

    .line 391
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    iget-wide v6, p0, Landroidx/media3/common/Player$PositionInfo;->contentPositionMs:J

    .line 392
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    iget v7, p0, Landroidx/media3/common/Player$PositionInfo;->adGroupIndex:I

    .line 393
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    iget v8, p0, Landroidx/media3/common/Player$PositionInfo;->adIndexInAdGroup:I

    .line 394
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    filled-new-array/range {v0 .. v8}, [Ljava/lang/Object;

    move-result-object v0

    .line 385
    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public toBundle()Landroid/os/Bundle;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 509
    const v0, 0x7fffffff

    invoke-virtual {p0, v0}, Landroidx/media3/common/Player$PositionInfo;->toBundle(I)Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method public toBundle(I)Landroid/os/Bundle;
    .locals 7
    .param p1, "interfaceVersion"    # I

    .line 478
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 479
    .local v0, "bundle":Landroid/os/Bundle;
    const/4 v1, 0x3

    if-lt p1, v1, :cond_0

    iget v2, p0, Landroidx/media3/common/Player$PositionInfo;->mediaItemIndex:I

    if-eqz v2, :cond_1

    .line 480
    :cond_0
    sget-object v2, Landroidx/media3/common/Player$PositionInfo;->FIELD_MEDIA_ITEM_INDEX:Ljava/lang/String;

    iget v3, p0, Landroidx/media3/common/Player$PositionInfo;->mediaItemIndex:I

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 482
    :cond_1
    iget-object v2, p0, Landroidx/media3/common/Player$PositionInfo;->mediaItem:Landroidx/media3/common/MediaItem;

    if-eqz v2, :cond_2

    .line 483
    sget-object v2, Landroidx/media3/common/Player$PositionInfo;->FIELD_MEDIA_ITEM:Ljava/lang/String;

    iget-object v3, p0, Landroidx/media3/common/Player$PositionInfo;->mediaItem:Landroidx/media3/common/MediaItem;

    invoke-virtual {v3, p1}, Landroidx/media3/common/MediaItem;->toBundle(I)Landroid/os/Bundle;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 485
    :cond_2
    if-lt p1, v1, :cond_3

    iget v2, p0, Landroidx/media3/common/Player$PositionInfo;->periodIndex:I

    if-eqz v2, :cond_4

    .line 486
    :cond_3
    sget-object v2, Landroidx/media3/common/Player$PositionInfo;->FIELD_PERIOD_INDEX:Ljava/lang/String;

    iget v3, p0, Landroidx/media3/common/Player$PositionInfo;->periodIndex:I

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 488
    :cond_4
    const-wide/16 v2, 0x0

    if-lt p1, v1, :cond_5

    iget-wide v4, p0, Landroidx/media3/common/Player$PositionInfo;->positionMs:J

    cmp-long v4, v4, v2

    if-eqz v4, :cond_6

    .line 489
    :cond_5
    sget-object v4, Landroidx/media3/common/Player$PositionInfo;->FIELD_POSITION_MS:Ljava/lang/String;

    iget-wide v5, p0, Landroidx/media3/common/Player$PositionInfo;->positionMs:J

    invoke-virtual {v0, v4, v5, v6}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 491
    :cond_6
    if-lt p1, v1, :cond_7

    iget-wide v4, p0, Landroidx/media3/common/Player$PositionInfo;->contentPositionMs:J

    cmp-long v1, v4, v2

    if-eqz v1, :cond_8

    .line 492
    :cond_7
    sget-object v1, Landroidx/media3/common/Player$PositionInfo;->FIELD_CONTENT_POSITION_MS:Ljava/lang/String;

    iget-wide v2, p0, Landroidx/media3/common/Player$PositionInfo;->contentPositionMs:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 494
    :cond_8
    iget v1, p0, Landroidx/media3/common/Player$PositionInfo;->adGroupIndex:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_9

    .line 495
    sget-object v1, Landroidx/media3/common/Player$PositionInfo;->FIELD_AD_GROUP_INDEX:Ljava/lang/String;

    iget v3, p0, Landroidx/media3/common/Player$PositionInfo;->adGroupIndex:I

    invoke-virtual {v0, v1, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 497
    :cond_9
    iget v1, p0, Landroidx/media3/common/Player$PositionInfo;->adIndexInAdGroup:I

    if-eq v1, v2, :cond_a

    .line 498
    sget-object v1, Landroidx/media3/common/Player$PositionInfo;->FIELD_AD_INDEX_IN_AD_GROUP:Ljava/lang/String;

    iget v2, p0, Landroidx/media3/common/Player$PositionInfo;->adIndexInAdGroup:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 500
    :cond_a
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 399
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mediaItem="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroidx/media3/common/Player$PositionInfo;->mediaItemIndex:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", period="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroidx/media3/common/Player$PositionInfo;->periodIndex:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", pos="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Landroidx/media3/common/Player$PositionInfo;->positionMs:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 401
    .local v0, "positionInfoString":Ljava/lang/String;
    iget v1, p0, Landroidx/media3/common/Player$PositionInfo;->adGroupIndex:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    .line 402
    return-object v0

    .line 404
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", contentPos="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Landroidx/media3/common/Player$PositionInfo;->contentPositionMs:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", adGroup="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroidx/media3/common/Player$PositionInfo;->adGroupIndex:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", ad="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroidx/media3/common/Player$PositionInfo;->adIndexInAdGroup:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
