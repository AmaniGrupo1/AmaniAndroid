.class public final Landroidx/media3/exoplayer/source/preload/DefaultPreloadManager$PreloadStatus;
.super Ljava/lang/Object;
.source "DefaultPreloadManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media3/exoplayer/source/preload/DefaultPreloadManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "PreloadStatus"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media3/exoplayer/source/preload/DefaultPreloadManager$PreloadStatus$Stage;
    }
.end annotation


# static fields
.field public static final PRELOAD_STATUS_NOT_PRELOADED:Landroidx/media3/exoplayer/source/preload/DefaultPreloadManager$PreloadStatus;

.field public static final PRELOAD_STATUS_SOURCE_PREPARED:Landroidx/media3/exoplayer/source/preload/DefaultPreloadManager$PreloadStatus;

.field public static final PRELOAD_STATUS_TRACKS_SELECTED:Landroidx/media3/exoplayer/source/preload/DefaultPreloadManager$PreloadStatus;

.field public static final STAGE_NOT_PRELOADED:I = -0x80000000

.field public static final STAGE_SOURCE_PREPARED:I = 0x0

.field public static final STAGE_SPECIFIED_RANGE_CACHED:I = -0x1

.field public static final STAGE_SPECIFIED_RANGE_LOADED:I = 0x2

.field public static final STAGE_TRACKS_SELECTED:I = 0x1


# instance fields
.field public final durationMs:J

.field public final stage:I

.field public final startPositionMs:J


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .line 453
    new-instance v0, Landroidx/media3/exoplayer/source/preload/DefaultPreloadManager$PreloadStatus;

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    const-wide/16 v4, 0x0

    const/high16 v1, -0x80000000

    invoke-direct/range {v0 .. v5}, Landroidx/media3/exoplayer/source/preload/DefaultPreloadManager$PreloadStatus;-><init>(IJJ)V

    sput-object v0, Landroidx/media3/exoplayer/source/preload/DefaultPreloadManager$PreloadStatus;->PRELOAD_STATUS_NOT_PRELOADED:Landroidx/media3/exoplayer/source/preload/DefaultPreloadManager$PreloadStatus;

    .line 458
    new-instance v1, Landroidx/media3/exoplayer/source/preload/DefaultPreloadManager$PreloadStatus;

    const-wide v3, -0x7fffffffffffffffL    # -4.9E-324

    const-wide/16 v5, 0x0

    const/4 v2, 0x0

    invoke-direct/range {v1 .. v6}, Landroidx/media3/exoplayer/source/preload/DefaultPreloadManager$PreloadStatus;-><init>(IJJ)V

    sput-object v1, Landroidx/media3/exoplayer/source/preload/DefaultPreloadManager$PreloadStatus;->PRELOAD_STATUS_SOURCE_PREPARED:Landroidx/media3/exoplayer/source/preload/DefaultPreloadManager$PreloadStatus;

    .line 463
    new-instance v2, Landroidx/media3/exoplayer/source/preload/DefaultPreloadManager$PreloadStatus;

    const-wide v4, -0x7fffffffffffffffL    # -4.9E-324

    const-wide/16 v6, 0x0

    const/4 v3, 0x1

    invoke-direct/range {v2 .. v7}, Landroidx/media3/exoplayer/source/preload/DefaultPreloadManager$PreloadStatus;-><init>(IJJ)V

    sput-object v2, Landroidx/media3/exoplayer/source/preload/DefaultPreloadManager$PreloadStatus;->PRELOAD_STATUS_TRACKS_SELECTED:Landroidx/media3/exoplayer/source/preload/DefaultPreloadManager$PreloadStatus;

    return-void
.end method

