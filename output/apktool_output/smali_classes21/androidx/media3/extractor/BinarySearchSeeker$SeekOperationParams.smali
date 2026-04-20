.class public Landroidx/media3/extractor/BinarySearchSeeker$SeekOperationParams;
.super Ljava/lang/Object;
.source "BinarySearchSeeker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media3/extractor/BinarySearchSeeker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "SeekOperationParams"
.end annotation


# instance fields
.field private final approxBytesPerFrame:J

.field private ceilingBytePosition:J

.field private ceilingTimePosition:J

.field private floorBytePosition:J

.field private floorTimePosition:J

.field private nextSearchBytePosition:J

.field private final seekTimeUs:J

.field private final targetTimePosition:J


# direct methods
.method protected constructor <init>(JJJJJJJ)V
    .locals 14
    .param p1, "seekTimeUs"    # J
    .param p3, "targetTimePosition"    # J
    .param p5, "floorTimePosition"    # J
    .param p7, "ceilingTimePosition"    # J
    .param p9, "floorBytePosition"    # J
    .param p11, "ceilingBytePosition"    # J
    .param p13, "approxBytesPerFrame"    # J

    .line 320
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 321
    move-wide v0, p1

    iput-wide v0, p0, Landroidx/media3/extractor/BinarySearchSeeker$SeekOperationParams;->seekTimeUs:J

    .line 322
    move-wide/from16 v2, p3

    iput-wide v2, p0, Landroidx/media3/extractor/BinarySearchSeeker$SeekOperationParams;->targetTimePosition:J

    .line 323
    move-wide/from16 v4, p5

    iput-wide v4, p0, Landroidx/media3/extractor/BinarySearchSeeker$SeekOperationParams;->floorTimePosition:J

    .line 324
    move-wide/from16 v6, p7

    iput-wide v6, p0, Landroidx/media3/extractor/BinarySearchSeeker$SeekOperationParams;->ceilingTimePosition:J

    .line 325
    move-wide/from16 v8, p9

    iput-wide v8, p0, Landroidx/media3/extractor/BinarySearchSeeker$SeekOperationParams;->floorBytePosition:J

    .line 326
    move-wide/from16 v10, p11

    iput-wide v10, p0, Landroidx/media3/extractor/BinarySearchSeeker$SeekOperationParams;->ceilingBytePosition:J

    .line 327
    move-wide/from16 v12, p13

    iput-wide v12, p0, Landroidx/media3/extractor/BinarySearchSeeker$SeekOperationParams;->approxBytesPerFrame:J

    .line 328
    nop

    .line 329
    invoke-static/range {p3 .. p14}, Landroidx/media3/extractor/BinarySearchSeeker$SeekOperationParams;->calculateNextSearchBytePosition(JJJJJJ)J

    move-result-wide v0

    iput-wide v0, p0, Landroidx/media3/extractor/BinarySearchSeeker$SeekOperationParams;->nextSearchBytePosition:J

    .line 336
    return-void
.end method