.method private constructor <init>(IJJ)V
    .locals 7
    .param p1, "stage"    # I
    .param p2, "startPositionMs"    # J
    .param p4, "durationMs"    # J

    .line 483
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 484
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v2, p2, v0

    const/4 v3, 0x0

    const-wide/16 v4, 0x0

    const/4 v6, 0x1

    if-eqz v2, :cond_1

    cmp-long v2, p2, v4

    if-ltz v2, :cond_0

    goto :goto_0

    :cond_0
    move v2, v3

    goto :goto_1

    :cond_1
    :goto_0
    move v2, v6

    :goto_1
    invoke-static {v2}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    .line 485
    cmp-long v0, p4, v0

    if-eqz v0, :cond_2

    cmp-long v0, p4, v4

    if-ltz v0, :cond_3

    :cond_2
    move v3, v6

    :cond_3
    invoke-static {v3}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    .line 486
    iput p1, p0, Landroidx/media3/exoplayer/source/preload/DefaultPreloadManager$PreloadStatus;->stage:I

    .line 487
    iput-wide p2, p0, Landroidx/media3/exoplayer/source/preload/DefaultPreloadManager$PreloadStatus;->startPositionMs:J

    .line 488
    iput-wide p4, p0, Landroidx/media3/exoplayer/source/preload/DefaultPreloadManager$PreloadStatus;->durationMs:J

    .line 489
    return-void
.end method

.method static synthetic access$1400(Landroidx/media3/exoplayer/source/preload/DefaultPreloadManager$PreloadStatus;)Z
    .locals 1
    .param p0, "x0"    # Landroidx/media3/exoplayer/source/preload/DefaultPreloadManager$PreloadStatus;

    .line 411
    invoke-direct {p0}, Landroidx/media3/exoplayer/source/preload/DefaultPreloadManager$PreloadStatus;->isPreCachingCategory()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1600(Landroidx/media3/exoplayer/source/preload/DefaultPreloadManager$PreloadStatus;)Z
    .locals 1
    .param p0, "x0"    # Landroidx/media3/exoplayer/source/preload/DefaultPreloadManager$PreloadStatus;

    .line 411
    invoke-direct {p0}, Landroidx/media3/exoplayer/source/preload/DefaultPreloadManager$PreloadStatus;->isPreloadingCategory()Z

    move-result v0

    return v0
.end method

.method private isPreCachingCategory()Z
    .locals 2

    .line 532
    iget v0, p0, Landroidx/media3/exoplayer/source/preload/DefaultPreloadManager$PreloadStatus;->stage:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private isPreloadingCategory()Z
    .locals 3

    .line 526
    iget v0, p0, Landroidx/media3/exoplayer/source/preload/DefaultPreloadManager$PreloadStatus;->stage:I

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    iget v0, p0, Landroidx/media3/exoplayer/source/preload/DefaultPreloadManager$PreloadStatus;->stage:I

    if-eq v0, v1, :cond_1

    iget v0, p0, Landroidx/media3/exoplayer/source/preload/DefaultPreloadManager$PreloadStatus;->stage:I

    const/4 v2, 0x2

    if-ne v0, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :cond_1
    :goto_0
    return v1
.end method

.method public static specifiedRangeCached(J)Landroidx/media3/exoplayer/source/preload/DefaultPreloadManager$PreloadStatus;
    .locals 6
    .param p0, "durationMs"    # J

    .line 513
    new-instance v0, Landroidx/media3/exoplayer/source/preload/DefaultPreloadManager$PreloadStatus;

    const/4 v1, -0x1

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    move-wide v4, p0

    .end local p0    # "durationMs":J
    .local v4, "durationMs":J
    invoke-direct/range {v0 .. v5}, Landroidx/media3/exoplayer/source/preload/DefaultPreloadManager$PreloadStatus;-><init>(IJJ)V

    return-object v0
.end method

.method public static specifiedRangeCached(JJ)Landroidx/media3/exoplayer/source/preload/DefaultPreloadManager$PreloadStatus;
    .locals 6
    .param p0, "startPositionMs"    # J
    .param p2, "durationMs"    # J

    .line 522
    new-instance v0, Landroidx/media3/exoplayer/source/preload/DefaultPreloadManager$PreloadStatus;

    const/4 v1, -0x1

    move-wide v2, p0

    move-wide v4, p2

    .end local p0    # "startPositionMs":J
    .end local p2    # "durationMs":J
    .local v2, "startPositionMs":J
    .local v4, "durationMs":J
    invoke-direct/range {v0 .. v5}, Landroidx/media3/exoplayer/source/preload/DefaultPreloadManager$PreloadStatus;-><init>(IJJ)V

    return-object v0
.end method

.method public static specifiedRangeLoaded(J)Landroidx/media3/exoplayer/source/preload/DefaultPreloadManager$PreloadStatus;
    .locals 6
    .param p0, "durationMs"    # J

    .line 496
    new-instance v0, Landroidx/media3/exoplayer/source/preload/DefaultPreloadManager$PreloadStatus;

    const/4 v1, 0x2

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    move-wide v4, p0

    .end local p0    # "durationMs":J
    .local v4, "durationMs":J
    invoke-direct/range {v0 .. v5}, Landroidx/media3/exoplayer/source/preload/DefaultPreloadManager$PreloadStatus;-><init>(IJJ)V

    return-object v0
.end method

.method public static specifiedRangeLoaded(JJ)Landroidx/media3/exoplayer/source/preload/DefaultPreloadManager$PreloadStatus;
    .locals 6
    .param p0, "startPositionMs"    # J
    .param p2, "durationMs"    # J

    .line 505
    new-instance v0, Landroidx/media3/exoplayer/source/preload/DefaultPreloadManager$PreloadStatus;

    const/4 v1, 0x2

    move-wide v2, p0

    move-wide v4, p2

    .end local p0    # "startPositionMs":J
    .end local p2    # "durationMs":J
    .local v2, "startPositionMs":J
    .local v4, "durationMs":J
    invoke-direct/range {v0 .. v5}, Landroidx/media3/exoplayer/source/preload/DefaultPreloadManager$PreloadStatus;-><init>(IJJ)V

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 7
    .param p1, "obj"    # Ljava/lang/Object;

    .line 537
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    .line 538
    return v0

    .line 540
    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_1

    .line 543
    :cond_1
    move-object v2, p1

    check-cast v2, Landroidx/media3/exoplayer/source/preload/DefaultPreloadManager$PreloadStatus;

    .line 544
    .local v2, "other":Landroidx/media3/exoplayer/source/preload/DefaultPreloadManager$PreloadStatus;
    iget v3, p0, Landroidx/media3/exoplayer/source/preload/DefaultPreloadManager$PreloadStatus;->stage:I

    iget v4, v2, Landroidx/media3/exoplayer/source/preload/DefaultPreloadManager$PreloadStatus;->stage:I

    if-ne v3, v4, :cond_2

    iget-wide v3, p0, Landroidx/media3/exoplayer/source/preload/DefaultPreloadManager$PreloadStatus;->startPositionMs:J

    iget-wide v5, v2, Landroidx/media3/exoplayer/source/preload/DefaultPreloadManager$PreloadStatus;->startPositionMs:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_2

    iget-wide v3, p0, Landroidx/media3/exoplayer/source/preload/DefaultPreloadManager$PreloadStatus;->durationMs:J

    iget-wide v5, v2, Landroidx/media3/exoplayer/source/preload/DefaultPreloadManager$PreloadStatus;->durationMs:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_2

    goto :goto_0

    :cond_2
    move v0, v1

    :goto_0
    return v0

    .line 541
    .end local v2    # "other":Landroidx/media3/exoplayer/source/preload/DefaultPreloadManager$PreloadStatus;
    :cond_3
    :goto_1
    return v1
.end method

.method public hashCode()I
    .locals 4

    .line 551
    const/16 v0, 0x11

    .line 552
    .local v0, "result":I
    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Landroidx/media3/exoplayer/source/preload/DefaultPreloadManager$PreloadStatus;->stage:I

    add-int/2addr v1, v2

    .line 553
    .end local v0    # "result":I
    .local v1, "result":I
    mul-int/lit8 v0, v1, 0x1f

    iget-wide v2, p0, Landroidx/media3/exoplayer/source/preload/DefaultPreloadManager$PreloadStatus;->startPositionMs:J

    long-to-int v2, v2

    add-int/2addr v0, v2

    .line 554
    .end local v1    # "result":I
    .restart local v0    # "result":I
    mul-int/lit8 v1, v0, 0x1f

    iget-wide v2, p0, Landroidx/media3/exoplayer/source/preload/DefaultPreloadManager$PreloadStatus;->durationMs:J

    long-to-int v2, v2

    add-int/2addr v1, v2

    .line 555
    .end local v0    # "result":I
    .restart local v1    # "result":I
    return v1
.end method