.method static synthetic access$000(Landroidx/media3/extractor/BinarySearchSeeker$SeekOperationParams;)J
    .locals 2
    .param p0, "x0"    # Landroidx/media3/extractor/BinarySearchSeeker$SeekOperationParams;

    .line 271
    invoke-direct {p0}, Landroidx/media3/extractor/BinarySearchSeeker$SeekOperationParams;->getSeekTimeUs()J

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic access$100(Landroidx/media3/extractor/BinarySearchSeeker$SeekOperationParams;)J
    .locals 2
    .param p0, "x0"    # Landroidx/media3/extractor/BinarySearchSeeker$SeekOperationParams;

    .line 271
    invoke-direct {p0}, Landroidx/media3/extractor/BinarySearchSeeker$SeekOperationParams;->getFloorBytePosition()J

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic access$200(Landroidx/media3/extractor/BinarySearchSeeker$SeekOperationParams;)J
    .locals 2
    .param p0, "x0"    # Landroidx/media3/extractor/BinarySearchSeeker$SeekOperationParams;

    .line 271
    invoke-direct {p0}, Landroidx/media3/extractor/BinarySearchSeeker$SeekOperationParams;->getCeilingBytePosition()J

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic access$300(Landroidx/media3/extractor/BinarySearchSeeker$SeekOperationParams;)J
    .locals 2
    .param p0, "x0"    # Landroidx/media3/extractor/BinarySearchSeeker$SeekOperationParams;

    .line 271
    invoke-direct {p0}, Landroidx/media3/extractor/BinarySearchSeeker$SeekOperationParams;->getNextSearchBytePosition()J

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic access$400(Landroidx/media3/extractor/BinarySearchSeeker$SeekOperationParams;)J
    .locals 2
    .param p0, "x0"    # Landroidx/media3/extractor/BinarySearchSeeker$SeekOperationParams;

    .line 271
    invoke-direct {p0}, Landroidx/media3/extractor/BinarySearchSeeker$SeekOperationParams;->getTargetTimePosition()J

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic access$800(Landroidx/media3/extractor/BinarySearchSeeker$SeekOperationParams;JJ)V
    .locals 0
    .param p0, "x0"    # Landroidx/media3/extractor/BinarySearchSeeker$SeekOperationParams;
    .param p1, "x1"    # J
    .param p3, "x2"    # J

    .line 271
    invoke-direct {p0, p1, p2, p3, p4}, Landroidx/media3/extractor/BinarySearchSeeker$SeekOperationParams;->updateSeekCeiling(JJ)V

    return-void
.end method

.method static synthetic access$900(Landroidx/media3/extractor/BinarySearchSeeker$SeekOperationParams;JJ)V
    .locals 0
    .param p0, "x0"    # Landroidx/media3/extractor/BinarySearchSeeker$SeekOperationParams;
    .param p1, "x1"    # J
    .param p3, "x2"    # J

    .line 271
    invoke-direct {p0, p1, p2, p3, p4}, Landroidx/media3/extractor/BinarySearchSeeker$SeekOperationParams;->updateSeekFloor(JJ)V

    return-void
.end method

.method protected static calculateNextSearchBytePosition(JJJJJJ)J
    .locals 17
    .param p0, "targetTimePosition"    # J
    .param p2, "floorTimePosition"    # J
    .param p4, "ceilingTimePosition"    # J
    .param p6, "floorBytePosition"    # J
    .param p8, "ceilingBytePosition"    # J
    .param p10, "approxBytesPerFrame"    # J

    .line 293
    const-wide/16 v0, 0x1

    add-long v2, p6, v0

    cmp-long v2, v2, p8

    if-gez v2, :cond_1

    add-long v2, p2, v0

    cmp-long v2, v2, p4

    if-ltz v2, :cond_0

    goto :goto_0

    .line 297
    :cond_0
    sub-long v2, p0, p2

    .line 298
    .local v2, "seekTimeDuration":J
    sub-long v4, p8, p6

    long-to-float v4, v4

    sub-long v5, p4, p2

    long-to-float v5, v5

    div-float/2addr v4, v5

    .line 306
    .local v4, "estimatedBytesPerTimeUnit":F
    long-to-float v5, v2

    mul-float/2addr v5, v4

    float-to-long v5, v5

    .line 307
    .local v5, "bytesToSkip":J
    const-wide/16 v7, 0x14

    div-long v7, v5, v7

    .line 308
    .local v7, "confidenceInterval":J
    add-long v9, p6, v5

    sub-long v9, v9, p10

    .line 309
    .local v9, "estimatedFramePosition":J
    sub-long v11, v9, v7

    .line 310
    .local v11, "estimatedPosition":J
    sub-long v15, p8, v0

    move-wide/from16 v13, p6

    invoke-static/range {v11 .. v16}, Landroidx/media3/common/util/Util;->constrainValue(JJJ)J

    move-result-wide v0

    return-wide v0

    .line 295
    .end local v2    # "seekTimeDuration":J
    .end local v4    # "estimatedBytesPerTimeUnit":F
    .end local v5    # "bytesToSkip":J
    .end local v7    # "confidenceInterval":J
    .end local v9    # "estimatedFramePosition":J
    .end local v11    # "estimatedPosition":J
    :cond_1
    :goto_0
    return-wide p6
.end method

.method private getCeilingBytePosition()J
    .locals 2

    .line 351
    iget-wide v0, p0, Landroidx/media3/extractor/BinarySearchSeeker$SeekOperationParams;->ceilingBytePosition:J

    return-wide v0
.end method

.method private getFloorBytePosition()J
    .locals 2

    .line 343
    iget-wide v0, p0, Landroidx/media3/extractor/BinarySearchSeeker$SeekOperationParams;->floorBytePosition:J

    return-wide v0
.end method

.method private getNextSearchBytePosition()J
    .locals 2

    .line 380
    iget-wide v0, p0, Landroidx/media3/extractor/BinarySearchSeeker$SeekOperationParams;->nextSearchBytePosition:J

    return-wide v0
.end method

.method private getSeekTimeUs()J
    .locals 2

    .line 361
    iget-wide v0, p0, Landroidx/media3/extractor/BinarySearchSeeker$SeekOperationParams;->seekTimeUs:J

    return-wide v0
.end method

.method private getTargetTimePosition()J
    .locals 2

    .line 356
    iget-wide v0, p0, Landroidx/media3/extractor/BinarySearchSeeker$SeekOperationParams;->targetTimePosition:J

    return-wide v0
.end method

.method private updateNextSearchBytePosition()V
    .locals 12

    .line 384
    iget-wide v0, p0, Landroidx/media3/extractor/BinarySearchSeeker$SeekOperationParams;->targetTimePosition:J

    iget-wide v2, p0, Landroidx/media3/extractor/BinarySearchSeeker$SeekOperationParams;->floorTimePosition:J

    iget-wide v4, p0, Landroidx/media3/extractor/BinarySearchSeeker$SeekOperationParams;->ceilingTimePosition:J

    iget-wide v6, p0, Landroidx/media3/extractor/BinarySearchSeeker$SeekOperationParams;->floorBytePosition:J

    iget-wide v8, p0, Landroidx/media3/extractor/BinarySearchSeeker$SeekOperationParams;->ceilingBytePosition:J

    iget-wide v10, p0, Landroidx/media3/extractor/BinarySearchSeeker$SeekOperationParams;->approxBytesPerFrame:J

    .line 385
    invoke-static/range {v0 .. v11}, Landroidx/media3/extractor/BinarySearchSeeker$SeekOperationParams;->calculateNextSearchBytePosition(JJJJJJ)J

    move-result-wide v0

    iput-wide v0, p0, Landroidx/media3/extractor/BinarySearchSeeker$SeekOperationParams;->nextSearchBytePosition:J

    .line 392
    return-void
.end method

.method private updateSeekCeiling(JJ)V
    .locals 0
    .param p1, "ceilingTimePosition"    # J
    .param p3, "ceilingBytePosition"    # J

    .line 373
    iput-wide p1, p0, Landroidx/media3/extractor/BinarySearchSeeker$SeekOperationParams;->ceilingTimePosition:J

    .line 374
    iput-wide p3, p0, Landroidx/media3/extractor/BinarySearchSeeker$SeekOperationParams;->ceilingBytePosition:J

    .line 375
    invoke-direct {p0}, Landroidx/media3/extractor/BinarySearchSeeker$SeekOperationParams;->updateNextSearchBytePosition()V

    .line 376
    return-void
.end method

.method private updateSeekFloor(JJ)V
    .locals 0
    .param p1, "floorTimePosition"    # J
    .param p3, "floorBytePosition"    # J

    .line 366
    iput-wide p1, p0, Landroidx/media3/extractor/BinarySearchSeeker$SeekOperationParams;->floorTimePosition:J

    .line 367
    iput-wide p3, p0, Landroidx/media3/extractor/BinarySearchSeeker$SeekOperationParams;->floorBytePosition:J

    .line 368
    invoke-direct {p0}, Landroidx/media3/extractor/BinarySearchSeeker$SeekOperationParams;->updateNextSearchBytePosition()V

    .line 369
    return-void
.end method
